{- HLINT ignore "Replace case with maybe" -}
module Network.Curl.Linear.Internal.Multi where

import Control.Concurrent
import Control.Concurrent.STM
import Control.Exception
import Control.Monad (unless, void, when)
import Data.IntMap.Strict qualified as IntMap
import Data.Nat
import Foreign hiding (void)
import Foreign.C
import Generated.Curl.Curl qualified as C
import Generated.Curl.Multi qualified as C
import Generated.Curl.Multi.Safe qualified as Safe
import Generated.Curl.Multi.Unsafe qualified as Unsafe
import Network.Curl.Linear.Easy
import Network.Curl.Linear.Internal.Handle
import Network.Curl.Linear.Internal.Multi.Option
import Network.Curl.Linear.Internal.Types
import Network.Curl.Linear.Internal.Utils
import Prelude.Linear as L
import System.IO.Linear qualified as Linear
import System.IO.Unsafe qualified as Unsafe
import System.Mem.StableName
import System.Posix.Types (Fd (..))
import System.Timeout
import Unsafe.Linear qualified as Unsafe
import Prelude qualified as N

multiAdd
  :: CurlMulti n
  %1 -> (CurlEasy %1 -> CurlEasy)
  %1 -> CurlMulti (S n)
multiAdd = Unsafe.toLinear2 $ \(CurlMulti m handles) setupHandle -> Unsafe.unsafeDupablePerformIO $ do
  c <- toSystemIO curlEasyInit
  let h@(CurlEasy c' _) = setupHandle c
  _ <- Unsafe.curl_multi_add_handle (unur m) (unur c')
  h' <- makeStableName h
  let handles' = IntMap.insertWith (N.++) (hashStableName h') [CurlEasyToken h'] handles
  N.pure (CurlMulti m handles')

multiRemove
  :: CurlMulti (S n)
  %1 -> (CurlMulti n, CurlEasyResult)
multiRemove = Unsafe.toLinear $ \(CurlMulti m handles) -> do
  alloca $ \resultPtr -> do
    msgPtr <- Unsafe.curl_multi_info_read m resultPtr
    if msgPtr /= nullPtr
      then Nothing
      else do
        msg <- peek msgPtr
        case cURLMsg_msg msg of
          cURLMSG_DONE -> do
            nMsgs <- peek resultPtr
            N.pure (result, nMsgs)
          _ -> undefined

multiPerform :: Int -> CurlMulti n %1 -> Linear.IO (CurlMulti n)
multiPerform timeoutUs = Unsafe.toLinear $ \h -> Linear.fromSystemIO $ do
  bracket (newStablePtr ()) freeStablePtr $ \ptr -> do
    waitOnAction <- newTVarIO Nothing
    let h' = setSocketFunction ptr (multiSocketWatchSTM waitOnAction) h
        timeoutAction = doAction (C.Curl_socket_t C.cURL_SOCKET_TIMEOUT) 0
        doAction socket events =
          alloca $ \resultPtr -> do
            actionCode <-
              Safe.curl_multi_socket_action
                (unur (multiHandle h'))
                socket
                events
                resultPtr
            numberOfRunning <- peek resultPtr
            N.pure (actionCode, numberOfRunning)

    (_, n) <- timeoutAction
    let continue = do
          result <- timeout timeoutUs $ atomically $ do
            waitResult <- readTVar waitOnAction
            case waitResult of
              Nothing -> retry
              Just c -> N.pure c

          case result of
            Nothing -> void timeoutAction
            Just (socket, eventSet) -> do
              (_curlCode, numberOfRunning) <- doAction socket eventSet
              unless (numberOfRunning N.== 0) continue

    when (n N.> 0) continue
    N.pure h'

multiSocketWatchSTM :: TVar (Maybe (C.Curl_socket_t, CInt)) -> CurlSocketFunction a
multiSocketWatchSTM waiter = CurlSocketFunction $ \_ socket@(C.Curl_socket_t s) what _ _ -> do
  let socketFd = Fd s
      getMonitor on which = if on then which else N.pure (N.pure (), N.pure ())
      waitOn wait event = wait N.>> writeTVar waiter (Just (socket, event))
      threadWaitSTM fd waitSTM flag = do
        (whichWait, unregister) <- waitSTM fd
        N.pure (waitOn whichWait flag, unregister)
      threadWaitReadSTM' fd = threadWaitSTM fd threadWaitReadSTM C.cURL_POLL_IN
      threadWaitWriteSTM' fd = threadWaitSTM fd threadWaitWriteSTM C.cURL_POLL_IN
      threadWaitReadWriteSTM fd = do
        (waitOnRead, unregisterReads) <- threadWaitReadSTM fd
        (waitOnWrite, unregisterWrite) <- threadWaitReadSTM fd
        N.pure
          ( waitOn (waitOnRead N.<> waitOnWrite) C.cURL_POLL_INOUT
              `orElse` waitOn waitOnRead C.cURL_POLL_IN
              `orElse` waitOn waitOnWrite C.cURL_POLL_OUT
          , unregisterReads N.<> unregisterWrite
          )

  -- NB: `threadWait*STM` functions are one-shot, I need to recall
  -- `threadWait*STM` when the socket is called again. Would it be beneficial to
  -- avoid that and have these wait actions be cached? Having it be cached would
  -- better fit curl's internal model, where we also get an explicit instruction
  -- that a socket is not relevant anymore in `CURL_POLL_REMOVE`.
  --
  -- Would have to reimplement `threadWait*STM` manually against `ghc-internal`
  -- which is >9.10, to support multishot registrations.
  (wait, unregister) <-
    getMonitor (what .&. C.cURL_POLL_IN N.> 0) (threadWaitReadSTM' socketFd)
      N.<> getMonitor (what .&. C.cURL_POLL_OUT N.> 0) (threadWaitWriteSTM' socketFd)
      N.<> getMonitor (what .&. C.cURL_POLL_INOUT N.> 0) (threadWaitReadWriteSTM socketFd)

  atomically wait
  unregister
  N.pure 0
