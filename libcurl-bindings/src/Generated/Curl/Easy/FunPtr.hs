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
  , "/* org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_init */"
  , "__attribute__ ((const))"
  , "CURL *(*hs_bindgen_5af72bdb2b709046 (void)) (void)"
  , "{"
  , "  return &curl_easy_init;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_perform */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_d041bb466c3ef9bb (void)) ("
  , "  CURL *arg1"
  , ")"
  , "{"
  , "  return &curl_easy_perform;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_cleanup */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_87bda72bead5eaf4 (void)) ("
  , "  CURL *arg1"
  , ")"
  , "{"
  , "  return &curl_easy_cleanup;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_duphandle */"
  , "__attribute__ ((const))"
  , "CURL *(*hs_bindgen_19323d2f5fac52b4 (void)) ("
  , "  CURL *arg1"
  , ")"
  , "{"
  , "  return &curl_easy_duphandle;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_reset */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_499689204866c850 (void)) ("
  , "  CURL *arg1"
  , ")"
  , "{"
  , "  return &curl_easy_reset;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_recv */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_b867507cfdf79e08 (void)) ("
  , "  CURL *arg1,"
  , "  void *arg2,"
  , "  size_t arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &curl_easy_recv;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_send */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_69b382b2467a5344 (void)) ("
  , "  CURL *arg1,"
  , "  void const *arg2,"
  , "  size_t arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &curl_easy_send;"
  , "}"
  , "/* org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_upkeep */"
  , "__attribute__ ((const))"
  , "CURLcode (*hs_bindgen_8378dcd52db4e3d5 (void)) ("
  , "  CURL *arg1"
  , ")"
  , "{"
  , "  return &curl_easy_upkeep;"
  , "}"
  ]))

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_init@
foreign import ccall unsafe "hs_bindgen_5af72bdb2b709046" hs_bindgen_5af72bdb2b709046 ::
     IO (Ptr.FunPtr (IO (Ptr.Ptr Generated.Curl.Curl.CURL)))

{-# NOINLINE curl_easy_init #-}
{-| __C declaration:__ @curl_easy_init@

    __defined at:__ @easy.h:41:19@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_init :: Ptr.FunPtr (IO (Ptr.Ptr Generated.Curl.Curl.CURL))
curl_easy_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5af72bdb2b709046

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_perform@
foreign import ccall unsafe "hs_bindgen_d041bb466c3ef9bb" hs_bindgen_d041bb466c3ef9bb ::
     IO (Ptr.FunPtr ((Ptr.Ptr Generated.Curl.Curl.CURL) -> IO Generated.Curl.Curl.CURLcode))

{-# NOINLINE curl_easy_perform #-}
{-| __C declaration:__ @curl_easy_perform@

    __defined at:__ @easy.h:43:22@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_perform :: Ptr.FunPtr ((Ptr.Ptr Generated.Curl.Curl.CURL) -> IO Generated.Curl.Curl.CURLcode)
curl_easy_perform =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d041bb466c3ef9bb

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_cleanup@
foreign import ccall unsafe "hs_bindgen_87bda72bead5eaf4" hs_bindgen_87bda72bead5eaf4 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Generated.Curl.Curl.CURL) -> IO ()))

{-# NOINLINE curl_easy_cleanup #-}
{-| __C declaration:__ @curl_easy_cleanup@

    __defined at:__ @easy.h:44:18@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_cleanup :: Ptr.FunPtr ((Ptr.Ptr Generated.Curl.Curl.CURL) -> IO ())
curl_easy_cleanup =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_87bda72bead5eaf4

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_duphandle@
foreign import ccall unsafe "hs_bindgen_19323d2f5fac52b4" hs_bindgen_19323d2f5fac52b4 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Generated.Curl.Curl.CURL) -> IO (Ptr.Ptr Generated.Curl.Curl.CURL)))

{-# NOINLINE curl_easy_duphandle #-}
{-| __C declaration:__ @curl_easy_duphandle@

    __defined at:__ @easy.h:74:19@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_duphandle :: Ptr.FunPtr ((Ptr.Ptr Generated.Curl.Curl.CURL) -> IO (Ptr.Ptr Generated.Curl.Curl.CURL))
curl_easy_duphandle =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_19323d2f5fac52b4

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_reset@
foreign import ccall unsafe "hs_bindgen_499689204866c850" hs_bindgen_499689204866c850 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Generated.Curl.Curl.CURL) -> IO ()))

{-# NOINLINE curl_easy_reset #-}
{-| __C declaration:__ @curl_easy_reset@

    __defined at:__ @easy.h:87:18@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_reset :: Ptr.FunPtr ((Ptr.Ptr Generated.Curl.Curl.CURL) -> IO ())
curl_easy_reset =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_499689204866c850

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_recv@
foreign import ccall unsafe "hs_bindgen_b867507cfdf79e08" hs_bindgen_b867507cfdf79e08 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Generated.Curl.Curl.CURL) -> (Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO Generated.Curl.Curl.CURLcode))

{-# NOINLINE curl_easy_recv #-}
{-| __C declaration:__ @curl_easy_recv@

    __defined at:__ @easy.h:97:22@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_recv :: Ptr.FunPtr ((Ptr.Ptr Generated.Curl.Curl.CURL) -> (Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO Generated.Curl.Curl.CURLcode)
curl_easy_recv =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b867507cfdf79e08

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_send@
foreign import ccall unsafe "hs_bindgen_69b382b2467a5344" hs_bindgen_69b382b2467a5344 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Generated.Curl.Curl.CURL) -> (HsBindgen.Runtime.ConstPtr.ConstPtr Void) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO Generated.Curl.Curl.CURLcode))

{-# NOINLINE curl_easy_send #-}
{-| __C declaration:__ @curl_easy_send@

    __defined at:__ @easy.h:108:22@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_send :: Ptr.FunPtr ((Ptr.Ptr Generated.Curl.Curl.CURL) -> (HsBindgen.Runtime.ConstPtr.ConstPtr Void) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO Generated.Curl.Curl.CURLcode)
curl_easy_send =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_69b382b2467a5344

-- __unique:__ @org_libcurlbindgen_curl_Generated.Curl.Easy_get_curl_easy_upkeep@
foreign import ccall unsafe "hs_bindgen_8378dcd52db4e3d5" hs_bindgen_8378dcd52db4e3d5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Generated.Curl.Curl.CURL) -> IO Generated.Curl.Curl.CURLcode))

{-# NOINLINE curl_easy_upkeep #-}
{-| __C declaration:__ @curl_easy_upkeep@

    __defined at:__ @easy.h:119:22@

    __exported by:__ @curl\/curl.h@
-}
curl_easy_upkeep :: Ptr.FunPtr ((Ptr.Ptr Generated.Curl.Curl.CURL) -> IO Generated.Curl.Curl.CURLcode)
curl_easy_upkeep =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8378dcd52db4e3d5
