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
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_init_ptr */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_dd3901b64517e4d5 (void)) (void)"
  , "{"
  , "  return &curl_multi_init;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_add_handle_ptr */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_b8d20e0795b4ca7b (void)) ("
  , "  void *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &curl_multi_add_handle;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_remove_handle_ptr */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_e51c12e590e818fc (void)) ("
  , "  void *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &curl_multi_remove_handle;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_fdset_ptr */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_70087d1f29dd3e81 (void)) ("
  , "  void *arg1,"
  , "  fd_set *arg2,"
  , "  fd_set *arg3,"
  , "  fd_set *arg4,"
  , "  signed int *arg5"
  , ")"
  , "{"
  , "  return &curl_multi_fdset;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_wait_ptr */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_285208b865fffa5b (void)) ("
  , "  void *arg1,"
  , "  struct curl_waitfd arg2[],"
  , "  unsigned int arg3,"
  , "  signed int arg4,"
  , "  signed int *arg5"
  , ")"
  , "{"
  , "  return &curl_multi_wait;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_poll_ptr */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_1bda14caefa11900 (void)) ("
  , "  void *arg1,"
  , "  struct curl_waitfd arg2[],"
  , "  unsigned int arg3,"
  , "  signed int arg4,"
  , "  signed int *arg5"
  , ")"
  , "{"
  , "  return &curl_multi_poll;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_wakeup_ptr */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_ee10d8c84be7b3fe (void)) ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return &curl_multi_wakeup;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_perform_ptr */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_14a125b52af81132 (void)) ("
  , "  void *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return &curl_multi_perform;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_cleanup_ptr */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_d47f54d358bced02 (void)) ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return &curl_multi_cleanup;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_info_read_ptr */"
  , "__attribute__ ((const))"
  , "CURLMsg *(*hs_bindgen_15dd37547a2535a0 (void)) ("
  , "  void *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return &curl_multi_info_read;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_strerror_ptr */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_710468d35f607127 (void)) ("
  , "  CURLMcode arg1"
  , ")"
  , "{"
  , "  return &curl_multi_strerror;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_socket_action_ptr */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_155ec4260acf0c91 (void)) ("
  , "  void *arg1,"
  , "  curl_socket_t arg2,"
  , "  signed int arg3,"
  , "  signed int *arg4"
  , ")"
  , "{"
  , "  return &curl_multi_socket_action;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_timeout_ptr */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_e989d72cd06fe700 (void)) ("
  , "  void *arg1,"
  , "  signed long *arg2"
  , ")"
  , "{"
  , "  return &curl_multi_timeout;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_assign_ptr */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_eada4e2798b72d8c (void)) ("
  , "  void *arg1,"
  , "  curl_socket_t arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &curl_multi_assign;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_get_handles_ptr */"
  , "__attribute__ ((const))"
  , "void **(*hs_bindgen_5585760bc5a80f7a (void)) ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return &curl_multi_get_handles;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_get_offt_ptr */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_a04013fffe387b21 (void)) ("
  , "  void *arg1,"
  , "  CURLMinfo_offt arg2,"
  , "  curl_off_t *arg3"
  , ")"
  , "{"
  , "  return &curl_multi_get_offt;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_pushheader_bynum_ptr */"
  , "__attribute__ ((const))"
  , "char *(*hs_bindgen_78f0278359f0ba83 (void)) ("
  , "  struct curl_pushheaders *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &curl_pushheader_bynum;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_pushheader_byname_ptr */"
  , "__attribute__ ((const))"
  , "char *(*hs_bindgen_b5949b3d7874a6ec (void)) ("
  , "  struct curl_pushheaders *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &curl_pushheader_byname;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_waitfds_ptr */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_f396ffd54bc568cc (void)) ("
  , "  void *arg1,"
  , "  struct curl_waitfd *arg2,"
  , "  unsigned int arg3,"
  , "  unsigned int *arg4"
  , ")"
  , "{"
  , "  return &curl_multi_waitfds;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_notify_disable_ptr */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_bb641f0ca3cd3686 (void)) ("
  , "  void *arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return &curl_multi_notify_disable;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_notify_enable_ptr */"
  , "__attribute__ ((const))"
  , "CURLMcode (*hs_bindgen_92fab89caae2237c (void)) ("
  , "  void *arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return &curl_multi_notify_enable;"
  , "}"
  ]))

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_init_ptr@
foreign import ccall unsafe "hs_bindgen_dd3901b64517e4d5" hs_bindgen_dd3901b64517e4d5 ::
     IO (Ptr.FunPtr (IO (Ptr.Ptr Void)))

