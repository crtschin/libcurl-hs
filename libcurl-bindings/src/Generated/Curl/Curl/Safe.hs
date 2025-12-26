{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Curl.Curl.Safe where

import qualified Foreign.C as FC
import qualified GHC.Ptr as Ptr
import qualified HsBindgen.Runtime.ConstPtr
import qualified HsBindgen.Runtime.Prelude
import Data.Void (Void)
import Generated.Curl.Curl
import Prelude (IO)

$(HsBindgen.Runtime.Prelude.addCSource (HsBindgen.Runtime.Prelude.unlines
  [ "#include <curl/curl.h>"
  , "CURLHcode hs_bindgen_1d4a826271ea6673 ("
  , "  void *arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  unsigned int arg4,"
  , "  signed int arg5,"
  , "  struct curl_header **arg6"
  , ")"
  , "{"
  , "  return curl_easy_header(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "struct curl_header *hs_bindgen_b65856485b7188e2 ("
  , "  void *arg1,"
  , "  unsigned int arg2,"
  , "  signed int arg3,"
  , "  struct curl_header *arg4"
  , ")"
  , "{"
  , "  return curl_easy_nextheader(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_c60bed4bd27f0985 ("
  , "  char const *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return curl_strequal(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_4e93b9043d8a2e87 ("
  , "  char const *arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return curl_strnequal(arg1, arg2, arg3);"
  , "}"
  , "curl_mime *hs_bindgen_28de620cd9579c22 ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return curl_mime_init(arg1);"
  , "}"
  , "void hs_bindgen_311614a474f4d8a2 ("
  , "  curl_mime *arg1"
  , ")"
  , "{"
  , "  curl_mime_free(arg1);"
  , "}"
  , "curl_mimepart *hs_bindgen_e359608a6fd4e86a ("
  , "  curl_mime *arg1"
  , ")"
  , "{"
  , "  return curl_mime_addpart(arg1);"
  , "}"
  , "CURLcode hs_bindgen_c2d7447844ecd2dd ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return curl_mime_name(arg1, arg2);"
  , "}"
  , "CURLcode hs_bindgen_03066b993eb59b5d ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return curl_mime_filename(arg1, arg2);"
  , "}"
  , "CURLcode hs_bindgen_54361e2dbf4a2991 ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return curl_mime_type(arg1, arg2);"
  , "}"
  , "CURLcode hs_bindgen_3c127f5682cb8648 ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return curl_mime_encoder(arg1, arg2);"
  , "}"
  , "CURLcode hs_bindgen_73adee5e5eb0985f ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return curl_mime_data(arg1, arg2, arg3);"
  , "}"
  , "CURLcode hs_bindgen_1e956601e0f3f534 ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return curl_mime_filedata(arg1, arg2);"
  , "}"
  , "CURLcode hs_bindgen_a308d3ff65a5b3b8 ("
  , "  curl_mimepart *arg1,"
  , "  curl_off_t arg2,"
  , "  curl_read_callback arg3,"
  , "  curl_seek_callback arg4,"
  , "  curl_free_callback arg5,"
  , "  void *arg6"
  , ")"
  , "{"
  , "  return curl_mime_data_cb(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "CURLcode hs_bindgen_4de297245c7998ff ("
  , "  curl_mimepart *arg1,"
  , "  curl_mime *arg2"
  , ")"
  , "{"
  , "  return curl_mime_subparts(arg1, arg2);"
  , "}"
  , "CURLcode hs_bindgen_221572c033dd95bf ("
  , "  curl_mimepart *arg1,"
  , "  struct curl_slist *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return curl_mime_headers(arg1, arg2, arg3);"
  , "}"
  , "char *hs_bindgen_3aeba0f4669a99d1 ("
  , "  char const *arg1"
  , ")"
  , "{"
  , "  return curl_getenv(arg1);"
  , "}"
  , "char *hs_bindgen_97a9952853a34d07 (void)"
  , "{"
  , "  return curl_version();"
  , "}"
  , "char *hs_bindgen_adfb53b43f3640f2 ("
  , "  void *arg1,"
  , "  char const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return curl_easy_escape(arg1, arg2, arg3);"
  , "}"
  , "char *hs_bindgen_b43bd974f3bb2cfa ("
  , "  char const *arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return curl_escape(arg1, arg2);"
  , "}"
  , "char *hs_bindgen_633ed955f3829c6d ("
  , "  void *arg1,"
  , "  char const *arg2,"
  , "  signed int arg3,"
  , "  signed int *arg4"
  , ")"
  , "{"
  , "  return curl_easy_unescape(arg1, arg2, arg3, arg4);"
  , "}"
  , "char *hs_bindgen_72d34f951fbd3625 ("
  , "  char const *arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return curl_unescape(arg1, arg2);"
  , "}"
  , "void hs_bindgen_40dabdeb0f6f1765 ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  curl_free(arg1);"
  , "}"
  , "CURLcode hs_bindgen_d1e307d3c520a53b ("
  , "  signed long arg1"
  , ")"
  , "{"
  , "  return curl_global_init(arg1);"
  , "}"
  , "CURLcode hs_bindgen_f7e461ee49df9a49 ("
  , "  signed long arg1,"
  , "  curl_malloc_callback arg2,"
  , "  curl_free_callback arg3,"
  , "  curl_realloc_callback arg4,"
  , "  curl_strdup_callback arg5,"
  , "  curl_calloc_callback arg6"
  , ")"
  , "{"
  , "  return curl_global_init_mem(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "void hs_bindgen_9aebd62ed8b3eef0 (void)"
  , "{"
  , "  curl_global_cleanup();"
  , "}"
  , "CURLcode hs_bindgen_95da911c297d21f9 ("
  , "  char const *arg1"
  , ")"
  , "{"
  , "  return curl_global_trace(arg1);"
  , "}"
  , "CURLsslset hs_bindgen_56f7faea82fbe9fe ("
  , "  curl_sslbackend arg1,"
  , "  char const *arg2,"
  , "  curl_ssl_backend const ***arg3"
  , ")"
  , "{"
  , "  return curl_global_sslset(arg1, arg2, arg3);"
  , "}"
  , "struct curl_slist *hs_bindgen_f0e7e84401899642 ("
  , "  struct curl_slist *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return curl_slist_append(arg1, arg2);"
  , "}"
  , "void hs_bindgen_6ca39e212e636d24 ("
  , "  struct curl_slist *arg1"
  , ")"
  , "{"
  , "  curl_slist_free_all(arg1);"
  , "}"
  , "time_t hs_bindgen_fad4ddd726b37713 ("
  , "  char const *arg1,"
  , "  time_t const *arg2"
  , ")"
  , "{"
  , "  return curl_getdate(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_b6af684889de7d89 (void)"
  , "{"
  , "  return curl_share_init();"
  , "}"
  , "CURLSHcode hs_bindgen_27d1051c1527a8de ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return curl_share_cleanup(arg1);"
  , "}"
  , "curl_version_info_data *hs_bindgen_44646990d3d0a6a3 ("
  , "  CURLversion arg1"
  , ")"
  , "{"
  , "  return curl_version_info(arg1);"
  , "}"
  , "char const *hs_bindgen_4c92e431b87cb4e1 ("
  , "  CURLcode arg1"
  , ")"
  , "{"
  , "  return curl_easy_strerror(arg1);"
  , "}"
  , "char const *hs_bindgen_27350554c5b1f351 ("
  , "  CURLSHcode arg1"
  , ")"
  , "{"
  , "  return curl_share_strerror(arg1);"
  , "}"
  , "CURLcode hs_bindgen_46bffba4fb398c62 ("
  , "  void *arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return curl_easy_pause(arg1, arg2);"
  , "}"
  , "CURLcode hs_bindgen_e8c301cb68d9a569 ("
  , "  void *arg1,"
  , "  char const *arg2,"
  , "  unsigned char const *arg3,"
  , "  size_t arg4,"
  , "  unsigned char const *arg5,"
  , "  size_t arg6"
  , ")"
  , "{"
  , "  return curl_easy_ssls_import(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "CURLcode hs_bindgen_86261e8682e27893 ("
  , "  void *arg1,"
  , "  curl_ssls_export_cb *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return curl_easy_ssls_export(arg1, arg2, arg3);"
  , "}"
  ]))

{-| __C declaration:__ @curl_easy_header@

    __defined at:__ @header.h:58:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_easy_header@
-}
foreign import ccall safe "hs_bindgen_1d4a826271ea6673" curl_easy_header ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @easy@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @name@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @index@
  -> FC.CUInt
     -- ^ __C declaration:__ @origin@
  -> FC.CInt
     -- ^ __C declaration:__ @request@
  -> Ptr.Ptr (Ptr.Ptr Curl_header)
     -- ^ __C declaration:__ @hout@
  -> IO CURLHcode

{-| __C declaration:__ @curl_easy_nextheader@

    __defined at:__ @header.h:65:33@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_easy_nextheader@
-}
foreign import ccall safe "hs_bindgen_b65856485b7188e2" curl_easy_nextheader ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @easy@
  -> FC.CUInt
     -- ^ __C declaration:__ @origin@
  -> FC.CInt
     -- ^ __C declaration:__ @request@
  -> Ptr.Ptr Curl_header
     -- ^ __C declaration:__ @prev@
  -> IO (Ptr.Ptr Curl_header)

{-| __C declaration:__ @curl_strequal@

    __defined at:__ @curl\/curl.h:2423:17@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_strequal@
-}
foreign import ccall safe "hs_bindgen_c60bed4bd27f0985" curl_strequal ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @s1@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @s2@
  -> IO FC.CInt

{-| __C declaration:__ @curl_strnequal@

    __defined at:__ @curl\/curl.h:2424:17@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_strnequal@
-}
foreign import ccall safe "hs_bindgen_4e93b9043d8a2e87" curl_strnequal ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @s1@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @s2@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @n@
  -> IO FC.CInt

{-| __C declaration:__ @curl_mime_init@

    __defined at:__ @curl\/curl.h:2441:24@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_mime_init@
-}
foreign import ccall safe "hs_bindgen_28de620cd9579c22" curl_mime_init ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @easy@
  -> IO (Ptr.Ptr Curl_mime)

{-| __C declaration:__ @curl_mime_free@

    __defined at:__ @curl\/curl.h:2450:18@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_mime_free@
-}
foreign import ccall safe "hs_bindgen_311614a474f4d8a2" curl_mime_free ::
     Ptr.Ptr Curl_mime
     -- ^ __C declaration:__ @mime@
  -> IO ()

{-| __C declaration:__ @curl_mime_addpart@

    __defined at:__ @curl\/curl.h:2460:28@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_mime_addpart@
-}
foreign import ccall safe "hs_bindgen_e359608a6fd4e86a" curl_mime_addpart ::
     Ptr.Ptr Curl_mime
     -- ^ __C declaration:__ @mime@
  -> IO (Ptr.Ptr Curl_mimepart)

{-| __C declaration:__ @curl_mime_name@

    __defined at:__ @curl\/curl.h:2469:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_mime_name@
-}
foreign import ccall safe "hs_bindgen_c2d7447844ecd2dd" curl_mime_name ::
     Ptr.Ptr Curl_mimepart
     -- ^ __C declaration:__ @part@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @name@
  -> IO CURLcode

{-| __C declaration:__ @curl_mime_filename@

    __defined at:__ @curl\/curl.h:2478:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_mime_filename@
-}
foreign import ccall safe "hs_bindgen_03066b993eb59b5d" curl_mime_filename ::
     Ptr.Ptr Curl_mimepart
     -- ^ __C declaration:__ @part@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @filename@
  -> IO CURLcode

{-| __C declaration:__ @curl_mime_type@

    __defined at:__ @curl\/curl.h:2488:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_mime_type@
-}
foreign import ccall safe "hs_bindgen_54361e2dbf4a2991" curl_mime_type ::
     Ptr.Ptr Curl_mimepart
     -- ^ __C declaration:__ @part@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @mimetype@
  -> IO CURLcode

{-| __C declaration:__ @curl_mime_encoder@

    __defined at:__ @curl\/curl.h:2497:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_mime_encoder@
-}
foreign import ccall safe "hs_bindgen_3c127f5682cb8648" curl_mime_encoder ::
     Ptr.Ptr Curl_mimepart
     -- ^ __C declaration:__ @part@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @encoding@
  -> IO CURLcode

{-| __C declaration:__ @curl_mime_data@

    __defined at:__ @curl\/curl.h:2507:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_mime_data@
-}
foreign import ccall safe "hs_bindgen_73adee5e5eb0985f" curl_mime_data ::
     Ptr.Ptr Curl_mimepart
     -- ^ __C declaration:__ @part@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @data'@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @datasize@
  -> IO CURLcode

{-| __C declaration:__ @curl_mime_filedata@

    __defined at:__ @curl\/curl.h:2517:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_mime_filedata@
-}
foreign import ccall safe "hs_bindgen_1e956601e0f3f534" curl_mime_filedata ::
     Ptr.Ptr Curl_mimepart
     -- ^ __C declaration:__ @part@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @filename@
  -> IO CURLcode

{-| __C declaration:__ @curl_mime_data_cb@

    __defined at:__ @curl\/curl.h:2527:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_mime_data_cb@
-}
foreign import ccall safe "hs_bindgen_a308d3ff65a5b3b8" curl_mime_data_cb ::
     Ptr.Ptr Curl_mimepart
     -- ^ __C declaration:__ @part@
  -> Curl_off_t
     -- ^ __C declaration:__ @datasize@
  -> Curl_read_callback
     -- ^ __C declaration:__ @readfunc@
  -> Curl_seek_callback
     -- ^ __C declaration:__ @seekfunc@
  -> Curl_free_callback
     -- ^ __C declaration:__ @freefunc@
  -> Ptr.Ptr Void
     -- ^ __C declaration:__ @arg@
  -> IO CURLcode

{-| __C declaration:__ @curl_mime_subparts@

    __defined at:__ @curl\/curl.h:2541:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_mime_subparts@
-}
foreign import ccall safe "hs_bindgen_4de297245c7998ff" curl_mime_subparts ::
     Ptr.Ptr Curl_mimepart
     -- ^ __C declaration:__ @part@
  -> Ptr.Ptr Curl_mime
     -- ^ __C declaration:__ @subparts@
  -> IO CURLcode

{-| __C declaration:__ @curl_mime_headers@

    __defined at:__ @curl\/curl.h:2550:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_mime_headers@
-}
foreign import ccall safe "hs_bindgen_221572c033dd95bf" curl_mime_headers ::
     Ptr.Ptr Curl_mimepart
     -- ^ __C declaration:__ @part@
  -> Ptr.Ptr Curl_slist
     -- ^ __C declaration:__ @headers@
  -> FC.CInt
     -- ^ __C declaration:__ @take_ownership@
  -> IO CURLcode

{-| __C declaration:__ @curl_getenv@

    __defined at:__ @curl\/curl.h:2678:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_getenv@
-}
foreign import ccall safe "hs_bindgen_3aeba0f4669a99d1" curl_getenv ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @variable@
  -> IO (Ptr.Ptr FC.CChar)

{-| __C declaration:__ @curl_version@

    __defined at:__ @curl\/curl.h:2687:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_version@
-}
foreign import ccall safe "hs_bindgen_97a9952853a34d07" curl_version ::
     IO (Ptr.Ptr FC.CChar)

{-| __C declaration:__ @curl_easy_escape@

    __defined at:__ @curl\/curl.h:2698:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_easy_escape@
-}
foreign import ccall safe "hs_bindgen_adfb53b43f3640f2" curl_easy_escape ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @handle@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @string@
  -> FC.CInt
     -- ^ __C declaration:__ @length@
  -> IO (Ptr.Ptr FC.CChar)

{-| __C declaration:__ @curl_escape@

    __defined at:__ @curl\/curl.h:2703:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_escape@
-}
foreign import ccall safe "hs_bindgen_b43bd974f3bb2cfa" curl_escape ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @string@
  -> FC.CInt
     -- ^ __C declaration:__ @length@
  -> IO (Ptr.Ptr FC.CChar)

{-| __C declaration:__ @curl_easy_unescape@

    __defined at:__ @curl\/curl.h:2718:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_easy_unescape@
-}
foreign import ccall safe "hs_bindgen_633ed955f3829c6d" curl_easy_unescape ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @handle@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @string@
  -> FC.CInt
     -- ^ __C declaration:__ @length@
  -> Ptr.Ptr FC.CInt
     -- ^ __C declaration:__ @outlength@
  -> IO (Ptr.Ptr FC.CChar)

{-| __C declaration:__ @curl_unescape@

    __defined at:__ @curl\/curl.h:2724:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_unescape@
-}
foreign import ccall safe "hs_bindgen_72d34f951fbd3625" curl_unescape ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @string@
  -> FC.CInt
     -- ^ __C declaration:__ @length@
  -> IO (Ptr.Ptr FC.CChar)

{-| __C declaration:__ @curl_free@

    __defined at:__ @curl\/curl.h:2735:18@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_free@
-}
foreign import ccall safe "hs_bindgen_40dabdeb0f6f1765" curl_free ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @p@
  -> IO ()

{-| __C declaration:__ @curl_global_init@

    __defined at:__ @curl\/curl.h:2749:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_global_init@
-}
foreign import ccall safe "hs_bindgen_d1e307d3c520a53b" curl_global_init ::
     FC.CLong
     -- ^ __C declaration:__ @flags@
  -> IO CURLcode

{-| __C declaration:__ @curl_global_init_mem@

    __defined at:__ @curl\/curl.h:2764:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_global_init_mem@
-}
foreign import ccall safe "hs_bindgen_f7e461ee49df9a49" curl_global_init_mem ::
     FC.CLong
     -- ^ __C declaration:__ @flags@
  -> Curl_malloc_callback
     -- ^ __C declaration:__ @m@
  -> Curl_free_callback
     -- ^ __C declaration:__ @f@
  -> Curl_realloc_callback
     -- ^ __C declaration:__ @r@
  -> Curl_strdup_callback
     -- ^ __C declaration:__ @s@
  -> Curl_calloc_callback
     -- ^ __C declaration:__ @c@
  -> IO CURLcode

{-| __C declaration:__ @curl_global_cleanup@

    __defined at:__ @curl\/curl.h:2779:18@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_global_cleanup@
-}
foreign import ccall safe "hs_bindgen_9aebd62ed8b3eef0" curl_global_cleanup ::
     IO ()

{-| __C declaration:__ @curl_global_trace@

    __defined at:__ @curl\/curl.h:2793:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_global_trace@
-}
foreign import ccall safe "hs_bindgen_95da911c297d21f9" curl_global_trace ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @config@
  -> IO CURLcode

{-| __C declaration:__ @curl_global_sslset@

    __defined at:__ @curl\/curl.h:2840:24@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_global_sslset@
-}
foreign import ccall safe "hs_bindgen_56f7faea82fbe9fe" curl_global_sslset ::
     Curl_sslbackend
     -- ^ __C declaration:__ @id@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @name@
  -> Ptr.Ptr (Ptr.Ptr (HsBindgen.Runtime.ConstPtr.ConstPtr Curl_ssl_backend))
     -- ^ __C declaration:__ @avail@
  -> IO CURLsslset

{-| __C declaration:__ @curl_slist_append@

    __defined at:__ @curl\/curl.h:2851:32@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_slist_append@
-}
foreign import ccall safe "hs_bindgen_f0e7e84401899642" curl_slist_append ::
     Ptr.Ptr Curl_slist
     -- ^ __C declaration:__ @list@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @data'@
  -> IO (Ptr.Ptr Curl_slist)

{-| __C declaration:__ @curl_slist_free_all@

    __defined at:__ @curl\/curl.h:2861:18@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_slist_free_all@
-}
foreign import ccall safe "hs_bindgen_6ca39e212e636d24" curl_slist_free_all ::
     Ptr.Ptr Curl_slist
     -- ^ __C declaration:__ @list@
  -> IO ()

{-| __C declaration:__ @curl_getdate@

    __defined at:__ @curl\/curl.h:2872:20@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_getdate@
-}
foreign import ccall safe "hs_bindgen_fad4ddd726b37713" curl_getdate ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @p@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.CTime
     -- ^ __C declaration:__ @unused@
  -> IO HsBindgen.Runtime.Prelude.CTime

{-| __C declaration:__ @curl_share_init@

    __defined at:__ @curl\/curl.h:3083:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_share_init@
-}
foreign import ccall safe "hs_bindgen_b6af684889de7d89" curl_share_init ::
     IO (Ptr.Ptr Void)

{-| __C declaration:__ @curl_share_cleanup@

    __defined at:__ @curl\/curl.h:3084:24@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_share_cleanup@
-}
foreign import ccall safe "hs_bindgen_27d1051c1527a8de" curl_share_cleanup ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @share@
  -> IO CURLSHcode

{-| __C declaration:__ @curl_version_info@

    __defined at:__ @curl\/curl.h:3222:37@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_version_info@
-}
foreign import ccall safe "hs_bindgen_44646990d3d0a6a3" curl_version_info ::
     CURLversion
  -> IO (Ptr.Ptr Curl_version_info_data)

{-| __C declaration:__ @curl_easy_strerror@

    __defined at:__ @curl\/curl.h:3233:25@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_easy_strerror@
-}
foreign import ccall safe "hs_bindgen_4c92e431b87cb4e1" curl_easy_strerror ::
     CURLcode
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| __C declaration:__ @curl_share_strerror@

    __defined at:__ @curl\/curl.h:3244:25@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_share_strerror@
-}
foreign import ccall safe "hs_bindgen_27350554c5b1f351" curl_share_strerror ::
     CURLSHcode
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| __C declaration:__ @curl_easy_pause@

    __defined at:__ @curl\/curl.h:3255:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_easy_pause@
-}
foreign import ccall safe "hs_bindgen_46bffba4fb398c62" curl_easy_pause ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @handle@
  -> FC.CInt
     -- ^ __C declaration:__ @bitmask@
  -> IO CURLcode

{-| __C declaration:__ @curl_easy_ssls_import@

    __defined at:__ @curl\/curl.h:3274:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_easy_ssls_import@
-}
foreign import ccall safe "hs_bindgen_e8c301cb68d9a569" curl_easy_ssls_import ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @handle@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @session_key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CUChar
     -- ^ __C declaration:__ @shmac@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @shmac_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CUChar
     -- ^ __C declaration:__ @sdata@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @sdata_len@
  -> IO CURLcode

{-| __C declaration:__ @curl_easy_ssls_export@

    __defined at:__ @curl\/curl.h:3305:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Safe_curl_easy_ssls_export@
-}
foreign import ccall safe "hs_bindgen_86261e8682e27893" curl_easy_ssls_export ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @handle@
  -> Ptr.FunPtr Curl_ssls_export_cb
     -- ^ __C declaration:__ @export_fn@
  -> Ptr.Ptr Void
     -- ^ __C declaration:__ @userptr@
  -> IO CURLcode
