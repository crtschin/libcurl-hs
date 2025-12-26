module Network.Curl.Linear.Internal.Easy.Perform where

import Control.Concurrent.Async (Async, wait, withAsync)
import Control.Concurrent.STM
import Control.Exception (bracket)
import Control.Functor.Linear qualified as Linear
import Control.Monad (unless, when)
import Data.ByteString qualified as BS
import Data.ByteString.Unsafe qualified as BS
import Data.IORef
import Foreign
import Foreign.C.String (peekCString)
import Generated.Curl.Curl qualified as C
import Generated.Curl.Easy.Safe qualified as Safe
import Network.Curl.Linear.Internal.Buffer qualified as Buffer
import Network.Curl.Linear.Internal.Easy.Header
import Network.Curl.Linear.Internal.Easy.Option
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
  { curlHandle :: CurlEasy
  , getStreamBuffer :: Buffer.Buffer
  , bufferIsEmpty :: TVar Bool
  , requestFinished :: TVar Bool
  , responseHeaders :: TVar (Ur (Maybe CurlHeaders))
  }

newtype StreamResult = StreamResult
  { getStreamResult :: CurlEasyResult
  }

instance Consumable StreamResult where
  consume StreamResult{..} = consume getStreamResult

instance Dupable StreamResult where
  dup2 = Unsafe.toLinear $ \e -> (e, e)

instance Movable StreamResult where
  move = Unsafe.toLinear Ur

-- | Perform the CURL request and return the result.
--
-- Requires 'CurloptErrorbuffer' to be set, otherwise a placeholder error
-- message will be used to derive the result. Will overwrite `CurloptWritedata`
-- and `CurloptWritefunction`, using a relatively simple buffer
performStream
  :: StreamOptions
  -> CurlEasy
  %1 -> ( Ur CurlHeaders
          %1 -> Linear.Stream (Linear.Of BS.ByteString) Linear.IO StreamResult
          %1 -> Linear.IO (Ur r)
        )
  %1 -> Linear.IO (CurlEasy, Ur r)
performStream streamOption = do
  Unsafe.toLinear2 (doPerform streamOption)
 where
  createStream
    :: Async C.CURLcode
    -> CurlErrorBuffer
    -> StreamBuffer
    -> Linear.IO (Either StreamResult (Linear.Of BS.ByteString StreamBuffer))
  createStream curlThread curlErrorBuffer performBuffer = Linear.fromSystemIO $ do
    -- Check if we should stop: download finished AND buffer has no data
    shouldStop <- atomically $ do
      isFinished <- readTVar (requestFinished performBuffer)
      if not isFinished
        then do
          isEmpty <- readTVar (bufferIsEmpty performBuffer)
          when isEmpty retry
          N.pure False
        else do
          readTVar (bufferIsEmpty performBuffer)

    if shouldStop
      then do
        code <- wait curlThread
        result <- Linear.withLinearIO $ curlResult code curlErrorBuffer
        N.pure $ Left $ StreamResult result
      else do
        contents <- Buffer.unsafeToByteString (getStreamBuffer performBuffer)
        -- Mark buffer as empty after reading
        atomically $ writeTVar (bufferIsEmpty performBuffer) True
        N.pure $ Right (contents Linear.:> performBuffer)

  doPerform
    :: StreamOptions
    -> CurlEasy
    -> ( Ur CurlHeaders
         %1 -> Linear.Stream (Linear.Of BS.ByteString) Linear.IO StreamResult
         %1 -> Linear.IO (Ur r)
       )
    -> Linear.IO (CurlEasy, Ur r)
  doPerform streamOptions handle act = Linear.fromSystemIO $ do
    Buffer.new (bufferSizeBytes streamOptions) $ \payloadBuffer -> do
      buffer <-
        StreamBuffer handle payloadBuffer
          N.<$> newTVarIO True
          N.<*> newTVarIO False
          N.<*> newTVarIO (move Nothing)

      bracket (newStablePtr buffer) freeStablePtr $ \stableBuffer -> do
        let handle' = setWriteFunction @StreamBuffer stableBuffer performStreamWriteFunction handle
            doDownload = do
              result <- Safe.curl_easy_perform (unur (easyHandle handle'))
              atomically (writeTVar (requestFinished buffer) True)
              N.pure result

        withAsync doDownload $ \threadId -> Linear.toSystemIO $ Linear.do
          headers <- Linear.fromSystemIO $ atomically $ do
            isFinished <- readTVar (requestFinished buffer)
            headers <- readTVar (responseHeaders buffer)
            let checkWait = if isFinished then N.pure (move (CurlHeaders N.mempty)) else retry
            N.maybe checkWait N.pure $ N.sequence headers

          result <-
            act headers
              $ flip Linear.unfold buffer
              $ Unsafe.toLinear
              $ createStream threadId
              $ easyErrorBuffer handle'

          -- NB: the handle doesn't escape while curl_easy_perform is executed.
          -- The thread doing the FFI call will get a `uninterruptibleCancel`,
          -- blocking until the call returns.
          Linear.fromSystemIO $ atomically $ do
            isFinished <- readTVar (requestFinished buffer)
            unless isFinished retry
          Linear.pure (handle', result)

performStreamWriteFunction :: CurlWriteFunction StreamBuffer
performStreamWriteFunction = CurlWriteFunction $ \content _ bsLen innerBufferPtr -> do
  buffer <- deRefStablePtr innerBufferPtr
  headers <- readTVarIO (responseHeaders buffer)
  case unur headers of
    Nothing -> do
      (_, h) <- Linear.toSystemIO $ curlGetLastHeaders (curlHandle buffer)
      atomically $ writeTVar (responseHeaders buffer) $ move (Just h)
    Just _ -> N.pure ()

  -- SAFETY: Writing entails copying over the bytes from the given pointer to
  -- the destination buffer. We do not keep references to the buffer around
  next <- BS.unsafePackCStringLen (content, fromIntegral bsLen)
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
  N.pure bsLen

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