{-# NOINLINE curl_multi_init_ptr #-}

{-| __C declaration:__ @curl_multi_init@

    __defined at:__ @multi.h:126:19@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_init_ptr :: Ptr.FunPtr (IO (Ptr.Ptr Void))
curl_multi_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dd3901b64517e4d5

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_add_handle_ptr@
foreign import ccall unsafe "hs_bindgen_b8d20e0795b4ca7b" hs_bindgen_b8d20e0795b4ca7b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr Void) -> IO CURLMcode))

{-# NOINLINE curl_multi_add_handle_ptr #-}

{-| __C declaration:__ @curl_multi_add_handle@

    __defined at:__ @multi.h:135:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_add_handle_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr Void) -> IO CURLMcode)
curl_multi_add_handle_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b8d20e0795b4ca7b

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_remove_handle_ptr@
foreign import ccall unsafe "hs_bindgen_e51c12e590e818fc" hs_bindgen_e51c12e590e818fc ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr Void) -> IO CURLMcode))

{-# NOINLINE curl_multi_remove_handle_ptr #-}

{-| __C declaration:__ @curl_multi_remove_handle@

    __defined at:__ @multi.h:145:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_remove_handle_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr Void) -> IO CURLMcode)
curl_multi_remove_handle_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e51c12e590e818fc

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_fdset_ptr@
foreign import ccall unsafe "hs_bindgen_70087d1f29dd3e81" hs_bindgen_70087d1f29dd3e81 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr Fd_set) -> (Ptr.Ptr Fd_set) -> (Ptr.Ptr Fd_set) -> (Ptr.Ptr FC.CInt) -> IO CURLMcode))

{-# NOINLINE curl_multi_fdset_ptr #-}

{-| __C declaration:__ @curl_multi_fdset@

    __defined at:__ @multi.h:157:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_fdset_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr Fd_set) -> (Ptr.Ptr Fd_set) -> (Ptr.Ptr Fd_set) -> (Ptr.Ptr FC.CInt) -> IO CURLMcode)
curl_multi_fdset_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_70087d1f29dd3e81

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_wait_ptr@
foreign import ccall unsafe "hs_bindgen_285208b865fffa5b" hs_bindgen_285208b865fffa5b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray Curl_waitfd) -> FC.CUInt -> FC.CInt -> (Ptr.Ptr FC.CInt) -> IO CURLMcode))

{-# NOINLINE curl_multi_wait_ptr #-}

{-| __C declaration:__ @curl_multi_wait@

    __defined at:__ @multi.h:171:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_wait_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray Curl_waitfd) -> FC.CUInt -> FC.CInt -> (Ptr.Ptr FC.CInt) -> IO CURLMcode)
curl_multi_wait_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_285208b865fffa5b

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_poll_ptr@
foreign import ccall unsafe "hs_bindgen_1bda14caefa11900" hs_bindgen_1bda14caefa11900 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray Curl_waitfd) -> FC.CUInt -> FC.CInt -> (Ptr.Ptr FC.CInt) -> IO CURLMcode))

{-# NOINLINE curl_multi_poll_ptr #-}

{-| __C declaration:__ @curl_multi_poll@

    __defined at:__ @multi.h:185:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_poll_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray Curl_waitfd) -> FC.CUInt -> FC.CInt -> (Ptr.Ptr FC.CInt) -> IO CURLMcode)
curl_multi_poll_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1bda14caefa11900

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_wakeup_ptr@
foreign import ccall unsafe "hs_bindgen_ee10d8c84be7b3fe" hs_bindgen_ee10d8c84be7b3fe ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> IO CURLMcode))

