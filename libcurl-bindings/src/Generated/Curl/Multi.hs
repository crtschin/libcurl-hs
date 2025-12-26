{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}

module Generated.Curl.Multi where

import qualified C.Expr.HostPlatform as C
import qualified Data.Array.Byte
import qualified Data.Bits as Bits
import qualified Data.Ix as Ix
import qualified Data.List.NonEmpty
import qualified Data.Proxy
import qualified Foreign as F
import qualified Foreign.C as FC
import qualified GHC.Ptr as Ptr
import qualified GHC.Records
import qualified Generated.Curl.Curl
import qualified HsBindgen.Runtime.ByteArray
import qualified HsBindgen.Runtime.CEnum
import qualified HsBindgen.Runtime.ConstantArray
import qualified HsBindgen.Runtime.FunPtr
import qualified HsBindgen.Runtime.HasBaseForeignType
import qualified HsBindgen.Runtime.HasCField
import qualified HsBindgen.Runtime.Prelude
import qualified HsBindgen.Runtime.SizedByteArray
import qualified Text.Read
import Data.Bits (FiniteBits)
import Data.Void (Void)
import HsBindgen.Runtime.TypeEquality (TyEq)
import Prelude ((<*>), (>>), Bounded, Enum, Eq, IO, Int, Integral, Num, Ord, Read, Real, Show, pure, showsPrec)

{-| __C declaration:__ @__fd_mask@

    __defined at:__ @sys\/select.h:49:18@

    __exported by:__ @curl\/curl.h@
-}
newtype C__Fd_mask = C__Fd_mask
  { un_C__Fd_mask :: FC.CLong
  }
  deriving stock (Eq, Ord, Read, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType, Bits.Bits, Bounded, Enum, FiniteBits, Integral, Ix.Ix, Num, Real)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType C__Fd_mask) "un_C__Fd_mask")
         ) => GHC.Records.HasField "un_C__Fd_mask" (Ptr.Ptr C__Fd_mask) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_C__Fd_mask")

instance HsBindgen.Runtime.HasCField.HasCField C__Fd_mask "un_C__Fd_mask" where

  type CFieldType C__Fd_mask "un_C__Fd_mask" = FC.CLong

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @fd_set@

    __defined at:__ @sys\/select.h:59:9@

    __exported by:__ @curl\/curl.h@
-}
data Fd_set = Fd_set
  { fd_set___fds_bits :: (HsBindgen.Runtime.ConstantArray.ConstantArray 16) C__Fd_mask
    {- ^ __C declaration:__ @__fds_bits@

         __defined at:__ @sys\/select.h:67:15@

         __exported by:__ @curl\/curl.h@
    -}
  }
  deriving stock (Eq, Show)

instance F.Storable Fd_set where

  sizeOf = \_ -> (128 :: Int)

  alignment = \_ -> (8 :: Int)

  peek =
    \ptr0 ->
          pure Fd_set
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"fd_set___fds_bits") ptr0

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Fd_set fd_set___fds_bits2 ->
            HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"fd_set___fds_bits") ptr0 fd_set___fds_bits2

instance HsBindgen.Runtime.HasCField.HasCField Fd_set "fd_set___fds_bits" where

  type CFieldType Fd_set "fd_set___fds_bits" =
    (HsBindgen.Runtime.ConstantArray.ConstantArray 16) C__Fd_mask

  offset# = \_ -> \_ -> 0

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Fd_set) "fd_set___fds_bits")
         ) => GHC.Records.HasField "fd_set___fds_bits" (Ptr.Ptr Fd_set) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"fd_set___fds_bits")

