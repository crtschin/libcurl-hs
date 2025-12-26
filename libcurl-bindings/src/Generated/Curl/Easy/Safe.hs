{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Curl.Easy.Safe where

import qualified GHC.Ptr as Ptr
import qualified Generated.Curl.Curl
import qualified HsBindgen.Runtime.ConstPtr
import qualified HsBindgen.Runtime.Prelude
import Data.Void (Void)
import Prelude (IO)

$(HsBindgen.Runtime.Prelude.addCSource (HsBindgen.Runtime.Prelude.unlines
  [ "#include <curl/curl.h>"
  , "void *hs_bindgen_98254952eb41ce2d (void)"
  , "{"
  , "  return curl_easy_init();"
  , "}"
  , "CURLcode hs_bindgen_b27586df7065e1f4 ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return curl_easy_perform(arg1);"
  , "}"
  , "void hs_bindgen_1eb220bc27d6d084 ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  curl_easy_cleanup(arg1);"
  , "}"
  , "void *hs_bindgen_0e76029be473d540 ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return curl_easy_duphandle(arg1);"
  , "}"
  , "void hs_bindgen_f287070a03a57188 ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  curl_easy_reset(arg1);"
  , "}"
  , "CURLcode hs_bindgen_ed0c3de66ccca9c7 ("
  , "  void *arg1,"
  , "  void *arg2,"
  , "  size_t arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return curl_easy_recv(arg1, arg2, arg3, arg4);"
  , "}"
  , "CURLcode hs_bindgen_5ab6290813523802 ("
  , "  void *arg1,"
  , "  void const *arg2,"
  , "  size_t arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return curl_easy_send(arg1, arg2, arg3, arg4);"
  , "}"
  , "CURLcode hs_bindgen_6458875c0856d95b ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return curl_easy_upkeep(arg1);"
  , "}"
  ]))

{-| __C declaration:__ @curl_easy_init@

    __defined at:__ @easy.h:41:19@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Safe_curl_easy_init@
-}
foreign import ccall safe "hs_bindgen_98254952eb41ce2d" curl_easy_init ::
     IO (Ptr.Ptr Void)

{-| __C declaration:__ @curl_easy_perform@

    __defined at:__ @easy.h:43:22@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Safe_curl_easy_perform@
-}
foreign import ccall safe "hs_bindgen_b27586df7065e1f4" curl_easy_perform ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @curl@
  -> IO Generated.Curl.Curl.CURLcode

{-| __C declaration:__ @curl_easy_cleanup@

    __defined at:__ @easy.h:44:18@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Safe_curl_easy_cleanup@
-}
foreign import ccall safe "hs_bindgen_1eb220bc27d6d084" curl_easy_cleanup ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @curl@
  -> IO ()

{-| __C declaration:__ @curl_easy_duphandle@

    __defined at:__ @easy.h:74:19@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Safe_curl_easy_duphandle@
-}
foreign import ccall safe "hs_bindgen_0e76029be473d540" curl_easy_duphandle ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @curl@
  -> IO (Ptr.Ptr Void)

{-| __C declaration:__ @curl_easy_reset@

    __defined at:__ @easy.h:87:18@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Safe_curl_easy_reset@
-}
foreign import ccall safe "hs_bindgen_f287070a03a57188" curl_easy_reset ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @curl@
  -> IO ()

{-| __C declaration:__ @curl_easy_recv@

    __defined at:__ @easy.h:97:22@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Safe_curl_easy_recv@
-}
foreign import ccall safe "hs_bindgen_ed0c3de66ccca9c7" curl_easy_recv ::
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

    __defined at:__ @easy.h:108:22@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Safe_curl_easy_send@
-}
foreign import ccall safe "hs_bindgen_5ab6290813523802" curl_easy_send ::
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

    __defined at:__ @easy.h:119:22@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_Safe_curl_easy_upkeep@
-}
foreign import ccall safe "hs_bindgen_6458875c0856d95b" curl_easy_upkeep ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @curl@
  -> IO Generated.Curl.Curl.CURLcode
