{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Generated.Curl.Easy.GetInfo.Class where

import Generated.Curl.Curl
import Generated.Curl.Multi
import Data.Kind
import Data.Void
import Foreign.Ptr
import Prelude

class CurlInfo c where
  type CurlInfoResult c :: Type
  curlInfo :: c -> CURLINFO
  curlGetInfo :: c -> Ptr CURL -> Ptr (CurlInfoResult c) -> IO CURLcode