{-| __C declaration:__ @CURL_SOCKET_BAD@

    __defined at:__ @curl\/curl.h:143:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SOCKET_BAD :: FC.CInt
cURL_SOCKET_BAD = C.negate (1 :: FC.CInt)

{-| __C declaration:__ @CURLMcode@

    __defined at:__ @multi.h:58:9@

    __exported by:__ @curl\/curl.h@
-}
newtype CURLMcode = CURLMcode
  { un_CURLMcode :: FC.CInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable CURLMcode where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure CURLMcode
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          CURLMcode un_CURLMcode2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_CURLMcode2

instance HsBindgen.Runtime.CEnum.CEnum CURLMcode where

  type CEnumZ CURLMcode = FC.CInt

  toCEnum = CURLMcode

  fromCEnum = un_CURLMcode

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (-1, Data.List.NonEmpty.singleton "CURLM_CALL_MULTI_PERFORM")
                                                     , (0, Data.List.NonEmpty.singleton "CURLM_OK")
                                                     , (1, Data.List.NonEmpty.singleton "CURLM_BAD_HANDLE")
                                                     , (2, Data.List.NonEmpty.singleton "CURLM_BAD_EASY_HANDLE")
                                                     , (3, Data.List.NonEmpty.singleton "CURLM_OUT_OF_MEMORY")
                                                     , (4, Data.List.NonEmpty.singleton "CURLM_INTERNAL_ERROR")
                                                     , (5, Data.List.NonEmpty.singleton "CURLM_BAD_SOCKET")
                                                     , (6, Data.List.NonEmpty.singleton "CURLM_UNKNOWN_OPTION")
                                                     , (7, Data.List.NonEmpty.singleton "CURLM_ADDED_ALREADY")
                                                     , (8, Data.List.NonEmpty.singleton "CURLM_RECURSIVE_API_CALL")
                                                     , (9, Data.List.NonEmpty.singleton "CURLM_WAKEUP_FAILURE")
                                                     , (10, Data.List.NonEmpty.singleton "CURLM_BAD_FUNCTION_ARGUMENT")
                                                     , (11, Data.List.NonEmpty.singleton "CURLM_ABORTED_BY_CALLBACK")
                                                     , (12, Data.List.NonEmpty.singleton "CURLM_UNRECOVERABLE_POLL")
                                                     , (13, Data.List.NonEmpty.singleton "CURLM_LAST")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "CURLMcode"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "CURLMcode"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum CURLMcode where

  minDeclaredValue = CURLM_CALL_MULTI_PERFORM

  maxDeclaredValue = CURLM_LAST

instance Show CURLMcode where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read CURLMcode where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLM_CALL_MULTI_PERFORM@

    __defined at:__ @multi.h:59:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLM_CALL_MULTI_PERFORM :: CURLMcode
pattern CURLM_CALL_MULTI_PERFORM = CURLMcode (-1)

{-| __C declaration:__ @CURLM_OK@

    __defined at:__ @multi.h:61:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLM_OK :: CURLMcode
pattern CURLM_OK = CURLMcode 0

{-| __C declaration:__ @CURLM_BAD_HANDLE@

    __defined at:__ @multi.h:62:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLM_BAD_HANDLE :: CURLMcode
pattern CURLM_BAD_HANDLE = CURLMcode 1

{-| __C declaration:__ @CURLM_BAD_EASY_HANDLE@

    __defined at:__ @multi.h:63:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLM_BAD_EASY_HANDLE :: CURLMcode
pattern CURLM_BAD_EASY_HANDLE = CURLMcode 2

{-| __C declaration:__ @CURLM_OUT_OF_MEMORY@

    __defined at:__ @multi.h:64:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLM_OUT_OF_MEMORY :: CURLMcode
pattern CURLM_OUT_OF_MEMORY = CURLMcode 3

{-| __C declaration:__ @CURLM_INTERNAL_ERROR@

    __defined at:__ @multi.h:65:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLM_INTERNAL_ERROR :: CURLMcode
pattern CURLM_INTERNAL_ERROR = CURLMcode 4

{-| __C declaration:__ @CURLM_BAD_SOCKET@

    __defined at:__ @multi.h:66:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLM_BAD_SOCKET :: CURLMcode
pattern CURLM_BAD_SOCKET = CURLMcode 5

{-| __C declaration:__ @CURLM_UNKNOWN_OPTION@

    __defined at:__ @multi.h:67:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLM_UNKNOWN_OPTION :: CURLMcode
pattern CURLM_UNKNOWN_OPTION = CURLMcode 6

{-| __C declaration:__ @CURLM_ADDED_ALREADY@

    __defined at:__ @multi.h:68:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLM_ADDED_ALREADY :: CURLMcode
pattern CURLM_ADDED_ALREADY = CURLMcode 7

{-| __C declaration:__ @CURLM_RECURSIVE_API_CALL@

    __defined at:__ @multi.h:70:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLM_RECURSIVE_API_CALL :: CURLMcode
pattern CURLM_RECURSIVE_API_CALL = CURLMcode 8

{-| __C declaration:__ @CURLM_WAKEUP_FAILURE@

    __defined at:__ @multi.h:72:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLM_WAKEUP_FAILURE :: CURLMcode
pattern CURLM_WAKEUP_FAILURE = CURLMcode 9

{-| __C declaration:__ @CURLM_BAD_FUNCTION_ARGUMENT@

    __defined at:__ @multi.h:73:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLM_BAD_FUNCTION_ARGUMENT :: CURLMcode
pattern CURLM_BAD_FUNCTION_ARGUMENT = CURLMcode 10

{-| __C declaration:__ @CURLM_ABORTED_BY_CALLBACK@

    __defined at:__ @multi.h:74:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLM_ABORTED_BY_CALLBACK :: CURLMcode
pattern CURLM_ABORTED_BY_CALLBACK = CURLMcode 11

{-| __C declaration:__ @CURLM_UNRECOVERABLE_POLL@

    __defined at:__ @multi.h:75:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLM_UNRECOVERABLE_POLL :: CURLMcode
pattern CURLM_UNRECOVERABLE_POLL = CURLMcode 12

{-| __C declaration:__ @CURLM_LAST@

    __defined at:__ @multi.h:76:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLM_LAST :: CURLMcode
pattern CURLM_LAST = CURLMcode 13

{-| __C declaration:__ @CURLPIPE_NOTHING@

    __defined at:__ @multi.h:85:9@

    __exported by:__ @curl\/curl.h@
-}
cURLPIPE_NOTHING :: FC.CLong
cURLPIPE_NOTHING = (0 :: FC.CLong)

{-| __C declaration:__ @CURLPIPE_HTTP1@

    __defined at:__ @multi.h:86:9@

    __exported by:__ @curl\/curl.h@
-}
cURLPIPE_HTTP1 :: FC.CLong
cURLPIPE_HTTP1 = (1 :: FC.CLong)

{-| __C declaration:__ @CURLPIPE_MULTIPLEX@

    __defined at:__ @multi.h:87:9@

    __exported by:__ @curl\/curl.h@
-}
cURLPIPE_MULTIPLEX :: FC.CLong
cURLPIPE_MULTIPLEX = (2 :: FC.CLong)

{-| __C declaration:__ @CURLMSG@

    __defined at:__ @multi.h:89:9@

    __exported by:__ @curl\/curl.h@
-}
newtype CURLMSG = CURLMSG
  { un_CURLMSG :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable CURLMSG where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure CURLMSG
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          CURLMSG un_CURLMSG2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_CURLMSG2

instance HsBindgen.Runtime.CEnum.CEnum CURLMSG where

  type CEnumZ CURLMSG = FC.CUInt

  toCEnum = CURLMSG

  fromCEnum = un_CURLMSG

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLMSG_NONE")
                                                     , (1, Data.List.NonEmpty.singleton "CURLMSG_DONE")
                                                     , (2, Data.List.NonEmpty.singleton "CURLMSG_LAST")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "CURLMSG"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "CURLMSG"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum CURLMSG where

  minDeclaredValue = CURLMSG_NONE

  maxDeclaredValue = CURLMSG_LAST

instance Show CURLMSG where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read CURLMSG where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLMSG_NONE@

    __defined at:__ @multi.h:90:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMSG_NONE :: CURLMSG
pattern CURLMSG_NONE = CURLMSG 0

{-| __C declaration:__ @CURLMSG_DONE@

    __defined at:__ @multi.h:91:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMSG_DONE :: CURLMSG
pattern CURLMSG_DONE = CURLMSG 1

{-| __C declaration:__ @CURLMSG_LAST@

    __defined at:__ @multi.h:93:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMSG_LAST :: CURLMSG
pattern CURLMSG_LAST = CURLMSG 2

{-| __defined at:__ @multi.h:99:3@

    __exported by:__ @curl\/curl.h@
-}
newtype CURLMsg_data = CURLMsg_data
  { un_CURLMsg_data :: Data.Array.Byte.ByteArray
  }

deriving via (HsBindgen.Runtime.SizedByteArray.SizedByteArray 8) 8 instance F.Storable CURLMsg_data

{-|

  __See:__ 'set_cURLMsg_data_whatever'

__C declaration:__ @whatever@

__defined at:__ @multi.h:100:11@

__exported by:__ @curl\/curl.h@
-}
get_cURLMsg_data_whatever ::
     CURLMsg_data
  -> Ptr.Ptr Void
get_cURLMsg_data_whatever =
  HsBindgen.Runtime.ByteArray.getUnionPayload

{-|

  __See:__ 'get_cURLMsg_data_whatever'

-}
set_cURLMsg_data_whatever ::
     Ptr.Ptr Void
  -> CURLMsg_data
set_cURLMsg_data_whatever =
  HsBindgen.Runtime.ByteArray.setUnionPayload

{-|

  __See:__ 'set_cURLMsg_data_result'

__C declaration:__ @result@

__defined at:__ @multi.h:101:14@

__exported by:__ @curl\/curl.h@
-}
get_cURLMsg_data_result ::
     CURLMsg_data
  -> Generated.Curl.Curl.CURLcode
get_cURLMsg_data_result =
  HsBindgen.Runtime.ByteArray.getUnionPayload

{-|

  __See:__ 'get_cURLMsg_data_result'

-}
set_cURLMsg_data_result ::
     Generated.Curl.Curl.CURLcode
  -> CURLMsg_data
set_cURLMsg_data_result =
  HsBindgen.Runtime.ByteArray.setUnionPayload

instance HsBindgen.Runtime.HasCField.HasCField CURLMsg_data "cURLMsg_data_whatever" where

  type CFieldType CURLMsg_data "cURLMsg_data_whatever" =
    Ptr.Ptr Void

  offset# = \_ -> \_ -> 0

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType CURLMsg_data) "cURLMsg_data_whatever")
         ) => GHC.Records.HasField "cURLMsg_data_whatever" (Ptr.Ptr CURLMsg_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"cURLMsg_data_whatever")

instance HsBindgen.Runtime.HasCField.HasCField CURLMsg_data "cURLMsg_data_result" where

  type CFieldType CURLMsg_data "cURLMsg_data_result" =
    Generated.Curl.Curl.CURLcode

  offset# = \_ -> \_ -> 0

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType CURLMsg_data) "cURLMsg_data_result")
         ) => GHC.Records.HasField "cURLMsg_data_result" (Ptr.Ptr CURLMsg_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"cURLMsg_data_result")

{-| __C declaration:__ @CURLMsg@

    __defined at:__ @multi.h:96:8@

    __exported by:__ @curl\/curl.h@
-}
data CURLMsg = CURLMsg
  { cURLMsg_msg :: CURLMSG
    {- ^ __C declaration:__ @msg@

         __defined at:__ @multi.h:97:11@

         __exported by:__ @curl\/curl.h@
    -}
  , cURLMsg_easy_handle :: Ptr.Ptr Void
    {- ^ __C declaration:__ @easy_handle@

         __defined at:__ @multi.h:98:9@

         __exported by:__ @curl\/curl.h@
    -}
  , cURLMsg_data :: CURLMsg_data
    {- ^ __C declaration:__ @data@

         __defined at:__ @multi.h:102:5@

         __exported by:__ @curl\/curl.h@
    -}
  }

instance F.Storable CURLMsg where

  sizeOf = \_ -> (24 :: Int)

  alignment = \_ -> (8 :: Int)

  peek =
    \ptr0 ->
          pure CURLMsg
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"cURLMsg_msg") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"cURLMsg_easy_handle") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"cURLMsg_data") ptr0

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          CURLMsg cURLMsg_msg2 cURLMsg_easy_handle3 cURLMsg_data4 ->
               HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"cURLMsg_msg") ptr0 cURLMsg_msg2
            >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"cURLMsg_easy_handle") ptr0 cURLMsg_easy_handle3
            >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"cURLMsg_data") ptr0 cURLMsg_data4

instance HsBindgen.Runtime.HasCField.HasCField CURLMsg "cURLMsg_msg" where

  type CFieldType CURLMsg "cURLMsg_msg" = CURLMSG

  offset# = \_ -> \_ -> 0

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType CURLMsg) "cURLMsg_msg")
         ) => GHC.Records.HasField "cURLMsg_msg" (Ptr.Ptr CURLMsg) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"cURLMsg_msg")

instance HsBindgen.Runtime.HasCField.HasCField CURLMsg "cURLMsg_easy_handle" where

  type CFieldType CURLMsg "cURLMsg_easy_handle" =
    Ptr.Ptr Void

  offset# = \_ -> \_ -> 8

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType CURLMsg) "cURLMsg_easy_handle")
         ) => GHC.Records.HasField "cURLMsg_easy_handle" (Ptr.Ptr CURLMsg) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"cURLMsg_easy_handle")

