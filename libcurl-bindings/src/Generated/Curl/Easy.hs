{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}

module Generated.Curl.Easy where

import qualified Data.Proxy
import qualified Foreign as F
import qualified Foreign.C as FC
import qualified GHC.Ptr as Ptr
import qualified GHC.Records
import qualified HsBindgen.Runtime.HasCField
import qualified HsBindgen.Runtime.Prelude
import Data.Void (Void)
import HsBindgen.Runtime.TypeEquality (TyEq)
import Prelude ((<*>), (>>), Eq, Int, Show, pure)

{-| __C declaration:__ @CURL_BLOB_COPY@

    __defined at:__ @easy.h:31:9@

    __exported by:__ @curl\/curl.h@
-}
cURL_BLOB_COPY :: FC.CInt
cURL_BLOB_COPY = (1 :: FC.CInt)

{-| __C declaration:__ @CURL_BLOB_NOCOPY@

    __defined at:__ @easy.h:32:9@

    __exported by:__ @curl\/curl.h@
-}
cURL_BLOB_NOCOPY :: FC.CInt
cURL_BLOB_NOCOPY = (0 :: FC.CInt)

{-| __C declaration:__ @curl_blob@

    __defined at:__ @easy.h:34:8@

    __exported by:__ @curl\/curl.h@
-}
data Curl_blob = Curl_blob
  { curl_blob_data :: Ptr.Ptr Void
    {- ^ __C declaration:__ @data@

         __defined at:__ @easy.h:35:9@

         __exported by:__ @curl\/curl.h@
    -}
  , curl_blob_len :: HsBindgen.Runtime.Prelude.CSize
    {- ^ __C declaration:__ @len@

         __defined at:__ @easy.h:36:10@

         __exported by:__ @curl\/curl.h@
    -}
  , curl_blob_flags :: FC.CUInt
    {- ^ __C declaration:__ @flags@

         __defined at:__ @easy.h:37:16@

         __exported by:__ @curl\/curl.h@
    -}
  }
  deriving stock (Eq, Show)

instance F.Storable Curl_blob where

  sizeOf = \_ -> (24 :: Int)

  alignment = \_ -> (8 :: Int)

  peek =
    \ptr0 ->
          pure Curl_blob
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_blob_data") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_blob_len") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_blob_flags") ptr0

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_blob curl_blob_data2 curl_blob_len3 curl_blob_flags4 ->
               HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_blob_data") ptr0 curl_blob_data2
            >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_blob_len") ptr0 curl_blob_len3
            >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_blob_flags") ptr0 curl_blob_flags4

instance HsBindgen.Runtime.HasCField.HasCField Curl_blob "curl_blob_data" where

  type CFieldType Curl_blob "curl_blob_data" =
    Ptr.Ptr Void

  offset# = \_ -> \_ -> 0

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_blob) "curl_blob_data")
         ) => GHC.Records.HasField "curl_blob_data" (Ptr.Ptr Curl_blob) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_blob_data")

instance HsBindgen.Runtime.HasCField.HasCField Curl_blob "curl_blob_len" where

  type CFieldType Curl_blob "curl_blob_len" =
    HsBindgen.Runtime.Prelude.CSize

  offset# = \_ -> \_ -> 8

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_blob) "curl_blob_len")
         ) => GHC.Records.HasField "curl_blob_len" (Ptr.Ptr Curl_blob) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_blob_len")

instance HsBindgen.Runtime.HasCField.HasCField Curl_blob "curl_blob_flags" where

  type CFieldType Curl_blob "curl_blob_flags" =
    FC.CUInt

  offset# = \_ -> \_ -> 16

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_blob) "curl_blob_flags")
         ) => GHC.Records.HasField "curl_blob_flags" (Ptr.Ptr Curl_blob) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_blob_flags")
