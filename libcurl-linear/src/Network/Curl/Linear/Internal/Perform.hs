module Network.Curl.Linear.Internal.Perform where

import Control.Concurrent.Async (Async, wait, withAsync)
import Control.Concurrent.STM
import Control.Exception (bracket)
import Control.Functor.Linear qualified as Linear
import Control.Monad (unless, when)
import Data.ByteString qualified as BS
import Data.IORef
import Foreign
import Foreign.C.String (peekCString)
import Generated.Curl.Curl qualified as C
import Generated.Curl.Easy.Safe qualified as Safe
import Network.Curl.Linear.Internal.Buffer qualified as Buffer
import Network.Curl.Linear.Internal.Header
import Network.Curl.Linear.Internal.Option
import Network.Curl.Linear.Internal.Types
import Network.Curl.Linear.Internal.Utils qualified as Linear
import Prelude.Linear as L
import Streaming.Linear qualified as Linear
import System.IO.Linear qualified as Linear
import Unsafe.Linear qualified as Unsafe
import Prelude qualified as N

-- | Perform the CURL request.
perform_ :: CurlEasy %1 -> Linear.IO CurlEasy
perform_ = Unsafe.toLinear doPerform
 where
  doPerform handle@(CurlEasy h _) = Linear.fromSystemIO $ do
    _ <- Safe.curl_easy_perform (unur h)
    N.pure handle

-- | Perform the CURL request and return the result.
--
-- Requires 'CurloptErrorbuffer' to be set, otherwise a placeholder error
-- message will be used to derive the result.
perform :: CurlEasy %1 -> Linear.IO (CurlEasy, Ur CurlEasyResult)
perform = Unsafe.toLinear doPerform
 where
  doPerform handle@(CurlEasy h bufRef) = Linear.do
    code <- Linear.fromSystemIO $ Safe.curl_easy_perform (unur h)
    result <- curlResult code bufRef
    Linear.pure (handle, result)

data StreamBuffer = StreamBuffer
  { getStreamBuffer :: Buffer.Buffer
  , bufferIsEmpty :: TVar Bool
  , requestFinished :: TVar Bool
  , responseHeaders :: TVar (Ur (Maybe CurlHeaders))
  }

-- | Perform the CURL request and return the result.
--
-- Requires 'CurloptErrorbuffer' to be set, otherwise a placeholder error
-- message will be used to derive the result. Will overwrite `CurloptWritedata`
-- and `CurloptWritefunction`, using a relatively simple buffer
performStream
  :: CurlEasy
  %1 -> StreamOptions
  %1 -> ( Ur CurlHeaders
          %1 -> Linear.Stream (Linear.Of BS.ByteString) Linear.IO CurlEasyResult
          %1 -> Linear.IO (Ur r)
        )
  %1 -> Linear.IO (CurlEasy, Ur r)
