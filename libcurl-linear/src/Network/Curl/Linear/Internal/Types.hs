module Network.Curl.Linear.Internal.Types where

import Data.IORef
import Data.IntMap.Strict qualified as IntMap
import Data.Map.Strict qualified as M
import Data.Text (Text)
import Data.Void (Void)
import Foreign
import Foreign.C
import Generated.Curl.Curl
import Generated.Curl.Multi
import Prelude.Linear as L
import Unsafe.Linear qualified as Unsafe
import Prelude qualified as N

-- | Global CURL state. Must be initialized before creating easy handles.
data GlobalCurlHandle = GlobalCurlHandle

-- | A CURL easy handle. Must be used linearly to prevent resource leaks.
data CurlEasy = CurlEasy
  { easyHandle :: Ptr CURL
  , easyErrorBuffer :: CurlErrorBuffer
  }

newtype CurlErrorBuffer = CurlErrorBuffer (Ur (IORef (Maybe CString)))

instance Consumable CurlErrorBuffer where
  consume (CurlErrorBuffer buf) = consume buf

-- | A CURL easy handle. Must be used linearly to prevent resource leaks.
data CurlMulti = CurlMulti
  { multiHandle :: Ur (Ptr CURLM)
  , multiEasyHandles :: IntMap.IntMap CurlEasy
  }

-- | Result of a CURL operation
data CurlEasyResult
  = CurlEasyResultOk
  | CurlEasyResultError CurlError
  deriving (N.Eq, N.Show)

instance Consumable CurlEasyResult where
  consume r = case r of
    CurlEasyResultOk -> ()
    CurlEasyResultError e -> consume e

instance Dupable CurlEasyResult where
  dup2 = Unsafe.toLinear $ \e -> (e, e)

instance Movable CurlEasyResult where
  move = Unsafe.toLinear Ur

-- | CURL error information
data CurlError = CurlError
  { errorCode :: N.Int
  , errorMessage :: N.String
  }
  deriving (N.Eq, N.Show)

instance Consumable CurlError where
  consume CurlError{..} = consume (errorCode, errorMessage)

instance Dupable CurlError where
  dup2 = Unsafe.toLinear $ \e -> (e, e)

instance Movable CurlError where
  move = Unsafe.toLinear Ur

newtype StreamOptions = StreamOptions
  { bufferSizeBytes :: Int
  }
  deriving (Consumable, Dupable, Movable)

newtype CurlWriteFunction a = CurlWriteFunction
  { unCurlWriteFunction :: CString -> CSize -> CSize -> StablePtr a -> IO CSize
  }

newtype CurlSocketFunction a = CurlSocketFunction
  { unCurlSocketFunction :: Ptr CURL -> Curl_socket_t -> CInt -> StablePtr a -> Ptr Void -> IO CInt
  }

newtype CurlHeaders = CurlHeaders
  { getCurlHeaders :: M.Map Text Text
  }

instance Consumable CurlHeaders where
  consume = Unsafe.toLinear (const ())

instance Dupable CurlHeaders where
  dup2 = Unsafe.toLinear $ \e -> (e, e)

instance Movable CurlHeaders where
  move = Unsafe.toLinear Ur
