{-# LANGUAGE CApiFFI #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Generated.Curl.Easy.SetOpt.Unsafe where

import Generated.Curl.Curl
import Generated.Curl.Easy
import Data.Void
import Foreign.C.Types
import Foreign.Ptr
import Prelude

-- | curl_easy_setopt with a long argument (unsafe)
foreign import ccall unsafe "curl_easy_setopt"
  curl_easy_setopt_long_c
    :: Ptr Void        -- ^ CURL handle
    -> CUInt           -- ^ option
    -> CLong           -- ^ value
    -> IO CUInt

-- | Type-safe wrapper for curl_easy_setopt with a long argument
curl_easy_setopt_long :: Ptr Void -> CURLoption -> CLong -> IO CURLcode
curl_easy_setopt_long handle (CURLoption opt) val =
  CURLcode <$> curl_easy_setopt_long_c handle opt val

-- | curl_easy_setopt with a curl_off_t argument (unsafe)
foreign import ccall unsafe "curl_easy_setopt"
  curl_easy_setopt_off_t_c
    :: Ptr Void        -- ^ CURL handle
    -> CUInt           -- ^ option
    -> CLong           -- ^ value
    -> IO CUInt

-- | Type-safe wrapper for curl_easy_setopt with a curl_off_t argument
curl_easy_setopt_off_t :: Ptr Void -> CURLoption -> Curl_off_t -> IO CURLcode
curl_easy_setopt_off_t handle (CURLoption opt) (Curl_off_t val) =
  CURLcode <$> curl_easy_setopt_off_t_c handle opt val

-- | curl_easy_setopt with a pointer argument (unsafe)
foreign import ccall unsafe "curl_easy_setopt"
  curl_easy_setopt_ptr_c
    :: Ptr Void        -- ^ CURL handle
    -> CUInt           -- ^ option
    -> Ptr Void           -- ^ value
    -> IO CUInt

-- | Type-safe wrapper for curl_easy_setopt with a pointer argument
curl_easy_setopt_ptr :: Ptr Void -> CURLoption -> Ptr Void -> IO CURLcode
curl_easy_setopt_ptr handle (CURLoption opt) val =
  CURLcode <$> curl_easy_setopt_ptr_c handle opt val

-- | curl_easy_setopt with a curl_blob argument (unsafe)
foreign import ccall unsafe "curl_easy_setopt"
  curl_easy_setopt_blob_c
    :: Ptr Void        -- ^ CURL handle
    -> CUInt           -- ^ option
    -> Ptr Curl_blob           -- ^ value
    -> IO CUInt

-- | Type-safe wrapper for curl_easy_setopt with a curl_blob argument
curl_easy_setopt_blob :: Ptr Void -> CURLoption -> Ptr Curl_blob -> IO CURLcode
curl_easy_setopt_blob handle (CURLoption opt) val =
  CURLcode <$> curl_easy_setopt_blob_c handle opt val