{-# NOINLINE curl_multi_wakeup_ptr #-}

{-| __C declaration:__ @curl_multi_wakeup@

    __defined at:__ @multi.h:198:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_wakeup_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> IO CURLMcode)
curl_multi_wakeup_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ee10d8c84be7b3fe

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_perform_ptr@
foreign import ccall unsafe "hs_bindgen_14a125b52af81132" hs_bindgen_14a125b52af81132 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr FC.CInt) -> IO CURLMcode))

{-# NOINLINE curl_multi_perform_ptr #-}

{-| __C declaration:__ @curl_multi_perform@

    __defined at:__ @multi.h:216:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_perform_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr FC.CInt) -> IO CURLMcode)
curl_multi_perform_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_14a125b52af81132

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_cleanup_ptr@
foreign import ccall unsafe "hs_bindgen_d47f54d358bced02" hs_bindgen_d47f54d358bced02 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> IO CURLMcode))

{-# NOINLINE curl_multi_cleanup_ptr #-}

{-| __C declaration:__ @curl_multi_cleanup@

    __defined at:__ @multi.h:229:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_cleanup_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> IO CURLMcode)
curl_multi_cleanup_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d47f54d358bced02

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_info_read_ptr@
foreign import ccall unsafe "hs_bindgen_15dd37547a2535a0" hs_bindgen_15dd37547a2535a0 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr FC.CInt) -> IO (Ptr.Ptr CURLMsg)))

{-# NOINLINE curl_multi_info_read_ptr #-}

{-| __C declaration:__ @curl_multi_info_read@

    __defined at:__ @multi.h:259:22@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_info_read_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr FC.CInt) -> IO (Ptr.Ptr CURLMsg))
curl_multi_info_read_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_15dd37547a2535a0

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_strerror_ptr@
foreign import ccall unsafe "hs_bindgen_710468d35f607127" hs_bindgen_710468d35f607127 ::
     IO (Ptr.FunPtr (CURLMcode -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE curl_multi_strerror_ptr #-}

{-| __C declaration:__ @curl_multi_strerror@

    __defined at:__ @multi.h:271:25@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_strerror_ptr :: Ptr.FunPtr (CURLMcode -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
curl_multi_strerror_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_710468d35f607127

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_socket_action_ptr@
foreign import ccall unsafe "hs_bindgen_155ec4260acf0c91" hs_bindgen_155ec4260acf0c91 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> Generated.Curl.Curl.Curl_socket_t -> FC.CInt -> (Ptr.Ptr FC.CInt) -> IO CURLMcode))

{-# NOINLINE curl_multi_socket_action_ptr #-}

{-| __C declaration:__ @curl_multi_socket_action@

    __defined at:__ @multi.h:319:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_socket_action_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> Generated.Curl.Curl.Curl_socket_t -> FC.CInt -> (Ptr.Ptr FC.CInt) -> IO CURLMcode)
curl_multi_socket_action_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_155ec4260acf0c91

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_timeout_ptr@
foreign import ccall unsafe "hs_bindgen_e989d72cd06fe700" hs_bindgen_e989d72cd06fe700 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr FC.CLong) -> IO CURLMcode))

{-# NOINLINE curl_multi_timeout_ptr #-}

{-| __C declaration:__ @curl_multi_timeout@

    __defined at:__ @multi.h:343:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_timeout_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr FC.CLong) -> IO CURLMcode)
curl_multi_timeout_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e989d72cd06fe700

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_assign_ptr@
foreign import ccall unsafe "hs_bindgen_eada4e2798b72d8c" hs_bindgen_eada4e2798b72d8c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> Generated.Curl.Curl.Curl_socket_t -> (Ptr.Ptr Void) -> IO CURLMcode))

{-# NOINLINE curl_multi_assign_ptr #-}

{-| __C declaration:__ @curl_multi_assign@

    __defined at:__ @multi.h:441:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_assign_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> Generated.Curl.Curl.Curl_socket_t -> (Ptr.Ptr Void) -> IO CURLMcode)
curl_multi_assign_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_eada4e2798b72d8c

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_get_handles_ptr@
foreign import ccall unsafe "hs_bindgen_5585760bc5a80f7a" hs_bindgen_5585760bc5a80f7a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> IO (Ptr.Ptr (Ptr.Ptr Void))))