instance HsBindgen.Runtime.HasCField.HasCField CURLMsg "cURLMsg_data" where

  type CFieldType CURLMsg "cURLMsg_data" = CURLMsg_data

  offset# = \_ -> \_ -> 16

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType CURLMsg) "cURLMsg_data")
         ) => GHC.Records.HasField "cURLMsg_data" (Ptr.Ptr CURLMsg) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"cURLMsg_data")

{-| __C declaration:__ @CURL_WAIT_POLLIN@

    __defined at:__ @multi.h:109:9@

    __exported by:__ @curl\/curl.h@
-}
cURL_WAIT_POLLIN :: FC.CInt
cURL_WAIT_POLLIN = (1 :: FC.CInt)

{-| __C declaration:__ @CURL_WAIT_POLLPRI@

    __defined at:__ @multi.h:110:9@

    __exported by:__ @curl\/curl.h@
-}
cURL_WAIT_POLLPRI :: FC.CInt
cURL_WAIT_POLLPRI = (2 :: FC.CInt)

{-| __C declaration:__ @CURL_WAIT_POLLOUT@

    __defined at:__ @multi.h:111:9@

    __exported by:__ @curl\/curl.h@
-}
cURL_WAIT_POLLOUT :: FC.CInt
cURL_WAIT_POLLOUT = (4 :: FC.CInt)

