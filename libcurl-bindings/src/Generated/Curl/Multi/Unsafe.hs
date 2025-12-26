{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Curl.Multi.Unsafe where

import qualified Foreign.C as FC
import qualified GHC.Ptr as Ptr
import qualified Generated.Curl.Curl
import qualified HsBindgen.Runtime.ConstPtr
import qualified HsBindgen.Runtime.Prelude
import Data.Void (Void)
import Generated.Curl.Multi
import Prelude (IO)

$(HsBindgen.Runtime.Prelude.addCSource (HsBindgen.Runtime.Prelude.unlines
  [ "#include <curl/curl.h>"
  , "void *hs_bindgen_5210dec81be6d9a1 (void)"
  , "{"
  , "  return curl_multi_init();"
  , "}"
  , "CURLMcode hs_bindgen_149e44641ed2cace ("
  , "  void *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return curl_multi_add_handle(arg1, arg2);"
  , "}"
  , "CURLMcode hs_bindgen_4838146363a63a09 ("
  , "  void *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return curl_multi_remove_handle(arg1, arg2);"
  , "}"
  , "CURLMcode hs_bindgen_62d32c40b58de7f4 ("
  , "  void *arg1,"
  , "  fd_set *arg2,"
  , "  fd_set *arg3,"
  , "  fd_set *arg4,"
  , "  signed int *arg5"
  , ")"
  , "{"
  , "  return curl_multi_fdset(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "CURLMcode hs_bindgen_c31556a5b58e7bfa ("
  , "  void *arg1,"
  , "  struct curl_waitfd *arg2,"
  , "  unsigned int arg3,"
  , "  signed int arg4,"
  , "  signed int *arg5"
  , ")"
  , "{"
  , "  return curl_multi_wait(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "CURLMcode hs_bindgen_8377090fc27f1287 ("
  , "  void *arg1,"
  , "  struct curl_waitfd *arg2,"
  , "  unsigned int arg3,"
  , "  signed int arg4,"
  , "  signed int *arg5"
  , ")"
  , "{"
  , "  return curl_multi_poll(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "CURLMcode hs_bindgen_a834d0eb4209e3eb ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return curl_multi_wakeup(arg1);"
  , "}"
  , "CURLMcode hs_bindgen_9526d1734b175803 ("
  , "  void *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return curl_multi_perform(arg1, arg2);"
  , "}"
  , "CURLMcode hs_bindgen_9d431a9e505fe6b2 ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return curl_multi_cleanup(arg1);"
  , "}"
  , "CURLMsg *hs_bindgen_c1b821ff46a0d432 ("
  , "  void *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return curl_multi_info_read(arg1, arg2);"
  , "}"
  , "char const *hs_bindgen_dd78b544d9e86c30 ("
  , "  CURLMcode arg1"
  , ")"
  , "{"
  , "  return curl_multi_strerror(arg1);"
  , "}"
  , "CURLMcode hs_bindgen_975ee8d3f3d351c4 ("
  , "  void *arg1,"
  , "  curl_socket_t arg2,"
  , "  signed int arg3,"
  , "  signed int *arg4"
  , ")"
  , "{"
  , "  return curl_multi_socket_action(arg1, arg2, arg3, arg4);"
  , "}"
  , "CURLMcode hs_bindgen_a76c5716c816626d ("
  , "  void *arg1,"
  , "  signed long *arg2"
  , ")"
  , "{"
  , "  return curl_multi_timeout(arg1, arg2);"
  , "}"
  , "CURLMcode hs_bindgen_5b8298ba25ec5b8c ("
  , "  void *arg1,"
  , "  curl_socket_t arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return curl_multi_assign(arg1, arg2, arg3);"
  , "}"
  , "void **hs_bindgen_e1886d9409e31fa4 ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return curl_multi_get_handles(arg1);"
  , "}"
  , "CURLMcode hs_bindgen_07d8ed366707171f ("
  , "  void *arg1,"
  , "  CURLMinfo_offt arg2,"
  , "  curl_off_t *arg3"
  , ")"
  , "{"
  , "  return curl_multi_get_offt(arg1, arg2, arg3);"
  , "}"
  , "char *hs_bindgen_b892dc9afa0c386c ("
  , "  struct curl_pushheaders *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return curl_pushheader_bynum(arg1, arg2);"
  , "}"
  , "char *hs_bindgen_e8233069b0aaffd6 ("
  , "  struct curl_pushheaders *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return curl_pushheader_byname(arg1, arg2);"
  , "}"
  , "CURLMcode hs_bindgen_6c2631cb96323bff ("
  , "  void *arg1,"
  , "  struct curl_waitfd *arg2,"
  , "  unsigned int arg3,"
  , "  unsigned int *arg4"
  , ")"
  , "{"
  , "  return curl_multi_waitfds(arg1, arg2, arg3, arg4);"
  , "}"
  , "CURLMcode hs_bindgen_00a2aacfbe929422 ("
  , "  void *arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return curl_multi_notify_disable(arg1, arg2);"
  , "}"
  , "CURLMcode hs_bindgen_2bc85ea870c79691 ("
  , "  void *arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return curl_multi_notify_enable(arg1, arg2);"
  , "}"
  ]))

{-| __C declaration:__ @curl_multi_init@

    __defined at:__ @multi.h:126:19@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_init@
-}
foreign import ccall unsafe "hs_bindgen_5210dec81be6d9a1" curl_multi_init ::
     IO (Ptr.Ptr Void)

{-| __C declaration:__ @curl_multi_add_handle@

    __defined at:__ @multi.h:135:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_add_handle@
-}
foreign import ccall unsafe "hs_bindgen_149e44641ed2cace" curl_multi_add_handle ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> Ptr.Ptr Void
     -- ^ __C declaration:__ @curl_handle@
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_remove_handle@

    __defined at:__ @multi.h:145:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_remove_handle@
-}
foreign import ccall unsafe "hs_bindgen_4838146363a63a09" curl_multi_remove_handle ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> Ptr.Ptr Void
     -- ^ __C declaration:__ @curl_handle@
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_fdset@

    __defined at:__ @multi.h:157:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_fdset@
-}
foreign import ccall unsafe "hs_bindgen_62d32c40b58de7f4" curl_multi_fdset ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> Ptr.Ptr Fd_set
     -- ^ __C declaration:__ @read_fd_set@
  -> Ptr.Ptr Fd_set
     -- ^ __C declaration:__ @write_fd_set@
  -> Ptr.Ptr Fd_set
     -- ^ __C declaration:__ @exc_fd_set@
  -> Ptr.Ptr FC.CInt
     -- ^ __C declaration:__ @max_fd@
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_wait@

    __defined at:__ @multi.h:171:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_wait@
-}
foreign import ccall unsafe "hs_bindgen_c31556a5b58e7bfa" curl_multi_wait ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> Ptr.Ptr Curl_waitfd
     -- ^ __C declaration:__ @extra_fds@
  -> FC.CUInt
     -- ^ __C declaration:__ @extra_nfds@
  -> FC.CInt
     -- ^ __C declaration:__ @timeout_ms@
  -> Ptr.Ptr FC.CInt
     -- ^ __C declaration:__ @ret@
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_poll@

    __defined at:__ @multi.h:185:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_poll@
