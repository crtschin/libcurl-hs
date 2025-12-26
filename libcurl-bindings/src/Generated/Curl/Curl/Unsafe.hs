{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Curl.Curl.Unsafe where

import qualified Foreign.C as FC
import qualified GHC.Ptr as Ptr
import qualified HsBindgen.Runtime.ConstPtr
import qualified HsBindgen.Runtime.Prelude
import Data.Void (Void)
import Generated.Curl.Curl
import Prelude (IO)

$(HsBindgen.Runtime.Prelude.addCSource (HsBindgen.Runtime.Prelude.unlines
  [ "#include <curl/curl.h>"
  , "CURLHcode hs_bindgen_e71dd5007c628c42 ("
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
  , "struct curl_header *hs_bindgen_137decc1d48adb1d ("
  , "  void *arg1,"
  , "  unsigned int arg2,"
  , "  signed int arg3,"
  , "  struct curl_header *arg4"
  , ")"
  , "{"
  , "  return curl_easy_nextheader(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_520b735cbef0d33c ("
  , "  char const *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return curl_strequal(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e8bc6df6920fc9c6 ("
  , "  char const *arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return curl_strnequal(arg1, arg2, arg3);"
  , "}"
  , "curl_mime *hs_bindgen_7bcc6a043dd9d9da ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return curl_mime_init(arg1);"
  , "}"
  , "void hs_bindgen_bf87fdf2e6e6f550 ("
  , "  curl_mime *arg1"
  , ")"
  , "{"
  , "  curl_mime_free(arg1);"
  , "}"
  , "curl_mimepart *hs_bindgen_4f618ae59e7fe26e ("
  , "  curl_mime *arg1"
  , ")"
  , "{"
  , "  return curl_mime_addpart(arg1);"
  , "}"
  , "CURLcode hs_bindgen_58d54b6a4261573c ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return curl_mime_name(arg1, arg2);"
  , "}"
  , "CURLcode hs_bindgen_baa70c1b2b4c14d2 ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return curl_mime_filename(arg1, arg2);"
  , "}"
  , "CURLcode hs_bindgen_c32ee7fd51e3e9ca ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return curl_mime_type(arg1, arg2);"
  , "}"
  , "CURLcode hs_bindgen_5e5bc6b193d4dcee ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return curl_mime_encoder(arg1, arg2);"
  , "}"
  , "CURLcode hs_bindgen_64f3df9352ec2577 ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return curl_mime_data(arg1, arg2, arg3);"
  , "}"
  , "CURLcode hs_bindgen_545a432f5080f93f ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return curl_mime_filedata(arg1, arg2);"
  , "}"
  , "CURLcode hs_bindgen_736f3c3242ca79f0 ("
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
  , "CURLcode hs_bindgen_57b29c24e3e737d0 ("
  , "  curl_mimepart *arg1,"
  , "  curl_mime *arg2"
  , ")"
  , "{"
  , "  return curl_mime_subparts(arg1, arg2);"
  , "}"
  , "CURLcode hs_bindgen_84dbd5c4fd450512 ("
  , "  curl_mimepart *arg1,"
  , "  struct curl_slist *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return curl_mime_headers(arg1, arg2, arg3);"
  , "}"
  , "char *hs_bindgen_0ba23b832c268c14 ("
  , "  char const *arg1"
  , ")"
  , "{"
  , "  return curl_getenv(arg1);"
  , "}"
  , "char *hs_bindgen_ea5d8873b6da24f7 (void)"
  , "{"
  , "  return curl_version();"
  , "}"
  , "char *hs_bindgen_cecdfa23d28ebea4 ("
  , "  void *arg1,"
  , "  char const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return curl_easy_escape(arg1, arg2, arg3);"
  , "}"
  , "char *hs_bindgen_ef689abeb83599e6 ("
  , "  char const *arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return curl_escape(arg1, arg2);"
  , "}"
  , "char *hs_bindgen_e3b3e663cd396b11 ("
  , "  void *arg1,"
  , "  char const *arg2,"
  , "  signed int arg3,"
  , "  signed int *arg4"
  , ")"
  , "{"
  , "  return curl_easy_unescape(arg1, arg2, arg3, arg4);"
  , "}"
  , "char *hs_bindgen_aad77c713a9b096c ("
  , "  char const *arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return curl_unescape(arg1, arg2);"
  , "}"
  , "void hs_bindgen_dd1f76030f86c011 ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  curl_free(arg1);"
  , "}"
  , "CURLcode hs_bindgen_78e32583a8ccfabc ("
  , "  signed long arg1"
  , ")"
  , "{"
  , "  return curl_global_init(arg1);"
  , "}"
  , "CURLcode hs_bindgen_1a374b543c6e0e0c ("
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
  , "void hs_bindgen_2897adbd15ddb0e7 (void)"
  , "{"
  , "  curl_global_cleanup();"
  , "}"
  , "CURLcode hs_bindgen_7ce574c6d141690c ("
  , "  char const *arg1"
  , ")"
  , "{"
  , "  return curl_global_trace(arg1);"
  , "}"
  , "CURLsslset hs_bindgen_4a615bba92a590e8 ("
  , "  curl_sslbackend arg1,"
  , "  char const *arg2,"
  , "  curl_ssl_backend const ***arg3"
  , ")"
  , "{"
  , "  return curl_global_sslset(arg1, arg2, arg3);"
  , "}"
  , "struct curl_slist *hs_bindgen_555ea9c28c4f1371 ("
  , "  struct curl_slist *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return curl_slist_append(arg1, arg2);"
  , "}"
  , "void hs_bindgen_b5a1c38d963a4aed ("
  , "  struct curl_slist *arg1"
  , ")"
  , "{"
  , "  curl_slist_free_all(arg1);"
  , "}"
  , "time_t hs_bindgen_c8560ccf04d3a895 ("
  , "  char const *arg1,"
  , "  time_t const *arg2"
  , ")"
  , "{"
  , "  return curl_getdate(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_74c38424f692ecab (void)"
  , "{"
  , "  return curl_share_init();"
  , "}"
  , "CURLSHcode hs_bindgen_237314ee80d59d94 ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return curl_share_cleanup(arg1);"
  , "}"
  , "curl_version_info_data *hs_bindgen_ac37ccfb39e370f6 ("
  , "  CURLversion arg1"
  , ")"
  , "{"
  , "  return curl_version_info(arg1);"
  , "}"
  , "char const *hs_bindgen_2678dcdf79c2ba10 ("
  , "  CURLcode arg1"
  , ")"
  , "{"
  , "  return curl_easy_strerror(arg1);"
  , "}"
  , "char const *hs_bindgen_d99b19e3569d21ac ("
  , "  CURLSHcode arg1"
  , ")"
  , "{"
  , "  return curl_share_strerror(arg1);"
  , "}"
  , "CURLcode hs_bindgen_fdcb17214d3edc05 ("
  , "  void *arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return curl_easy_pause(arg1, arg2);"
  , "}"
  , "CURLcode hs_bindgen_89b2b50de78c1c4c ("
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
  , "CURLcode hs_bindgen_60288fde4604bdd6 ("
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

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_easy_header@
-}
foreign import ccall unsafe "hs_bindgen_e71dd5007c628c42" curl_easy_header ::
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

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_easy_nextheader@
-}
foreign import ccall unsafe "hs_bindgen_137decc1d48adb1d" curl_easy_nextheader ::
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

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_strequal@
-}
foreign import ccall unsafe "hs_bindgen_520b735cbef0d33c" curl_strequal ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @s1@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @s2@
  -> IO FC.CInt

{-| __C declaration:__ @curl_strnequal@

    __defined at:__ @curl\/curl.h:2424:17@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_strnequal@
-}
foreign import ccall unsafe "hs_bindgen_e8bc6df6920fc9c6" curl_strnequal ::
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

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_mime_init@
-}
foreign import ccall unsafe "hs_bindgen_7bcc6a043dd9d9da" curl_mime_init ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @easy@
  -> IO (Ptr.Ptr Curl_mime)