{-| __C declaration:__ @curl_waitfd@

    __defined at:__ @multi.h:113:8@

    __exported by:__ @curl\/curl.h@
-}
data Curl_waitfd = Curl_waitfd
  { curl_waitfd_fd :: Generated.Curl.Curl.Curl_socket_t
    {- ^ __C declaration:__ @fd@

         __defined at:__ @multi.h:114:17@

         __exported by:__ @curl\/curl.h@
    -}
  , curl_waitfd_events :: FC.CShort
    {- ^ __C declaration:__ @events@

         __defined at:__ @multi.h:115:9@

         __exported by:__ @curl\/curl.h@
    -}
  , curl_waitfd_revents :: FC.CShort
    {- ^ __C declaration:__ @revents@

         __defined at:__ @multi.h:116:9@

         __exported by:__ @curl\/curl.h@
    -}
  }
  deriving stock (Eq, Show)

instance F.Storable Curl_waitfd where

  sizeOf = \_ -> (8 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Curl_waitfd
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_waitfd_fd") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_waitfd_events") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_waitfd_revents") ptr0

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_waitfd curl_waitfd_fd2 curl_waitfd_events3 curl_waitfd_revents4 ->
               HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_waitfd_fd") ptr0 curl_waitfd_fd2
            >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_waitfd_events") ptr0 curl_waitfd_events3
            >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_waitfd_revents") ptr0 curl_waitfd_revents4

instance HsBindgen.Runtime.HasCField.HasCField Curl_waitfd "curl_waitfd_fd" where

  type CFieldType Curl_waitfd "curl_waitfd_fd" =
    Generated.Curl.Curl.Curl_socket_t

  offset# = \_ -> \_ -> 0

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_waitfd) "curl_waitfd_fd")
         ) => GHC.Records.HasField "curl_waitfd_fd" (Ptr.Ptr Curl_waitfd) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_waitfd_fd")

instance HsBindgen.Runtime.HasCField.HasCField Curl_waitfd "curl_waitfd_events" where

  type CFieldType Curl_waitfd "curl_waitfd_events" =
    FC.CShort

  offset# = \_ -> \_ -> 4

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_waitfd) "curl_waitfd_events")
         ) => GHC.Records.HasField "curl_waitfd_events" (Ptr.Ptr Curl_waitfd) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_waitfd_events")

instance HsBindgen.Runtime.HasCField.HasCField Curl_waitfd "curl_waitfd_revents" where

  type CFieldType Curl_waitfd "curl_waitfd_revents" =
    FC.CShort

  offset# = \_ -> \_ -> 6

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_waitfd) "curl_waitfd_revents")
         ) => GHC.Records.HasField "curl_waitfd_revents" (Ptr.Ptr Curl_waitfd) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_waitfd_revents")

{-| __C declaration:__ @CURL_POLL_NONE@

    __defined at:__ @multi.h:282:9@

    __exported by:__ @curl\/curl.h@
-}
cURL_POLL_NONE :: FC.CInt
cURL_POLL_NONE = (0 :: FC.CInt)

{-| __C declaration:__ @CURL_POLL_IN@

    __defined at:__ @multi.h:283:9@

    __exported by:__ @curl\/curl.h@
-}
cURL_POLL_IN :: FC.CInt
cURL_POLL_IN = (1 :: FC.CInt)

{-| __C declaration:__ @CURL_POLL_OUT@

    __defined at:__ @multi.h:284:9@

    __exported by:__ @curl\/curl.h@
-}
cURL_POLL_OUT :: FC.CInt
cURL_POLL_OUT = (2 :: FC.CInt)

{-| __C declaration:__ @CURL_POLL_INOUT@

    __defined at:__ @multi.h:285:9@

    __exported by:__ @curl\/curl.h@
-}
cURL_POLL_INOUT :: FC.CInt
cURL_POLL_INOUT = (3 :: FC.CInt)

{-| __C declaration:__ @CURL_POLL_REMOVE@

    __defined at:__ @multi.h:286:9@

    __exported by:__ @curl\/curl.h@
-}
cURL_POLL_REMOVE :: FC.CInt
cURL_POLL_REMOVE = (4 :: FC.CInt)

{-| __C declaration:__ @CURL_SOCKET_TIMEOUT@

    __defined at:__ @multi.h:288:9@

    __exported by:__ @curl\/curl.h@
-}
cURL_SOCKET_TIMEOUT :: FC.CInt
cURL_SOCKET_TIMEOUT = cURL_SOCKET_BAD

