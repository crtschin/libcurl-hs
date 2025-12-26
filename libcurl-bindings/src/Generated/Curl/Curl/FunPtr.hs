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
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_header_ptr */"
  , "__attribute__ ((const))"
  , "CURLHcode (*hs_bindgen_5702dfd10d21fc1c (void)) ("
  , "  void *arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  unsigned int arg4,"
  , "  signed int arg5,"
  , "  struct curl_header **arg6"
  , ")"
  , "{"
  , "  return &curl_easy_header;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_nextheader_ptr */"
  , "__attribute__ ((const))"
  , "struct curl_header *(*hs_bindgen_a8e03734bc6092be (void)) ("
  , "  void *arg1,"
  , "  unsigned int arg2,"
  , "  signed int arg3,"
  , "  struct curl_header *arg4"
  , ")"
  , "{"
  , "  return &curl_easy_nextheader;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_strequal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ec89cb89af355540 (void)) ("
  , "  char const *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &curl_strequal;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_strnequal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f2705b4d8b42d036 (void)) ("
  , "  char const *arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &curl_strnequal;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_init_ptr */"
  , "__attribute__ ((const))"
  , "curl_mime *(*hs_bindgen_bc25bd9e1beacef9 (void)) ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return &curl_mime_init;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_free_ptr */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f33c2d336ccfcba2 (void)) ("
  , "  curl_mime *arg1"
  , ")"
  , "{"
  , "  return &curl_mime_free;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_addpart_ptr */"
  , "__attribute__ ((const))"
  , "curl_mimepart *(*hs_bindgen_5187bae2caeac4ca (void)) ("
  , "  curl_mime *arg1"
  , ")"
  , "{"
  , "  return &curl_mime_addpart;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_name_ptr */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_327da9fd6d19635f (void)) ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &curl_mime_name;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_filename_ptr */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_7e0e2f8e8666abb7 (void)) ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &curl_mime_filename;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_type_ptr */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_d134bd9a34b5d0e1 (void)) ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &curl_mime_type;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_encoder_ptr */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_46f224438a41685a (void)) ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &curl_mime_encoder;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_data_ptr */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_207e1a36830214d6 (void)) ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &curl_mime_data;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_filedata_ptr */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_f1c1182cab881242 (void)) ("
  , "  curl_mimepart *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &curl_mime_filedata;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_data_cb_ptr */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_1c2ad3eeb57bc561 (void)) ("
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
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_subparts_ptr */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_9aff4c45f8b79846 (void)) ("
  , "  curl_mimepart *arg1,"
  , "  curl_mime *arg2"
  , ")"
  , "{"
  , "  return &curl_mime_subparts;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_headers_ptr */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_53e128e6a8479efd (void)) ("
  , "  curl_mimepart *arg1,"
  , "  struct curl_slist *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &curl_mime_headers;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_getenv_ptr */"
  , "__attribute__ ((const))"
  , "char *(*hs_bindgen_80e590daaa4fa640 (void)) ("
  , "  char const *arg1"
  , ")"
  , "{"
  , "  return &curl_getenv;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_version_ptr */"
  , "__attribute__ ((const))"
  , "char *(*hs_bindgen_1508b74db2130519 (void)) (void)"
  , "{"
  , "  return &curl_version;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_escape_ptr */"
  , "__attribute__ ((const))"
  , "char *(*hs_bindgen_2557526d4096b5fd (void)) ("
  , "  void *arg1,"
  , "  char const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &curl_easy_escape;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_escape_ptr */"
  , "__attribute__ ((const))"
  , "char *(*hs_bindgen_740afa9b61befa87 (void)) ("
  , "  char const *arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &curl_escape;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_unescape_ptr */"
  , "__attribute__ ((const))"
  , "char *(*hs_bindgen_21d94f07908d82aa (void)) ("
  , "  void *arg1,"
  , "  char const *arg2,"
  , "  signed int arg3,"
  , "  signed int *arg4"
  , ")"
  , "{"
  , "  return &curl_easy_unescape;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_unescape_ptr */"
  , "__attribute__ ((const))"
  , "char *(*hs_bindgen_ef9a658ece47670e (void)) ("
  , "  char const *arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &curl_unescape;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_free_ptr */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a9adc21e2491f826 (void)) ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return &curl_free;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_global_init_ptr */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_d1e1cbe863e14971 (void)) ("
  , "  signed long arg1"
  , ")"
  , "{"
  , "  return &curl_global_init;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_global_init_mem_ptr */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_9c36e956a060158a (void)) ("
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
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_global_cleanup_ptr */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_67b49c36d255160f (void)) (void)"
  , "{"
  , "  return &curl_global_cleanup;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_global_trace_ptr */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_accdedec2c63f40a (void)) ("
  , "  char const *arg1"
  , ")"
  , "{"
  , "  return &curl_global_trace;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_global_sslset_ptr */"
  , "__attribute__ ((const))"
  , "CURLsslset (*hs_bindgen_2b7ba6c91a007792 (void)) ("
  , "  curl_sslbackend arg1,"
  , "  char const *arg2,"
  , "  curl_ssl_backend const ***arg3"
  , ")"
  , "{"
  , "  return &curl_global_sslset;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_slist_append_ptr */"
  , "__attribute__ ((const))"
  , "struct curl_slist *(*hs_bindgen_a5d99db30be9b3e9 (void)) ("
  , "  struct curl_slist *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &curl_slist_append;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_slist_free_all_ptr */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_68d97442d1730544 (void)) ("
  , "  struct curl_slist *arg1"
  , ")"
  , "{"
  , "  return &curl_slist_free_all;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_getdate_ptr */"
  , "__attribute__ ((const))"
  , "time_t (*hs_bindgen_47cdc43c40b02915 (void)) ("
  , "  char const *arg1,"
  , "  time_t const *arg2"
  , ")"
  , "{"
  , "  return &curl_getdate;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_share_init_ptr */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_a9a552c816c52618 (void)) (void)"
  , "{"
  , "  return &curl_share_init;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_share_cleanup_ptr */"
  , "__attribute__ ((const))"
  , "CURLSHcode (*hs_bindgen_0b087d981f95ca1c (void)) ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return &curl_share_cleanup;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_version_info_ptr */"
  , "__attribute__ ((const))"
  , "curl_version_info_data *(*hs_bindgen_6d7ee1b20876fb9e (void)) ("
  , "  CURLversion arg1"
  , ")"
  , "{"
  , "  return &curl_version_info;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_strerror_ptr */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_b1bca56f1246c8d6 (void)) ("
  , "  CURLcode arg1"
  , ")"
  , "{"
  , "  return &curl_easy_strerror;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_share_strerror_ptr */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_01705ed8678c38f5 (void)) ("
  , "  CURLSHcode arg1"
  , ")"
  , "{"
  , "  return &curl_share_strerror;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_pause_ptr */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_3560a59a95e4bc78 (void)) ("
  , "  void *arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &curl_easy_pause;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_ssls_import_ptr */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_7bb053400efd1f1a (void)) ("
  , "  void *arg1,"
  , "  char const *arg2,"
  , "  unsigned char const *arg3,"
  , "  size_t arg4,"
  , "  unsigned char const *arg5,"
  , "  size_t arg6"
  , ")"
  , "{"
  , "  return &curl_easy_ssls_import;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_ssls_export_ptr */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_2922ba79d40612b3 (void)) ("
  , "  void *arg1,"
  , "  curl_ssls_export_cb *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &curl_easy_ssls_export;"
  , "}"
  ]))

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_header_ptr@
foreign import ccall unsafe "hs_bindgen_5702dfd10d21fc1c" hs_bindgen_5702dfd10d21fc1c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> FC.CUInt -> FC.CInt -> (Ptr.Ptr (Ptr.Ptr Curl_header)) -> IO CURLHcode))