{-| __C declaration:__ @curl_mime_free@

    __defined at:__ @curl\/curl.h:2450:18@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_mime_free@
-}
foreign import ccall unsafe "hs_bindgen_bf87fdf2e6e6f550" curl_mime_free ::
     Ptr.Ptr Curl_mime
     -- ^ __C declaration:__ @mime@
  -> IO ()

{-| __C declaration:__ @curl_mime_addpart@

    __defined at:__ @curl\/curl.h:2460:28@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_mime_addpart@
-}
foreign import ccall unsafe "hs_bindgen_4f618ae59e7fe26e" curl_mime_addpart ::
     Ptr.Ptr Curl_mime
     -- ^ __C declaration:__ @mime@
  -> IO (Ptr.Ptr Curl_mimepart)

{-| __C declaration:__ @curl_mime_name@

    __defined at:__ @curl\/curl.h:2469:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_mime_name@
-}
foreign import ccall unsafe "hs_bindgen_58d54b6a4261573c" curl_mime_name ::
     Ptr.Ptr Curl_mimepart
     -- ^ __C declaration:__ @part@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @name@
  -> IO CURLcode

{-| __C declaration:__ @curl_mime_filename@

    __defined at:__ @curl\/curl.h:2478:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_mime_filename@
-}
foreign import ccall unsafe "hs_bindgen_baa70c1b2b4c14d2" curl_mime_filename ::
     Ptr.Ptr Curl_mimepart
     -- ^ __C declaration:__ @part@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @filename@
  -> IO CURLcode

