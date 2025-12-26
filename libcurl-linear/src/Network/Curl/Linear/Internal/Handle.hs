module Network.Curl.Linear.Internal.Handle where

import Control.Exception (finally)
import Data.Foldable (for_)
import Data.Functor (($>))
import Data.IORef
import Data.Unrestricted.Linear qualified as Ur
import Foreign
import Generated.Curl.Curl.Unsafe qualified as Unsafe
import Generated.Curl.Easy.Unsafe qualified as Unsafe
import Network.Curl.Linear.Internal.Types
import Network.Curl.Linear.Internal.Utils qualified as Linear
import Prelude.Linear as L
import System.IO.Linear qualified as Linear
import System.IO.Unsafe qualified as Unsafe
import Unsafe.Linear qualified as Unsafe
import Prelude qualified as N

withCurlGlobal
  :: forall r. Ur.Movable r => (Ur.Ur GlobalCurlHandle %1 -> Linear.IO (Ur r)) %1 -> Linear.IO (Ur r)
withCurlGlobal = Unsafe.toLinear runAction
 where
  runAction :: (Ur.Ur GlobalCurlHandle %1 -> Linear.IO (Ur r)) -> Linear.IO (Ur r)
  runAction g = Linear.fromSystemIO $ do
    h <- Unsafe.curl_global_init 1 $> GlobalCurlHandle
    Linear.toSystemIO (g (Ur h)) `finally` Unsafe.curl_global_cleanup

withCurlEasy :: GlobalCurlHandle -> (CurlEasy %1 -> Linear.IO (Ur r)) %1 -> Linear.IO (Ur r)
withCurlEasy _ = Unsafe.toLinear runAction
 where
  runAction :: (CurlEasy %1 -> Linear.IO (Ur r)) -> Linear.IO (Ur r)
  runAction g = Linear.fromSystemIO $ do
    h <- Unsafe.curl_easy_init
    bufRef <- newIORef N.Nothing
    let handle = CurlEasy (Ur h) (CurlErrorBuffer (Ur bufRef))
    Linear.toSystemIO (g handle) `finally` cleanup handle
   where
    cleanup (CurlEasy h (CurlErrorBuffer bufRef)) = do
      Unsafe.curl_easy_cleanup $ unur h
      mbuf <- readIORef $ unur bufRef
      for_ mbuf free

-- | Reset a CURL handle to default state, keeping the connection cache.
reset :: CurlEasy %1 -> CurlEasy
reset = Unsafe.toLinear doReset
 where
  doReset handle@(CurlEasy h _) = Unsafe.unsafeDupablePerformIO $ do
    Unsafe.curl_easy_reset (unur h)
    N.pure handle