{-# NOINLINE curl_easy_header_ptr #-}

{-| __C declaration:__ @curl_easy_header@

    __defined at:__ @header.h:58:23@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_header_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> FC.CUInt -> FC.CInt -> (Ptr.Ptr (Ptr.Ptr Curl_header)) -> IO CURLHcode)
curl_easy_header_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5702dfd10d21fc1c

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_nextheader_ptr@
foreign import ccall unsafe "hs_bindgen_a8e03734bc6092be" hs_bindgen_a8e03734bc6092be ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> FC.CUInt -> FC.CInt -> (Ptr.Ptr Curl_header) -> IO (Ptr.Ptr Curl_header)))

{-# NOINLINE curl_easy_nextheader_ptr #-}

{-| __C declaration:__ @curl_easy_nextheader@

    __defined at:__ @header.h:65:33@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_nextheader_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> FC.CUInt -> FC.CInt -> (Ptr.Ptr Curl_header) -> IO (Ptr.Ptr Curl_header))
curl_easy_nextheader_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a8e03734bc6092be

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_strequal_ptr@
foreign import ccall unsafe "hs_bindgen_ec89cb89af355540" hs_bindgen_ec89cb89af355540 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE curl_strequal_ptr #-}

{-| __C declaration:__ @curl_strequal@

    __defined at:__ @curl\/curl.h:2423:17@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_strequal_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
curl_strequal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ec89cb89af355540

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_strnequal_ptr@
foreign import ccall unsafe "hs_bindgen_f2705b4d8b42d036" hs_bindgen_f2705b4d8b42d036 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE curl_strnequal_ptr #-}

{-| __C declaration:__ @curl_strnequal@

    __defined at:__ @curl\/curl.h:2424:17@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_strnequal_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
curl_strnequal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f2705b4d8b42d036

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_init_ptr@
foreign import ccall unsafe "hs_bindgen_bc25bd9e1beacef9" hs_bindgen_bc25bd9e1beacef9 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> IO (Ptr.Ptr Curl_mime)))

{-# NOINLINE curl_mime_init_ptr #-}

{-| __C declaration:__ @curl_mime_init@

    __defined at:__ @curl\/curl.h:2441:24@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> IO (Ptr.Ptr Curl_mime))
curl_mime_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bc25bd9e1beacef9

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_free_ptr@
foreign import ccall unsafe "hs_bindgen_f33c2d336ccfcba2" hs_bindgen_f33c2d336ccfcba2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mime) -> IO ()))