{-| __C declaration:__ @CURL_CSELECT_IN@

    __defined at:__ @multi.h:290:9@

    __exported by:__ @curl\/curl.h@
-}
cURL_CSELECT_IN :: FC.CInt
cURL_CSELECT_IN = (1 :: FC.CInt)

{-| __C declaration:__ @CURL_CSELECT_OUT@

    __defined at:__ @multi.h:291:9@

    __exported by:__ @curl\/curl.h@
-}
cURL_CSELECT_OUT :: FC.CInt
cURL_CSELECT_OUT = (2 :: FC.CInt)

{-| __C declaration:__ @CURL_CSELECT_ERR@

    __defined at:__ @multi.h:292:9@

    __exported by:__ @curl\/curl.h@
-}
cURL_CSELECT_ERR :: FC.CInt
cURL_CSELECT_ERR = (4 :: FC.CInt)

{-| Auxiliary type used by 'Curl_socket_callback'

__defined at:__ @multi.h:294:15@

__exported by:__ @curl\/curl.h@
-}
newtype Curl_socket_callback_Deref = Curl_socket_callback_Deref
  { un_Curl_socket_callback_Deref :: (Ptr.Ptr Void) -> Generated.Curl.Curl.Curl_socket_t -> FC.CInt -> (Ptr.Ptr Void) -> (Ptr.Ptr Void) -> IO FC.CInt
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_socket_callback_Deref ::
     Curl_socket_callback_Deref
  -> IO (Ptr.FunPtr Curl_socket_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_socket_callback_Deref ::
     Ptr.FunPtr Curl_socket_callback_Deref
  -> Curl_socket_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_socket_callback_Deref where

  toFunPtr = toCurl_socket_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_socket_callback_Deref where

  fromFunPtr = fromCurl_socket_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_socket_callback_Deref) "un_Curl_socket_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_socket_callback_Deref" (Ptr.Ptr Curl_socket_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_socket_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_socket_callback_Deref "un_Curl_socket_callback_Deref" where

  type CFieldType Curl_socket_callback_Deref "un_Curl_socket_callback_Deref" =
    (Ptr.Ptr Void) -> Generated.Curl.Curl.Curl_socket_t -> FC.CInt -> (Ptr.Ptr Void) -> (Ptr.Ptr Void) -> IO FC.CInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_socket_callback@

    __defined at:__ @multi.h:294:15@

    __exported by:__ @curl\/curl.h@
-}
newtype Curl_socket_callback = Curl_socket_callback
  { un_Curl_socket_callback :: Ptr.FunPtr Curl_socket_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_socket_callback) "un_Curl_socket_callback")
         ) => GHC.Records.HasField "un_Curl_socket_callback" (Ptr.Ptr Curl_socket_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_socket_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_socket_callback "un_Curl_socket_callback" where

  type CFieldType Curl_socket_callback "un_Curl_socket_callback" =
    Ptr.FunPtr Curl_socket_callback_Deref

  offset# = \_ -> \_ -> 0

{-| Auxiliary type used by 'Curl_multi_timer_callback'

__defined at:__ @multi.h:311:15@

__exported by:__ @curl\/curl.h@
-}
newtype Curl_multi_timer_callback_Deref = Curl_multi_timer_callback_Deref
  { un_Curl_multi_timer_callback_Deref :: (Ptr.Ptr Void) -> FC.CLong -> (Ptr.Ptr Void) -> IO FC.CInt
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_multi_timer_callback_Deref ::
     Curl_multi_timer_callback_Deref
  -> IO (Ptr.FunPtr Curl_multi_timer_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_multi_timer_callback_Deref ::
     Ptr.FunPtr Curl_multi_timer_callback_Deref
  -> Curl_multi_timer_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_multi_timer_callback_Deref where

  toFunPtr = toCurl_multi_timer_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_multi_timer_callback_Deref where

  fromFunPtr = fromCurl_multi_timer_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_multi_timer_callback_Deref) "un_Curl_multi_timer_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_multi_timer_callback_Deref" (Ptr.Ptr Curl_multi_timer_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_multi_timer_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_multi_timer_callback_Deref "un_Curl_multi_timer_callback_Deref" where

  type CFieldType Curl_multi_timer_callback_Deref "un_Curl_multi_timer_callback_Deref" =
    (Ptr.Ptr Void) -> FC.CLong -> (Ptr.Ptr Void) -> IO FC.CInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_multi_timer_callback@

    __defined at:__ @multi.h:311:15@

    __exported by:__ @curl\/curl.h@
-}
newtype Curl_multi_timer_callback = Curl_multi_timer_callback
  { un_Curl_multi_timer_callback :: Ptr.FunPtr Curl_multi_timer_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_multi_timer_callback) "un_Curl_multi_timer_callback")
         ) => GHC.Records.HasField "un_Curl_multi_timer_callback" (Ptr.Ptr Curl_multi_timer_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_multi_timer_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_multi_timer_callback "un_Curl_multi_timer_callback" where

  type CFieldType Curl_multi_timer_callback "un_Curl_multi_timer_callback" =
    Ptr.FunPtr Curl_multi_timer_callback_Deref

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @CURLMoption@

    __defined at:__ @multi.h:346:9@

    __exported by:__ @curl\/curl.h@
-}
newtype CURLMoption = CURLMoption
  { un_CURLMoption :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable CURLMoption where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure CURLMoption
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          CURLMoption un_CURLMoption2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_CURLMoption2

instance HsBindgen.Runtime.CEnum.CEnum CURLMoption where

  type CEnumZ CURLMoption = FC.CUInt

  toCEnum = CURLMoption

  fromCEnum = un_CURLMoption

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (3, Data.List.NonEmpty.singleton "CURLMOPT_PIPELINING")
                                                     , (6, Data.List.NonEmpty.singleton "CURLMOPT_MAXCONNECTS")
                                                     , (7, Data.List.NonEmpty.singleton "CURLMOPT_MAX_HOST_CONNECTIONS")
                                                     , (8, Data.List.NonEmpty.singleton "CURLMOPT_MAX_PIPELINE_LENGTH")
                                                     , (13, Data.List.NonEmpty.singleton "CURLMOPT_MAX_TOTAL_CONNECTIONS")
                                                     , (16, Data.List.NonEmpty.singleton "CURLMOPT_MAX_CONCURRENT_STREAMS")
                                                     , (17, Data.List.NonEmpty.singleton "CURLMOPT_NETWORK_CHANGED")
                                                     , (10002, Data.List.NonEmpty.singleton "CURLMOPT_SOCKETDATA")
                                                     , (10005, Data.List.NonEmpty.singleton "CURLMOPT_TIMERDATA")
                                                     , (10011, Data.List.NonEmpty.singleton "CURLMOPT_PIPELINING_SITE_BL")
                                                     , (10012, Data.List.NonEmpty.singleton "CURLMOPT_PIPELINING_SERVER_BL")
                                                     , (10015, Data.List.NonEmpty.singleton "CURLMOPT_PUSHDATA")
                                                     , (10019, Data.List.NonEmpty.singleton "CURLMOPT_NOTIFYDATA")
                                                     , (10020, Data.List.NonEmpty.singleton "CURLMOPT_LASTENTRY")
                                                     , (20001, Data.List.NonEmpty.singleton "CURLMOPT_SOCKETFUNCTION")
                                                     , (20004, Data.List.NonEmpty.singleton "CURLMOPT_TIMERFUNCTION")
                                                     , (20014, Data.List.NonEmpty.singleton "CURLMOPT_PUSHFUNCTION")
                                                     , (20018, Data.List.NonEmpty.singleton "CURLMOPT_NOTIFYFUNCTION")
                                                     , (30009, Data.List.NonEmpty.singleton "CURLMOPT_CONTENT_LENGTH_PENALTY_SIZE")
                                                     , (30010, Data.List.NonEmpty.singleton "CURLMOPT_CHUNK_LENGTH_PENALTY_SIZE")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "CURLMoption"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "CURLMoption"

instance Show CURLMoption where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read CURLMoption where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLMOPT_SOCKETFUNCTION@

    __defined at:__ @multi.h:348:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMOPT_SOCKETFUNCTION :: CURLMoption
pattern CURLMOPT_SOCKETFUNCTION = CURLMoption 20001

{-| __C declaration:__ @CURLMOPT_SOCKETDATA@

    __defined at:__ @multi.h:351:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMOPT_SOCKETDATA :: CURLMoption
pattern CURLMOPT_SOCKETDATA = CURLMoption 10002

{-| __C declaration:__ @CURLMOPT_PIPELINING@

    __defined at:__ @multi.h:354:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMOPT_PIPELINING :: CURLMoption
pattern CURLMOPT_PIPELINING = CURLMoption 3

{-| __C declaration:__ @CURLMOPT_TIMERFUNCTION@

    __defined at:__ @multi.h:357:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMOPT_TIMERFUNCTION :: CURLMoption
pattern CURLMOPT_TIMERFUNCTION = CURLMoption 20004

{-| __C declaration:__ @CURLMOPT_TIMERDATA@

    __defined at:__ @multi.h:360:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMOPT_TIMERDATA :: CURLMoption
pattern CURLMOPT_TIMERDATA = CURLMoption 10005

{-| __C declaration:__ @CURLMOPT_MAXCONNECTS@

    __defined at:__ @multi.h:363:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMOPT_MAXCONNECTS :: CURLMoption
pattern CURLMOPT_MAXCONNECTS = CURLMoption 6

{-| __C declaration:__ @CURLMOPT_MAX_HOST_CONNECTIONS@

    __defined at:__ @multi.h:366:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMOPT_MAX_HOST_CONNECTIONS :: CURLMoption
pattern CURLMOPT_MAX_HOST_CONNECTIONS = CURLMoption 7

{-| __C declaration:__ @CURLMOPT_MAX_PIPELINE_LENGTH@

    __defined at:__ @multi.h:369:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMOPT_MAX_PIPELINE_LENGTH :: CURLMoption
pattern CURLMOPT_MAX_PIPELINE_LENGTH = CURLMoption 8

{-| __C declaration:__ @CURLMOPT_CONTENT_LENGTH_PENALTY_SIZE@

    __defined at:__ @multi.h:373:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMOPT_CONTENT_LENGTH_PENALTY_SIZE :: CURLMoption
pattern CURLMOPT_CONTENT_LENGTH_PENALTY_SIZE = CURLMoption 30009

{-| __C declaration:__ @CURLMOPT_CHUNK_LENGTH_PENALTY_SIZE@

    __defined at:__ @multi.h:377:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMOPT_CHUNK_LENGTH_PENALTY_SIZE :: CURLMoption
pattern CURLMOPT_CHUNK_LENGTH_PENALTY_SIZE = CURLMoption 30010

{-| __C declaration:__ @CURLMOPT_PIPELINING_SITE_BL@

    __defined at:__ @multi.h:380:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMOPT_PIPELINING_SITE_BL :: CURLMoption
pattern CURLMOPT_PIPELINING_SITE_BL = CURLMoption 10011

{-| __C declaration:__ @CURLMOPT_PIPELINING_SERVER_BL@

    __defined at:__ @multi.h:383:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMOPT_PIPELINING_SERVER_BL :: CURLMoption
pattern CURLMOPT_PIPELINING_SERVER_BL = CURLMoption 10012

{-| __C declaration:__ @CURLMOPT_MAX_TOTAL_CONNECTIONS@

    __defined at:__ @multi.h:386:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMOPT_MAX_TOTAL_CONNECTIONS :: CURLMoption
pattern CURLMOPT_MAX_TOTAL_CONNECTIONS = CURLMoption 13

{-| __C declaration:__ @CURLMOPT_PUSHFUNCTION@

    __defined at:__ @multi.h:389:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMOPT_PUSHFUNCTION :: CURLMoption
pattern CURLMOPT_PUSHFUNCTION = CURLMoption 20014

{-| __C declaration:__ @CURLMOPT_PUSHDATA@

    __defined at:__ @multi.h:392:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMOPT_PUSHDATA :: CURLMoption
pattern CURLMOPT_PUSHDATA = CURLMoption 10015

{-| __C declaration:__ @CURLMOPT_MAX_CONCURRENT_STREAMS@

    __defined at:__ @multi.h:395:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMOPT_MAX_CONCURRENT_STREAMS :: CURLMoption
pattern CURLMOPT_MAX_CONCURRENT_STREAMS = CURLMoption 16

{-| __C declaration:__ @CURLMOPT_NETWORK_CHANGED@

    __defined at:__ @multi.h:398:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMOPT_NETWORK_CHANGED :: CURLMoption
pattern CURLMOPT_NETWORK_CHANGED = CURLMoption 17

{-| __C declaration:__ @CURLMOPT_NOTIFYFUNCTION@

    __defined at:__ @multi.h:401:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMOPT_NOTIFYFUNCTION :: CURLMoption
pattern CURLMOPT_NOTIFYFUNCTION = CURLMoption 20018

{-| __C declaration:__ @CURLMOPT_NOTIFYDATA@

    __defined at:__ @multi.h:404:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMOPT_NOTIFYDATA :: CURLMoption
pattern CURLMOPT_NOTIFYDATA = CURLMoption 10019

{-| __C declaration:__ @CURLMOPT_LASTENTRY@

    __defined at:__ @multi.h:406:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMOPT_LASTENTRY :: CURLMoption
pattern CURLMOPT_LASTENTRY = CURLMoption 10020

{-| __C declaration:__ @CURLMNWC_CLEAR_CONNS@

    __defined at:__ @multi.h:414:9@

    __exported by:__ @curl\/curl.h@
-}
cURLMNWC_CLEAR_CONNS :: FC.CLong
cURLMNWC_CLEAR_CONNS =
  (C.<<) (1 :: FC.CLong) (0 :: FC.CInt)

{-| __C declaration:__ @CURLMNWC_CLEAR_DNS@

    __defined at:__ @multi.h:419:9@

    __exported by:__ @curl\/curl.h@
-}
cURLMNWC_CLEAR_DNS :: FC.CLong
cURLMNWC_CLEAR_DNS =
  (C.<<) (1 :: FC.CLong) (0 :: FC.CInt)

{-| __C declaration:__ @CURLMinfo_offt@

    __defined at:__ @multi.h:457:9@

    __exported by:__ @curl\/curl.h@
-}
newtype CURLMinfo_offt = CURLMinfo_offt
  { un_CURLMinfo_offt :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable CURLMinfo_offt where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure CURLMinfo_offt
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          CURLMinfo_offt un_CURLMinfo_offt2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_CURLMinfo_offt2

instance HsBindgen.Runtime.CEnum.CEnum CURLMinfo_offt where

  type CEnumZ CURLMinfo_offt = FC.CUInt

  toCEnum = CURLMinfo_offt

  fromCEnum = un_CURLMinfo_offt

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLMINFO_NONE")
                                                     , (1, Data.List.NonEmpty.singleton "CURLMINFO_XFERS_CURRENT")
                                                     , (2, Data.List.NonEmpty.singleton "CURLMINFO_XFERS_RUNNING")
                                                     , (3, Data.List.NonEmpty.singleton "CURLMINFO_XFERS_PENDING")
                                                     , (4, Data.List.NonEmpty.singleton "CURLMINFO_XFERS_DONE")
                                                     , (5, Data.List.NonEmpty.singleton "CURLMINFO_XFERS_ADDED")
                                                     , (6, Data.List.NonEmpty.singleton "CURLMINFO_LASTENTRY")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "CURLMinfo_offt"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "CURLMinfo_offt"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum CURLMinfo_offt where

  minDeclaredValue = CURLMINFO_NONE

  maxDeclaredValue = CURLMINFO_LASTENTRY

instance Show CURLMinfo_offt where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read CURLMinfo_offt where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLMINFO_NONE@

    __defined at:__ @multi.h:458:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMINFO_NONE :: CURLMinfo_offt
pattern CURLMINFO_NONE = CURLMinfo_offt 0

{-| __C declaration:__ @CURLMINFO_XFERS_CURRENT@

    __defined at:__ @multi.h:461:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMINFO_XFERS_CURRENT :: CURLMinfo_offt
pattern CURLMINFO_XFERS_CURRENT = CURLMinfo_offt 1

{-| __C declaration:__ @CURLMINFO_XFERS_RUNNING@

    __defined at:__ @multi.h:463:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMINFO_XFERS_RUNNING :: CURLMinfo_offt
pattern CURLMINFO_XFERS_RUNNING = CURLMinfo_offt 2

{-| __C declaration:__ @CURLMINFO_XFERS_PENDING@

    __defined at:__ @multi.h:467:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMINFO_XFERS_PENDING :: CURLMinfo_offt
pattern CURLMINFO_XFERS_PENDING = CURLMinfo_offt 3

{-| __C declaration:__ @CURLMINFO_XFERS_DONE@

    __defined at:__ @multi.h:470:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMINFO_XFERS_DONE :: CURLMinfo_offt
pattern CURLMINFO_XFERS_DONE = CURLMinfo_offt 4

{-| __C declaration:__ @CURLMINFO_XFERS_ADDED@

    __defined at:__ @multi.h:472:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMINFO_XFERS_ADDED :: CURLMinfo_offt
pattern CURLMINFO_XFERS_ADDED = CURLMinfo_offt 5

{-| __C declaration:__ @CURLMINFO_LASTENTRY@

    __defined at:__ @multi.h:474:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLMINFO_LASTENTRY :: CURLMinfo_offt
pattern CURLMINFO_LASTENTRY = CURLMinfo_offt 6

{-| __C declaration:__ @CURL_PUSH_OK@

    __defined at:__ @multi.h:497:9@

    __exported by:__ @curl\/curl.h@
-}
cURL_PUSH_OK :: FC.CInt
cURL_PUSH_OK = (0 :: FC.CInt)

{-| __C declaration:__ @CURL_PUSH_DENY@

    __defined at:__ @multi.h:498:9@

    __exported by:__ @curl\/curl.h@
-}
cURL_PUSH_DENY :: FC.CInt
cURL_PUSH_DENY = (1 :: FC.CInt)

{-| __C declaration:__ @CURL_PUSH_ERROROUT@

    __defined at:__ @multi.h:499:9@

    __exported by:__ @curl\/curl.h@
-}
cURL_PUSH_ERROROUT :: FC.CInt
cURL_PUSH_ERROROUT = (2 :: FC.CInt)

{-| __C declaration:__ @curl_pushheaders@

    __defined at:__ @multi.h:501:8@

    __exported by:__ @curl\/curl.h@
-}
data Curl_pushheaders

{-| Auxiliary type used by 'Curl_push_callback'

__defined at:__ @multi.h:508:15@

__exported by:__ @curl\/curl.h@
-}
newtype Curl_push_callback_Deref = Curl_push_callback_Deref
  { un_Curl_push_callback_Deref :: (Ptr.Ptr Void) -> (Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr Curl_pushheaders) -> (Ptr.Ptr Void) -> IO FC.CInt
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_push_callback_Deref ::
     Curl_push_callback_Deref
  -> IO (Ptr.FunPtr Curl_push_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_push_callback_Deref ::
     Ptr.FunPtr Curl_push_callback_Deref
  -> Curl_push_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_push_callback_Deref where

  toFunPtr = toCurl_push_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_push_callback_Deref where

  fromFunPtr = fromCurl_push_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_push_callback_Deref) "un_Curl_push_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_push_callback_Deref" (Ptr.Ptr Curl_push_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_push_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_push_callback_Deref "un_Curl_push_callback_Deref" where

  type CFieldType Curl_push_callback_Deref "un_Curl_push_callback_Deref" =
    (Ptr.Ptr Void) -> (Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr Curl_pushheaders) -> (Ptr.Ptr Void) -> IO FC.CInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_push_callback@

    __defined at:__ @multi.h:508:15@

    __exported by:__ @curl\/curl.h@
-}
newtype Curl_push_callback = Curl_push_callback
  { un_Curl_push_callback :: Ptr.FunPtr Curl_push_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_push_callback) "un_Curl_push_callback")
         ) => GHC.Records.HasField "un_Curl_push_callback" (Ptr.Ptr Curl_push_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_push_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_push_callback "un_Curl_push_callback" where

  type CFieldType Curl_push_callback "un_Curl_push_callback" =
    Ptr.FunPtr Curl_push_callback_Deref

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @CURLMNOTIFY_INFO_READ@

    __defined at:__ @multi.h:531:9@

    __exported by:__ @curl\/curl.h@
-}
cURLMNOTIFY_INFO_READ :: FC.CInt
cURLMNOTIFY_INFO_READ = (0 :: FC.CInt)

{-| __C declaration:__ @CURLMNOTIFY_EASY_DONE@

    __defined at:__ @multi.h:532:9@

    __exported by:__ @curl\/curl.h@
-}
cURLMNOTIFY_EASY_DONE :: FC.CInt
cURLMNOTIFY_EASY_DONE = (1 :: FC.CInt)

{-| Auxiliary type used by 'Curl_notify_callback'

__defined at:__ @multi.h:537:16@

__exported by:__ @curl\/curl.h@
-}
newtype Curl_notify_callback_Deref = Curl_notify_callback_Deref
  { un_Curl_notify_callback_Deref :: (Ptr.Ptr Void) -> FC.CUInt -> (Ptr.Ptr Void) -> (Ptr.Ptr Void) -> IO ()
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_notify_callback_Deref ::
     Curl_notify_callback_Deref
  -> IO (Ptr.FunPtr Curl_notify_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_notify_callback_Deref ::
     Ptr.FunPtr Curl_notify_callback_Deref
  -> Curl_notify_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_notify_callback_Deref where

  toFunPtr = toCurl_notify_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_notify_callback_Deref where

  fromFunPtr = fromCurl_notify_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_notify_callback_Deref) "un_Curl_notify_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_notify_callback_Deref" (Ptr.Ptr Curl_notify_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_notify_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_notify_callback_Deref "un_Curl_notify_callback_Deref" where

  type CFieldType Curl_notify_callback_Deref "un_Curl_notify_callback_Deref" =
    (Ptr.Ptr Void) -> FC.CUInt -> (Ptr.Ptr Void) -> (Ptr.Ptr Void) -> IO ()

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_notify_callback@

    __defined at:__ @multi.h:537:16@

    __exported by:__ @curl\/curl.h@
-}
newtype Curl_notify_callback = Curl_notify_callback
  { un_Curl_notify_callback :: Ptr.FunPtr Curl_notify_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_notify_callback) "un_Curl_notify_callback")
         ) => GHC.Records.HasField "un_Curl_notify_callback" (Ptr.Ptr Curl_notify_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_notify_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_notify_callback "un_Curl_notify_callback" where

  type CFieldType Curl_notify_callback "un_Curl_notify_callback" =
    Ptr.FunPtr Curl_notify_callback_Deref

  offset# = \_ -> \_ -> 0