-}
foreign import ccall unsafe "hs_bindgen_8377090fc27f1287" curl_multi_poll ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> Ptr.Ptr Curl_waitfd
     -- ^ __C declaration:__ @extra_fds@
  -> FC.CUInt
     -- ^ __C declaration:__ @extra_nfds@
  -> FC.CInt
     -- ^ __C declaration:__ @timeout_ms@
  -> Ptr.Ptr FC.CInt
     -- ^ __C declaration:__ @ret@
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_wakeup@

    __defined at:__ @multi.h:198:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_wakeup@
-}
foreign import ccall unsafe "hs_bindgen_a834d0eb4209e3eb" curl_multi_wakeup ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_perform@

    __defined at:__ @multi.h:216:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_perform@
-}
foreign import ccall unsafe "hs_bindgen_9526d1734b175803" curl_multi_perform ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> Ptr.Ptr FC.CInt
     -- ^ __C declaration:__ @running_handles@
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_cleanup@

    __defined at:__ @multi.h:229:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_cleanup@
-}
foreign import ccall unsafe "hs_bindgen_9d431a9e505fe6b2" curl_multi_cleanup ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_info_read@

    __defined at:__ @multi.h:259:22@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_info_read@
-}
foreign import ccall unsafe "hs_bindgen_c1b821ff46a0d432" curl_multi_info_read ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> Ptr.Ptr FC.CInt
     -- ^ __C declaration:__ @msgs_in_queue@
  -> IO (Ptr.Ptr CURLMsg)