{-| __C declaration:__ @curl_mime_type@

    __defined at:__ @curl\/curl.h:2488:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_mime_type@
-}
foreign import ccall unsafe "hs_bindgen_c32ee7fd51e3e9ca" curl_mime_type ::
     Ptr.Ptr Curl_mimepart
     -- ^ __C declaration:__ @part@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @mimetype@
  -> IO CURLcode

{-| __C declaration:__ @curl_mime_encoder@

    __defined at:__ @curl\/curl.h:2497:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_mime_encoder@
-}
foreign import ccall unsafe "hs_bindgen_5e5bc6b193d4dcee" curl_mime_encoder ::
     Ptr.Ptr Curl_mimepart
     -- ^ __C declaration:__ @part@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @encoding@
  -> IO CURLcode

{-| __C declaration:__ @curl_mime_data@

    __defined at:__ @curl\/curl.h:2507:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_mime_data@
-}
foreign import ccall unsafe "hs_bindgen_64f3df9352ec2577" curl_mime_data ::
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

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_mime_filedata@
-}
foreign import ccall unsafe "hs_bindgen_545a432f5080f93f" curl_mime_filedata ::
     Ptr.Ptr Curl_mimepart
     -- ^ __C declaration:__ @part@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @filename@
  -> IO CURLcode

{-| __C declaration:__ @curl_mime_data_cb@

    __defined at:__ @curl\/curl.h:2527:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_mime_data_cb@
-}
foreign import ccall unsafe "hs_bindgen_736f3c3242ca79f0" curl_mime_data_cb ::
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

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_mime_subparts@
-}
foreign import ccall unsafe "hs_bindgen_57b29c24e3e737d0" curl_mime_subparts ::
     Ptr.Ptr Curl_mimepart
     -- ^ __C declaration:__ @part@
  -> Ptr.Ptr Curl_mime
     -- ^ __C declaration:__ @subparts@
  -> IO CURLcode

{-| __C declaration:__ @curl_mime_headers@

    __defined at:__ @curl\/curl.h:2550:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_mime_headers@
-}
foreign import ccall unsafe "hs_bindgen_84dbd5c4fd450512" curl_mime_headers ::
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

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_getenv@
-}
foreign import ccall unsafe "hs_bindgen_0ba23b832c268c14" curl_getenv ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @variable@
  -> IO (Ptr.Ptr FC.CChar)

{-| __C declaration:__ @curl_version@

    __defined at:__ @curl\/curl.h:2687:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_version@
-}
foreign import ccall unsafe "hs_bindgen_ea5d8873b6da24f7" curl_version ::
     IO (Ptr.Ptr FC.CChar)

{-| __C declaration:__ @curl_easy_escape@

    __defined at:__ @curl\/curl.h:2698:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_easy_escape@
-}
foreign import ccall unsafe "hs_bindgen_cecdfa23d28ebea4" curl_easy_escape ::
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

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_escape@
-}
foreign import ccall unsafe "hs_bindgen_ef689abeb83599e6" curl_escape ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @string@
  -> FC.CInt
     -- ^ __C declaration:__ @length@
  -> IO (Ptr.Ptr FC.CChar)

{-| __C declaration:__ @curl_easy_unescape@

    __defined at:__ @curl\/curl.h:2718:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_easy_unescape@
-}
foreign import ccall unsafe "hs_bindgen_e3b3e663cd396b11" curl_easy_unescape ::
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

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_unescape@
-}
foreign import ccall unsafe "hs_bindgen_aad77c713a9b096c" curl_unescape ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @string@
  -> FC.CInt
     -- ^ __C declaration:__ @length@
  -> IO (Ptr.Ptr FC.CChar)

{-| __C declaration:__ @curl_free@

    __defined at:__ @curl\/curl.h:2735:18@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_free@
-}
foreign import ccall unsafe "hs_bindgen_dd1f76030f86c011" curl_free ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @p@
  -> IO ()

{-| __C declaration:__ @curl_global_init@

    __defined at:__ @curl\/curl.h:2749:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_global_init@
-}
foreign import ccall unsafe "hs_bindgen_78e32583a8ccfabc" curl_global_init ::
     FC.CLong
     -- ^ __C declaration:__ @flags@
  -> IO CURLcode

