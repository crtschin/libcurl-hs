{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Generated.Curl.Multi.SetOpt.Class where

import Generated.Curl.Curl
import Generated.Curl.Multi
import Data.Kind
import Data.Void
import Foreign.Ptr
import Prelude

class CurlMultiOption c where
  type CurlMOptionArgument c :: Type
  curlMOption :: c -> CURLMoption
  curlSetMOpt :: c -> Ptr CURLM -> CurlMOptionArgument c -> IO CURLcode
