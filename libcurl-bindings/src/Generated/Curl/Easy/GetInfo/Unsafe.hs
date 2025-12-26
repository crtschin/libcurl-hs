{-# LANGUAGE CApiFFI #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Generated.Curl.Easy.GetInfo.Unsafe where

import Generated.Curl.Curl
import Generated.Curl.Easy
import Generated.Curl.Multi
import Data.Void
import Foreign.C
import Foreign.C.Types
import Foreign.Ptr
import Prelude

-- | curl_easy_getinfo with a string result (unsafe)
foreign import ccall unsafe "curl_easy_getinfo"
  curl_easy_getinfo_string_c
    :: Ptr Void        -- ^ CURL handle
    -> CUInt           -- ^ info
    -> Ptr CString           -- ^ info
    -> IO CUInt

-- | Type-safe wrapper for curl_easy_getinfo with a string result
curl_easy_getinfo_string :: Ptr Void -> CURLINFO -> Ptr CString -> IO CURLcode
curl_easy_getinfo_string handle (CURLINFO opt) val =
  CURLcode <$> curl_easy_getinfo_string_c handle opt val

-- | curl_easy_getinfo with a long result (unsafe)
foreign import ccall unsafe "curl_easy_getinfo"
  curl_easy_getinfo_long_c
    :: Ptr Void        -- ^ CURL handle
    -> CUInt           -- ^ info
    -> Ptr CLong           -- ^ info
    -> IO CUInt

-- | Type-safe wrapper for curl_easy_getinfo with a long result
curl_easy_getinfo_long :: Ptr Void -> CURLINFO -> Ptr CLong -> IO CURLcode
curl_easy_getinfo_long handle (CURLINFO opt) val =
  CURLcode <$> curl_easy_getinfo_long_c handle opt val

-- | curl_easy_getinfo with a double result (unsafe)
foreign import ccall unsafe "curl_easy_getinfo"
  curl_easy_getinfo_double_c
    :: Ptr Void        -- ^ CURL handle
    -> CUInt           -- ^ info
    -> Ptr CDouble           -- ^ info
    -> IO CUInt

-- | Type-safe wrapper for curl_easy_getinfo with a double result
curl_easy_getinfo_double :: Ptr Void -> CURLINFO -> Ptr CDouble -> IO CURLcode
curl_easy_getinfo_double handle (CURLINFO opt) val =
  CURLcode <$> curl_easy_getinfo_double_c handle opt val

-- | curl_easy_getinfo with an slist result (unsafe)
foreign import ccall unsafe "curl_easy_getinfo"
  curl_easy_getinfo_slist_c
    :: Ptr Void        -- ^ CURL handle
    -> CUInt           -- ^ info
    -> Ptr (Ptr Curl_slist)           -- ^ info
    -> IO CUInt

-- | Type-safe wrapper for curl_easy_getinfo with an slist result
curl_easy_getinfo_slist :: Ptr Void -> CURLINFO -> Ptr (Ptr Curl_slist) -> IO CURLcode
curl_easy_getinfo_slist handle (CURLINFO opt) val =
  CURLcode <$> curl_easy_getinfo_slist_c handle opt val

-- | curl_easy_getinfo with an socket_t result (unsafe)
foreign import ccall unsafe "curl_easy_getinfo"
  curl_easy_getinfo_socket_t_c
    :: Ptr Void        -- ^ CURL handle
    -> CUInt           -- ^ info
    -> Ptr Curl_socket_t           -- ^ info
    -> IO CUInt

-- | Type-safe wrapper for curl_easy_getinfo with an socket_t result
curl_easy_getinfo_socket_t :: Ptr Void -> CURLINFO -> Ptr Curl_socket_t -> IO CURLcode
curl_easy_getinfo_socket_t handle (CURLINFO opt) val =
  CURLcode <$> curl_easy_getinfo_socket_t_c handle opt val

-- | curl_easy_getinfo with an off_t result (unsafe)
foreign import ccall unsafe "curl_easy_getinfo"
  curl_easy_getinfo_off_t_c
    :: Ptr Void        -- ^ CURL handle
    -> CUInt           -- ^ info
    -> Ptr CLong           -- ^ info
    -> IO CUInt

-- | Type-safe wrapper for curl_easy_getinfo with an off_t result
curl_easy_getinfo_off_t :: Ptr Void -> CURLINFO -> Ptr CLong -> IO CURLcode
curl_easy_getinfo_off_t handle (CURLINFO opt) val =
  CURLcode <$> curl_easy_getinfo_off_t_c handle opt val