{-# NOINLINE curl_mime_free_ptr #-}

{-| __C declaration:__ @curl_mime_free@

    __defined at:__ @curl\/curl.h:2450:18@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_free_ptr :: Ptr.FunPtr ((Ptr.Ptr Curl_mime) -> IO ())
curl_mime_free_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f33c2d336ccfcba2

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_addpart_ptr@
foreign import ccall unsafe "hs_bindgen_5187bae2caeac4ca" hs_bindgen_5187bae2caeac4ca ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mime) -> IO (Ptr.Ptr Curl_mimepart)))

{-# NOINLINE curl_mime_addpart_ptr #-}

{-| __C declaration:__ @curl_mime_addpart@

    __defined at:__ @curl\/curl.h:2460:28@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_addpart_ptr :: Ptr.FunPtr ((Ptr.Ptr Curl_mime) -> IO (Ptr.Ptr Curl_mimepart))
curl_mime_addpart_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5187bae2caeac4ca

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_name_ptr@
foreign import ccall unsafe "hs_bindgen_327da9fd6d19635f" hs_bindgen_327da9fd6d19635f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode))

{-# NOINLINE curl_mime_name_ptr #-}

{-| __C declaration:__ @curl_mime_name@

    __defined at:__ @curl\/curl.h:2469:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_name_ptr :: Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode)
curl_mime_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_327da9fd6d19635f

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_filename_ptr@
foreign import ccall unsafe "hs_bindgen_7e0e2f8e8666abb7" hs_bindgen_7e0e2f8e8666abb7 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode))

{-# NOINLINE curl_mime_filename_ptr #-}

{-| __C declaration:__ @curl_mime_filename@

    __defined at:__ @curl\/curl.h:2478:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_filename_ptr :: Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode)
curl_mime_filename_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7e0e2f8e8666abb7

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_type_ptr@
foreign import ccall unsafe "hs_bindgen_d134bd9a34b5d0e1" hs_bindgen_d134bd9a34b5d0e1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode))

