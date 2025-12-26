{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Curl.Curl.FunPtr where

import qualified Foreign.C as FC
import qualified GHC.IO.Unsafe
import qualified GHC.Ptr as Ptr
import qualified HsBindgen.Runtime.ConstPtr
import qualified HsBindgen.Runtime.Prelude
import Data.Void (Void)
import Generated.Curl.Curl
import Prelude (IO)

$(HsBindgen.Runtime.Prelude.addCSource (HsBindgen.Runtime.Prelude.unlines
  [ "#include <curl/curl.h>"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_header */"
  , "__attribute__ ((const))"
  , "CURLHcode (*hs_bindgen_9c9be084963ed276 (void)) ("
  , "  CURL *arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  unsigned int arg4,"
  , "  signed int arg5,"
  , "  struct curl_header **arg6"
  , ")"
  , "{"
  , "  return &curl_easy_header;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_nextheader */"
  , "__attribute__ ((const))"
  , "struct curl_header *(*hs_bindgen_cd365156b6d754dc (void)) ("
  , "  CURL *arg1,"
  , "  unsigned int arg2,"
  , "  signed int arg3,"
  , "  struct curl_header *arg4"
  , ")"
  , "{"
  , "  return &curl_easy_nextheader;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_strequal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c85e4780f6f09da6 (void)) ("
  , "  char const *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &curl_strequal;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_strnequal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f5186ddd7db257e7 (void)) ("
  , "  char const *arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &curl_strnequal;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_init */"
  , "__attribute__ ((const))"
  , "curl_mime *(*hs_bindgen_84576b3d5bbec243 (void)) ("
  , "  CURL *arg1"
  , ")"
  , "{"
  , "  return &curl_mime_init;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4097680a3e2dd699 (void)) ("
  , "  curl_mime *arg1"
  , ")"
  , "{"
  , "  return &curl_mime_free;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_addpart */"
  , "__attribute__ ((const))"
  , "curl_mimepart *(*hs_bindgen_25dce966c8eb20b5 (void)) ("
  , "  curl_mime *arg1"
  , ")"
  , "{"
  , "  return &curl_mime_addpart;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_name */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_b92e4ab1d4c13bf1 (void)) ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &curl_mime_name;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_filename */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_b38558238de2ea57 (void)) ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &curl_mime_filename;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_type */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_3d07597dc2266044 (void)) ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &curl_mime_type;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_encoder */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_c75603c01f768e04 (void)) ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &curl_mime_encoder;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_data */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_32a90da5d32ff1f8 (void)) ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &curl_mime_data;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_filedata */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_7a48fb5977223df2 (void)) ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &curl_mime_filedata;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_data_cb */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_88803e3a0ed8daac (void)) ("
  , "  curl_mimepart *arg1,"
  , "  curl_off_t arg2,"
  , "  curl_read_callback arg3,"
  , "  curl_seek_callback arg4,"
  , "  curl_free_callback arg5,"
  , "  void *arg6"
  , ")"
  , "{"
  , "  return &curl_mime_data_cb;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_subparts */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_a58a8a05463a78ca (void)) ("
  , "  curl_mimepart *arg1,"
  , "  curl_mime *arg2"
  , ")"
  , "{"
  , "  return &curl_mime_subparts;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_headers */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_78a2c468e700af25 (void)) ("
  , "  curl_mimepart *arg1,"
  , "  struct curl_slist *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &curl_mime_headers;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_getenv */"
  , "__attribute__ ((const))"
  , "char *(*hs_bindgen_33f948adf7558769 (void)) ("
  , "  char const *arg1"
  , ")"
  , "{"
  , "  return &curl_getenv;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_version */"
  , "__attribute__ ((const))"
  , "char *(*hs_bindgen_255cc4b92771a7aa (void)) (void)"
  , "{"
  , "  return &curl_version;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_escape */"
  , "__attribute__ ((const))"
  , "char *(*hs_bindgen_ef5e36d59d7c5892 (void)) ("
  , "  CURL *arg1,"
  , "  char const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &curl_easy_escape;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_escape */"
  , "__attribute__ ((const))"
  , "char *(*hs_bindgen_0ad57236b3168309 (void)) ("
  , "  char const *arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &curl_escape;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_unescape */"
  , "__attribute__ ((const))"
  , "char *(*hs_bindgen_1d4146c27d024242 (void)) ("
  , "  CURL *arg1,"
  , "  char const *arg2,"
  , "  signed int arg3,"
  , "  signed int *arg4"
  , ")"
  , "{"
  , "  return &curl_easy_unescape;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_unescape */"
  , "__attribute__ ((const))"
  , "char *(*hs_bindgen_23599568a3dcf037 (void)) ("
  , "  char const *arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &curl_unescape;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_162cf5047803fe03 (void)) ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return &curl_free;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_global_init */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_0a0311cd0d6fb69a (void)) ("
  , "  signed long arg1"
  , ")"
  , "{"
  , "  return &curl_global_init;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_global_init_mem */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_6268f72f1672f506 (void)) ("
  , "  signed long arg1,"
  , "  curl_malloc_callback arg2,"
  , "  curl_free_callback arg3,"
  , "  curl_realloc_callback arg4,"
  , "  curl_strdup_callback arg5,"
  , "  curl_calloc_callback arg6"
  , ")"
  , "{"
  , "  return &curl_global_init_mem;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_global_cleanup */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9e6845aa33914046 (void)) (void)"
  , "{"
  , "  return &curl_global_cleanup;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_global_trace */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_c43a02451d9a593a (void)) ("
  , "  char const *arg1"
  , ")"
  , "{"
  , "  return &curl_global_trace;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_global_sslset */"
  , "__attribute__ ((const))"
  , "CURLsslset (*hs_bindgen_1e422403361ba416 (void)) ("
  , "  curl_sslbackend arg1,"
  , "  char const *arg2,"
  , "  curl_ssl_backend const ***arg3"
  , ")"
  , "{"
  , "  return &curl_global_sslset;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_slist_append */"
  , "__attribute__ ((const))"
  , "struct curl_slist *(*hs_bindgen_11d9f8eb94a2a0c1 (void)) ("
  , "  struct curl_slist *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &curl_slist_append;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_slist_free_all */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bc01dadb1428928e (void)) ("
  , "  struct curl_slist *arg1"
  , ")"
  , "{"
  , "  return &curl_slist_free_all;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_getdate */"
  , "__attribute__ ((const))"
  , "time_t (*hs_bindgen_6dbe784f73a5e87e (void)) ("
  , "  char const *arg1,"
  , "  time_t const *arg2"
  , ")"
  , "{"
  , "  return &curl_getdate;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_share_init */"
  , "__attribute__ ((const))"
  , "CURLSH *(*hs_bindgen_3f60b9a4f418d7fa (void)) (void)"
  , "{"
  , "  return &curl_share_init;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_share_cleanup */"
  , "__attribute__ ((const))"
  , "CURLSHcode (*hs_bindgen_190735877f475147 (void)) ("
  , "  CURLSH *arg1"
  , ")"
  , "{"
  , "  return &curl_share_cleanup;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_version_info */"
  , "__attribute__ ((const))"
  , "curl_version_info_data *(*hs_bindgen_5890f630d82ce422 (void)) ("
  , "  CURLversion arg1"
  , ")"
  , "{"
  , "  return &curl_version_info;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_strerror */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_0eb12f87da88838b (void)) ("
  , "  CURLcode arg1"
  , ")"
  , "{"
  , "  return &curl_easy_strerror;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_share_strerror */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_4664646c6e454ad4 (void)) ("
  , "  CURLSHcode arg1"
  , ")"
  , "{"
  , "  return &curl_share_strerror;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_pause */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_914435ae3fec37d5 (void)) ("
  , "  CURL *arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &curl_easy_pause;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_ssls_import */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_22a8e90991555c82 (void)) ("
  , "  CURL *arg1,"
  , "  char const *arg2,"
  , "  unsigned char const *arg3,"
  , "  size_t arg4,"
  , "  unsigned char const *arg5,"
  , "  size_t arg6"
  , ")"
  , "{"
  , "  return &curl_easy_ssls_import;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_ssls_export */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_6292dd256f916b06 (void)) ("
  , "  CURL *arg1,"
  , "  curl_ssls_export_cb *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &curl_easy_ssls_export;"
  , "}"
  ]))

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_header@
foreign import ccall unsafe "hs_bindgen_9c9be084963ed276" hs_bindgen_9c9be084963ed276 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURL) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> FC.CUInt -> FC.CInt -> (Ptr.Ptr (Ptr.Ptr Curl_header)) -> IO CURLHcode))

