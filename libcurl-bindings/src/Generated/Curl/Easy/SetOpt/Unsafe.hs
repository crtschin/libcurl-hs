{-# LANGUAGE CApiFFI #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Generated.Curl.Easy.SetOpt.Unsafe where

import Generated.Curl.Curl
import Generated.Curl.Easy
import Generated.Curl.Multi
import Data.Void
import Foreign.C
import Foreign.C.Types
import Foreign.Ptr
import Prelude

-- | curl_easy_setopt with a long argument (unsafe)
foreign import ccall unsafe "curl_easy_setopt"
  curl_easy_setopt_long_c
    :: Ptr CURL        -- ^ CURL handle
    -> CUInt           -- ^ option
    -> CLong           -- ^ option
    -> IO CUInt

-- | Type-safe wrapper for curl_easy_setopt with a long argument
curl_easy_setopt_long :: Ptr CURL -> CURLoption -> CLong -> IO CURLcode
curl_easy_setopt_long handle (CURLoption opt) val =
  CURLcode <$> curl_easy_setopt_long_c handle opt val

-- | curl_easy_setopt with a curl_off_t argument (unsafe)
foreign import ccall unsafe "curl_easy_setopt"
  curl_easy_setopt_off_t_c
    :: Ptr CURL        -- ^ CURL handle
    -> CUInt           -- ^ option
    -> Curl_off_t           -- ^ option
    -> IO CUInt

-- | Type-safe wrapper for curl_easy_setopt with a curl_off_t argument
curl_easy_setopt_off_t :: Ptr CURL -> CURLoption -> Curl_off_t -> IO CURLcode
curl_easy_setopt_off_t handle (CURLoption opt) val =
  CURLcode <$> curl_easy_setopt_off_t_c handle opt val

-- | curl_easy_setopt with a pointer argument (unsafe)
foreign import ccall unsafe "curl_easy_setopt"
  curl_easy_setopt_ptr_c
    :: Ptr CURL        -- ^ CURL handle
    -> CUInt           -- ^ option
    -> Ptr Void           -- ^ option
    -> IO CUInt

-- | Type-safe wrapper for curl_easy_setopt with a pointer argument
curl_easy_setopt_ptr :: Ptr CURL -> CURLoption -> Ptr Void -> IO CURLcode
curl_easy_setopt_ptr handle (CURLoption opt) val =
  CURLcode <$> curl_easy_setopt_ptr_c handle opt val

-- | curl_easy_setopt with a curl_blob argument (unsafe)
foreign import ccall unsafe "curl_easy_setopt"
  curl_easy_setopt_blob_c
    :: Ptr CURL        -- ^ CURL handle
    -> CUInt           -- ^ option
    -> Ptr Curl_blob           -- ^ option
    -> IO CUInt

-- | Type-safe wrapper for curl_easy_setopt with a curl_blob argument
curl_easy_setopt_blob :: Ptr CURL -> CURLoption -> Ptr Curl_blob -> IO CURLcode
curl_easy_setopt_blob handle (CURLoption opt) val =
  CURLcode <$> curl_easy_setopt_blob_c handle opt val