{-# NOINLINE curl_mime_type_ptr #-}

{-| __C declaration:__ @curl_mime_type@

    __defined at:__ @curl\/curl.h:2488:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_type_ptr :: Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode)
curl_mime_type_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d134bd9a34b5d0e1

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_encoder_ptr@
foreign import ccall unsafe "hs_bindgen_46f224438a41685a" hs_bindgen_46f224438a41685a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode))

{-# NOINLINE curl_mime_encoder_ptr #-}

{-| __C declaration:__ @curl_mime_encoder@

    __defined at:__ @curl\/curl.h:2497:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_encoder_ptr :: Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode)
curl_mime_encoder_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_46f224438a41685a

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_data_ptr@
foreign import ccall unsafe "hs_bindgen_207e1a36830214d6" hs_bindgen_207e1a36830214d6 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO CURLcode))

{-# NOINLINE curl_mime_data_ptr #-}

{-| __C declaration:__ @curl_mime_data@

    __defined at:__ @curl\/curl.h:2507:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_data_ptr :: Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO CURLcode)
curl_mime_data_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_207e1a36830214d6

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_filedata_ptr@
foreign import ccall unsafe "hs_bindgen_f1c1182cab881242" hs_bindgen_f1c1182cab881242 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode))

{-# NOINLINE curl_mime_filedata_ptr #-}

{-| __C declaration:__ @curl_mime_filedata@

    __defined at:__ @curl\/curl.h:2517:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_filedata_ptr :: Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode)
curl_mime_filedata_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f1c1182cab881242

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_data_cb_ptr@
foreign import ccall unsafe "hs_bindgen_1c2ad3eeb57bc561" hs_bindgen_1c2ad3eeb57bc561 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> Curl_off_t -> Curl_read_callback -> Curl_seek_callback -> Curl_free_callback -> (Ptr.Ptr Void) -> IO CURLcode))

{-# NOINLINE curl_mime_data_cb_ptr #-}

{-| __C declaration:__ @curl_mime_data_cb@

    __defined at:__ @curl\/curl.h:2527:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_data_cb_ptr :: Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> Curl_off_t -> Curl_read_callback -> Curl_seek_callback -> Curl_free_callback -> (Ptr.Ptr Void) -> IO CURLcode)
curl_mime_data_cb_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1c2ad3eeb57bc561

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_subparts_ptr@
foreign import ccall unsafe "hs_bindgen_9aff4c45f8b79846" hs_bindgen_9aff4c45f8b79846 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (Ptr.Ptr Curl_mime) -> IO CURLcode))

{-# NOINLINE curl_mime_subparts_ptr #-}

{-| __C declaration:__ @curl_mime_subparts@

    __defined at:__ @curl\/curl.h:2541:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_subparts_ptr :: Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (Ptr.Ptr Curl_mime) -> IO CURLcode)
curl_mime_subparts_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9aff4c45f8b79846

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_mime_headers_ptr@
foreign import ccall unsafe "hs_bindgen_53e128e6a8479efd" hs_bindgen_53e128e6a8479efd ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (Ptr.Ptr Curl_slist) -> FC.CInt -> IO CURLcode))