{-# NOINLINE curl_easy_header #-}
{-| __C declaration:__ @curl_easy_header@

    __defined at:__ @header.h:58:23@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_header :: Ptr.FunPtr ((Ptr.Ptr CURL) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> FC.CUInt -> FC.CInt -> (Ptr.Ptr (Ptr.Ptr Curl_header)) -> IO CURLHcode)
curl_easy_header =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9c9be084963ed276

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_nextheader@
foreign import ccall unsafe "hs_bindgen_cd365156b6d754dc" hs_bindgen_cd365156b6d754dc ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURL) -> FC.CUInt -> FC.CInt -> (Ptr.Ptr Curl_header) -> IO (Ptr.Ptr Curl_header)))

{-# NOINLINE curl_easy_nextheader #-}
{-| __C declaration:__ @curl_easy_nextheader@

    __defined at:__ @header.h:65:33@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_nextheader :: Ptr.FunPtr ((Ptr.Ptr CURL) -> FC.CUInt -> FC.CInt -> (Ptr.Ptr Curl_header) -> IO (Ptr.Ptr Curl_header))
curl_easy_nextheader =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cd365156b6d754dc

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_strequal@
foreign import ccall unsafe "hs_bindgen_c85e4780f6f09da6" hs_bindgen_c85e4780f6f09da6 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE curl_strequal #-}
{-| __C declaration:__ @curl_strequal@

    __defined at:__ @curl\/curl.h:2425:17@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_strequal :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
curl_strequal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c85e4780f6f09da6

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_strnequal@
foreign import ccall unsafe "hs_bindgen_f5186ddd7db257e7" hs_bindgen_f5186ddd7db257e7 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE curl_strnequal #-}
{-| __C declaration:__ @curl_strnequal@

    __defined at:__ @curl\/curl.h:2426:17@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_strnequal :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
curl_strnequal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f5186ddd7db257e7

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_init@
foreign import ccall unsafe "hs_bindgen_84576b3d5bbec243" hs_bindgen_84576b3d5bbec243 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURL) -> IO (Ptr.Ptr Curl_mime)))

{-# NOINLINE curl_mime_init #-}
{-| __C declaration:__ @curl_mime_init@

    __defined at:__ @curl\/curl.h:2443:24@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_init :: Ptr.FunPtr ((Ptr.Ptr CURL) -> IO (Ptr.Ptr Curl_mime))
curl_mime_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_84576b3d5bbec243

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_free@
foreign import ccall unsafe "hs_bindgen_4097680a3e2dd699" hs_bindgen_4097680a3e2dd699 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mime) -> IO ()))

