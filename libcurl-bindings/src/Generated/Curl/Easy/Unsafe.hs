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
  , "void *hs_bindgen_162bd7902d7f128c (void)"
  , "{"
  , "  return curl_easy_init();"
  , "}"
  , "CURLcode hs_bindgen_9dee6d0b0b9f91ca ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return curl_easy_perform(arg1);"
  , "}"
  , "void hs_bindgen_9e059f051febca55 ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  curl_easy_cleanup(arg1);"
  , "}"
  , "void *hs_bindgen_eee2cd204e0d2e9c ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return curl_easy_duphandle(arg1);"
  , "}"
  , "void hs_bindgen_ec22e7dbc613a109 ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  curl_easy_reset(arg1);"
  , "}"
  , "CURLcode hs_bindgen_66cf49a04aee7002 ("
  , "  void *arg1,"
  , "  void *arg2,"
  , "  size_t arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return curl_easy_recv(arg1, arg2, arg3, arg4);"
  , "}"
  , "CURLcode hs_bindgen_c140a5a055716718 ("
  , "  void *arg1,"
  , "  void const *arg2,"
  , "  size_t arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return curl_easy_send(arg1, arg2, arg3, arg4);"
  , "}"
  , "CURLcode hs_bindgen_dd080de1bb15f53c ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return curl_easy_upkeep(arg1);"
  , "}"
  ]))

{-| __C declaration:__ @curl_easy_init@

    __defined at:__ @easy.h:41:19@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Unsafe_curl_easy_init@
-}
foreign import ccall unsafe "hs_bindgen_162bd7902d7f128c" curl_easy_init ::
     IO (Ptr.Ptr Void)

{-| __C declaration:__ @curl_easy_perform@

    __defined at:__ @easy.h:42:22@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Unsafe_curl_easy_perform@
-}
foreign import ccall unsafe "hs_bindgen_9dee6d0b0b9f91ca" curl_easy_perform ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @curl@
  -> IO Generated.Curl.Curl.CURLcode

{-| __C declaration:__ @curl_easy_cleanup@

    __defined at:__ @easy.h:43:18@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Unsafe_curl_easy_cleanup@
-}
foreign import ccall unsafe "hs_bindgen_9e059f051febca55" curl_easy_cleanup ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @curl@
  -> IO ()

{-| __C declaration:__ @curl_easy_duphandle@

    __defined at:__ @easy.h:72:19@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Unsafe_curl_easy_duphandle@
-}
foreign import ccall unsafe "hs_bindgen_eee2cd204e0d2e9c" curl_easy_duphandle ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @curl@
  -> IO (Ptr.Ptr Void)

{-| __C declaration:__ @curl_easy_reset@

    __defined at:__ @easy.h:85:18@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Unsafe_curl_easy_reset@
-}
foreign import ccall unsafe "hs_bindgen_ec22e7dbc613a109" curl_easy_reset ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @curl@
  -> IO ()

{-| __C declaration:__ @curl_easy_recv@

    __defined at:__ @easy.h:95:22@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Unsafe_curl_easy_recv@
-}
foreign import ccall unsafe "hs_bindgen_66cf49a04aee7002" curl_easy_recv ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @curl@
  -> Ptr.Ptr Void
     -- ^ __C declaration:__ @buffer@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @buflen@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @n@
  -> IO Generated.Curl.Curl.CURLcode

{-| __C declaration:__ @curl_easy_send@

    __defined at:__ @easy.h:106:22@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Unsafe_curl_easy_send@
-}
foreign import ccall unsafe "hs_bindgen_c140a5a055716718" curl_easy_send ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @curl@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr Void
     -- ^ __C declaration:__ @buffer@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @buflen@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @n@
  -> IO Generated.Curl.Curl.CURLcode

{-| __C declaration:__ @curl_easy_upkeep@

    __defined at:__ @easy.h:117:22@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Unsafe_curl_easy_upkeep@
-}
foreign import ccall unsafe "hs_bindgen_dd080de1bb15f53c" curl_easy_upkeep ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @curl@
  -> IO Generated.Curl.Curl.CURLcode