{-# NOINLINE curl_mime_headers_ptr #-}

{-| __C declaration:__ @curl_mime_headers@

    __defined at:__ @curl\/curl.h:2550:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_mime_headers_ptr :: Ptr.FunPtr ((Ptr.Ptr Curl_mimepart) -> (Ptr.Ptr Curl_slist) -> FC.CInt -> IO CURLcode)
curl_mime_headers_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_53e128e6a8479efd

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_getenv_ptr@
foreign import ccall unsafe "hs_bindgen_80e590daaa4fa640" hs_bindgen_80e590daaa4fa640 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE curl_getenv_ptr #-}

{-| __C declaration:__ @curl_getenv@

    __defined at:__ @curl\/curl.h:2678:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_getenv_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO (Ptr.Ptr FC.CChar))
curl_getenv_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_80e590daaa4fa640

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_version_ptr@
foreign import ccall unsafe "hs_bindgen_1508b74db2130519" hs_bindgen_1508b74db2130519 ::
     IO (Ptr.FunPtr (IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE curl_version_ptr #-}

{-| __C declaration:__ @curl_version@

    __defined at:__ @curl\/curl.h:2687:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_version_ptr :: Ptr.FunPtr (IO (Ptr.Ptr FC.CChar))
curl_version_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1508b74db2130519

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_escape_ptr@
foreign import ccall unsafe "hs_bindgen_2557526d4096b5fd" hs_bindgen_2557526d4096b5fd ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE curl_easy_escape_ptr #-}

{-| __C declaration:__ @curl_easy_escape@

    __defined at:__ @curl\/curl.h:2698:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_easy_escape_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> IO (Ptr.Ptr FC.CChar))
curl_easy_escape_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2557526d4096b5fd

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_escape_ptr@
foreign import ccall unsafe "hs_bindgen_740afa9b61befa87" hs_bindgen_740afa9b61befa87 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE curl_escape_ptr #-}

{-| __C declaration:__ @curl_escape@

    __defined at:__ @curl\/curl.h:2703:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_escape_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> IO (Ptr.Ptr FC.CChar))
curl_escape_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_740afa9b61befa87

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_unescape_ptr@
foreign import ccall unsafe "hs_bindgen_21d94f07908d82aa" hs_bindgen_21d94f07908d82aa ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (Ptr.Ptr FC.CInt) -> IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE curl_easy_unescape_ptr #-}

{-| __C declaration:__ @curl_easy_unescape@

    __defined at:__ @curl\/curl.h:2718:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_easy_unescape_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (Ptr.Ptr FC.CInt) -> IO (Ptr.Ptr FC.CChar))
curl_easy_unescape_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_21d94f07908d82aa

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_unescape_ptr@
foreign import ccall unsafe "hs_bindgen_ef9a658ece47670e" hs_bindgen_ef9a658ece47670e ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE curl_unescape_ptr #-}

{-| __C declaration:__ @curl_unescape@

    __defined at:__ @curl\/curl.h:2724:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_unescape_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> IO (Ptr.Ptr FC.CChar))
curl_unescape_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ef9a658ece47670e

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_free_ptr@
foreign import ccall unsafe "hs_bindgen_a9adc21e2491f826" hs_bindgen_a9adc21e2491f826 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> IO ()))

{-# NOINLINE curl_free_ptr #-}

{-| __C declaration:__ @curl_free@

    __defined at:__ @curl\/curl.h:2735:18@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_free_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> IO ())
curl_free_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a9adc21e2491f826

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_global_init_ptr@
foreign import ccall unsafe "hs_bindgen_d1e1cbe863e14971" hs_bindgen_d1e1cbe863e14971 ::
     IO (Ptr.FunPtr (FC.CLong -> IO CURLcode))

{-# NOINLINE curl_global_init_ptr #-}

{-| __C declaration:__ @curl_global_init@

    __defined at:__ @curl\/curl.h:2749:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_global_init_ptr :: Ptr.FunPtr (FC.CLong -> IO CURLcode)
curl_global_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d1e1cbe863e14971

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_global_init_mem_ptr@
foreign import ccall unsafe "hs_bindgen_9c36e956a060158a" hs_bindgen_9c36e956a060158a ::
     IO (Ptr.FunPtr (FC.CLong -> Curl_malloc_callback -> Curl_free_callback -> Curl_realloc_callback -> Curl_strdup_callback -> Curl_calloc_callback -> IO CURLcode))

{-# NOINLINE curl_global_init_mem_ptr #-}

{-| __C declaration:__ @curl_global_init_mem@

    __defined at:__ @curl\/curl.h:2764:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_global_init_mem_ptr :: Ptr.FunPtr (FC.CLong -> Curl_malloc_callback -> Curl_free_callback -> Curl_realloc_callback -> Curl_strdup_callback -> Curl_calloc_callback -> IO CURLcode)
curl_global_init_mem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9c36e956a060158a

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_global_cleanup_ptr@
foreign import ccall unsafe "hs_bindgen_67b49c36d255160f" hs_bindgen_67b49c36d255160f ::
     IO (Ptr.FunPtr (IO ()))

{-# NOINLINE curl_global_cleanup_ptr #-}

{-| __C declaration:__ @curl_global_cleanup@

    __defined at:__ @curl\/curl.h:2779:18@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_global_cleanup_ptr :: Ptr.FunPtr (IO ())
curl_global_cleanup_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_67b49c36d255160f

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_global_trace_ptr@
foreign import ccall unsafe "hs_bindgen_accdedec2c63f40a" hs_bindgen_accdedec2c63f40a ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode))

{-# NOINLINE curl_global_trace_ptr #-}

{-| __C declaration:__ @curl_global_trace@

    __defined at:__ @curl\/curl.h:2793:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_global_trace_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO CURLcode)
curl_global_trace_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_accdedec2c63f40a

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_global_sslset_ptr@
foreign import ccall unsafe "hs_bindgen_2b7ba6c91a007792" hs_bindgen_2b7ba6c91a007792 ::
     IO (Ptr.FunPtr (Curl_sslbackend -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr (Ptr.Ptr (HsBindgen.Runtime.ConstPtr.ConstPtr Curl_ssl_backend))) -> IO CURLsslset))

{-# NOINLINE curl_global_sslset_ptr #-}

{-| __C declaration:__ @curl_global_sslset@

    __defined at:__ @curl\/curl.h:2840:24@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_global_sslset_ptr :: Ptr.FunPtr (Curl_sslbackend -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr (Ptr.Ptr (HsBindgen.Runtime.ConstPtr.ConstPtr Curl_ssl_backend))) -> IO CURLsslset)
curl_global_sslset_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2b7ba6c91a007792

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_slist_append_ptr@
foreign import ccall unsafe "hs_bindgen_a5d99db30be9b3e9" hs_bindgen_a5d99db30be9b3e9 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_slist) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO (Ptr.Ptr Curl_slist)))

{-# NOINLINE curl_slist_append_ptr #-}

{-| __C declaration:__ @curl_slist_append@

    __defined at:__ @curl\/curl.h:2851:32@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_slist_append_ptr :: Ptr.FunPtr ((Ptr.Ptr Curl_slist) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO (Ptr.Ptr Curl_slist))
curl_slist_append_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a5d99db30be9b3e9

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_slist_free_all_ptr@
foreign import ccall unsafe "hs_bindgen_68d97442d1730544" hs_bindgen_68d97442d1730544 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_slist) -> IO ()))

{-# NOINLINE curl_slist_free_all_ptr #-}

{-| __C declaration:__ @curl_slist_free_all@

    __defined at:__ @curl\/curl.h:2861:18@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_slist_free_all_ptr :: Ptr.FunPtr ((Ptr.Ptr Curl_slist) -> IO ())
curl_slist_free_all_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_68d97442d1730544

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_getdate_ptr@
foreign import ccall unsafe "hs_bindgen_47cdc43c40b02915" hs_bindgen_47cdc43c40b02915 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.CTime) -> IO HsBindgen.Runtime.Prelude.CTime))

{-# NOINLINE curl_getdate_ptr #-}

{-| __C declaration:__ @curl_getdate@

    __defined at:__ @curl\/curl.h:2872:20@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_getdate_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.CTime) -> IO HsBindgen.Runtime.Prelude.CTime)
curl_getdate_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_47cdc43c40b02915

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_share_init_ptr@
foreign import ccall unsafe "hs_bindgen_a9a552c816c52618" hs_bindgen_a9a552c816c52618 ::
     IO (Ptr.FunPtr (IO (Ptr.Ptr Void)))

{-# NOINLINE curl_share_init_ptr #-}

{-| __C declaration:__ @curl_share_init@

    __defined at:__ @curl\/curl.h:3083:19@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_share_init_ptr :: Ptr.FunPtr (IO (Ptr.Ptr Void))
curl_share_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a9a552c816c52618

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_share_cleanup_ptr@
foreign import ccall unsafe "hs_bindgen_0b087d981f95ca1c" hs_bindgen_0b087d981f95ca1c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> IO CURLSHcode))

{-# NOINLINE curl_share_cleanup_ptr #-}

{-| __C declaration:__ @curl_share_cleanup@

    __defined at:__ @curl\/curl.h:3084:24@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_share_cleanup_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> IO CURLSHcode)
curl_share_cleanup_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0b087d981f95ca1c

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_version_info_ptr@
foreign import ccall unsafe "hs_bindgen_6d7ee1b20876fb9e" hs_bindgen_6d7ee1b20876fb9e ::
     IO (Ptr.FunPtr (CURLversion -> IO (Ptr.Ptr Curl_version_info_data)))

{-# NOINLINE curl_version_info_ptr #-}

{-| __C declaration:__ @curl_version_info@

    __defined at:__ @curl\/curl.h:3222:37@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_version_info_ptr :: Ptr.FunPtr (CURLversion -> IO (Ptr.Ptr Curl_version_info_data))
curl_version_info_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6d7ee1b20876fb9e

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_strerror_ptr@
foreign import ccall unsafe "hs_bindgen_b1bca56f1246c8d6" hs_bindgen_b1bca56f1246c8d6 ::
     IO (Ptr.FunPtr (CURLcode -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE curl_easy_strerror_ptr #-}

{-| __C declaration:__ @curl_easy_strerror@

    __defined at:__ @curl\/curl.h:3233:25@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_easy_strerror_ptr :: Ptr.FunPtr (CURLcode -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
curl_easy_strerror_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b1bca56f1246c8d6

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_share_strerror_ptr@
foreign import ccall unsafe "hs_bindgen_01705ed8678c38f5" hs_bindgen_01705ed8678c38f5 ::
     IO (Ptr.FunPtr (CURLSHcode -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE curl_share_strerror_ptr #-}

{-| __C declaration:__ @curl_share_strerror@

    __defined at:__ @curl\/curl.h:3244:25@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_share_strerror_ptr :: Ptr.FunPtr (CURLSHcode -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
curl_share_strerror_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_01705ed8678c38f5

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_pause_ptr@
foreign import ccall unsafe "hs_bindgen_3560a59a95e4bc78" hs_bindgen_3560a59a95e4bc78 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> FC.CInt -> IO CURLcode))

{-# NOINLINE curl_easy_pause_ptr #-}

{-| __C declaration:__ @curl_easy_pause@

    __defined at:__ @curl\/curl.h:3255:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_easy_pause_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> FC.CInt -> IO CURLcode)
curl_easy_pause_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3560a59a95e4bc78

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_ssls_import_ptr@
foreign import ccall unsafe "hs_bindgen_7bb053400efd1f1a" hs_bindgen_7bb053400efd1f1a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CUChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CUChar) -> HsBindgen.Runtime.Prelude.CSize -> IO CURLcode))

{-# NOINLINE curl_easy_ssls_import_ptr #-}

{-| __C declaration:__ @curl_easy_ssls_import@

    __defined at:__ @curl\/curl.h:3274:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_easy_ssls_import_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CUChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CUChar) -> HsBindgen.Runtime.Prelude.CSize -> IO CURLcode)
curl_easy_ssls_import_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7bb053400efd1f1a

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Curl_get_curl_easy_ssls_export_ptr@
foreign import ccall unsafe "hs_bindgen_2922ba79d40612b3" hs_bindgen_2922ba79d40612b3 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.FunPtr Curl_ssls_export_cb) -> (Ptr.Ptr Void) -> IO CURLcode))

{-# NOINLINE curl_easy_ssls_export_ptr #-}

{-| __C declaration:__ @curl_easy_ssls_export@

    __defined at:__ @curl\/curl.h:3305:22@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
curl_easy_ssls_export_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.FunPtr Curl_ssls_export_cb) -> (Ptr.Ptr Void) -> IO CURLcode)
curl_easy_ssls_export_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2922ba79d40612b3
