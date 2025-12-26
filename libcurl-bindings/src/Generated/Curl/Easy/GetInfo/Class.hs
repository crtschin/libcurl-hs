{-# LANGUAGE TypeFamilies #-}
module Generated.Curl.Easy.GetInfo.Class where

import Generated.Curl.Curl
import Data.Kind
import Data.Void
import Foreign.Ptr
import Prelude

class CurlInfo c where
  type CurlInfoResult c :: Type
  
  curlInfo :: c -> CURLINFO
  
  curlGetInfo :: c -> Ptr Void -> Ptr (CurlInfoResult c) -> IO CURLcode
