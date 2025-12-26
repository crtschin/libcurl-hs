{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Curl.Multi.Safe where

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
  , "void *hs_bindgen_7329291435952d70 (void)"
  , "{"
  , "  return curl_multi_init();"
  , "}"
  , "CURLMcode hs_bindgen_47a6c022aa083c39 ("
  , "  void *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return curl_multi_add_handle(arg1, arg2);"
  , "}"
  , "CURLMcode hs_bindgen_59bba00fa84bfa5b ("
  , "  void *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return curl_multi_remove_handle(arg1, arg2);"
  , "}"
  , "CURLMcode hs_bindgen_98ffdf2c89a81228 ("
  , "  void *arg1,"
  , "  fd_set *arg2,"
  , "  fd_set *arg3,"
  , "  fd_set *arg4,"
  , "  signed int *arg5"
  , ")"
  , "{"
  , "  return curl_multi_fdset(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "CURLMcode hs_bindgen_683480cdf314dc5b ("
  , "  void *arg1,"
  , "  struct curl_waitfd *arg2,"
  , "  unsigned int arg3,"
  , "  signed int arg4,"
  , "  signed int *arg5"
  , ")"
  , "{"
  , "  return curl_multi_wait(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "CURLMcode hs_bindgen_eb934a59cb92494d ("
  , "  void *arg1,"
  , "  struct curl_waitfd *arg2,"
  , "  unsigned int arg3,"
  , "  signed int arg4,"
  , "  signed int *arg5"
  , ")"
  , "{"
  , "  return curl_multi_poll(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "CURLMcode hs_bindgen_5d5fb615d922aad1 ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return curl_multi_wakeup(arg1);"
  , "}"
  , "CURLMcode hs_bindgen_181c90b03b9c2ea5 ("
  , "  void *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return curl_multi_perform(arg1, arg2);"
  , "}"
  , "CURLMcode hs_bindgen_07593b9d43c8b0bf ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return curl_multi_cleanup(arg1);"
  , "}"
  , "CURLMsg *hs_bindgen_63616c4718f2c667 ("
  , "  void *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return curl_multi_info_read(arg1, arg2);"
  , "}"
  , "char const *hs_bindgen_2e83dade820846fd ("
  , "  CURLMcode arg1"
  , ")"
  , "{"
  , "  return curl_multi_strerror(arg1);"
  , "}"
  , "CURLMcode hs_bindgen_3a00082516faec10 ("
  , "  void *arg1,"
  , "  curl_socket_t arg2,"
  , "  signed int arg3,"
  , "  signed int *arg4"
  , ")"
  , "{"
  , "  return curl_multi_socket_action(arg1, arg2, arg3, arg4);"
  , "}"
  , "CURLMcode hs_bindgen_9e478fabfb7277b7 ("
  , "  void *arg1,"
  , "  signed long *arg2"
  , ")"
  , "{"
  , "  return curl_multi_timeout(arg1, arg2);"
  , "}"
  , "CURLMcode hs_bindgen_1c0faedba39bc575 ("
  , "  void *arg1,"
  , "  curl_socket_t arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return curl_multi_assign(arg1, arg2, arg3);"
  , "}"
  , "void **hs_bindgen_43ed1670697661bf ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return curl_multi_get_handles(arg1);"
  , "}"
  , "CURLMcode hs_bindgen_dc066ef5bf093840 ("
  , "  void *arg1,"
  , "  CURLMinfo_offt arg2,"
  , "  curl_off_t *arg3"
  , ")"
  , "{"
  , "  return curl_multi_get_offt(arg1, arg2, arg3);"
  , "}"
  , "char *hs_bindgen_310d32f807c8fbb9 ("
  , "  struct curl_pushheaders *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return curl_pushheader_bynum(arg1, arg2);"
  , "}"
  , "char *hs_bindgen_6ef59be08c20b23e ("
  , "  struct curl_pushheaders *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return curl_pushheader_byname(arg1, arg2);"
  , "}"
  , "CURLMcode hs_bindgen_a8408c8881d63416 ("
  , "  void *arg1,"
  , "  struct curl_waitfd *arg2,"
  , "  unsigned int arg3,"
  , "  unsigned int *arg4"
  , ")"
  , "{"
  , "  return curl_multi_waitfds(arg1, arg2, arg3, arg4);"
  , "}"
  , "CURLMcode hs_bindgen_598aa3d2b2dd8f87 ("
  , "  void *arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return curl_multi_notify_disable(arg1, arg2);"
  , "}"
  , "CURLMcode hs_bindgen_af95132bac9fcc24 ("
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

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Safe_curl_multi_init@
-}
foreign import ccall safe "hs_bindgen_7329291435952d70" curl_multi_init ::
     IO (Ptr.Ptr Void)

{-| __C declaration:__ @curl_multi_add_handle@

    __defined at:__ @multi.h:135:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Safe_curl_multi_add_handle@
-}
foreign import ccall safe "hs_bindgen_47a6c022aa083c39" curl_multi_add_handle ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> Ptr.Ptr Void
     -- ^ __C declaration:__ @curl_handle@
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_remove_handle@

    __defined at:__ @multi.h:145:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Safe_curl_multi_remove_handle@
-}
foreign import ccall safe "hs_bindgen_59bba00fa84bfa5b" curl_multi_remove_handle ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> Ptr.Ptr Void
     -- ^ __C declaration:__ @curl_handle@
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_fdset@

    __defined at:__ @multi.h:157:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Safe_curl_multi_fdset@
-}
foreign import ccall safe "hs_bindgen_98ffdf2c89a81228" curl_multi_fdset ::
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

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Safe_curl_multi_wait@
-}
foreign import ccall safe "hs_bindgen_683480cdf314dc5b" curl_multi_wait ::
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

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Safe_curl_multi_poll@
-}
foreign import ccall safe "hs_bindgen_eb934a59cb92494d" curl_multi_poll ::
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

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Safe_curl_multi_wakeup@
-}
foreign import ccall safe "hs_bindgen_5d5fb615d922aad1" curl_multi_wakeup ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_perform@

    __defined at:__ @multi.h:216:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Safe_curl_multi_perform@