{-# NOINLINE curl_mime_free #-}
{-| __C declaration:__ @curl_mime_free@

    __defined at:__ @curl\/curl.h:2452:18@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_free :: Ptr.FunPtr ((Ptr.Ptr Curl_mime) -> IO ())
curl_mime_free =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4097680a3e2dd699

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_addpart@
foreign import ccall unsafe "hs_bindgen_25dce966c8eb20b5" hs_bindgen_25dce966c8eb20b5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mime) -> IO (Ptr.Ptr Curl_mimepart)))

{-# NOINLINE curl_mime_addpart #-}
{-| __C declaration:__ @curl_mime_addpart@

    __defined at:__ @curl\/curl.h:2462:28@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_addpart :: Ptr.FunPtr ((Ptr.Ptr Curl_mime) -> IO (Ptr.Ptr Curl_mimepart))
curl_mime_addpart =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_25dce966c8eb20b5

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_name@
foreign import ccall unsafe "hs_bindgen_b92e4ab1d4c13bf1" hs_bindgen_b92e4ab1d4c13bf1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode))

{-# NOINLINE curl_mime_name #-}
{-| __C declaration:__ @curl_mime_name@

    __defined at:__ @curl\/curl.h:2471:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_name :: Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode)
curl_mime_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b92e4ab1d4c13bf1

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_filename@
foreign import ccall unsafe "hs_bindgen_b38558238de2ea57" hs_bindgen_b38558238de2ea57 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode))

