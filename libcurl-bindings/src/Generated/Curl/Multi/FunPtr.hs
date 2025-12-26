{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Curl.Multi.FunPtr where

import qualified Foreign.C as FC
import qualified GHC.IO.Unsafe
import qualified GHC.Ptr as Ptr
import qualified Generated.Curl.Curl
import qualified HsBindgen.Runtime.ConstPtr
import qualified HsBindgen.Runtime.IncompleteArray
import qualified HsBindgen.Runtime.Prelude
import Data.Void (Void)
import Generated.Curl.Multi
import Prelude (IO)

$(HsBindgen.Runtime.Prelude.addCSource (HsBindgen.Runtime.Prelude.unlines
  [ "#include <curl/curl.h>"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_init */"
  , "__attribute__ ((const))"
  , "CURLM *(*hs_bindgen_588e23ddafe2460c (void)) (void)"
  , "{"
  , "  return &curl_multi_init;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_add_handle */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_567745e4dea6efd5 (void)) ("
  , "  CURLM *arg1,"
  , "  CURL *arg2"
  , ")"
  , "{"
  , "  return &curl_multi_add_handle;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_remove_handle */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_dfd62d16f78ccf45 (void)) ("
  , "  CURLM *arg1,"
  , "  CURL *arg2"
  , ")"
  , "{"
  , "  return &curl_multi_remove_handle;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_fdset */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_cac6cccb3012d05b (void)) ("
  , "  CURLM *arg1,"
  , "  fd_set *arg2,"
  , "  fd_set *arg3,"
  , "  fd_set *arg4,"
  , "  signed int *arg5"
  , ")"
  , "{"
  , "  return &curl_multi_fdset;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_wait */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_81aa976f67244fb1 (void)) ("
  , "  CURLM *arg1,"
  , "  struct curl_waitfd arg2[],"
  , "  unsigned int arg3,"
  , "  signed int arg4,"
  , "  signed int *arg5"
  , ")"
  , "{"
  , "  return &curl_multi_wait;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_poll */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_03230a33811d6e16 (void)) ("
  , "  CURLM *arg1,"
  , "  struct curl_waitfd arg2[],"
  , "  unsigned int arg3,"
  , "  signed int arg4,"
  , "  signed int *arg5"
  , ")"
  , "{"
  , "  return &curl_multi_poll;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_wakeup */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_e4d29370cd7115c9 (void)) ("
  , "  CURLM *arg1"
  , ")"
  , "{"
  , "  return &curl_multi_wakeup;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_perform */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_178858de89968f67 (void)) ("
  , "  CURLM *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return &curl_multi_perform;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_cleanup */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_f6ea2a6a477969c1 (void)) ("
  , "  CURLM *arg1"
  , ")"
  , "{"
  , "  return &curl_multi_cleanup;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_info_read */"
  , "__attribute__ ((const))"
  , "CURLMsg *(*hs_bindgen_7e1d39f50dd17930 (void)) ("
  , "  CURLM *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return &curl_multi_info_read;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_strerror */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_00b8d1cd60727e44 (void)) ("
  , "  CURLMcode arg1"
  , ")"
  , "{"
  , "  return &curl_multi_strerror;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_socket_action */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_f505e02a56c56465 (void)) ("
  , "  CURLM *arg1,"
  , "  curl_socket_t arg2,"
  , "  signed int arg3,"
  , "  signed int *arg4"
  , ")"
  , "{"
  , "  return &curl_multi_socket_action;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_timeout */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_62e9e3abaafeb437 (void)) ("
  , "  CURLM *arg1,"
  , "  signed long *arg2"
  , ")"
  , "{"
  , "  return &curl_multi_timeout;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_assign */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_6d520cab14803e56 (void)) ("
  , "  CURLM *arg1,"
  , "  curl_socket_t arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &curl_multi_assign;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_get_handles */"
  , "__attribute__ ((const))"
  , "CURL **(*hs_bindgen_7e37fafb51c94c65 (void)) ("
  , "  CURLM *arg1"
  , ")"
  , "{"
  , "  return &curl_multi_get_handles;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_get_offt */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_228ce3b7b66e47a3 (void)) ("
  , "  CURLM *arg1,"
  , "  CURLMinfo_offt arg2,"
  , "  curl_off_t *arg3"
  , ")"
  , "{"
  , "  return &curl_multi_get_offt;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_pushheader_bynum */"
  , "__attribute__ ((const))"
  , "char *(*hs_bindgen_284d41b4ca90f30e (void)) ("
  , "  struct curl_pushheaders *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &curl_pushheader_bynum;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_pushheader_byname */"
  , "__attribute__ ((const))"
  , "char *(*hs_bindgen_abb1b41f348671c4 (void)) ("
  , "  struct curl_pushheaders *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &curl_pushheader_byname;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_waitfds */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_5163188510dad346 (void)) ("
  , "  CURLM *arg1,"
  , "  struct curl_waitfd *arg2,"
  , "  unsigned int arg3,"
  , "  unsigned int *arg4"
  , ")"
  , "{"
  , "  return &curl_multi_waitfds;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_notify_disable */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_8a386f6b66c7aaba (void)) ("
  , "  CURLM *arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return &curl_multi_notify_disable;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_notify_enable */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_b3a9c21c8b4178ba (void)) ("
  , "  CURLM *arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return &curl_multi_notify_enable;"
  , "}"
  ]))

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_init@
foreign import ccall unsafe "hs_bindgen_588e23ddafe2460c" hs_bindgen_588e23ddafe2460c ::
     IO (Ptr.FunPtr (IO (Ptr.Ptr CURLM)))

{-# NOINLINE curl_multi_init #-}
{-| __C declaration:__ @curl_multi_init@

    __defined at:__ @multi.h:127:20@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_init :: Ptr.FunPtr (IO (Ptr.Ptr CURLM))
curl_multi_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_588e23ddafe2460c

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_add_handle@
foreign import ccall unsafe "hs_bindgen_567745e4dea6efd5" hs_bindgen_567745e4dea6efd5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURLM) -> (Ptr.Ptr Generated.Curl.Curl.CURL) -> IO CURLMcode))

