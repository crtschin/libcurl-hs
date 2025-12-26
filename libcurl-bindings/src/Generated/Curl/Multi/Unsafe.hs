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
  , "CURLM *hs_bindgen_5210dec81be6d9a1 (void)"
  , "{"
  , "  return curl_multi_init();"
  , "}"
  , "CURLMcode hs_bindgen_149e44641ed2cace ("
  , "  CURLM *arg1,"
  , "  CURL *arg2"
  , ")"
  , "{"
  , "  return curl_multi_add_handle(arg1, arg2);"
  , "}"
  , "CURLMcode hs_bindgen_4838146363a63a09 ("
  , "  CURLM *arg1,"
  , "  CURL *arg2"
  , ")"
  , "{"
  , "  return curl_multi_remove_handle(arg1, arg2);"
  , "}"
  , "CURLMcode hs_bindgen_62d32c40b58de7f4 ("
  , "  CURLM *arg1,"
  , "  fd_set *arg2,"
  , "  fd_set *arg3,"
  , "  fd_set *arg4,"
  , "  signed int *arg5"
  , ")"
  , "{"
  , "  return curl_multi_fdset(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "CURLMcode hs_bindgen_c31556a5b58e7bfa ("
  , "  CURLM *arg1,"
  , "  struct curl_waitfd *arg2,"
  , "  unsigned int arg3,"
  , "  signed int arg4,"
  , "  signed int *arg5"
  , ")"
  , "{"
  , "  return curl_multi_wait(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "CURLMcode hs_bindgen_8377090fc27f1287 ("
  , "  CURLM *arg1,"
  , "  struct curl_waitfd *arg2,"
  , "  unsigned int arg3,"
  , "  signed int arg4,"
  , "  signed int *arg5"
  , ")"
  , "{"
  , "  return curl_multi_poll(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "CURLMcode hs_bindgen_a834d0eb4209e3eb ("
  , "  CURLM *arg1"
  , ")"
  , "{"
  , "  return curl_multi_wakeup(arg1);"
  , "}"
  , "CURLMcode hs_bindgen_9526d1734b175803 ("
  , "  CURLM *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return curl_multi_perform(arg1, arg2);"
  , "}"
  , "CURLMcode hs_bindgen_9d431a9e505fe6b2 ("
  , "  CURLM *arg1"
  , ")"
  , "{"
  , "  return curl_multi_cleanup(arg1);"
  , "}"
  , "CURLMsg *hs_bindgen_c1b821ff46a0d432 ("
  , "  CURLM *arg1,"
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
  , "  CURLM *arg1,"
  , "  curl_socket_t arg2,"
  , "  signed int arg3,"
  , "  signed int *arg4"
  , ")"
  , "{"
  , "  return curl_multi_socket_action(arg1, arg2, arg3, arg4);"
  , "}"
  , "CURLMcode hs_bindgen_a76c5716c816626d ("
  , "  CURLM *arg1,"
  , "  signed long *arg2"
  , ")"
  , "{"
  , "  return curl_multi_timeout(arg1, arg2);"
  , "}"
  , "CURLMcode hs_bindgen_5b8298ba25ec5b8c ("
  , "  CURLM *arg1,"
  , "  curl_socket_t arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return curl_multi_assign(arg1, arg2, arg3);"
  , "}"
  , "CURL **hs_bindgen_e1886d9409e31fa4 ("
  , "  CURLM *arg1"
  , ")"
  , "{"
  , "  return curl_multi_get_handles(arg1);"
  , "}"
  , "CURLMcode hs_bindgen_07d8ed366707171f ("
  , "  CURLM *arg1,"
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
  , "  CURLM *arg1,"
  , "  struct curl_waitfd *arg2,"
  , "  unsigned int arg3,"
  , "  unsigned int *arg4"
  , ")"
  , "{"
  , "  return curl_multi_waitfds(arg1, arg2, arg3, arg4);"
  , "}"
  , "CURLMcode hs_bindgen_00a2aacfbe929422 ("
  , "  CURLM *arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return curl_multi_notify_disable(arg1, arg2);"
  , "}"
  , "CURLMcode hs_bindgen_2bc85ea870c79691 ("
  , "  CURLM *arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return curl_multi_notify_enable(arg1, arg2);"
  , "}"
  ]))

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_init@
foreign import ccall unsafe "hs_bindgen_5210dec81be6d9a1" hs_bindgen_5210dec81be6d9a1 ::
     IO (Ptr.Ptr CURLM)