{-# NOINLINE curl_multi_get_handles_ptr #-}

{-| __C declaration:__ @curl_multi_get_handles@

    __defined at:__ @multi.h:454:20@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_get_handles_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> IO (Ptr.Ptr (Ptr.Ptr Void)))
curl_multi_get_handles_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5585760bc5a80f7a

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_get_offt_ptr@
foreign import ccall unsafe "hs_bindgen_a04013fffe387b21" hs_bindgen_a04013fffe387b21 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> CURLMinfo_offt -> (Ptr.Ptr Generated.Curl.Curl.Curl_off_t) -> IO CURLMcode))

{-# NOINLINE curl_multi_get_offt_ptr #-}

{-| __C declaration:__ @curl_multi_get_offt@

    __defined at:__ @multi.h:484:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_get_offt_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> CURLMinfo_offt -> (Ptr.Ptr Generated.Curl.Curl.Curl_off_t) -> IO CURLMcode)
curl_multi_get_offt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a04013fffe387b21

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_pushheader_bynum_ptr@
foreign import ccall unsafe "hs_bindgen_78f0278359f0ba83" hs_bindgen_78f0278359f0ba83 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_pushheaders) -> HsBindgen.Runtime.Prelude.CSize -> IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE curl_pushheader_bynum_ptr #-}

{-| __C declaration:__ @curl_pushheader_bynum@

    __defined at:__ @multi.h:503:19@

    __exported by:__ @curl\/curl.h@
-}
curl_pushheader_bynum_ptr :: Ptr.FunPtr ((Ptr.Ptr Curl_pushheaders) -> HsBindgen.Runtime.Prelude.CSize -> IO (Ptr.Ptr FC.CChar))
curl_pushheader_bynum_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_78f0278359f0ba83

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_pushheader_byname_ptr@
foreign import ccall unsafe "hs_bindgen_b5949b3d7874a6ec" hs_bindgen_b5949b3d7874a6ec ::
     IO (Ptr.FunPtr ((Ptr.Ptr Curl_pushheaders) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE curl_pushheader_byname_ptr #-}

{-| __C declaration:__ @curl_pushheader_byname@

    __defined at:__ @multi.h:505:19@

    __exported by:__ @curl\/curl.h@
-}
curl_pushheader_byname_ptr :: Ptr.FunPtr ((Ptr.Ptr Curl_pushheaders) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO (Ptr.Ptr FC.CChar))
curl_pushheader_byname_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b5949b3d7874a6ec

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_waitfds_ptr@
foreign import ccall unsafe "hs_bindgen_f396ffd54bc568cc" hs_bindgen_f396ffd54bc568cc ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr Curl_waitfd) -> FC.CUInt -> (Ptr.Ptr FC.CUInt) -> IO CURLMcode))

{-# NOINLINE curl_multi_waitfds_ptr #-}

{-| __C declaration:__ @curl_multi_waitfds@

    __defined at:__ @multi.h:523:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_waitfds_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr Curl_waitfd) -> FC.CUInt -> (Ptr.Ptr FC.CUInt) -> IO CURLMcode)
curl_multi_waitfds_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f396ffd54bc568cc

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_notify_disable_ptr@
foreign import ccall unsafe "hs_bindgen_bb641f0ca3cd3686" hs_bindgen_bb641f0ca3cd3686 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> FC.CUInt -> IO CURLMcode))

{-# NOINLINE curl_multi_notify_disable_ptr #-}

{-| __C declaration:__ @curl_multi_notify_disable@

    __defined at:__ @multi.h:542:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_notify_disable_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> FC.CUInt -> IO CURLMcode)
curl_multi_notify_disable_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bb641f0ca3cd3686

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_get_curl_multi_notify_enable_ptr@
foreign import ccall unsafe "hs_bindgen_92fab89caae2237c" hs_bindgen_92fab89caae2237c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> FC.CUInt -> IO CURLMcode))

{-# NOINLINE curl_multi_notify_enable_ptr #-}

{-| __C declaration:__ @curl_multi_notify_enable@

    __defined at:__ @multi.h:545:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_notify_enable_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> FC.CUInt -> IO CURLMcode)
curl_multi_notify_enable_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_92fab89caae2237c