{-# NOINLINE curl_multi_add_handle #-}
{-| __C declaration:__ @curl_multi_add_handle@

    __defined at:__ @multi.h:136:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_add_handle :: Ptr.FunPtr ((Ptr.Ptr CURLM) -> (Ptr.Ptr Generated.Curl.Curl.CURL) -> IO CURLMcode)
curl_multi_add_handle =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_567745e4dea6efd5

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_remove_handle@
foreign import ccall unsafe "hs_bindgen_dfd62d16f78ccf45" hs_bindgen_dfd62d16f78ccf45 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURLM) -> (Ptr.Ptr Generated.Curl.Curl.CURL) -> IO CURLMcode))

{-# NOINLINE curl_multi_remove_handle #-}
{-| __C declaration:__ @curl_multi_remove_handle@

    __defined at:__ @multi.h:146:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_remove_handle :: Ptr.FunPtr ((Ptr.Ptr CURLM) -> (Ptr.Ptr Generated.Curl.Curl.CURL) -> IO CURLMcode)
curl_multi_remove_handle =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dfd62d16f78ccf45

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_fdset@
foreign import ccall unsafe "hs_bindgen_cac6cccb3012d05b" hs_bindgen_cac6cccb3012d05b ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURLM) -> (Ptr.Ptr Fd_set) -> (Ptr.Ptr Fd_set) -> (Ptr.Ptr Fd_set) -> (Ptr.Ptr FC.CInt) -> IO CURLMcode))

{-# NOINLINE curl_multi_fdset #-}
{-| __C declaration:__ @curl_multi_fdset@

    __defined at:__ @multi.h:158:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_fdset :: Ptr.FunPtr ((Ptr.Ptr CURLM) -> (Ptr.Ptr Fd_set) -> (Ptr.Ptr Fd_set) -> (Ptr.Ptr Fd_set) -> (Ptr.Ptr FC.CInt) -> IO CURLMcode)
curl_multi_fdset =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cac6cccb3012d05b

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_wait@
foreign import ccall unsafe "hs_bindgen_81aa976f67244fb1" hs_bindgen_81aa976f67244fb1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURLM) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray Curl_waitfd) -> FC.CUInt -> FC.CInt -> (Ptr.Ptr FC.CInt) -> IO CURLMcode))

{-# NOINLINE curl_multi_wait #-}
{-| __C declaration:__ @curl_multi_wait@

    __defined at:__ @multi.h:172:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_wait :: Ptr.FunPtr ((Ptr.Ptr CURLM) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray Curl_waitfd) -> FC.CUInt -> FC.CInt -> (Ptr.Ptr FC.CInt) -> IO CURLMcode)
curl_multi_wait =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_81aa976f67244fb1

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_poll@
foreign import ccall unsafe "hs_bindgen_03230a33811d6e16" hs_bindgen_03230a33811d6e16 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURLM) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray Curl_waitfd) -> FC.CUInt -> FC.CInt -> (Ptr.Ptr FC.CInt) -> IO CURLMcode))

{-# NOINLINE curl_multi_poll #-}
{-| __C declaration:__ @curl_multi_poll@

    __defined at:__ @multi.h:186:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_poll :: Ptr.FunPtr ((Ptr.Ptr CURLM) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray Curl_waitfd) -> FC.CUInt -> FC.CInt -> (Ptr.Ptr FC.CInt) -> IO CURLMcode)
curl_multi_poll =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_03230a33811d6e16

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_wakeup@
foreign import ccall unsafe "hs_bindgen_e4d29370cd7115c9" hs_bindgen_e4d29370cd7115c9 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURLM) -> IO CURLMcode))