{-| __C declaration:__ @curl_multi_init@

    __defined at:__ @multi.h:127:20@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_init :: IO (Ptr.Ptr CURLM)
curl_multi_init = hs_bindgen_5210dec81be6d9a1

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_add_handle@
foreign import ccall unsafe "hs_bindgen_149e44641ed2cace" hs_bindgen_149e44641ed2cace ::
     Ptr.Ptr CURLM
  -> Ptr.Ptr Generated.Curl.Curl.CURL
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_add_handle@

    __defined at:__ @multi.h:136:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_add_handle ::
     Ptr.Ptr CURLM
     -- ^ __C declaration:__ @multi_handle@
  -> Ptr.Ptr Generated.Curl.Curl.CURL
     -- ^ __C declaration:__ @curl_handle@
  -> IO CURLMcode
curl_multi_add_handle = hs_bindgen_149e44641ed2cace

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_remove_handle@
foreign import ccall unsafe "hs_bindgen_4838146363a63a09" hs_bindgen_4838146363a63a09 ::
     Ptr.Ptr CURLM
  -> Ptr.Ptr Generated.Curl.Curl.CURL
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_remove_handle@

    __defined at:__ @multi.h:146:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_remove_handle ::
     Ptr.Ptr CURLM
     -- ^ __C declaration:__ @multi_handle@
  -> Ptr.Ptr Generated.Curl.Curl.CURL
     -- ^ __C declaration:__ @curl_handle@
  -> IO CURLMcode
curl_multi_remove_handle =
  hs_bindgen_4838146363a63a09

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_fdset@
foreign import ccall unsafe "hs_bindgen_62d32c40b58de7f4" hs_bindgen_62d32c40b58de7f4 ::
     Ptr.Ptr CURLM
  -> Ptr.Ptr Fd_set
  -> Ptr.Ptr Fd_set
  -> Ptr.Ptr Fd_set
  -> Ptr.Ptr FC.CInt
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_fdset@

    __defined at:__ @multi.h:158:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_fdset ::
     Ptr.Ptr CURLM
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
curl_multi_fdset = hs_bindgen_62d32c40b58de7f4

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_wait@
foreign import ccall unsafe "hs_bindgen_c31556a5b58e7bfa" hs_bindgen_c31556a5b58e7bfa ::
     Ptr.Ptr CURLM
  -> Ptr.Ptr Curl_waitfd
  -> FC.CUInt
  -> FC.CInt
  -> Ptr.Ptr FC.CInt
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_wait@

    __defined at:__ @multi.h:172:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_wait ::
     Ptr.Ptr CURLM
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
curl_multi_wait = hs_bindgen_c31556a5b58e7bfa

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_poll@
foreign import ccall unsafe "hs_bindgen_8377090fc27f1287" hs_bindgen_8377090fc27f1287 ::
     Ptr.Ptr CURLM
  -> Ptr.Ptr Curl_waitfd
  -> FC.CUInt
  -> FC.CInt
  -> Ptr.Ptr FC.CInt
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_poll@

    __defined at:__ @multi.h:186:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_poll ::
     Ptr.Ptr CURLM
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
curl_multi_poll = hs_bindgen_8377090fc27f1287

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_wakeup@
foreign import ccall unsafe "hs_bindgen_a834d0eb4209e3eb" hs_bindgen_a834d0eb4209e3eb ::
     Ptr.Ptr CURLM
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_wakeup@

    __defined at:__ @multi.h:199:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_wakeup ::
     Ptr.Ptr CURLM
     -- ^ __C declaration:__ @multi_handle@
  -> IO CURLMcode
curl_multi_wakeup = hs_bindgen_a834d0eb4209e3eb

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_perform@
foreign import ccall unsafe "hs_bindgen_9526d1734b175803" hs_bindgen_9526d1734b175803 ::
     Ptr.Ptr CURLM
  -> Ptr.Ptr FC.CInt
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_perform@

    __defined at:__ @multi.h:217:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_perform ::
     Ptr.Ptr CURLM
     -- ^ __C declaration:__ @multi_handle@
  -> Ptr.Ptr FC.CInt
     -- ^ __C declaration:__ @running_handles@
  -> IO CURLMcode
curl_multi_perform = hs_bindgen_9526d1734b175803

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_cleanup@
foreign import ccall unsafe "hs_bindgen_9d431a9e505fe6b2" hs_bindgen_9d431a9e505fe6b2 ::
     Ptr.Ptr CURLM
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_cleanup@

    __defined at:__ @multi.h:230:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_cleanup ::
     Ptr.Ptr CURLM
     -- ^ __C declaration:__ @multi_handle@
  -> IO CURLMcode
curl_multi_cleanup = hs_bindgen_9d431a9e505fe6b2

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_info_read@
foreign import ccall unsafe "hs_bindgen_c1b821ff46a0d432" hs_bindgen_c1b821ff46a0d432 ::
     Ptr.Ptr CURLM
  -> Ptr.Ptr FC.CInt
  -> IO (Ptr.Ptr CURLMsg)

{-| __C declaration:__ @curl_multi_info_read@

    __defined at:__ @multi.h:260:22@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_info_read ::
     Ptr.Ptr CURLM
     -- ^ __C declaration:__ @multi_handle@
  -> Ptr.Ptr FC.CInt
     -- ^ __C declaration:__ @msgs_in_queue@
  -> IO (Ptr.Ptr CURLMsg)
curl_multi_info_read = hs_bindgen_c1b821ff46a0d432

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_strerror@
foreign import ccall unsafe "hs_bindgen_dd78b544d9e86c30" hs_bindgen_dd78b544d9e86c30 ::
     CURLMcode
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| __C declaration:__ @curl_multi_strerror@

    __defined at:__ @multi.h:272:25@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_strerror ::
     CURLMcode
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)
curl_multi_strerror = hs_bindgen_dd78b544d9e86c30

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_socket_action@
foreign import ccall unsafe "hs_bindgen_975ee8d3f3d351c4" hs_bindgen_975ee8d3f3d351c4 ::
     Ptr.Ptr CURLM
  -> Generated.Curl.Curl.Curl_socket_t
  -> FC.CInt
  -> Ptr.Ptr FC.CInt
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_socket_action@

    __defined at:__ @multi.h:320:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_socket_action ::
     Ptr.Ptr CURLM
     -- ^ __C declaration:__ @multi_handle@
  -> Generated.Curl.Curl.Curl_socket_t
     -- ^ __C declaration:__ @s@
  -> FC.CInt
     -- ^ __C declaration:__ @ev_bitmask@
  -> Ptr.Ptr FC.CInt
     -- ^ __C declaration:__ @running_handles@
  -> IO CURLMcode
curl_multi_socket_action =
  hs_bindgen_975ee8d3f3d351c4

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_timeout@
foreign import ccall unsafe "hs_bindgen_a76c5716c816626d" hs_bindgen_a76c5716c816626d ::
     Ptr.Ptr CURLM
  -> Ptr.Ptr FC.CLong
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_timeout@

    __defined at:__ @multi.h:344:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_timeout ::
     Ptr.Ptr CURLM
     -- ^ __C declaration:__ @multi_handle@
  -> Ptr.Ptr FC.CLong
     -- ^ __C declaration:__ @milliseconds@
  -> IO CURLMcode
curl_multi_timeout = hs_bindgen_a76c5716c816626d

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_assign@
foreign import ccall unsafe "hs_bindgen_5b8298ba25ec5b8c" hs_bindgen_5b8298ba25ec5b8c ::
     Ptr.Ptr CURLM
  -> Generated.Curl.Curl.Curl_socket_t
  -> Ptr.Ptr Void
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_assign@

    __defined at:__ @multi.h:442:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_assign ::
     Ptr.Ptr CURLM
     -- ^ __C declaration:__ @multi_handle@
  -> Generated.Curl.Curl.Curl_socket_t
     -- ^ __C declaration:__ @sockfd@
  -> Ptr.Ptr Void
     -- ^ __C declaration:__ @sockp@
  -> IO CURLMcode
curl_multi_assign = hs_bindgen_5b8298ba25ec5b8c

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_get_handles@
foreign import ccall unsafe "hs_bindgen_e1886d9409e31fa4" hs_bindgen_e1886d9409e31fa4 ::
     Ptr.Ptr CURLM
  -> IO (Ptr.Ptr (Ptr.Ptr Generated.Curl.Curl.CURL))

{-| __C declaration:__ @curl_multi_get_handles@

    __defined at:__ @multi.h:455:20@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_get_handles ::
     Ptr.Ptr CURLM
     -- ^ __C declaration:__ @multi_handle@
  -> IO (Ptr.Ptr (Ptr.Ptr Generated.Curl.Curl.CURL))
curl_multi_get_handles = hs_bindgen_e1886d9409e31fa4

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_get_offt@
foreign import ccall unsafe "hs_bindgen_07d8ed366707171f" hs_bindgen_07d8ed366707171f ::
     Ptr.Ptr CURLM
  -> CURLMinfo_offt
  -> Ptr.Ptr Generated.Curl.Curl.Curl_off_t
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_get_offt@

    __defined at:__ @multi.h:485:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_get_offt ::
     Ptr.Ptr CURLM
     -- ^ __C declaration:__ @multi_handle@
  -> CURLMinfo_offt
     -- ^ __C declaration:__ @info@
  -> Ptr.Ptr Generated.Curl.Curl.Curl_off_t
     -- ^ __C declaration:__ @pvalue@
  -> IO CURLMcode
curl_multi_get_offt = hs_bindgen_07d8ed366707171f

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_pushheader_bynum@
foreign import ccall unsafe "hs_bindgen_b892dc9afa0c386c" hs_bindgen_b892dc9afa0c386c ::
     Ptr.Ptr Curl_pushheaders
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO (Ptr.Ptr FC.CChar)

{-| __C declaration:__ @curl_pushheader_bynum@

    __defined at:__ @multi.h:504:19@

    __exported by:__ @curl\/curl.h@
-}
curl_pushheader_bynum ::
     Ptr.Ptr Curl_pushheaders
     -- ^ __C declaration:__ @h@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @num@
  -> IO (Ptr.Ptr FC.CChar)
curl_pushheader_bynum = hs_bindgen_b892dc9afa0c386c

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_pushheader_byname@
foreign import ccall unsafe "hs_bindgen_e8233069b0aaffd6" hs_bindgen_e8233069b0aaffd6 ::
     Ptr.Ptr Curl_pushheaders
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO (Ptr.Ptr FC.CChar)

{-| __C declaration:__ @curl_pushheader_byname@

    __defined at:__ @multi.h:506:19@

    __exported by:__ @curl\/curl.h@
-}
curl_pushheader_byname ::
     Ptr.Ptr Curl_pushheaders
     -- ^ __C declaration:__ @h@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @name@
  -> IO (Ptr.Ptr FC.CChar)
curl_pushheader_byname = hs_bindgen_e8233069b0aaffd6

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_waitfds@
foreign import ccall unsafe "hs_bindgen_6c2631cb96323bff" hs_bindgen_6c2631cb96323bff ::
     Ptr.Ptr CURLM
  -> Ptr.Ptr Curl_waitfd
  -> FC.CUInt
  -> Ptr.Ptr FC.CUInt
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_waitfds@

    __defined at:__ @multi.h:524:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_waitfds ::
     Ptr.Ptr CURLM
     -- ^ __C declaration:__ @multi@
  -> Ptr.Ptr Curl_waitfd
     -- ^ __C declaration:__ @ufds@
  -> FC.CUInt
     -- ^ __C declaration:__ @size@
  -> Ptr.Ptr FC.CUInt
     -- ^ __C declaration:__ @fd_count@
  -> IO CURLMcode
curl_multi_waitfds = hs_bindgen_6c2631cb96323bff

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_notify_disable@
foreign import ccall unsafe "hs_bindgen_00a2aacfbe929422" hs_bindgen_00a2aacfbe929422 ::
     Ptr.Ptr CURLM
  -> FC.CUInt
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_notify_disable@

    __defined at:__ @multi.h:543:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_notify_disable ::
     Ptr.Ptr CURLM
     -- ^ __C declaration:__ @multi@
  -> FC.CUInt
     -- ^ __C declaration:__ @notification@
  -> IO CURLMcode
curl_multi_notify_disable =
  hs_bindgen_00a2aacfbe929422

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Multi_Unsafe_curl_multi_notify_enable@
foreign import ccall unsafe "hs_bindgen_2bc85ea870c79691" hs_bindgen_2bc85ea870c79691 ::
     Ptr.Ptr CURLM
  -> FC.CUInt
  -> IO CURLMcode

{-| __C declaration:__ @curl_multi_notify_enable@

    __defined at:__ @multi.h:546:23@

    __exported by:__ @curl\/curl.h@
-}
curl_multi_notify_enable ::
     Ptr.Ptr CURLM
     -- ^ __C declaration:__ @multi@
  -> FC.CUInt
     -- ^ __C declaration:__ @notification@
  -> IO CURLMcode
curl_multi_notify_enable =
  hs_bindgen_2bc85ea870c79691
