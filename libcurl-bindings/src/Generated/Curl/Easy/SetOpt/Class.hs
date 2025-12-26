{-# LANGUAGE TypeFamilies #-}
module Generated.Curl.Easy.SetOpt.Class where

import Generated.Curl.Curl
import Data.Kind
import Data.Void
import Foreign.Ptr
import Prelude

class CurlOption c where
  type CurlOptionArgument c :: Type
  
  curlOption :: c -> CURLoption
  
  curlSetOpt :: c -> Ptr Void -> CurlOptionArgument c -> IO CURLcode
