{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Curl.Easy.FunPtr where

import qualified GHC.IO.Unsafe
import qualified GHC.Ptr as Ptr
import qualified Generated.Curl.Curl
import qualified HsBindgen.Runtime.ConstPtr
import qualified HsBindgen.Runtime.Prelude
import Data.Void (Void)
import Prelude (IO)

$(HsBindgen.Runtime.Prelude.addCSource (HsBindgen.Runtime.Prelude.unlines
  [ "#include <curl/curl.h>"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_init_ptr */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_489cd23c1ac69347 (void)) (void)"
  , "{"
  , "  return &curl_easy_init;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_perform_ptr */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_895eed89f51a140f (void)) ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return &curl_easy_perform;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_cleanup_ptr */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b9d1d9aee006116f (void)) ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return &curl_easy_cleanup;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_duphandle_ptr */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_bc8b8f6170a8e608 (void)) ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return &curl_easy_duphandle;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_reset_ptr */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b1de928a8d69e0fd (void)) ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return &curl_easy_reset;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_recv_ptr */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_dc612429633877aa (void)) ("
  , "  void *arg1,"
  , "  void *arg2,"
  , "  size_t arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &curl_easy_recv;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_send_ptr */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_a215a1dbd559b77c (void)) ("
  , "  void *arg1,"
  , "  void const *arg2,"
  , "  size_t arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &curl_easy_send;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_upkeep_ptr */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_7a5b2abec72e0555 (void)) ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return &curl_easy_upkeep;"
  , "}"
  ]))

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_init_ptr@
foreign import ccall unsafe "hs_bindgen_489cd23c1ac69347" hs_bindgen_489cd23c1ac69347 ::
     IO (Ptr.FunPtr (IO (Ptr.Ptr Void)))

{-# NOINLINE curl_easy_init_ptr #-}

{-| __C declaration:__ @curl_easy_init@

    __defined at:__ @easy.h:41:19@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_init_ptr :: Ptr.FunPtr (IO (Ptr.Ptr Void))
curl_easy_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_489cd23c1ac69347

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_perform_ptr@
foreign import ccall unsafe "hs_bindgen_895eed89f51a140f" hs_bindgen_895eed89f51a140f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> IO Generated.Curl.Curl.CURLcode))

{-# NOINLINE curl_easy_perform_ptr #-}

{-| __C declaration:__ @curl_easy_perform@

    __defined at:__ @easy.h:42:22@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_perform_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> IO Generated.Curl.Curl.CURLcode)
curl_easy_perform_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_895eed89f51a140f

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_cleanup_ptr@
foreign import ccall unsafe "hs_bindgen_b9d1d9aee006116f" hs_bindgen_b9d1d9aee006116f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> IO ()))

{-# NOINLINE curl_easy_cleanup_ptr #-}

{-| __C declaration:__ @curl_easy_cleanup@

    __defined at:__ @easy.h:43:18@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_cleanup_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> IO ())
curl_easy_cleanup_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b9d1d9aee006116f

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_duphandle_ptr@
foreign import ccall unsafe "hs_bindgen_bc8b8f6170a8e608" hs_bindgen_bc8b8f6170a8e608 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> IO (Ptr.Ptr Void)))

{-# NOINLINE curl_easy_duphandle_ptr #-}

{-| __C declaration:__ @curl_easy_duphandle@

    __defined at:__ @easy.h:72:19@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_duphandle_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> IO (Ptr.Ptr Void))
curl_easy_duphandle_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bc8b8f6170a8e608

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_reset_ptr@
foreign import ccall unsafe "hs_bindgen_b1de928a8d69e0fd" hs_bindgen_b1de928a8d69e0fd ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> IO ()))

{-# NOINLINE curl_easy_reset_ptr #-}

{-| __C declaration:__ @curl_easy_reset@

    __defined at:__ @easy.h:85:18@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_reset_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> IO ())
curl_easy_reset_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b1de928a8d69e0fd

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_recv_ptr@
foreign import ccall unsafe "hs_bindgen_dc612429633877aa" hs_bindgen_dc612429633877aa ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO Generated.Curl.Curl.CURLcode))

{-# NOINLINE curl_easy_recv_ptr #-}

{-| __C declaration:__ @curl_easy_recv@

    __defined at:__ @easy.h:95:22@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_recv_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO Generated.Curl.Curl.CURLcode)
curl_easy_recv_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dc612429633877aa

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_send_ptr@
foreign import ccall unsafe "hs_bindgen_a215a1dbd559b77c" hs_bindgen_a215a1dbd559b77c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.ConstPtr.ConstPtr Void) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO Generated.Curl.Curl.CURLcode))

{-# NOINLINE curl_easy_send_ptr #-}

{-| __C declaration:__ @curl_easy_send@

    __defined at:__ @easy.h:106:22@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_send_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.ConstPtr.ConstPtr Void) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO Generated.Curl.Curl.CURLcode)
curl_easy_send_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a215a1dbd559b77c

-- | __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_upkeep_ptr@
foreign import ccall unsafe "hs_bindgen_7a5b2abec72e0555" hs_bindgen_7a5b2abec72e0555 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> IO Generated.Curl.Curl.CURLcode))

{-# NOINLINE curl_easy_upkeep_ptr #-}

{-| __C declaration:__ @curl_easy_upkeep@

    __defined at:__ @easy.h:117:22@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_upkeep_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> IO Generated.Curl.Curl.CURLcode)
curl_easy_upkeep_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7a5b2abec72e0555
