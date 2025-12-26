{-# LANGUAGE CApiFFI #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Generated.Curl.Multi.SetOpt.Safe where

import Generated.Curl.Curl
import Generated.Curl.Easy
import Generated.Curl.Multi
import Data.Void
import Foreign.C
import Foreign.C.Types
import Foreign.Ptr
import Prelude

-- | curl_multi_setopt with a long argument (safe)
foreign import ccall safe "curl_multi_setopt"
  curl_multi_setopt_long_c
    :: Ptr CURLM        -- ^ CURL handle
    -> CUInt           -- ^ option
    -> CLong           -- ^ option
    -> IO CUInt

-- | Type-safe wrapper for curl_multi_setopt with a long argument
curl_multi_setopt_long :: Ptr CURLM -> CURLMoption -> CLong -> IO CURLcode
curl_multi_setopt_long handle (CURLMoption opt) val =
  CURLcode <$> curl_multi_setopt_long_c handle opt val

-- | curl_multi_setopt with a curl_off_t argument (safe)
foreign import ccall safe "curl_multi_setopt"
  curl_multi_setopt_off_t_c
    :: Ptr CURLM        -- ^ CURL handle
    -> CUInt           -- ^ option
    -> CLong           -- ^ option
    -> IO CUInt

-- | Type-safe wrapper for curl_multi_setopt with a curl_off_t argument
curl_multi_setopt_off_t :: Ptr CURLM -> CURLMoption -> Curl_off_t -> IO CURLcode
curl_multi_setopt_off_t handle (CURLMoption opt) (Curl_off_t val) =
  CURLcode <$> curl_multi_setopt_off_t_c handle opt val

-- | curl_multi_setopt with a pointer argument (safe)
foreign import ccall safe "curl_multi_setopt"
  curl_multi_setopt_ptr_c
    :: Ptr CURLM        -- ^ CURL handle
    -> CUInt           -- ^ option
    -> Ptr Void           -- ^ option
    -> IO CUInt

-- | Type-safe wrapper for curl_multi_setopt with a pointer argument
curl_multi_setopt_ptr :: Ptr CURLM -> CURLMoption -> Ptr Void -> IO CURLcode
curl_multi_setopt_ptr handle (CURLMoption opt) val =
  CURLcode <$> curl_multi_setopt_ptr_c handle opt val

-- | curl_multi_setopt with a curl_blob argument (safe)
foreign import ccall safe "curl_multi_setopt"
  curl_multi_setopt_blob_c
    :: Ptr CURLM        -- ^ CURL handle
    -> CUInt           -- ^ option
    -> Ptr Curl_blob           -- ^ option
    -> IO CUInt

-- | Type-safe wrapper for curl_multi_setopt with a curl_blob argument
curl_multi_setopt_blob :: Ptr CURLM -> CURLMoption -> Ptr Curl_blob -> IO CURLcode
curl_multi_setopt_blob handle (CURLMoption opt) val =
  CURLcode <$> curl_multi_setopt_blob_c handle opt val

