{-# LANGUAGE CApiFFI #-}
module Generated.Curl.Easy.GetInfo.Safe where

import Generated.Curl.Curl
import Data.Void
import Foreign.C.Types
import Foreign.Ptr
import Prelude

-- | curl_easy_getinfo with a string result (safe)
foreign import ccall safe "curl_easy_getinfo"
  curl_easy_getinfo_string_c
    :: Ptr Void        -- ^ CURL handle
    -> CUInt           -- ^ info
    -> Ptr (Ptr CChar)     -- ^ result pointer
    -> IO CUInt

-- | Type-safe wrapper for curl_easy_getinfo with a string result
curl_easy_getinfo_string :: Ptr Void -> CURLINFO -> Ptr (Ptr CChar) -> IO CURLcode
curl_easy_getinfo_string handle (CURLINFO info) ptr =
  CURLcode <$> curl_easy_getinfo_string_c handle info ptr

-- | curl_easy_getinfo with a long result (safe)
foreign import ccall safe "curl_easy_getinfo"
  curl_easy_getinfo_long_c
    :: Ptr Void        -- ^ CURL handle
    -> CUInt           -- ^ info
    -> Ptr CLong     -- ^ result pointer
    -> IO CUInt

-- | Type-safe wrapper for curl_easy_getinfo with a long result
curl_easy_getinfo_long :: Ptr Void -> CURLINFO -> Ptr CLong -> IO CURLcode
curl_easy_getinfo_long handle (CURLINFO info) ptr =
  CURLcode <$> curl_easy_getinfo_long_c handle info ptr

-- | curl_easy_getinfo with a double result (safe)
foreign import ccall safe "curl_easy_getinfo"
  curl_easy_getinfo_double_c
    :: Ptr Void        -- ^ CURL handle
    -> CUInt           -- ^ info
    -> Ptr CDouble     -- ^ result pointer
    -> IO CUInt

-- | Type-safe wrapper for curl_easy_getinfo with a double result
curl_easy_getinfo_double :: Ptr Void -> CURLINFO -> Ptr CDouble -> IO CURLcode
curl_easy_getinfo_double handle (CURLINFO info) ptr =
  CURLcode <$> curl_easy_getinfo_double_c handle info ptr

-- | curl_easy_getinfo with an slist result (safe)
foreign import ccall safe "curl_easy_getinfo"
  curl_easy_getinfo_slist_c
    :: Ptr Void        -- ^ CURL handle
    -> CUInt           -- ^ info
    -> Ptr (Ptr Curl_slist)     -- ^ result pointer
    -> IO CUInt

-- | Type-safe wrapper for curl_easy_getinfo with an slist result
curl_easy_getinfo_slist :: Ptr Void -> CURLINFO -> Ptr (Ptr Curl_slist) -> IO CURLcode
curl_easy_getinfo_slist handle (CURLINFO info) ptr =
  CURLcode <$> curl_easy_getinfo_slist_c handle info ptr

-- | curl_easy_getinfo with an off_t result (safe)
foreign import ccall safe "curl_easy_getinfo"
  curl_easy_getinfo_off_t_c
    :: Ptr Void        -- ^ CURL handle
    -> CUInt           -- ^ info
    -> Ptr CLong     -- ^ result pointer
    -> IO CUInt

-- | Type-safe wrapper for curl_easy_getinfo with an off_t result
curl_easy_getinfo_off_t :: Ptr Void -> CURLINFO -> Ptr CLong -> IO CURLcode
curl_easy_getinfo_off_t handle (CURLINFO info) ptr =
  CURLcode <$> curl_easy_getinfo_off_t_c handle info ptr