{-| __C declaration:__ @curl_global_init_mem@

    __defined at:__ @curl\/curl.h:2764:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_global_init_mem@
-}
foreign import ccall unsafe "hs_bindgen_1a374b543c6e0e0c" curl_global_init_mem ::
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

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_global_cleanup@
-}
foreign import ccall unsafe "hs_bindgen_2897adbd15ddb0e7" curl_global_cleanup ::
     IO ()

{-| __C declaration:__ @curl_global_trace@

    __defined at:__ @curl\/curl.h:2793:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_global_trace@
-}
foreign import ccall unsafe "hs_bindgen_7ce574c6d141690c" curl_global_trace ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @config@
  -> IO CURLcode

{-| __C declaration:__ @curl_global_sslset@

    __defined at:__ @curl\/curl.h:2840:24@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_global_sslset@
-}
foreign import ccall unsafe "hs_bindgen_4a615bba92a590e8" curl_global_sslset ::
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

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_slist_append@
-}
foreign import ccall unsafe "hs_bindgen_555ea9c28c4f1371" curl_slist_append ::
     Ptr.Ptr Curl_slist
     -- ^ __C declaration:__ @list@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @data'@
  -> IO (Ptr.Ptr Curl_slist)

{-| __C declaration:__ @curl_slist_free_all@

    __defined at:__ @curl\/curl.h:2861:18@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_slist_free_all@
-}
foreign import ccall unsafe "hs_bindgen_b5a1c38d963a4aed" curl_slist_free_all ::
     Ptr.Ptr Curl_slist
     -- ^ __C declaration:__ @list@
  -> IO ()

{-| __C declaration:__ @curl_getdate@

    __defined at:__ @curl\/curl.h:2872:20@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_getdate@
-}
foreign import ccall unsafe "hs_bindgen_c8560ccf04d3a895" curl_getdate ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @p@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.CTime
     -- ^ __C declaration:__ @unused@
  -> IO HsBindgen.Runtime.Prelude.CTime

{-| __C declaration:__ @curl_share_init@

    __defined at:__ @curl\/curl.h:3083:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_share_init@
-}
foreign import ccall unsafe "hs_bindgen_74c38424f692ecab" curl_share_init ::
     IO (Ptr.Ptr Void)

{-| __C declaration:__ @curl_share_cleanup@

    __defined at:__ @curl\/curl.h:3086:24@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_share_cleanup@
-}
foreign import ccall unsafe "hs_bindgen_237314ee80d59d94" curl_share_cleanup ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @share@
  -> IO CURLSHcode

{-| __C declaration:__ @curl_version_info@

    __defined at:__ @curl\/curl.h:3224:37@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_version_info@
-}
foreign import ccall unsafe "hs_bindgen_ac37ccfb39e370f6" curl_version_info ::
     CURLversion
  -> IO (Ptr.Ptr Curl_version_info_data)

{-| __C declaration:__ @curl_easy_strerror@

    __defined at:__ @curl\/curl.h:3235:25@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_easy_strerror@
-}
foreign import ccall unsafe "hs_bindgen_2678dcdf79c2ba10" curl_easy_strerror ::
     CURLcode
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| __C declaration:__ @curl_share_strerror@

    __defined at:__ @curl\/curl.h:3246:25@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_share_strerror@
-}
foreign import ccall unsafe "hs_bindgen_d99b19e3569d21ac" curl_share_strerror ::
     CURLSHcode
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| __C declaration:__ @curl_easy_pause@

    __defined at:__ @curl\/curl.h:3257:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_easy_pause@
-}
foreign import ccall unsafe "hs_bindgen_fdcb17214d3edc05" curl_easy_pause ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @handle@
  -> FC.CInt
     -- ^ __C declaration:__ @bitmask@
  -> IO CURLcode

{-| __C declaration:__ @curl_easy_ssls_import@

    __defined at:__ @curl\/curl.h:3276:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_easy_ssls_import@
-}
foreign import ccall unsafe "hs_bindgen_89b2b50de78c1c4c" curl_easy_ssls_import ::
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

    __defined at:__ @curl\/curl.h:3307:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_Unsafe_curl_easy_ssls_export@
-}
foreign import ccall unsafe "hs_bindgen_60288fde4604bdd6" curl_easy_ssls_export ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @handle@
  -> Ptr.FunPtr Curl_ssls_export_cb
     -- ^ __C declaration:__ @export_fn@
  -> Ptr.Ptr Void
     -- ^ __C declaration:__ @userptr@
  -> IO CURLcode