-}
foreign import ccall safe "hs_bindgen_181c90b03b9c2ea5" curl_multi_perform ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> Ptr.Ptr FC.CInt
     -- ^ __C declaration:__ @running_handles@
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_cleanup@

    __defined at:__ @multi.h:229:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Safe_curl_multi_cleanup@
-}
foreign import ccall safe "hs_bindgen_07593b9d43c8b0bf" curl_multi_cleanup ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_info_read@

    __defined at:__ @multi.h:259:22@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Safe_curl_multi_info_read@
-}
foreign import ccall safe "hs_bindgen_63616c4718f2c667" curl_multi_info_read ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> Ptr.Ptr FC.CInt
     -- ^ __C declaration:__ @msgs_in_queue@
  -> IO (Ptr.Ptr CURLMsg)

{-| __C declaration:__ @curl_multi_strerror@

    __defined at:__ @multi.h:271:25@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Safe_curl_multi_strerror@
-}
foreign import ccall safe "hs_bindgen_2e83dade820846fd" curl_multi_strerror ::
     CURLMcode
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| __C declaration:__ @curl_multi_socket_action@

    __defined at:__ @multi.h:319:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Safe_curl_multi_socket_action@
-}
foreign import ccall safe "hs_bindgen_3a00082516faec10" curl_multi_socket_action ::
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

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Safe_curl_multi_timeout@
-}
foreign import ccall safe "hs_bindgen_9e478fabfb7277b7" curl_multi_timeout ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> Ptr.Ptr FC.CLong
     -- ^ __C declaration:__ @milliseconds@
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_assign@

    __defined at:__ @multi.h:439:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Safe_curl_multi_assign@
-}
foreign import ccall safe "hs_bindgen_1c0faedba39bc575" curl_multi_assign ::
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

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Safe_curl_multi_get_handles@
-}
foreign import ccall safe "hs_bindgen_43ed1670697661bf" curl_multi_get_handles ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi_handle@
  -> IO (Ptr.Ptr (Ptr.Ptr Void))

{-| __C declaration:__ @curl_multi_get_offt@

    __defined at:__ @multi.h:482:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Safe_curl_multi_get_offt@
-}
foreign import ccall safe "hs_bindgen_dc066ef5bf093840" curl_multi_get_offt ::
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

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Safe_curl_pushheader_bynum@
-}
foreign import ccall safe "hs_bindgen_310d32f807c8fbb9" curl_pushheader_bynum ::
     Ptr.Ptr Curl_pushheaders
     -- ^ __C declaration:__ @h@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @num@
  -> IO (Ptr.Ptr FC.CChar)

{-| __C declaration:__ @curl_pushheader_byname@

    __defined at:__ @multi.h:503:19@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Safe_curl_pushheader_byname@
-}
foreign import ccall safe "hs_bindgen_6ef59be08c20b23e" curl_pushheader_byname ::
     Ptr.Ptr Curl_pushheaders
     -- ^ __C declaration:__ @h@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @name@
  -> IO (Ptr.Ptr FC.CChar)

{-| __C declaration:__ @curl_multi_waitfds@

    __defined at:__ @multi.h:521:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Safe_curl_multi_waitfds@
-}
foreign import ccall safe "hs_bindgen_a8408c8881d63416" curl_multi_waitfds ::
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

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Safe_curl_multi_notify_disable@
-}
foreign import ccall safe "hs_bindgen_598aa3d2b2dd8f87" curl_multi_notify_disable ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi@
  -> FC.CUInt
     -- ^ __C declaration:__ @notification@
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_notify_enable@

    __defined at:__ @multi.h:543:23@

    __exported by:__ @curl\/curl.h@

    __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Safe_curl_multi_notify_enable@
-}
foreign import ccall safe "hs_bindgen_af95132bac9fcc24" curl_multi_notify_enable ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @multi@
  -> FC.CUInt
     -- ^ __C declaration:__ @notification@
  -> IO CURLMcode