{-# NOINLINE curl_multi_wakeup #-}
{-| __C declaration:__ @curl_multi_wakeup@

    __defined at:__ @multi.h:199:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_wakeup :: Ptr.FunPtr ((Ptr.Ptr CURLM) -> IO CURLMcode)
curl_multi_wakeup =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e4d29370cd7115c9

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_perform@
foreign import ccall unsafe "hs_bindgen_178858de89968f67" hs_bindgen_178858de89968f67 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURLM) -> (Ptr.Ptr FC.CInt) -> IO CURLMcode))

{-# NOINLINE curl_multi_perform #-}
{-| __C declaration:__ @curl_multi_perform@

    __defined at:__ @multi.h:217:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_perform :: Ptr.FunPtr ((Ptr.Ptr CURLM) -> (Ptr.Ptr FC.CInt) -> IO CURLMcode)
curl_multi_perform =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_178858de89968f67

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_cleanup@
foreign import ccall unsafe "hs_bindgen_f6ea2a6a477969c1" hs_bindgen_f6ea2a6a477969c1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURLM) -> IO CURLMcode))

{-# NOINLINE curl_multi_cleanup #-}
{-| __C declaration:__ @curl_multi_cleanup@

    __defined at:__ @multi.h:230:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_cleanup :: Ptr.FunPtr ((Ptr.Ptr CURLM) -> IO CURLMcode)
curl_multi_cleanup =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f6ea2a6a477969c1

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_info_read@
foreign import ccall unsafe "hs_bindgen_7e1d39f50dd17930" hs_bindgen_7e1d39f50dd17930 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURLM) -> (Ptr.Ptr FC.CInt) -> IO (Ptr.Ptr CURLMsg)))

{-# NOINLINE curl_multi_info_read #-}
{-| __C declaration:__ @curl_multi_info_read@

    __defined at:__ @multi.h:260:22@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_info_read :: Ptr.FunPtr ((Ptr.Ptr CURLM) -> (Ptr.Ptr FC.CInt) -> IO (Ptr.Ptr CURLMsg))
curl_multi_info_read =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7e1d39f50dd17930

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_strerror@
foreign import ccall unsafe "hs_bindgen_00b8d1cd60727e44" hs_bindgen_00b8d1cd60727e44 ::
     IO (Ptr.FunPtr (CURLMcode -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE curl_multi_strerror #-}
{-| __C declaration:__ @curl_multi_strerror@

    __defined at:__ @multi.h:272:25@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_strerror :: Ptr.FunPtr (CURLMcode -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
curl_multi_strerror =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_00b8d1cd60727e44

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_socket_action@
foreign import ccall unsafe "hs_bindgen_f505e02a56c56465" hs_bindgen_f505e02a56c56465 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURLM) -> Generated.Curl.Curl.Curl_socket_t -> FC.CInt -> (Ptr.Ptr FC.CInt) -> IO CURLMcode))

{-# NOINLINE curl_multi_socket_action #-}
{-| __C declaration:__ @curl_multi_socket_action@

    __defined at:__ @multi.h:320:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_socket_action :: Ptr.FunPtr ((Ptr.Ptr CURLM) -> Generated.Curl.Curl.Curl_socket_t -> FC.CInt -> (Ptr.Ptr FC.CInt) -> IO CURLMcode)
curl_multi_socket_action =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f505e02a56c56465

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_timeout@
foreign import ccall unsafe "hs_bindgen_62e9e3abaafeb437" hs_bindgen_62e9e3abaafeb437 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURLM) -> (Ptr.Ptr FC.CLong) -> IO CURLMcode))

{-# NOINLINE curl_multi_timeout #-}
{-| __C declaration:__ @curl_multi_timeout@

    __defined at:__ @multi.h:344:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_timeout :: Ptr.FunPtr ((Ptr.Ptr CURLM) -> (Ptr.Ptr FC.CLong) -> IO CURLMcode)
curl_multi_timeout =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_62e9e3abaafeb437

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_assign@
foreign import ccall unsafe "hs_bindgen_6d520cab14803e56" hs_bindgen_6d520cab14803e56 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURLM) -> Generated.Curl.Curl.Curl_socket_t -> (Ptr.Ptr Void) -> IO CURLMcode))

{-# NOINLINE curl_multi_assign #-}
{-| __C declaration:__ @curl_multi_assign@

    __defined at:__ @multi.h:442:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_assign :: Ptr.FunPtr ((Ptr.Ptr CURLM) -> Generated.Curl.Curl.Curl_socket_t -> (Ptr.Ptr Void) -> IO CURLMcode)
curl_multi_assign =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6d520cab14803e56

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_get_handles@
foreign import ccall unsafe "hs_bindgen_7e37fafb51c94c65" hs_bindgen_7e37fafb51c94c65 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURLM) -> IO (Ptr.Ptr (Ptr.Ptr Generated.Curl.Curl.CURL))))

