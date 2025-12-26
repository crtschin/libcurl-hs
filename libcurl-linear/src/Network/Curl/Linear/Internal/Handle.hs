{- HLINT ignore "Use <$>" -}
module Network.Curl.Linear.Internal.Handle where

import Control.Exception (finally)
import Data.Foldable (for_)
import Data.Functor (($>))
import Data.IORef
import Data.Nat
import Foreign
import Generated.Curl.Curl.Unsafe qualified as Unsafe
import Generated.Curl.Easy.Unsafe qualified as Unsafe
import Generated.Curl.Multi qualified as C
import Generated.Curl.Multi.Unsafe qualified as Unsafe
import Network.Curl.Linear.Internal.Types
import Network.Curl.Linear.Internal.Utils qualified as Linear
import Prelude.Linear as L
import System.IO.Linear qualified as Linear
import System.IO.Unsafe qualified as Unsafe
import Unsafe.Linear qualified as Unsafe
import Prelude qualified as N

withCurlGlobal :: (GlobalCurlHandle -> Linear.IO (Ur r)) %1 -> Linear.IO (Ur r)
withCurlGlobal = Unsafe.toLinear runAction
 where
  runAction :: (GlobalCurlHandle -> Linear.IO (Ur r)) -> Linear.IO (Ur r)
  runAction g = Linear.fromSystemIO $ do
    h <- Unsafe.curl_global_init 1 $> GlobalCurlHandle
    Linear.toSystemIO (g h) `finally` Unsafe.curl_global_cleanup

withCurlEasy :: GlobalCurlHandle -> (CurlEasy %1 -> Linear.IO (Ur r)) %1 -> Linear.IO (Ur r)
withCurlEasy _ = Unsafe.toLinear runAction
 where
  runAction :: (CurlEasy %1 -> Linear.IO (Ur r)) -> Linear.IO (Ur r)
  runAction g = Linear.fromSystemIO $ do
    handle <- Linear.toSystemIO curlEasyInit
    Linear.toSystemIO (g handle) `finally` Linear.toSystemIO (curlEasyCleanup handle)

withCurlMulti :: GlobalCurlHandle -> (CurlMulti Z %1 -> Linear.IO (Ur r)) %1 -> Linear.IO (Ur r)
withCurlMulti global = Unsafe.toLinear $ \g -> Linear.fromSystemIO $ do
  handle <- Linear.toSystemIO (curlMultiInit global)
  Linear.toSystemIO (g handle) `finally` Linear.toSystemIO (curlMultiCleanup handle)

curlEasyInit :: Linear.IO CurlEasy
curlEasyInit = Linear.fromSystemIO $ do
  h <- Unsafe.curl_easy_init
  bufRef <- newIORef N.Nothing
  N.pure $ CurlEasy (Ur h) (CurlErrorBuffer (Ur bufRef))

curlEasyCleanup :: CurlEasy %1 -> Linear.IO ()
curlEasyCleanup = Unsafe.toLinear $ \(CurlEasy h (CurlErrorBuffer bufRef)) -> Linear.fromSystemIO $ do
  Unsafe.curl_easy_cleanup $ unur h
  mbuf <- readIORef $ unur bufRef
  for_ mbuf free

curlMultiInit :: GlobalCurlHandle -> Linear.IO (CurlMulti Z)
curlMultiInit _ = Linear.fromSystemIO $ do
  h <- Unsafe.curl_multi_init
  N.pure $ CurlMulti (Ur h) N.mempty

curlMultiCleanup :: CurlMulti Z %1 -> Linear.IO C.CURLMcode
curlMultiCleanup = Unsafe.toLinear $ \(CurlMulti h _) ->
  Linear.fromSystemIO $ Unsafe.curl_multi_cleanup (unur h)

-- | Reset a CURL handle to default state, keeping the connection cache.
reset :: CurlEasy %1 -> CurlEasy
reset = Unsafe.toLinear doReset
 where
  doReset handle@(CurlEasy h _) = Unsafe.unsafeDupablePerformIO $ do
    Unsafe.curl_easy_reset (unur h)
    N.pure handle
