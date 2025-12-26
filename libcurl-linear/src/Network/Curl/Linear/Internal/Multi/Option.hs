module Network.Curl.Linear.Internal.Multi.Option where

import Foreign
import Generated.Curl.Multi qualified as C
import Generated.Curl.Multi.SetOpt.Class
import Generated.Curl.Multi.SetOpt.Instances.Unsafe qualified as Unsafe
import HsBindgen.Runtime.FunPtr
import Network.Curl.Linear.Internal.Types
import Prelude.Linear as L
import System.IO.Unsafe qualified as Unsafe
import Unsafe.Linear qualified as Unsafe
import Prelude qualified as N

setOption
  :: CurlMultiOption c
  => c
  -> CurlMOptionArgument c
  %1 -> CurlMulti n
  %1 -> CurlMulti n
setOption option = Unsafe.toLinear2 performSet
 where
  performSet arg handle@(CurlMulti h _) = Unsafe.unsafeDupablePerformIO $ do
    _ <- curlSetMOpt option (unur h) arg
    N.pure handle

setOptionM
  :: CurlMultiOption c
  => c
  -> N.IO (CurlMOptionArgument c)
  %1 -> CurlMulti n
  %1 -> CurlMulti n
setOptionM option = Unsafe.toLinear2 performSet
 where
  performSet getArg handle@(CurlMulti h _) = Unsafe.unsafeDupablePerformIO $ do
    arg <- getArg
    _ <- curlSetMOpt option (unur h) arg
    N.pure handle

setSocketFunction :: StablePtr a -> CurlSocketFunction a -> CurlMulti n %1 -> CurlMulti n
setSocketFunction curlSocketData curlSocketFunction =
  setOption Unsafe.CurlmoptSocketdata (castPtr (castStablePtrToPtr curlSocketData))
    . setOptionM Unsafe.CurlmoptSocketfunction (N.fmap castFunPtrToPtr writeFunction)
 where
  writeFunction = toFunPtr $ C.Curl_socket_callback_Deref $ \easy s what clientp socketp -> do
    unCurlSocketFunction curlSocketFunction easy s what (castPtrToStablePtr (castPtr clientp)) socketp
