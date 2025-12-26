{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Curl.Easy.Unsafe where

import qualified GHC.Ptr as Ptr
import qualified Generated.Curl.Curl
import qualified HsBindgen.Runtime.ConstPtr
import qualified HsBindgen.Runtime.Prelude
import Data.Void (Void)
import Prelude (IO)

$(HsBindgen.Runtime.Prelude.addCSource (HsBindgen.Runtime.Prelude.unlines
  [ "#include <curl/curl.h>"
  , "CURL *hs_bindgen_162bd7902d7f128c (void)"
  , "{"
  , "  return curl_easy_init();"
  , "}"
  , "CURLcode hs_bindgen_9dee6d0b0b9f91ca ("
  , "  CURL *arg1"
  , ")"
  , "{"
  , "  return curl_easy_perform(arg1);"
  , "}"
  , "void hs_bindgen_9e059f051febca55 ("
  , "  CURL *arg1"
  , ")"
  , "{"
  , "  curl_easy_cleanup(arg1);"
  , "}"
  , "CURL *hs_bindgen_eee2cd204e0d2e9c ("
  , "  CURL *arg1"
  , ")"
  , "{"
  , "  return curl_easy_duphandle(arg1);"
  , "}"
  , "void hs_bindgen_ec22e7dbc613a109 ("
  , "  CURL *arg1"
  , ")"
  , "{"
  , "  curl_easy_reset(arg1);"
  , "}"
  , "CURLcode hs_bindgen_66cf49a04aee7002 ("
  , "  CURL *arg1,"
  , "  void *arg2,"
  , "  size_t arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return curl_easy_recv(arg1, arg2, arg3, arg4);"
  , "}"
  , "CURLcode hs_bindgen_c140a5a055716718 ("
  , "  CURL *arg1,"
  , "  void const *arg2,"
  , "  size_t arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return curl_easy_send(arg1, arg2, arg3, arg4);"
  , "}"
  , "CURLcode hs_bindgen_dd080de1bb15f53c ("
  , "  CURL *arg1"
  , ")"
  , "{"
  , "  return curl_easy_upkeep(arg1);"
  , "}"
  ]))

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Unsafe_curl_easy_init@
foreign import ccall unsafe "hs_bindgen_162bd7902d7f128c" hs_bindgen_162bd7902d7f128c ::
     IO (Ptr.Ptr Generated.Curl.Curl.CURL)

{-| __C declaration:__ @curl_easy_init@

    __defined at:__ @easy.h:41:19@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_init :: IO (Ptr.Ptr Generated.Curl.Curl.CURL)
curl_easy_init = hs_bindgen_162bd7902d7f128c

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Unsafe_curl_easy_perform@
foreign import ccall unsafe "hs_bindgen_9dee6d0b0b9f91ca" hs_bindgen_9dee6d0b0b9f91ca ::
     Ptr.Ptr Generated.Curl.Curl.CURL
  -> IO Generated.Curl.Curl.CURLcode

{-| __C declaration:__ @curl_easy_perform@

    __defined at:__ @easy.h:43:22@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_perform ::
     Ptr.Ptr Generated.Curl.Curl.CURL
     -- ^ __C declaration:__ @curl@
  -> IO Generated.Curl.Curl.CURLcode
curl_easy_perform = hs_bindgen_9dee6d0b0b9f91ca

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Unsafe_curl_easy_cleanup@
foreign import ccall unsafe "hs_bindgen_9e059f051febca55" hs_bindgen_9e059f051febca55 ::
     Ptr.Ptr Generated.Curl.Curl.CURL
  -> IO ()

{-| __C declaration:__ @curl_easy_cleanup@

    __defined at:__ @easy.h:44:18@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_cleanup ::
     Ptr.Ptr Generated.Curl.Curl.CURL
     -- ^ __C declaration:__ @curl@
  -> IO ()
curl_easy_cleanup = hs_bindgen_9e059f051febca55

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Unsafe_curl_easy_duphandle@
foreign import ccall unsafe "hs_bindgen_eee2cd204e0d2e9c" hs_bindgen_eee2cd204e0d2e9c ::
     Ptr.Ptr Generated.Curl.Curl.CURL
  -> IO (Ptr.Ptr Generated.Curl.Curl.CURL)

{-| __C declaration:__ @curl_easy_duphandle@

    __defined at:__ @easy.h:74:19@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_duphandle ::
     Ptr.Ptr Generated.Curl.Curl.CURL
     -- ^ __C declaration:__ @curl@
  -> IO (Ptr.Ptr Generated.Curl.Curl.CURL)
curl_easy_duphandle = hs_bindgen_eee2cd204e0d2e9c

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Unsafe_curl_easy_reset@
foreign import ccall unsafe "hs_bindgen_ec22e7dbc613a109" hs_bindgen_ec22e7dbc613a109 ::
     Ptr.Ptr Generated.Curl.Curl.CURL
  -> IO ()

{-| __C declaration:__ @curl_easy_reset@

    __defined at:__ @easy.h:87:18@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_reset ::
     Ptr.Ptr Generated.Curl.Curl.CURL
     -- ^ __C declaration:__ @curl@
  -> IO ()
curl_easy_reset = hs_bindgen_ec22e7dbc613a109

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Unsafe_curl_easy_recv@
foreign import ccall unsafe "hs_bindgen_66cf49a04aee7002" hs_bindgen_66cf49a04aee7002 ::
     Ptr.Ptr Generated.Curl.Curl.CURL
  -> Ptr.Ptr Void
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO Generated.Curl.Curl.CURLcode

{-| __C declaration:__ @curl_easy_recv@

    __defined at:__ @easy.h:97:22@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_recv ::
     Ptr.Ptr Generated.Curl.Curl.CURL
     -- ^ __C declaration:__ @curl@
  -> Ptr.Ptr Void
     -- ^ __C declaration:__ @buffer@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @buflen@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @n@
  -> IO Generated.Curl.Curl.CURLcode
curl_easy_recv = hs_bindgen_66cf49a04aee7002

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Unsafe_curl_easy_send@
foreign import ccall unsafe "hs_bindgen_c140a5a055716718" hs_bindgen_c140a5a055716718 ::
     Ptr.Ptr Generated.Curl.Curl.CURL
  -> HsBindgen.Runtime.ConstPtr.ConstPtr Void
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO Generated.Curl.Curl.CURLcode

{-| __C declaration:__ @curl_easy_send@

    __defined at:__ @easy.h:108:22@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_send ::
     Ptr.Ptr Generated.Curl.Curl.CURL
     -- ^ __C declaration:__ @curl@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr Void
     -- ^ __C declaration:__ @buffer@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @buflen@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @n@
  -> IO Generated.Curl.Curl.CURLcode
curl_easy_send = hs_bindgen_c140a5a055716718

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Unsafe_curl_easy_upkeep@
foreign import ccall unsafe "hs_bindgen_dd080de1bb15f53c" hs_bindgen_dd080de1bb15f53c ::
     Ptr.Ptr Generated.Curl.Curl.CURL
  -> IO Generated.Curl.Curl.CURLcode

{-| __C declaration:__ @curl_easy_upkeep@

    __defined at:__ @easy.h:119:22@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_upkeep ::
     Ptr.Ptr Generated.Curl.Curl.CURL
     -- ^ __C declaration:__ @curl@
  -> IO Generated.Curl.Curl.CURLcode
curl_easy_upkeep = hs_bindgen_dd080de1bb15f53c