{-| __C declaration:__ @curl_multi_strerror@

    __defined at:__ @multi.h:271:25@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_strerror@
-}
foreign import ccall unsafe "hs_bindgen_dd78b544d9e86c30" curl_multi_strerror ::
     CURLMcode
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| __C declaration:__ @curl_multi_socket_action@

    __defined at:__ @multi.h:319:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_socket_action@
-}
foreign import ccall unsafe "hs_bindgen_975ee8d3f3d351c4" curl_multi_socket_action ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> Generated.Curl.Curl.Curl_socket_t
     -- ^ __C declaration:__ @s@
  -> FC.CInt
     -- ^ __C declaration:__ @ev_bitmask@
  -> Ptr.Ptr FC.CInt
     -- ^ __C declaration:__ @running_handles@
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_timeout@

    __defined at:__ @multi.h:343:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_timeout@
-}
foreign import ccall unsafe "hs_bindgen_a76c5716c816626d" curl_multi_timeout ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> Ptr.Ptr FC.CLong
     -- ^ __C declaration:__ @milliseconds@
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_assign@

    __defined at:__ @multi.h:439:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_assign@
-}
foreign import ccall unsafe "hs_bindgen_5b8298ba25ec5b8c" curl_multi_assign ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> Generated.Curl.Curl.Curl_socket_t
     -- ^ __C declaration:__ @sockfd@
  -> Ptr.Ptr Void
     -- ^ __C declaration:__ @sockp@
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_get_handles@

    __defined at:__ @multi.h:452:20@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_get_handles@
-}
foreign import ccall unsafe "hs_bindgen_e1886d9409e31fa4" curl_multi_get_handles ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> IO (Ptr.Ptr (Ptr.Ptr Void))

{-| __C declaration:__ @curl_multi_get_offt@

    __defined at:__ @multi.h:482:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_get_offt@
-}
foreign import ccall unsafe "hs_bindgen_07d8ed366707171f" curl_multi_get_offt ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> CURLMinfo_offt
     -- ^ __C declaration:__ @info@
  -> Ptr.Ptr Generated.Curl.Curl.Curl_off_t
     -- ^ __C declaration:__ @pvalue@
  -> IO CURLMcode

{-| __C declaration:__ @curl_pushheader_bynum@

    __defined at:__ @multi.h:501:19@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_pushheader_bynum@
-}
foreign import ccall unsafe "hs_bindgen_b892dc9afa0c386c" curl_pushheader_bynum ::
     Ptr.Ptr Curl_pushheaders
     -- ^ __C declaration:__ @h@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @num@
  -> IO (Ptr.Ptr FC.CChar)

{-| __C declaration:__ @curl_pushheader_byname@

    __defined at:__ @multi.h:503:19@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_pushheader_byname@
-}
foreign import ccall unsafe "hs_bindgen_e8233069b0aaffd6" curl_pushheader_byname ::
     Ptr.Ptr Curl_pushheaders
     -- ^ __C declaration:__ @h@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @name@
  -> IO (Ptr.Ptr FC.CChar)

{-| __C declaration:__ @curl_multi_waitfds@

    __defined at:__ @multi.h:521:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_waitfds@
-}
foreign import ccall unsafe "hs_bindgen_6c2631cb96323bff" curl_multi_waitfds ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi@
  -> Ptr.Ptr Curl_waitfd
     -- ^ __C declaration:__ @ufds@
  -> FC.CUInt
     -- ^ __C declaration:__ @size@
  -> Ptr.Ptr FC.CUInt
     -- ^ __C declaration:__ @fd_count@
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_notify_disable@

    __defined at:__ @multi.h:540:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_notify_disable@
-}
foreign import ccall unsafe "hs_bindgen_00a2aacfbe929422" curl_multi_notify_disable ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi@
  -> FC.CUInt
     -- ^ __C declaration:__ @notification@
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_notify_enable@

    __defined at:__ @multi.h:543:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_notify_enable@
-}
foreign import ccall unsafe "hs_bindgen_2bc85ea870c79691" curl_multi_notify_enable ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi@
  -> FC.CUInt
     -- ^ __C declaration:__ @notification@
  -> IO CURLMcode
