module Network.Curl.Linear.Internal.Easy.Option where

import Data.IORef
import Data.Text (Text)
import Data.Text.Foreign qualified as Text
import Data.Void
import Foreign
import Foreign.C.Types (CLong)
import Generated.Curl.Curl qualified as C
import Generated.Curl.Easy.SetOpt.Class
import Generated.Curl.Easy.SetOpt.Instances.Unsafe qualified as Unsafe
import HsBindgen.Runtime.FunPtr (ToFunPtr (..))
import Network.Curl.Linear.Internal.Types
import Prelude.Linear as L
import System.IO.Unsafe qualified as Unsafe
import Unsafe.Linear qualified as Unsafe
import Prelude qualified as N

setOption
  :: CurlOption c
  => c
  -> CurlOptionArgument c
  %1 -> CurlEasy
  %1 -> CurlEasy
setOption option = Unsafe.toLinear2 performSet
 where
  performSet arg handle@(CurlEasy h _) = Unsafe.unsafeDupablePerformIO $ do
    _ <- curlSetOpt option h arg
    N.pure handle

setOptionM :: CurlOption c => c -> N.IO (CurlOptionArgument c) %1 -> CurlEasy %1 -> CurlEasy
setOptionM option = Unsafe.toLinear2 performSet
 where
  performSet getArg handle@(CurlEasy h _) = Unsafe.unsafeDupablePerformIO $ do
    arg <- getArg
    _ <- curlSetOpt option h arg
    N.pure handle

setTextOption
  :: (CurlOption c, CurlOptionArgument c ~ Ptr Void) => c -> Text -> CurlEasy %1 -> CurlEasy
setTextOption option arg =
  Unsafe.unsafeDupablePerformIO
    $ Text.withCString arg
    $ \ptr -> N.pure $ setOption option (castPtr ptr)

setNumericOption
  :: (CurlOption c, CurlOptionArgument c ~ CLong) => c -> Int64 -> CurlEasy %1 -> CurlEasy
setNumericOption option arg =
  setOption option (fromIntegral arg)

-- | Set the URL to fetch.
setUrl :: Text -> CurlEasy %1 -> CurlEasy
setUrl = setTextOption Unsafe.CurloptUrl

-- | Set timeout in seconds.
setTimeout :: Int64 -> CurlEasy %1 -> CurlEasy
setTimeout = setNumericOption Unsafe.CurloptTimeout

-- | Set timeout in milliseconds.
setTimeoutMS :: Int64 -> CurlEasy %1 -> CurlEasy
setTimeoutMS = setNumericOption Unsafe.CurloptTimeoutMs

-- | Enable/disable following redirects.
setFollowLocation :: N.Bool -> CurlEasy %1 -> CurlEasy
setFollowLocation follow =
  setNumericOption Unsafe.CurloptFollowlocation
    $ if follow then 1 else 0

-- | Enable/disable verbose output.
setVerbose :: N.Bool -> CurlEasy %1 -> CurlEasy
setVerbose verbose =
  setOption Unsafe.CurloptVerbose
    $ if verbose then 1 else 0

-- | Allocate and set an error buffer of at least CURL_ERROR_SIZE (256 bytes).
-- The buffer remains live until cleanup and can be inspected after errors.
setErrorBuffer :: CurlEasy %1 -> CurlEasy
setErrorBuffer = Unsafe.toLinear doSetErrorBuffer
 where
  doSetErrorBuffer handle@(CurlEasy h (CurlErrorBuffer bufRef)) = Unsafe.unsafePerformIO $ do
    -- Allocate buffer of CURL_ERROR_SIZE (256 bytes)
    let bufSize = N.fromIntegral C.cURL_ERROR_SIZE
    buf <- callocBytes bufSize
    -- Store buffer reference for cleanup
    writeIORef (unur bufRef) (N.Just buf)
    -- Set the error buffer option
    _ <- curlSetOpt Unsafe.CurloptErrorbuffer h (castPtr buf)
    N.pure handle

setWriteFunction :: StablePtr a -> CurlWriteFunction a -> CurlEasy %1 -> CurlEasy
setWriteFunction curlWriteData curlWriteFunction =
  setOption Unsafe.CurloptWritedata (castPtr (castStablePtrToPtr curlWriteData))
    . setOptionM Unsafe.CurloptWritefunction (N.fmap castFunPtrToPtr writeFunction)
 where
  writeFunction = toFunPtr $ C.Curl_write_callback_Deref $ \contents size nmemb userdata -> do
    unCurlWriteFunction curlWriteFunction contents size nmemb (castPtrToStablePtr (castPtr userdata))