{-# NOINLINE curl_mime_filename #-}
{-| __C declaration:__ @curl_mime_filename@

    __defined at:__ @curl\/curl.h:2480:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_filename :: Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode)
curl_mime_filename =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b38558238de2ea57

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_type@
foreign import ccall unsafe "hs_bindgen_3d07597dc2266044" hs_bindgen_3d07597dc2266044 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode))

{-# NOINLINE curl_mime_type #-}
{-| __C declaration:__ @curl_mime_type@

    __defined at:__ @curl\/curl.h:2490:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_type :: Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode)
curl_mime_type =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3d07597dc2266044

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_encoder@
foreign import ccall unsafe "hs_bindgen_c75603c01f768e04" hs_bindgen_c75603c01f768e04 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode))

{-# NOINLINE curl_mime_encoder #-}
{-| __C declaration:__ @curl_mime_encoder@

    __defined at:__ @curl\/curl.h:2499:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_encoder :: Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode)
curl_mime_encoder =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c75603c01f768e04

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_data@
foreign import ccall unsafe "hs_bindgen_32a90da5d32ff1f8" hs_bindgen_32a90da5d32ff1f8 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO CURLcode))

{-# NOINLINE curl_mime_data #-}
{-| __C declaration:__ @curl_mime_data@

    __defined at:__ @curl\/curl.h:2509:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_data :: Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO CURLcode)
curl_mime_data =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_32a90da5d32ff1f8

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_filedata@
foreign import ccall unsafe "hs_bindgen_7a48fb5977223df2" hs_bindgen_7a48fb5977223df2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode))

{-# NOINLINE curl_mime_filedata #-}
{-| __C declaration:__ @curl_mime_filedata@

    __defined at:__ @curl\/curl.h:2519:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_filedata :: Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode)
curl_mime_filedata =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7a48fb5977223df2

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_data_cb@
foreign import ccall unsafe "hs_bindgen_88803e3a0ed8daac" hs_bindgen_88803e3a0ed8daac ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> Curl_off_t -> Curl_read_callback -> Curl_seek_callback -> Curl_free_callback -> (Ptr.Ptr Void) -> IO CURLcode))

{-# NOINLINE curl_mime_data_cb #-}
{-| __C declaration:__ @curl_mime_data_cb@

    __defined at:__ @curl\/curl.h:2529:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_data_cb :: Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> Curl_off_t -> Curl_read_callback -> Curl_seek_callback -> Curl_free_callback -> (Ptr.Ptr Void) -> IO CURLcode)
curl_mime_data_cb =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_88803e3a0ed8daac

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_subparts@
foreign import ccall unsafe "hs_bindgen_a58a8a05463a78ca" hs_bindgen_a58a8a05463a78ca ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (Ptr.Ptr Curl_mime) -> IO CURLcode))

{-# NOINLINE curl_mime_subparts #-}
{-| __C declaration:__ @curl_mime_subparts@

    __defined at:__ @curl\/curl.h:2543:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_subparts :: Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (Ptr.Ptr Curl_mime) -> IO CURLcode)
curl_mime_subparts =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a58a8a05463a78ca

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_headers@
foreign import ccall unsafe "hs_bindgen_78a2c468e700af25" hs_bindgen_78a2c468e700af25 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (Ptr.Ptr Curl_slist) -> FC.CInt -> IO CURLcode))