performStream = do
  Unsafe.toLinear3 doPerform
 where
  createStream
    :: Async C.CURLcode
    -> CurlErrorBuffer
    -> StreamBuffer
    -> Linear.IO (Either CurlEasyResult (Linear.Of BS.ByteString StreamBuffer))
  createStream curlThread curlErrorBuffer performBuffer = Linear.fromSystemIO $ do
    -- Check if we should stop: download finished AND buffer has no data
    -- print "shouldStop"
    shouldStop <- atomically $ do
      isFinished <- readTVar (requestFinished performBuffer)
      if not isFinished
        then do
          isEmpty <- readTVar (bufferIsEmpty performBuffer)
          when isEmpty retry
          N.pure False
        else do
          readTVar (bufferIsEmpty performBuffer)

    -- print (shouldStop, isEmpty)
    if shouldStop
      then do
        -- print "stop"
        code <- wait curlThread
        result <- Linear.withLinearIO $ curlResult code curlErrorBuffer
        N.pure $ Left result
      else do
        -- print "step"
        contents <- Buffer.toByteString (getStreamBuffer performBuffer)
        -- Mark buffer as empty after reading
        atomically $ writeTVar (bufferIsEmpty performBuffer) True
        N.pure $ Right (contents Linear.:> performBuffer)

  doPerform
    :: CurlEasy
    -> StreamOptions
    -> ( Ur CurlHeaders
         %1 -> Linear.Stream (Linear.Of BS.ByteString) Linear.IO CurlEasyResult
         %1 -> Linear.IO (Ur r)
       )
    -> Linear.IO (CurlEasy, Ur r)
  doPerform handle streamOptions act = Linear.fromSystemIO $ do
    -- print "starting"
    Buffer.new (bufferSizeBytes streamOptions) $ \payloadBuffer -> do
      buffer <-
        StreamBuffer payloadBuffer
          N.<$> newTVarIO True
          N.<*> newTVarIO False
          N.<*> newTVarIO (move Nothing)

      bracket (newStablePtr buffer) freeStablePtr $ \stableBuffer -> do
        let handle' = setWriteFunction @StreamBuffer stableBuffer (performStreamWriteFunction handle) handle
            doDownload = do
              -- print "perform"
              result <- Safe.curl_easy_perform (unur (curlHandle handle'))
              atomically (writeTVar (requestFinished buffer) True)
              -- print "finish perform"
              N.pure result

        -- print "in"
        withAsync doDownload $ \threadId -> Linear.toSystemIO $ Linear.do
          -- Linear.fromSystemIO $ print "in"
          headers <- Linear.fromSystemIO $ atomically $ do
            isFinished <- readTVar (requestFinished buffer)
            headers <- readTVar (responseHeaders buffer)
            let checkWait = if isFinished then N.pure (Ur (CurlHeaders N.mempty)) else retry
            N.maybe checkWait N.pure $ N.sequence headers

          result <-
            act headers
              $ flip Linear.unfold buffer
              $ Unsafe.toLinear
              $ createStream threadId
              $ errorBuffer handle'

          -- NB: the handle doesn't escape while curl_easy_perform is executed.
          -- The thread doing the FFI call will get a `uninterruptibleCancel`,
          -- blocking until the call returns.
          Linear.fromSystemIO $ atomically $ do
            isFinished <- readTVar (requestFinished buffer)
            unless isFinished retry
          Linear.pure (handle', result)

performStreamWriteFunction :: CurlEasy -> CurlWriteFunction StreamBuffer
performStreamWriteFunction handle = CurlWriteFunction $ \content _ bsLen innerBufferPtr -> do
  -- print "write"
  buffer <- deRefStablePtr (castPtrToStablePtr innerBufferPtr)
  headers <- readTVarIO (responseHeaders buffer)
  case unur headers of
    Nothing -> do
      (_, h) <- Linear.toSystemIO $ curlGetLastHeaders handle
      atomically $ writeTVar (responseHeaders buffer) $ move (Just h)
    Just _ -> N.pure ()

  next <- BS.packCStringLen (content, fromIntegral bsLen)
  let
    continueWriting toWrite = do
      atomically $ writeTVar (bufferIsEmpty buffer) False
      unwritten <- Buffer.write toWrite (getStreamBuffer buffer)
      if BS.null unwritten
        then N.pure ()
        else do
          atomically $ do
            isEmpty <- readTVar (bufferIsEmpty buffer)
            unless isEmpty retry
          continueWriting unwritten

  continueWriting next
  -- print "write finished"
  N.pure $ fromIntegral $ BS.length next

curlResult :: C.CURLcode %1 -> CurlErrorBuffer %1 -> Linear.IO (Ur CurlEasyResult)
curlResult = Unsafe.toLinear2 helper
 where
  helper code (CurlErrorBuffer bufRef) = Linear.fromSystemIO $ do
    if code N.== C.CURLE_OK
      then N.pure $ move CurlEasyResultOk
      else do
        -- Try to read error message from buffer if one was set
        mbuf <- readIORef (unur bufRef)
        errMsg <- case mbuf of
          N.Just buf -> peekCString buf
          N.Nothing -> N.pure "Error occurred"
        N.pure $ move $ CurlEasyResultError (CurlError (N.fromIntegral $ C.un_CURLcode code) errMsg)