{-# NOINLINE curl_multi_get_handles #-}
{-| __C declaration:__ @curl_multi_get_handles@

    __defined at:__ @multi.h:455:20@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_get_handles :: Ptr.FunPtr ((Ptr.Ptr CURLM) -> IO (Ptr.Ptr (Ptr.Ptr Generated.Curl.Curl.CURL)))
curl_multi_get_handles =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7e37fafb51c94c65

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_get_offt@
foreign import ccall unsafe "hs_bindgen_228ce3b7b66e47a3" hs_bindgen_228ce3b7b66e47a3 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURLM) -> CURLMinfo_offt -> (Ptr.Ptr Generated.Curl.Curl.Curl_off_t) -> IO CURLMcode))

{-# NOINLINE curl_multi_get_offt #-}
{-| __C declaration:__ @curl_multi_get_offt@

    __defined at:__ @multi.h:485:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_get_offt :: Ptr.FunPtr ((Ptr.Ptr CURLM) -> CURLMinfo_offt -> (Ptr.Ptr Generated.Curl.Curl.Curl_off_t) -> IO CURLMcode)
curl_multi_get_offt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_228ce3b7b66e47a3

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_pushheader_bynum@
foreign import ccall unsafe "hs_bindgen_284d41b4ca90f30e" hs_bindgen_284d41b4ca90f30e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_pushheaders) -> HsBindgen.Runtime.Prelude.CSize -> IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE curl_pushheader_bynum #-}
{-| __C declaration:__ @curl_pushheader_bynum@

    __defined at:__ @multi.h:504:19@

    __exported by:__ @curl\/curl.h@
-}
curl_pushheader_bynum :: Ptr.FunPtr ((Ptr.Ptr Curl_pushheaders) -> HsBindgen.Runtime.Prelude.CSize -> IO (Ptr.Ptr FC.CChar))
curl_pushheader_bynum =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_284d41b4ca90f30e

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_pushheader_byname@
foreign import ccall unsafe "hs_bindgen_abb1b41f348671c4" hs_bindgen_abb1b41f348671c4 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_pushheaders) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE curl_pushheader_byname #-}
{-| __C declaration:__ @curl_pushheader_byname@

    __defined at:__ @multi.h:506:19@

    __exported by:__ @curl\/curl.h@
-}
curl_pushheader_byname :: Ptr.FunPtr ((Ptr.Ptr Curl_pushheaders) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO (Ptr.Ptr FC.CChar))
curl_pushheader_byname =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_abb1b41f348671c4

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_waitfds@
foreign import ccall unsafe "hs_bindgen_5163188510dad346" hs_bindgen_5163188510dad346 ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURLM) -> (Ptr.Ptr Curl_waitfd) -> FC.CUInt -> (Ptr.Ptr FC.CUInt) -> IO CURLMcode))

{-# NOINLINE curl_multi_waitfds #-}
{-| __C declaration:__ @curl_multi_waitfds@

    __defined at:__ @multi.h:524:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_waitfds :: Ptr.FunPtr ((Ptr.Ptr CURLM) -> (Ptr.Ptr Curl_waitfd) -> FC.CUInt -> (Ptr.Ptr FC.CUInt) -> IO CURLMcode)
curl_multi_waitfds =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5163188510dad346

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_notify_disable@
foreign import ccall unsafe "hs_bindgen_8a386f6b66c7aaba" hs_bindgen_8a386f6b66c7aaba ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURLM) -> FC.CUInt -> IO CURLMcode))

{-# NOINLINE curl_multi_notify_disable #-}
{-| __C declaration:__ @curl_multi_notify_disable@

    __defined at:__ @multi.h:543:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_notify_disable :: Ptr.FunPtr ((Ptr.Ptr CURLM) -> FC.CUInt -> IO CURLMcode)
curl_multi_notify_disable =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8a386f6b66c7aaba

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_notify_enable@
foreign import ccall unsafe "hs_bindgen_b3a9c21c8b4178ba" hs_bindgen_b3a9c21c8b4178ba ::
     IO (Ptr.FunPtr ((Ptr.Ptr CURLM) -> FC.CUInt -> IO CURLMcode))

{-# NOINLINE curl_multi_notify_enable #-}
{-| __C declaration:__ @curl_multi_notify_enable@

    __defined at:__ @multi.h:546:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_notify_enable :: Ptr.FunPtr ((Ptr.Ptr CURLM) -> FC.CUInt -> IO CURLMcode)
curl_multi_notify_enable =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b3a9c21c8b4178ba