{-# NOINLINE curl_mime_headers #-}
{-| __C declaration:__ @curl_mime_headers@

    __defined at:__ @curl\/curl.h:2552:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_headers :: Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (Ptr.Ptr Curl_slist) -> FC.CInt -> IO CURLcode)
curl_mime_headers =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_78a2c468e700af25

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_getenv@
foreign import ccall unsafe "hs_bindgen_33f948adf7558769" hs_bindgen_33f948adf7558769 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE curl_getenv #-}
{-| __C declaration:__ @curl_getenv@

    __defined at:__ @curl\/curl.h:2680:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_getenv :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO (Ptr.Ptr FC.CChar))
curl_getenv =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_33f948adf7558769

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_version@
foreign import ccall unsafe "hs_bindgen_255cc4b92771a7aa" hs_bindgen_255cc4b92771a7aa ::
     IO (Ptr.FunPtr (IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE curl_version #-}
{-| __C declaration:__ @curl_version@

    __defined at:__ @curl\/curl.h:2689:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_version :: Ptr.FunPtr (IO (Ptr.Ptr FC.CChar))
curl_version =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_255cc4b92771a7aa

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_escape@
foreign import ccall unsafe "hs_bindgen_ef5e36d59d7c5892" hs_bindgen_ef5e36d59d7c5892 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURL) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE curl_easy_escape #-}
{-| __C declaration:__ @curl_easy_escape@

    __defined at:__ @curl\/curl.h:2700:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_easy_escape :: Ptr.FunPtr ((Ptr.Ptr CURL) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> IO (Ptr.Ptr FC.CChar))
curl_easy_escape =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ef5e36d59d7c5892

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_escape@
foreign import ccall unsafe "hs_bindgen_0ad57236b3168309" hs_bindgen_0ad57236b3168309 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE curl_escape #-}
{-| __C declaration:__ @curl_escape@

    __defined at:__ @curl\/curl.h:2705:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_escape :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> IO (Ptr.Ptr FC.CChar))
curl_escape =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0ad57236b3168309

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_unescape@
foreign import ccall unsafe "hs_bindgen_1d4146c27d024242" hs_bindgen_1d4146c27d024242 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURL) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (Ptr.Ptr FC.CInt) -> IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE curl_easy_unescape #-}
{-| __C declaration:__ @curl_easy_unescape@

    __defined at:__ @curl\/curl.h:2720:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_easy_unescape :: Ptr.FunPtr ((Ptr.Ptr CURL) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (Ptr.Ptr FC.CInt) -> IO (Ptr.Ptr FC.CChar))
curl_easy_unescape =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1d4146c27d024242

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_unescape@
foreign import ccall unsafe "hs_bindgen_23599568a3dcf037" hs_bindgen_23599568a3dcf037 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE curl_unescape #-}
{-| __C declaration:__ @curl_unescape@

    __defined at:__ @curl\/curl.h:2726:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_unescape :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> IO (Ptr.Ptr FC.CChar))
curl_unescape =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_23599568a3dcf037

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_free@
foreign import ccall unsafe "hs_bindgen_162cf5047803fe03" hs_bindgen_162cf5047803fe03 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> IO ()))

{-# NOINLINE curl_free #-}
{-| __C declaration:__ @curl_free@

    __defined at:__ @curl\/curl.h:2737:18@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_free :: Ptr.FunPtr ((Ptr.Ptr Void) -> IO ())
curl_free =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_162cf5047803fe03

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_global_init@
foreign import ccall unsafe "hs_bindgen_0a0311cd0d6fb69a" hs_bindgen_0a0311cd0d6fb69a ::
     IO (Ptr.FunPtr (FC.CLong -> IO CURLcode))

{-# NOINLINE curl_global_init #-}
{-| __C declaration:__ @curl_global_init@

    __defined at:__ @curl\/curl.h:2751:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_global_init :: Ptr.FunPtr (FC.CLong -> IO CURLcode)
curl_global_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0a0311cd0d6fb69a

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_global_init_mem@
foreign import ccall unsafe "hs_bindgen_6268f72f1672f506" hs_bindgen_6268f72f1672f506 ::
     IO (Ptr.FunPtr (FC.CLong -> Curl_malloc_callback -> Curl_free_callback -> Curl_realloc_callback -> Curl_strdup_callback -> Curl_calloc_callback -> IO CURLcode))

{-# NOINLINE curl_global_init_mem #-}
{-| __C declaration:__ @curl_global_init_mem@

    __defined at:__ @curl\/curl.h:2766:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_global_init_mem :: Ptr.FunPtr (FC.CLong -> Curl_malloc_callback -> Curl_free_callback -> Curl_realloc_callback -> Curl_strdup_callback -> Curl_calloc_callback -> IO CURLcode)
curl_global_init_mem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6268f72f1672f506

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_global_cleanup@
foreign import ccall unsafe "hs_bindgen_9e6845aa33914046" hs_bindgen_9e6845aa33914046 ::
     IO (Ptr.FunPtr (IO ()))

{-# NOINLINE curl_global_cleanup #-}
{-| __C declaration:__ @curl_global_cleanup@

    __defined at:__ @curl\/curl.h:2781:18@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_global_cleanup :: Ptr.FunPtr (IO ())
curl_global_cleanup =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9e6845aa33914046

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_global_trace@
foreign import ccall unsafe "hs_bindgen_c43a02451d9a593a" hs_bindgen_c43a02451d9a593a ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode))

{-# NOINLINE curl_global_trace #-}
{-| __C declaration:__ @curl_global_trace@

    __defined at:__ @curl\/curl.h:2795:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_global_trace :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode)
curl_global_trace =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c43a02451d9a593a

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_global_sslset@
foreign import ccall unsafe "hs_bindgen_1e422403361ba416" hs_bindgen_1e422403361ba416 ::
     IO (Ptr.FunPtr (Curl_sslbackend -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr (Ptr.Ptr (HsBindgen.Runtime.ConstPtr.ConstPtr Curl_ssl_backend))) -> IO CURLsslset))

{-# NOINLINE curl_global_sslset #-}
{-| __C declaration:__ @curl_global_sslset@

    __defined at:__ @curl\/curl.h:2842:24@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_global_sslset :: Ptr.FunPtr (Curl_sslbackend -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr (Ptr.Ptr (HsBindgen.Runtime.ConstPtr.ConstPtr Curl_ssl_backend))) -> IO CURLsslset)
curl_global_sslset =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1e422403361ba416

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_slist_append@
foreign import ccall unsafe "hs_bindgen_11d9f8eb94a2a0c1" hs_bindgen_11d9f8eb94a2a0c1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_slist) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO (Ptr.Ptr Curl_slist)))

{-# NOINLINE curl_slist_append #-}
{-| __C declaration:__ @curl_slist_append@

    __defined at:__ @curl\/curl.h:2853:32@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_slist_append :: Ptr.FunPtr ((Ptr.Ptr Curl_slist) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO (Ptr.Ptr Curl_slist))
curl_slist_append =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_11d9f8eb94a2a0c1

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_slist_free_all@
foreign import ccall unsafe "hs_bindgen_bc01dadb1428928e" hs_bindgen_bc01dadb1428928e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_slist) -> IO ()))

{-# NOINLINE curl_slist_free_all #-}
{-| __C declaration:__ @curl_slist_free_all@

    __defined at:__ @curl\/curl.h:2863:18@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_slist_free_all :: Ptr.FunPtr ((Ptr.Ptr Curl_slist) -> IO ())
curl_slist_free_all =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bc01dadb1428928e

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_getdate@
foreign import ccall unsafe "hs_bindgen_6dbe784f73a5e87e" hs_bindgen_6dbe784f73a5e87e ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.CTime) -> IO HsBindgen.Runtime.Prelude.CTime))

{-# NOINLINE curl_getdate #-}
{-| __C declaration:__ @curl_getdate@

    __defined at:__ @curl\/curl.h:2874:20@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_getdate :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.CTime) -> IO HsBindgen.Runtime.Prelude.CTime)
curl_getdate =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6dbe784f73a5e87e

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_share_init@
foreign import ccall unsafe "hs_bindgen_3f60b9a4f418d7fa" hs_bindgen_3f60b9a4f418d7fa ::
     IO (Ptr.FunPtr (IO (Ptr.Ptr CURLSH)))

{-# NOINLINE curl_share_init #-}
{-| __C declaration:__ @curl_share_init@

    __defined at:__ @curl\/curl.h:3085:21@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_share_init :: Ptr.FunPtr (IO (Ptr.Ptr CURLSH))
curl_share_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3f60b9a4f418d7fa

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_share_cleanup@
foreign import ccall unsafe "hs_bindgen_190735877f475147" hs_bindgen_190735877f475147 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURLSH) -> IO CURLSHcode))

{-# NOINLINE curl_share_cleanup #-}
{-| __C declaration:__ @curl_share_cleanup@

    __defined at:__ @curl\/curl.h:3088:24@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_share_cleanup :: Ptr.FunPtr ((Ptr.Ptr CURLSH) -> IO CURLSHcode)
curl_share_cleanup =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_190735877f475147

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_version_info@
foreign import ccall unsafe "hs_bindgen_5890f630d82ce422" hs_bindgen_5890f630d82ce422 ::
     IO (Ptr.FunPtr (CURLversion -> IO (Ptr.Ptr Curl_version_info_data)))

{-# NOINLINE curl_version_info #-}
{-| __C declaration:__ @curl_version_info@

    __defined at:__ @curl\/curl.h:3226:37@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_version_info :: Ptr.FunPtr (CURLversion -> IO (Ptr.Ptr Curl_version_info_data))
curl_version_info =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5890f630d82ce422

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_strerror@
foreign import ccall unsafe "hs_bindgen_0eb12f87da88838b" hs_bindgen_0eb12f87da88838b ::
     IO (Ptr.FunPtr (CURLcode -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE curl_easy_strerror #-}
{-| __C declaration:__ @curl_easy_strerror@

    __defined at:__ @curl\/curl.h:3237:25@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_easy_strerror :: Ptr.FunPtr (CURLcode -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
curl_easy_strerror =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0eb12f87da88838b

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_share_strerror@
foreign import ccall unsafe "hs_bindgen_4664646c6e454ad4" hs_bindgen_4664646c6e454ad4 ::
     IO (Ptr.FunPtr (CURLSHcode -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE curl_share_strerror #-}
{-| __C declaration:__ @curl_share_strerror@

    __defined at:__ @curl\/curl.h:3248:25@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_share_strerror :: Ptr.FunPtr (CURLSHcode -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
curl_share_strerror =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4664646c6e454ad4

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_pause@
foreign import ccall unsafe "hs_bindgen_914435ae3fec37d5" hs_bindgen_914435ae3fec37d5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURL) -> FC.CInt -> IO CURLcode))

{-# NOINLINE curl_easy_pause #-}
{-| __C declaration:__ @curl_easy_pause@

    __defined at:__ @curl\/curl.h:3259:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_easy_pause :: Ptr.FunPtr ((Ptr.Ptr CURL) -> FC.CInt -> IO CURLcode)
curl_easy_pause =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_914435ae3fec37d5

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_ssls_import@
foreign import ccall unsafe "hs_bindgen_22a8e90991555c82" hs_bindgen_22a8e90991555c82 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURL) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CUChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CUChar) -> HsBindgen.Runtime.Prelude.CSize -> IO CURLcode))

{-# NOINLINE curl_easy_ssls_import #-}
{-| __C declaration:__ @curl_easy_ssls_import@

    __defined at:__ @curl\/curl.h:3278:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_easy_ssls_import :: Ptr.FunPtr ((Ptr.Ptr CURL) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CUChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CUChar) -> HsBindgen.Runtime.Prelude.CSize -> IO CURLcode)
curl_easy_ssls_import =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_22a8e90991555c82

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_ssls_export@
foreign import ccall unsafe "hs_bindgen_6292dd256f916b06" hs_bindgen_6292dd256f916b06 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURL) -> (Ptr.FunPtr Curl_ssls_export_cb) -> (Ptr.Ptr Void) -> IO CURLcode))

{-# NOINLINE curl_easy_ssls_export #-}
{-| __C declaration:__ @curl_easy_ssls_export@

    __defined at:__ @curl\/curl.h:3309:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_easy_ssls_export :: Ptr.FunPtr ((Ptr.Ptr CURL) -> (Ptr.FunPtr Curl_ssls_export_cb) -> (Ptr.Ptr Void) -> IO CURLcode)
curl_easy_ssls_export =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6292dd256f916b06
