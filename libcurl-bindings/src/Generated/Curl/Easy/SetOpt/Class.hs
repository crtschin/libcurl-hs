{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Generated.Curl.Easy.SetOpt.Class where

import Generated.Curl.Curl
import Generated.Curl.Multi
import Data.Kind
import Data.Void
import Foreign.Ptr
import Prelude

class CurlOption c where
  type CurlOptionArgument c :: Type
  curlOption :: c -> CURLoption
  curlSetOpt :: c -> Ptr CURL -> CurlOptionArgument c -> IO CURLcode
