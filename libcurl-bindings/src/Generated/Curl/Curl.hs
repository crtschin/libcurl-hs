{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}

module Generated.Curl.Curl where

import qualified C.Expr.HostPlatform as C
import qualified Data.Bits as Bits
import qualified Data.Ix as Ix
import qualified Data.List.NonEmpty
import qualified Data.Proxy
import qualified Foreign as F
import qualified Foreign.C as FC
import qualified GHC.Ptr as Ptr
import qualified GHC.Records
import qualified HsBindgen.Runtime.CEnum
import qualified HsBindgen.Runtime.ConstPtr
import qualified HsBindgen.Runtime.ConstantArray
import qualified HsBindgen.Runtime.FunPtr
import qualified HsBindgen.Runtime.HasBaseForeignType
import qualified HsBindgen.Runtime.HasCField
import qualified HsBindgen.Runtime.Prelude
import qualified Text.Read
import Data.Bits (FiniteBits)
import Data.Void (Void)
import HsBindgen.Runtime.TypeEquality (TyEq)
import Prelude ((<*>), (>>), Bounded, Enum, Eq, IO, Int, Integral, Num, Ord, Read, Real, Show, pure, showsPrec)

{-| __C declaration:__ @curl_off_t@

    __defined at:__ @system.h:405:34@

    __exported by:__ @curl\/curl.h@
-}
newtype Curl_off_t = Curl_off_t
  { un_Curl_off_t :: FC.CLong
  }
  deriving stock (Eq, Ord, Read, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType, Bits.Bits, Bounded, Enum, FiniteBits, Integral, Ix.Ix, Num, Real)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_off_t) "un_Curl_off_t")
         ) => GHC.Records.HasField "un_Curl_off_t" (Ptr.Ptr Curl_off_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_off_t")

instance HsBindgen.Runtime.HasCField.HasCField Curl_off_t "un_Curl_off_t" where

  type CFieldType Curl_off_t "un_Curl_off_t" = FC.CLong

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @CURLcode@

    __defined at:__ @curl\/curl.h:517:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype CURLcode = CURLcode
  { un_CURLcode :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable CURLcode where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure CURLcode
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          CURLcode un_CURLcode2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_CURLcode2

instance HsBindgen.Runtime.CEnum.CEnum CURLcode where

  type CEnumZ CURLcode = FC.CUInt

  toCEnum = CURLcode

  fromCEnum = un_CURLcode

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLE_OK")
                                                     , (1, Data.List.NonEmpty.singleton "CURLE_UNSUPPORTED_PROTOCOL")
                                                     , (2, Data.List.NonEmpty.singleton "CURLE_FAILED_INIT")
                                                     , (3, Data.List.NonEmpty.singleton "CURLE_URL_MALFORMAT")
                                                     , (4, Data.List.NonEmpty.singleton "CURLE_NOT_BUILT_IN")
                                                     , (5, Data.List.NonEmpty.singleton "CURLE_COULDNT_RESOLVE_PROXY")
                                                     , (6, Data.List.NonEmpty.singleton "CURLE_COULDNT_RESOLVE_HOST")
                                                     , (7, Data.List.NonEmpty.singleton "CURLE_COULDNT_CONNECT")
                                                     , (8, Data.List.NonEmpty.singleton "CURLE_WEIRD_SERVER_REPLY")
                                                     , (9, Data.List.NonEmpty.singleton "CURLE_REMOTE_ACCESS_DENIED")
                                                     , (10, Data.List.NonEmpty.singleton "CURLE_FTP_ACCEPT_FAILED")
                                                     , (11, Data.List.NonEmpty.singleton "CURLE_FTP_WEIRD_PASS_REPLY")
                                                     , (12, Data.List.NonEmpty.singleton "CURLE_FTP_ACCEPT_TIMEOUT")
                                                     , (13, Data.List.NonEmpty.singleton "CURLE_FTP_WEIRD_PASV_REPLY")
                                                     , (14, Data.List.NonEmpty.singleton "CURLE_FTP_WEIRD_227_FORMAT")
                                                     , (15, Data.List.NonEmpty.singleton "CURLE_FTP_CANT_GET_HOST")
                                                     , (16, Data.List.NonEmpty.singleton "CURLE_HTTP2")
                                                     , (17, Data.List.NonEmpty.singleton "CURLE_FTP_COULDNT_SET_TYPE")
                                                     , (18, Data.List.NonEmpty.singleton "CURLE_PARTIAL_FILE")
                                                     , (19, Data.List.NonEmpty.singleton "CURLE_FTP_COULDNT_RETR_FILE")
                                                     , (20, Data.List.NonEmpty.singleton "CURLE_OBSOLETE20")
                                                     , (21, Data.List.NonEmpty.singleton "CURLE_QUOTE_ERROR")
                                                     , (22, Data.List.NonEmpty.singleton "CURLE_HTTP_RETURNED_ERROR")
                                                     , (23, Data.List.NonEmpty.singleton "CURLE_WRITE_ERROR")
                                                     , (24, Data.List.NonEmpty.singleton "CURLE_OBSOLETE24")
                                                     , (25, Data.List.NonEmpty.singleton "CURLE_UPLOAD_FAILED")
                                                     , (26, Data.List.NonEmpty.singleton "CURLE_READ_ERROR")
                                                     , (27, Data.List.NonEmpty.singleton "CURLE_OUT_OF_MEMORY")
                                                     , (28, Data.List.NonEmpty.singleton "CURLE_OPERATION_TIMEDOUT")
                                                     , (29, Data.List.NonEmpty.singleton "CURLE_OBSOLETE29")
                                                     , (30, Data.List.NonEmpty.singleton "CURLE_FTP_PORT_FAILED")
                                                     , (31, Data.List.NonEmpty.singleton "CURLE_FTP_COULDNT_USE_REST")
                                                     , (32, Data.List.NonEmpty.singleton "CURLE_OBSOLETE32")
                                                     , (33, Data.List.NonEmpty.singleton "CURLE_RANGE_ERROR")
                                                     , (34, Data.List.NonEmpty.singleton "CURLE_OBSOLETE34")
                                                     , (35, Data.List.NonEmpty.singleton "CURLE_SSL_CONNECT_ERROR")
                                                     , (36, Data.List.NonEmpty.singleton "CURLE_BAD_DOWNLOAD_RESUME")
                                                     , (37, Data.List.NonEmpty.singleton "CURLE_FILE_COULDNT_READ_FILE")
                                                     , (38, Data.List.NonEmpty.singleton "CURLE_LDAP_CANNOT_BIND")
                                                     , (39, Data.List.NonEmpty.singleton "CURLE_LDAP_SEARCH_FAILED")
                                                     , (40, Data.List.NonEmpty.singleton "CURLE_OBSOLETE40")
                                                     , (41, Data.List.NonEmpty.singleton "CURLE_OBSOLETE41")
                                                     , (42, Data.List.NonEmpty.singleton "CURLE_ABORTED_BY_CALLBACK")
                                                     , (43, Data.List.NonEmpty.singleton "CURLE_BAD_FUNCTION_ARGUMENT")
                                                     , (44, Data.List.NonEmpty.singleton "CURLE_OBSOLETE44")
                                                     , (45, Data.List.NonEmpty.singleton "CURLE_INTERFACE_FAILED")
                                                     , (46, Data.List.NonEmpty.singleton "CURLE_OBSOLETE46")
                                                     , (47, Data.List.NonEmpty.singleton "CURLE_TOO_MANY_REDIRECTS")
                                                     , (48, Data.List.NonEmpty.singleton "CURLE_UNKNOWN_OPTION")
                                                     , (49, Data.List.NonEmpty.singleton "CURLE_SETOPT_OPTION_SYNTAX")
                                                     , (50, Data.List.NonEmpty.singleton "CURLE_OBSOLETE50")
                                                     , (51, Data.List.NonEmpty.singleton "CURLE_OBSOLETE51")
                                                     , (52, Data.List.NonEmpty.singleton "CURLE_GOT_NOTHING")
                                                     , (53, Data.List.NonEmpty.singleton "CURLE_SSL_ENGINE_NOTFOUND")
                                                     , (54, Data.List.NonEmpty.singleton "CURLE_SSL_ENGINE_SETFAILED")
                                                     , (55, Data.List.NonEmpty.singleton "CURLE_SEND_ERROR")
                                                     , (56, Data.List.NonEmpty.singleton "CURLE_RECV_ERROR")
                                                     , (57, Data.List.NonEmpty.singleton "CURLE_OBSOLETE57")
                                                     , (58, Data.List.NonEmpty.singleton "CURLE_SSL_CERTPROBLEM")
                                                     , (59, Data.List.NonEmpty.singleton "CURLE_SSL_CIPHER")
                                                     , (60, Data.List.NonEmpty.singleton "CURLE_PEER_FAILED_VERIFICATION")
                                                     , (61, Data.List.NonEmpty.singleton "CURLE_BAD_CONTENT_ENCODING")
                                                     , (62, Data.List.NonEmpty.singleton "CURLE_OBSOLETE62")
                                                     , (63, Data.List.NonEmpty.singleton "CURLE_FILESIZE_EXCEEDED")
                                                     , (64, Data.List.NonEmpty.singleton "CURLE_USE_SSL_FAILED")
                                                     , (65, Data.List.NonEmpty.singleton "CURLE_SEND_FAIL_REWIND")
                                                     , (66, Data.List.NonEmpty.singleton "CURLE_SSL_ENGINE_INITFAILED")
                                                     , (67, Data.List.NonEmpty.singleton "CURLE_LOGIN_DENIED")
                                                     , (68, Data.List.NonEmpty.singleton "CURLE_TFTP_NOTFOUND")
                                                     , (69, Data.List.NonEmpty.singleton "CURLE_TFTP_PERM")
                                                     , (70, Data.List.NonEmpty.singleton "CURLE_REMOTE_DISK_FULL")
                                                     , (71, Data.List.NonEmpty.singleton "CURLE_TFTP_ILLEGAL")
                                                     , (72, Data.List.NonEmpty.singleton "CURLE_TFTP_UNKNOWNID")
                                                     , (73, Data.List.NonEmpty.singleton "CURLE_REMOTE_FILE_EXISTS")
                                                     , (74, Data.List.NonEmpty.singleton "CURLE_TFTP_NOSUCHUSER")
                                                     , (75, Data.List.NonEmpty.singleton "CURLE_OBSOLETE75")
                                                     , (76, Data.List.NonEmpty.singleton "CURLE_OBSOLETE76")
                                                     , (77, Data.List.NonEmpty.singleton "CURLE_SSL_CACERT_BADFILE")
                                                     , (78, Data.List.NonEmpty.singleton "CURLE_REMOTE_FILE_NOT_FOUND")
                                                     , (79, Data.List.NonEmpty.singleton "CURLE_SSH")
                                                     , (80, Data.List.NonEmpty.singleton "CURLE_SSL_SHUTDOWN_FAILED")
                                                     , (81, Data.List.NonEmpty.singleton "CURLE_AGAIN")
                                                     , (82, Data.List.NonEmpty.singleton "CURLE_SSL_CRL_BADFILE")
                                                     , (83, Data.List.NonEmpty.singleton "CURLE_SSL_ISSUER_ERROR")
                                                     , (84, Data.List.NonEmpty.singleton "CURLE_FTP_PRET_FAILED")
                                                     , (85, Data.List.NonEmpty.singleton "CURLE_RTSP_CSEQ_ERROR")
                                                     , (86, Data.List.NonEmpty.singleton "CURLE_RTSP_SESSION_ERROR")
                                                     , (87, Data.List.NonEmpty.singleton "CURLE_FTP_BAD_FILE_LIST")
                                                     , (88, Data.List.NonEmpty.singleton "CURLE_CHUNK_FAILED")
                                                     , (89, Data.List.NonEmpty.singleton "CURLE_NO_CONNECTION_AVAILABLE")
                                                     , (90, Data.List.NonEmpty.singleton "CURLE_SSL_PINNEDPUBKEYNOTMATCH")
                                                     , (91, Data.List.NonEmpty.singleton "CURLE_SSL_INVALIDCERTSTATUS")
                                                     , (92, Data.List.NonEmpty.singleton "CURLE_HTTP2_STREAM")
                                                     , (93, Data.List.NonEmpty.singleton "CURLE_RECURSIVE_API_CALL")
                                                     , (94, Data.List.NonEmpty.singleton "CURLE_AUTH_ERROR")
                                                     , (95, Data.List.NonEmpty.singleton "CURLE_HTTP3")
                                                     , (96, Data.List.NonEmpty.singleton "CURLE_QUIC_CONNECT_ERROR")
                                                     , (97, Data.List.NonEmpty.singleton "CURLE_PROXY")
                                                     , (98, Data.List.NonEmpty.singleton "CURLE_SSL_CLIENTCERT")
                                                     , (99, Data.List.NonEmpty.singleton "CURLE_UNRECOVERABLE_POLL")
                                                     , (100, Data.List.NonEmpty.singleton "CURLE_TOO_LARGE")
                                                     , (101, Data.List.NonEmpty.singleton "CURLE_ECH_REQUIRED")
                                                     , (102, Data.List.NonEmpty.singleton "CURL_LAST")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "CURLcode"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "CURLcode"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum CURLcode where

  minDeclaredValue = CURLE_OK

  maxDeclaredValue = CURL_LAST

instance Show CURLcode where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read CURLcode where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLE_OK@

    __defined at:__ @curl\/curl.h:518:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_OK :: CURLcode
pattern CURLE_OK = CURLcode 0

{-| __C declaration:__ @CURLE_UNSUPPORTED_PROTOCOL@

    __defined at:__ @curl\/curl.h:519:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_UNSUPPORTED_PROTOCOL :: CURLcode
pattern CURLE_UNSUPPORTED_PROTOCOL = CURLcode 1

{-| __C declaration:__ @CURLE_FAILED_INIT@

    __defined at:__ @curl\/curl.h:520:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_FAILED_INIT :: CURLcode
pattern CURLE_FAILED_INIT = CURLcode 2

{-| __C declaration:__ @CURLE_URL_MALFORMAT@

    __defined at:__ @curl\/curl.h:521:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_URL_MALFORMAT :: CURLcode
pattern CURLE_URL_MALFORMAT = CURLcode 3

{-| __C declaration:__ @CURLE_NOT_BUILT_IN@

    __defined at:__ @curl\/curl.h:522:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_NOT_BUILT_IN :: CURLcode
pattern CURLE_NOT_BUILT_IN = CURLcode 4

{-| __C declaration:__ @CURLE_COULDNT_RESOLVE_PROXY@

    __defined at:__ @curl\/curl.h:524:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_COULDNT_RESOLVE_PROXY :: CURLcode
pattern CURLE_COULDNT_RESOLVE_PROXY = CURLcode 5

{-| __C declaration:__ @CURLE_COULDNT_RESOLVE_HOST@

    __defined at:__ @curl\/curl.h:525:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_COULDNT_RESOLVE_HOST :: CURLcode
pattern CURLE_COULDNT_RESOLVE_HOST = CURLcode 6

{-| __C declaration:__ @CURLE_COULDNT_CONNECT@

    __defined at:__ @curl\/curl.h:526:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_COULDNT_CONNECT :: CURLcode
pattern CURLE_COULDNT_CONNECT = CURLcode 7

{-| __C declaration:__ @CURLE_WEIRD_SERVER_REPLY@

    __defined at:__ @curl\/curl.h:527:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_WEIRD_SERVER_REPLY :: CURLcode
pattern CURLE_WEIRD_SERVER_REPLY = CURLcode 8

{-| __C declaration:__ @CURLE_REMOTE_ACCESS_DENIED@

    __defined at:__ @curl\/curl.h:528:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_REMOTE_ACCESS_DENIED :: CURLcode
pattern CURLE_REMOTE_ACCESS_DENIED = CURLcode 9

{-| __C declaration:__ @CURLE_FTP_ACCEPT_FAILED@

    __defined at:__ @curl\/curl.h:531:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_FTP_ACCEPT_FAILED :: CURLcode
pattern CURLE_FTP_ACCEPT_FAILED = CURLcode 10

{-| __C declaration:__ @CURLE_FTP_WEIRD_PASS_REPLY@

    __defined at:__ @curl\/curl.h:533:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_FTP_WEIRD_PASS_REPLY :: CURLcode
pattern CURLE_FTP_WEIRD_PASS_REPLY = CURLcode 11

{-| __C declaration:__ @CURLE_FTP_ACCEPT_TIMEOUT@

    __defined at:__ @curl\/curl.h:534:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_FTP_ACCEPT_TIMEOUT :: CURLcode
pattern CURLE_FTP_ACCEPT_TIMEOUT = CURLcode 12

{-| __C declaration:__ @CURLE_FTP_WEIRD_PASV_REPLY@

    __defined at:__ @curl\/curl.h:537:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_FTP_WEIRD_PASV_REPLY :: CURLcode
pattern CURLE_FTP_WEIRD_PASV_REPLY = CURLcode 13

{-| __C declaration:__ @CURLE_FTP_WEIRD_227_FORMAT@

    __defined at:__ @curl\/curl.h:538:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_FTP_WEIRD_227_FORMAT :: CURLcode
pattern CURLE_FTP_WEIRD_227_FORMAT = CURLcode 14

{-| __C declaration:__ @CURLE_FTP_CANT_GET_HOST@

    __defined at:__ @curl\/curl.h:539:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_FTP_CANT_GET_HOST :: CURLcode
pattern CURLE_FTP_CANT_GET_HOST = CURLcode 15

{-| __C declaration:__ @CURLE_HTTP2@

    __defined at:__ @curl\/curl.h:540:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_HTTP2 :: CURLcode
pattern CURLE_HTTP2 = CURLcode 16

{-| __C declaration:__ @CURLE_FTP_COULDNT_SET_TYPE@

    __defined at:__ @curl\/curl.h:543:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_FTP_COULDNT_SET_TYPE :: CURLcode
pattern CURLE_FTP_COULDNT_SET_TYPE = CURLcode 17

{-| __C declaration:__ @CURLE_PARTIAL_FILE@

    __defined at:__ @curl\/curl.h:544:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_PARTIAL_FILE :: CURLcode
pattern CURLE_PARTIAL_FILE = CURLcode 18

{-| __C declaration:__ @CURLE_FTP_COULDNT_RETR_FILE@

    __defined at:__ @curl\/curl.h:545:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_FTP_COULDNT_RETR_FILE :: CURLcode
pattern CURLE_FTP_COULDNT_RETR_FILE = CURLcode 19

{-| __C declaration:__ @CURLE_OBSOLETE20@

    __defined at:__ @curl\/curl.h:546:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_OBSOLETE20 :: CURLcode
pattern CURLE_OBSOLETE20 = CURLcode 20

{-| __C declaration:__ @CURLE_QUOTE_ERROR@

    __defined at:__ @curl\/curl.h:547:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_QUOTE_ERROR :: CURLcode
pattern CURLE_QUOTE_ERROR = CURLcode 21

{-| __C declaration:__ @CURLE_HTTP_RETURNED_ERROR@

    __defined at:__ @curl\/curl.h:548:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_HTTP_RETURNED_ERROR :: CURLcode
pattern CURLE_HTTP_RETURNED_ERROR = CURLcode 22

{-| __C declaration:__ @CURLE_WRITE_ERROR@

    __defined at:__ @curl\/curl.h:549:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_WRITE_ERROR :: CURLcode
pattern CURLE_WRITE_ERROR = CURLcode 23

{-| __C declaration:__ @CURLE_OBSOLETE24@

    __defined at:__ @curl\/curl.h:550:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_OBSOLETE24 :: CURLcode
pattern CURLE_OBSOLETE24 = CURLcode 24

{-| __C declaration:__ @CURLE_UPLOAD_FAILED@

    __defined at:__ @curl\/curl.h:551:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_UPLOAD_FAILED :: CURLcode
pattern CURLE_UPLOAD_FAILED = CURLcode 25

{-| __C declaration:__ @CURLE_READ_ERROR@

    __defined at:__ @curl\/curl.h:552:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_READ_ERROR :: CURLcode
pattern CURLE_READ_ERROR = CURLcode 26

{-| __C declaration:__ @CURLE_OUT_OF_MEMORY@

    __defined at:__ @curl\/curl.h:553:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_OUT_OF_MEMORY :: CURLcode
pattern CURLE_OUT_OF_MEMORY = CURLcode 27

{-| __C declaration:__ @CURLE_OPERATION_TIMEDOUT@

    __defined at:__ @curl\/curl.h:554:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_OPERATION_TIMEDOUT :: CURLcode
pattern CURLE_OPERATION_TIMEDOUT = CURLcode 28

{-| __C declaration:__ @CURLE_OBSOLETE29@

    __defined at:__ @curl\/curl.h:555:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_OBSOLETE29 :: CURLcode
pattern CURLE_OBSOLETE29 = CURLcode 29

{-| __C declaration:__ @CURLE_FTP_PORT_FAILED@

    __defined at:__ @curl\/curl.h:556:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_FTP_PORT_FAILED :: CURLcode
pattern CURLE_FTP_PORT_FAILED = CURLcode 30

{-| __C declaration:__ @CURLE_FTP_COULDNT_USE_REST@

    __defined at:__ @curl\/curl.h:557:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_FTP_COULDNT_USE_REST :: CURLcode
pattern CURLE_FTP_COULDNT_USE_REST = CURLcode 31

{-| __C declaration:__ @CURLE_OBSOLETE32@

    __defined at:__ @curl\/curl.h:558:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_OBSOLETE32 :: CURLcode
pattern CURLE_OBSOLETE32 = CURLcode 32

{-| __C declaration:__ @CURLE_RANGE_ERROR@

    __defined at:__ @curl\/curl.h:559:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_RANGE_ERROR :: CURLcode
pattern CURLE_RANGE_ERROR = CURLcode 33

{-| __C declaration:__ @CURLE_OBSOLETE34@

    __defined at:__ @curl\/curl.h:560:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_OBSOLETE34 :: CURLcode
pattern CURLE_OBSOLETE34 = CURLcode 34

{-| __C declaration:__ @CURLE_SSL_CONNECT_ERROR@

    __defined at:__ @curl\/curl.h:561:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_SSL_CONNECT_ERROR :: CURLcode
pattern CURLE_SSL_CONNECT_ERROR = CURLcode 35

{-| __C declaration:__ @CURLE_BAD_DOWNLOAD_RESUME@

    __defined at:__ @curl\/curl.h:562:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_BAD_DOWNLOAD_RESUME :: CURLcode
pattern CURLE_BAD_DOWNLOAD_RESUME = CURLcode 36

{-| __C declaration:__ @CURLE_FILE_COULDNT_READ_FILE@

    __defined at:__ @curl\/curl.h:563:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_FILE_COULDNT_READ_FILE :: CURLcode
pattern CURLE_FILE_COULDNT_READ_FILE = CURLcode 37

{-| __C declaration:__ @CURLE_LDAP_CANNOT_BIND@

    __defined at:__ @curl\/curl.h:564:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_LDAP_CANNOT_BIND :: CURLcode
pattern CURLE_LDAP_CANNOT_BIND = CURLcode 38

{-| __C declaration:__ @CURLE_LDAP_SEARCH_FAILED@

    __defined at:__ @curl\/curl.h:565:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_LDAP_SEARCH_FAILED :: CURLcode
pattern CURLE_LDAP_SEARCH_FAILED = CURLcode 39

{-| __C declaration:__ @CURLE_OBSOLETE40@

    __defined at:__ @curl\/curl.h:566:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_OBSOLETE40 :: CURLcode
pattern CURLE_OBSOLETE40 = CURLcode 40

{-| __C declaration:__ @CURLE_OBSOLETE41@

    __defined at:__ @curl\/curl.h:567:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_OBSOLETE41 :: CURLcode
pattern CURLE_OBSOLETE41 = CURLcode 41

{-| __C declaration:__ @CURLE_ABORTED_BY_CALLBACK@

    __defined at:__ @curl\/curl.h:568:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_ABORTED_BY_CALLBACK :: CURLcode
pattern CURLE_ABORTED_BY_CALLBACK = CURLcode 42

{-| __C declaration:__ @CURLE_BAD_FUNCTION_ARGUMENT@

    __defined at:__ @curl\/curl.h:569:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_BAD_FUNCTION_ARGUMENT :: CURLcode
pattern CURLE_BAD_FUNCTION_ARGUMENT = CURLcode 43

{-| __C declaration:__ @CURLE_OBSOLETE44@

    __defined at:__ @curl\/curl.h:570:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_OBSOLETE44 :: CURLcode
pattern CURLE_OBSOLETE44 = CURLcode 44

{-| __C declaration:__ @CURLE_INTERFACE_FAILED@

    __defined at:__ @curl\/curl.h:571:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_INTERFACE_FAILED :: CURLcode
pattern CURLE_INTERFACE_FAILED = CURLcode 45

{-| __C declaration:__ @CURLE_OBSOLETE46@

    __defined at:__ @curl\/curl.h:572:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_OBSOLETE46 :: CURLcode
pattern CURLE_OBSOLETE46 = CURLcode 46

{-| __C declaration:__ @CURLE_TOO_MANY_REDIRECTS@

    __defined at:__ @curl\/curl.h:573:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_TOO_MANY_REDIRECTS :: CURLcode
pattern CURLE_TOO_MANY_REDIRECTS = CURLcode 47

{-| __C declaration:__ @CURLE_UNKNOWN_OPTION@

    __defined at:__ @curl\/curl.h:574:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_UNKNOWN_OPTION :: CURLcode
pattern CURLE_UNKNOWN_OPTION = CURLcode 48

{-| __C declaration:__ @CURLE_SETOPT_OPTION_SYNTAX@

    __defined at:__ @curl\/curl.h:575:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_SETOPT_OPTION_SYNTAX :: CURLcode
pattern CURLE_SETOPT_OPTION_SYNTAX = CURLcode 49

{-| __C declaration:__ @CURLE_OBSOLETE50@

    __defined at:__ @curl\/curl.h:576:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_OBSOLETE50 :: CURLcode
pattern CURLE_OBSOLETE50 = CURLcode 50

{-| __C declaration:__ @CURLE_OBSOLETE51@

    __defined at:__ @curl\/curl.h:577:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_OBSOLETE51 :: CURLcode
pattern CURLE_OBSOLETE51 = CURLcode 51

{-| __C declaration:__ @CURLE_GOT_NOTHING@

    __defined at:__ @curl\/curl.h:578:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_GOT_NOTHING :: CURLcode
pattern CURLE_GOT_NOTHING = CURLcode 52

{-| __C declaration:__ @CURLE_SSL_ENGINE_NOTFOUND@

    __defined at:__ @curl\/curl.h:579:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_SSL_ENGINE_NOTFOUND :: CURLcode
pattern CURLE_SSL_ENGINE_NOTFOUND = CURLcode 53

{-| __C declaration:__ @CURLE_SSL_ENGINE_SETFAILED@

    __defined at:__ @curl\/curl.h:580:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_SSL_ENGINE_SETFAILED :: CURLcode
pattern CURLE_SSL_ENGINE_SETFAILED = CURLcode 54

{-| __C declaration:__ @CURLE_SEND_ERROR@

    __defined at:__ @curl\/curl.h:582:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_SEND_ERROR :: CURLcode
pattern CURLE_SEND_ERROR = CURLcode 55

{-| __C declaration:__ @CURLE_RECV_ERROR@

    __defined at:__ @curl\/curl.h:583:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_RECV_ERROR :: CURLcode
pattern CURLE_RECV_ERROR = CURLcode 56

{-| __C declaration:__ @CURLE_OBSOLETE57@

    __defined at:__ @curl\/curl.h:584:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_OBSOLETE57 :: CURLcode
pattern CURLE_OBSOLETE57 = CURLcode 57

{-| __C declaration:__ @CURLE_SSL_CERTPROBLEM@

    __defined at:__ @curl\/curl.h:585:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_SSL_CERTPROBLEM :: CURLcode
pattern CURLE_SSL_CERTPROBLEM = CURLcode 58

{-| __C declaration:__ @CURLE_SSL_CIPHER@

    __defined at:__ @curl\/curl.h:586:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_SSL_CIPHER :: CURLcode
pattern CURLE_SSL_CIPHER = CURLcode 59

{-| __C declaration:__ @CURLE_PEER_FAILED_VERIFICATION@

    __defined at:__ @curl\/curl.h:587:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_PEER_FAILED_VERIFICATION :: CURLcode
pattern CURLE_PEER_FAILED_VERIFICATION = CURLcode 60

{-| __C declaration:__ @CURLE_BAD_CONTENT_ENCODING@

    __defined at:__ @curl\/curl.h:589:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_BAD_CONTENT_ENCODING :: CURLcode
pattern CURLE_BAD_CONTENT_ENCODING = CURLcode 61

{-| __C declaration:__ @CURLE_OBSOLETE62@

    __defined at:__ @curl\/curl.h:590:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_OBSOLETE62 :: CURLcode
pattern CURLE_OBSOLETE62 = CURLcode 62

{-| __C declaration:__ @CURLE_FILESIZE_EXCEEDED@

    __defined at:__ @curl\/curl.h:591:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_FILESIZE_EXCEEDED :: CURLcode
pattern CURLE_FILESIZE_EXCEEDED = CURLcode 63

{-| __C declaration:__ @CURLE_USE_SSL_FAILED@

    __defined at:__ @curl\/curl.h:592:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_USE_SSL_FAILED :: CURLcode
pattern CURLE_USE_SSL_FAILED = CURLcode 64

{-| __C declaration:__ @CURLE_SEND_FAIL_REWIND@

    __defined at:__ @curl\/curl.h:593:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_SEND_FAIL_REWIND :: CURLcode
pattern CURLE_SEND_FAIL_REWIND = CURLcode 65

{-| __C declaration:__ @CURLE_SSL_ENGINE_INITFAILED@

    __defined at:__ @curl\/curl.h:595:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_SSL_ENGINE_INITFAILED :: CURLcode
pattern CURLE_SSL_ENGINE_INITFAILED = CURLcode 66

{-| __C declaration:__ @CURLE_LOGIN_DENIED@

    __defined at:__ @curl\/curl.h:596:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_LOGIN_DENIED :: CURLcode
pattern CURLE_LOGIN_DENIED = CURLcode 67

{-| __C declaration:__ @CURLE_TFTP_NOTFOUND@

    __defined at:__ @curl\/curl.h:598:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_TFTP_NOTFOUND :: CURLcode
pattern CURLE_TFTP_NOTFOUND = CURLcode 68

{-| __C declaration:__ @CURLE_TFTP_PERM@

    __defined at:__ @curl\/curl.h:599:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_TFTP_PERM :: CURLcode
pattern CURLE_TFTP_PERM = CURLcode 69

{-| __C declaration:__ @CURLE_REMOTE_DISK_FULL@

    __defined at:__ @curl\/curl.h:600:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_REMOTE_DISK_FULL :: CURLcode
pattern CURLE_REMOTE_DISK_FULL = CURLcode 70

{-| __C declaration:__ @CURLE_TFTP_ILLEGAL@

    __defined at:__ @curl\/curl.h:601:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_TFTP_ILLEGAL :: CURLcode
pattern CURLE_TFTP_ILLEGAL = CURLcode 71

{-| __C declaration:__ @CURLE_TFTP_UNKNOWNID@

    __defined at:__ @curl\/curl.h:602:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_TFTP_UNKNOWNID :: CURLcode
pattern CURLE_TFTP_UNKNOWNID = CURLcode 72

{-| __C declaration:__ @CURLE_REMOTE_FILE_EXISTS@

    __defined at:__ @curl\/curl.h:603:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_REMOTE_FILE_EXISTS :: CURLcode
pattern CURLE_REMOTE_FILE_EXISTS = CURLcode 73

{-| __C declaration:__ @CURLE_TFTP_NOSUCHUSER@

    __defined at:__ @curl\/curl.h:604:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_TFTP_NOSUCHUSER :: CURLcode
pattern CURLE_TFTP_NOSUCHUSER = CURLcode 74

{-| __C declaration:__ @CURLE_OBSOLETE75@

    __defined at:__ @curl\/curl.h:605:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_OBSOLETE75 :: CURLcode
pattern CURLE_OBSOLETE75 = CURLcode 75

{-| __C declaration:__ @CURLE_OBSOLETE76@

    __defined at:__ @curl\/curl.h:606:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_OBSOLETE76 :: CURLcode
pattern CURLE_OBSOLETE76 = CURLcode 76

{-| __C declaration:__ @CURLE_SSL_CACERT_BADFILE@

    __defined at:__ @curl\/curl.h:607:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_SSL_CACERT_BADFILE :: CURLcode
pattern CURLE_SSL_CACERT_BADFILE = CURLcode 77

{-| __C declaration:__ @CURLE_REMOTE_FILE_NOT_FOUND@

    __defined at:__ @curl\/curl.h:609:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_REMOTE_FILE_NOT_FOUND :: CURLcode
pattern CURLE_REMOTE_FILE_NOT_FOUND = CURLcode 78

{-| __C declaration:__ @CURLE_SSH@

    __defined at:__ @curl\/curl.h:610:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_SSH :: CURLcode
pattern CURLE_SSH = CURLcode 79

{-| __C declaration:__ @CURLE_SSL_SHUTDOWN_FAILED@

    __defined at:__ @curl\/curl.h:614:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_SSL_SHUTDOWN_FAILED :: CURLcode
pattern CURLE_SSL_SHUTDOWN_FAILED = CURLcode 80

{-| __C declaration:__ @CURLE_AGAIN@

    __defined at:__ @curl\/curl.h:616:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_AGAIN :: CURLcode
pattern CURLE_AGAIN = CURLcode 81

{-| __C declaration:__ @CURLE_SSL_CRL_BADFILE@

    __defined at:__ @curl\/curl.h:619:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_SSL_CRL_BADFILE :: CURLcode
pattern CURLE_SSL_CRL_BADFILE = CURLcode 82

{-| __C declaration:__ @CURLE_SSL_ISSUER_ERROR@

    __defined at:__ @curl\/curl.h:621:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_SSL_ISSUER_ERROR :: CURLcode
pattern CURLE_SSL_ISSUER_ERROR = CURLcode 83

{-| __C declaration:__ @CURLE_FTP_PRET_FAILED@

    __defined at:__ @curl\/curl.h:623:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_FTP_PRET_FAILED :: CURLcode
pattern CURLE_FTP_PRET_FAILED = CURLcode 84

{-| __C declaration:__ @CURLE_RTSP_CSEQ_ERROR@

    __defined at:__ @curl\/curl.h:624:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_RTSP_CSEQ_ERROR :: CURLcode
pattern CURLE_RTSP_CSEQ_ERROR = CURLcode 85

{-| __C declaration:__ @CURLE_RTSP_SESSION_ERROR@

    __defined at:__ @curl\/curl.h:625:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_RTSP_SESSION_ERROR :: CURLcode
pattern CURLE_RTSP_SESSION_ERROR = CURLcode 86

{-| __C declaration:__ @CURLE_FTP_BAD_FILE_LIST@

    __defined at:__ @curl\/curl.h:626:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_FTP_BAD_FILE_LIST :: CURLcode
pattern CURLE_FTP_BAD_FILE_LIST = CURLcode 87

{-| __C declaration:__ @CURLE_CHUNK_FAILED@

    __defined at:__ @curl\/curl.h:627:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_CHUNK_FAILED :: CURLcode
pattern CURLE_CHUNK_FAILED = CURLcode 88

{-| __C declaration:__ @CURLE_NO_CONNECTION_AVAILABLE@

    __defined at:__ @curl\/curl.h:628:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_NO_CONNECTION_AVAILABLE :: CURLcode
pattern CURLE_NO_CONNECTION_AVAILABLE = CURLcode 89

{-| __C declaration:__ @CURLE_SSL_PINNEDPUBKEYNOTMATCH@

    __defined at:__ @curl\/curl.h:630:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_SSL_PINNEDPUBKEYNOTMATCH :: CURLcode
pattern CURLE_SSL_PINNEDPUBKEYNOTMATCH = CURLcode 90

{-| __C declaration:__ @CURLE_SSL_INVALIDCERTSTATUS@

    __defined at:__ @curl\/curl.h:632:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_SSL_INVALIDCERTSTATUS :: CURLcode
pattern CURLE_SSL_INVALIDCERTSTATUS = CURLcode 91

{-| __C declaration:__ @CURLE_HTTP2_STREAM@

    __defined at:__ @curl\/curl.h:633:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_HTTP2_STREAM :: CURLcode
pattern CURLE_HTTP2_STREAM = CURLcode 92

{-| __C declaration:__ @CURLE_RECURSIVE_API_CALL@

    __defined at:__ @curl\/curl.h:635:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_RECURSIVE_API_CALL :: CURLcode
pattern CURLE_RECURSIVE_API_CALL = CURLcode 93

{-| __C declaration:__ @CURLE_AUTH_ERROR@

    __defined at:__ @curl\/curl.h:637:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_AUTH_ERROR :: CURLcode
pattern CURLE_AUTH_ERROR = CURLcode 94

{-| __C declaration:__ @CURLE_HTTP3@

    __defined at:__ @curl\/curl.h:639:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_HTTP3 :: CURLcode
pattern CURLE_HTTP3 = CURLcode 95

{-| __C declaration:__ @CURLE_QUIC_CONNECT_ERROR@

    __defined at:__ @curl\/curl.h:640:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_QUIC_CONNECT_ERROR :: CURLcode
pattern CURLE_QUIC_CONNECT_ERROR = CURLcode 96

{-| __C declaration:__ @CURLE_PROXY@

    __defined at:__ @curl\/curl.h:641:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_PROXY :: CURLcode
pattern CURLE_PROXY = CURLcode 97

{-| __C declaration:__ @CURLE_SSL_CLIENTCERT@

    __defined at:__ @curl\/curl.h:642:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_SSL_CLIENTCERT :: CURLcode
pattern CURLE_SSL_CLIENTCERT = CURLcode 98

{-| __C declaration:__ @CURLE_UNRECOVERABLE_POLL@

    __defined at:__ @curl\/curl.h:643:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_UNRECOVERABLE_POLL :: CURLcode
pattern CURLE_UNRECOVERABLE_POLL = CURLcode 99

{-| __C declaration:__ @CURLE_TOO_LARGE@

    __defined at:__ @curl\/curl.h:644:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_TOO_LARGE :: CURLcode
pattern CURLE_TOO_LARGE = CURLcode 100

{-| __C declaration:__ @CURLE_ECH_REQUIRED@

    __defined at:__ @curl\/curl.h:645:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLE_ECH_REQUIRED :: CURLcode
pattern CURLE_ECH_REQUIRED = CURLcode 101

{-| __C declaration:__ @CURL_LAST@

    __defined at:__ @curl\/curl.h:646:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_LAST :: CURLcode
pattern CURL_LAST = CURLcode 102

{-| __C declaration:__ @curl_header@

    __defined at:__ @header.h:31:8@

    __exported by:__ @curl\/curl.h@
-}
data Curl_header = Curl_header
  { curl_header_name :: Ptr.Ptr FC.CChar
    {- ^ __C declaration:__ @name@

         __defined at:__ @header.h:32:9@

         __exported by:__ @curl\/curl.h@
    -}
  , curl_header_value :: Ptr.Ptr FC.CChar
    {- ^ __C declaration:__ @value@

         __defined at:__ @header.h:33:9@

         __exported by:__ @curl\/curl.h@
    -}
  , curl_header_amount :: HsBindgen.Runtime.Prelude.CSize
    {- ^ __C declaration:__ @amount@

         __defined at:__ @header.h:34:10@

         __exported by:__ @curl\/curl.h@
    -}
  , curl_header_index :: HsBindgen.Runtime.Prelude.CSize
    {- ^ __C declaration:__ @index@

         __defined at:__ @header.h:35:10@

         __exported by:__ @curl\/curl.h@
    -}
  , curl_header_origin :: FC.CUInt
    {- ^ __C declaration:__ @origin@

         __defined at:__ @header.h:36:16@

         __exported by:__ @curl\/curl.h@
    -}
  , curl_header_anchor :: Ptr.Ptr Void
    {- ^ __C declaration:__ @anchor@

         __defined at:__ @header.h:37:9@

         __exported by:__ @curl\/curl.h@
    -}
  }
  deriving stock (Eq, Show)

instance F.Storable Curl_header where

  sizeOf = \_ -> (48 :: Int)

  alignment = \_ -> (8 :: Int)

  peek =
    \ptr0 ->
          pure Curl_header
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_header_name") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_header_value") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_header_amount") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_header_index") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_header_origin") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_header_anchor") ptr0

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_header
            curl_header_name2
            curl_header_value3
            curl_header_amount4
            curl_header_index5
            curl_header_origin6
            curl_header_anchor7 ->
                 HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_header_name") ptr0 curl_header_name2
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_header_value") ptr0 curl_header_value3
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_header_amount") ptr0 curl_header_amount4
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_header_index") ptr0 curl_header_index5
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_header_origin") ptr0 curl_header_origin6
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_header_anchor") ptr0 curl_header_anchor7

instance HsBindgen.Runtime.HasCField.HasCField Curl_header "curl_header_name" where

  type CFieldType Curl_header "curl_header_name" =
    Ptr.Ptr FC.CChar

  offset# = \_ -> \_ -> 0

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_header) "curl_header_name")
         ) => GHC.Records.HasField "curl_header_name" (Ptr.Ptr Curl_header) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_header_name")

instance HsBindgen.Runtime.HasCField.HasCField Curl_header "curl_header_value" where

  type CFieldType Curl_header "curl_header_value" =
    Ptr.Ptr FC.CChar

  offset# = \_ -> \_ -> 8

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_header) "curl_header_value")
         ) => GHC.Records.HasField "curl_header_value" (Ptr.Ptr Curl_header) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_header_value")

instance HsBindgen.Runtime.HasCField.HasCField Curl_header "curl_header_amount" where

  type CFieldType Curl_header "curl_header_amount" =
    HsBindgen.Runtime.Prelude.CSize

  offset# = \_ -> \_ -> 16

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_header) "curl_header_amount")
         ) => GHC.Records.HasField "curl_header_amount" (Ptr.Ptr Curl_header) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_header_amount")

instance HsBindgen.Runtime.HasCField.HasCField Curl_header "curl_header_index" where

  type CFieldType Curl_header "curl_header_index" =
    HsBindgen.Runtime.Prelude.CSize

  offset# = \_ -> \_ -> 24

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_header) "curl_header_index")
         ) => GHC.Records.HasField "curl_header_index" (Ptr.Ptr Curl_header) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_header_index")

instance HsBindgen.Runtime.HasCField.HasCField Curl_header "curl_header_origin" where

  type CFieldType Curl_header "curl_header_origin" =
    FC.CUInt

  offset# = \_ -> \_ -> 32

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_header) "curl_header_origin")
         ) => GHC.Records.HasField "curl_header_origin" (Ptr.Ptr Curl_header) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_header_origin")

instance HsBindgen.Runtime.HasCField.HasCField Curl_header "curl_header_anchor" where

  type CFieldType Curl_header "curl_header_anchor" =
    Ptr.Ptr Void

  offset# = \_ -> \_ -> 40

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_header) "curl_header_anchor")
         ) => GHC.Records.HasField "curl_header_anchor" (Ptr.Ptr Curl_header) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_header_anchor")

{-| __C declaration:__ @CURLH_HEADER@

    __defined at:__ @header.h:41:9@

    __exported by:__ @curl\/curl.h@
-}
cURLH_HEADER :: FC.CInt
cURLH_HEADER = (C.<<) (1 :: FC.CInt) (0 :: FC.CInt)

{-| __C declaration:__ @CURLH_TRAILER@

    __defined at:__ @header.h:42:9@

    __exported by:__ @curl\/curl.h@
-}
cURLH_TRAILER :: FC.CInt
cURLH_TRAILER = (C.<<) (1 :: FC.CInt) (1 :: FC.CInt)

{-| __C declaration:__ @CURLH_CONNECT@

    __defined at:__ @header.h:43:9@

    __exported by:__ @curl\/curl.h@
-}
cURLH_CONNECT :: FC.CInt
cURLH_CONNECT = (C.<<) (1 :: FC.CInt) (2 :: FC.CInt)

{-| __C declaration:__ @CURLH_1XX@

    __defined at:__ @header.h:44:9@

    __exported by:__ @curl\/curl.h@
-}
cURLH_1XX :: FC.CInt
cURLH_1XX = (C.<<) (1 :: FC.CInt) (3 :: FC.CInt)

{-| __C declaration:__ @CURLH_PSEUDO@

    __defined at:__ @header.h:45:9@

    __exported by:__ @curl\/curl.h@
-}
cURLH_PSEUDO :: FC.CInt
cURLH_PSEUDO = (C.<<) (1 :: FC.CInt) (4 :: FC.CInt)

{-| __C declaration:__ @CURLHcode@

    __defined at:__ @header.h:47:9@

    __exported by:__ @curl\/curl.h@
-}
newtype CURLHcode = CURLHcode
  { un_CURLHcode :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable CURLHcode where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure CURLHcode
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          CURLHcode un_CURLHcode2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_CURLHcode2

instance HsBindgen.Runtime.CEnum.CEnum CURLHcode where

  type CEnumZ CURLHcode = FC.CUInt

  toCEnum = CURLHcode

  fromCEnum = un_CURLHcode

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLHE_OK")
                                                     , (1, Data.List.NonEmpty.singleton "CURLHE_BADINDEX")
                                                     , (2, Data.List.NonEmpty.singleton "CURLHE_MISSING")
                                                     , (3, Data.List.NonEmpty.singleton "CURLHE_NOHEADERS")
                                                     , (4, Data.List.NonEmpty.singleton "CURLHE_NOREQUEST")
                                                     , (5, Data.List.NonEmpty.singleton "CURLHE_OUT_OF_MEMORY")
                                                     , (6, Data.List.NonEmpty.singleton "CURLHE_BAD_ARGUMENT")
                                                     , (7, Data.List.NonEmpty.singleton "CURLHE_NOT_BUILT_IN")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "CURLHcode"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "CURLHcode"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum CURLHcode where

  minDeclaredValue = CURLHE_OK

  maxDeclaredValue = CURLHE_NOT_BUILT_IN

instance Show CURLHcode where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read CURLHcode where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLHE_OK@

    __defined at:__ @header.h:48:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLHE_OK :: CURLHcode
pattern CURLHE_OK = CURLHcode 0

{-| __C declaration:__ @CURLHE_BADINDEX@

    __defined at:__ @header.h:49:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLHE_BADINDEX :: CURLHcode
pattern CURLHE_BADINDEX = CURLHcode 1

{-| __C declaration:__ @CURLHE_MISSING@

    __defined at:__ @header.h:50:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLHE_MISSING :: CURLHcode
pattern CURLHE_MISSING = CURLHcode 2

{-| __C declaration:__ @CURLHE_NOHEADERS@

    __defined at:__ @header.h:51:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLHE_NOHEADERS :: CURLHcode
pattern CURLHE_NOHEADERS = CURLHcode 3

{-| __C declaration:__ @CURLHE_NOREQUEST@

    __defined at:__ @header.h:52:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLHE_NOREQUEST :: CURLHcode
pattern CURLHE_NOREQUEST = CURLHcode 4

{-| __C declaration:__ @CURLHE_OUT_OF_MEMORY@

    __defined at:__ @header.h:53:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLHE_OUT_OF_MEMORY :: CURLHcode
pattern CURLHE_OUT_OF_MEMORY = CURLHcode 5

{-| __C declaration:__ @CURLHE_BAD_ARGUMENT@

    __defined at:__ @header.h:54:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLHE_BAD_ARGUMENT :: CURLHcode
pattern CURLHE_BAD_ARGUMENT = CURLHcode 6

{-| __C declaration:__ @CURLHE_NOT_BUILT_IN@

    __defined at:__ @header.h:55:3@

    __exported by:__ @curl\/curl.h@
-}
pattern CURLHE_NOT_BUILT_IN :: CURLHcode
pattern CURLHE_NOT_BUILT_IN = CURLHcode 7

{-| __C declaration:__ @CURLoption@

    __defined at:__ @curl\/curl.h:1138:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype CURLoption = CURLoption
  { un_CURLoption :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable CURLoption where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure CURLoption
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          CURLoption un_CURLoption2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_CURLoption2

instance HsBindgen.Runtime.CEnum.CEnum CURLoption where

  type CEnumZ CURLoption = FC.CUInt

  toCEnum = CURLoption

  fromCEnum = un_CURLoption

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (3, Data.List.NonEmpty.singleton "CURLOPT_PORT")
                                                     , (13, Data.List.NonEmpty.singleton "CURLOPT_TIMEOUT")
                                                     , (14, Data.List.NonEmpty.singleton "CURLOPT_INFILESIZE")
                                                     , (19, Data.List.NonEmpty.singleton "CURLOPT_LOW_SPEED_LIMIT")
                                                     , (20, Data.List.NonEmpty.singleton "CURLOPT_LOW_SPEED_TIME")
                                                     , (21, Data.List.NonEmpty.singleton "CURLOPT_RESUME_FROM")
                                                     , (27, Data.List.NonEmpty.singleton "CURLOPT_CRLF")
                                                     , (32, Data.List.NonEmpty.singleton "CURLOPT_SSLVERSION")
                                                     , (33, Data.List.NonEmpty.singleton "CURLOPT_TIMECONDITION")
                                                     , (34, Data.List.NonEmpty.singleton "CURLOPT_TIMEVALUE")
                                                     , (41, Data.List.NonEmpty.singleton "CURLOPT_VERBOSE")
                                                     , (42, Data.List.NonEmpty.singleton "CURLOPT_HEADER")
                                                     , (43, Data.List.NonEmpty.singleton "CURLOPT_NOPROGRESS")
                                                     , (44, Data.List.NonEmpty.singleton "CURLOPT_NOBODY")
                                                     , (45, Data.List.NonEmpty.singleton "CURLOPT_FAILONERROR")
                                                     , (46, Data.List.NonEmpty.singleton "CURLOPT_UPLOAD")
                                                     , (47, Data.List.NonEmpty.singleton "CURLOPT_POST")
                                                     , (48, Data.List.NonEmpty.singleton "CURLOPT_DIRLISTONLY")
                                                     , (50, Data.List.NonEmpty.singleton "CURLOPT_APPEND")
                                                     , (51, Data.List.NonEmpty.singleton "CURLOPT_NETRC")
                                                     , (52, Data.List.NonEmpty.singleton "CURLOPT_FOLLOWLOCATION")
                                                     , (53, Data.List.NonEmpty.singleton "CURLOPT_TRANSFERTEXT")
                                                     , (54, Data.List.NonEmpty.singleton "CURLOPT_PUT")
                                                     , (58, Data.List.NonEmpty.singleton "CURLOPT_AUTOREFERER")
                                                     , (59, Data.List.NonEmpty.singleton "CURLOPT_PROXYPORT")
                                                     , (60, Data.List.NonEmpty.singleton "CURLOPT_POSTFIELDSIZE")
                                                     , (61, Data.List.NonEmpty.singleton "CURLOPT_HTTPPROXYTUNNEL")
                                                     , (64, Data.List.NonEmpty.singleton "CURLOPT_SSL_VERIFYPEER")
                                                     , (68, Data.List.NonEmpty.singleton "CURLOPT_MAXREDIRS")
                                                     , (69, Data.List.NonEmpty.singleton "CURLOPT_FILETIME")
                                                     , (71, Data.List.NonEmpty.singleton "CURLOPT_MAXCONNECTS")
                                                     , (74, Data.List.NonEmpty.singleton "CURLOPT_FRESH_CONNECT")
                                                     , (75, Data.List.NonEmpty.singleton "CURLOPT_FORBID_REUSE")
                                                     , (78, Data.List.NonEmpty.singleton "CURLOPT_CONNECTTIMEOUT")
                                                     , (80, Data.List.NonEmpty.singleton "CURLOPT_HTTPGET")
                                                     , (81, Data.List.NonEmpty.singleton "CURLOPT_SSL_VERIFYHOST")
                                                     , (84, Data.List.NonEmpty.singleton "CURLOPT_HTTP_VERSION")
                                                     , (85, Data.List.NonEmpty.singleton "CURLOPT_FTP_USE_EPSV")
                                                     , (90, Data.List.NonEmpty.singleton "CURLOPT_SSLENGINE_DEFAULT")
                                                     , (91, Data.List.NonEmpty.singleton "CURLOPT_DNS_USE_GLOBAL_CACHE")
                                                     , (92, Data.List.NonEmpty.singleton "CURLOPT_DNS_CACHE_TIMEOUT")
                                                     , (96, Data.List.NonEmpty.singleton "CURLOPT_COOKIESESSION")
                                                     , (98, Data.List.NonEmpty.singleton "CURLOPT_BUFFERSIZE")
                                                     , (99, Data.List.NonEmpty.singleton "CURLOPT_NOSIGNAL")
                                                     , (101, Data.List.NonEmpty.singleton "CURLOPT_PROXYTYPE")
                                                     , (105, Data.List.NonEmpty.singleton "CURLOPT_UNRESTRICTED_AUTH")
                                                     , (106, Data.List.NonEmpty.singleton "CURLOPT_FTP_USE_EPRT")
                                                     , (107, Data.List.NonEmpty.singleton "CURLOPT_HTTPAUTH")
                                                     , (110, Data.List.NonEmpty.singleton "CURLOPT_FTP_CREATE_MISSING_DIRS")
                                                     , (111, Data.List.NonEmpty.singleton "CURLOPT_PROXYAUTH")
                                                     , (112, Data.List.NonEmpty.singleton "CURLOPT_SERVER_RESPONSE_TIMEOUT")
                                                     , (113, Data.List.NonEmpty.singleton "CURLOPT_IPRESOLVE")
                                                     , (114, Data.List.NonEmpty.singleton "CURLOPT_MAXFILESIZE")
                                                     , (119, Data.List.NonEmpty.singleton "CURLOPT_USE_SSL")
                                                     , (121, Data.List.NonEmpty.singleton "CURLOPT_TCP_NODELAY")
                                                     , (129, Data.List.NonEmpty.singleton "CURLOPT_FTPSSLAUTH")
                                                     , (136, Data.List.NonEmpty.singleton "CURLOPT_IGNORE_CONTENT_LENGTH")
                                                     , (137, Data.List.NonEmpty.singleton "CURLOPT_FTP_SKIP_PASV_IP")
                                                     , (138, Data.List.NonEmpty.singleton "CURLOPT_FTP_FILEMETHOD")
                                                     , (139, Data.List.NonEmpty.singleton "CURLOPT_LOCALPORT")
                                                     , (140, Data.List.NonEmpty.singleton "CURLOPT_LOCALPORTRANGE")
                                                     , (141, Data.List.NonEmpty.singleton "CURLOPT_CONNECT_ONLY")
                                                     , (150, Data.List.NonEmpty.singleton "CURLOPT_SSL_SESSIONID_CACHE")
                                                     , (151, Data.List.NonEmpty.singleton "CURLOPT_SSH_AUTH_TYPES")
                                                     , (154, Data.List.NonEmpty.singleton "CURLOPT_FTP_SSL_CCC")
                                                     , (155, Data.List.NonEmpty.singleton "CURLOPT_TIMEOUT_MS")
                                                     , (156, Data.List.NonEmpty.singleton "CURLOPT_CONNECTTIMEOUT_MS")
                                                     , (157, Data.List.NonEmpty.singleton "CURLOPT_HTTP_TRANSFER_DECODING")
                                                     , (158, Data.List.NonEmpty.singleton "CURLOPT_HTTP_CONTENT_DECODING")
                                                     , (159, Data.List.NonEmpty.singleton "CURLOPT_NEW_FILE_PERMS")
                                                     , (160, Data.List.NonEmpty.singleton "CURLOPT_NEW_DIRECTORY_PERMS")
                                                     , (161, Data.List.NonEmpty.singleton "CURLOPT_POSTREDIR")
                                                     , (166, Data.List.NonEmpty.singleton "CURLOPT_PROXY_TRANSFER_MODE")
                                                     , (171, Data.List.NonEmpty.singleton "CURLOPT_ADDRESS_SCOPE")
                                                     , (172, Data.List.NonEmpty.singleton "CURLOPT_CERTINFO")
                                                     , (178, Data.List.NonEmpty.singleton "CURLOPT_TFTP_BLKSIZE")
                                                     , (180, Data.List.NonEmpty.singleton "CURLOPT_SOCKS5_GSSAPI_NEC")
                                                     , (181, Data.List.NonEmpty.singleton "CURLOPT_PROTOCOLS")
                                                     , (182, Data.List.NonEmpty.singleton "CURLOPT_REDIR_PROTOCOLS")
                                                     , (188, Data.List.NonEmpty.singleton "CURLOPT_FTP_USE_PRET")
                                                     , (189, Data.List.NonEmpty.singleton "CURLOPT_RTSP_REQUEST")
                                                     , (193, Data.List.NonEmpty.singleton "CURLOPT_RTSP_CLIENT_CSEQ")
                                                     , (194, Data.List.NonEmpty.singleton "CURLOPT_RTSP_SERVER_CSEQ")
                                                     , (197, Data.List.NonEmpty.singleton "CURLOPT_WILDCARDMATCH")
                                                     , (207, Data.List.NonEmpty.singleton "CURLOPT_TRANSFER_ENCODING")
                                                     , (210, Data.List.NonEmpty.singleton "CURLOPT_GSSAPI_DELEGATION")
                                                     , (212, Data.List.NonEmpty.singleton "CURLOPT_ACCEPTTIMEOUT_MS")
                                                     , (213, Data.List.NonEmpty.singleton "CURLOPT_TCP_KEEPALIVE")
                                                     , (214, Data.List.NonEmpty.singleton "CURLOPT_TCP_KEEPIDLE")
                                                     , (215, Data.List.NonEmpty.singleton "CURLOPT_TCP_KEEPINTVL")
                                                     , (216, Data.List.NonEmpty.singleton "CURLOPT_SSL_OPTIONS")
                                                     , (218, Data.List.NonEmpty.singleton "CURLOPT_SASL_IR")
                                                     , (225, Data.List.NonEmpty.singleton "CURLOPT_SSL_ENABLE_NPN")
                                                     , (226, Data.List.NonEmpty.singleton "CURLOPT_SSL_ENABLE_ALPN")
                                                     , (227, Data.List.NonEmpty.singleton "CURLOPT_EXPECT_100_TIMEOUT_MS")
                                                     , (229, Data.List.NonEmpty.singleton "CURLOPT_HEADEROPT")
                                                     , (232, Data.List.NonEmpty.singleton "CURLOPT_SSL_VERIFYSTATUS")
                                                     , (233, Data.List.NonEmpty.singleton "CURLOPT_SSL_FALSESTART")
                                                     , (234, Data.List.NonEmpty.singleton "CURLOPT_PATH_AS_IS")
                                                     , (237, Data.List.NonEmpty.singleton "CURLOPT_PIPEWAIT")
                                                     , (239, Data.List.NonEmpty.singleton "CURLOPT_STREAM_WEIGHT")
                                                     , (242, Data.List.NonEmpty.singleton "CURLOPT_TFTP_NO_OPTIONS")
                                                     , (244, Data.List.NonEmpty.singleton "CURLOPT_TCP_FASTOPEN")
                                                     , (245, Data.List.NonEmpty.singleton "CURLOPT_KEEP_SENDING_ON_ERROR")
                                                     , (248, Data.List.NonEmpty.singleton "CURLOPT_PROXY_SSL_VERIFYPEER")
                                                     , (249, Data.List.NonEmpty.singleton "CURLOPT_PROXY_SSL_VERIFYHOST")
                                                     , (250, Data.List.NonEmpty.singleton "CURLOPT_PROXY_SSLVERSION")
                                                     , (261, Data.List.NonEmpty.singleton "CURLOPT_PROXY_SSL_OPTIONS")
                                                     , (265, Data.List.NonEmpty.singleton "CURLOPT_SUPPRESS_CONNECT_HEADERS")
                                                     , (267, Data.List.NonEmpty.singleton "CURLOPT_SOCKS5_AUTH")
                                                     , (268, Data.List.NonEmpty.singleton "CURLOPT_SSH_COMPRESSION")
                                                     , (271, Data.List.NonEmpty.singleton "CURLOPT_HAPPY_EYEBALLS_TIMEOUT_MS")
                                                     , (274, Data.List.NonEmpty.singleton "CURLOPT_HAPROXYPROTOCOL")
                                                     , (275, Data.List.NonEmpty.singleton "CURLOPT_DNS_SHUFFLE_ADDRESSES")
                                                     , (278, Data.List.NonEmpty.singleton "CURLOPT_DISALLOW_USERNAME_IN_URL")
                                                     , (280, Data.List.NonEmpty.singleton "CURLOPT_UPLOAD_BUFFERSIZE")
                                                     , (281, Data.List.NonEmpty.singleton "CURLOPT_UPKEEP_INTERVAL_MS")
                                                     , (285, Data.List.NonEmpty.singleton "CURLOPT_HTTP09_ALLOWED")
                                                     , (286, Data.List.NonEmpty.singleton "CURLOPT_ALTSVC_CTRL")
                                                     , (288, Data.List.NonEmpty.singleton "CURLOPT_MAXAGE_CONN")
                                                     , (290, Data.List.NonEmpty.singleton "CURLOPT_MAIL_RCPT_ALLOWFAILS")
                                                     , (299, Data.List.NonEmpty.singleton "CURLOPT_HSTS_CTRL")
                                                     , (306, Data.List.NonEmpty.singleton "CURLOPT_DOH_SSL_VERIFYPEER")
                                                     , (307, Data.List.NonEmpty.singleton "CURLOPT_DOH_SSL_VERIFYHOST")
                                                     , (308, Data.List.NonEmpty.singleton "CURLOPT_DOH_SSL_VERIFYSTATUS")
                                                     , (314, Data.List.NonEmpty.singleton "CURLOPT_MAXLIFETIME_CONN")
                                                     , (315, Data.List.NonEmpty.singleton "CURLOPT_MIME_OPTIONS")
                                                     , (320, Data.List.NonEmpty.singleton "CURLOPT_WS_OPTIONS")
                                                     , (321, Data.List.NonEmpty.singleton "CURLOPT_CA_CACHE_TIMEOUT")
                                                     , (322, Data.List.NonEmpty.singleton "CURLOPT_QUICK_EXIT")
                                                     , (324, Data.List.NonEmpty.singleton "CURLOPT_SERVER_RESPONSE_TIMEOUT_MS")
                                                     , (326, Data.List.NonEmpty.singleton "CURLOPT_TCP_KEEPCNT")
                                                     , (327, Data.List.NonEmpty.singleton "CURLOPT_UPLOAD_FLAGS")
                                                     , (10001, Data.List.NonEmpty.singleton "CURLOPT_WRITEDATA")
                                                     , (10002, Data.List.NonEmpty.singleton "CURLOPT_URL")
                                                     , (10004, Data.List.NonEmpty.singleton "CURLOPT_PROXY")
                                                     , (10005, Data.List.NonEmpty.singleton "CURLOPT_USERPWD")
                                                     , (10006, Data.List.NonEmpty.singleton "CURLOPT_PROXYUSERPWD")
                                                     , (10007, Data.List.NonEmpty.singleton "CURLOPT_RANGE")
                                                     , (10009, Data.List.NonEmpty.singleton "CURLOPT_READDATA")
                                                     , (10010, Data.List.NonEmpty.singleton "CURLOPT_ERRORBUFFER")
                                                     , (10015, Data.List.NonEmpty.singleton "CURLOPT_POSTFIELDS")
                                                     , (10016, Data.List.NonEmpty.singleton "CURLOPT_REFERER")
                                                     , (10017, Data.List.NonEmpty.singleton "CURLOPT_FTPPORT")
                                                     , (10018, Data.List.NonEmpty.singleton "CURLOPT_USERAGENT")
                                                     , (10022, Data.List.NonEmpty.singleton "CURLOPT_COOKIE")
                                                     , (10023, Data.List.NonEmpty.singleton "CURLOPT_HTTPHEADER")
                                                     , (10024, Data.List.NonEmpty.singleton "CURLOPT_HTTPPOST")
                                                     , (10025, Data.List.NonEmpty.singleton "CURLOPT_SSLCERT")
                                                     , (10026, Data.List.NonEmpty.singleton "CURLOPT_KEYPASSWD")
                                                     , (10028, Data.List.NonEmpty.singleton "CURLOPT_QUOTE")
                                                     , (10029, Data.List.NonEmpty.singleton "CURLOPT_HEADERDATA")
                                                     , (10031, Data.List.NonEmpty.singleton "CURLOPT_COOKIEFILE")
                                                     , (10036, Data.List.NonEmpty.singleton "CURLOPT_CUSTOMREQUEST")
                                                     , (10037, Data.List.NonEmpty.singleton "CURLOPT_STDERR")
                                                     , (10039, Data.List.NonEmpty.singleton "CURLOPT_POSTQUOTE")
                                                     , (10057, Data.List.NonEmpty.singleton "CURLOPT_XFERINFODATA")
                                                     , (10062, Data.List.NonEmpty.singleton "CURLOPT_INTERFACE")
                                                     , (10063, Data.List.NonEmpty.singleton "CURLOPT_KRBLEVEL")
                                                     , (10065, Data.List.NonEmpty.singleton "CURLOPT_CAINFO")
                                                     , (10070, Data.List.NonEmpty.singleton "CURLOPT_TELNETOPTIONS")
                                                     , (10076, Data.List.NonEmpty.singleton "CURLOPT_RANDOM_FILE")
                                                     , (10077, Data.List.NonEmpty.singleton "CURLOPT_EGDSOCKET")
                                                     , (10082, Data.List.NonEmpty.singleton "CURLOPT_COOKIEJAR")
                                                     , (10083, Data.List.NonEmpty.singleton "CURLOPT_SSL_CIPHER_LIST")
                                                     , (10086, Data.List.NonEmpty.singleton "CURLOPT_SSLCERTTYPE")
                                                     , (10087, Data.List.NonEmpty.singleton "CURLOPT_SSLKEY")
                                                     , (10088, Data.List.NonEmpty.singleton "CURLOPT_SSLKEYTYPE")
                                                     , (10089, Data.List.NonEmpty.singleton "CURLOPT_SSLENGINE")
                                                     , (10093, Data.List.NonEmpty.singleton "CURLOPT_PREQUOTE")
                                                     , (10095, Data.List.NonEmpty.singleton "CURLOPT_DEBUGDATA")
                                                     , (10097, Data.List.NonEmpty.singleton "CURLOPT_CAPATH")
                                                     , (10100, Data.List.NonEmpty.singleton "CURLOPT_SHARE")
                                                     , (10102, Data.List.NonEmpty.singleton "CURLOPT_ACCEPT_ENCODING")
                                                     , (10103, Data.List.NonEmpty.singleton "CURLOPT_PRIVATE")
                                                     , (10104, Data.List.NonEmpty.singleton "CURLOPT_HTTP200ALIASES")
                                                     , (10109, Data.List.NonEmpty.singleton "CURLOPT_SSL_CTX_DATA")
                                                     , (10118, Data.List.NonEmpty.singleton "CURLOPT_NETRC_FILE")
                                                     , (10131, Data.List.NonEmpty.singleton "CURLOPT_IOCTLDATA")
                                                     , (10134, Data.List.NonEmpty.singleton "CURLOPT_FTP_ACCOUNT")
                                                     , (10135, Data.List.NonEmpty.singleton "CURLOPT_COOKIELIST")
                                                     , (10147, Data.List.NonEmpty.singleton "CURLOPT_FTP_ALTERNATIVE_TO_USER")
                                                     , (10149, Data.List.NonEmpty.singleton "CURLOPT_SOCKOPTDATA")
                                                     , (10152, Data.List.NonEmpty.singleton "CURLOPT_SSH_PUBLIC_KEYFILE")
                                                     , (10153, Data.List.NonEmpty.singleton "CURLOPT_SSH_PRIVATE_KEYFILE")
                                                     , (10162, Data.List.NonEmpty.singleton "CURLOPT_SSH_HOST_PUBLIC_KEY_MD5")
                                                     , (10164, Data.List.NonEmpty.singleton "CURLOPT_OPENSOCKETDATA")
                                                     , (10165, Data.List.NonEmpty.singleton "CURLOPT_COPYPOSTFIELDS")
                                                     , (10168, Data.List.NonEmpty.singleton "CURLOPT_SEEKDATA")
                                                     , (10169, Data.List.NonEmpty.singleton "CURLOPT_CRLFILE")
                                                     , (10170, Data.List.NonEmpty.singleton "CURLOPT_ISSUERCERT")
                                                     , (10173, Data.List.NonEmpty.singleton "CURLOPT_USERNAME")
                                                     , (10174, Data.List.NonEmpty.singleton "CURLOPT_PASSWORD")
                                                     , (10175, Data.List.NonEmpty.singleton "CURLOPT_PROXYUSERNAME")
                                                     , (10176, Data.List.NonEmpty.singleton "CURLOPT_PROXYPASSWORD")
                                                     , (10177, Data.List.NonEmpty.singleton "CURLOPT_NOPROXY")
                                                     , (10179, Data.List.NonEmpty.singleton "CURLOPT_SOCKS5_GSSAPI_SERVICE")
                                                     , (10183, Data.List.NonEmpty.singleton "CURLOPT_SSH_KNOWNHOSTS")
                                                     , (10185, Data.List.NonEmpty.singleton "CURLOPT_SSH_KEYDATA")
                                                     , (10186, Data.List.NonEmpty.singleton "CURLOPT_MAIL_FROM")
                                                     , (10187, Data.List.NonEmpty.singleton "CURLOPT_MAIL_RCPT")
                                                     , (10190, Data.List.NonEmpty.singleton "CURLOPT_RTSP_SESSION_ID")
                                                     , (10191, Data.List.NonEmpty.singleton "CURLOPT_RTSP_STREAM_URI")
                                                     , (10192, Data.List.NonEmpty.singleton "CURLOPT_RTSP_TRANSPORT")
                                                     , (10195, Data.List.NonEmpty.singleton "CURLOPT_INTERLEAVEDATA")
                                                     , (10201, Data.List.NonEmpty.singleton "CURLOPT_CHUNK_DATA")
                                                     , (10202, Data.List.NonEmpty.singleton "CURLOPT_FNMATCH_DATA")
                                                     , (10203, Data.List.NonEmpty.singleton "CURLOPT_RESOLVE")
                                                     , (10204, Data.List.NonEmpty.singleton "CURLOPT_TLSAUTH_USERNAME")
                                                     , (10205, Data.List.NonEmpty.singleton "CURLOPT_TLSAUTH_PASSWORD")
                                                     , (10206, Data.List.NonEmpty.singleton "CURLOPT_TLSAUTH_TYPE")
                                                     , (10209, Data.List.NonEmpty.singleton "CURLOPT_CLOSESOCKETDATA")
                                                     , (10211, Data.List.NonEmpty.singleton "CURLOPT_DNS_SERVERS")
                                                     , (10217, Data.List.NonEmpty.singleton "CURLOPT_MAIL_AUTH")
                                                     , (10220, Data.List.NonEmpty.singleton "CURLOPT_XOAUTH2_BEARER")
                                                     , (10221, Data.List.NonEmpty.singleton "CURLOPT_DNS_INTERFACE")
                                                     , (10222, Data.List.NonEmpty.singleton "CURLOPT_DNS_LOCAL_IP4")
                                                     , (10223, Data.List.NonEmpty.singleton "CURLOPT_DNS_LOCAL_IP6")
                                                     , (10224, Data.List.NonEmpty.singleton "CURLOPT_LOGIN_OPTIONS")
                                                     , (10228, Data.List.NonEmpty.singleton "CURLOPT_PROXYHEADER")
                                                     , (10230, Data.List.NonEmpty.singleton "CURLOPT_PINNEDPUBLICKEY")
                                                     , (10231, Data.List.NonEmpty.singleton "CURLOPT_UNIX_SOCKET_PATH")
                                                     , (10235, Data.List.NonEmpty.singleton "CURLOPT_PROXY_SERVICE_NAME")
                                                     , (10236, Data.List.NonEmpty.singleton "CURLOPT_SERVICE_NAME")
                                                     , (10238, Data.List.NonEmpty.singleton "CURLOPT_DEFAULT_PROTOCOL")
                                                     , (10240, Data.List.NonEmpty.singleton "CURLOPT_STREAM_DEPENDS")
                                                     , (10241, Data.List.NonEmpty.singleton "CURLOPT_STREAM_DEPENDS_E")
                                                     , (10243, Data.List.NonEmpty.singleton "CURLOPT_CONNECT_TO")
                                                     , (10246, Data.List.NonEmpty.singleton "CURLOPT_PROXY_CAINFO")
                                                     , (10247, Data.List.NonEmpty.singleton "CURLOPT_PROXY_CAPATH")
                                                     , (10251, Data.List.NonEmpty.singleton "CURLOPT_PROXY_TLSAUTH_USERNAME")
                                                     , (10252, Data.List.NonEmpty.singleton "CURLOPT_PROXY_TLSAUTH_PASSWORD")
                                                     , (10253, Data.List.NonEmpty.singleton "CURLOPT_PROXY_TLSAUTH_TYPE")
                                                     , (10254, Data.List.NonEmpty.singleton "CURLOPT_PROXY_SSLCERT")
                                                     , (10255, Data.List.NonEmpty.singleton "CURLOPT_PROXY_SSLCERTTYPE")
                                                     , (10256, Data.List.NonEmpty.singleton "CURLOPT_PROXY_SSLKEY")
                                                     , (10257, Data.List.NonEmpty.singleton "CURLOPT_PROXY_SSLKEYTYPE")
                                                     , (10258, Data.List.NonEmpty.singleton "CURLOPT_PROXY_KEYPASSWD")
                                                     , (10259, Data.List.NonEmpty.singleton "CURLOPT_PROXY_SSL_CIPHER_LIST")
                                                     , (10260, Data.List.NonEmpty.singleton "CURLOPT_PROXY_CRLFILE")
                                                     , (10262, Data.List.NonEmpty.singleton "CURLOPT_PRE_PROXY")
                                                     , (10263, Data.List.NonEmpty.singleton "CURLOPT_PROXY_PINNEDPUBLICKEY")
                                                     , (10264, Data.List.NonEmpty.singleton "CURLOPT_ABSTRACT_UNIX_SOCKET")
                                                     , (10266, Data.List.NonEmpty.singleton "CURLOPT_REQUEST_TARGET")
                                                     , (10269, Data.List.NonEmpty.singleton "CURLOPT_MIMEPOST")
                                                     , (10273, Data.List.NonEmpty.singleton "CURLOPT_RESOLVER_START_DATA")
                                                     , (10276, Data.List.NonEmpty.singleton "CURLOPT_TLS13_CIPHERS")
                                                     , (10277, Data.List.NonEmpty.singleton "CURLOPT_PROXY_TLS13_CIPHERS")
                                                     , (10279, Data.List.NonEmpty.singleton "CURLOPT_DOH_URL")
                                                     , (10282, Data.List.NonEmpty.singleton "CURLOPT_CURLU")
                                                     , (10284, Data.List.NonEmpty.singleton "CURLOPT_TRAILERDATA")
                                                     , (10287, Data.List.NonEmpty.singleton "CURLOPT_ALTSVC")
                                                     , (10289, Data.List.NonEmpty.singleton "CURLOPT_SASL_AUTHZID")
                                                     , (10296, Data.List.NonEmpty.singleton "CURLOPT_PROXY_ISSUERCERT")
                                                     , (10298, Data.List.NonEmpty.singleton "CURLOPT_SSL_EC_CURVES")
                                                     , (10300, Data.List.NonEmpty.singleton "CURLOPT_HSTS")
                                                     , (10302, Data.List.NonEmpty.singleton "CURLOPT_HSTSREADDATA")
                                                     , (10304, Data.List.NonEmpty.singleton "CURLOPT_HSTSWRITEDATA")
                                                     , (10305, Data.List.NonEmpty.singleton "CURLOPT_AWS_SIGV4")
                                                     , (10311, Data.List.NonEmpty.singleton "CURLOPT_SSH_HOST_PUBLIC_KEY_SHA256")
                                                     , (10313, Data.List.NonEmpty.singleton "CURLOPT_PREREQDATA")
                                                     , (10317, Data.List.NonEmpty.singleton "CURLOPT_SSH_HOSTKEYDATA")
                                                     , (10318, Data.List.NonEmpty.singleton "CURLOPT_PROTOCOLS_STR")
                                                     , (10319, Data.List.NonEmpty.singleton "CURLOPT_REDIR_PROTOCOLS_STR")
                                                     , (10323, Data.List.NonEmpty.singleton "CURLOPT_HAPROXY_CLIENT_IP")
                                                     , (10325, Data.List.NonEmpty.singleton "CURLOPT_ECH")
                                                     , (10328, Data.List.NonEmpty.singleton "CURLOPT_SSL_SIGNATURE_ALGORITHMS")
                                                     , (10329, Data.List.NonEmpty.singleton "CURLOPT_LASTENTRY")
                                                     , (20011, Data.List.NonEmpty.singleton "CURLOPT_WRITEFUNCTION")
                                                     , (20012, Data.List.NonEmpty.singleton "CURLOPT_READFUNCTION")
                                                     , (20056, Data.List.NonEmpty.singleton "CURLOPT_PROGRESSFUNCTION")
                                                     , (20079, Data.List.NonEmpty.singleton "CURLOPT_HEADERFUNCTION")
                                                     , (20094, Data.List.NonEmpty.singleton "CURLOPT_DEBUGFUNCTION")
                                                     , (20108, Data.List.NonEmpty.singleton "CURLOPT_SSL_CTX_FUNCTION")
                                                     , (20130, Data.List.NonEmpty.singleton "CURLOPT_IOCTLFUNCTION")
                                                     , (20142, Data.List.NonEmpty.singleton "CURLOPT_CONV_FROM_NETWORK_FUNCTION")
                                                     , (20143, Data.List.NonEmpty.singleton "CURLOPT_CONV_TO_NETWORK_FUNCTION")
                                                     , (20144, Data.List.NonEmpty.singleton "CURLOPT_CONV_FROM_UTF8_FUNCTION")
                                                     , (20148, Data.List.NonEmpty.singleton "CURLOPT_SOCKOPTFUNCTION")
                                                     , (20163, Data.List.NonEmpty.singleton "CURLOPT_OPENSOCKETFUNCTION")
                                                     , (20167, Data.List.NonEmpty.singleton "CURLOPT_SEEKFUNCTION")
                                                     , (20184, Data.List.NonEmpty.singleton "CURLOPT_SSH_KEYFUNCTION")
                                                     , (20196, Data.List.NonEmpty.singleton "CURLOPT_INTERLEAVEFUNCTION")
                                                     , (20198, Data.List.NonEmpty.singleton "CURLOPT_CHUNK_BGN_FUNCTION")
                                                     , (20199, Data.List.NonEmpty.singleton "CURLOPT_CHUNK_END_FUNCTION")
                                                     , (20200, Data.List.NonEmpty.singleton "CURLOPT_FNMATCH_FUNCTION")
                                                     , (20208, Data.List.NonEmpty.singleton "CURLOPT_CLOSESOCKETFUNCTION")
                                                     , (20219, Data.List.NonEmpty.singleton "CURLOPT_XFERINFOFUNCTION")
                                                     , (20272, Data.List.NonEmpty.singleton "CURLOPT_RESOLVER_START_FUNCTION")
                                                     , (20283, Data.List.NonEmpty.singleton "CURLOPT_TRAILERFUNCTION")
                                                     , (20301, Data.List.NonEmpty.singleton "CURLOPT_HSTSREADFUNCTION")
                                                     , (20303, Data.List.NonEmpty.singleton "CURLOPT_HSTSWRITEFUNCTION")
                                                     , (20312, Data.List.NonEmpty.singleton "CURLOPT_PREREQFUNCTION")
                                                     , (20316, Data.List.NonEmpty.singleton "CURLOPT_SSH_HOSTKEYFUNCTION")
                                                     , (30115, Data.List.NonEmpty.singleton "CURLOPT_INFILESIZE_LARGE")
                                                     , (30116, Data.List.NonEmpty.singleton "CURLOPT_RESUME_FROM_LARGE")
                                                     , (30117, Data.List.NonEmpty.singleton "CURLOPT_MAXFILESIZE_LARGE")
                                                     , (30120, Data.List.NonEmpty.singleton "CURLOPT_POSTFIELDSIZE_LARGE")
                                                     , (30145, Data.List.NonEmpty.singleton "CURLOPT_MAX_SEND_SPEED_LARGE")
                                                     , (30146, Data.List.NonEmpty.singleton "CURLOPT_MAX_RECV_SPEED_LARGE")
                                                     , (30270, Data.List.NonEmpty.singleton "CURLOPT_TIMEVALUE_LARGE")
                                                     , (40291, Data.List.NonEmpty.singleton "CURLOPT_SSLCERT_BLOB")
                                                     , (40292, Data.List.NonEmpty.singleton "CURLOPT_SSLKEY_BLOB")
                                                     , (40293, Data.List.NonEmpty.singleton "CURLOPT_PROXY_SSLCERT_BLOB")
                                                     , (40294, Data.List.NonEmpty.singleton "CURLOPT_PROXY_SSLKEY_BLOB")
                                                     , (40295, Data.List.NonEmpty.singleton "CURLOPT_ISSUERCERT_BLOB")
                                                     , (40297, Data.List.NonEmpty.singleton "CURLOPT_PROXY_ISSUERCERT_BLOB")
                                                     , (40309, Data.List.NonEmpty.singleton "CURLOPT_CAINFO_BLOB")
                                                     , (40310, Data.List.NonEmpty.singleton "CURLOPT_PROXY_CAINFO_BLOB")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "CURLoption"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "CURLoption"

instance Show CURLoption where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read CURLoption where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLOPT_WRITEDATA@

    __defined at:__ @curl\/curl.h:1140:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_WRITEDATA :: CURLoption
pattern CURLOPT_WRITEDATA = CURLoption 10001

{-| __C declaration:__ @CURLOPT_URL@

    __defined at:__ @curl\/curl.h:1143:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_URL :: CURLoption
pattern CURLOPT_URL = CURLoption 10002

{-| __C declaration:__ @CURLOPT_PORT@

    __defined at:__ @curl\/curl.h:1146:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PORT :: CURLoption
pattern CURLOPT_PORT = CURLoption 3

{-| __C declaration:__ @CURLOPT_PROXY@

    __defined at:__ @curl\/curl.h:1149:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY :: CURLoption
pattern CURLOPT_PROXY = CURLoption 10004

{-| __C declaration:__ @CURLOPT_USERPWD@

    __defined at:__ @curl\/curl.h:1152:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_USERPWD :: CURLoption
pattern CURLOPT_USERPWD = CURLoption 10005

{-| __C declaration:__ @CURLOPT_PROXYUSERPWD@

    __defined at:__ @curl\/curl.h:1155:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXYUSERPWD :: CURLoption
pattern CURLOPT_PROXYUSERPWD = CURLoption 10006

{-| __C declaration:__ @CURLOPT_RANGE@

    __defined at:__ @curl\/curl.h:1158:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_RANGE :: CURLoption
pattern CURLOPT_RANGE = CURLoption 10007

{-| __C declaration:__ @CURLOPT_READDATA@

    __defined at:__ @curl\/curl.h:1163:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_READDATA :: CURLoption
pattern CURLOPT_READDATA = CURLoption 10009

{-| __C declaration:__ @CURLOPT_ERRORBUFFER@

    __defined at:__ @curl\/curl.h:1167:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_ERRORBUFFER :: CURLoption
pattern CURLOPT_ERRORBUFFER = CURLoption 10010

{-| __C declaration:__ @CURLOPT_WRITEFUNCTION@

    __defined at:__ @curl\/curl.h:1171:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_WRITEFUNCTION :: CURLoption
pattern CURLOPT_WRITEFUNCTION = CURLoption 20011

{-| __C declaration:__ @CURLOPT_READFUNCTION@

    __defined at:__ @curl\/curl.h:1175:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_READFUNCTION :: CURLoption
pattern CURLOPT_READFUNCTION = CURLoption 20012

{-| __C declaration:__ @CURLOPT_TIMEOUT@

    __defined at:__ @curl\/curl.h:1178:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TIMEOUT :: CURLoption
pattern CURLOPT_TIMEOUT = CURLoption 13

{-| __C declaration:__ @CURLOPT_INFILESIZE@

    __defined at:__ @curl\/curl.h:1189:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_INFILESIZE :: CURLoption
pattern CURLOPT_INFILESIZE = CURLoption 14

{-| __C declaration:__ @CURLOPT_POSTFIELDS@

    __defined at:__ @curl\/curl.h:1192:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_POSTFIELDS :: CURLoption
pattern CURLOPT_POSTFIELDS = CURLoption 10015

{-| __C declaration:__ @CURLOPT_REFERER@

    __defined at:__ @curl\/curl.h:1195:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_REFERER :: CURLoption
pattern CURLOPT_REFERER = CURLoption 10016

{-| __C declaration:__ @CURLOPT_FTPPORT@

    __defined at:__ @curl\/curl.h:1199:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_FTPPORT :: CURLoption
pattern CURLOPT_FTPPORT = CURLoption 10017

{-| __C declaration:__ @CURLOPT_USERAGENT@

    __defined at:__ @curl\/curl.h:1202:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_USERAGENT :: CURLoption
pattern CURLOPT_USERAGENT = CURLoption 10018

{-| __C declaration:__ @CURLOPT_LOW_SPEED_LIMIT@

    __defined at:__ @curl\/curl.h:1211:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_LOW_SPEED_LIMIT :: CURLoption
pattern CURLOPT_LOW_SPEED_LIMIT = CURLoption 19

{-| __C declaration:__ @CURLOPT_LOW_SPEED_TIME@

    __defined at:__ @curl\/curl.h:1214:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_LOW_SPEED_TIME :: CURLoption
pattern CURLOPT_LOW_SPEED_TIME = CURLoption 20

{-| __C declaration:__ @CURLOPT_RESUME_FROM@

    __defined at:__ @curl\/curl.h:1222:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_RESUME_FROM :: CURLoption
pattern CURLOPT_RESUME_FROM = CURLoption 21

{-| __C declaration:__ @CURLOPT_COOKIE@

    __defined at:__ @curl\/curl.h:1225:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_COOKIE :: CURLoption
pattern CURLOPT_COOKIE = CURLoption 10022

{-| __C declaration:__ @CURLOPT_HTTPHEADER@

    __defined at:__ @curl\/curl.h:1229:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HTTPHEADER :: CURLoption
pattern CURLOPT_HTTPHEADER = CURLoption 10023

{-| __C declaration:__ @CURLOPT_HTTPPOST@

    __defined at:__ @curl\/curl.h:1232:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HTTPPOST :: CURLoption
pattern CURLOPT_HTTPPOST = CURLoption 10024

{-| __C declaration:__ @CURLOPT_SSLCERT@

    __defined at:__ @curl\/curl.h:1236:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSLCERT :: CURLoption
pattern CURLOPT_SSLCERT = CURLoption 10025

{-| __C declaration:__ @CURLOPT_KEYPASSWD@

    __defined at:__ @curl\/curl.h:1239:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_KEYPASSWD :: CURLoption
pattern CURLOPT_KEYPASSWD = CURLoption 10026

{-| __C declaration:__ @CURLOPT_CRLF@

    __defined at:__ @curl\/curl.h:1242:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_CRLF :: CURLoption
pattern CURLOPT_CRLF = CURLoption 27

{-| __C declaration:__ @CURLOPT_QUOTE@

    __defined at:__ @curl\/curl.h:1245:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_QUOTE :: CURLoption
pattern CURLOPT_QUOTE = CURLoption 10028

{-| __C declaration:__ @CURLOPT_HEADERDATA@

    __defined at:__ @curl\/curl.h:1249:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HEADERDATA :: CURLoption
pattern CURLOPT_HEADERDATA = CURLoption 10029

{-| __C declaration:__ @CURLOPT_COOKIEFILE@

    __defined at:__ @curl\/curl.h:1253:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_COOKIEFILE :: CURLoption
pattern CURLOPT_COOKIEFILE = CURLoption 10031

{-| __C declaration:__ @CURLOPT_SSLVERSION@

    __defined at:__ @curl\/curl.h:1257:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSLVERSION :: CURLoption
pattern CURLOPT_SSLVERSION = CURLoption 32

{-| __C declaration:__ @CURLOPT_TIMECONDITION@

    __defined at:__ @curl\/curl.h:1260:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TIMECONDITION :: CURLoption
pattern CURLOPT_TIMECONDITION = CURLoption 33

{-| __C declaration:__ @CURLOPT_TIMEVALUE@

    __defined at:__ @curl\/curl.h:1264:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TIMEVALUE :: CURLoption
pattern CURLOPT_TIMEVALUE = CURLoption 34

{-| __C declaration:__ @CURLOPT_CUSTOMREQUEST@

    __defined at:__ @curl\/curl.h:1272:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_CUSTOMREQUEST :: CURLoption
pattern CURLOPT_CUSTOMREQUEST = CURLoption 10036

{-| __C declaration:__ @CURLOPT_STDERR@

    __defined at:__ @curl\/curl.h:1275:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_STDERR :: CURLoption
pattern CURLOPT_STDERR = CURLoption 10037

{-| __C declaration:__ @CURLOPT_POSTQUOTE@

    __defined at:__ @curl\/curl.h:1280:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_POSTQUOTE :: CURLoption
pattern CURLOPT_POSTQUOTE = CURLoption 10039

{-| __C declaration:__ @CURLOPT_VERBOSE@

    __defined at:__ @curl\/curl.h:1285:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_VERBOSE :: CURLoption
pattern CURLOPT_VERBOSE = CURLoption 41

{-| __C declaration:__ @CURLOPT_HEADER@

    __defined at:__ @curl\/curl.h:1288:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HEADER :: CURLoption
pattern CURLOPT_HEADER = CURLoption 42

{-| __C declaration:__ @CURLOPT_NOPROGRESS@

    __defined at:__ @curl\/curl.h:1291:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_NOPROGRESS :: CURLoption
pattern CURLOPT_NOPROGRESS = CURLoption 43

{-| __C declaration:__ @CURLOPT_NOBODY@

    __defined at:__ @curl\/curl.h:1294:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_NOBODY :: CURLoption
pattern CURLOPT_NOBODY = CURLoption 44

{-| __C declaration:__ @CURLOPT_FAILONERROR@

    __defined at:__ @curl\/curl.h:1297:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_FAILONERROR :: CURLoption
pattern CURLOPT_FAILONERROR = CURLoption 45

{-| __C declaration:__ @CURLOPT_UPLOAD@

    __defined at:__ @curl\/curl.h:1300:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_UPLOAD :: CURLoption
pattern CURLOPT_UPLOAD = CURLoption 46

{-| __C declaration:__ @CURLOPT_POST@

    __defined at:__ @curl\/curl.h:1303:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_POST :: CURLoption
pattern CURLOPT_POST = CURLoption 47

{-| __C declaration:__ @CURLOPT_DIRLISTONLY@

    __defined at:__ @curl\/curl.h:1306:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_DIRLISTONLY :: CURLoption
pattern CURLOPT_DIRLISTONLY = CURLoption 48

{-| __C declaration:__ @CURLOPT_APPEND@

    __defined at:__ @curl\/curl.h:1309:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_APPEND :: CURLoption
pattern CURLOPT_APPEND = CURLoption 50

{-| __C declaration:__ @CURLOPT_NETRC@

    __defined at:__ @curl\/curl.h:1313:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_NETRC :: CURLoption
pattern CURLOPT_NETRC = CURLoption 51

{-| __C declaration:__ @CURLOPT_FOLLOWLOCATION@

    __defined at:__ @curl\/curl.h:1316:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_FOLLOWLOCATION :: CURLoption
pattern CURLOPT_FOLLOWLOCATION = CURLoption 52

{-| __C declaration:__ @CURLOPT_TRANSFERTEXT@

    __defined at:__ @curl\/curl.h:1319:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TRANSFERTEXT :: CURLoption
pattern CURLOPT_TRANSFERTEXT = CURLoption 53

{-| __C declaration:__ @CURLOPT_PUT@

    __defined at:__ @curl\/curl.h:1322:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PUT :: CURLoption
pattern CURLOPT_PUT = CURLoption 54

{-| __C declaration:__ @CURLOPT_PROGRESSFUNCTION@

    __defined at:__ @curl\/curl.h:1331:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROGRESSFUNCTION :: CURLoption
pattern CURLOPT_PROGRESSFUNCTION = CURLoption 20056

{-| __C declaration:__ @CURLOPT_XFERINFODATA@

    __defined at:__ @curl\/curl.h:1336:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_XFERINFODATA :: CURLoption
pattern CURLOPT_XFERINFODATA = CURLoption 10057

{-| __C declaration:__ @CURLOPT_AUTOREFERER@

    __defined at:__ @curl\/curl.h:1340:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_AUTOREFERER :: CURLoption
pattern CURLOPT_AUTOREFERER = CURLoption 58

{-| __C declaration:__ @CURLOPT_PROXYPORT@

    __defined at:__ @curl\/curl.h:1344:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXYPORT :: CURLoption
pattern CURLOPT_PROXYPORT = CURLoption 59

{-| __C declaration:__ @CURLOPT_POSTFIELDSIZE@

    __defined at:__ @curl\/curl.h:1347:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_POSTFIELDSIZE :: CURLoption
pattern CURLOPT_POSTFIELDSIZE = CURLoption 60

{-| __C declaration:__ @CURLOPT_HTTPPROXYTUNNEL@

    __defined at:__ @curl\/curl.h:1350:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HTTPPROXYTUNNEL :: CURLoption
pattern CURLOPT_HTTPPROXYTUNNEL = CURLoption 61

{-| __C declaration:__ @CURLOPT_INTERFACE@

    __defined at:__ @curl\/curl.h:1353:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_INTERFACE :: CURLoption
pattern CURLOPT_INTERFACE = CURLoption 10062

{-| __C declaration:__ @CURLOPT_KRBLEVEL@

    __defined at:__ @curl\/curl.h:1358:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_KRBLEVEL :: CURLoption
pattern CURLOPT_KRBLEVEL = CURLoption 10063

{-| __C declaration:__ @CURLOPT_SSL_VERIFYPEER@

    __defined at:__ @curl\/curl.h:1362:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSL_VERIFYPEER :: CURLoption
pattern CURLOPT_SSL_VERIFYPEER = CURLoption 64

{-| __C declaration:__ @CURLOPT_CAINFO@

    __defined at:__ @curl\/curl.h:1366:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_CAINFO :: CURLoption
pattern CURLOPT_CAINFO = CURLoption 10065

{-| __C declaration:__ @CURLOPT_MAXREDIRS@

    __defined at:__ @curl\/curl.h:1372:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_MAXREDIRS :: CURLoption
pattern CURLOPT_MAXREDIRS = CURLoption 68

{-| __C declaration:__ @CURLOPT_FILETIME@

    __defined at:__ @curl\/curl.h:1376:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_FILETIME :: CURLoption
pattern CURLOPT_FILETIME = CURLoption 69

{-| __C declaration:__ @CURLOPT_TELNETOPTIONS@

    __defined at:__ @curl\/curl.h:1379:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TELNETOPTIONS :: CURLoption
pattern CURLOPT_TELNETOPTIONS = CURLoption 10070

{-| __C declaration:__ @CURLOPT_MAXCONNECTS@

    __defined at:__ @curl\/curl.h:1382:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_MAXCONNECTS :: CURLoption
pattern CURLOPT_MAXCONNECTS = CURLoption 71

{-| __C declaration:__ @CURLOPT_FRESH_CONNECT@

    __defined at:__ @curl\/curl.h:1390:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_FRESH_CONNECT :: CURLoption
pattern CURLOPT_FRESH_CONNECT = CURLoption 74

{-| __C declaration:__ @CURLOPT_FORBID_REUSE@

    __defined at:__ @curl\/curl.h:1395:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_FORBID_REUSE :: CURLoption
pattern CURLOPT_FORBID_REUSE = CURLoption 75

{-| __C declaration:__ @CURLOPT_RANDOM_FILE@

    __defined at:__ @curl\/curl.h:1399:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_RANDOM_FILE :: CURLoption
pattern CURLOPT_RANDOM_FILE = CURLoption 10076

{-| __C declaration:__ @CURLOPT_EGDSOCKET@

    __defined at:__ @curl\/curl.h:1403:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_EGDSOCKET :: CURLoption
pattern CURLOPT_EGDSOCKET = CURLoption 10077

{-| __C declaration:__ @CURLOPT_CONNECTTIMEOUT@

    __defined at:__ @curl\/curl.h:1408:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_CONNECTTIMEOUT :: CURLoption
pattern CURLOPT_CONNECTTIMEOUT = CURLoption 78

{-| __C declaration:__ @CURLOPT_HEADERFUNCTION@

    __defined at:__ @curl\/curl.h:1412:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HEADERFUNCTION :: CURLoption
pattern CURLOPT_HEADERFUNCTION = CURLoption 20079

{-| __C declaration:__ @CURLOPT_HTTPGET@

    __defined at:__ @curl\/curl.h:1417:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HTTPGET :: CURLoption
pattern CURLOPT_HTTPGET = CURLoption 80

{-| __C declaration:__ @CURLOPT_SSL_VERIFYHOST@

    __defined at:__ @curl\/curl.h:1422:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSL_VERIFYHOST :: CURLoption
pattern CURLOPT_SSL_VERIFYHOST = CURLoption 81

{-| __C declaration:__ @CURLOPT_COOKIEJAR@

    __defined at:__ @curl\/curl.h:1426:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_COOKIEJAR :: CURLoption
pattern CURLOPT_COOKIEJAR = CURLoption 10082

{-| __C declaration:__ @CURLOPT_SSL_CIPHER_LIST@

    __defined at:__ @curl\/curl.h:1429:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSL_CIPHER_LIST :: CURLoption
pattern CURLOPT_SSL_CIPHER_LIST = CURLoption 10083

{-| __C declaration:__ @CURLOPT_HTTP_VERSION@

    __defined at:__ @curl\/curl.h:1433:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HTTP_VERSION :: CURLoption
pattern CURLOPT_HTTP_VERSION = CURLoption 84

{-| __C declaration:__ @CURLOPT_FTP_USE_EPSV@

    __defined at:__ @curl\/curl.h:1438:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_FTP_USE_EPSV :: CURLoption
pattern CURLOPT_FTP_USE_EPSV = CURLoption 85

{-| __C declaration:__ @CURLOPT_SSLCERTTYPE@

    __defined at:__ @curl\/curl.h:1441:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSLCERTTYPE :: CURLoption
pattern CURLOPT_SSLCERTTYPE = CURLoption 10086

{-| __C declaration:__ @CURLOPT_SSLKEY@

    __defined at:__ @curl\/curl.h:1444:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSLKEY :: CURLoption
pattern CURLOPT_SSLKEY = CURLoption 10087

{-| __C declaration:__ @CURLOPT_SSLKEYTYPE@

    __defined at:__ @curl\/curl.h:1447:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSLKEYTYPE :: CURLoption
pattern CURLOPT_SSLKEYTYPE = CURLoption 10088

{-| __C declaration:__ @CURLOPT_SSLENGINE@

    __defined at:__ @curl\/curl.h:1450:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSLENGINE :: CURLoption
pattern CURLOPT_SSLENGINE = CURLoption 10089

{-| __C declaration:__ @CURLOPT_SSLENGINE_DEFAULT@

    __defined at:__ @curl\/curl.h:1455:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSLENGINE_DEFAULT :: CURLoption
pattern CURLOPT_SSLENGINE_DEFAULT = CURLoption 90

{-| __C declaration:__ @CURLOPT_DNS_USE_GLOBAL_CACHE@

    __defined at:__ @curl\/curl.h:1459:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_DNS_USE_GLOBAL_CACHE :: CURLoption
pattern CURLOPT_DNS_USE_GLOBAL_CACHE = CURLoption 91

{-| __C declaration:__ @CURLOPT_DNS_CACHE_TIMEOUT@

    __defined at:__ @curl\/curl.h:1463:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_DNS_CACHE_TIMEOUT :: CURLoption
pattern CURLOPT_DNS_CACHE_TIMEOUT = CURLoption 92

{-| __C declaration:__ @CURLOPT_PREQUOTE@

    __defined at:__ @curl\/curl.h:1466:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PREQUOTE :: CURLoption
pattern CURLOPT_PREQUOTE = CURLoption 10093

{-| __C declaration:__ @CURLOPT_DEBUGFUNCTION@

    __defined at:__ @curl\/curl.h:1469:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_DEBUGFUNCTION :: CURLoption
pattern CURLOPT_DEBUGFUNCTION = CURLoption 20094

{-| __C declaration:__ @CURLOPT_DEBUGDATA@

    __defined at:__ @curl\/curl.h:1472:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_DEBUGDATA :: CURLoption
pattern CURLOPT_DEBUGDATA = CURLoption 10095

{-| __C declaration:__ @CURLOPT_COOKIESESSION@

    __defined at:__ @curl\/curl.h:1475:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_COOKIESESSION :: CURLoption
pattern CURLOPT_COOKIESESSION = CURLoption 96

{-| __C declaration:__ @CURLOPT_CAPATH@

    __defined at:__ @curl\/curl.h:1479:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_CAPATH :: CURLoption
pattern CURLOPT_CAPATH = CURLoption 10097

{-| __C declaration:__ @CURLOPT_BUFFERSIZE@

    __defined at:__ @curl\/curl.h:1482:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_BUFFERSIZE :: CURLoption
pattern CURLOPT_BUFFERSIZE = CURLoption 98

{-| __C declaration:__ @CURLOPT_NOSIGNAL@

    __defined at:__ @curl\/curl.h:1487:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_NOSIGNAL :: CURLoption
pattern CURLOPT_NOSIGNAL = CURLoption 99

{-| __C declaration:__ @CURLOPT_SHARE@

    __defined at:__ @curl\/curl.h:1490:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SHARE :: CURLoption
pattern CURLOPT_SHARE = CURLoption 10100

{-| __C declaration:__ @CURLOPT_PROXYTYPE@

    __defined at:__ @curl\/curl.h:1495:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXYTYPE :: CURLoption
pattern CURLOPT_PROXYTYPE = CURLoption 101

{-| __C declaration:__ @CURLOPT_ACCEPT_ENCODING@

    __defined at:__ @curl\/curl.h:1500:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_ACCEPT_ENCODING :: CURLoption
pattern CURLOPT_ACCEPT_ENCODING = CURLoption 10102

{-| __C declaration:__ @CURLOPT_PRIVATE@

    __defined at:__ @curl\/curl.h:1503:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PRIVATE :: CURLoption
pattern CURLOPT_PRIVATE = CURLoption 10103

{-| __C declaration:__ @CURLOPT_HTTP200ALIASES@

    __defined at:__ @curl\/curl.h:1506:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HTTP200ALIASES :: CURLoption
pattern CURLOPT_HTTP200ALIASES = CURLoption 10104

{-| __C declaration:__ @CURLOPT_UNRESTRICTED_AUTH@

    __defined at:__ @curl\/curl.h:1511:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_UNRESTRICTED_AUTH :: CURLoption
pattern CURLOPT_UNRESTRICTED_AUTH = CURLoption 105

{-| __C declaration:__ @CURLOPT_FTP_USE_EPRT@

    __defined at:__ @curl\/curl.h:1516:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_FTP_USE_EPRT :: CURLoption
pattern CURLOPT_FTP_USE_EPRT = CURLoption 106

{-| __C declaration:__ @CURLOPT_HTTPAUTH@

    __defined at:__ @curl\/curl.h:1521:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HTTPAUTH :: CURLoption
pattern CURLOPT_HTTPAUTH = CURLoption 107

{-| __C declaration:__ @CURLOPT_SSL_CTX_FUNCTION@

    __defined at:__ @curl\/curl.h:1526:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSL_CTX_FUNCTION :: CURLoption
pattern CURLOPT_SSL_CTX_FUNCTION = CURLoption 20108

{-| __C declaration:__ @CURLOPT_SSL_CTX_DATA@

    __defined at:__ @curl\/curl.h:1530:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSL_CTX_DATA :: CURLoption
pattern CURLOPT_SSL_CTX_DATA = CURLoption 10109

{-| __C declaration:__ @CURLOPT_FTP_CREATE_MISSING_DIRS@

    __defined at:__ @curl\/curl.h:1536:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_FTP_CREATE_MISSING_DIRS :: CURLoption
pattern CURLOPT_FTP_CREATE_MISSING_DIRS = CURLoption 110

{-| __C declaration:__ @CURLOPT_PROXYAUTH@

    __defined at:__ @curl\/curl.h:1541:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXYAUTH :: CURLoption
pattern CURLOPT_PROXYAUTH = CURLoption 111

{-| __C declaration:__ @CURLOPT_SERVER_RESPONSE_TIMEOUT@

    __defined at:__ @curl\/curl.h:1547:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SERVER_RESPONSE_TIMEOUT :: CURLoption
pattern CURLOPT_SERVER_RESPONSE_TIMEOUT = CURLoption 112

{-| __C declaration:__ @CURLOPT_IPRESOLVE@

    __defined at:__ @curl\/curl.h:1552:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_IPRESOLVE :: CURLoption
pattern CURLOPT_IPRESOLVE = CURLoption 113

{-| __C declaration:__ @CURLOPT_MAXFILESIZE@

    __defined at:__ @curl\/curl.h:1559:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_MAXFILESIZE :: CURLoption
pattern CURLOPT_MAXFILESIZE = CURLoption 114

{-| __C declaration:__ @CURLOPT_INFILESIZE_LARGE@

    __defined at:__ @curl\/curl.h:1564:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_INFILESIZE_LARGE :: CURLoption
pattern CURLOPT_INFILESIZE_LARGE = CURLoption 30115

{-| __C declaration:__ @CURLOPT_RESUME_FROM_LARGE@

    __defined at:__ @curl\/curl.h:1569:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_RESUME_FROM_LARGE :: CURLoption
pattern CURLOPT_RESUME_FROM_LARGE = CURLoption 30116

{-| __C declaration:__ @CURLOPT_MAXFILESIZE_LARGE@

    __defined at:__ @curl\/curl.h:1574:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_MAXFILESIZE_LARGE :: CURLoption
pattern CURLOPT_MAXFILESIZE_LARGE = CURLoption 30117

{-| __C declaration:__ @CURLOPT_NETRC_FILE@

    __defined at:__ @curl\/curl.h:1580:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_NETRC_FILE :: CURLoption
pattern CURLOPT_NETRC_FILE = CURLoption 10118

{-| __C declaration:__ @CURLOPT_USE_SSL@

    __defined at:__ @curl\/curl.h:1587:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_USE_SSL :: CURLoption
pattern CURLOPT_USE_SSL = CURLoption 119

{-| __C declaration:__ @CURLOPT_POSTFIELDSIZE_LARGE@

    __defined at:__ @curl\/curl.h:1590:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_POSTFIELDSIZE_LARGE :: CURLoption
pattern CURLOPT_POSTFIELDSIZE_LARGE = CURLoption 30120

{-| __C declaration:__ @CURLOPT_TCP_NODELAY@

    __defined at:__ @curl\/curl.h:1593:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TCP_NODELAY :: CURLoption
pattern CURLOPT_TCP_NODELAY = CURLoption 121

{-| __C declaration:__ @CURLOPT_FTPSSLAUTH@

    __defined at:__ @curl\/curl.h:1613:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_FTPSSLAUTH :: CURLoption
pattern CURLOPT_FTPSSLAUTH = CURLoption 129

{-| __C declaration:__ @CURLOPT_IOCTLFUNCTION@

    __defined at:__ @curl\/curl.h:1615:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_IOCTLFUNCTION :: CURLoption
pattern CURLOPT_IOCTLFUNCTION = CURLoption 20130

{-| __C declaration:__ @CURLOPT_IOCTLDATA@

    __defined at:__ @curl\/curl.h:1617:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_IOCTLDATA :: CURLoption
pattern CURLOPT_IOCTLDATA = CURLoption 10131

{-| __C declaration:__ @CURLOPT_FTP_ACCOUNT@

    __defined at:__ @curl\/curl.h:1625:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_FTP_ACCOUNT :: CURLoption
pattern CURLOPT_FTP_ACCOUNT = CURLoption 10134

{-| __C declaration:__ @CURLOPT_COOKIELIST@

    __defined at:__ @curl\/curl.h:1628:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_COOKIELIST :: CURLoption
pattern CURLOPT_COOKIELIST = CURLoption 10135

{-| __C declaration:__ @CURLOPT_IGNORE_CONTENT_LENGTH@

    __defined at:__ @curl\/curl.h:1631:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_IGNORE_CONTENT_LENGTH :: CURLoption
pattern CURLOPT_IGNORE_CONTENT_LENGTH = CURLoption 136

{-| __C declaration:__ @CURLOPT_FTP_SKIP_PASV_IP@

    __defined at:__ @curl\/curl.h:1637:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_FTP_SKIP_PASV_IP :: CURLoption
pattern CURLOPT_FTP_SKIP_PASV_IP = CURLoption 137

{-| __C declaration:__ @CURLOPT_FTP_FILEMETHOD@

    __defined at:__ @curl\/curl.h:1641:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_FTP_FILEMETHOD :: CURLoption
pattern CURLOPT_FTP_FILEMETHOD = CURLoption 138

{-| __C declaration:__ @CURLOPT_LOCALPORT@

    __defined at:__ @curl\/curl.h:1644:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_LOCALPORT :: CURLoption
pattern CURLOPT_LOCALPORT = CURLoption 139

{-| __C declaration:__ @CURLOPT_LOCALPORTRANGE@

    __defined at:__ @curl\/curl.h:1649:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_LOCALPORTRANGE :: CURLoption
pattern CURLOPT_LOCALPORTRANGE = CURLoption 140

{-| __C declaration:__ @CURLOPT_CONNECT_ONLY@

    __defined at:__ @curl\/curl.h:1653:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_CONNECT_ONLY :: CURLoption
pattern CURLOPT_CONNECT_ONLY = CURLoption 141

{-| __C declaration:__ @CURLOPT_CONV_FROM_NETWORK_FUNCTION@

    __defined at:__ @curl\/curl.h:1657:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_CONV_FROM_NETWORK_FUNCTION :: CURLoption
pattern CURLOPT_CONV_FROM_NETWORK_FUNCTION = CURLoption 20142

{-| __C declaration:__ @CURLOPT_CONV_TO_NETWORK_FUNCTION@

    __defined at:__ @curl\/curl.h:1663:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_CONV_TO_NETWORK_FUNCTION :: CURLoption
pattern CURLOPT_CONV_TO_NETWORK_FUNCTION = CURLoption 20143

{-| __C declaration:__ @CURLOPT_CONV_FROM_UTF8_FUNCTION@

    __defined at:__ @curl\/curl.h:1670:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_CONV_FROM_UTF8_FUNCTION :: CURLoption
pattern CURLOPT_CONV_FROM_UTF8_FUNCTION = CURLoption 20144

{-| __C declaration:__ @CURLOPT_MAX_SEND_SPEED_LARGE@

    __defined at:__ @curl\/curl.h:1676:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_MAX_SEND_SPEED_LARGE :: CURLoption
pattern CURLOPT_MAX_SEND_SPEED_LARGE = CURLoption 30145

{-| __C declaration:__ @CURLOPT_MAX_RECV_SPEED_LARGE@

    __defined at:__ @curl\/curl.h:1677:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_MAX_RECV_SPEED_LARGE :: CURLoption
pattern CURLOPT_MAX_RECV_SPEED_LARGE = CURLoption 30146

{-| __C declaration:__ @CURLOPT_FTP_ALTERNATIVE_TO_USER@

    __defined at:__ @curl\/curl.h:1680:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_FTP_ALTERNATIVE_TO_USER :: CURLoption
pattern CURLOPT_FTP_ALTERNATIVE_TO_USER = CURLoption 10147

{-| __C declaration:__ @CURLOPT_SOCKOPTFUNCTION@

    __defined at:__ @curl\/curl.h:1683:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SOCKOPTFUNCTION :: CURLoption
pattern CURLOPT_SOCKOPTFUNCTION = CURLoption 20148

{-| __C declaration:__ @CURLOPT_SOCKOPTDATA@

    __defined at:__ @curl\/curl.h:1684:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SOCKOPTDATA :: CURLoption
pattern CURLOPT_SOCKOPTDATA = CURLoption 10149

{-| __C declaration:__ @CURLOPT_SSL_SESSIONID_CACHE@

    __defined at:__ @curl\/curl.h:1688:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSL_SESSIONID_CACHE :: CURLoption
pattern CURLOPT_SSL_SESSIONID_CACHE = CURLoption 150

{-| __C declaration:__ @CURLOPT_SSH_AUTH_TYPES@

    __defined at:__ @curl\/curl.h:1691:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSH_AUTH_TYPES :: CURLoption
pattern CURLOPT_SSH_AUTH_TYPES = CURLoption 151

{-| __C declaration:__ @CURLOPT_SSH_PUBLIC_KEYFILE@

    __defined at:__ @curl\/curl.h:1694:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSH_PUBLIC_KEYFILE :: CURLoption
pattern CURLOPT_SSH_PUBLIC_KEYFILE = CURLoption 10152

{-| __C declaration:__ @CURLOPT_SSH_PRIVATE_KEYFILE@

    __defined at:__ @curl\/curl.h:1695:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSH_PRIVATE_KEYFILE :: CURLoption
pattern CURLOPT_SSH_PRIVATE_KEYFILE = CURLoption 10153

{-| __C declaration:__ @CURLOPT_FTP_SSL_CCC@

    __defined at:__ @curl\/curl.h:1698:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_FTP_SSL_CCC :: CURLoption
pattern CURLOPT_FTP_SSL_CCC = CURLoption 154

{-| __C declaration:__ @CURLOPT_TIMEOUT_MS@

    __defined at:__ @curl\/curl.h:1701:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TIMEOUT_MS :: CURLoption
pattern CURLOPT_TIMEOUT_MS = CURLoption 155

{-| __C declaration:__ @CURLOPT_CONNECTTIMEOUT_MS@

    __defined at:__ @curl\/curl.h:1702:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_CONNECTTIMEOUT_MS :: CURLoption
pattern CURLOPT_CONNECTTIMEOUT_MS = CURLoption 156

{-| __C declaration:__ @CURLOPT_HTTP_TRANSFER_DECODING@

    __defined at:__ @curl\/curl.h:1706:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HTTP_TRANSFER_DECODING :: CURLoption
pattern CURLOPT_HTTP_TRANSFER_DECODING = CURLoption 157

{-| __C declaration:__ @CURLOPT_HTTP_CONTENT_DECODING@

    __defined at:__ @curl\/curl.h:1707:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HTTP_CONTENT_DECODING :: CURLoption
pattern CURLOPT_HTTP_CONTENT_DECODING = CURLoption 158

{-| __C declaration:__ @CURLOPT_NEW_FILE_PERMS@

    __defined at:__ @curl\/curl.h:1711:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_NEW_FILE_PERMS :: CURLoption
pattern CURLOPT_NEW_FILE_PERMS = CURLoption 159

{-| __C declaration:__ @CURLOPT_NEW_DIRECTORY_PERMS@

    __defined at:__ @curl\/curl.h:1712:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_NEW_DIRECTORY_PERMS :: CURLoption
pattern CURLOPT_NEW_DIRECTORY_PERMS = CURLoption 160

{-| __C declaration:__ @CURLOPT_POSTREDIR@

    __defined at:__ @curl\/curl.h:1716:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_POSTREDIR :: CURLoption
pattern CURLOPT_POSTREDIR = CURLoption 161

{-| __C declaration:__ @CURLOPT_SSH_HOST_PUBLIC_KEY_MD5@

    __defined at:__ @curl\/curl.h:1719:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSH_HOST_PUBLIC_KEY_MD5 :: CURLoption
pattern CURLOPT_SSH_HOST_PUBLIC_KEY_MD5 = CURLoption 10162

{-| __C declaration:__ @CURLOPT_OPENSOCKETFUNCTION@

    __defined at:__ @curl\/curl.h:1725:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_OPENSOCKETFUNCTION :: CURLoption
pattern CURLOPT_OPENSOCKETFUNCTION = CURLoption 20163

{-| __C declaration:__ @CURLOPT_OPENSOCKETDATA@

    __defined at:__ @curl\/curl.h:1726:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_OPENSOCKETDATA :: CURLoption
pattern CURLOPT_OPENSOCKETDATA = CURLoption 10164

{-| __C declaration:__ @CURLOPT_COPYPOSTFIELDS@

    __defined at:__ @curl\/curl.h:1729:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_COPYPOSTFIELDS :: CURLoption
pattern CURLOPT_COPYPOSTFIELDS = CURLoption 10165

{-| __C declaration:__ @CURLOPT_PROXY_TRANSFER_MODE@

    __defined at:__ @curl\/curl.h:1732:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_TRANSFER_MODE :: CURLoption
pattern CURLOPT_PROXY_TRANSFER_MODE = CURLoption 166

{-| __C declaration:__ @CURLOPT_SEEKFUNCTION@

    __defined at:__ @curl\/curl.h:1735:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SEEKFUNCTION :: CURLoption
pattern CURLOPT_SEEKFUNCTION = CURLoption 20167

{-| __C declaration:__ @CURLOPT_SEEKDATA@

    __defined at:__ @curl\/curl.h:1736:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SEEKDATA :: CURLoption
pattern CURLOPT_SEEKDATA = CURLoption 10168

{-| __C declaration:__ @CURLOPT_CRLFILE@

    __defined at:__ @curl\/curl.h:1739:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_CRLFILE :: CURLoption
pattern CURLOPT_CRLFILE = CURLoption 10169

{-| __C declaration:__ @CURLOPT_ISSUERCERT@

    __defined at:__ @curl\/curl.h:1742:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_ISSUERCERT :: CURLoption
pattern CURLOPT_ISSUERCERT = CURLoption 10170

{-| __C declaration:__ @CURLOPT_ADDRESS_SCOPE@

    __defined at:__ @curl\/curl.h:1745:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_ADDRESS_SCOPE :: CURLoption
pattern CURLOPT_ADDRESS_SCOPE = CURLoption 171

{-| __C declaration:__ @CURLOPT_CERTINFO@

    __defined at:__ @curl\/curl.h:1749:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_CERTINFO :: CURLoption
pattern CURLOPT_CERTINFO = CURLoption 172

{-| __C declaration:__ @CURLOPT_USERNAME@

    __defined at:__ @curl\/curl.h:1752:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_USERNAME :: CURLoption
pattern CURLOPT_USERNAME = CURLoption 10173

{-| __C declaration:__ @CURLOPT_PASSWORD@

    __defined at:__ @curl\/curl.h:1753:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PASSWORD :: CURLoption
pattern CURLOPT_PASSWORD = CURLoption 10174

{-| __C declaration:__ @CURLOPT_PROXYUSERNAME@

    __defined at:__ @curl\/curl.h:1756:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXYUSERNAME :: CURLoption
pattern CURLOPT_PROXYUSERNAME = CURLoption 10175

{-| __C declaration:__ @CURLOPT_PROXYPASSWORD@

    __defined at:__ @curl\/curl.h:1757:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXYPASSWORD :: CURLoption
pattern CURLOPT_PROXYPASSWORD = CURLoption 10176

{-| __C declaration:__ @CURLOPT_NOPROXY@

    __defined at:__ @curl\/curl.h:1766:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_NOPROXY :: CURLoption
pattern CURLOPT_NOPROXY = CURLoption 10177

{-| __C declaration:__ @CURLOPT_TFTP_BLKSIZE@

    __defined at:__ @curl\/curl.h:1769:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TFTP_BLKSIZE :: CURLoption
pattern CURLOPT_TFTP_BLKSIZE = CURLoption 178

{-| __C declaration:__ @CURLOPT_SOCKS5_GSSAPI_SERVICE@

    __defined at:__ @curl\/curl.h:1773:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SOCKS5_GSSAPI_SERVICE :: CURLoption
pattern CURLOPT_SOCKS5_GSSAPI_SERVICE = CURLoption 10179

{-| __C declaration:__ @CURLOPT_SOCKS5_GSSAPI_NEC@

    __defined at:__ @curl\/curl.h:1778:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SOCKS5_GSSAPI_NEC :: CURLoption
pattern CURLOPT_SOCKS5_GSSAPI_NEC = CURLoption 180

{-| __C declaration:__ @CURLOPT_PROTOCOLS@

    __defined at:__ @curl\/curl.h:1784:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROTOCOLS :: CURLoption
pattern CURLOPT_PROTOCOLS = CURLoption 181

{-| __C declaration:__ @CURLOPT_REDIR_PROTOCOLS@

    __defined at:__ @curl\/curl.h:1790:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_REDIR_PROTOCOLS :: CURLoption
pattern CURLOPT_REDIR_PROTOCOLS = CURLoption 182

{-| __C declaration:__ @CURLOPT_SSH_KNOWNHOSTS@

    __defined at:__ @curl\/curl.h:1794:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSH_KNOWNHOSTS :: CURLoption
pattern CURLOPT_SSH_KNOWNHOSTS = CURLoption 10183

{-| __C declaration:__ @CURLOPT_SSH_KEYFUNCTION@

    __defined at:__ @curl\/curl.h:1798:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSH_KEYFUNCTION :: CURLoption
pattern CURLOPT_SSH_KEYFUNCTION = CURLoption 20184

{-| __C declaration:__ @CURLOPT_SSH_KEYDATA@

    __defined at:__ @curl\/curl.h:1801:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSH_KEYDATA :: CURLoption
pattern CURLOPT_SSH_KEYDATA = CURLoption 10185

{-| __C declaration:__ @CURLOPT_MAIL_FROM@

    __defined at:__ @curl\/curl.h:1804:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_MAIL_FROM :: CURLoption
pattern CURLOPT_MAIL_FROM = CURLoption 10186

{-| __C declaration:__ @CURLOPT_MAIL_RCPT@

    __defined at:__ @curl\/curl.h:1807:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_MAIL_RCPT :: CURLoption
pattern CURLOPT_MAIL_RCPT = CURLoption 10187

{-| __C declaration:__ @CURLOPT_FTP_USE_PRET@

    __defined at:__ @curl\/curl.h:1810:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_FTP_USE_PRET :: CURLoption
pattern CURLOPT_FTP_USE_PRET = CURLoption 188

{-| __C declaration:__ @CURLOPT_RTSP_REQUEST@

    __defined at:__ @curl\/curl.h:1813:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_RTSP_REQUEST :: CURLoption
pattern CURLOPT_RTSP_REQUEST = CURLoption 189

{-| __C declaration:__ @CURLOPT_RTSP_SESSION_ID@

    __defined at:__ @curl\/curl.h:1816:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_RTSP_SESSION_ID :: CURLoption
pattern CURLOPT_RTSP_SESSION_ID = CURLoption 10190

{-| __C declaration:__ @CURLOPT_RTSP_STREAM_URI@

    __defined at:__ @curl\/curl.h:1819:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_RTSP_STREAM_URI :: CURLoption
pattern CURLOPT_RTSP_STREAM_URI = CURLoption 10191

{-| __C declaration:__ @CURLOPT_RTSP_TRANSPORT@

    __defined at:__ @curl\/curl.h:1822:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_RTSP_TRANSPORT :: CURLoption
pattern CURLOPT_RTSP_TRANSPORT = CURLoption 10192

{-| __C declaration:__ @CURLOPT_RTSP_CLIENT_CSEQ@

    __defined at:__ @curl\/curl.h:1825:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_RTSP_CLIENT_CSEQ :: CURLoption
pattern CURLOPT_RTSP_CLIENT_CSEQ = CURLoption 193

{-| __C declaration:__ @CURLOPT_RTSP_SERVER_CSEQ@

    __defined at:__ @curl\/curl.h:1828:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_RTSP_SERVER_CSEQ :: CURLoption
pattern CURLOPT_RTSP_SERVER_CSEQ = CURLoption 194

{-| __C declaration:__ @CURLOPT_INTERLEAVEDATA@

    __defined at:__ @curl\/curl.h:1831:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_INTERLEAVEDATA :: CURLoption
pattern CURLOPT_INTERLEAVEDATA = CURLoption 10195

{-| __C declaration:__ @CURLOPT_INTERLEAVEFUNCTION@

    __defined at:__ @curl\/curl.h:1834:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_INTERLEAVEFUNCTION :: CURLoption
pattern CURLOPT_INTERLEAVEFUNCTION = CURLoption 20196

{-| __C declaration:__ @CURLOPT_WILDCARDMATCH@

    __defined at:__ @curl\/curl.h:1837:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_WILDCARDMATCH :: CURLoption
pattern CURLOPT_WILDCARDMATCH = CURLoption 197

{-| __C declaration:__ @CURLOPT_CHUNK_BGN_FUNCTION@

    __defined at:__ @curl\/curl.h:1841:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_CHUNK_BGN_FUNCTION :: CURLoption
pattern CURLOPT_CHUNK_BGN_FUNCTION = CURLoption 20198

{-| __C declaration:__ @CURLOPT_CHUNK_END_FUNCTION@

    __defined at:__ @curl\/curl.h:1845:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_CHUNK_END_FUNCTION :: CURLoption
pattern CURLOPT_CHUNK_END_FUNCTION = CURLoption 20199

{-| __C declaration:__ @CURLOPT_FNMATCH_FUNCTION@

    __defined at:__ @curl\/curl.h:1848:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_FNMATCH_FUNCTION :: CURLoption
pattern CURLOPT_FNMATCH_FUNCTION = CURLoption 20200

{-| __C declaration:__ @CURLOPT_CHUNK_DATA@

    __defined at:__ @curl\/curl.h:1851:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_CHUNK_DATA :: CURLoption
pattern CURLOPT_CHUNK_DATA = CURLoption 10201

{-| __C declaration:__ @CURLOPT_FNMATCH_DATA@

    __defined at:__ @curl\/curl.h:1854:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_FNMATCH_DATA :: CURLoption
pattern CURLOPT_FNMATCH_DATA = CURLoption 10202

{-| __C declaration:__ @CURLOPT_RESOLVE@

    __defined at:__ @curl\/curl.h:1857:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_RESOLVE :: CURLoption
pattern CURLOPT_RESOLVE = CURLoption 10203

{-| __C declaration:__ @CURLOPT_TLSAUTH_USERNAME@

    __defined at:__ @curl\/curl.h:1860:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TLSAUTH_USERNAME :: CURLoption
pattern CURLOPT_TLSAUTH_USERNAME = CURLoption 10204

{-| __C declaration:__ @CURLOPT_TLSAUTH_PASSWORD@

    __defined at:__ @curl\/curl.h:1863:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TLSAUTH_PASSWORD :: CURLoption
pattern CURLOPT_TLSAUTH_PASSWORD = CURLoption 10205

{-| __C declaration:__ @CURLOPT_TLSAUTH_TYPE@

    __defined at:__ @curl\/curl.h:1866:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TLSAUTH_TYPE :: CURLoption
pattern CURLOPT_TLSAUTH_TYPE = CURLoption 10206

{-| __C declaration:__ @CURLOPT_TRANSFER_ENCODING@

    __defined at:__ @curl\/curl.h:1878:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TRANSFER_ENCODING :: CURLoption
pattern CURLOPT_TRANSFER_ENCODING = CURLoption 207

{-| __C declaration:__ @CURLOPT_CLOSESOCKETFUNCTION@

    __defined at:__ @curl\/curl.h:1882:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_CLOSESOCKETFUNCTION :: CURLoption
pattern CURLOPT_CLOSESOCKETFUNCTION = CURLoption 20208

{-| __C declaration:__ @CURLOPT_CLOSESOCKETDATA@

    __defined at:__ @curl\/curl.h:1883:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_CLOSESOCKETDATA :: CURLoption
pattern CURLOPT_CLOSESOCKETDATA = CURLoption 10209

{-| __C declaration:__ @CURLOPT_GSSAPI_DELEGATION@

    __defined at:__ @curl\/curl.h:1886:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_GSSAPI_DELEGATION :: CURLoption
pattern CURLOPT_GSSAPI_DELEGATION = CURLoption 210

{-| __C declaration:__ @CURLOPT_DNS_SERVERS@

    __defined at:__ @curl\/curl.h:1890:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_DNS_SERVERS :: CURLoption
pattern CURLOPT_DNS_SERVERS = CURLoption 10211

{-| __C declaration:__ @CURLOPT_ACCEPTTIMEOUT_MS@

    __defined at:__ @curl\/curl.h:1894:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_ACCEPTTIMEOUT_MS :: CURLoption
pattern CURLOPT_ACCEPTTIMEOUT_MS = CURLoption 212

{-| __C declaration:__ @CURLOPT_TCP_KEEPALIVE@

    __defined at:__ @curl\/curl.h:1897:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TCP_KEEPALIVE :: CURLoption
pattern CURLOPT_TCP_KEEPALIVE = CURLoption 213

{-| __C declaration:__ @CURLOPT_TCP_KEEPIDLE@

    __defined at:__ @curl\/curl.h:1900:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TCP_KEEPIDLE :: CURLoption
pattern CURLOPT_TCP_KEEPIDLE = CURLoption 214

{-| __C declaration:__ @CURLOPT_TCP_KEEPINTVL@

    __defined at:__ @curl\/curl.h:1901:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TCP_KEEPINTVL :: CURLoption
pattern CURLOPT_TCP_KEEPINTVL = CURLoption 215

{-| __C declaration:__ @CURLOPT_SSL_OPTIONS@

    __defined at:__ @curl\/curl.h:1904:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSL_OPTIONS :: CURLoption
pattern CURLOPT_SSL_OPTIONS = CURLoption 216

{-| __C declaration:__ @CURLOPT_MAIL_AUTH@

    __defined at:__ @curl\/curl.h:1907:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_MAIL_AUTH :: CURLoption
pattern CURLOPT_MAIL_AUTH = CURLoption 10217

{-| __C declaration:__ @CURLOPT_SASL_IR@

    __defined at:__ @curl\/curl.h:1910:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SASL_IR :: CURLoption
pattern CURLOPT_SASL_IR = CURLoption 218

{-| __C declaration:__ @CURLOPT_XFERINFOFUNCTION@

    __defined at:__ @curl\/curl.h:1915:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_XFERINFOFUNCTION :: CURLoption
pattern CURLOPT_XFERINFOFUNCTION = CURLoption 20219

{-| __C declaration:__ @CURLOPT_XOAUTH2_BEARER@

    __defined at:__ @curl\/curl.h:1918:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_XOAUTH2_BEARER :: CURLoption
pattern CURLOPT_XOAUTH2_BEARER = CURLoption 10220

{-| __C declaration:__ @CURLOPT_DNS_INTERFACE@

    __defined at:__ @curl\/curl.h:1923:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_DNS_INTERFACE :: CURLoption
pattern CURLOPT_DNS_INTERFACE = CURLoption 10221

{-| __C declaration:__ @CURLOPT_DNS_LOCAL_IP4@

    __defined at:__ @curl\/curl.h:1927:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_DNS_LOCAL_IP4 :: CURLoption
pattern CURLOPT_DNS_LOCAL_IP4 = CURLoption 10222

{-| __C declaration:__ @CURLOPT_DNS_LOCAL_IP6@

    __defined at:__ @curl\/curl.h:1931:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_DNS_LOCAL_IP6 :: CURLoption
pattern CURLOPT_DNS_LOCAL_IP6 = CURLoption 10223

{-| __C declaration:__ @CURLOPT_LOGIN_OPTIONS@

    __defined at:__ @curl\/curl.h:1934:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_LOGIN_OPTIONS :: CURLoption
pattern CURLOPT_LOGIN_OPTIONS = CURLoption 10224

{-| __C declaration:__ @CURLOPT_SSL_ENABLE_NPN@

    __defined at:__ @curl\/curl.h:1937:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSL_ENABLE_NPN :: CURLoption
pattern CURLOPT_SSL_ENABLE_NPN = CURLoption 225

{-| __C declaration:__ @CURLOPT_SSL_ENABLE_ALPN@

    __defined at:__ @curl\/curl.h:1941:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSL_ENABLE_ALPN :: CURLoption
pattern CURLOPT_SSL_ENABLE_ALPN = CURLoption 226

{-| __C declaration:__ @CURLOPT_EXPECT_100_TIMEOUT_MS@

    __defined at:__ @curl\/curl.h:1945:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_EXPECT_100_TIMEOUT_MS :: CURLoption
pattern CURLOPT_EXPECT_100_TIMEOUT_MS = CURLoption 227

{-| __C declaration:__ @CURLOPT_PROXYHEADER@

    __defined at:__ @curl\/curl.h:1949:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXYHEADER :: CURLoption
pattern CURLOPT_PROXYHEADER = CURLoption 10228

{-| __C declaration:__ @CURLOPT_HEADEROPT@

    __defined at:__ @curl\/curl.h:1952:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HEADEROPT :: CURLoption
pattern CURLOPT_HEADEROPT = CURLoption 229

{-| __C declaration:__ @CURLOPT_PINNEDPUBLICKEY@

    __defined at:__ @curl\/curl.h:1955:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PINNEDPUBLICKEY :: CURLoption
pattern CURLOPT_PINNEDPUBLICKEY = CURLoption 10230

{-| __C declaration:__ @CURLOPT_UNIX_SOCKET_PATH@

    __defined at:__ @curl\/curl.h:1958:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_UNIX_SOCKET_PATH :: CURLoption
pattern CURLOPT_UNIX_SOCKET_PATH = CURLoption 10231

{-| __C declaration:__ @CURLOPT_SSL_VERIFYSTATUS@

    __defined at:__ @curl\/curl.h:1961:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSL_VERIFYSTATUS :: CURLoption
pattern CURLOPT_SSL_VERIFYSTATUS = CURLoption 232

{-| __C declaration:__ @CURLOPT_SSL_FALSESTART@

    __defined at:__ @curl\/curl.h:1964:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSL_FALSESTART :: CURLoption
pattern CURLOPT_SSL_FALSESTART = CURLoption 233

{-| __C declaration:__ @CURLOPT_PATH_AS_IS@

    __defined at:__ @curl\/curl.h:1968:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PATH_AS_IS :: CURLoption
pattern CURLOPT_PATH_AS_IS = CURLoption 234

{-| __C declaration:__ @CURLOPT_PROXY_SERVICE_NAME@

    __defined at:__ @curl\/curl.h:1971:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_SERVICE_NAME :: CURLoption
pattern CURLOPT_PROXY_SERVICE_NAME = CURLoption 10235

{-| __C declaration:__ @CURLOPT_SERVICE_NAME@

    __defined at:__ @curl\/curl.h:1974:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SERVICE_NAME :: CURLoption
pattern CURLOPT_SERVICE_NAME = CURLoption 10236

{-| __C declaration:__ @CURLOPT_PIPEWAIT@

    __defined at:__ @curl\/curl.h:1977:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PIPEWAIT :: CURLoption
pattern CURLOPT_PIPEWAIT = CURLoption 237

{-| __C declaration:__ @CURLOPT_DEFAULT_PROTOCOL@

    __defined at:__ @curl\/curl.h:1980:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_DEFAULT_PROTOCOL :: CURLoption
pattern CURLOPT_DEFAULT_PROTOCOL = CURLoption 10238

{-| __C declaration:__ @CURLOPT_STREAM_WEIGHT@

    __defined at:__ @curl\/curl.h:1983:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_STREAM_WEIGHT :: CURLoption
pattern CURLOPT_STREAM_WEIGHT = CURLoption 239

{-| __C declaration:__ @CURLOPT_STREAM_DEPENDS@

    __defined at:__ @curl\/curl.h:1986:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_STREAM_DEPENDS :: CURLoption
pattern CURLOPT_STREAM_DEPENDS = CURLoption 10240

{-| __C declaration:__ @CURLOPT_STREAM_DEPENDS_E@

    __defined at:__ @curl\/curl.h:1989:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_STREAM_DEPENDS_E :: CURLoption
pattern CURLOPT_STREAM_DEPENDS_E = CURLoption 10241

{-| __C declaration:__ @CURLOPT_TFTP_NO_OPTIONS@

    __defined at:__ @curl\/curl.h:1992:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TFTP_NO_OPTIONS :: CURLoption
pattern CURLOPT_TFTP_NO_OPTIONS = CURLoption 242

{-| __C declaration:__ @CURLOPT_CONNECT_TO@

    __defined at:__ @curl\/curl.h:1996:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_CONNECT_TO :: CURLoption
pattern CURLOPT_CONNECT_TO = CURLoption 10243

{-| __C declaration:__ @CURLOPT_TCP_FASTOPEN@

    __defined at:__ @curl\/curl.h:1999:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TCP_FASTOPEN :: CURLoption
pattern CURLOPT_TCP_FASTOPEN = CURLoption 244

{-| __C declaration:__ @CURLOPT_KEEP_SENDING_ON_ERROR@

    __defined at:__ @curl\/curl.h:2003:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_KEEP_SENDING_ON_ERROR :: CURLoption
pattern CURLOPT_KEEP_SENDING_ON_ERROR = CURLoption 245

{-| __C declaration:__ @CURLOPT_PROXY_CAINFO@

    __defined at:__ @curl\/curl.h:2007:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_CAINFO :: CURLoption
pattern CURLOPT_PROXY_CAINFO = CURLoption 10246

{-| __C declaration:__ @CURLOPT_PROXY_CAPATH@

    __defined at:__ @curl\/curl.h:2011:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_CAPATH :: CURLoption
pattern CURLOPT_PROXY_CAPATH = CURLoption 10247

{-| __C declaration:__ @CURLOPT_PROXY_SSL_VERIFYPEER@

    __defined at:__ @curl\/curl.h:2015:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_SSL_VERIFYPEER :: CURLoption
pattern CURLOPT_PROXY_SSL_VERIFYPEER = CURLoption 248

{-| __C declaration:__ @CURLOPT_PROXY_SSL_VERIFYHOST@

    __defined at:__ @curl\/curl.h:2020:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_SSL_VERIFYHOST :: CURLoption
pattern CURLOPT_PROXY_SSL_VERIFYHOST = CURLoption 249

{-| __C declaration:__ @CURLOPT_PROXY_SSLVERSION@

    __defined at:__ @curl\/curl.h:2024:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_SSLVERSION :: CURLoption
pattern CURLOPT_PROXY_SSLVERSION = CURLoption 250

{-| __C declaration:__ @CURLOPT_PROXY_TLSAUTH_USERNAME@

    __defined at:__ @curl\/curl.h:2027:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_TLSAUTH_USERNAME :: CURLoption
pattern CURLOPT_PROXY_TLSAUTH_USERNAME = CURLoption 10251

{-| __C declaration:__ @CURLOPT_PROXY_TLSAUTH_PASSWORD@

    __defined at:__ @curl\/curl.h:2030:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_TLSAUTH_PASSWORD :: CURLoption
pattern CURLOPT_PROXY_TLSAUTH_PASSWORD = CURLoption 10252

{-| __C declaration:__ @CURLOPT_PROXY_TLSAUTH_TYPE@

    __defined at:__ @curl\/curl.h:2033:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_TLSAUTH_TYPE :: CURLoption
pattern CURLOPT_PROXY_TLSAUTH_TYPE = CURLoption 10253

{-| __C declaration:__ @CURLOPT_PROXY_SSLCERT@

    __defined at:__ @curl\/curl.h:2036:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_SSLCERT :: CURLoption
pattern CURLOPT_PROXY_SSLCERT = CURLoption 10254

{-| __C declaration:__ @CURLOPT_PROXY_SSLCERTTYPE@

    __defined at:__ @curl\/curl.h:2040:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_SSLCERTTYPE :: CURLoption
pattern CURLOPT_PROXY_SSLCERTTYPE = CURLoption 10255

{-| __C declaration:__ @CURLOPT_PROXY_SSLKEY@

    __defined at:__ @curl\/curl.h:2043:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_SSLKEY :: CURLoption
pattern CURLOPT_PROXY_SSLKEY = CURLoption 10256

{-| __C declaration:__ @CURLOPT_PROXY_SSLKEYTYPE@

    __defined at:__ @curl\/curl.h:2047:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_SSLKEYTYPE :: CURLoption
pattern CURLOPT_PROXY_SSLKEYTYPE = CURLoption 10257

{-| __C declaration:__ @CURLOPT_PROXY_KEYPASSWD@

    __defined at:__ @curl\/curl.h:2050:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_KEYPASSWD :: CURLoption
pattern CURLOPT_PROXY_KEYPASSWD = CURLoption 10258

{-| __C declaration:__ @CURLOPT_PROXY_SSL_CIPHER_LIST@

    __defined at:__ @curl\/curl.h:2053:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_SSL_CIPHER_LIST :: CURLoption
pattern CURLOPT_PROXY_SSL_CIPHER_LIST = CURLoption 10259

{-| __C declaration:__ @CURLOPT_PROXY_CRLFILE@

    __defined at:__ @curl\/curl.h:2056:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_CRLFILE :: CURLoption
pattern CURLOPT_PROXY_CRLFILE = CURLoption 10260

{-| __C declaration:__ @CURLOPT_PROXY_SSL_OPTIONS@

    __defined at:__ @curl\/curl.h:2060:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_SSL_OPTIONS :: CURLoption
pattern CURLOPT_PROXY_SSL_OPTIONS = CURLoption 261

{-| __C declaration:__ @CURLOPT_PRE_PROXY@

    __defined at:__ @curl\/curl.h:2063:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PRE_PROXY :: CURLoption
pattern CURLOPT_PRE_PROXY = CURLoption 10262

{-| __C declaration:__ @CURLOPT_PROXY_PINNEDPUBLICKEY@

    __defined at:__ @curl\/curl.h:2067:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_PINNEDPUBLICKEY :: CURLoption
pattern CURLOPT_PROXY_PINNEDPUBLICKEY = CURLoption 10263

{-| __C declaration:__ @CURLOPT_ABSTRACT_UNIX_SOCKET@

    __defined at:__ @curl\/curl.h:2070:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_ABSTRACT_UNIX_SOCKET :: CURLoption
pattern CURLOPT_ABSTRACT_UNIX_SOCKET = CURLoption 10264

{-| __C declaration:__ @CURLOPT_SUPPRESS_CONNECT_HEADERS@

    __defined at:__ @curl\/curl.h:2073:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SUPPRESS_CONNECT_HEADERS :: CURLoption
pattern CURLOPT_SUPPRESS_CONNECT_HEADERS = CURLoption 265

{-| __C declaration:__ @CURLOPT_REQUEST_TARGET@

    __defined at:__ @curl\/curl.h:2076:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_REQUEST_TARGET :: CURLoption
pattern CURLOPT_REQUEST_TARGET = CURLoption 10266

{-| __C declaration:__ @CURLOPT_SOCKS5_AUTH@

    __defined at:__ @curl\/curl.h:2079:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SOCKS5_AUTH :: CURLoption
pattern CURLOPT_SOCKS5_AUTH = CURLoption 267

{-| __C declaration:__ @CURLOPT_SSH_COMPRESSION@

    __defined at:__ @curl\/curl.h:2082:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSH_COMPRESSION :: CURLoption
pattern CURLOPT_SSH_COMPRESSION = CURLoption 268

{-| __C declaration:__ @CURLOPT_MIMEPOST@

    __defined at:__ @curl\/curl.h:2085:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_MIMEPOST :: CURLoption
pattern CURLOPT_MIMEPOST = CURLoption 10269

{-| __C declaration:__ @CURLOPT_TIMEVALUE_LARGE@

    __defined at:__ @curl\/curl.h:2089:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TIMEVALUE_LARGE :: CURLoption
pattern CURLOPT_TIMEVALUE_LARGE = CURLoption 30270

{-| __C declaration:__ @CURLOPT_HAPPY_EYEBALLS_TIMEOUT_MS@

    __defined at:__ @curl\/curl.h:2092:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HAPPY_EYEBALLS_TIMEOUT_MS :: CURLoption
pattern CURLOPT_HAPPY_EYEBALLS_TIMEOUT_MS = CURLoption 271

{-| __C declaration:__ @CURLOPT_RESOLVER_START_FUNCTION@

    __defined at:__ @curl\/curl.h:2095:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_RESOLVER_START_FUNCTION :: CURLoption
pattern CURLOPT_RESOLVER_START_FUNCTION = CURLoption 20272

{-| __C declaration:__ @CURLOPT_RESOLVER_START_DATA@

    __defined at:__ @curl\/curl.h:2098:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_RESOLVER_START_DATA :: CURLoption
pattern CURLOPT_RESOLVER_START_DATA = CURLoption 10273

{-| __C declaration:__ @CURLOPT_HAPROXYPROTOCOL@

    __defined at:__ @curl\/curl.h:2101:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HAPROXYPROTOCOL :: CURLoption
pattern CURLOPT_HAPROXYPROTOCOL = CURLoption 274

{-| __C declaration:__ @CURLOPT_DNS_SHUFFLE_ADDRESSES@

    __defined at:__ @curl\/curl.h:2104:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_DNS_SHUFFLE_ADDRESSES :: CURLoption
pattern CURLOPT_DNS_SHUFFLE_ADDRESSES = CURLoption 275

{-| __C declaration:__ @CURLOPT_TLS13_CIPHERS@

    __defined at:__ @curl\/curl.h:2107:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TLS13_CIPHERS :: CURLoption
pattern CURLOPT_TLS13_CIPHERS = CURLoption 10276

{-| __C declaration:__ @CURLOPT_PROXY_TLS13_CIPHERS@

    __defined at:__ @curl\/curl.h:2108:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_TLS13_CIPHERS :: CURLoption
pattern CURLOPT_PROXY_TLS13_CIPHERS = CURLoption 10277

{-| __C declaration:__ @CURLOPT_DISALLOW_USERNAME_IN_URL@

    __defined at:__ @curl\/curl.h:2111:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_DISALLOW_USERNAME_IN_URL :: CURLoption
pattern CURLOPT_DISALLOW_USERNAME_IN_URL = CURLoption 278

{-| __C declaration:__ @CURLOPT_DOH_URL@

    __defined at:__ @curl\/curl.h:2114:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_DOH_URL :: CURLoption
pattern CURLOPT_DOH_URL = CURLoption 10279

{-| __C declaration:__ @CURLOPT_UPLOAD_BUFFERSIZE@

    __defined at:__ @curl\/curl.h:2117:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_UPLOAD_BUFFERSIZE :: CURLoption
pattern CURLOPT_UPLOAD_BUFFERSIZE = CURLoption 280

{-| __C declaration:__ @CURLOPT_UPKEEP_INTERVAL_MS@

    __defined at:__ @curl\/curl.h:2120:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_UPKEEP_INTERVAL_MS :: CURLoption
pattern CURLOPT_UPKEEP_INTERVAL_MS = CURLoption 281

{-| __C declaration:__ @CURLOPT_CURLU@

    __defined at:__ @curl\/curl.h:2123:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_CURLU :: CURLoption
pattern CURLOPT_CURLU = CURLoption 10282

{-| __C declaration:__ @CURLOPT_TRAILERFUNCTION@

    __defined at:__ @curl\/curl.h:2126:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TRAILERFUNCTION :: CURLoption
pattern CURLOPT_TRAILERFUNCTION = CURLoption 20283

{-| __C declaration:__ @CURLOPT_TRAILERDATA@

    __defined at:__ @curl\/curl.h:2129:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TRAILERDATA :: CURLoption
pattern CURLOPT_TRAILERDATA = CURLoption 10284

{-| __C declaration:__ @CURLOPT_HTTP09_ALLOWED@

    __defined at:__ @curl\/curl.h:2132:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HTTP09_ALLOWED :: CURLoption
pattern CURLOPT_HTTP09_ALLOWED = CURLoption 285

{-| __C declaration:__ @CURLOPT_ALTSVC_CTRL@

    __defined at:__ @curl\/curl.h:2135:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_ALTSVC_CTRL :: CURLoption
pattern CURLOPT_ALTSVC_CTRL = CURLoption 286

{-| __C declaration:__ @CURLOPT_ALTSVC@

    __defined at:__ @curl\/curl.h:2138:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_ALTSVC :: CURLoption
pattern CURLOPT_ALTSVC = CURLoption 10287

{-| __C declaration:__ @CURLOPT_MAXAGE_CONN@

    __defined at:__ @curl\/curl.h:2142:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_MAXAGE_CONN :: CURLoption
pattern CURLOPT_MAXAGE_CONN = CURLoption 288

{-| __C declaration:__ @CURLOPT_SASL_AUTHZID@

    __defined at:__ @curl\/curl.h:2145:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SASL_AUTHZID :: CURLoption
pattern CURLOPT_SASL_AUTHZID = CURLoption 10289

{-| __C declaration:__ @CURLOPT_MAIL_RCPT_ALLOWFAILS@

    __defined at:__ @curl\/curl.h:2148:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_MAIL_RCPT_ALLOWFAILS :: CURLoption
pattern CURLOPT_MAIL_RCPT_ALLOWFAILS = CURLoption 290

{-| __C declaration:__ @CURLOPT_SSLCERT_BLOB@

    __defined at:__ @curl\/curl.h:2151:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSLCERT_BLOB :: CURLoption
pattern CURLOPT_SSLCERT_BLOB = CURLoption 40291

{-| __C declaration:__ @CURLOPT_SSLKEY_BLOB@

    __defined at:__ @curl\/curl.h:2152:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSLKEY_BLOB :: CURLoption
pattern CURLOPT_SSLKEY_BLOB = CURLoption 40292

{-| __C declaration:__ @CURLOPT_PROXY_SSLCERT_BLOB@

    __defined at:__ @curl\/curl.h:2153:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_SSLCERT_BLOB :: CURLoption
pattern CURLOPT_PROXY_SSLCERT_BLOB = CURLoption 40293

{-| __C declaration:__ @CURLOPT_PROXY_SSLKEY_BLOB@

    __defined at:__ @curl\/curl.h:2154:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_SSLKEY_BLOB :: CURLoption
pattern CURLOPT_PROXY_SSLKEY_BLOB = CURLoption 40294

{-| __C declaration:__ @CURLOPT_ISSUERCERT_BLOB@

    __defined at:__ @curl\/curl.h:2155:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_ISSUERCERT_BLOB :: CURLoption
pattern CURLOPT_ISSUERCERT_BLOB = CURLoption 40295

{-| __C declaration:__ @CURLOPT_PROXY_ISSUERCERT@

    __defined at:__ @curl\/curl.h:2158:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_ISSUERCERT :: CURLoption
pattern CURLOPT_PROXY_ISSUERCERT = CURLoption 10296

{-| __C declaration:__ @CURLOPT_PROXY_ISSUERCERT_BLOB@

    __defined at:__ @curl\/curl.h:2159:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_ISSUERCERT_BLOB :: CURLoption
pattern CURLOPT_PROXY_ISSUERCERT_BLOB = CURLoption 40297

{-| __C declaration:__ @CURLOPT_SSL_EC_CURVES@

    __defined at:__ @curl\/curl.h:2165:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSL_EC_CURVES :: CURLoption
pattern CURLOPT_SSL_EC_CURVES = CURLoption 10298

{-| __C declaration:__ @CURLOPT_HSTS_CTRL@

    __defined at:__ @curl\/curl.h:2168:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HSTS_CTRL :: CURLoption
pattern CURLOPT_HSTS_CTRL = CURLoption 299

{-| __C declaration:__ @CURLOPT_HSTS@

    __defined at:__ @curl\/curl.h:2170:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HSTS :: CURLoption
pattern CURLOPT_HSTS = CURLoption 10300

{-| __C declaration:__ @CURLOPT_HSTSREADFUNCTION@

    __defined at:__ @curl\/curl.h:2173:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HSTSREADFUNCTION :: CURLoption
pattern CURLOPT_HSTSREADFUNCTION = CURLoption 20301

{-| __C declaration:__ @CURLOPT_HSTSREADDATA@

    __defined at:__ @curl\/curl.h:2174:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HSTSREADDATA :: CURLoption
pattern CURLOPT_HSTSREADDATA = CURLoption 10302

{-| __C declaration:__ @CURLOPT_HSTSWRITEFUNCTION@

    __defined at:__ @curl\/curl.h:2177:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HSTSWRITEFUNCTION :: CURLoption
pattern CURLOPT_HSTSWRITEFUNCTION = CURLoption 20303

{-| __C declaration:__ @CURLOPT_HSTSWRITEDATA@

    __defined at:__ @curl\/curl.h:2178:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HSTSWRITEDATA :: CURLoption
pattern CURLOPT_HSTSWRITEDATA = CURLoption 10304

{-| __C declaration:__ @CURLOPT_AWS_SIGV4@

    __defined at:__ @curl\/curl.h:2181:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_AWS_SIGV4 :: CURLoption
pattern CURLOPT_AWS_SIGV4 = CURLoption 10305

{-| __C declaration:__ @CURLOPT_DOH_SSL_VERIFYPEER@

    __defined at:__ @curl\/curl.h:2184:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_DOH_SSL_VERIFYPEER :: CURLoption
pattern CURLOPT_DOH_SSL_VERIFYPEER = CURLoption 306

{-| __C declaration:__ @CURLOPT_DOH_SSL_VERIFYHOST@

    __defined at:__ @curl\/curl.h:2187:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_DOH_SSL_VERIFYHOST :: CURLoption
pattern CURLOPT_DOH_SSL_VERIFYHOST = CURLoption 307

{-| __C declaration:__ @CURLOPT_DOH_SSL_VERIFYSTATUS@

    __defined at:__ @curl\/curl.h:2190:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_DOH_SSL_VERIFYSTATUS :: CURLoption
pattern CURLOPT_DOH_SSL_VERIFYSTATUS = CURLoption 308

{-| __C declaration:__ @CURLOPT_CAINFO_BLOB@

    __defined at:__ @curl\/curl.h:2194:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_CAINFO_BLOB :: CURLoption
pattern CURLOPT_CAINFO_BLOB = CURLoption 40309

{-| __C declaration:__ @CURLOPT_PROXY_CAINFO_BLOB@

    __defined at:__ @curl\/curl.h:2198:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROXY_CAINFO_BLOB :: CURLoption
pattern CURLOPT_PROXY_CAINFO_BLOB = CURLoption 40310

{-| __C declaration:__ @CURLOPT_SSH_HOST_PUBLIC_KEY_SHA256@

    __defined at:__ @curl\/curl.h:2201:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSH_HOST_PUBLIC_KEY_SHA256 :: CURLoption
pattern CURLOPT_SSH_HOST_PUBLIC_KEY_SHA256 = CURLoption 10311

{-| __C declaration:__ @CURLOPT_PREREQFUNCTION@

    __defined at:__ @curl\/curl.h:2205:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PREREQFUNCTION :: CURLoption
pattern CURLOPT_PREREQFUNCTION = CURLoption 20312

{-| __C declaration:__ @CURLOPT_PREREQDATA@

    __defined at:__ @curl\/curl.h:2208:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PREREQDATA :: CURLoption
pattern CURLOPT_PREREQDATA = CURLoption 10313

{-| __C declaration:__ @CURLOPT_MAXLIFETIME_CONN@

    __defined at:__ @curl\/curl.h:2212:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_MAXLIFETIME_CONN :: CURLoption
pattern CURLOPT_MAXLIFETIME_CONN = CURLoption 314

{-| __C declaration:__ @CURLOPT_MIME_OPTIONS@

    __defined at:__ @curl\/curl.h:2215:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_MIME_OPTIONS :: CURLoption
pattern CURLOPT_MIME_OPTIONS = CURLoption 315

{-| __C declaration:__ @CURLOPT_SSH_HOSTKEYFUNCTION@

    __defined at:__ @curl\/curl.h:2219:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSH_HOSTKEYFUNCTION :: CURLoption
pattern CURLOPT_SSH_HOSTKEYFUNCTION = CURLoption 20316

{-| __C declaration:__ @CURLOPT_SSH_HOSTKEYDATA@

    __defined at:__ @curl\/curl.h:2222:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSH_HOSTKEYDATA :: CURLoption
pattern CURLOPT_SSH_HOSTKEYDATA = CURLoption 10317

{-| __C declaration:__ @CURLOPT_PROTOCOLS_STR@

    __defined at:__ @curl\/curl.h:2228:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_PROTOCOLS_STR :: CURLoption
pattern CURLOPT_PROTOCOLS_STR = CURLoption 10318

{-| __C declaration:__ @CURLOPT_REDIR_PROTOCOLS_STR@

    __defined at:__ @curl\/curl.h:2231:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_REDIR_PROTOCOLS_STR :: CURLoption
pattern CURLOPT_REDIR_PROTOCOLS_STR = CURLoption 10319

{-| __C declaration:__ @CURLOPT_WS_OPTIONS@

    __defined at:__ @curl\/curl.h:2234:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_WS_OPTIONS :: CURLoption
pattern CURLOPT_WS_OPTIONS = CURLoption 320

{-| __C declaration:__ @CURLOPT_CA_CACHE_TIMEOUT@

    __defined at:__ @curl\/curl.h:2237:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_CA_CACHE_TIMEOUT :: CURLoption
pattern CURLOPT_CA_CACHE_TIMEOUT = CURLoption 321

{-| __C declaration:__ @CURLOPT_QUICK_EXIT@

    __defined at:__ @curl\/curl.h:2240:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_QUICK_EXIT :: CURLoption
pattern CURLOPT_QUICK_EXIT = CURLoption 322

{-| __C declaration:__ @CURLOPT_HAPROXY_CLIENT_IP@

    __defined at:__ @curl\/curl.h:2243:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_HAPROXY_CLIENT_IP :: CURLoption
pattern CURLOPT_HAPROXY_CLIENT_IP = CURLoption 10323

{-| __C declaration:__ @CURLOPT_SERVER_RESPONSE_TIMEOUT_MS@

    __defined at:__ @curl\/curl.h:2246:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SERVER_RESPONSE_TIMEOUT_MS :: CURLoption
pattern CURLOPT_SERVER_RESPONSE_TIMEOUT_MS = CURLoption 324

{-| __C declaration:__ @CURLOPT_ECH@

    __defined at:__ @curl\/curl.h:2249:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_ECH :: CURLoption
pattern CURLOPT_ECH = CURLoption 10325

{-| __C declaration:__ @CURLOPT_TCP_KEEPCNT@

    __defined at:__ @curl\/curl.h:2252:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_TCP_KEEPCNT :: CURLoption
pattern CURLOPT_TCP_KEEPCNT = CURLoption 326

{-| __C declaration:__ @CURLOPT_UPLOAD_FLAGS@

    __defined at:__ @curl\/curl.h:2254:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_UPLOAD_FLAGS :: CURLoption
pattern CURLOPT_UPLOAD_FLAGS = CURLoption 327

{-| __C declaration:__ @CURLOPT_SSL_SIGNATURE_ALGORITHMS@

    __defined at:__ @curl\/curl.h:2257:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_SSL_SIGNATURE_ALGORITHMS :: CURLoption
pattern CURLOPT_SSL_SIGNATURE_ALGORITHMS = CURLoption 10328

{-| __C declaration:__ @CURLOPT_LASTENTRY@

    __defined at:__ @curl\/curl.h:2259:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLOPT_LASTENTRY :: CURLoption
pattern CURLOPT_LASTENTRY = CURLoption 10329

{-| __C declaration:__ @sa_family_t@

    __defined at:__ @bits\/sockaddr.h:28:28@

    __exported by:__ @curl\/curl.h@
-}
newtype Sa_family_t = Sa_family_t
  { un_Sa_family_t :: FC.CUShort
  }
  deriving stock (Eq, Ord, Read, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType, Bits.Bits, Bounded, Enum, FiniteBits, Integral, Ix.Ix, Num, Real)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Sa_family_t) "un_Sa_family_t")
         ) => GHC.Records.HasField "un_Sa_family_t" (Ptr.Ptr Sa_family_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Sa_family_t")

instance HsBindgen.Runtime.HasCField.HasCField Sa_family_t "un_Sa_family_t" where

  type CFieldType Sa_family_t "un_Sa_family_t" =
    FC.CUShort

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @sockaddr@

    __defined at:__ @bits\/socket.h:184:39@

    __exported by:__ @curl\/curl.h@
-}
data Sockaddr = Sockaddr
  { sockaddr_sa_family :: Sa_family_t
    {- ^ __C declaration:__ @sa_family@

         __defined at:__ @bits\/socket.h:186:5@

         __exported by:__ @curl\/curl.h@
    -}
  , sockaddr_sa_data :: (HsBindgen.Runtime.ConstantArray.ConstantArray 14) FC.CChar
    {- ^ __C declaration:__ @sa_data@

         __defined at:__ @bits\/socket.h:187:10@

         __exported by:__ @curl\/curl.h@
    -}
  }
  deriving stock (Eq, Show)

instance F.Storable Sockaddr where

  sizeOf = \_ -> (16 :: Int)

  alignment = \_ -> (2 :: Int)

  peek =
    \ptr0 ->
          pure Sockaddr
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"sockaddr_sa_family") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"sockaddr_sa_data") ptr0

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Sockaddr sockaddr_sa_family2 sockaddr_sa_data3 ->
               HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"sockaddr_sa_family") ptr0 sockaddr_sa_family2
            >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"sockaddr_sa_data") ptr0 sockaddr_sa_data3

instance HsBindgen.Runtime.HasCField.HasCField Sockaddr "sockaddr_sa_family" where

  type CFieldType Sockaddr "sockaddr_sa_family" =
    Sa_family_t

  offset# = \_ -> \_ -> 0

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Sockaddr) "sockaddr_sa_family")
         ) => GHC.Records.HasField "sockaddr_sa_family" (Ptr.Ptr Sockaddr) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"sockaddr_sa_family")

instance HsBindgen.Runtime.HasCField.HasCField Sockaddr "sockaddr_sa_data" where

  type CFieldType Sockaddr "sockaddr_sa_data" =
    (HsBindgen.Runtime.ConstantArray.ConstantArray 14) FC.CChar

  offset# = \_ -> \_ -> 2

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Sockaddr) "sockaddr_sa_data")
         ) => GHC.Records.HasField "sockaddr_sa_data" (Ptr.Ptr Sockaddr) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"sockaddr_sa_data")

{-| __C declaration:__ @curl_socket_t@

    __defined at:__ @curl\/curl.h:142:13@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_socket_t = Curl_socket_t
  { un_Curl_socket_t :: FC.CInt
  }
  deriving stock (Eq, Ord, Read, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType, Bits.Bits, Bounded, Enum, FiniteBits, Integral, Ix.Ix, Num, Real)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_socket_t) "un_Curl_socket_t")
         ) => GHC.Records.HasField "un_Curl_socket_t" (Ptr.Ptr Curl_socket_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_socket_t")

instance HsBindgen.Runtime.HasCField.HasCField Curl_socket_t "un_Curl_socket_t" where

  type CFieldType Curl_socket_t "un_Curl_socket_t" =
    FC.CInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @CURL_SOCKET_BAD@

    __defined at:__ @curl\/curl.h:143:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SOCKET_BAD :: FC.CInt
cURL_SOCKET_BAD = C.negate (1 :: FC.CInt)

{-| __C declaration:__ @curl_sslbackend@

    __defined at:__ @curl\/curl.h:149:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_sslbackend = Curl_sslbackend
  { un_Curl_sslbackend :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable Curl_sslbackend where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Curl_sslbackend
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_sslbackend un_Curl_sslbackend2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_Curl_sslbackend2

instance HsBindgen.Runtime.CEnum.CEnum Curl_sslbackend where

  type CEnumZ Curl_sslbackend = FC.CUInt

  toCEnum = Curl_sslbackend

  fromCEnum = un_Curl_sslbackend

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLSSLBACKEND_NONE")
                                                     , (1, Data.List.NonEmpty.singleton "CURLSSLBACKEND_OPENSSL")
                                                     , (2, Data.List.NonEmpty.singleton "CURLSSLBACKEND_GNUTLS")
                                                     , (3, Data.List.NonEmpty.singleton "CURLSSLBACKEND_NSS")
                                                     , (4, Data.List.NonEmpty.singleton "CURLSSLBACKEND_OBSOLETE4")
                                                     , (5, Data.List.NonEmpty.singleton "CURLSSLBACKEND_GSKIT")
                                                     , (6, Data.List.NonEmpty.singleton "CURLSSLBACKEND_POLARSSL")
                                                     , (7, Data.List.NonEmpty.singleton "CURLSSLBACKEND_WOLFSSL")
                                                     , (8, Data.List.NonEmpty.singleton "CURLSSLBACKEND_SCHANNEL")
                                                     , (9, Data.List.NonEmpty.singleton "CURLSSLBACKEND_SECURETRANSPORT")
                                                     , (10, Data.List.NonEmpty.singleton "CURLSSLBACKEND_AXTLS")
                                                     , (11, Data.List.NonEmpty.singleton "CURLSSLBACKEND_MBEDTLS")
                                                     , (12, Data.List.NonEmpty.singleton "CURLSSLBACKEND_MESALINK")
                                                     , (13, Data.List.NonEmpty.singleton "CURLSSLBACKEND_BEARSSL")
                                                     , (14, Data.List.NonEmpty.singleton "CURLSSLBACKEND_RUSTLS")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "Curl_sslbackend"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "Curl_sslbackend"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum Curl_sslbackend where

  minDeclaredValue = CURLSSLBACKEND_NONE

  maxDeclaredValue = CURLSSLBACKEND_RUSTLS

instance Show Curl_sslbackend where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read Curl_sslbackend where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLSSLBACKEND_NONE@

    __defined at:__ @curl\/curl.h:150:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSSLBACKEND_NONE :: Curl_sslbackend
pattern CURLSSLBACKEND_NONE = Curl_sslbackend 0

{-| __C declaration:__ @CURLSSLBACKEND_OPENSSL@

    __defined at:__ @curl\/curl.h:151:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSSLBACKEND_OPENSSL :: Curl_sslbackend
pattern CURLSSLBACKEND_OPENSSL = Curl_sslbackend 1

{-| __C declaration:__ @CURLSSLBACKEND_GNUTLS@

    __defined at:__ @curl\/curl.h:152:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSSLBACKEND_GNUTLS :: Curl_sslbackend
pattern CURLSSLBACKEND_GNUTLS = Curl_sslbackend 2

{-| __C declaration:__ @CURLSSLBACKEND_NSS@

    __defined at:__ @curl\/curl.h:153:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSSLBACKEND_NSS :: Curl_sslbackend
pattern CURLSSLBACKEND_NSS = Curl_sslbackend 3

{-| __C declaration:__ @CURLSSLBACKEND_OBSOLETE4@

    __defined at:__ @curl\/curl.h:154:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSSLBACKEND_OBSOLETE4 :: Curl_sslbackend
pattern CURLSSLBACKEND_OBSOLETE4 = Curl_sslbackend 4

{-| __C declaration:__ @CURLSSLBACKEND_GSKIT@

    __defined at:__ @curl\/curl.h:155:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSSLBACKEND_GSKIT :: Curl_sslbackend
pattern CURLSSLBACKEND_GSKIT = Curl_sslbackend 5

{-| __C declaration:__ @CURLSSLBACKEND_POLARSSL@

    __defined at:__ @curl\/curl.h:156:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSSLBACKEND_POLARSSL :: Curl_sslbackend
pattern CURLSSLBACKEND_POLARSSL = Curl_sslbackend 6

{-| __C declaration:__ @CURLSSLBACKEND_WOLFSSL@

    __defined at:__ @curl\/curl.h:157:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSSLBACKEND_WOLFSSL :: Curl_sslbackend
pattern CURLSSLBACKEND_WOLFSSL = Curl_sslbackend 7

{-| __C declaration:__ @CURLSSLBACKEND_SCHANNEL@

    __defined at:__ @curl\/curl.h:158:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSSLBACKEND_SCHANNEL :: Curl_sslbackend
pattern CURLSSLBACKEND_SCHANNEL = Curl_sslbackend 8

{-| __C declaration:__ @CURLSSLBACKEND_SECURETRANSPORT@

    __defined at:__ @curl\/curl.h:159:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSSLBACKEND_SECURETRANSPORT :: Curl_sslbackend
pattern CURLSSLBACKEND_SECURETRANSPORT = Curl_sslbackend 9

{-| __C declaration:__ @CURLSSLBACKEND_AXTLS@

    __defined at:__ @curl\/curl.h:160:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSSLBACKEND_AXTLS :: Curl_sslbackend
pattern CURLSSLBACKEND_AXTLS = Curl_sslbackend 10

{-| __C declaration:__ @CURLSSLBACKEND_MBEDTLS@

    __defined at:__ @curl\/curl.h:161:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSSLBACKEND_MBEDTLS :: Curl_sslbackend
pattern CURLSSLBACKEND_MBEDTLS = Curl_sslbackend 11

{-| __C declaration:__ @CURLSSLBACKEND_MESALINK@

    __defined at:__ @curl\/curl.h:162:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSSLBACKEND_MESALINK :: Curl_sslbackend
pattern CURLSSLBACKEND_MESALINK = Curl_sslbackend 12

{-| __C declaration:__ @CURLSSLBACKEND_BEARSSL@

    __defined at:__ @curl\/curl.h:163:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSSLBACKEND_BEARSSL :: Curl_sslbackend
pattern CURLSSLBACKEND_BEARSSL = Curl_sslbackend 13

{-| __C declaration:__ @CURLSSLBACKEND_RUSTLS@

    __defined at:__ @curl\/curl.h:164:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSSLBACKEND_RUSTLS :: Curl_sslbackend
pattern CURLSSLBACKEND_RUSTLS = Curl_sslbackend 14

{-| __C declaration:__ @CURLFOLLOW_ALL@

    __defined at:__ @curl\/curl.h:177:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFOLLOW_ALL :: FC.CLong
cURLFOLLOW_ALL = (1 :: FC.CLong)

{-| __C declaration:__ @CURLFOLLOW_OBEYCODE@

    __defined at:__ @curl\/curl.h:181:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFOLLOW_OBEYCODE :: FC.CLong
cURLFOLLOW_OBEYCODE = (2 :: FC.CLong)

{-| __C declaration:__ @CURLFOLLOW_FIRSTONLY@

    __defined at:__ @curl\/curl.h:184:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFOLLOW_FIRSTONLY :: FC.CLong
cURLFOLLOW_FIRSTONLY = (3 :: FC.CLong)

{-| __C declaration:__ @curl_httppost@

    __defined at:__ @curl\/curl.h:186:8@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
data Curl_httppost = Curl_httppost
  { curl_httppost_next :: Ptr.Ptr Curl_httppost
    {- ^ __C declaration:__ @next@

         __defined at:__ @curl\/curl.h:187:25@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_httppost_name :: Ptr.Ptr FC.CChar
    {- ^ __C declaration:__ @name@

         __defined at:__ @curl\/curl.h:188:9@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_httppost_namelength :: FC.CLong
    {- ^ __C declaration:__ @namelength@

         __defined at:__ @curl\/curl.h:189:8@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_httppost_contents :: Ptr.Ptr FC.CChar
    {- ^ __C declaration:__ @contents@

         __defined at:__ @curl\/curl.h:190:9@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_httppost_contentslength :: FC.CLong
    {- ^ __C declaration:__ @contentslength@

         __defined at:__ @curl\/curl.h:191:8@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_httppost_buffer :: Ptr.Ptr FC.CChar
    {- ^ __C declaration:__ @buffer@

         __defined at:__ @curl\/curl.h:193:9@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_httppost_bufferlength :: FC.CLong
    {- ^ __C declaration:__ @bufferlength@

         __defined at:__ @curl\/curl.h:194:8@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_httppost_contenttype :: Ptr.Ptr FC.CChar
    {- ^ __C declaration:__ @contenttype@

         __defined at:__ @curl\/curl.h:195:9@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_httppost_contentheader :: Ptr.Ptr Curl_slist
    {- ^ __C declaration:__ @contentheader@

         __defined at:__ @curl\/curl.h:196:22@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_httppost_more :: Ptr.Ptr Curl_httppost
    {- ^ __C declaration:__ @more@

         __defined at:__ @curl\/curl.h:197:25@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_httppost_flags :: FC.CLong
    {- ^ __C declaration:__ @flags@

         __defined at:__ @curl\/curl.h:200:8@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_httppost_showfilename :: Ptr.Ptr FC.CChar
    {- ^ __C declaration:__ @showfilename@

         __defined at:__ @curl\/curl.h:220:9@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_httppost_userp :: Ptr.Ptr Void
    {- ^ __C declaration:__ @userp@

         __defined at:__ @curl\/curl.h:223:9@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_httppost_contentlen :: Curl_off_t
    {- ^ __C declaration:__ @contentlen@

         __defined at:__ @curl\/curl.h:225:14@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  }
  deriving stock (Eq, Show)

instance F.Storable Curl_httppost where

  sizeOf = \_ -> (112 :: Int)

  alignment = \_ -> (8 :: Int)

  peek =
    \ptr0 ->
          pure Curl_httppost
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_httppost_next") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_httppost_name") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_httppost_namelength") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_httppost_contents") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_httppost_contentslength") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_httppost_buffer") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_httppost_bufferlength") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_httppost_contenttype") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_httppost_contentheader") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_httppost_more") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_httppost_flags") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_httppost_showfilename") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_httppost_userp") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_httppost_contentlen") ptr0

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_httppost
            curl_httppost_next2
            curl_httppost_name3
            curl_httppost_namelength4
            curl_httppost_contents5
            curl_httppost_contentslength6
            curl_httppost_buffer7
            curl_httppost_bufferlength8
            curl_httppost_contenttype9
            curl_httppost_contentheader10
            curl_httppost_more11
            curl_httppost_flags12
            curl_httppost_showfilename13
            curl_httppost_userp14
            curl_httppost_contentlen15 ->
                 HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_httppost_next") ptr0 curl_httppost_next2
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_httppost_name") ptr0 curl_httppost_name3
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_httppost_namelength") ptr0 curl_httppost_namelength4
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_httppost_contents") ptr0 curl_httppost_contents5
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_httppost_contentslength") ptr0 curl_httppost_contentslength6
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_httppost_buffer") ptr0 curl_httppost_buffer7
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_httppost_bufferlength") ptr0 curl_httppost_bufferlength8
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_httppost_contenttype") ptr0 curl_httppost_contenttype9
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_httppost_contentheader") ptr0 curl_httppost_contentheader10
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_httppost_more") ptr0 curl_httppost_more11
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_httppost_flags") ptr0 curl_httppost_flags12
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_httppost_showfilename") ptr0 curl_httppost_showfilename13
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_httppost_userp") ptr0 curl_httppost_userp14
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_httppost_contentlen") ptr0 curl_httppost_contentlen15

instance HsBindgen.Runtime.HasCField.HasCField Curl_httppost "curl_httppost_next" where

  type CFieldType Curl_httppost "curl_httppost_next" =
    Ptr.Ptr Curl_httppost

  offset# = \_ -> \_ -> 0

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_httppost) "curl_httppost_next")
         ) => GHC.Records.HasField "curl_httppost_next" (Ptr.Ptr Curl_httppost) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_httppost_next")

instance HsBindgen.Runtime.HasCField.HasCField Curl_httppost "curl_httppost_name" where

  type CFieldType Curl_httppost "curl_httppost_name" =
    Ptr.Ptr FC.CChar

  offset# = \_ -> \_ -> 8

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_httppost) "curl_httppost_name")
         ) => GHC.Records.HasField "curl_httppost_name" (Ptr.Ptr Curl_httppost) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_httppost_name")

instance HsBindgen.Runtime.HasCField.HasCField Curl_httppost "curl_httppost_namelength" where

  type CFieldType Curl_httppost "curl_httppost_namelength" =
    FC.CLong

  offset# = \_ -> \_ -> 16

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_httppost) "curl_httppost_namelength")
         ) => GHC.Records.HasField "curl_httppost_namelength" (Ptr.Ptr Curl_httppost) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_httppost_namelength")

instance HsBindgen.Runtime.HasCField.HasCField Curl_httppost "curl_httppost_contents" where

  type CFieldType Curl_httppost "curl_httppost_contents" =
    Ptr.Ptr FC.CChar

  offset# = \_ -> \_ -> 24

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_httppost) "curl_httppost_contents")
         ) => GHC.Records.HasField "curl_httppost_contents" (Ptr.Ptr Curl_httppost) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_httppost_contents")

instance HsBindgen.Runtime.HasCField.HasCField Curl_httppost "curl_httppost_contentslength" where

  type CFieldType Curl_httppost "curl_httppost_contentslength" =
    FC.CLong

  offset# = \_ -> \_ -> 32

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_httppost) "curl_httppost_contentslength")
         ) => GHC.Records.HasField "curl_httppost_contentslength" (Ptr.Ptr Curl_httppost) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_httppost_contentslength")

instance HsBindgen.Runtime.HasCField.HasCField Curl_httppost "curl_httppost_buffer" where

  type CFieldType Curl_httppost "curl_httppost_buffer" =
    Ptr.Ptr FC.CChar

  offset# = \_ -> \_ -> 40

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_httppost) "curl_httppost_buffer")
         ) => GHC.Records.HasField "curl_httppost_buffer" (Ptr.Ptr Curl_httppost) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_httppost_buffer")

instance HsBindgen.Runtime.HasCField.HasCField Curl_httppost "curl_httppost_bufferlength" where

  type CFieldType Curl_httppost "curl_httppost_bufferlength" =
    FC.CLong

  offset# = \_ -> \_ -> 48

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_httppost) "curl_httppost_bufferlength")
         ) => GHC.Records.HasField "curl_httppost_bufferlength" (Ptr.Ptr Curl_httppost) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_httppost_bufferlength")

instance HsBindgen.Runtime.HasCField.HasCField Curl_httppost "curl_httppost_contenttype" where

  type CFieldType Curl_httppost "curl_httppost_contenttype" =
    Ptr.Ptr FC.CChar

  offset# = \_ -> \_ -> 56

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_httppost) "curl_httppost_contenttype")
         ) => GHC.Records.HasField "curl_httppost_contenttype" (Ptr.Ptr Curl_httppost) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_httppost_contenttype")

instance HsBindgen.Runtime.HasCField.HasCField Curl_httppost "curl_httppost_contentheader" where

  type CFieldType Curl_httppost "curl_httppost_contentheader" =
    Ptr.Ptr Curl_slist

  offset# = \_ -> \_ -> 64

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_httppost) "curl_httppost_contentheader")
         ) => GHC.Records.HasField "curl_httppost_contentheader" (Ptr.Ptr Curl_httppost) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_httppost_contentheader")

instance HsBindgen.Runtime.HasCField.HasCField Curl_httppost "curl_httppost_more" where

  type CFieldType Curl_httppost "curl_httppost_more" =
    Ptr.Ptr Curl_httppost

  offset# = \_ -> \_ -> 72

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_httppost) "curl_httppost_more")
         ) => GHC.Records.HasField "curl_httppost_more" (Ptr.Ptr Curl_httppost) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_httppost_more")

instance HsBindgen.Runtime.HasCField.HasCField Curl_httppost "curl_httppost_flags" where

  type CFieldType Curl_httppost "curl_httppost_flags" =
    FC.CLong

  offset# = \_ -> \_ -> 80

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_httppost) "curl_httppost_flags")
         ) => GHC.Records.HasField "curl_httppost_flags" (Ptr.Ptr Curl_httppost) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_httppost_flags")

instance HsBindgen.Runtime.HasCField.HasCField Curl_httppost "curl_httppost_showfilename" where

  type CFieldType Curl_httppost "curl_httppost_showfilename" =
    Ptr.Ptr FC.CChar

  offset# = \_ -> \_ -> 88

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_httppost) "curl_httppost_showfilename")
         ) => GHC.Records.HasField "curl_httppost_showfilename" (Ptr.Ptr Curl_httppost) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_httppost_showfilename")

instance HsBindgen.Runtime.HasCField.HasCField Curl_httppost "curl_httppost_userp" where

  type CFieldType Curl_httppost "curl_httppost_userp" =
    Ptr.Ptr Void

  offset# = \_ -> \_ -> 96

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_httppost) "curl_httppost_userp")
         ) => GHC.Records.HasField "curl_httppost_userp" (Ptr.Ptr Curl_httppost) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_httppost_userp")

instance HsBindgen.Runtime.HasCField.HasCField Curl_httppost "curl_httppost_contentlen" where

  type CFieldType Curl_httppost "curl_httppost_contentlen" =
    Curl_off_t

  offset# = \_ -> \_ -> 104

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_httppost) "curl_httppost_contentlen")
         ) => GHC.Records.HasField "curl_httppost_contentlen" (Ptr.Ptr Curl_httppost) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_httppost_contentlen")

{-| __C declaration:__ @CURL_HTTPPOST_FILENAME@

    __defined at:__ @curl\/curl.h:203:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_HTTPPOST_FILENAME :: FC.CInt
cURL_HTTPPOST_FILENAME =
  (C.<<) (1 :: FC.CInt) (0 :: FC.CInt)

{-| __C declaration:__ @CURL_HTTPPOST_READFILE@

    __defined at:__ @curl\/curl.h:205:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_HTTPPOST_READFILE :: FC.CInt
cURL_HTTPPOST_READFILE =
  (C.<<) (1 :: FC.CInt) (1 :: FC.CInt)

{-| __C declaration:__ @CURL_HTTPPOST_PTRNAME@

    __defined at:__ @curl\/curl.h:207:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_HTTPPOST_PTRNAME :: FC.CInt
cURL_HTTPPOST_PTRNAME =
  (C.<<) (1 :: FC.CInt) (2 :: FC.CInt)

{-| __C declaration:__ @CURL_HTTPPOST_PTRCONTENTS@

    __defined at:__ @curl\/curl.h:209:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_HTTPPOST_PTRCONTENTS :: FC.CInt
cURL_HTTPPOST_PTRCONTENTS =
  (C.<<) (1 :: FC.CInt) (3 :: FC.CInt)

{-| __C declaration:__ @CURL_HTTPPOST_BUFFER@

    __defined at:__ @curl\/curl.h:211:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_HTTPPOST_BUFFER :: FC.CInt
cURL_HTTPPOST_BUFFER =
  (C.<<) (1 :: FC.CInt) (4 :: FC.CInt)

{-| __C declaration:__ @CURL_HTTPPOST_PTRBUFFER@

    __defined at:__ @curl\/curl.h:213:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_HTTPPOST_PTRBUFFER :: FC.CInt
cURL_HTTPPOST_PTRBUFFER =
  (C.<<) (1 :: FC.CInt) (5 :: FC.CInt)

{-| __C declaration:__ @CURL_HTTPPOST_CALLBACK@

    __defined at:__ @curl\/curl.h:216:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_HTTPPOST_CALLBACK :: FC.CInt
cURL_HTTPPOST_CALLBACK =
  (C.<<) (1 :: FC.CInt) (6 :: FC.CInt)

{-| __C declaration:__ @CURL_HTTPPOST_LARGE@

    __defined at:__ @curl\/curl.h:218:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_HTTPPOST_LARGE :: FC.CInt
cURL_HTTPPOST_LARGE =
  (C.<<) (1 :: FC.CInt) (7 :: FC.CInt)

{-| __C declaration:__ @CURL_PROGRESSFUNC_CONTINUE@

    __defined at:__ @curl\/curl.h:233:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_PROGRESSFUNC_CONTINUE :: FC.CInt
cURL_PROGRESSFUNC_CONTINUE = (268435457 :: FC.CInt)

{-| Auxiliary type used by 'Curl_progress_callback'

__defined at:__ @curl\/curl.h:237:15@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_progress_callback_Deref = Curl_progress_callback_Deref
  { un_Curl_progress_callback_Deref :: (Ptr.Ptr Void) -> FC.CDouble -> FC.CDouble -> FC.CDouble -> FC.CDouble -> IO FC.CInt
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_progress_callback_Deref ::
     Curl_progress_callback_Deref
  -> IO (Ptr.FunPtr Curl_progress_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_progress_callback_Deref ::
     Ptr.FunPtr Curl_progress_callback_Deref
  -> Curl_progress_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_progress_callback_Deref where

  toFunPtr = toCurl_progress_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_progress_callback_Deref where

  fromFunPtr = fromCurl_progress_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_progress_callback_Deref) "un_Curl_progress_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_progress_callback_Deref" (Ptr.Ptr Curl_progress_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_progress_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_progress_callback_Deref "un_Curl_progress_callback_Deref" where

  type CFieldType Curl_progress_callback_Deref "un_Curl_progress_callback_Deref" =
    (Ptr.Ptr Void) -> FC.CDouble -> FC.CDouble -> FC.CDouble -> FC.CDouble -> IO FC.CInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_progress_callback@

    __defined at:__ @curl\/curl.h:237:15@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_progress_callback = Curl_progress_callback
  { un_Curl_progress_callback :: Ptr.FunPtr Curl_progress_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_progress_callback) "un_Curl_progress_callback")
         ) => GHC.Records.HasField "un_Curl_progress_callback" (Ptr.Ptr Curl_progress_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_progress_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_progress_callback "un_Curl_progress_callback" where

  type CFieldType Curl_progress_callback "un_Curl_progress_callback" =
    Ptr.FunPtr Curl_progress_callback_Deref

  offset# = \_ -> \_ -> 0

{-| Auxiliary type used by 'Curl_xferinfo_callback'

__defined at:__ @curl\/curl.h:246:15@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_xferinfo_callback_Deref = Curl_xferinfo_callback_Deref
  { un_Curl_xferinfo_callback_Deref :: (Ptr.Ptr Void) -> Curl_off_t -> Curl_off_t -> Curl_off_t -> Curl_off_t -> IO FC.CInt
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_xferinfo_callback_Deref ::
     Curl_xferinfo_callback_Deref
  -> IO (Ptr.FunPtr Curl_xferinfo_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_xferinfo_callback_Deref ::
     Ptr.FunPtr Curl_xferinfo_callback_Deref
  -> Curl_xferinfo_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_xferinfo_callback_Deref where

  toFunPtr = toCurl_xferinfo_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_xferinfo_callback_Deref where

  fromFunPtr = fromCurl_xferinfo_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_xferinfo_callback_Deref) "un_Curl_xferinfo_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_xferinfo_callback_Deref" (Ptr.Ptr Curl_xferinfo_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_xferinfo_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_xferinfo_callback_Deref "un_Curl_xferinfo_callback_Deref" where

  type CFieldType Curl_xferinfo_callback_Deref "un_Curl_xferinfo_callback_Deref" =
    (Ptr.Ptr Void) -> Curl_off_t -> Curl_off_t -> Curl_off_t -> Curl_off_t -> IO FC.CInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_xferinfo_callback@

    __defined at:__ @curl\/curl.h:246:15@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_xferinfo_callback = Curl_xferinfo_callback
  { un_Curl_xferinfo_callback :: Ptr.FunPtr Curl_xferinfo_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_xferinfo_callback) "un_Curl_xferinfo_callback")
         ) => GHC.Records.HasField "un_Curl_xferinfo_callback" (Ptr.Ptr Curl_xferinfo_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_xferinfo_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_xferinfo_callback "un_Curl_xferinfo_callback" where

  type CFieldType Curl_xferinfo_callback "un_Curl_xferinfo_callback" =
    Ptr.FunPtr Curl_xferinfo_callback_Deref

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @CURL_MAX_READ_SIZE@

    __defined at:__ @curl\/curl.h:254:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_MAX_READ_SIZE :: FC.CInt
cURL_MAX_READ_SIZE =
  (C.*) ((C.*) (10 :: FC.CInt) (1024 :: FC.CInt)) (1024 :: FC.CInt)

{-| __C declaration:__ @CURL_MAX_WRITE_SIZE@

    __defined at:__ @curl\/curl.h:264:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_MAX_WRITE_SIZE :: FC.CInt
cURL_MAX_WRITE_SIZE = (16384 :: FC.CInt)

{-| __C declaration:__ @CURL_MAX_HTTP_HEADER@

    __defined at:__ @curl\/curl.h:271:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_MAX_HTTP_HEADER :: FC.CInt
cURL_MAX_HTTP_HEADER =
  (C.*) (100 :: FC.CInt) (1024 :: FC.CInt)

{-| __C declaration:__ @CURL_WRITEFUNC_PAUSE@

    __defined at:__ @curl\/curl.h:276:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_WRITEFUNC_PAUSE :: FC.CInt
cURL_WRITEFUNC_PAUSE = (268435457 :: FC.CInt)

{-| __C declaration:__ @CURL_WRITEFUNC_ERROR@

    __defined at:__ @curl\/curl.h:280:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_WRITEFUNC_ERROR :: FC.CInt
cURL_WRITEFUNC_ERROR = (4294967295 :: FC.CInt)

{-| Auxiliary type used by 'Curl_write_callback'

__defined at:__ @curl\/curl.h:282:18@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_write_callback_Deref = Curl_write_callback_Deref
  { un_Curl_write_callback_Deref :: (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr Void) -> IO HsBindgen.Runtime.Prelude.CSize
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_write_callback_Deref ::
     Curl_write_callback_Deref
  -> IO (Ptr.FunPtr Curl_write_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_write_callback_Deref ::
     Ptr.FunPtr Curl_write_callback_Deref
  -> Curl_write_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_write_callback_Deref where

  toFunPtr = toCurl_write_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_write_callback_Deref where

  fromFunPtr = fromCurl_write_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_write_callback_Deref) "un_Curl_write_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_write_callback_Deref" (Ptr.Ptr Curl_write_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_write_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_write_callback_Deref "un_Curl_write_callback_Deref" where

  type CFieldType Curl_write_callback_Deref "un_Curl_write_callback_Deref" =
    (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr Void) -> IO HsBindgen.Runtime.Prelude.CSize

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_write_callback@

    __defined at:__ @curl\/curl.h:282:18@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_write_callback = Curl_write_callback
  { un_Curl_write_callback :: Ptr.FunPtr Curl_write_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_write_callback) "un_Curl_write_callback")
         ) => GHC.Records.HasField "un_Curl_write_callback" (Ptr.Ptr Curl_write_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_write_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_write_callback "un_Curl_write_callback" where

  type CFieldType Curl_write_callback "un_Curl_write_callback" =
    Ptr.FunPtr Curl_write_callback_Deref

  offset# = \_ -> \_ -> 0

{-| Auxiliary type used by 'Curl_resolver_start_callback'

__defined at:__ @curl\/curl.h:288:15@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_resolver_start_callback_Deref = Curl_resolver_start_callback_Deref
  { un_Curl_resolver_start_callback_Deref :: (Ptr.Ptr Void) -> (Ptr.Ptr Void) -> (Ptr.Ptr Void) -> IO FC.CInt
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_resolver_start_callback_Deref ::
     Curl_resolver_start_callback_Deref
  -> IO (Ptr.FunPtr Curl_resolver_start_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_resolver_start_callback_Deref ::
     Ptr.FunPtr Curl_resolver_start_callback_Deref
  -> Curl_resolver_start_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_resolver_start_callback_Deref where

  toFunPtr = toCurl_resolver_start_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_resolver_start_callback_Deref where

  fromFunPtr = fromCurl_resolver_start_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_resolver_start_callback_Deref) "un_Curl_resolver_start_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_resolver_start_callback_Deref" (Ptr.Ptr Curl_resolver_start_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_resolver_start_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_resolver_start_callback_Deref "un_Curl_resolver_start_callback_Deref" where

  type CFieldType Curl_resolver_start_callback_Deref "un_Curl_resolver_start_callback_Deref" =
    (Ptr.Ptr Void) -> (Ptr.Ptr Void) -> (Ptr.Ptr Void) -> IO FC.CInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_resolver_start_callback@

    __defined at:__ @curl\/curl.h:288:15@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_resolver_start_callback = Curl_resolver_start_callback
  { un_Curl_resolver_start_callback :: Ptr.FunPtr Curl_resolver_start_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_resolver_start_callback) "un_Curl_resolver_start_callback")
         ) => GHC.Records.HasField "un_Curl_resolver_start_callback" (Ptr.Ptr Curl_resolver_start_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_resolver_start_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_resolver_start_callback "un_Curl_resolver_start_callback" where

  type CFieldType Curl_resolver_start_callback "un_Curl_resolver_start_callback" =
    Ptr.FunPtr Curl_resolver_start_callback_Deref

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curlfiletype@

    __defined at:__ @curl\/curl.h:292:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curlfiletype = Curlfiletype
  { un_Curlfiletype :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable Curlfiletype where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Curlfiletype
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curlfiletype un_Curlfiletype2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_Curlfiletype2

instance HsBindgen.Runtime.CEnum.CEnum Curlfiletype where

  type CEnumZ Curlfiletype = FC.CUInt

  toCEnum = Curlfiletype

  fromCEnum = un_Curlfiletype

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLFILETYPE_FILE")
                                                     , (1, Data.List.NonEmpty.singleton "CURLFILETYPE_DIRECTORY")
                                                     , (2, Data.List.NonEmpty.singleton "CURLFILETYPE_SYMLINK")
                                                     , (3, Data.List.NonEmpty.singleton "CURLFILETYPE_DEVICE_BLOCK")
                                                     , (4, Data.List.NonEmpty.singleton "CURLFILETYPE_DEVICE_CHAR")
                                                     , (5, Data.List.NonEmpty.singleton "CURLFILETYPE_NAMEDPIPE")
                                                     , (6, Data.List.NonEmpty.singleton "CURLFILETYPE_SOCKET")
                                                     , (7, Data.List.NonEmpty.singleton "CURLFILETYPE_DOOR")
                                                     , (8, Data.List.NonEmpty.singleton "CURLFILETYPE_UNKNOWN")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "Curlfiletype"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "Curlfiletype"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum Curlfiletype where

  minDeclaredValue = CURLFILETYPE_FILE

  maxDeclaredValue = CURLFILETYPE_UNKNOWN

instance Show Curlfiletype where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read Curlfiletype where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLFILETYPE_FILE@

    __defined at:__ @curl\/curl.h:293:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFILETYPE_FILE :: Curlfiletype
pattern CURLFILETYPE_FILE = Curlfiletype 0

{-| __C declaration:__ @CURLFILETYPE_DIRECTORY@

    __defined at:__ @curl\/curl.h:294:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFILETYPE_DIRECTORY :: Curlfiletype
pattern CURLFILETYPE_DIRECTORY = Curlfiletype 1

{-| __C declaration:__ @CURLFILETYPE_SYMLINK@

    __defined at:__ @curl\/curl.h:295:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFILETYPE_SYMLINK :: Curlfiletype
pattern CURLFILETYPE_SYMLINK = Curlfiletype 2

{-| __C declaration:__ @CURLFILETYPE_DEVICE_BLOCK@

    __defined at:__ @curl\/curl.h:296:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFILETYPE_DEVICE_BLOCK :: Curlfiletype
pattern CURLFILETYPE_DEVICE_BLOCK = Curlfiletype 3

{-| __C declaration:__ @CURLFILETYPE_DEVICE_CHAR@

    __defined at:__ @curl\/curl.h:297:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFILETYPE_DEVICE_CHAR :: Curlfiletype
pattern CURLFILETYPE_DEVICE_CHAR = Curlfiletype 4

{-| __C declaration:__ @CURLFILETYPE_NAMEDPIPE@

    __defined at:__ @curl\/curl.h:298:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFILETYPE_NAMEDPIPE :: Curlfiletype
pattern CURLFILETYPE_NAMEDPIPE = Curlfiletype 5

{-| __C declaration:__ @CURLFILETYPE_SOCKET@

    __defined at:__ @curl\/curl.h:299:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFILETYPE_SOCKET :: Curlfiletype
pattern CURLFILETYPE_SOCKET = Curlfiletype 6

{-| __C declaration:__ @CURLFILETYPE_DOOR@

    __defined at:__ @curl\/curl.h:300:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFILETYPE_DOOR :: Curlfiletype
pattern CURLFILETYPE_DOOR = Curlfiletype 7

{-| __C declaration:__ @CURLFILETYPE_UNKNOWN@

    __defined at:__ @curl\/curl.h:302:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFILETYPE_UNKNOWN :: Curlfiletype
pattern CURLFILETYPE_UNKNOWN = Curlfiletype 8

{-| __C declaration:__ @CURLFINFOFLAG_KNOWN_FILENAME@

    __defined at:__ @curl\/curl.h:305:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFINFOFLAG_KNOWN_FILENAME :: FC.CInt
cURLFINFOFLAG_KNOWN_FILENAME =
  (C.<<) (1 :: FC.CInt) (0 :: FC.CInt)

{-| __C declaration:__ @CURLFINFOFLAG_KNOWN_FILETYPE@

    __defined at:__ @curl\/curl.h:306:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFINFOFLAG_KNOWN_FILETYPE :: FC.CInt
cURLFINFOFLAG_KNOWN_FILETYPE =
  (C.<<) (1 :: FC.CInt) (1 :: FC.CInt)

{-| __C declaration:__ @CURLFINFOFLAG_KNOWN_TIME@

    __defined at:__ @curl\/curl.h:307:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFINFOFLAG_KNOWN_TIME :: FC.CInt
cURLFINFOFLAG_KNOWN_TIME =
  (C.<<) (1 :: FC.CInt) (2 :: FC.CInt)

{-| __C declaration:__ @CURLFINFOFLAG_KNOWN_PERM@

    __defined at:__ @curl\/curl.h:308:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFINFOFLAG_KNOWN_PERM :: FC.CInt
cURLFINFOFLAG_KNOWN_PERM =
  (C.<<) (1 :: FC.CInt) (3 :: FC.CInt)

{-| __C declaration:__ @CURLFINFOFLAG_KNOWN_UID@

    __defined at:__ @curl\/curl.h:309:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFINFOFLAG_KNOWN_UID :: FC.CInt
cURLFINFOFLAG_KNOWN_UID =
  (C.<<) (1 :: FC.CInt) (4 :: FC.CInt)

{-| __C declaration:__ @CURLFINFOFLAG_KNOWN_GID@

    __defined at:__ @curl\/curl.h:310:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFINFOFLAG_KNOWN_GID :: FC.CInt
cURLFINFOFLAG_KNOWN_GID =
  (C.<<) (1 :: FC.CInt) (5 :: FC.CInt)

{-| __C declaration:__ @CURLFINFOFLAG_KNOWN_SIZE@

    __defined at:__ @curl\/curl.h:311:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFINFOFLAG_KNOWN_SIZE :: FC.CInt
cURLFINFOFLAG_KNOWN_SIZE =
  (C.<<) (1 :: FC.CInt) (6 :: FC.CInt)

{-| __C declaration:__ @CURLFINFOFLAG_KNOWN_HLINKCOUNT@

    __defined at:__ @curl\/curl.h:312:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFINFOFLAG_KNOWN_HLINKCOUNT :: FC.CInt
cURLFINFOFLAG_KNOWN_HLINKCOUNT =
  (C.<<) (1 :: FC.CInt) (7 :: FC.CInt)

{-| __defined at:__ @curl\/curl.h:325:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
data Curl_fileinfo_strings = Curl_fileinfo_strings
  { curl_fileinfo_strings_time :: Ptr.Ptr FC.CChar
    {- ^ __C declaration:__ @time@

         __defined at:__ @curl\/curl.h:327:11@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_fileinfo_strings_perm :: Ptr.Ptr FC.CChar
    {- ^ __C declaration:__ @perm@

         __defined at:__ @curl\/curl.h:328:11@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_fileinfo_strings_user :: Ptr.Ptr FC.CChar
    {- ^ __C declaration:__ @user@

         __defined at:__ @curl\/curl.h:329:11@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_fileinfo_strings_group :: Ptr.Ptr FC.CChar
    {- ^ __C declaration:__ @group@

         __defined at:__ @curl\/curl.h:330:11@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_fileinfo_strings_target :: Ptr.Ptr FC.CChar
    {- ^ __C declaration:__ @target@

         __defined at:__ @curl\/curl.h:331:11@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  }
  deriving stock (Eq, Show)

instance F.Storable Curl_fileinfo_strings where

  sizeOf = \_ -> (40 :: Int)

  alignment = \_ -> (8 :: Int)

  peek =
    \ptr0 ->
          pure Curl_fileinfo_strings
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_fileinfo_strings_time") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_fileinfo_strings_perm") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_fileinfo_strings_user") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_fileinfo_strings_group") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_fileinfo_strings_target") ptr0

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_fileinfo_strings
            curl_fileinfo_strings_time2
            curl_fileinfo_strings_perm3
            curl_fileinfo_strings_user4
            curl_fileinfo_strings_group5
            curl_fileinfo_strings_target6 ->
                 HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_fileinfo_strings_time") ptr0 curl_fileinfo_strings_time2
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_fileinfo_strings_perm") ptr0 curl_fileinfo_strings_perm3
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_fileinfo_strings_user") ptr0 curl_fileinfo_strings_user4
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_fileinfo_strings_group") ptr0 curl_fileinfo_strings_group5
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_fileinfo_strings_target") ptr0 curl_fileinfo_strings_target6

instance HsBindgen.Runtime.HasCField.HasCField Curl_fileinfo_strings "curl_fileinfo_strings_time" where

  type CFieldType Curl_fileinfo_strings "curl_fileinfo_strings_time" =
    Ptr.Ptr FC.CChar

  offset# = \_ -> \_ -> 0

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_fileinfo_strings) "curl_fileinfo_strings_time")
         ) => GHC.Records.HasField "curl_fileinfo_strings_time" (Ptr.Ptr Curl_fileinfo_strings) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_fileinfo_strings_time")

instance HsBindgen.Runtime.HasCField.HasCField Curl_fileinfo_strings "curl_fileinfo_strings_perm" where

  type CFieldType Curl_fileinfo_strings "curl_fileinfo_strings_perm" =
    Ptr.Ptr FC.CChar

  offset# = \_ -> \_ -> 8

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_fileinfo_strings) "curl_fileinfo_strings_perm")
         ) => GHC.Records.HasField "curl_fileinfo_strings_perm" (Ptr.Ptr Curl_fileinfo_strings) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_fileinfo_strings_perm")

instance HsBindgen.Runtime.HasCField.HasCField Curl_fileinfo_strings "curl_fileinfo_strings_user" where

  type CFieldType Curl_fileinfo_strings "curl_fileinfo_strings_user" =
    Ptr.Ptr FC.CChar

  offset# = \_ -> \_ -> 16

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_fileinfo_strings) "curl_fileinfo_strings_user")
         ) => GHC.Records.HasField "curl_fileinfo_strings_user" (Ptr.Ptr Curl_fileinfo_strings) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_fileinfo_strings_user")

instance HsBindgen.Runtime.HasCField.HasCField Curl_fileinfo_strings "curl_fileinfo_strings_group" where

  type CFieldType Curl_fileinfo_strings "curl_fileinfo_strings_group" =
    Ptr.Ptr FC.CChar

  offset# = \_ -> \_ -> 24

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_fileinfo_strings) "curl_fileinfo_strings_group")
         ) => GHC.Records.HasField "curl_fileinfo_strings_group" (Ptr.Ptr Curl_fileinfo_strings) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_fileinfo_strings_group")

instance HsBindgen.Runtime.HasCField.HasCField Curl_fileinfo_strings "curl_fileinfo_strings_target" where

  type CFieldType Curl_fileinfo_strings "curl_fileinfo_strings_target" =
    Ptr.Ptr FC.CChar

  offset# = \_ -> \_ -> 32

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_fileinfo_strings) "curl_fileinfo_strings_target")
         ) => GHC.Records.HasField "curl_fileinfo_strings_target" (Ptr.Ptr Curl_fileinfo_strings) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_fileinfo_strings_target")

{-| __C declaration:__ @curl_fileinfo@

    __defined at:__ @curl\/curl.h:315:8@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
data Curl_fileinfo = Curl_fileinfo
  { curl_fileinfo_filename :: Ptr.Ptr FC.CChar
    {- ^ __C declaration:__ @filename@

         __defined at:__ @curl\/curl.h:316:9@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_fileinfo_filetype :: Curlfiletype
    {- ^ __C declaration:__ @filetype@

         __defined at:__ @curl\/curl.h:317:16@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_fileinfo_time :: HsBindgen.Runtime.Prelude.CTime
    {- ^ __C declaration:__ @time@

         __defined at:__ @curl\/curl.h:318:10@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_fileinfo_perm :: FC.CUInt
    {- ^ __C declaration:__ @perm@

         __defined at:__ @curl\/curl.h:319:16@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_fileinfo_uid :: FC.CInt
    {- ^ __C declaration:__ @uid@

         __defined at:__ @curl\/curl.h:320:7@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_fileinfo_gid :: FC.CInt
    {- ^ __C declaration:__ @gid@

         __defined at:__ @curl\/curl.h:321:7@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_fileinfo_size :: Curl_off_t
    {- ^ __C declaration:__ @size@

         __defined at:__ @curl\/curl.h:322:14@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_fileinfo_hardlinks :: FC.CLong
    {- ^ __C declaration:__ @hardlinks@

         __defined at:__ @curl\/curl.h:323:12@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_fileinfo_strings :: Curl_fileinfo_strings
    {- ^ __C declaration:__ @strings@

         __defined at:__ @curl\/curl.h:332:5@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_fileinfo_flags :: FC.CUInt
    {- ^ __C declaration:__ @flags@

         __defined at:__ @curl\/curl.h:334:16@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_fileinfo_b_data :: Ptr.Ptr FC.CChar
    {- ^ __C declaration:__ @b_data@

         __defined at:__ @curl\/curl.h:338:9@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_fileinfo_b_size :: HsBindgen.Runtime.Prelude.CSize
    {- ^ __C declaration:__ @b_size@

         __defined at:__ @curl\/curl.h:339:10@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_fileinfo_b_used :: HsBindgen.Runtime.Prelude.CSize
    {- ^ __C declaration:__ @b_used@

         __defined at:__ @curl\/curl.h:340:10@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  }
  deriving stock (Eq, Show)

instance F.Storable Curl_fileinfo where

  sizeOf = \_ -> (128 :: Int)

  alignment = \_ -> (8 :: Int)

  peek =
    \ptr0 ->
          pure Curl_fileinfo
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_fileinfo_filename") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_fileinfo_filetype") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_fileinfo_time") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_fileinfo_perm") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_fileinfo_uid") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_fileinfo_gid") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_fileinfo_size") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_fileinfo_hardlinks") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_fileinfo_strings") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_fileinfo_flags") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_fileinfo_b_data") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_fileinfo_b_size") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_fileinfo_b_used") ptr0

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_fileinfo
            curl_fileinfo_filename2
            curl_fileinfo_filetype3
            curl_fileinfo_time4
            curl_fileinfo_perm5
            curl_fileinfo_uid6
            curl_fileinfo_gid7
            curl_fileinfo_size8
            curl_fileinfo_hardlinks9
            curl_fileinfo_strings10
            curl_fileinfo_flags11
            curl_fileinfo_b_data12
            curl_fileinfo_b_size13
            curl_fileinfo_b_used14 ->
                 HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_fileinfo_filename") ptr0 curl_fileinfo_filename2
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_fileinfo_filetype") ptr0 curl_fileinfo_filetype3
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_fileinfo_time") ptr0 curl_fileinfo_time4
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_fileinfo_perm") ptr0 curl_fileinfo_perm5
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_fileinfo_uid") ptr0 curl_fileinfo_uid6
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_fileinfo_gid") ptr0 curl_fileinfo_gid7
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_fileinfo_size") ptr0 curl_fileinfo_size8
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_fileinfo_hardlinks") ptr0 curl_fileinfo_hardlinks9
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_fileinfo_strings") ptr0 curl_fileinfo_strings10
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_fileinfo_flags") ptr0 curl_fileinfo_flags11
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_fileinfo_b_data") ptr0 curl_fileinfo_b_data12
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_fileinfo_b_size") ptr0 curl_fileinfo_b_size13
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_fileinfo_b_used") ptr0 curl_fileinfo_b_used14

instance HsBindgen.Runtime.HasCField.HasCField Curl_fileinfo "curl_fileinfo_filename" where

  type CFieldType Curl_fileinfo "curl_fileinfo_filename" =
    Ptr.Ptr FC.CChar

  offset# = \_ -> \_ -> 0

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_fileinfo) "curl_fileinfo_filename")
         ) => GHC.Records.HasField "curl_fileinfo_filename" (Ptr.Ptr Curl_fileinfo) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_fileinfo_filename")

instance HsBindgen.Runtime.HasCField.HasCField Curl_fileinfo "curl_fileinfo_filetype" where

  type CFieldType Curl_fileinfo "curl_fileinfo_filetype" =
    Curlfiletype

  offset# = \_ -> \_ -> 8

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_fileinfo) "curl_fileinfo_filetype")
         ) => GHC.Records.HasField "curl_fileinfo_filetype" (Ptr.Ptr Curl_fileinfo) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_fileinfo_filetype")

instance HsBindgen.Runtime.HasCField.HasCField Curl_fileinfo "curl_fileinfo_time" where

  type CFieldType Curl_fileinfo "curl_fileinfo_time" =
    HsBindgen.Runtime.Prelude.CTime

  offset# = \_ -> \_ -> 16

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_fileinfo) "curl_fileinfo_time")
         ) => GHC.Records.HasField "curl_fileinfo_time" (Ptr.Ptr Curl_fileinfo) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_fileinfo_time")

instance HsBindgen.Runtime.HasCField.HasCField Curl_fileinfo "curl_fileinfo_perm" where

  type CFieldType Curl_fileinfo "curl_fileinfo_perm" =
    FC.CUInt

  offset# = \_ -> \_ -> 24

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_fileinfo) "curl_fileinfo_perm")
         ) => GHC.Records.HasField "curl_fileinfo_perm" (Ptr.Ptr Curl_fileinfo) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_fileinfo_perm")

instance HsBindgen.Runtime.HasCField.HasCField Curl_fileinfo "curl_fileinfo_uid" where

  type CFieldType Curl_fileinfo "curl_fileinfo_uid" =
    FC.CInt

  offset# = \_ -> \_ -> 28

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_fileinfo) "curl_fileinfo_uid")
         ) => GHC.Records.HasField "curl_fileinfo_uid" (Ptr.Ptr Curl_fileinfo) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_fileinfo_uid")

instance HsBindgen.Runtime.HasCField.HasCField Curl_fileinfo "curl_fileinfo_gid" where

  type CFieldType Curl_fileinfo "curl_fileinfo_gid" =
    FC.CInt

  offset# = \_ -> \_ -> 32

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_fileinfo) "curl_fileinfo_gid")
         ) => GHC.Records.HasField "curl_fileinfo_gid" (Ptr.Ptr Curl_fileinfo) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_fileinfo_gid")

instance HsBindgen.Runtime.HasCField.HasCField Curl_fileinfo "curl_fileinfo_size" where

  type CFieldType Curl_fileinfo "curl_fileinfo_size" =
    Curl_off_t

  offset# = \_ -> \_ -> 40

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_fileinfo) "curl_fileinfo_size")
         ) => GHC.Records.HasField "curl_fileinfo_size" (Ptr.Ptr Curl_fileinfo) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_fileinfo_size")

instance HsBindgen.Runtime.HasCField.HasCField Curl_fileinfo "curl_fileinfo_hardlinks" where

  type CFieldType Curl_fileinfo "curl_fileinfo_hardlinks" =
    FC.CLong

  offset# = \_ -> \_ -> 48

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_fileinfo) "curl_fileinfo_hardlinks")
         ) => GHC.Records.HasField "curl_fileinfo_hardlinks" (Ptr.Ptr Curl_fileinfo) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_fileinfo_hardlinks")

instance HsBindgen.Runtime.HasCField.HasCField Curl_fileinfo "curl_fileinfo_strings" where

  type CFieldType Curl_fileinfo "curl_fileinfo_strings" =
    Curl_fileinfo_strings

  offset# = \_ -> \_ -> 56

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_fileinfo) "curl_fileinfo_strings")
         ) => GHC.Records.HasField "curl_fileinfo_strings" (Ptr.Ptr Curl_fileinfo) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_fileinfo_strings")

instance HsBindgen.Runtime.HasCField.HasCField Curl_fileinfo "curl_fileinfo_flags" where

  type CFieldType Curl_fileinfo "curl_fileinfo_flags" =
    FC.CUInt

  offset# = \_ -> \_ -> 96

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_fileinfo) "curl_fileinfo_flags")
         ) => GHC.Records.HasField "curl_fileinfo_flags" (Ptr.Ptr Curl_fileinfo) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_fileinfo_flags")

instance HsBindgen.Runtime.HasCField.HasCField Curl_fileinfo "curl_fileinfo_b_data" where

  type CFieldType Curl_fileinfo "curl_fileinfo_b_data" =
    Ptr.Ptr FC.CChar

  offset# = \_ -> \_ -> 104

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_fileinfo) "curl_fileinfo_b_data")
         ) => GHC.Records.HasField "curl_fileinfo_b_data" (Ptr.Ptr Curl_fileinfo) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_fileinfo_b_data")

instance HsBindgen.Runtime.HasCField.HasCField Curl_fileinfo "curl_fileinfo_b_size" where

  type CFieldType Curl_fileinfo "curl_fileinfo_b_size" =
    HsBindgen.Runtime.Prelude.CSize

  offset# = \_ -> \_ -> 112

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_fileinfo) "curl_fileinfo_b_size")
         ) => GHC.Records.HasField "curl_fileinfo_b_size" (Ptr.Ptr Curl_fileinfo) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_fileinfo_b_size")

instance HsBindgen.Runtime.HasCField.HasCField Curl_fileinfo "curl_fileinfo_b_used" where

  type CFieldType Curl_fileinfo "curl_fileinfo_b_used" =
    HsBindgen.Runtime.Prelude.CSize

  offset# = \_ -> \_ -> 120

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_fileinfo) "curl_fileinfo_b_used")
         ) => GHC.Records.HasField "curl_fileinfo_b_used" (Ptr.Ptr Curl_fileinfo) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_fileinfo_b_used")

{-| __C declaration:__ @CURL_CHUNK_BGN_FUNC_OK@

    __defined at:__ @curl\/curl.h:344:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_CHUNK_BGN_FUNC_OK :: FC.CInt
cURL_CHUNK_BGN_FUNC_OK = (0 :: FC.CInt)

{-| __C declaration:__ @CURL_CHUNK_BGN_FUNC_FAIL@

    __defined at:__ @curl\/curl.h:345:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_CHUNK_BGN_FUNC_FAIL :: FC.CInt
cURL_CHUNK_BGN_FUNC_FAIL = (1 :: FC.CInt)

{-| __C declaration:__ @CURL_CHUNK_BGN_FUNC_SKIP@

    __defined at:__ @curl\/curl.h:346:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_CHUNK_BGN_FUNC_SKIP :: FC.CInt
cURL_CHUNK_BGN_FUNC_SKIP = (2 :: FC.CInt)

{-| Auxiliary type used by 'Curl_chunk_bgn_callback'

__defined at:__ @curl\/curl.h:351:16@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_chunk_bgn_callback_Deref = Curl_chunk_bgn_callback_Deref
  { un_Curl_chunk_bgn_callback_Deref :: (HsBindgen.Runtime.ConstPtr.ConstPtr Void) -> (Ptr.Ptr Void) -> FC.CInt -> IO FC.CLong
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_chunk_bgn_callback_Deref ::
     Curl_chunk_bgn_callback_Deref
  -> IO (Ptr.FunPtr Curl_chunk_bgn_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_chunk_bgn_callback_Deref ::
     Ptr.FunPtr Curl_chunk_bgn_callback_Deref
  -> Curl_chunk_bgn_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_chunk_bgn_callback_Deref where

  toFunPtr = toCurl_chunk_bgn_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_chunk_bgn_callback_Deref where

  fromFunPtr = fromCurl_chunk_bgn_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_chunk_bgn_callback_Deref) "un_Curl_chunk_bgn_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_chunk_bgn_callback_Deref" (Ptr.Ptr Curl_chunk_bgn_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_chunk_bgn_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_chunk_bgn_callback_Deref "un_Curl_chunk_bgn_callback_Deref" where

  type CFieldType Curl_chunk_bgn_callback_Deref "un_Curl_chunk_bgn_callback_Deref" =
    (HsBindgen.Runtime.ConstPtr.ConstPtr Void) -> (Ptr.Ptr Void) -> FC.CInt -> IO FC.CLong

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_chunk_bgn_callback@

    __defined at:__ @curl\/curl.h:351:16@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_chunk_bgn_callback = Curl_chunk_bgn_callback
  { un_Curl_chunk_bgn_callback :: Ptr.FunPtr Curl_chunk_bgn_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_chunk_bgn_callback) "un_Curl_chunk_bgn_callback")
         ) => GHC.Records.HasField "un_Curl_chunk_bgn_callback" (Ptr.Ptr Curl_chunk_bgn_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_chunk_bgn_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_chunk_bgn_callback "un_Curl_chunk_bgn_callback" where

  type CFieldType Curl_chunk_bgn_callback "un_Curl_chunk_bgn_callback" =
    Ptr.FunPtr Curl_chunk_bgn_callback_Deref

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @CURL_CHUNK_END_FUNC_OK@

    __defined at:__ @curl\/curl.h:356:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_CHUNK_END_FUNC_OK :: FC.CInt
cURL_CHUNK_END_FUNC_OK = (0 :: FC.CInt)

{-| __C declaration:__ @CURL_CHUNK_END_FUNC_FAIL@

    __defined at:__ @curl\/curl.h:357:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_CHUNK_END_FUNC_FAIL :: FC.CInt
cURL_CHUNK_END_FUNC_FAIL = (1 :: FC.CInt)

{-| Auxiliary type used by 'Curl_chunk_end_callback'

__defined at:__ @curl\/curl.h:365:16@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_chunk_end_callback_Deref = Curl_chunk_end_callback_Deref
  { un_Curl_chunk_end_callback_Deref :: (Ptr.Ptr Void) -> IO FC.CLong
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_chunk_end_callback_Deref ::
     Curl_chunk_end_callback_Deref
  -> IO (Ptr.FunPtr Curl_chunk_end_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_chunk_end_callback_Deref ::
     Ptr.FunPtr Curl_chunk_end_callback_Deref
  -> Curl_chunk_end_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_chunk_end_callback_Deref where

  toFunPtr = toCurl_chunk_end_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_chunk_end_callback_Deref where

  fromFunPtr = fromCurl_chunk_end_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_chunk_end_callback_Deref) "un_Curl_chunk_end_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_chunk_end_callback_Deref" (Ptr.Ptr Curl_chunk_end_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_chunk_end_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_chunk_end_callback_Deref "un_Curl_chunk_end_callback_Deref" where

  type CFieldType Curl_chunk_end_callback_Deref "un_Curl_chunk_end_callback_Deref" =
    (Ptr.Ptr Void) -> IO FC.CLong

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_chunk_end_callback@

    __defined at:__ @curl\/curl.h:365:16@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_chunk_end_callback = Curl_chunk_end_callback
  { un_Curl_chunk_end_callback :: Ptr.FunPtr Curl_chunk_end_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_chunk_end_callback) "un_Curl_chunk_end_callback")
         ) => GHC.Records.HasField "un_Curl_chunk_end_callback" (Ptr.Ptr Curl_chunk_end_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_chunk_end_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_chunk_end_callback "un_Curl_chunk_end_callback" where

  type CFieldType Curl_chunk_end_callback "un_Curl_chunk_end_callback" =
    Ptr.FunPtr Curl_chunk_end_callback_Deref

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @CURL_FNMATCHFUNC_MATCH@

    __defined at:__ @curl\/curl.h:368:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_FNMATCHFUNC_MATCH :: FC.CInt
cURL_FNMATCHFUNC_MATCH = (0 :: FC.CInt)

{-| __C declaration:__ @CURL_FNMATCHFUNC_NOMATCH@

    __defined at:__ @curl\/curl.h:369:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_FNMATCHFUNC_NOMATCH :: FC.CInt
cURL_FNMATCHFUNC_NOMATCH = (1 :: FC.CInt)

{-| __C declaration:__ @CURL_FNMATCHFUNC_FAIL@

    __defined at:__ @curl\/curl.h:370:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_FNMATCHFUNC_FAIL :: FC.CInt
cURL_FNMATCHFUNC_FAIL = (2 :: FC.CInt)

{-| Auxiliary type used by 'Curl_fnmatch_callback'

__defined at:__ @curl\/curl.h:374:15@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_fnmatch_callback_Deref = Curl_fnmatch_callback_Deref
  { un_Curl_fnmatch_callback_Deref :: (Ptr.Ptr Void) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_fnmatch_callback_Deref ::
     Curl_fnmatch_callback_Deref
  -> IO (Ptr.FunPtr Curl_fnmatch_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_fnmatch_callback_Deref ::
     Ptr.FunPtr Curl_fnmatch_callback_Deref
  -> Curl_fnmatch_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_fnmatch_callback_Deref where

  toFunPtr = toCurl_fnmatch_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_fnmatch_callback_Deref where

  fromFunPtr = fromCurl_fnmatch_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_fnmatch_callback_Deref) "un_Curl_fnmatch_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_fnmatch_callback_Deref" (Ptr.Ptr Curl_fnmatch_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_fnmatch_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_fnmatch_callback_Deref "un_Curl_fnmatch_callback_Deref" where

  type CFieldType Curl_fnmatch_callback_Deref "un_Curl_fnmatch_callback_Deref" =
    (Ptr.Ptr Void) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_fnmatch_callback@

    __defined at:__ @curl\/curl.h:374:15@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_fnmatch_callback = Curl_fnmatch_callback
  { un_Curl_fnmatch_callback :: Ptr.FunPtr Curl_fnmatch_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_fnmatch_callback) "un_Curl_fnmatch_callback")
         ) => GHC.Records.HasField "un_Curl_fnmatch_callback" (Ptr.Ptr Curl_fnmatch_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_fnmatch_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_fnmatch_callback "un_Curl_fnmatch_callback" where

  type CFieldType Curl_fnmatch_callback "un_Curl_fnmatch_callback" =
    Ptr.FunPtr Curl_fnmatch_callback_Deref

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @CURL_SEEKFUNC_OK@

    __defined at:__ @curl\/curl.h:379:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SEEKFUNC_OK :: FC.CInt
cURL_SEEKFUNC_OK = (0 :: FC.CInt)

{-| __C declaration:__ @CURL_SEEKFUNC_FAIL@

    __defined at:__ @curl\/curl.h:380:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SEEKFUNC_FAIL :: FC.CInt
cURL_SEEKFUNC_FAIL = (1 :: FC.CInt)

{-| __C declaration:__ @CURL_SEEKFUNC_CANTSEEK@

    __defined at:__ @curl\/curl.h:381:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SEEKFUNC_CANTSEEK :: FC.CInt
cURL_SEEKFUNC_CANTSEEK = (2 :: FC.CInt)

{-| Auxiliary type used by 'Curl_seek_callback'

__defined at:__ @curl\/curl.h:383:15@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_seek_callback_Deref = Curl_seek_callback_Deref
  { un_Curl_seek_callback_Deref :: (Ptr.Ptr Void) -> Curl_off_t -> FC.CInt -> IO FC.CInt
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_seek_callback_Deref ::
     Curl_seek_callback_Deref
  -> IO (Ptr.FunPtr Curl_seek_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_seek_callback_Deref ::
     Ptr.FunPtr Curl_seek_callback_Deref
  -> Curl_seek_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_seek_callback_Deref where

  toFunPtr = toCurl_seek_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_seek_callback_Deref where

  fromFunPtr = fromCurl_seek_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_seek_callback_Deref) "un_Curl_seek_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_seek_callback_Deref" (Ptr.Ptr Curl_seek_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_seek_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_seek_callback_Deref "un_Curl_seek_callback_Deref" where

  type CFieldType Curl_seek_callback_Deref "un_Curl_seek_callback_Deref" =
    (Ptr.Ptr Void) -> Curl_off_t -> FC.CInt -> IO FC.CInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_seek_callback@

    __defined at:__ @curl\/curl.h:383:15@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_seek_callback = Curl_seek_callback
  { un_Curl_seek_callback :: Ptr.FunPtr Curl_seek_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_seek_callback) "un_Curl_seek_callback")
         ) => GHC.Records.HasField "un_Curl_seek_callback" (Ptr.Ptr Curl_seek_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_seek_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_seek_callback "un_Curl_seek_callback" where

  type CFieldType Curl_seek_callback "un_Curl_seek_callback" =
    Ptr.FunPtr Curl_seek_callback_Deref

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @CURL_READFUNC_ABORT@

    __defined at:__ @curl\/curl.h:389:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_READFUNC_ABORT :: FC.CInt
cURL_READFUNC_ABORT = (268435456 :: FC.CInt)

{-| __C declaration:__ @CURL_READFUNC_PAUSE@

    __defined at:__ @curl\/curl.h:392:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_READFUNC_PAUSE :: FC.CInt
cURL_READFUNC_PAUSE = (268435457 :: FC.CInt)

{-| __C declaration:__ @CURL_TRAILERFUNC_OK@

    __defined at:__ @curl\/curl.h:396:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_TRAILERFUNC_OK :: FC.CInt
cURL_TRAILERFUNC_OK = (0 :: FC.CInt)

{-| __C declaration:__ @CURL_TRAILERFUNC_ABORT@

    __defined at:__ @curl\/curl.h:399:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_TRAILERFUNC_ABORT :: FC.CInt
cURL_TRAILERFUNC_ABORT = (1 :: FC.CInt)

{-| Auxiliary type used by 'Curl_read_callback'

__defined at:__ @curl\/curl.h:401:18@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_read_callback_Deref = Curl_read_callback_Deref
  { un_Curl_read_callback_Deref :: (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr Void) -> IO HsBindgen.Runtime.Prelude.CSize
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_read_callback_Deref ::
     Curl_read_callback_Deref
  -> IO (Ptr.FunPtr Curl_read_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_read_callback_Deref ::
     Ptr.FunPtr Curl_read_callback_Deref
  -> Curl_read_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_read_callback_Deref where

  toFunPtr = toCurl_read_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_read_callback_Deref where

  fromFunPtr = fromCurl_read_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_read_callback_Deref) "un_Curl_read_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_read_callback_Deref" (Ptr.Ptr Curl_read_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_read_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_read_callback_Deref "un_Curl_read_callback_Deref" where

  type CFieldType Curl_read_callback_Deref "un_Curl_read_callback_Deref" =
    (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr Void) -> IO HsBindgen.Runtime.Prelude.CSize

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_read_callback@

    __defined at:__ @curl\/curl.h:401:18@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_read_callback = Curl_read_callback
  { un_Curl_read_callback :: Ptr.FunPtr Curl_read_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_read_callback) "un_Curl_read_callback")
         ) => GHC.Records.HasField "un_Curl_read_callback" (Ptr.Ptr Curl_read_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_read_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_read_callback "un_Curl_read_callback" where

  type CFieldType Curl_read_callback "un_Curl_read_callback" =
    Ptr.FunPtr Curl_read_callback_Deref

  offset# = \_ -> \_ -> 0

{-| Auxiliary type used by 'Curl_trailer_callback'

__defined at:__ @curl\/curl.h:406:15@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_trailer_callback_Deref = Curl_trailer_callback_Deref
  { un_Curl_trailer_callback_Deref :: (Ptr.Ptr (Ptr.Ptr Curl_slist)) -> (Ptr.Ptr Void) -> IO FC.CInt
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_trailer_callback_Deref ::
     Curl_trailer_callback_Deref
  -> IO (Ptr.FunPtr Curl_trailer_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_trailer_callback_Deref ::
     Ptr.FunPtr Curl_trailer_callback_Deref
  -> Curl_trailer_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_trailer_callback_Deref where

  toFunPtr = toCurl_trailer_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_trailer_callback_Deref where

  fromFunPtr = fromCurl_trailer_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_trailer_callback_Deref) "un_Curl_trailer_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_trailer_callback_Deref" (Ptr.Ptr Curl_trailer_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_trailer_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_trailer_callback_Deref "un_Curl_trailer_callback_Deref" where

  type CFieldType Curl_trailer_callback_Deref "un_Curl_trailer_callback_Deref" =
    (Ptr.Ptr (Ptr.Ptr Curl_slist)) -> (Ptr.Ptr Void) -> IO FC.CInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_trailer_callback@

    __defined at:__ @curl\/curl.h:406:15@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_trailer_callback = Curl_trailer_callback
  { un_Curl_trailer_callback :: Ptr.FunPtr Curl_trailer_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_trailer_callback) "un_Curl_trailer_callback")
         ) => GHC.Records.HasField "un_Curl_trailer_callback" (Ptr.Ptr Curl_trailer_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_trailer_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_trailer_callback "un_Curl_trailer_callback" where

  type CFieldType Curl_trailer_callback "un_Curl_trailer_callback" =
    Ptr.FunPtr Curl_trailer_callback_Deref

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curlsocktype@

    __defined at:__ @curl\/curl.h:409:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curlsocktype = Curlsocktype
  { un_Curlsocktype :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable Curlsocktype where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Curlsocktype
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curlsocktype un_Curlsocktype2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_Curlsocktype2

instance HsBindgen.Runtime.CEnum.CEnum Curlsocktype where

  type CEnumZ Curlsocktype = FC.CUInt

  toCEnum = Curlsocktype

  fromCEnum = un_Curlsocktype

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLSOCKTYPE_IPCXN")
                                                     , (1, Data.List.NonEmpty.singleton "CURLSOCKTYPE_ACCEPT")
                                                     , (2, Data.List.NonEmpty.singleton "CURLSOCKTYPE_LAST")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "Curlsocktype"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "Curlsocktype"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum Curlsocktype where

  minDeclaredValue = CURLSOCKTYPE_IPCXN

  maxDeclaredValue = CURLSOCKTYPE_LAST

instance Show Curlsocktype where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read Curlsocktype where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLSOCKTYPE_IPCXN@

    __defined at:__ @curl\/curl.h:410:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSOCKTYPE_IPCXN :: Curlsocktype
pattern CURLSOCKTYPE_IPCXN = Curlsocktype 0

{-| __C declaration:__ @CURLSOCKTYPE_ACCEPT@

    __defined at:__ @curl\/curl.h:411:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSOCKTYPE_ACCEPT :: Curlsocktype
pattern CURLSOCKTYPE_ACCEPT = Curlsocktype 1

{-| __C declaration:__ @CURLSOCKTYPE_LAST@

    __defined at:__ @curl\/curl.h:412:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSOCKTYPE_LAST :: Curlsocktype
pattern CURLSOCKTYPE_LAST = Curlsocktype 2

{-| __C declaration:__ @CURL_SOCKOPT_OK@

    __defined at:__ @curl\/curl.h:417:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SOCKOPT_OK :: FC.CInt
cURL_SOCKOPT_OK = (0 :: FC.CInt)

{-| __C declaration:__ @CURL_SOCKOPT_ERROR@

    __defined at:__ @curl\/curl.h:418:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SOCKOPT_ERROR :: FC.CInt
cURL_SOCKOPT_ERROR = (1 :: FC.CInt)

{-| __C declaration:__ @CURL_SOCKOPT_ALREADY_CONNECTED@

    __defined at:__ @curl\/curl.h:420:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SOCKOPT_ALREADY_CONNECTED :: FC.CInt
cURL_SOCKOPT_ALREADY_CONNECTED = (2 :: FC.CInt)

{-| Auxiliary type used by 'Curl_sockopt_callback'

__defined at:__ @curl\/curl.h:422:15@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_sockopt_callback_Deref = Curl_sockopt_callback_Deref
  { un_Curl_sockopt_callback_Deref :: (Ptr.Ptr Void) -> Curl_socket_t -> Curlsocktype -> IO FC.CInt
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_sockopt_callback_Deref ::
     Curl_sockopt_callback_Deref
  -> IO (Ptr.FunPtr Curl_sockopt_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_sockopt_callback_Deref ::
     Ptr.FunPtr Curl_sockopt_callback_Deref
  -> Curl_sockopt_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_sockopt_callback_Deref where

  toFunPtr = toCurl_sockopt_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_sockopt_callback_Deref where

  fromFunPtr = fromCurl_sockopt_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_sockopt_callback_Deref) "un_Curl_sockopt_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_sockopt_callback_Deref" (Ptr.Ptr Curl_sockopt_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_sockopt_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_sockopt_callback_Deref "un_Curl_sockopt_callback_Deref" where

  type CFieldType Curl_sockopt_callback_Deref "un_Curl_sockopt_callback_Deref" =
    (Ptr.Ptr Void) -> Curl_socket_t -> Curlsocktype -> IO FC.CInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_sockopt_callback@

    __defined at:__ @curl\/curl.h:422:15@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_sockopt_callback = Curl_sockopt_callback
  { un_Curl_sockopt_callback :: Ptr.FunPtr Curl_sockopt_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_sockopt_callback) "un_Curl_sockopt_callback")
         ) => GHC.Records.HasField "un_Curl_sockopt_callback" (Ptr.Ptr Curl_sockopt_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_sockopt_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_sockopt_callback "un_Curl_sockopt_callback" where

  type CFieldType Curl_sockopt_callback "un_Curl_sockopt_callback" =
    Ptr.FunPtr Curl_sockopt_callback_Deref

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_sockaddr@

    __defined at:__ @curl\/curl.h:426:8@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
data Curl_sockaddr = Curl_sockaddr
  { curl_sockaddr_family :: FC.CInt
    {- ^ __C declaration:__ @family@

         __defined at:__ @curl\/curl.h:427:7@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_sockaddr_socktype :: FC.CInt
    {- ^ __C declaration:__ @socktype@

         __defined at:__ @curl\/curl.h:428:7@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_sockaddr_protocol :: FC.CInt
    {- ^ __C declaration:__ @protocol@

         __defined at:__ @curl\/curl.h:429:7@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_sockaddr_addrlen :: FC.CUInt
    {- ^ __C declaration:__ @addrlen@

         __defined at:__ @curl\/curl.h:430:16@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_sockaddr_addr :: Sockaddr
    {- ^ __C declaration:__ @addr@

         __defined at:__ @curl\/curl.h:433:19@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  }
  deriving stock (Eq, Show)

instance F.Storable Curl_sockaddr where

  sizeOf = \_ -> (32 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Curl_sockaddr
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_sockaddr_family") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_sockaddr_socktype") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_sockaddr_protocol") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_sockaddr_addrlen") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_sockaddr_addr") ptr0

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_sockaddr
            curl_sockaddr_family2
            curl_sockaddr_socktype3
            curl_sockaddr_protocol4
            curl_sockaddr_addrlen5
            curl_sockaddr_addr6 ->
                 HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_sockaddr_family") ptr0 curl_sockaddr_family2
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_sockaddr_socktype") ptr0 curl_sockaddr_socktype3
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_sockaddr_protocol") ptr0 curl_sockaddr_protocol4
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_sockaddr_addrlen") ptr0 curl_sockaddr_addrlen5
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_sockaddr_addr") ptr0 curl_sockaddr_addr6

instance HsBindgen.Runtime.HasCField.HasCField Curl_sockaddr "curl_sockaddr_family" where

  type CFieldType Curl_sockaddr "curl_sockaddr_family" =
    FC.CInt

  offset# = \_ -> \_ -> 0

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_sockaddr) "curl_sockaddr_family")
         ) => GHC.Records.HasField "curl_sockaddr_family" (Ptr.Ptr Curl_sockaddr) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_sockaddr_family")

instance HsBindgen.Runtime.HasCField.HasCField Curl_sockaddr "curl_sockaddr_socktype" where

  type CFieldType Curl_sockaddr "curl_sockaddr_socktype" =
    FC.CInt

  offset# = \_ -> \_ -> 4

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_sockaddr) "curl_sockaddr_socktype")
         ) => GHC.Records.HasField "curl_sockaddr_socktype" (Ptr.Ptr Curl_sockaddr) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_sockaddr_socktype")

instance HsBindgen.Runtime.HasCField.HasCField Curl_sockaddr "curl_sockaddr_protocol" where

  type CFieldType Curl_sockaddr "curl_sockaddr_protocol" =
    FC.CInt

  offset# = \_ -> \_ -> 8

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_sockaddr) "curl_sockaddr_protocol")
         ) => GHC.Records.HasField "curl_sockaddr_protocol" (Ptr.Ptr Curl_sockaddr) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_sockaddr_protocol")

instance HsBindgen.Runtime.HasCField.HasCField Curl_sockaddr "curl_sockaddr_addrlen" where

  type CFieldType Curl_sockaddr "curl_sockaddr_addrlen" =
    FC.CUInt

  offset# = \_ -> \_ -> 12

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_sockaddr) "curl_sockaddr_addrlen")
         ) => GHC.Records.HasField "curl_sockaddr_addrlen" (Ptr.Ptr Curl_sockaddr) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_sockaddr_addrlen")

instance HsBindgen.Runtime.HasCField.HasCField Curl_sockaddr "curl_sockaddr_addr" where

  type CFieldType Curl_sockaddr "curl_sockaddr_addr" =
    Sockaddr

  offset# = \_ -> \_ -> 16

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_sockaddr) "curl_sockaddr_addr")
         ) => GHC.Records.HasField "curl_sockaddr_addr" (Ptr.Ptr Curl_sockaddr) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_sockaddr_addr")

{-| Auxiliary type used by 'Curl_opensocket_callback'

__defined at:__ @curl\/curl.h:437:3@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_opensocket_callback_Deref = Curl_opensocket_callback_Deref
  { un_Curl_opensocket_callback_Deref :: (Ptr.Ptr Void) -> Curlsocktype -> (Ptr.Ptr Curl_sockaddr) -> IO Curl_socket_t
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_opensocket_callback_Deref ::
     Curl_opensocket_callback_Deref
  -> IO (Ptr.FunPtr Curl_opensocket_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_opensocket_callback_Deref ::
     Ptr.FunPtr Curl_opensocket_callback_Deref
  -> Curl_opensocket_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_opensocket_callback_Deref where

  toFunPtr = toCurl_opensocket_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_opensocket_callback_Deref where

  fromFunPtr = fromCurl_opensocket_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_opensocket_callback_Deref) "un_Curl_opensocket_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_opensocket_callback_Deref" (Ptr.Ptr Curl_opensocket_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_opensocket_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_opensocket_callback_Deref "un_Curl_opensocket_callback_Deref" where

  type CFieldType Curl_opensocket_callback_Deref "un_Curl_opensocket_callback_Deref" =
    (Ptr.Ptr Void) -> Curlsocktype -> (Ptr.Ptr Curl_sockaddr) -> IO Curl_socket_t

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_opensocket_callback@

    __defined at:__ @curl\/curl.h:437:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_opensocket_callback = Curl_opensocket_callback
  { un_Curl_opensocket_callback :: Ptr.FunPtr Curl_opensocket_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_opensocket_callback) "un_Curl_opensocket_callback")
         ) => GHC.Records.HasField "un_Curl_opensocket_callback" (Ptr.Ptr Curl_opensocket_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_opensocket_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_opensocket_callback "un_Curl_opensocket_callback" where

  type CFieldType Curl_opensocket_callback "un_Curl_opensocket_callback" =
    Ptr.FunPtr Curl_opensocket_callback_Deref

  offset# = \_ -> \_ -> 0

{-| Auxiliary type used by 'Curl_closesocket_callback'

__defined at:__ @curl\/curl.h:442:3@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_closesocket_callback_Deref = Curl_closesocket_callback_Deref
  { un_Curl_closesocket_callback_Deref :: (Ptr.Ptr Void) -> Curl_socket_t -> IO FC.CInt
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_closesocket_callback_Deref ::
     Curl_closesocket_callback_Deref
  -> IO (Ptr.FunPtr Curl_closesocket_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_closesocket_callback_Deref ::
     Ptr.FunPtr Curl_closesocket_callback_Deref
  -> Curl_closesocket_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_closesocket_callback_Deref where

  toFunPtr = toCurl_closesocket_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_closesocket_callback_Deref where

  fromFunPtr = fromCurl_closesocket_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_closesocket_callback_Deref) "un_Curl_closesocket_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_closesocket_callback_Deref" (Ptr.Ptr Curl_closesocket_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_closesocket_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_closesocket_callback_Deref "un_Curl_closesocket_callback_Deref" where

  type CFieldType Curl_closesocket_callback_Deref "un_Curl_closesocket_callback_Deref" =
    (Ptr.Ptr Void) -> Curl_socket_t -> IO FC.CInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_closesocket_callback@

    __defined at:__ @curl\/curl.h:442:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_closesocket_callback = Curl_closesocket_callback
  { un_Curl_closesocket_callback :: Ptr.FunPtr Curl_closesocket_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_closesocket_callback) "un_Curl_closesocket_callback")
         ) => GHC.Records.HasField "un_Curl_closesocket_callback" (Ptr.Ptr Curl_closesocket_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_closesocket_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_closesocket_callback "un_Curl_closesocket_callback" where

  type CFieldType Curl_closesocket_callback "un_Curl_closesocket_callback" =
    Ptr.FunPtr Curl_closesocket_callback_Deref

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curlioerr@

    __defined at:__ @curl\/curl.h:444:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curlioerr = Curlioerr
  { un_Curlioerr :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable Curlioerr where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Curlioerr
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curlioerr un_Curlioerr2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_Curlioerr2

instance HsBindgen.Runtime.CEnum.CEnum Curlioerr where

  type CEnumZ Curlioerr = FC.CUInt

  toCEnum = Curlioerr

  fromCEnum = un_Curlioerr

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLIOE_OK")
                                                     , (1, Data.List.NonEmpty.singleton "CURLIOE_UNKNOWNCMD")
                                                     , (2, Data.List.NonEmpty.singleton "CURLIOE_FAILRESTART")
                                                     , (3, Data.List.NonEmpty.singleton "CURLIOE_LAST")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "Curlioerr"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "Curlioerr"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum Curlioerr where

  minDeclaredValue = CURLIOE_OK

  maxDeclaredValue = CURLIOE_LAST

instance Show Curlioerr where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read Curlioerr where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLIOE_OK@

    __defined at:__ @curl\/curl.h:445:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLIOE_OK :: Curlioerr
pattern CURLIOE_OK = Curlioerr 0

{-| __C declaration:__ @CURLIOE_UNKNOWNCMD@

    __defined at:__ @curl\/curl.h:446:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLIOE_UNKNOWNCMD :: Curlioerr
pattern CURLIOE_UNKNOWNCMD = Curlioerr 1

{-| __C declaration:__ @CURLIOE_FAILRESTART@

    __defined at:__ @curl\/curl.h:447:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLIOE_FAILRESTART :: Curlioerr
pattern CURLIOE_FAILRESTART = Curlioerr 2

{-| __C declaration:__ @CURLIOE_LAST@

    __defined at:__ @curl\/curl.h:448:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLIOE_LAST :: Curlioerr
pattern CURLIOE_LAST = Curlioerr 3

{-| __C declaration:__ @curliocmd@

    __defined at:__ @curl\/curl.h:451:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curliocmd = Curliocmd
  { un_Curliocmd :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable Curliocmd where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Curliocmd
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curliocmd un_Curliocmd2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_Curliocmd2

instance HsBindgen.Runtime.CEnum.CEnum Curliocmd where

  type CEnumZ Curliocmd = FC.CUInt

  toCEnum = Curliocmd

  fromCEnum = un_Curliocmd

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLIOCMD_NOP")
                                                     , (1, Data.List.NonEmpty.singleton "CURLIOCMD_RESTARTREAD")
                                                     , (2, Data.List.NonEmpty.singleton "CURLIOCMD_LAST")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "Curliocmd"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "Curliocmd"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum Curliocmd where

  minDeclaredValue = CURLIOCMD_NOP

  maxDeclaredValue = CURLIOCMD_LAST

instance Show Curliocmd where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read Curliocmd where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLIOCMD_NOP@

    __defined at:__ @curl\/curl.h:452:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLIOCMD_NOP :: Curliocmd
pattern CURLIOCMD_NOP = Curliocmd 0

{-| __C declaration:__ @CURLIOCMD_RESTARTREAD@

    __defined at:__ @curl\/curl.h:453:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLIOCMD_RESTARTREAD :: Curliocmd
pattern CURLIOCMD_RESTARTREAD = Curliocmd 1

{-| __C declaration:__ @CURLIOCMD_LAST@

    __defined at:__ @curl\/curl.h:454:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLIOCMD_LAST :: Curliocmd
pattern CURLIOCMD_LAST = Curliocmd 2

{-| Auxiliary type used by 'Curl_ioctl_callback'

__defined at:__ @curl\/curl.h:457:21@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_ioctl_callback_Deref = Curl_ioctl_callback_Deref
  { un_Curl_ioctl_callback_Deref :: (Ptr.Ptr Void) -> FC.CInt -> (Ptr.Ptr Void) -> IO Curlioerr
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_ioctl_callback_Deref ::
     Curl_ioctl_callback_Deref
  -> IO (Ptr.FunPtr Curl_ioctl_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_ioctl_callback_Deref ::
     Ptr.FunPtr Curl_ioctl_callback_Deref
  -> Curl_ioctl_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_ioctl_callback_Deref where

  toFunPtr = toCurl_ioctl_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_ioctl_callback_Deref where

  fromFunPtr = fromCurl_ioctl_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_ioctl_callback_Deref) "un_Curl_ioctl_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_ioctl_callback_Deref" (Ptr.Ptr Curl_ioctl_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_ioctl_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_ioctl_callback_Deref "un_Curl_ioctl_callback_Deref" where

  type CFieldType Curl_ioctl_callback_Deref "un_Curl_ioctl_callback_Deref" =
    (Ptr.Ptr Void) -> FC.CInt -> (Ptr.Ptr Void) -> IO Curlioerr

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_ioctl_callback@

    __defined at:__ @curl\/curl.h:457:21@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_ioctl_callback = Curl_ioctl_callback
  { un_Curl_ioctl_callback :: Ptr.FunPtr Curl_ioctl_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_ioctl_callback) "un_Curl_ioctl_callback")
         ) => GHC.Records.HasField "un_Curl_ioctl_callback" (Ptr.Ptr Curl_ioctl_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_ioctl_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_ioctl_callback "un_Curl_ioctl_callback" where

  type CFieldType Curl_ioctl_callback "un_Curl_ioctl_callback" =
    Ptr.FunPtr Curl_ioctl_callback_Deref

  offset# = \_ -> \_ -> 0

{-| Auxiliary type used by 'Curl_malloc_callback'

__defined at:__ @curl\/curl.h:468:17@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_malloc_callback_Deref = Curl_malloc_callback_Deref
  { un_Curl_malloc_callback_Deref :: HsBindgen.Runtime.Prelude.CSize -> IO (Ptr.Ptr Void)
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_malloc_callback_Deref ::
     Curl_malloc_callback_Deref
  -> IO (Ptr.FunPtr Curl_malloc_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_malloc_callback_Deref ::
     Ptr.FunPtr Curl_malloc_callback_Deref
  -> Curl_malloc_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_malloc_callback_Deref where

  toFunPtr = toCurl_malloc_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_malloc_callback_Deref where

  fromFunPtr = fromCurl_malloc_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_malloc_callback_Deref) "un_Curl_malloc_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_malloc_callback_Deref" (Ptr.Ptr Curl_malloc_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_malloc_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_malloc_callback_Deref "un_Curl_malloc_callback_Deref" where

  type CFieldType Curl_malloc_callback_Deref "un_Curl_malloc_callback_Deref" =
    HsBindgen.Runtime.Prelude.CSize -> IO (Ptr.Ptr Void)

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_malloc_callback@

    __defined at:__ @curl\/curl.h:468:17@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_malloc_callback = Curl_malloc_callback
  { un_Curl_malloc_callback :: Ptr.FunPtr Curl_malloc_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_malloc_callback) "un_Curl_malloc_callback")
         ) => GHC.Records.HasField "un_Curl_malloc_callback" (Ptr.Ptr Curl_malloc_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_malloc_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_malloc_callback "un_Curl_malloc_callback" where

  type CFieldType Curl_malloc_callback "un_Curl_malloc_callback" =
    Ptr.FunPtr Curl_malloc_callback_Deref

  offset# = \_ -> \_ -> 0

{-| Auxiliary type used by 'Curl_free_callback'

__defined at:__ @curl\/curl.h:469:16@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_free_callback_Deref = Curl_free_callback_Deref
  { un_Curl_free_callback_Deref :: (Ptr.Ptr Void) -> IO ()
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_free_callback_Deref ::
     Curl_free_callback_Deref
  -> IO (Ptr.FunPtr Curl_free_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_free_callback_Deref ::
     Ptr.FunPtr Curl_free_callback_Deref
  -> Curl_free_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_free_callback_Deref where

  toFunPtr = toCurl_free_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_free_callback_Deref where

  fromFunPtr = fromCurl_free_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_free_callback_Deref) "un_Curl_free_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_free_callback_Deref" (Ptr.Ptr Curl_free_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_free_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_free_callback_Deref "un_Curl_free_callback_Deref" where

  type CFieldType Curl_free_callback_Deref "un_Curl_free_callback_Deref" =
    (Ptr.Ptr Void) -> IO ()

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_free_callback@

    __defined at:__ @curl\/curl.h:469:16@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_free_callback = Curl_free_callback
  { un_Curl_free_callback :: Ptr.FunPtr Curl_free_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_free_callback) "un_Curl_free_callback")
         ) => GHC.Records.HasField "un_Curl_free_callback" (Ptr.Ptr Curl_free_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_free_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_free_callback "un_Curl_free_callback" where

  type CFieldType Curl_free_callback "un_Curl_free_callback" =
    Ptr.FunPtr Curl_free_callback_Deref

  offset# = \_ -> \_ -> 0

{-| Auxiliary type used by 'Curl_realloc_callback'

__defined at:__ @curl\/curl.h:470:17@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_realloc_callback_Deref = Curl_realloc_callback_Deref
  { un_Curl_realloc_callback_Deref :: (Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO (Ptr.Ptr Void)
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_realloc_callback_Deref ::
     Curl_realloc_callback_Deref
  -> IO (Ptr.FunPtr Curl_realloc_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_realloc_callback_Deref ::
     Ptr.FunPtr Curl_realloc_callback_Deref
  -> Curl_realloc_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_realloc_callback_Deref where

  toFunPtr = toCurl_realloc_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_realloc_callback_Deref where

  fromFunPtr = fromCurl_realloc_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_realloc_callback_Deref) "un_Curl_realloc_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_realloc_callback_Deref" (Ptr.Ptr Curl_realloc_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_realloc_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_realloc_callback_Deref "un_Curl_realloc_callback_Deref" where

  type CFieldType Curl_realloc_callback_Deref "un_Curl_realloc_callback_Deref" =
    (Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO (Ptr.Ptr Void)

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_realloc_callback@

    __defined at:__ @curl\/curl.h:470:17@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_realloc_callback = Curl_realloc_callback
  { un_Curl_realloc_callback :: Ptr.FunPtr Curl_realloc_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_realloc_callback) "un_Curl_realloc_callback")
         ) => GHC.Records.HasField "un_Curl_realloc_callback" (Ptr.Ptr Curl_realloc_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_realloc_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_realloc_callback "un_Curl_realloc_callback" where

  type CFieldType Curl_realloc_callback "un_Curl_realloc_callback" =
    Ptr.FunPtr Curl_realloc_callback_Deref

  offset# = \_ -> \_ -> 0

{-| Auxiliary type used by 'Curl_strdup_callback'

__defined at:__ @curl\/curl.h:471:17@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_strdup_callback_Deref = Curl_strdup_callback_Deref
  { un_Curl_strdup_callback_Deref :: (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO (Ptr.Ptr FC.CChar)
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_strdup_callback_Deref ::
     Curl_strdup_callback_Deref
  -> IO (Ptr.FunPtr Curl_strdup_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_strdup_callback_Deref ::
     Ptr.FunPtr Curl_strdup_callback_Deref
  -> Curl_strdup_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_strdup_callback_Deref where

  toFunPtr = toCurl_strdup_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_strdup_callback_Deref where

  fromFunPtr = fromCurl_strdup_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_strdup_callback_Deref) "un_Curl_strdup_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_strdup_callback_Deref" (Ptr.Ptr Curl_strdup_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_strdup_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_strdup_callback_Deref "un_Curl_strdup_callback_Deref" where

  type CFieldType Curl_strdup_callback_Deref "un_Curl_strdup_callback_Deref" =
    (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO (Ptr.Ptr FC.CChar)

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_strdup_callback@

    __defined at:__ @curl\/curl.h:471:17@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_strdup_callback = Curl_strdup_callback
  { un_Curl_strdup_callback :: Ptr.FunPtr Curl_strdup_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_strdup_callback) "un_Curl_strdup_callback")
         ) => GHC.Records.HasField "un_Curl_strdup_callback" (Ptr.Ptr Curl_strdup_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_strdup_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_strdup_callback "un_Curl_strdup_callback" where

  type CFieldType Curl_strdup_callback "un_Curl_strdup_callback" =
    Ptr.FunPtr Curl_strdup_callback_Deref

  offset# = \_ -> \_ -> 0

{-| Auxiliary type used by 'Curl_calloc_callback'

__defined at:__ @curl\/curl.h:472:17@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_calloc_callback_Deref = Curl_calloc_callback_Deref
  { un_Curl_calloc_callback_Deref :: HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO (Ptr.Ptr Void)
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_calloc_callback_Deref ::
     Curl_calloc_callback_Deref
  -> IO (Ptr.FunPtr Curl_calloc_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_calloc_callback_Deref ::
     Ptr.FunPtr Curl_calloc_callback_Deref
  -> Curl_calloc_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_calloc_callback_Deref where

  toFunPtr = toCurl_calloc_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_calloc_callback_Deref where

  fromFunPtr = fromCurl_calloc_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_calloc_callback_Deref) "un_Curl_calloc_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_calloc_callback_Deref" (Ptr.Ptr Curl_calloc_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_calloc_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_calloc_callback_Deref "un_Curl_calloc_callback_Deref" where

  type CFieldType Curl_calloc_callback_Deref "un_Curl_calloc_callback_Deref" =
    HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO (Ptr.Ptr Void)

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_calloc_callback@

    __defined at:__ @curl\/curl.h:472:17@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_calloc_callback = Curl_calloc_callback
  { un_Curl_calloc_callback :: Ptr.FunPtr Curl_calloc_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_calloc_callback) "un_Curl_calloc_callback")
         ) => GHC.Records.HasField "un_Curl_calloc_callback" (Ptr.Ptr Curl_calloc_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_calloc_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_calloc_callback "un_Curl_calloc_callback" where

  type CFieldType Curl_calloc_callback "un_Curl_calloc_callback" =
    Ptr.FunPtr Curl_calloc_callback_Deref

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_infotype@

    __defined at:__ @curl\/curl.h:478:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_infotype = Curl_infotype
  { un_Curl_infotype :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable Curl_infotype where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Curl_infotype
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_infotype un_Curl_infotype2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_Curl_infotype2

instance HsBindgen.Runtime.CEnum.CEnum Curl_infotype where

  type CEnumZ Curl_infotype = FC.CUInt

  toCEnum = Curl_infotype

  fromCEnum = un_Curl_infotype

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLINFO_TEXT")
                                                     , (1, Data.List.NonEmpty.singleton "CURLINFO_HEADER_IN")
                                                     , (2, Data.List.NonEmpty.singleton "CURLINFO_HEADER_OUT")
                                                     , (3, Data.List.NonEmpty.singleton "CURLINFO_DATA_IN")
                                                     , (4, Data.List.NonEmpty.singleton "CURLINFO_DATA_OUT")
                                                     , (5, Data.List.NonEmpty.singleton "CURLINFO_SSL_DATA_IN")
                                                     , (6, Data.List.NonEmpty.singleton "CURLINFO_SSL_DATA_OUT")
                                                     , (7, Data.List.NonEmpty.singleton "CURLINFO_END")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "Curl_infotype"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "Curl_infotype"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum Curl_infotype where

  minDeclaredValue = CURLINFO_TEXT

  maxDeclaredValue = CURLINFO_END

instance Show Curl_infotype where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read Curl_infotype where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLINFO_TEXT@

    __defined at:__ @curl\/curl.h:479:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_TEXT :: Curl_infotype
pattern CURLINFO_TEXT = Curl_infotype 0

{-| __C declaration:__ @CURLINFO_HEADER_IN@

    __defined at:__ @curl\/curl.h:480:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_HEADER_IN :: Curl_infotype
pattern CURLINFO_HEADER_IN = Curl_infotype 1

{-| __C declaration:__ @CURLINFO_HEADER_OUT@

    __defined at:__ @curl\/curl.h:481:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_HEADER_OUT :: Curl_infotype
pattern CURLINFO_HEADER_OUT = Curl_infotype 2

{-| __C declaration:__ @CURLINFO_DATA_IN@

    __defined at:__ @curl\/curl.h:482:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_DATA_IN :: Curl_infotype
pattern CURLINFO_DATA_IN = Curl_infotype 3

{-| __C declaration:__ @CURLINFO_DATA_OUT@

    __defined at:__ @curl\/curl.h:483:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_DATA_OUT :: Curl_infotype
pattern CURLINFO_DATA_OUT = Curl_infotype 4

{-| __C declaration:__ @CURLINFO_SSL_DATA_IN@

    __defined at:__ @curl\/curl.h:484:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_SSL_DATA_IN :: Curl_infotype
pattern CURLINFO_SSL_DATA_IN = Curl_infotype 5

{-| __C declaration:__ @CURLINFO_SSL_DATA_OUT@

    __defined at:__ @curl\/curl.h:485:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_SSL_DATA_OUT :: Curl_infotype
pattern CURLINFO_SSL_DATA_OUT = Curl_infotype 6

{-| __C declaration:__ @CURLINFO_END@

    __defined at:__ @curl\/curl.h:486:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_END :: Curl_infotype
pattern CURLINFO_END = Curl_infotype 7

{-| Auxiliary type used by 'Curl_debug_callback'

__defined at:__ @curl\/curl.h:489:15@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_debug_callback_Deref = Curl_debug_callback_Deref
  { un_Curl_debug_callback_Deref :: (Ptr.Ptr Void) -> Curl_infotype -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr Void) -> IO FC.CInt
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_debug_callback_Deref ::
     Curl_debug_callback_Deref
  -> IO (Ptr.FunPtr Curl_debug_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_debug_callback_Deref ::
     Ptr.FunPtr Curl_debug_callback_Deref
  -> Curl_debug_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_debug_callback_Deref where

  toFunPtr = toCurl_debug_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_debug_callback_Deref where

  fromFunPtr = fromCurl_debug_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_debug_callback_Deref) "un_Curl_debug_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_debug_callback_Deref" (Ptr.Ptr Curl_debug_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_debug_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_debug_callback_Deref "un_Curl_debug_callback_Deref" where

  type CFieldType Curl_debug_callback_Deref "un_Curl_debug_callback_Deref" =
    (Ptr.Ptr Void) -> Curl_infotype -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr Void) -> IO FC.CInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_debug_callback@

    __defined at:__ @curl\/curl.h:489:15@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_debug_callback = Curl_debug_callback
  { un_Curl_debug_callback :: Ptr.FunPtr Curl_debug_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_debug_callback) "un_Curl_debug_callback")
         ) => GHC.Records.HasField "un_Curl_debug_callback" (Ptr.Ptr Curl_debug_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_debug_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_debug_callback "un_Curl_debug_callback" where

  type CFieldType Curl_debug_callback "un_Curl_debug_callback" =
    Ptr.FunPtr Curl_debug_callback_Deref

  offset# = \_ -> \_ -> 0

{-| Auxiliary type used by 'Curl_prereq_callback'

__defined at:__ @curl\/curl.h:497:15@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_prereq_callback_Deref = Curl_prereq_callback_Deref
  { un_Curl_prereq_callback_Deref :: (Ptr.Ptr Void) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> FC.CInt -> FC.CInt -> IO FC.CInt
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_prereq_callback_Deref ::
     Curl_prereq_callback_Deref
  -> IO (Ptr.FunPtr Curl_prereq_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_prereq_callback_Deref ::
     Ptr.FunPtr Curl_prereq_callback_Deref
  -> Curl_prereq_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_prereq_callback_Deref where

  toFunPtr = toCurl_prereq_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_prereq_callback_Deref where

  fromFunPtr = fromCurl_prereq_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_prereq_callback_Deref) "un_Curl_prereq_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_prereq_callback_Deref" (Ptr.Ptr Curl_prereq_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_prereq_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_prereq_callback_Deref "un_Curl_prereq_callback_Deref" where

  type CFieldType Curl_prereq_callback_Deref "un_Curl_prereq_callback_Deref" =
    (Ptr.Ptr Void) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> FC.CInt -> FC.CInt -> IO FC.CInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_prereq_callback@

    __defined at:__ @curl\/curl.h:497:15@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_prereq_callback = Curl_prereq_callback
  { un_Curl_prereq_callback :: Ptr.FunPtr Curl_prereq_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_prereq_callback) "un_Curl_prereq_callback")
         ) => GHC.Records.HasField "un_Curl_prereq_callback" (Ptr.Ptr Curl_prereq_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_prereq_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_prereq_callback "un_Curl_prereq_callback" where

  type CFieldType Curl_prereq_callback "un_Curl_prereq_callback" =
    Ptr.FunPtr Curl_prereq_callback_Deref

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @CURL_PREREQFUNC_OK@

    __defined at:__ @curl\/curl.h:505:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_PREREQFUNC_OK :: FC.CInt
cURL_PREREQFUNC_OK = (0 :: FC.CInt)

{-| __C declaration:__ @CURL_PREREQFUNC_ABORT@

    __defined at:__ @curl\/curl.h:508:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_PREREQFUNC_ABORT :: FC.CInt
cURL_PREREQFUNC_ABORT = (1 :: FC.CInt)

{-| __C declaration:__ @CURLE_ALREADY_COMPLETE@

    __defined at:__ @curl\/curl.h:721:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLE_ALREADY_COMPLETE :: FC.CInt
cURLE_ALREADY_COMPLETE = (99999 :: FC.CInt)

{-| __C declaration:__ @CURLOPT_OBSOLETE72@

    __defined at:__ @curl\/curl.h:732:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLOPT_OBSOLETE72 :: FC.CInt
cURLOPT_OBSOLETE72 = (9999 :: FC.CInt)

{-| __C declaration:__ @CURLOPT_OBSOLETE40@

    __defined at:__ @curl\/curl.h:733:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLOPT_OBSOLETE40 :: FC.CInt
cURLOPT_OBSOLETE40 = (9999 :: FC.CInt)

{-| __C declaration:__ @CURLproxycode@

    __defined at:__ @curl\/curl.h:741:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype CURLproxycode = CURLproxycode
  { un_CURLproxycode :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable CURLproxycode where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure CURLproxycode
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          CURLproxycode un_CURLproxycode2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_CURLproxycode2

instance HsBindgen.Runtime.CEnum.CEnum CURLproxycode where

  type CEnumZ CURLproxycode = FC.CUInt

  toCEnum = CURLproxycode

  fromCEnum = un_CURLproxycode

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLPX_OK")
                                                     , (1, Data.List.NonEmpty.singleton "CURLPX_BAD_ADDRESS_TYPE")
                                                     , (2, Data.List.NonEmpty.singleton "CURLPX_BAD_VERSION")
                                                     , (3, Data.List.NonEmpty.singleton "CURLPX_CLOSED")
                                                     , (4, Data.List.NonEmpty.singleton "CURLPX_GSSAPI")
                                                     , (5, Data.List.NonEmpty.singleton "CURLPX_GSSAPI_PERMSG")
                                                     , (6, Data.List.NonEmpty.singleton "CURLPX_GSSAPI_PROTECTION")
                                                     , (7, Data.List.NonEmpty.singleton "CURLPX_IDENTD")
                                                     , (8, Data.List.NonEmpty.singleton "CURLPX_IDENTD_DIFFER")
                                                     , (9, Data.List.NonEmpty.singleton "CURLPX_LONG_HOSTNAME")
                                                     , (10, Data.List.NonEmpty.singleton "CURLPX_LONG_PASSWD")
                                                     , (11, Data.List.NonEmpty.singleton "CURLPX_LONG_USER")
                                                     , (12, Data.List.NonEmpty.singleton "CURLPX_NO_AUTH")
                                                     , (13, Data.List.NonEmpty.singleton "CURLPX_RECV_ADDRESS")
                                                     , (14, Data.List.NonEmpty.singleton "CURLPX_RECV_AUTH")
                                                     , (15, Data.List.NonEmpty.singleton "CURLPX_RECV_CONNECT")
                                                     , (16, Data.List.NonEmpty.singleton "CURLPX_RECV_REQACK")
                                                     , (17, Data.List.NonEmpty.singleton "CURLPX_REPLY_ADDRESS_TYPE_NOT_SUPPORTED")
                                                     , (18, Data.List.NonEmpty.singleton "CURLPX_REPLY_COMMAND_NOT_SUPPORTED")
                                                     , (19, Data.List.NonEmpty.singleton "CURLPX_REPLY_CONNECTION_REFUSED")
                                                     , (20, Data.List.NonEmpty.singleton "CURLPX_REPLY_GENERAL_SERVER_FAILURE")
                                                     , (21, Data.List.NonEmpty.singleton "CURLPX_REPLY_HOST_UNREACHABLE")
                                                     , (22, Data.List.NonEmpty.singleton "CURLPX_REPLY_NETWORK_UNREACHABLE")
                                                     , (23, Data.List.NonEmpty.singleton "CURLPX_REPLY_NOT_ALLOWED")
                                                     , (24, Data.List.NonEmpty.singleton "CURLPX_REPLY_TTL_EXPIRED")
                                                     , (25, Data.List.NonEmpty.singleton "CURLPX_REPLY_UNASSIGNED")
                                                     , (26, Data.List.NonEmpty.singleton "CURLPX_REQUEST_FAILED")
                                                     , (27, Data.List.NonEmpty.singleton "CURLPX_RESOLVE_HOST")
                                                     , (28, Data.List.NonEmpty.singleton "CURLPX_SEND_AUTH")
                                                     , (29, Data.List.NonEmpty.singleton "CURLPX_SEND_CONNECT")
                                                     , (30, Data.List.NonEmpty.singleton "CURLPX_SEND_REQUEST")
                                                     , (31, Data.List.NonEmpty.singleton "CURLPX_UNKNOWN_FAIL")
                                                     , (32, Data.List.NonEmpty.singleton "CURLPX_UNKNOWN_MODE")
                                                     , (33, Data.List.NonEmpty.singleton "CURLPX_USER_REJECTED")
                                                     , (34, Data.List.NonEmpty.singleton "CURLPX_LAST")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "CURLproxycode"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "CURLproxycode"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum CURLproxycode where

  minDeclaredValue = CURLPX_OK

  maxDeclaredValue = CURLPX_LAST

instance Show CURLproxycode where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read CURLproxycode where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLPX_OK@

    __defined at:__ @curl\/curl.h:742:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_OK :: CURLproxycode
pattern CURLPX_OK = CURLproxycode 0

{-| __C declaration:__ @CURLPX_BAD_ADDRESS_TYPE@

    __defined at:__ @curl\/curl.h:743:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_BAD_ADDRESS_TYPE :: CURLproxycode
pattern CURLPX_BAD_ADDRESS_TYPE = CURLproxycode 1

{-| __C declaration:__ @CURLPX_BAD_VERSION@

    __defined at:__ @curl\/curl.h:744:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_BAD_VERSION :: CURLproxycode
pattern CURLPX_BAD_VERSION = CURLproxycode 2

{-| __C declaration:__ @CURLPX_CLOSED@

    __defined at:__ @curl\/curl.h:745:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_CLOSED :: CURLproxycode
pattern CURLPX_CLOSED = CURLproxycode 3

{-| __C declaration:__ @CURLPX_GSSAPI@

    __defined at:__ @curl\/curl.h:746:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_GSSAPI :: CURLproxycode
pattern CURLPX_GSSAPI = CURLproxycode 4

{-| __C declaration:__ @CURLPX_GSSAPI_PERMSG@

    __defined at:__ @curl\/curl.h:747:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_GSSAPI_PERMSG :: CURLproxycode
pattern CURLPX_GSSAPI_PERMSG = CURLproxycode 5

{-| __C declaration:__ @CURLPX_GSSAPI_PROTECTION@

    __defined at:__ @curl\/curl.h:748:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_GSSAPI_PROTECTION :: CURLproxycode
pattern CURLPX_GSSAPI_PROTECTION = CURLproxycode 6

{-| __C declaration:__ @CURLPX_IDENTD@

    __defined at:__ @curl\/curl.h:749:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_IDENTD :: CURLproxycode
pattern CURLPX_IDENTD = CURLproxycode 7

{-| __C declaration:__ @CURLPX_IDENTD_DIFFER@

    __defined at:__ @curl\/curl.h:750:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_IDENTD_DIFFER :: CURLproxycode
pattern CURLPX_IDENTD_DIFFER = CURLproxycode 8

{-| __C declaration:__ @CURLPX_LONG_HOSTNAME@

    __defined at:__ @curl\/curl.h:751:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_LONG_HOSTNAME :: CURLproxycode
pattern CURLPX_LONG_HOSTNAME = CURLproxycode 9

{-| __C declaration:__ @CURLPX_LONG_PASSWD@

    __defined at:__ @curl\/curl.h:752:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_LONG_PASSWD :: CURLproxycode
pattern CURLPX_LONG_PASSWD = CURLproxycode 10

{-| __C declaration:__ @CURLPX_LONG_USER@

    __defined at:__ @curl\/curl.h:753:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_LONG_USER :: CURLproxycode
pattern CURLPX_LONG_USER = CURLproxycode 11

{-| __C declaration:__ @CURLPX_NO_AUTH@

    __defined at:__ @curl\/curl.h:754:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_NO_AUTH :: CURLproxycode
pattern CURLPX_NO_AUTH = CURLproxycode 12

{-| __C declaration:__ @CURLPX_RECV_ADDRESS@

    __defined at:__ @curl\/curl.h:755:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_RECV_ADDRESS :: CURLproxycode
pattern CURLPX_RECV_ADDRESS = CURLproxycode 13

{-| __C declaration:__ @CURLPX_RECV_AUTH@

    __defined at:__ @curl\/curl.h:756:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_RECV_AUTH :: CURLproxycode
pattern CURLPX_RECV_AUTH = CURLproxycode 14

{-| __C declaration:__ @CURLPX_RECV_CONNECT@

    __defined at:__ @curl\/curl.h:757:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_RECV_CONNECT :: CURLproxycode
pattern CURLPX_RECV_CONNECT = CURLproxycode 15

{-| __C declaration:__ @CURLPX_RECV_REQACK@

    __defined at:__ @curl\/curl.h:758:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_RECV_REQACK :: CURLproxycode
pattern CURLPX_RECV_REQACK = CURLproxycode 16

{-| __C declaration:__ @CURLPX_REPLY_ADDRESS_TYPE_NOT_SUPPORTED@

    __defined at:__ @curl\/curl.h:759:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_REPLY_ADDRESS_TYPE_NOT_SUPPORTED :: CURLproxycode
pattern CURLPX_REPLY_ADDRESS_TYPE_NOT_SUPPORTED = CURLproxycode 17

{-| __C declaration:__ @CURLPX_REPLY_COMMAND_NOT_SUPPORTED@

    __defined at:__ @curl\/curl.h:760:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_REPLY_COMMAND_NOT_SUPPORTED :: CURLproxycode
pattern CURLPX_REPLY_COMMAND_NOT_SUPPORTED = CURLproxycode 18

{-| __C declaration:__ @CURLPX_REPLY_CONNECTION_REFUSED@

    __defined at:__ @curl\/curl.h:761:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_REPLY_CONNECTION_REFUSED :: CURLproxycode
pattern CURLPX_REPLY_CONNECTION_REFUSED = CURLproxycode 19

{-| __C declaration:__ @CURLPX_REPLY_GENERAL_SERVER_FAILURE@

    __defined at:__ @curl\/curl.h:762:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_REPLY_GENERAL_SERVER_FAILURE :: CURLproxycode
pattern CURLPX_REPLY_GENERAL_SERVER_FAILURE = CURLproxycode 20

{-| __C declaration:__ @CURLPX_REPLY_HOST_UNREACHABLE@

    __defined at:__ @curl\/curl.h:763:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_REPLY_HOST_UNREACHABLE :: CURLproxycode
pattern CURLPX_REPLY_HOST_UNREACHABLE = CURLproxycode 21

{-| __C declaration:__ @CURLPX_REPLY_NETWORK_UNREACHABLE@

    __defined at:__ @curl\/curl.h:764:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_REPLY_NETWORK_UNREACHABLE :: CURLproxycode
pattern CURLPX_REPLY_NETWORK_UNREACHABLE = CURLproxycode 22

{-| __C declaration:__ @CURLPX_REPLY_NOT_ALLOWED@

    __defined at:__ @curl\/curl.h:765:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_REPLY_NOT_ALLOWED :: CURLproxycode
pattern CURLPX_REPLY_NOT_ALLOWED = CURLproxycode 23

{-| __C declaration:__ @CURLPX_REPLY_TTL_EXPIRED@

    __defined at:__ @curl\/curl.h:766:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_REPLY_TTL_EXPIRED :: CURLproxycode
pattern CURLPX_REPLY_TTL_EXPIRED = CURLproxycode 24

{-| __C declaration:__ @CURLPX_REPLY_UNASSIGNED@

    __defined at:__ @curl\/curl.h:767:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_REPLY_UNASSIGNED :: CURLproxycode
pattern CURLPX_REPLY_UNASSIGNED = CURLproxycode 25

{-| __C declaration:__ @CURLPX_REQUEST_FAILED@

    __defined at:__ @curl\/curl.h:768:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_REQUEST_FAILED :: CURLproxycode
pattern CURLPX_REQUEST_FAILED = CURLproxycode 26

{-| __C declaration:__ @CURLPX_RESOLVE_HOST@

    __defined at:__ @curl\/curl.h:769:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_RESOLVE_HOST :: CURLproxycode
pattern CURLPX_RESOLVE_HOST = CURLproxycode 27

{-| __C declaration:__ @CURLPX_SEND_AUTH@

    __defined at:__ @curl\/curl.h:770:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_SEND_AUTH :: CURLproxycode
pattern CURLPX_SEND_AUTH = CURLproxycode 28

{-| __C declaration:__ @CURLPX_SEND_CONNECT@

    __defined at:__ @curl\/curl.h:771:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_SEND_CONNECT :: CURLproxycode
pattern CURLPX_SEND_CONNECT = CURLproxycode 29

{-| __C declaration:__ @CURLPX_SEND_REQUEST@

    __defined at:__ @curl\/curl.h:772:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_SEND_REQUEST :: CURLproxycode
pattern CURLPX_SEND_REQUEST = CURLproxycode 30

{-| __C declaration:__ @CURLPX_UNKNOWN_FAIL@

    __defined at:__ @curl\/curl.h:773:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_UNKNOWN_FAIL :: CURLproxycode
pattern CURLPX_UNKNOWN_FAIL = CURLproxycode 31

{-| __C declaration:__ @CURLPX_UNKNOWN_MODE@

    __defined at:__ @curl\/curl.h:774:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_UNKNOWN_MODE :: CURLproxycode
pattern CURLPX_UNKNOWN_MODE = CURLproxycode 32

{-| __C declaration:__ @CURLPX_USER_REJECTED@

    __defined at:__ @curl\/curl.h:775:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_USER_REJECTED :: CURLproxycode
pattern CURLPX_USER_REJECTED = CURLproxycode 33

{-| __C declaration:__ @CURLPX_LAST@

    __defined at:__ @curl\/curl.h:776:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPX_LAST :: CURLproxycode
pattern CURLPX_LAST = CURLproxycode 34

{-| Auxiliary type used by 'Curl_conv_callback'

__defined at:__ @curl\/curl.h:780:20@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_conv_callback_Deref = Curl_conv_callback_Deref
  { un_Curl_conv_callback_Deref :: (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO CURLcode
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_conv_callback_Deref ::
     Curl_conv_callback_Deref
  -> IO (Ptr.FunPtr Curl_conv_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_conv_callback_Deref ::
     Ptr.FunPtr Curl_conv_callback_Deref
  -> Curl_conv_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_conv_callback_Deref where

  toFunPtr = toCurl_conv_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_conv_callback_Deref where

  fromFunPtr = fromCurl_conv_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_conv_callback_Deref) "un_Curl_conv_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_conv_callback_Deref" (Ptr.Ptr Curl_conv_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_conv_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_conv_callback_Deref "un_Curl_conv_callback_Deref" where

  type CFieldType Curl_conv_callback_Deref "un_Curl_conv_callback_Deref" =
    (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO CURLcode

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_conv_callback@

    __defined at:__ @curl\/curl.h:780:20@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_conv_callback = Curl_conv_callback
  { un_Curl_conv_callback :: Ptr.FunPtr Curl_conv_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_conv_callback) "un_Curl_conv_callback")
         ) => GHC.Records.HasField "un_Curl_conv_callback" (Ptr.Ptr Curl_conv_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_conv_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_conv_callback "un_Curl_conv_callback" where

  type CFieldType Curl_conv_callback "un_Curl_conv_callback" =
    Ptr.FunPtr Curl_conv_callback_Deref

  offset# = \_ -> \_ -> 0

{-| Auxiliary type used by 'Curl_ssl_ctx_callback'

__defined at:__ @curl\/curl.h:782:20@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_ssl_ctx_callback_Deref = Curl_ssl_ctx_callback_Deref
  { un_Curl_ssl_ctx_callback_Deref :: (Ptr.Ptr Void) -> (Ptr.Ptr Void) -> (Ptr.Ptr Void) -> IO CURLcode
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_ssl_ctx_callback_Deref ::
     Curl_ssl_ctx_callback_Deref
  -> IO (Ptr.FunPtr Curl_ssl_ctx_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_ssl_ctx_callback_Deref ::
     Ptr.FunPtr Curl_ssl_ctx_callback_Deref
  -> Curl_ssl_ctx_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_ssl_ctx_callback_Deref where

  toFunPtr = toCurl_ssl_ctx_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_ssl_ctx_callback_Deref where

  fromFunPtr = fromCurl_ssl_ctx_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_ssl_ctx_callback_Deref) "un_Curl_ssl_ctx_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_ssl_ctx_callback_Deref" (Ptr.Ptr Curl_ssl_ctx_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_ssl_ctx_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_ssl_ctx_callback_Deref "un_Curl_ssl_ctx_callback_Deref" where

  type CFieldType Curl_ssl_ctx_callback_Deref "un_Curl_ssl_ctx_callback_Deref" =
    (Ptr.Ptr Void) -> (Ptr.Ptr Void) -> (Ptr.Ptr Void) -> IO CURLcode

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_ssl_ctx_callback@

    __defined at:__ @curl\/curl.h:782:20@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_ssl_ctx_callback = Curl_ssl_ctx_callback
  { un_Curl_ssl_ctx_callback :: Ptr.FunPtr Curl_ssl_ctx_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_ssl_ctx_callback) "un_Curl_ssl_ctx_callback")
         ) => GHC.Records.HasField "un_Curl_ssl_ctx_callback" (Ptr.Ptr Curl_ssl_ctx_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_ssl_ctx_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_ssl_ctx_callback "un_Curl_ssl_ctx_callback" where

  type CFieldType Curl_ssl_ctx_callback "un_Curl_ssl_ctx_callback" =
    Ptr.FunPtr Curl_ssl_ctx_callback_Deref

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @CURLPROXY_HTTP@

    __defined at:__ @curl\/curl.h:789:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROXY_HTTP :: FC.CLong
cURLPROXY_HTTP = (0 :: FC.CLong)

{-| __C declaration:__ @CURLPROXY_HTTP_1_0@

    __defined at:__ @curl\/curl.h:791:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROXY_HTTP_1_0 :: FC.CLong
cURLPROXY_HTTP_1_0 = (1 :: FC.CLong)

{-| __C declaration:__ @CURLPROXY_HTTPS@

    __defined at:__ @curl\/curl.h:793:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROXY_HTTPS :: FC.CLong
cURLPROXY_HTTPS = (2 :: FC.CLong)

{-| __C declaration:__ @CURLPROXY_HTTPS2@

    __defined at:__ @curl\/curl.h:795:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROXY_HTTPS2 :: FC.CLong
cURLPROXY_HTTPS2 = (3 :: FC.CLong)

{-| __C declaration:__ @CURLPROXY_SOCKS4@

    __defined at:__ @curl\/curl.h:797:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROXY_SOCKS4 :: FC.CLong
cURLPROXY_SOCKS4 = (4 :: FC.CLong)

{-| __C declaration:__ @CURLPROXY_SOCKS5@

    __defined at:__ @curl\/curl.h:799:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROXY_SOCKS5 :: FC.CLong
cURLPROXY_SOCKS5 = (5 :: FC.CLong)

{-| __C declaration:__ @CURLPROXY_SOCKS4A@

    __defined at:__ @curl\/curl.h:800:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROXY_SOCKS4A :: FC.CLong
cURLPROXY_SOCKS4A = (6 :: FC.CLong)

{-| __C declaration:__ @CURLPROXY_SOCKS5_HOSTNAME@

    __defined at:__ @curl\/curl.h:801:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROXY_SOCKS5_HOSTNAME :: FC.CLong
cURLPROXY_SOCKS5_HOSTNAME = (7 :: FC.CLong)

{-| __C declaration:__ @curl_proxytype@

    __defined at:__ @curl\/curl.h:805:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_proxytype = Curl_proxytype
  { un_Curl_proxytype :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable Curl_proxytype where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Curl_proxytype
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_proxytype un_Curl_proxytype2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_Curl_proxytype2

instance HsBindgen.Runtime.CEnum.CEnum Curl_proxytype where

  type CEnumZ Curl_proxytype = FC.CUInt

  toCEnum = Curl_proxytype

  fromCEnum = un_Curl_proxytype

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [(8, Data.List.NonEmpty.singleton "CURLPROXY_LAST")]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "Curl_proxytype"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "Curl_proxytype"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum Curl_proxytype where

  minDeclaredValue = CURLPROXY_LAST

  maxDeclaredValue = CURLPROXY_LAST

instance Show Curl_proxytype where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read Curl_proxytype where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLPROXY_LAST@

    __defined at:__ @curl\/curl.h:806:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLPROXY_LAST :: Curl_proxytype
pattern CURLPROXY_LAST = Curl_proxytype 8

{-| __C declaration:__ @CURLSSH_AUTH_ANY@

    __defined at:__ @curl\/curl.h:847:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLSSH_AUTH_ANY :: FC.CLong
cURLSSH_AUTH_ANY = (C..~) (0 :: FC.CLong)

{-| __C declaration:__ @CURLSSH_AUTH_NONE@

    __defined at:__ @curl\/curl.h:848:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLSSH_AUTH_NONE :: FC.CLong
cURLSSH_AUTH_NONE = (0 :: FC.CLong)

{-| __C declaration:__ @CURLSSH_AUTH_PUBLICKEY@

    __defined at:__ @curl\/curl.h:849:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLSSH_AUTH_PUBLICKEY :: FC.CLong
cURLSSH_AUTH_PUBLICKEY =
  (C.<<) (1 :: FC.CLong) (0 :: FC.CInt)

{-| __C declaration:__ @CURLSSH_AUTH_PASSWORD@

    __defined at:__ @curl\/curl.h:850:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLSSH_AUTH_PASSWORD :: FC.CLong
cURLSSH_AUTH_PASSWORD =
  (C.<<) (1 :: FC.CLong) (1 :: FC.CInt)

{-| __C declaration:__ @CURLSSH_AUTH_HOST@

    __defined at:__ @curl\/curl.h:851:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLSSH_AUTH_HOST :: FC.CLong
cURLSSH_AUTH_HOST =
  (C.<<) (1 :: FC.CLong) (2 :: FC.CInt)

{-| __C declaration:__ @CURLSSH_AUTH_KEYBOARD@

    __defined at:__ @curl\/curl.h:852:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLSSH_AUTH_KEYBOARD :: FC.CLong
cURLSSH_AUTH_KEYBOARD =
  (C.<<) (1 :: FC.CLong) (3 :: FC.CInt)

{-| __C declaration:__ @CURLSSH_AUTH_AGENT@

    __defined at:__ @curl\/curl.h:853:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLSSH_AUTH_AGENT :: FC.CLong
cURLSSH_AUTH_AGENT =
  (C.<<) (1 :: FC.CLong) (4 :: FC.CInt)

{-| __C declaration:__ @CURLSSH_AUTH_GSSAPI@

    __defined at:__ @curl\/curl.h:854:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLSSH_AUTH_GSSAPI :: FC.CLong
cURLSSH_AUTH_GSSAPI =
  (C.<<) (1 :: FC.CLong) (5 :: FC.CInt)

{-| __C declaration:__ @CURLSSH_AUTH_DEFAULT@

    __defined at:__ @curl\/curl.h:855:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLSSH_AUTH_DEFAULT :: FC.CLong
cURLSSH_AUTH_DEFAULT = cURLSSH_AUTH_ANY

{-| __C declaration:__ @CURLGSSAPI_DELEGATION_NONE@

    __defined at:__ @curl\/curl.h:857:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLGSSAPI_DELEGATION_NONE :: FC.CLong
cURLGSSAPI_DELEGATION_NONE = (0 :: FC.CLong)

{-| __C declaration:__ @CURLGSSAPI_DELEGATION_POLICY_FLAG@

    __defined at:__ @curl\/curl.h:858:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLGSSAPI_DELEGATION_POLICY_FLAG :: FC.CLong
cURLGSSAPI_DELEGATION_POLICY_FLAG =
  (C.<<) (1 :: FC.CLong) (0 :: FC.CInt)

{-| __C declaration:__ @CURLGSSAPI_DELEGATION_FLAG@

    __defined at:__ @curl\/curl.h:859:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLGSSAPI_DELEGATION_FLAG :: FC.CLong
cURLGSSAPI_DELEGATION_FLAG =
  (C.<<) (1 :: FC.CLong) (1 :: FC.CInt)

{-| __C declaration:__ @CURL_ERROR_SIZE@

    __defined at:__ @curl\/curl.h:861:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_ERROR_SIZE :: FC.CInt
cURL_ERROR_SIZE = (256 :: FC.CInt)

{-| __C declaration:__ @curl_khtype@

    __defined at:__ @curl\/curl.h:863:6@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_khtype = Curl_khtype
  { un_Curl_khtype :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable Curl_khtype where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Curl_khtype
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_khtype un_Curl_khtype2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_Curl_khtype2

instance HsBindgen.Runtime.CEnum.CEnum Curl_khtype where

  type CEnumZ Curl_khtype = FC.CUInt

  toCEnum = Curl_khtype

  fromCEnum = un_Curl_khtype

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLKHTYPE_UNKNOWN")
                                                     , (1, Data.List.NonEmpty.singleton "CURLKHTYPE_RSA1")
                                                     , (2, Data.List.NonEmpty.singleton "CURLKHTYPE_RSA")
                                                     , (3, Data.List.NonEmpty.singleton "CURLKHTYPE_DSS")
                                                     , (4, Data.List.NonEmpty.singleton "CURLKHTYPE_ECDSA")
                                                     , (5, Data.List.NonEmpty.singleton "CURLKHTYPE_ED25519")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "Curl_khtype"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "Curl_khtype"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum Curl_khtype where

  minDeclaredValue = CURLKHTYPE_UNKNOWN

  maxDeclaredValue = CURLKHTYPE_ED25519

instance Show Curl_khtype where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read Curl_khtype where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLKHTYPE_UNKNOWN@

    __defined at:__ @curl\/curl.h:864:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLKHTYPE_UNKNOWN :: Curl_khtype
pattern CURLKHTYPE_UNKNOWN = Curl_khtype 0

{-| __C declaration:__ @CURLKHTYPE_RSA1@

    __defined at:__ @curl\/curl.h:865:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLKHTYPE_RSA1 :: Curl_khtype
pattern CURLKHTYPE_RSA1 = Curl_khtype 1

{-| __C declaration:__ @CURLKHTYPE_RSA@

    __defined at:__ @curl\/curl.h:866:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLKHTYPE_RSA :: Curl_khtype
pattern CURLKHTYPE_RSA = Curl_khtype 2

{-| __C declaration:__ @CURLKHTYPE_DSS@

    __defined at:__ @curl\/curl.h:867:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLKHTYPE_DSS :: Curl_khtype
pattern CURLKHTYPE_DSS = Curl_khtype 3

{-| __C declaration:__ @CURLKHTYPE_ECDSA@

    __defined at:__ @curl\/curl.h:868:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLKHTYPE_ECDSA :: Curl_khtype
pattern CURLKHTYPE_ECDSA = Curl_khtype 4

{-| __C declaration:__ @CURLKHTYPE_ED25519@

    __defined at:__ @curl\/curl.h:869:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLKHTYPE_ED25519 :: Curl_khtype
pattern CURLKHTYPE_ED25519 = Curl_khtype 5

{-| __C declaration:__ @curl_khkey@

    __defined at:__ @curl\/curl.h:872:8@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
data Curl_khkey = Curl_khkey
  { curl_khkey_key :: HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
    {- ^ __C declaration:__ @key@

         __defined at:__ @curl\/curl.h:873:15@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_khkey_len :: HsBindgen.Runtime.Prelude.CSize
    {- ^ __C declaration:__ @len@

         __defined at:__ @curl\/curl.h:875:10@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_khkey_keytype :: Curl_khtype
    {- ^ __C declaration:__ @keytype@

         __defined at:__ @curl\/curl.h:876:20@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  }
  deriving stock (Eq, Show)

instance F.Storable Curl_khkey where

  sizeOf = \_ -> (24 :: Int)

  alignment = \_ -> (8 :: Int)

  peek =
    \ptr0 ->
          pure Curl_khkey
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_khkey_key") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_khkey_len") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_khkey_keytype") ptr0

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_khkey curl_khkey_key2 curl_khkey_len3 curl_khkey_keytype4 ->
               HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_khkey_key") ptr0 curl_khkey_key2
            >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_khkey_len") ptr0 curl_khkey_len3
            >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_khkey_keytype") ptr0 curl_khkey_keytype4

instance HsBindgen.Runtime.HasCField.HasCField Curl_khkey "curl_khkey_key" where

  type CFieldType Curl_khkey "curl_khkey_key" =
    HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar

  offset# = \_ -> \_ -> 0

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_khkey) "curl_khkey_key")
         ) => GHC.Records.HasField "curl_khkey_key" (Ptr.Ptr Curl_khkey) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_khkey_key")

instance HsBindgen.Runtime.HasCField.HasCField Curl_khkey "curl_khkey_len" where

  type CFieldType Curl_khkey "curl_khkey_len" =
    HsBindgen.Runtime.Prelude.CSize

  offset# = \_ -> \_ -> 8

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_khkey) "curl_khkey_len")
         ) => GHC.Records.HasField "curl_khkey_len" (Ptr.Ptr Curl_khkey) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_khkey_len")

instance HsBindgen.Runtime.HasCField.HasCField Curl_khkey "curl_khkey_keytype" where

  type CFieldType Curl_khkey "curl_khkey_keytype" =
    Curl_khtype

  offset# = \_ -> \_ -> 16

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_khkey) "curl_khkey_keytype")
         ) => GHC.Records.HasField "curl_khkey_keytype" (Ptr.Ptr Curl_khkey) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_khkey_keytype")

{-| __C declaration:__ @curl_khstat@

    __defined at:__ @curl\/curl.h:881:6@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_khstat = Curl_khstat
  { un_Curl_khstat :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable Curl_khstat where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Curl_khstat
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_khstat un_Curl_khstat2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_Curl_khstat2

instance HsBindgen.Runtime.CEnum.CEnum Curl_khstat where

  type CEnumZ Curl_khstat = FC.CUInt

  toCEnum = Curl_khstat

  fromCEnum = un_Curl_khstat

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLKHSTAT_FINE_ADD_TO_FILE")
                                                     , (1, Data.List.NonEmpty.singleton "CURLKHSTAT_FINE")
                                                     , (2, Data.List.NonEmpty.singleton "CURLKHSTAT_REJECT")
                                                     , (3, Data.List.NonEmpty.singleton "CURLKHSTAT_DEFER")
                                                     , (4, Data.List.NonEmpty.singleton "CURLKHSTAT_FINE_REPLACE")
                                                     , (5, Data.List.NonEmpty.singleton "CURLKHSTAT_LAST")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "Curl_khstat"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "Curl_khstat"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum Curl_khstat where

  minDeclaredValue = CURLKHSTAT_FINE_ADD_TO_FILE

  maxDeclaredValue = CURLKHSTAT_LAST

instance Show Curl_khstat where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read Curl_khstat where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLKHSTAT_FINE_ADD_TO_FILE@

    __defined at:__ @curl\/curl.h:882:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLKHSTAT_FINE_ADD_TO_FILE :: Curl_khstat
pattern CURLKHSTAT_FINE_ADD_TO_FILE = Curl_khstat 0

{-| __C declaration:__ @CURLKHSTAT_FINE@

    __defined at:__ @curl\/curl.h:883:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLKHSTAT_FINE :: Curl_khstat
pattern CURLKHSTAT_FINE = Curl_khstat 1

{-| __C declaration:__ @CURLKHSTAT_REJECT@

    __defined at:__ @curl\/curl.h:884:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLKHSTAT_REJECT :: Curl_khstat
pattern CURLKHSTAT_REJECT = Curl_khstat 2

{-| __C declaration:__ @CURLKHSTAT_DEFER@

    __defined at:__ @curl\/curl.h:885:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLKHSTAT_DEFER :: Curl_khstat
pattern CURLKHSTAT_DEFER = Curl_khstat 3

{-| __C declaration:__ @CURLKHSTAT_FINE_REPLACE@

    __defined at:__ @curl\/curl.h:888:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLKHSTAT_FINE_REPLACE :: Curl_khstat
pattern CURLKHSTAT_FINE_REPLACE = Curl_khstat 4

{-| __C declaration:__ @CURLKHSTAT_LAST@

    __defined at:__ @curl\/curl.h:889:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLKHSTAT_LAST :: Curl_khstat
pattern CURLKHSTAT_LAST = Curl_khstat 5

{-| __C declaration:__ @curl_khmatch@

    __defined at:__ @curl\/curl.h:893:6@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_khmatch = Curl_khmatch
  { un_Curl_khmatch :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable Curl_khmatch where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Curl_khmatch
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_khmatch un_Curl_khmatch2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_Curl_khmatch2

instance HsBindgen.Runtime.CEnum.CEnum Curl_khmatch where

  type CEnumZ Curl_khmatch = FC.CUInt

  toCEnum = Curl_khmatch

  fromCEnum = un_Curl_khmatch

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLKHMATCH_OK")
                                                     , (1, Data.List.NonEmpty.singleton "CURLKHMATCH_MISMATCH")
                                                     , (2, Data.List.NonEmpty.singleton "CURLKHMATCH_MISSING")
                                                     , (3, Data.List.NonEmpty.singleton "CURLKHMATCH_LAST")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "Curl_khmatch"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "Curl_khmatch"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum Curl_khmatch where

  minDeclaredValue = CURLKHMATCH_OK

  maxDeclaredValue = CURLKHMATCH_LAST

instance Show Curl_khmatch where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read Curl_khmatch where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLKHMATCH_OK@

    __defined at:__ @curl\/curl.h:894:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLKHMATCH_OK :: Curl_khmatch
pattern CURLKHMATCH_OK = Curl_khmatch 0

{-| __C declaration:__ @CURLKHMATCH_MISMATCH@

    __defined at:__ @curl\/curl.h:895:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLKHMATCH_MISMATCH :: Curl_khmatch
pattern CURLKHMATCH_MISMATCH = Curl_khmatch 1

{-| __C declaration:__ @CURLKHMATCH_MISSING@

    __defined at:__ @curl\/curl.h:896:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLKHMATCH_MISSING :: Curl_khmatch
pattern CURLKHMATCH_MISSING = Curl_khmatch 2

{-| __C declaration:__ @CURLKHMATCH_LAST@

    __defined at:__ @curl\/curl.h:897:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLKHMATCH_LAST :: Curl_khmatch
pattern CURLKHMATCH_LAST = Curl_khmatch 3

{-| Auxiliary type used by 'Curl_sshkeycallback'

__defined at:__ @curl\/curl.h:901:5@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_sshkeycallback_Deref = Curl_sshkeycallback_Deref
  { un_Curl_sshkeycallback_Deref :: (Ptr.Ptr Void) -> (HsBindgen.Runtime.ConstPtr.ConstPtr Curl_khkey) -> (HsBindgen.Runtime.ConstPtr.ConstPtr Curl_khkey) -> Curl_khmatch -> (Ptr.Ptr Void) -> IO FC.CInt
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_sshkeycallback_Deref ::
     Curl_sshkeycallback_Deref
  -> IO (Ptr.FunPtr Curl_sshkeycallback_Deref)

foreign import ccall safe "dynamic" fromCurl_sshkeycallback_Deref ::
     Ptr.FunPtr Curl_sshkeycallback_Deref
  -> Curl_sshkeycallback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_sshkeycallback_Deref where

  toFunPtr = toCurl_sshkeycallback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_sshkeycallback_Deref where

  fromFunPtr = fromCurl_sshkeycallback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_sshkeycallback_Deref) "un_Curl_sshkeycallback_Deref")
         ) => GHC.Records.HasField "un_Curl_sshkeycallback_Deref" (Ptr.Ptr Curl_sshkeycallback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_sshkeycallback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_sshkeycallback_Deref "un_Curl_sshkeycallback_Deref" where

  type CFieldType Curl_sshkeycallback_Deref "un_Curl_sshkeycallback_Deref" =
    (Ptr.Ptr Void) -> (HsBindgen.Runtime.ConstPtr.ConstPtr Curl_khkey) -> (HsBindgen.Runtime.ConstPtr.ConstPtr Curl_khkey) -> Curl_khmatch -> (Ptr.Ptr Void) -> IO FC.CInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_sshkeycallback@

    __defined at:__ @curl\/curl.h:901:5@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_sshkeycallback = Curl_sshkeycallback
  { un_Curl_sshkeycallback :: Ptr.FunPtr Curl_sshkeycallback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_sshkeycallback) "un_Curl_sshkeycallback")
         ) => GHC.Records.HasField "un_Curl_sshkeycallback" (Ptr.Ptr Curl_sshkeycallback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_sshkeycallback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_sshkeycallback "un_Curl_sshkeycallback" where

  type CFieldType Curl_sshkeycallback "un_Curl_sshkeycallback" =
    Ptr.FunPtr Curl_sshkeycallback_Deref

  offset# = \_ -> \_ -> 0

{-| Auxiliary type used by 'Curl_sshhostkeycallback'

__defined at:__ @curl\/curl.h:909:5@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_sshhostkeycallback_Deref = Curl_sshhostkeycallback_Deref
  { un_Curl_sshhostkeycallback_Deref :: (Ptr.Ptr Void) -> FC.CInt -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_sshhostkeycallback_Deref ::
     Curl_sshhostkeycallback_Deref
  -> IO (Ptr.FunPtr Curl_sshhostkeycallback_Deref)

foreign import ccall safe "dynamic" fromCurl_sshhostkeycallback_Deref ::
     Ptr.FunPtr Curl_sshhostkeycallback_Deref
  -> Curl_sshhostkeycallback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_sshhostkeycallback_Deref where

  toFunPtr = toCurl_sshhostkeycallback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_sshhostkeycallback_Deref where

  fromFunPtr = fromCurl_sshhostkeycallback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_sshhostkeycallback_Deref) "un_Curl_sshhostkeycallback_Deref")
         ) => GHC.Records.HasField "un_Curl_sshhostkeycallback_Deref" (Ptr.Ptr Curl_sshhostkeycallback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_sshhostkeycallback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_sshhostkeycallback_Deref "un_Curl_sshhostkeycallback_Deref" where

  type CFieldType Curl_sshhostkeycallback_Deref "un_Curl_sshhostkeycallback_Deref" =
    (Ptr.Ptr Void) -> FC.CInt -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_sshhostkeycallback@

    __defined at:__ @curl\/curl.h:909:5@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_sshhostkeycallback = Curl_sshhostkeycallback
  { un_Curl_sshhostkeycallback :: Ptr.FunPtr Curl_sshhostkeycallback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_sshhostkeycallback) "un_Curl_sshhostkeycallback")
         ) => GHC.Records.HasField "un_Curl_sshhostkeycallback" (Ptr.Ptr Curl_sshhostkeycallback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_sshhostkeycallback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_sshhostkeycallback "un_Curl_sshhostkeycallback" where

  type CFieldType Curl_sshhostkeycallback "un_Curl_sshhostkeycallback" =
    Ptr.FunPtr Curl_sshhostkeycallback_Deref

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @CURLUSESSL_NONE@

    __defined at:__ @curl\/curl.h:919:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLUSESSL_NONE :: FC.CLong
cURLUSESSL_NONE = (0 :: FC.CLong)

{-| __C declaration:__ @CURLUSESSL_TRY@

    __defined at:__ @curl\/curl.h:920:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLUSESSL_TRY :: FC.CLong
cURLUSESSL_TRY = (1 :: FC.CLong)

{-| __C declaration:__ @CURLUSESSL_CONTROL@

    __defined at:__ @curl\/curl.h:921:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLUSESSL_CONTROL :: FC.CLong
cURLUSESSL_CONTROL = (2 :: FC.CLong)

{-| __C declaration:__ @CURLUSESSL_ALL@

    __defined at:__ @curl\/curl.h:922:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLUSESSL_ALL :: FC.CLong
cURLUSESSL_ALL = (3 :: FC.CLong)

{-| __C declaration:__ @curl_usessl@

    __defined at:__ @curl\/curl.h:924:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_usessl = Curl_usessl
  { un_Curl_usessl :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable Curl_usessl where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Curl_usessl
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_usessl un_Curl_usessl2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_Curl_usessl2

instance HsBindgen.Runtime.CEnum.CEnum Curl_usessl where

  type CEnumZ Curl_usessl = FC.CUInt

  toCEnum = Curl_usessl

  fromCEnum = un_Curl_usessl

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [(4, Data.List.NonEmpty.singleton "CURLUSESSL_LAST")]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "Curl_usessl"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "Curl_usessl"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum Curl_usessl where

  minDeclaredValue = CURLUSESSL_LAST

  maxDeclaredValue = CURLUSESSL_LAST

instance Show Curl_usessl where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read Curl_usessl where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLUSESSL_LAST@

    __defined at:__ @curl\/curl.h:925:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLUSESSL_LAST :: Curl_usessl
pattern CURLUSESSL_LAST = Curl_usessl 4

{-| __C declaration:__ @CURLSSLOPT_ALLOW_BEAST@

    __defined at:__ @curl\/curl.h:935:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLSSLOPT_ALLOW_BEAST :: FC.CLong
cURLSSLOPT_ALLOW_BEAST =
  (C.<<) (1 :: FC.CLong) (0 :: FC.CInt)

{-| __C declaration:__ @CURLSSLOPT_NO_REVOKE@

    __defined at:__ @curl\/curl.h:939:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLSSLOPT_NO_REVOKE :: FC.CLong
cURLSSLOPT_NO_REVOKE =
  (C.<<) (1 :: FC.CLong) (1 :: FC.CInt)

{-| __C declaration:__ @CURLSSLOPT_NO_PARTIALCHAIN@

    __defined at:__ @curl\/curl.h:943:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLSSLOPT_NO_PARTIALCHAIN :: FC.CLong
cURLSSLOPT_NO_PARTIALCHAIN =
  (C.<<) (1 :: FC.CLong) (2 :: FC.CInt)

{-| __C declaration:__ @CURLSSLOPT_REVOKE_BEST_EFFORT@

    __defined at:__ @curl\/curl.h:948:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLSSLOPT_REVOKE_BEST_EFFORT :: FC.CLong
cURLSSLOPT_REVOKE_BEST_EFFORT =
  (C.<<) (1 :: FC.CLong) (3 :: FC.CInt)

{-| __C declaration:__ @CURLSSLOPT_NATIVE_CA@

    __defined at:__ @curl\/curl.h:952:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLSSLOPT_NATIVE_CA :: FC.CLong
cURLSSLOPT_NATIVE_CA =
  (C.<<) (1 :: FC.CLong) (4 :: FC.CInt)

{-| __C declaration:__ @CURLSSLOPT_AUTO_CLIENT_CERT@

    __defined at:__ @curl\/curl.h:956:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLSSLOPT_AUTO_CLIENT_CERT :: FC.CLong
cURLSSLOPT_AUTO_CLIENT_CERT =
  (C.<<) (1 :: FC.CLong) (5 :: FC.CInt)

{-| __C declaration:__ @CURLSSLOPT_EARLYDATA@

    __defined at:__ @curl\/curl.h:959:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLSSLOPT_EARLYDATA :: FC.CLong
cURLSSLOPT_EARLYDATA =
  (C.<<) (1 :: FC.CLong) (6 :: FC.CInt)

{-| __C declaration:__ @CURL_HET_DEFAULT@

    __defined at:__ @curl\/curl.h:964:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_HET_DEFAULT :: FC.CLong
cURL_HET_DEFAULT = (200 :: FC.CLong)

{-| __C declaration:__ @CURL_UPKEEP_INTERVAL_DEFAULT@

    __defined at:__ @curl\/curl.h:967:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_UPKEEP_INTERVAL_DEFAULT :: FC.CLong
cURL_UPKEEP_INTERVAL_DEFAULT = (60000 :: FC.CLong)

{-| __C declaration:__ @CURLFTPSSL_NONE@

    __defined at:__ @curl\/curl.h:975:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFTPSSL_NONE :: FC.CLong
cURLFTPSSL_NONE = cURLUSESSL_NONE

{-| __C declaration:__ @CURLFTPSSL_TRY@

    __defined at:__ @curl\/curl.h:976:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFTPSSL_TRY :: FC.CLong
cURLFTPSSL_TRY = cURLUSESSL_TRY

{-| __C declaration:__ @CURLFTPSSL_CONTROL@

    __defined at:__ @curl\/curl.h:977:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFTPSSL_CONTROL :: FC.CLong
cURLFTPSSL_CONTROL = cURLUSESSL_CONTROL

{-| __C declaration:__ @CURLFTPSSL_ALL@

    __defined at:__ @curl\/curl.h:978:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFTPSSL_ALL :: FC.CLong
cURLFTPSSL_ALL = cURLUSESSL_ALL

{-| __C declaration:__ @curl_ftpssl@

    __defined at:__ @curl\/curl.h:980:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_ftpssl = Curl_ftpssl
  { un_Curl_ftpssl :: Curl_usessl
  }
  deriving stock (Eq, Ord, Read, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

{-| __C declaration:__ @CURLFTPSSL_CCC_NONE@

    __defined at:__ @curl\/curl.h:984:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFTPSSL_CCC_NONE :: FC.CLong
cURLFTPSSL_CCC_NONE = (0 :: FC.CLong)

{-| __C declaration:__ @CURLFTPSSL_CCC_PASSIVE@

    __defined at:__ @curl\/curl.h:985:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFTPSSL_CCC_PASSIVE :: FC.CLong
cURLFTPSSL_CCC_PASSIVE = (1 :: FC.CLong)

{-| __C declaration:__ @CURLFTPSSL_CCC_ACTIVE@

    __defined at:__ @curl\/curl.h:986:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFTPSSL_CCC_ACTIVE :: FC.CLong
cURLFTPSSL_CCC_ACTIVE = (2 :: FC.CLong)

{-| __C declaration:__ @curl_ftpccc@

    __defined at:__ @curl\/curl.h:988:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_ftpccc = Curl_ftpccc
  { un_Curl_ftpccc :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable Curl_ftpccc where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Curl_ftpccc
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_ftpccc un_Curl_ftpccc2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_Curl_ftpccc2

instance HsBindgen.Runtime.CEnum.CEnum Curl_ftpccc where

  type CEnumZ Curl_ftpccc = FC.CUInt

  toCEnum = Curl_ftpccc

  fromCEnum = un_Curl_ftpccc

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [(3, Data.List.NonEmpty.singleton "CURLFTPSSL_CCC_LAST")]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "Curl_ftpccc"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "Curl_ftpccc"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum Curl_ftpccc where

  minDeclaredValue = CURLFTPSSL_CCC_LAST

  maxDeclaredValue = CURLFTPSSL_CCC_LAST

instance Show Curl_ftpccc where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read Curl_ftpccc where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLFTPSSL_CCC_LAST@

    __defined at:__ @curl\/curl.h:989:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFTPSSL_CCC_LAST :: Curl_ftpccc
pattern CURLFTPSSL_CCC_LAST = Curl_ftpccc 3

{-| __C declaration:__ @CURLFTPAUTH_DEFAULT@

    __defined at:__ @curl\/curl.h:993:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFTPAUTH_DEFAULT :: FC.CLong
cURLFTPAUTH_DEFAULT = (0 :: FC.CLong)

{-| __C declaration:__ @CURLFTPAUTH_SSL@

    __defined at:__ @curl\/curl.h:994:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFTPAUTH_SSL :: FC.CLong
cURLFTPAUTH_SSL = (1 :: FC.CLong)

{-| __C declaration:__ @CURLFTPAUTH_TLS@

    __defined at:__ @curl\/curl.h:995:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFTPAUTH_TLS :: FC.CLong
cURLFTPAUTH_TLS = (2 :: FC.CLong)

{-| __C declaration:__ @curl_ftpauth@

    __defined at:__ @curl\/curl.h:997:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_ftpauth = Curl_ftpauth
  { un_Curl_ftpauth :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable Curl_ftpauth where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Curl_ftpauth
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_ftpauth un_Curl_ftpauth2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_Curl_ftpauth2

instance HsBindgen.Runtime.CEnum.CEnum Curl_ftpauth where

  type CEnumZ Curl_ftpauth = FC.CUInt

  toCEnum = Curl_ftpauth

  fromCEnum = un_Curl_ftpauth

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [(3, Data.List.NonEmpty.singleton "CURLFTPAUTH_LAST")]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "Curl_ftpauth"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "Curl_ftpauth"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum Curl_ftpauth where

  minDeclaredValue = CURLFTPAUTH_LAST

  maxDeclaredValue = CURLFTPAUTH_LAST

instance Show Curl_ftpauth where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read Curl_ftpauth where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLFTPAUTH_LAST@

    __defined at:__ @curl\/curl.h:998:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFTPAUTH_LAST :: Curl_ftpauth
pattern CURLFTPAUTH_LAST = Curl_ftpauth 3

{-| __C declaration:__ @CURLFTP_CREATE_DIR_NONE@

    __defined at:__ @curl\/curl.h:1002:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFTP_CREATE_DIR_NONE :: FC.CLong
cURLFTP_CREATE_DIR_NONE = (0 :: FC.CLong)

{-| __C declaration:__ @CURLFTP_CREATE_DIR@

    __defined at:__ @curl\/curl.h:1003:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFTP_CREATE_DIR :: FC.CLong
cURLFTP_CREATE_DIR = (1 :: FC.CLong)

{-| __C declaration:__ @CURLFTP_CREATE_DIR_RETRY@

    __defined at:__ @curl\/curl.h:1006:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFTP_CREATE_DIR_RETRY :: FC.CLong
cURLFTP_CREATE_DIR_RETRY = (2 :: FC.CLong)

{-| __C declaration:__ @curl_ftpcreatedir@

    __defined at:__ @curl\/curl.h:1009:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_ftpcreatedir = Curl_ftpcreatedir
  { un_Curl_ftpcreatedir :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable Curl_ftpcreatedir where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Curl_ftpcreatedir
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_ftpcreatedir un_Curl_ftpcreatedir2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_Curl_ftpcreatedir2

instance HsBindgen.Runtime.CEnum.CEnum Curl_ftpcreatedir where

  type CEnumZ Curl_ftpcreatedir = FC.CUInt

  toCEnum = Curl_ftpcreatedir

  fromCEnum = un_Curl_ftpcreatedir

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [(3, Data.List.NonEmpty.singleton "CURLFTP_CREATE_DIR_LAST")]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "Curl_ftpcreatedir"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "Curl_ftpcreatedir"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum Curl_ftpcreatedir where

  minDeclaredValue = CURLFTP_CREATE_DIR_LAST

  maxDeclaredValue = CURLFTP_CREATE_DIR_LAST

instance Show Curl_ftpcreatedir where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read Curl_ftpcreatedir where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLFTP_CREATE_DIR_LAST@

    __defined at:__ @curl\/curl.h:1010:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFTP_CREATE_DIR_LAST :: Curl_ftpcreatedir
pattern CURLFTP_CREATE_DIR_LAST = Curl_ftpcreatedir 3

{-| __C declaration:__ @CURLFTPMETHOD_DEFAULT@

    __defined at:__ @curl\/curl.h:1014:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFTPMETHOD_DEFAULT :: FC.CLong
cURLFTPMETHOD_DEFAULT = (0 :: FC.CLong)

{-| __C declaration:__ @CURLFTPMETHOD_MULTICWD@

    __defined at:__ @curl\/curl.h:1015:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFTPMETHOD_MULTICWD :: FC.CLong
cURLFTPMETHOD_MULTICWD = (1 :: FC.CLong)

{-| __C declaration:__ @CURLFTPMETHOD_NOCWD@

    __defined at:__ @curl\/curl.h:1017:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFTPMETHOD_NOCWD :: FC.CLong
cURLFTPMETHOD_NOCWD = (2 :: FC.CLong)

{-| __C declaration:__ @CURLFTPMETHOD_SINGLECWD@

    __defined at:__ @curl\/curl.h:1018:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLFTPMETHOD_SINGLECWD :: FC.CLong
cURLFTPMETHOD_SINGLECWD = (3 :: FC.CLong)

{-| __C declaration:__ @curl_ftpmethod@

    __defined at:__ @curl\/curl.h:1020:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_ftpmethod = Curl_ftpmethod
  { un_Curl_ftpmethod :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable Curl_ftpmethod where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Curl_ftpmethod
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_ftpmethod un_Curl_ftpmethod2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_Curl_ftpmethod2

instance HsBindgen.Runtime.CEnum.CEnum Curl_ftpmethod where

  type CEnumZ Curl_ftpmethod = FC.CUInt

  toCEnum = Curl_ftpmethod

  fromCEnum = un_Curl_ftpmethod

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [(4, Data.List.NonEmpty.singleton "CURLFTPMETHOD_LAST")]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "Curl_ftpmethod"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "Curl_ftpmethod"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum Curl_ftpmethod where

  minDeclaredValue = CURLFTPMETHOD_LAST

  maxDeclaredValue = CURLFTPMETHOD_LAST

instance Show Curl_ftpmethod where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read Curl_ftpmethod where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLFTPMETHOD_LAST@

    __defined at:__ @curl\/curl.h:1021:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFTPMETHOD_LAST :: Curl_ftpmethod
pattern CURLFTPMETHOD_LAST = Curl_ftpmethod 4

{-| __C declaration:__ @CURLHEADER_UNIFIED@

    __defined at:__ @curl\/curl.h:1025:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLHEADER_UNIFIED :: FC.CLong
cURLHEADER_UNIFIED = (0 :: FC.CLong)

{-| __C declaration:__ @CURLHEADER_SEPARATE@

    __defined at:__ @curl\/curl.h:1026:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLHEADER_SEPARATE :: FC.CLong
cURLHEADER_SEPARATE =
  (C.<<) (1 :: FC.CLong) (0 :: FC.CInt)

{-| __C declaration:__ @CURLALTSVC_READONLYFILE@

    __defined at:__ @curl\/curl.h:1029:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLALTSVC_READONLYFILE :: FC.CLong
cURLALTSVC_READONLYFILE =
  (C.<<) (1 :: FC.CLong) (2 :: FC.CInt)

{-| __C declaration:__ @CURLALTSVC_H1@

    __defined at:__ @curl\/curl.h:1030:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLALTSVC_H1 :: FC.CLong
cURLALTSVC_H1 = (C.<<) (1 :: FC.CLong) (3 :: FC.CInt)

{-| __C declaration:__ @CURLALTSVC_H2@

    __defined at:__ @curl\/curl.h:1031:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLALTSVC_H2 :: FC.CLong
cURLALTSVC_H2 = (C.<<) (1 :: FC.CLong) (4 :: FC.CInt)

{-| __C declaration:__ @CURLALTSVC_H3@

    __defined at:__ @curl\/curl.h:1032:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLALTSVC_H3 :: FC.CLong
cURLALTSVC_H3 = (C.<<) (1 :: FC.CLong) (5 :: FC.CInt)

{-| __C declaration:__ @CURLULFLAG_ANSWERED@

    __defined at:__ @curl\/curl.h:1035:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLULFLAG_ANSWERED :: FC.CLong
cURLULFLAG_ANSWERED =
  (C.<<) (1 :: FC.CLong) (0 :: FC.CInt)

{-| __C declaration:__ @CURLULFLAG_DELETED@

    __defined at:__ @curl\/curl.h:1036:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLULFLAG_DELETED :: FC.CLong
cURLULFLAG_DELETED =
  (C.<<) (1 :: FC.CLong) (1 :: FC.CInt)

{-| __C declaration:__ @CURLULFLAG_DRAFT@

    __defined at:__ @curl\/curl.h:1037:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLULFLAG_DRAFT :: FC.CLong
cURLULFLAG_DRAFT =
  (C.<<) (1 :: FC.CLong) (2 :: FC.CInt)

{-| __C declaration:__ @CURLULFLAG_FLAGGED@

    __defined at:__ @curl\/curl.h:1038:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLULFLAG_FLAGGED :: FC.CLong
cURLULFLAG_FLAGGED =
  (C.<<) (1 :: FC.CLong) (3 :: FC.CInt)

{-| __C declaration:__ @CURLULFLAG_SEEN@

    __defined at:__ @curl\/curl.h:1039:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLULFLAG_SEEN :: FC.CLong
cURLULFLAG_SEEN =
  (C.<<) (1 :: FC.CLong) (4 :: FC.CInt)

{-| __C declaration:__ @curl_hstsentry@

    __defined at:__ @curl\/curl.h:1041:8@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
data Curl_hstsentry = Curl_hstsentry
  { curl_hstsentry_name :: Ptr.Ptr FC.CChar
    {- ^ __C declaration:__ @name@

         __defined at:__ @curl\/curl.h:1042:9@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_hstsentry_namelen :: HsBindgen.Runtime.Prelude.CSize
    {- ^ __C declaration:__ @namelen@

         __defined at:__ @curl\/curl.h:1043:10@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_hstsentry_includeSubDomains :: FC.CUInt
    {- ^ __C declaration:__ @includeSubDomains@

         __defined at:__ @curl\/curl.h:1044:16@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_hstsentry_expire :: (HsBindgen.Runtime.ConstantArray.ConstantArray 18) FC.CChar
    {- ^ __C declaration:__ @expire@

         __defined at:__ @curl\/curl.h:1045:8@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  }
  deriving stock (Eq, Show)

instance F.Storable Curl_hstsentry where

  sizeOf = \_ -> (40 :: Int)

  alignment = \_ -> (8 :: Int)

  peek =
    \ptr0 ->
          pure Curl_hstsentry
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_hstsentry_name") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_hstsentry_namelen") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCBitfield (Data.Proxy.Proxy @"curl_hstsentry_includeSubDomains") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_hstsentry_expire") ptr0

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_hstsentry
            curl_hstsentry_name2
            curl_hstsentry_namelen3
            curl_hstsentry_includeSubDomains4
            curl_hstsentry_expire5 ->
                 HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_hstsentry_name") ptr0 curl_hstsentry_name2
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_hstsentry_namelen") ptr0 curl_hstsentry_namelen3
              >> HsBindgen.Runtime.HasCField.pokeCBitfield (Data.Proxy.Proxy @"curl_hstsentry_includeSubDomains") ptr0 curl_hstsentry_includeSubDomains4
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_hstsentry_expire") ptr0 curl_hstsentry_expire5

instance HsBindgen.Runtime.HasCField.HasCField Curl_hstsentry "curl_hstsentry_name" where

  type CFieldType Curl_hstsentry "curl_hstsentry_name" =
    Ptr.Ptr FC.CChar

  offset# = \_ -> \_ -> 0

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_hstsentry) "curl_hstsentry_name")
         ) => GHC.Records.HasField "curl_hstsentry_name" (Ptr.Ptr Curl_hstsentry) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_hstsentry_name")

instance HsBindgen.Runtime.HasCField.HasCField Curl_hstsentry "curl_hstsentry_namelen" where

  type CFieldType Curl_hstsentry "curl_hstsentry_namelen" =
    HsBindgen.Runtime.Prelude.CSize

  offset# = \_ -> \_ -> 8

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_hstsentry) "curl_hstsentry_namelen")
         ) => GHC.Records.HasField "curl_hstsentry_namelen" (Ptr.Ptr Curl_hstsentry) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_hstsentry_namelen")

instance HsBindgen.Runtime.HasCField.HasCBitfield Curl_hstsentry "curl_hstsentry_includeSubDomains" where

  type CBitfieldType Curl_hstsentry "curl_hstsentry_includeSubDomains" =
    FC.CUInt

  bitOffset# = \_ -> \_ -> 128

  bitWidth# = \_ -> \_ -> 1

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CBitfieldType Curl_hstsentry) "curl_hstsentry_includeSubDomains")
         ) => GHC.Records.HasField "curl_hstsentry_includeSubDomains" (Ptr.Ptr Curl_hstsentry) ((HsBindgen.Runtime.HasCField.BitfieldPtr Curl_hstsentry) "curl_hstsentry_includeSubDomains") where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCBitfield (Data.Proxy.Proxy @"curl_hstsentry_includeSubDomains")

instance HsBindgen.Runtime.HasCField.HasCField Curl_hstsentry "curl_hstsentry_expire" where

  type CFieldType Curl_hstsentry "curl_hstsentry_expire" =
    (HsBindgen.Runtime.ConstantArray.ConstantArray 18) FC.CChar

  offset# = \_ -> \_ -> 17

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_hstsentry) "curl_hstsentry_expire")
         ) => GHC.Records.HasField "curl_hstsentry_expire" (Ptr.Ptr Curl_hstsentry) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_hstsentry_expire")

{-| __C declaration:__ @curl_index@

    __defined at:__ @curl\/curl.h:1048:8@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
data Curl_index = Curl_index
  { curl_index_index :: HsBindgen.Runtime.Prelude.CSize
    {- ^ __C declaration:__ @index@

         __defined at:__ @curl\/curl.h:1049:10@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_index_total :: HsBindgen.Runtime.Prelude.CSize
    {- ^ __C declaration:__ @total@

         __defined at:__ @curl\/curl.h:1050:10@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  }
  deriving stock (Eq, Show)

instance F.Storable Curl_index where

  sizeOf = \_ -> (16 :: Int)

  alignment = \_ -> (8 :: Int)

  peek =
    \ptr0 ->
          pure Curl_index
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_index_index") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_index_total") ptr0

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_index curl_index_index2 curl_index_total3 ->
               HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_index_index") ptr0 curl_index_index2
            >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_index_total") ptr0 curl_index_total3

instance HsBindgen.Runtime.HasCField.HasCField Curl_index "curl_index_index" where

  type CFieldType Curl_index "curl_index_index" =
    HsBindgen.Runtime.Prelude.CSize

  offset# = \_ -> \_ -> 0

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_index) "curl_index_index")
         ) => GHC.Records.HasField "curl_index_index" (Ptr.Ptr Curl_index) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_index_index")

instance HsBindgen.Runtime.HasCField.HasCField Curl_index "curl_index_total" where

  type CFieldType Curl_index "curl_index_total" =
    HsBindgen.Runtime.Prelude.CSize

  offset# = \_ -> \_ -> 8

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_index) "curl_index_total")
         ) => GHC.Records.HasField "curl_index_total" (Ptr.Ptr Curl_index) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_index_total")

{-| __C declaration:__ @CURLSTScode@

    __defined at:__ @curl\/curl.h:1053:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype CURLSTScode = CURLSTScode
  { un_CURLSTScode :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable CURLSTScode where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure CURLSTScode
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          CURLSTScode un_CURLSTScode2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_CURLSTScode2

instance HsBindgen.Runtime.CEnum.CEnum CURLSTScode where

  type CEnumZ CURLSTScode = FC.CUInt

  toCEnum = CURLSTScode

  fromCEnum = un_CURLSTScode

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLSTS_OK")
                                                     , (1, Data.List.NonEmpty.singleton "CURLSTS_DONE")
                                                     , (2, Data.List.NonEmpty.singleton "CURLSTS_FAIL")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "CURLSTScode"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "CURLSTScode"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum CURLSTScode where

  minDeclaredValue = CURLSTS_OK

  maxDeclaredValue = CURLSTS_FAIL

instance Show CURLSTScode where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read CURLSTScode where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLSTS_OK@

    __defined at:__ @curl\/curl.h:1054:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSTS_OK :: CURLSTScode
pattern CURLSTS_OK = CURLSTScode 0

{-| __C declaration:__ @CURLSTS_DONE@

    __defined at:__ @curl\/curl.h:1055:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSTS_DONE :: CURLSTScode
pattern CURLSTS_DONE = CURLSTScode 1

{-| __C declaration:__ @CURLSTS_FAIL@

    __defined at:__ @curl\/curl.h:1056:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSTS_FAIL :: CURLSTScode
pattern CURLSTS_FAIL = CURLSTScode 2

{-| Auxiliary type used by 'Curl_hstsread_callback'

__defined at:__ @curl\/curl.h:1059:23@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_hstsread_callback_Deref = Curl_hstsread_callback_Deref
  { un_Curl_hstsread_callback_Deref :: (Ptr.Ptr Void) -> (Ptr.Ptr Curl_hstsentry) -> (Ptr.Ptr Void) -> IO CURLSTScode
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_hstsread_callback_Deref ::
     Curl_hstsread_callback_Deref
  -> IO (Ptr.FunPtr Curl_hstsread_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_hstsread_callback_Deref ::
     Ptr.FunPtr Curl_hstsread_callback_Deref
  -> Curl_hstsread_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_hstsread_callback_Deref where

  toFunPtr = toCurl_hstsread_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_hstsread_callback_Deref where

  fromFunPtr = fromCurl_hstsread_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_hstsread_callback_Deref) "un_Curl_hstsread_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_hstsread_callback_Deref" (Ptr.Ptr Curl_hstsread_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_hstsread_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_hstsread_callback_Deref "un_Curl_hstsread_callback_Deref" where

  type CFieldType Curl_hstsread_callback_Deref "un_Curl_hstsread_callback_Deref" =
    (Ptr.Ptr Void) -> (Ptr.Ptr Curl_hstsentry) -> (Ptr.Ptr Void) -> IO CURLSTScode

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_hstsread_callback@

    __defined at:__ @curl\/curl.h:1059:23@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_hstsread_callback = Curl_hstsread_callback
  { un_Curl_hstsread_callback :: Ptr.FunPtr Curl_hstsread_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_hstsread_callback) "un_Curl_hstsread_callback")
         ) => GHC.Records.HasField "un_Curl_hstsread_callback" (Ptr.Ptr Curl_hstsread_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_hstsread_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_hstsread_callback "un_Curl_hstsread_callback" where

  type CFieldType Curl_hstsread_callback "un_Curl_hstsread_callback" =
    Ptr.FunPtr Curl_hstsread_callback_Deref

  offset# = \_ -> \_ -> 0

{-| Auxiliary type used by 'Curl_hstswrite_callback'

__defined at:__ @curl\/curl.h:1062:23@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_hstswrite_callback_Deref = Curl_hstswrite_callback_Deref
  { un_Curl_hstswrite_callback_Deref :: (Ptr.Ptr Void) -> (Ptr.Ptr Curl_hstsentry) -> (Ptr.Ptr Curl_index) -> (Ptr.Ptr Void) -> IO CURLSTScode
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_hstswrite_callback_Deref ::
     Curl_hstswrite_callback_Deref
  -> IO (Ptr.FunPtr Curl_hstswrite_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_hstswrite_callback_Deref ::
     Ptr.FunPtr Curl_hstswrite_callback_Deref
  -> Curl_hstswrite_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_hstswrite_callback_Deref where

  toFunPtr = toCurl_hstswrite_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_hstswrite_callback_Deref where

  fromFunPtr = fromCurl_hstswrite_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_hstswrite_callback_Deref) "un_Curl_hstswrite_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_hstswrite_callback_Deref" (Ptr.Ptr Curl_hstswrite_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_hstswrite_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_hstswrite_callback_Deref "un_Curl_hstswrite_callback_Deref" where

  type CFieldType Curl_hstswrite_callback_Deref "un_Curl_hstswrite_callback_Deref" =
    (Ptr.Ptr Void) -> (Ptr.Ptr Curl_hstsentry) -> (Ptr.Ptr Curl_index) -> (Ptr.Ptr Void) -> IO CURLSTScode

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_hstswrite_callback@

    __defined at:__ @curl\/curl.h:1062:23@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_hstswrite_callback = Curl_hstswrite_callback
  { un_Curl_hstswrite_callback :: Ptr.FunPtr Curl_hstswrite_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_hstswrite_callback) "un_Curl_hstswrite_callback")
         ) => GHC.Records.HasField "un_Curl_hstswrite_callback" (Ptr.Ptr Curl_hstswrite_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_hstswrite_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_hstswrite_callback "un_Curl_hstswrite_callback" where

  type CFieldType Curl_hstswrite_callback "un_Curl_hstswrite_callback" =
    Ptr.FunPtr Curl_hstswrite_callback_Deref

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @CURLHSTS_ENABLE@

    __defined at:__ @curl\/curl.h:1068:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLHSTS_ENABLE :: FC.CLong
cURLHSTS_ENABLE =
  (C.<<) (1 :: FC.CLong) (0 :: FC.CInt)

{-| __C declaration:__ @CURLHSTS_READONLYFILE@

    __defined at:__ @curl\/curl.h:1069:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLHSTS_READONLYFILE :: FC.CLong
cURLHSTS_READONLYFILE =
  (C.<<) (1 :: FC.CLong) (1 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_HTTP@

    __defined at:__ @curl\/curl.h:1073:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_HTTP :: FC.CLong
cURLPROTO_HTTP =
  (C.<<) (1 :: FC.CLong) (0 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_HTTPS@

    __defined at:__ @curl\/curl.h:1074:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_HTTPS :: FC.CLong
cURLPROTO_HTTPS =
  (C.<<) (1 :: FC.CLong) (1 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_FTP@

    __defined at:__ @curl\/curl.h:1075:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_FTP :: FC.CLong
cURLPROTO_FTP = (C.<<) (1 :: FC.CLong) (2 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_FTPS@

    __defined at:__ @curl\/curl.h:1076:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_FTPS :: FC.CLong
cURLPROTO_FTPS =
  (C.<<) (1 :: FC.CLong) (3 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_SCP@

    __defined at:__ @curl\/curl.h:1077:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_SCP :: FC.CLong
cURLPROTO_SCP = (C.<<) (1 :: FC.CLong) (4 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_SFTP@

    __defined at:__ @curl\/curl.h:1078:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_SFTP :: FC.CLong
cURLPROTO_SFTP =
  (C.<<) (1 :: FC.CLong) (5 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_TELNET@

    __defined at:__ @curl\/curl.h:1079:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_TELNET :: FC.CLong
cURLPROTO_TELNET =
  (C.<<) (1 :: FC.CLong) (6 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_LDAP@

    __defined at:__ @curl\/curl.h:1080:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_LDAP :: FC.CLong
cURLPROTO_LDAP =
  (C.<<) (1 :: FC.CLong) (7 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_LDAPS@

    __defined at:__ @curl\/curl.h:1081:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_LDAPS :: FC.CLong
cURLPROTO_LDAPS =
  (C.<<) (1 :: FC.CLong) (8 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_DICT@

    __defined at:__ @curl\/curl.h:1082:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_DICT :: FC.CLong
cURLPROTO_DICT =
  (C.<<) (1 :: FC.CLong) (9 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_FILE@

    __defined at:__ @curl\/curl.h:1083:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_FILE :: FC.CLong
cURLPROTO_FILE =
  (C.<<) (1 :: FC.CLong) (10 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_TFTP@

    __defined at:__ @curl\/curl.h:1084:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_TFTP :: FC.CLong
cURLPROTO_TFTP =
  (C.<<) (1 :: FC.CLong) (11 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_IMAP@

    __defined at:__ @curl\/curl.h:1085:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_IMAP :: FC.CLong
cURLPROTO_IMAP =
  (C.<<) (1 :: FC.CLong) (12 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_IMAPS@

    __defined at:__ @curl\/curl.h:1086:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_IMAPS :: FC.CLong
cURLPROTO_IMAPS =
  (C.<<) (1 :: FC.CLong) (13 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_POP3@

    __defined at:__ @curl\/curl.h:1087:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_POP3 :: FC.CLong
cURLPROTO_POP3 =
  (C.<<) (1 :: FC.CLong) (14 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_POP3S@

    __defined at:__ @curl\/curl.h:1088:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_POP3S :: FC.CLong
cURLPROTO_POP3S =
  (C.<<) (1 :: FC.CLong) (15 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_SMTP@

    __defined at:__ @curl\/curl.h:1089:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_SMTP :: FC.CLong
cURLPROTO_SMTP =
  (C.<<) (1 :: FC.CLong) (16 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_SMTPS@

    __defined at:__ @curl\/curl.h:1090:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_SMTPS :: FC.CLong
cURLPROTO_SMTPS =
  (C.<<) (1 :: FC.CLong) (17 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_RTSP@

    __defined at:__ @curl\/curl.h:1091:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_RTSP :: FC.CLong
cURLPROTO_RTSP =
  (C.<<) (1 :: FC.CLong) (18 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_RTMP@

    __defined at:__ @curl\/curl.h:1092:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_RTMP :: FC.CLong
cURLPROTO_RTMP =
  (C.<<) (1 :: FC.CLong) (19 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_RTMPT@

    __defined at:__ @curl\/curl.h:1093:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_RTMPT :: FC.CLong
cURLPROTO_RTMPT =
  (C.<<) (1 :: FC.CLong) (20 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_RTMPE@

    __defined at:__ @curl\/curl.h:1094:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_RTMPE :: FC.CLong
cURLPROTO_RTMPE =
  (C.<<) (1 :: FC.CLong) (21 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_RTMPTE@

    __defined at:__ @curl\/curl.h:1095:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_RTMPTE :: FC.CLong
cURLPROTO_RTMPTE =
  (C.<<) (1 :: FC.CLong) (22 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_RTMPS@

    __defined at:__ @curl\/curl.h:1096:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_RTMPS :: FC.CLong
cURLPROTO_RTMPS =
  (C.<<) (1 :: FC.CLong) (23 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_RTMPTS@

    __defined at:__ @curl\/curl.h:1097:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_RTMPTS :: FC.CLong
cURLPROTO_RTMPTS =
  (C.<<) (1 :: FC.CLong) (24 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_GOPHER@

    __defined at:__ @curl\/curl.h:1098:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_GOPHER :: FC.CLong
cURLPROTO_GOPHER =
  (C.<<) (1 :: FC.CLong) (25 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_SMB@

    __defined at:__ @curl\/curl.h:1099:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_SMB :: FC.CLong
cURLPROTO_SMB =
  (C.<<) (1 :: FC.CLong) (26 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_SMBS@

    __defined at:__ @curl\/curl.h:1100:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_SMBS :: FC.CLong
cURLPROTO_SMBS =
  (C.<<) (1 :: FC.CLong) (27 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_MQTT@

    __defined at:__ @curl\/curl.h:1101:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_MQTT :: FC.CLong
cURLPROTO_MQTT =
  (C.<<) (1 :: FC.CLong) (28 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_GOPHERS@

    __defined at:__ @curl\/curl.h:1102:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_GOPHERS :: FC.CLong
cURLPROTO_GOPHERS =
  (C.<<) (1 :: FC.CLong) (29 :: FC.CInt)

{-| __C declaration:__ @CURLPROTO_ALL@

    __defined at:__ @curl\/curl.h:1103:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPROTO_ALL :: FC.CLong
cURLPROTO_ALL = (C..~) (0 :: FC.CLong)

{-| __C declaration:__ @CURLOPTTYPE_LONG@

    __defined at:__ @curl\/curl.h:1107:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLOPTTYPE_LONG :: FC.CInt
cURLOPTTYPE_LONG = (0 :: FC.CInt)

{-| __C declaration:__ @CURLOPTTYPE_OBJECTPOINT@

    __defined at:__ @curl\/curl.h:1108:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLOPTTYPE_OBJECTPOINT :: FC.CInt
cURLOPTTYPE_OBJECTPOINT = (10000 :: FC.CInt)

{-| __C declaration:__ @CURLOPTTYPE_FUNCTIONPOINT@

    __defined at:__ @curl\/curl.h:1109:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLOPTTYPE_FUNCTIONPOINT :: FC.CInt
cURLOPTTYPE_FUNCTIONPOINT = (20000 :: FC.CInt)

{-| __C declaration:__ @CURLOPTTYPE_OFF_T@

    __defined at:__ @curl\/curl.h:1110:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLOPTTYPE_OFF_T :: FC.CInt
cURLOPTTYPE_OFF_T = (30000 :: FC.CInt)

{-| __C declaration:__ @CURLOPTTYPE_BLOB@

    __defined at:__ @curl\/curl.h:1111:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLOPTTYPE_BLOB :: FC.CInt
cURLOPTTYPE_BLOB = (40000 :: FC.CInt)

{-| __C declaration:__ @CURLOPTTYPE_STRINGPOINT@

    __defined at:__ @curl\/curl.h:1123:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLOPTTYPE_STRINGPOINT :: FC.CInt
cURLOPTTYPE_STRINGPOINT = cURLOPTTYPE_OBJECTPOINT

{-| __C declaration:__ @CURLOPTTYPE_SLISTPOINT@

    __defined at:__ @curl\/curl.h:1126:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLOPTTYPE_SLISTPOINT :: FC.CInt
cURLOPTTYPE_SLISTPOINT = cURLOPTTYPE_OBJECTPOINT

{-| __C declaration:__ @CURLOPTTYPE_CBPOINT@

    __defined at:__ @curl\/curl.h:1129:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLOPTTYPE_CBPOINT :: FC.CInt
cURLOPTTYPE_CBPOINT = cURLOPTTYPE_OBJECTPOINT

{-| __C declaration:__ @CURLOPTTYPE_VALUES@

    __defined at:__ @curl\/curl.h:1132:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLOPTTYPE_VALUES :: FC.CInt
cURLOPTTYPE_VALUES = cURLOPTTYPE_LONG

{-| __C declaration:__ @CURL_IPRESOLVE_WHATEVER@

    __defined at:__ @curl\/curl.h:2299:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_IPRESOLVE_WHATEVER :: FC.CLong
cURL_IPRESOLVE_WHATEVER = (0 :: FC.CLong)

{-| __C declaration:__ @CURL_IPRESOLVE_V4@

    __defined at:__ @curl\/curl.h:2301:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_IPRESOLVE_V4 :: FC.CLong
cURL_IPRESOLVE_V4 = (1 :: FC.CLong)

{-| __C declaration:__ @CURL_IPRESOLVE_V6@

    __defined at:__ @curl\/curl.h:2302:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_IPRESOLVE_V6 :: FC.CLong
cURL_IPRESOLVE_V6 = (2 :: FC.CLong)

{-| __C declaration:__ @CURL_HTTP_VERSION_NONE@

    __defined at:__ @curl\/curl.h:2308:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_HTTP_VERSION_NONE :: FC.CLong
cURL_HTTP_VERSION_NONE = (0 :: FC.CLong)

{-| __C declaration:__ @CURL_HTTP_VERSION_1_0@

    __defined at:__ @curl\/curl.h:2311:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_HTTP_VERSION_1_0 :: FC.CLong
cURL_HTTP_VERSION_1_0 = (1 :: FC.CLong)

{-| __C declaration:__ @CURL_HTTP_VERSION_1_1@

    __defined at:__ @curl\/curl.h:2312:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_HTTP_VERSION_1_1 :: FC.CLong
cURL_HTTP_VERSION_1_1 = (2 :: FC.CLong)

{-| __C declaration:__ @CURL_HTTP_VERSION_2_0@

    __defined at:__ @curl\/curl.h:2313:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_HTTP_VERSION_2_0 :: FC.CLong
cURL_HTTP_VERSION_2_0 = (3 :: FC.CLong)

{-| __C declaration:__ @CURL_HTTP_VERSION_2TLS@

    __defined at:__ @curl\/curl.h:2314:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_HTTP_VERSION_2TLS :: FC.CLong
cURL_HTTP_VERSION_2TLS = (4 :: FC.CLong)

{-| __C declaration:__ @CURL_HTTP_VERSION_2_PRIOR_KNOWLEDGE@

    __defined at:__ @curl\/curl.h:2316:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_HTTP_VERSION_2_PRIOR_KNOWLEDGE :: FC.CLong
cURL_HTTP_VERSION_2_PRIOR_KNOWLEDGE = (5 :: FC.CLong)

{-| __C declaration:__ @CURL_HTTP_VERSION_3@

    __defined at:__ @curl\/curl.h:2318:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_HTTP_VERSION_3 :: FC.CLong
cURL_HTTP_VERSION_3 = (30 :: FC.CLong)

{-| __C declaration:__ @CURL_HTTP_VERSION_3ONLY@

    __defined at:__ @curl\/curl.h:2322:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_HTTP_VERSION_3ONLY :: FC.CLong
cURL_HTTP_VERSION_3ONLY = (31 :: FC.CLong)

{-| __C declaration:__ @CURL_HTTP_VERSION_LAST@

    __defined at:__ @curl\/curl.h:2325:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_HTTP_VERSION_LAST :: FC.CLong
cURL_HTTP_VERSION_LAST = (32 :: FC.CLong)

{-| __C declaration:__ @CURL_HTTP_VERSION_2@

    __defined at:__ @curl\/curl.h:2330:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_HTTP_VERSION_2 :: FC.CLong
cURL_HTTP_VERSION_2 = cURL_HTTP_VERSION_2_0

{-| __C declaration:__ @CURL_RTSPREQ_NONE@

    __defined at:__ @curl\/curl.h:2336:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_RTSPREQ_NONE :: FC.CLong
cURL_RTSPREQ_NONE = (0 :: FC.CLong)

{-| __C declaration:__ @CURL_RTSPREQ_OPTIONS@

    __defined at:__ @curl\/curl.h:2337:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_RTSPREQ_OPTIONS :: FC.CLong
cURL_RTSPREQ_OPTIONS = (1 :: FC.CLong)

{-| __C declaration:__ @CURL_RTSPREQ_DESCRIBE@

    __defined at:__ @curl\/curl.h:2338:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_RTSPREQ_DESCRIBE :: FC.CLong
cURL_RTSPREQ_DESCRIBE = (2 :: FC.CLong)

{-| __C declaration:__ @CURL_RTSPREQ_ANNOUNCE@

    __defined at:__ @curl\/curl.h:2339:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_RTSPREQ_ANNOUNCE :: FC.CLong
cURL_RTSPREQ_ANNOUNCE = (3 :: FC.CLong)

{-| __C declaration:__ @CURL_RTSPREQ_SETUP@

    __defined at:__ @curl\/curl.h:2340:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_RTSPREQ_SETUP :: FC.CLong
cURL_RTSPREQ_SETUP = (4 :: FC.CLong)

{-| __C declaration:__ @CURL_RTSPREQ_PLAY@

    __defined at:__ @curl\/curl.h:2341:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_RTSPREQ_PLAY :: FC.CLong
cURL_RTSPREQ_PLAY = (5 :: FC.CLong)

{-| __C declaration:__ @CURL_RTSPREQ_PAUSE@

    __defined at:__ @curl\/curl.h:2342:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_RTSPREQ_PAUSE :: FC.CLong
cURL_RTSPREQ_PAUSE = (6 :: FC.CLong)

{-| __C declaration:__ @CURL_RTSPREQ_TEARDOWN@

    __defined at:__ @curl\/curl.h:2343:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_RTSPREQ_TEARDOWN :: FC.CLong
cURL_RTSPREQ_TEARDOWN = (7 :: FC.CLong)

{-| __C declaration:__ @CURL_RTSPREQ_GET_PARAMETER@

    __defined at:__ @curl\/curl.h:2344:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_RTSPREQ_GET_PARAMETER :: FC.CLong
cURL_RTSPREQ_GET_PARAMETER = (8 :: FC.CLong)

{-| __C declaration:__ @CURL_RTSPREQ_SET_PARAMETER@

    __defined at:__ @curl\/curl.h:2345:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_RTSPREQ_SET_PARAMETER :: FC.CLong
cURL_RTSPREQ_SET_PARAMETER = (9 :: FC.CLong)

{-| __C declaration:__ @CURL_RTSPREQ_RECORD@

    __defined at:__ @curl\/curl.h:2346:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_RTSPREQ_RECORD :: FC.CLong
cURL_RTSPREQ_RECORD = (10 :: FC.CLong)

{-| __C declaration:__ @CURL_RTSPREQ_RECEIVE@

    __defined at:__ @curl\/curl.h:2347:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_RTSPREQ_RECEIVE :: FC.CLong
cURL_RTSPREQ_RECEIVE = (11 :: FC.CLong)

{-| __C declaration:__ @CURL_RTSPREQ_LAST@

    __defined at:__ @curl\/curl.h:2348:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_RTSPREQ_LAST :: FC.CLong
cURL_RTSPREQ_LAST = (12 :: FC.CLong)

{-| __C declaration:__ @CURL_NETRC_IGNORED@

    __defined at:__ @curl\/curl.h:2351:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_NETRC_IGNORED :: FC.CLong
cURL_NETRC_IGNORED = (0 :: FC.CLong)

{-| __C declaration:__ @CURL_NETRC_OPTIONAL@

    __defined at:__ @curl\/curl.h:2353:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_NETRC_OPTIONAL :: FC.CLong
cURL_NETRC_OPTIONAL = (1 :: FC.CLong)

{-| __C declaration:__ @CURL_NETRC_REQUIRED@

    __defined at:__ @curl\/curl.h:2355:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_NETRC_REQUIRED :: FC.CLong
cURL_NETRC_REQUIRED = (2 :: FC.CLong)

{-| __C declaration:__ @CURL_NETRC_OPTION@

    __defined at:__ @curl\/curl.h:2358:6@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype CURL_NETRC_OPTION = CURL_NETRC_OPTION
  { un_CURL_NETRC_OPTION :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable CURL_NETRC_OPTION where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure CURL_NETRC_OPTION
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          CURL_NETRC_OPTION un_CURL_NETRC_OPTION2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_CURL_NETRC_OPTION2

instance HsBindgen.Runtime.CEnum.CEnum CURL_NETRC_OPTION where

  type CEnumZ CURL_NETRC_OPTION = FC.CUInt

  toCEnum = CURL_NETRC_OPTION

  fromCEnum = un_CURL_NETRC_OPTION

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [(3, Data.List.NonEmpty.singleton "CURL_NETRC_LAST")]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "CURL_NETRC_OPTION"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "CURL_NETRC_OPTION"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum CURL_NETRC_OPTION where

  minDeclaredValue = CURL_NETRC_LAST

  maxDeclaredValue = CURL_NETRC_LAST

instance Show CURL_NETRC_OPTION where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read CURL_NETRC_OPTION where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURL_NETRC_LAST@

    __defined at:__ @curl\/curl.h:2361:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_NETRC_LAST :: CURL_NETRC_OPTION
pattern CURL_NETRC_LAST = CURL_NETRC_OPTION 3

{-| __C declaration:__ @CURL_SSLVERSION_DEFAULT@

    __defined at:__ @curl\/curl.h:2364:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SSLVERSION_DEFAULT :: FC.CLong
cURL_SSLVERSION_DEFAULT = (0 :: FC.CLong)

{-| __C declaration:__ @CURL_SSLVERSION_TLSv1@

    __defined at:__ @curl\/curl.h:2365:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SSLVERSION_TLSv1 :: FC.CLong
cURL_SSLVERSION_TLSv1 = (1 :: FC.CLong)

{-| __C declaration:__ @CURL_SSLVERSION_SSLv2@

    __defined at:__ @curl\/curl.h:2366:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SSLVERSION_SSLv2 :: FC.CLong
cURL_SSLVERSION_SSLv2 = (2 :: FC.CLong)

{-| __C declaration:__ @CURL_SSLVERSION_SSLv3@

    __defined at:__ @curl\/curl.h:2367:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SSLVERSION_SSLv3 :: FC.CLong
cURL_SSLVERSION_SSLv3 = (3 :: FC.CLong)

{-| __C declaration:__ @CURL_SSLVERSION_TLSv1_0@

    __defined at:__ @curl\/curl.h:2368:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SSLVERSION_TLSv1_0 :: FC.CLong
cURL_SSLVERSION_TLSv1_0 = (4 :: FC.CLong)

{-| __C declaration:__ @CURL_SSLVERSION_TLSv1_1@

    __defined at:__ @curl\/curl.h:2369:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SSLVERSION_TLSv1_1 :: FC.CLong
cURL_SSLVERSION_TLSv1_1 = (5 :: FC.CLong)

{-| __C declaration:__ @CURL_SSLVERSION_TLSv1_2@

    __defined at:__ @curl\/curl.h:2370:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SSLVERSION_TLSv1_2 :: FC.CLong
cURL_SSLVERSION_TLSv1_2 = (6 :: FC.CLong)

{-| __C declaration:__ @CURL_SSLVERSION_TLSv1_3@

    __defined at:__ @curl\/curl.h:2371:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SSLVERSION_TLSv1_3 :: FC.CLong
cURL_SSLVERSION_TLSv1_3 = (7 :: FC.CLong)

{-| __C declaration:__ @CURL_SSLVERSION_LAST@

    __defined at:__ @curl\/curl.h:2373:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SSLVERSION_LAST :: FC.CLong
cURL_SSLVERSION_LAST = (8 :: FC.CLong)

{-| __C declaration:__ @CURL_SSLVERSION_MAX_NONE@

    __defined at:__ @curl\/curl.h:2375:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SSLVERSION_MAX_NONE :: FC.CLong
cURL_SSLVERSION_MAX_NONE = (0 :: FC.CLong)

{-| __C declaration:__ @CURL_SSLVERSION_MAX_DEFAULT@

    __defined at:__ @curl\/curl.h:2376:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SSLVERSION_MAX_DEFAULT :: FC.CLong
cURL_SSLVERSION_MAX_DEFAULT =
  (C.<<) cURL_SSLVERSION_TLSv1 (16 :: FC.CInt)

{-| __C declaration:__ @CURL_SSLVERSION_MAX_TLSv1_0@

    __defined at:__ @curl\/curl.h:2377:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SSLVERSION_MAX_TLSv1_0 :: FC.CLong
cURL_SSLVERSION_MAX_TLSv1_0 =
  (C.<<) cURL_SSLVERSION_TLSv1_0 (16 :: FC.CInt)

{-| __C declaration:__ @CURL_SSLVERSION_MAX_TLSv1_1@

    __defined at:__ @curl\/curl.h:2378:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SSLVERSION_MAX_TLSv1_1 :: FC.CLong
cURL_SSLVERSION_MAX_TLSv1_1 =
  (C.<<) cURL_SSLVERSION_TLSv1_1 (16 :: FC.CInt)

{-| __C declaration:__ @CURL_SSLVERSION_MAX_TLSv1_2@

    __defined at:__ @curl\/curl.h:2379:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SSLVERSION_MAX_TLSv1_2 :: FC.CLong
cURL_SSLVERSION_MAX_TLSv1_2 =
  (C.<<) cURL_SSLVERSION_TLSv1_2 (16 :: FC.CInt)

{-| __C declaration:__ @CURL_SSLVERSION_MAX_TLSv1_3@

    __defined at:__ @curl\/curl.h:2380:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SSLVERSION_MAX_TLSv1_3 :: FC.CLong
cURL_SSLVERSION_MAX_TLSv1_3 =
  (C.<<) cURL_SSLVERSION_TLSv1_3 (16 :: FC.CInt)

{-| __C declaration:__ @CURL_SSLVERSION_MAX_LAST@

    __defined at:__ @curl\/curl.h:2383:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_SSLVERSION_MAX_LAST :: FC.CLong
cURL_SSLVERSION_MAX_LAST =
  (C.<<) cURL_SSLVERSION_LAST (16 :: FC.CInt)

{-| __C declaration:__ @CURL_TLSAUTH_NONE@

    __defined at:__ @curl\/curl.h:2385:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_TLSAUTH_NONE :: FC.CLong
cURL_TLSAUTH_NONE = (0 :: FC.CLong)

{-| __C declaration:__ @CURL_TLSAUTH_SRP@

    __defined at:__ @curl\/curl.h:2386:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_TLSAUTH_SRP :: FC.CLong
cURL_TLSAUTH_SRP = (1 :: FC.CLong)

{-| __C declaration:__ @CURL_TLSAUTH@

    __defined at:__ @curl\/curl.h:2388:6@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype CURL_TLSAUTH = CURL_TLSAUTH
  { un_CURL_TLSAUTH :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable CURL_TLSAUTH where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure CURL_TLSAUTH
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          CURL_TLSAUTH un_CURL_TLSAUTH2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_CURL_TLSAUTH2

instance HsBindgen.Runtime.CEnum.CEnum CURL_TLSAUTH where

  type CEnumZ CURL_TLSAUTH = FC.CUInt

  toCEnum = CURL_TLSAUTH

  fromCEnum = un_CURL_TLSAUTH

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [(2, Data.List.NonEmpty.singleton "CURL_TLSAUTH_LAST")]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "CURL_TLSAUTH"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "CURL_TLSAUTH"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum CURL_TLSAUTH where

  minDeclaredValue = CURL_TLSAUTH_LAST

  maxDeclaredValue = CURL_TLSAUTH_LAST

instance Show CURL_TLSAUTH where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read CURL_TLSAUTH where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURL_TLSAUTH_LAST@

    __defined at:__ @curl\/curl.h:2391:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_TLSAUTH_LAST :: CURL_TLSAUTH
pattern CURL_TLSAUTH_LAST = CURL_TLSAUTH 2

{-| __C declaration:__ @CURL_REDIR_GET_ALL@

    __defined at:__ @curl\/curl.h:2399:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_REDIR_GET_ALL :: FC.CLong
cURL_REDIR_GET_ALL = (0 :: FC.CLong)

{-| __C declaration:__ @CURL_REDIR_POST_301@

    __defined at:__ @curl\/curl.h:2400:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_REDIR_POST_301 :: FC.CLong
cURL_REDIR_POST_301 = (1 :: FC.CLong)

{-| __C declaration:__ @CURL_REDIR_POST_302@

    __defined at:__ @curl\/curl.h:2401:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_REDIR_POST_302 :: FC.CLong
cURL_REDIR_POST_302 = (2 :: FC.CLong)

{-| __C declaration:__ @CURL_REDIR_POST_303@

    __defined at:__ @curl\/curl.h:2402:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_REDIR_POST_303 :: FC.CLong
cURL_REDIR_POST_303 = (4 :: FC.CLong)

{-| __C declaration:__ @CURL_REDIR_POST_ALL@

    __defined at:__ @curl\/curl.h:2403:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_REDIR_POST_ALL :: FC.CLong
cURL_REDIR_POST_ALL =
  (C..|.) ((C..|.) cURL_REDIR_POST_301 cURL_REDIR_POST_302) cURL_REDIR_POST_303

{-| __C declaration:__ @CURL_TIMECOND_NONE@

    __defined at:__ @curl\/curl.h:2406:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_TIMECOND_NONE :: FC.CLong
cURL_TIMECOND_NONE = (0 :: FC.CLong)

{-| __C declaration:__ @CURL_TIMECOND_IFMODSINCE@

    __defined at:__ @curl\/curl.h:2407:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_TIMECOND_IFMODSINCE :: FC.CLong
cURL_TIMECOND_IFMODSINCE = (1 :: FC.CLong)

{-| __C declaration:__ @CURL_TIMECOND_IFUNMODSINCE@

    __defined at:__ @curl\/curl.h:2408:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_TIMECOND_IFUNMODSINCE :: FC.CLong
cURL_TIMECOND_IFUNMODSINCE = (2 :: FC.CLong)

{-| __C declaration:__ @CURL_TIMECOND_LASTMOD@

    __defined at:__ @curl\/curl.h:2409:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_TIMECOND_LASTMOD :: FC.CLong
cURL_TIMECOND_LASTMOD = (3 :: FC.CLong)

{-| __C declaration:__ @curl_TimeCond@

    __defined at:__ @curl\/curl.h:2411:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_TimeCond = Curl_TimeCond
  { un_Curl_TimeCond :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable Curl_TimeCond where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Curl_TimeCond
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_TimeCond un_Curl_TimeCond2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_Curl_TimeCond2

instance HsBindgen.Runtime.CEnum.CEnum Curl_TimeCond where

  type CEnumZ Curl_TimeCond = FC.CUInt

  toCEnum = Curl_TimeCond

  fromCEnum = un_Curl_TimeCond

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [(4, Data.List.NonEmpty.singleton "CURL_TIMECOND_LAST")]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "Curl_TimeCond"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "Curl_TimeCond"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum Curl_TimeCond where

  minDeclaredValue = CURL_TIMECOND_LAST

  maxDeclaredValue = CURL_TIMECOND_LAST

instance Show Curl_TimeCond where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read Curl_TimeCond where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURL_TIMECOND_LAST@

    __defined at:__ @curl\/curl.h:2415:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_TIMECOND_LAST :: Curl_TimeCond
pattern CURL_TIMECOND_LAST = Curl_TimeCond 4

{-| __C declaration:__ @curl_mime@

    __defined at:__ @curl\/curl.h:2427:16@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
data Curl_mime

{-| __C declaration:__ @curl_mimepart@

    __defined at:__ @curl\/curl.h:2428:16@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
data Curl_mimepart

{-| __C declaration:__ @CURLMIMEOPT_FORMESCAPE@

    __defined at:__ @curl\/curl.h:2431:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLMIMEOPT_FORMESCAPE :: FC.CLong
cURLMIMEOPT_FORMESCAPE =
  (C.<<) (1 :: FC.CLong) (0 :: FC.CInt)

{-| __C declaration:__ @CURLformoption@

    __defined at:__ @curl\/curl.h:2554:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype CURLformoption = CURLformoption
  { un_CURLformoption :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable CURLformoption where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure CURLformoption
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          CURLformoption un_CURLformoption2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_CURLformoption2

instance HsBindgen.Runtime.CEnum.CEnum CURLformoption where

  type CEnumZ CURLformoption = FC.CUInt

  toCEnum = CURLformoption

  fromCEnum = un_CURLformoption

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLFORM_NOTHING")
                                                     , (1, Data.List.NonEmpty.singleton "CURLFORM_COPYNAME")
                                                     , (2, Data.List.NonEmpty.singleton "CURLFORM_PTRNAME")
                                                     , (3, Data.List.NonEmpty.singleton "CURLFORM_NAMELENGTH")
                                                     , (4, Data.List.NonEmpty.singleton "CURLFORM_COPYCONTENTS")
                                                     , (5, Data.List.NonEmpty.singleton "CURLFORM_PTRCONTENTS")
                                                     , (6, Data.List.NonEmpty.singleton "CURLFORM_CONTENTSLENGTH")
                                                     , (7, Data.List.NonEmpty.singleton "CURLFORM_FILECONTENT")
                                                     , (8, Data.List.NonEmpty.singleton "CURLFORM_ARRAY")
                                                     , (9, Data.List.NonEmpty.singleton "CURLFORM_OBSOLETE")
                                                     , (10, Data.List.NonEmpty.singleton "CURLFORM_FILE")
                                                     , (11, Data.List.NonEmpty.singleton "CURLFORM_BUFFER")
                                                     , (12, Data.List.NonEmpty.singleton "CURLFORM_BUFFERPTR")
                                                     , (13, Data.List.NonEmpty.singleton "CURLFORM_BUFFERLENGTH")
                                                     , (14, Data.List.NonEmpty.singleton "CURLFORM_CONTENTTYPE")
                                                     , (15, Data.List.NonEmpty.singleton "CURLFORM_CONTENTHEADER")
                                                     , (16, Data.List.NonEmpty.singleton "CURLFORM_FILENAME")
                                                     , (17, Data.List.NonEmpty.singleton "CURLFORM_END")
                                                     , (18, Data.List.NonEmpty.singleton "CURLFORM_OBSOLETE2")
                                                     , (19, Data.List.NonEmpty.singleton "CURLFORM_STREAM")
                                                     , (20, Data.List.NonEmpty.singleton "CURLFORM_CONTENTLEN")
                                                     , (21, Data.List.NonEmpty.singleton "CURLFORM_LASTENTRY")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "CURLformoption"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "CURLformoption"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum CURLformoption where

  minDeclaredValue = CURLFORM_NOTHING

  maxDeclaredValue = CURLFORM_LASTENTRY

instance Show CURLformoption where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read CURLformoption where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLFORM_NOTHING@

    __defined at:__ @curl\/curl.h:2556:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_NOTHING :: CURLformoption
pattern CURLFORM_NOTHING = CURLformoption 0

{-| __C declaration:__ @CURLFORM_COPYNAME@

    __defined at:__ @curl\/curl.h:2557:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_COPYNAME :: CURLformoption
pattern CURLFORM_COPYNAME = CURLformoption 1

{-| __C declaration:__ @CURLFORM_PTRNAME@

    __defined at:__ @curl\/curl.h:2558:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_PTRNAME :: CURLformoption
pattern CURLFORM_PTRNAME = CURLformoption 2

{-| __C declaration:__ @CURLFORM_NAMELENGTH@

    __defined at:__ @curl\/curl.h:2559:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_NAMELENGTH :: CURLformoption
pattern CURLFORM_NAMELENGTH = CURLformoption 3

{-| __C declaration:__ @CURLFORM_COPYCONTENTS@

    __defined at:__ @curl\/curl.h:2560:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_COPYCONTENTS :: CURLformoption
pattern CURLFORM_COPYCONTENTS = CURLformoption 4

{-| __C declaration:__ @CURLFORM_PTRCONTENTS@

    __defined at:__ @curl\/curl.h:2561:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_PTRCONTENTS :: CURLformoption
pattern CURLFORM_PTRCONTENTS = CURLformoption 5

{-| __C declaration:__ @CURLFORM_CONTENTSLENGTH@

    __defined at:__ @curl\/curl.h:2562:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_CONTENTSLENGTH :: CURLformoption
pattern CURLFORM_CONTENTSLENGTH = CURLformoption 6

{-| __C declaration:__ @CURLFORM_FILECONTENT@

    __defined at:__ @curl\/curl.h:2563:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_FILECONTENT :: CURLformoption
pattern CURLFORM_FILECONTENT = CURLformoption 7

{-| __C declaration:__ @CURLFORM_ARRAY@

    __defined at:__ @curl\/curl.h:2564:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_ARRAY :: CURLformoption
pattern CURLFORM_ARRAY = CURLformoption 8

{-| __C declaration:__ @CURLFORM_OBSOLETE@

    __defined at:__ @curl\/curl.h:2565:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_OBSOLETE :: CURLformoption
pattern CURLFORM_OBSOLETE = CURLformoption 9

{-| __C declaration:__ @CURLFORM_FILE@

    __defined at:__ @curl\/curl.h:2566:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_FILE :: CURLformoption
pattern CURLFORM_FILE = CURLformoption 10

{-| __C declaration:__ @CURLFORM_BUFFER@

    __defined at:__ @curl\/curl.h:2568:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_BUFFER :: CURLformoption
pattern CURLFORM_BUFFER = CURLformoption 11

{-| __C declaration:__ @CURLFORM_BUFFERPTR@

    __defined at:__ @curl\/curl.h:2569:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_BUFFERPTR :: CURLformoption
pattern CURLFORM_BUFFERPTR = CURLformoption 12

{-| __C declaration:__ @CURLFORM_BUFFERLENGTH@

    __defined at:__ @curl\/curl.h:2570:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_BUFFERLENGTH :: CURLformoption
pattern CURLFORM_BUFFERLENGTH = CURLformoption 13

{-| __C declaration:__ @CURLFORM_CONTENTTYPE@

    __defined at:__ @curl\/curl.h:2572:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_CONTENTTYPE :: CURLformoption
pattern CURLFORM_CONTENTTYPE = CURLformoption 14

{-| __C declaration:__ @CURLFORM_CONTENTHEADER@

    __defined at:__ @curl\/curl.h:2573:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_CONTENTHEADER :: CURLformoption
pattern CURLFORM_CONTENTHEADER = CURLformoption 15

{-| __C declaration:__ @CURLFORM_FILENAME@

    __defined at:__ @curl\/curl.h:2574:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_FILENAME :: CURLformoption
pattern CURLFORM_FILENAME = CURLformoption 16

{-| __C declaration:__ @CURLFORM_END@

    __defined at:__ @curl\/curl.h:2575:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_END :: CURLformoption
pattern CURLFORM_END = CURLformoption 17

{-| __C declaration:__ @CURLFORM_OBSOLETE2@

    __defined at:__ @curl\/curl.h:2576:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_OBSOLETE2 :: CURLformoption
pattern CURLFORM_OBSOLETE2 = CURLformoption 18

{-| __C declaration:__ @CURLFORM_STREAM@

    __defined at:__ @curl\/curl.h:2578:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_STREAM :: CURLformoption
pattern CURLFORM_STREAM = CURLformoption 19

{-| __C declaration:__ @CURLFORM_CONTENTLEN@

    __defined at:__ @curl\/curl.h:2579:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_CONTENTLEN :: CURLformoption
pattern CURLFORM_CONTENTLEN = CURLformoption 20

{-| __C declaration:__ @CURLFORM_LASTENTRY@

    __defined at:__ @curl\/curl.h:2582:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLFORM_LASTENTRY :: CURLformoption
pattern CURLFORM_LASTENTRY = CURLformoption 21

{-| __C declaration:__ @curl_forms@

    __defined at:__ @curl\/curl.h:2586:8@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
data Curl_forms = Curl_forms
  { curl_forms_option :: CURLformoption
    {- ^ __C declaration:__ @option@

         __defined at:__ @curl\/curl.h:2587:18@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_forms_value :: HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
    {- ^ __C declaration:__ @value@

         __defined at:__ @curl\/curl.h:2588:19@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  }
  deriving stock (Eq, Show)

instance F.Storable Curl_forms where

  sizeOf = \_ -> (16 :: Int)

  alignment = \_ -> (8 :: Int)

  peek =
    \ptr0 ->
          pure Curl_forms
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_forms_option") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_forms_value") ptr0

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_forms curl_forms_option2 curl_forms_value3 ->
               HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_forms_option") ptr0 curl_forms_option2
            >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_forms_value") ptr0 curl_forms_value3

instance HsBindgen.Runtime.HasCField.HasCField Curl_forms "curl_forms_option" where

  type CFieldType Curl_forms "curl_forms_option" =
    CURLformoption

  offset# = \_ -> \_ -> 0

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_forms) "curl_forms_option")
         ) => GHC.Records.HasField "curl_forms_option" (Ptr.Ptr Curl_forms) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_forms_option")

instance HsBindgen.Runtime.HasCField.HasCField Curl_forms "curl_forms_value" where

  type CFieldType Curl_forms "curl_forms_value" =
    HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar

  offset# = \_ -> \_ -> 8

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_forms) "curl_forms_value")
         ) => GHC.Records.HasField "curl_forms_value" (Ptr.Ptr Curl_forms) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_forms_value")

{-| __C declaration:__ @CURLFORMcode@

    __defined at:__ @curl\/curl.h:2607:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype CURLFORMcode = CURLFORMcode
  { un_CURLFORMcode :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable CURLFORMcode where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure CURLFORMcode
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          CURLFORMcode un_CURLFORMcode2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_CURLFORMcode2

instance HsBindgen.Runtime.CEnum.CEnum CURLFORMcode where

  type CEnumZ CURLFORMcode = FC.CUInt

  toCEnum = CURLFORMcode

  fromCEnum = un_CURLFORMcode

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURL_FORMADD_OK")
                                                     , (1, Data.List.NonEmpty.singleton "CURL_FORMADD_MEMORY")
                                                     , (2, Data.List.NonEmpty.singleton "CURL_FORMADD_OPTION_TWICE")
                                                     , (3, Data.List.NonEmpty.singleton "CURL_FORMADD_NULL")
                                                     , (4, Data.List.NonEmpty.singleton "CURL_FORMADD_UNKNOWN_OPTION")
                                                     , (5, Data.List.NonEmpty.singleton "CURL_FORMADD_INCOMPLETE")
                                                     , (6, Data.List.NonEmpty.singleton "CURL_FORMADD_ILLEGAL_ARRAY")
                                                     , (7, Data.List.NonEmpty.singleton "CURL_FORMADD_DISABLED")
                                                     , (8, Data.List.NonEmpty.singleton "CURL_FORMADD_LAST")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "CURLFORMcode"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "CURLFORMcode"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum CURLFORMcode where

  minDeclaredValue = CURL_FORMADD_OK

  maxDeclaredValue = CURL_FORMADD_LAST

instance Show CURLFORMcode where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read CURLFORMcode where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURL_FORMADD_OK@

    __defined at:__ @curl\/curl.h:2608:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_FORMADD_OK :: CURLFORMcode
pattern CURL_FORMADD_OK = CURLFORMcode 0

{-| __C declaration:__ @CURL_FORMADD_MEMORY@

    __defined at:__ @curl\/curl.h:2610:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_FORMADD_MEMORY :: CURLFORMcode
pattern CURL_FORMADD_MEMORY = CURLFORMcode 1

{-| __C declaration:__ @CURL_FORMADD_OPTION_TWICE@

    __defined at:__ @curl\/curl.h:2611:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_FORMADD_OPTION_TWICE :: CURLFORMcode
pattern CURL_FORMADD_OPTION_TWICE = CURLFORMcode 2

{-| __C declaration:__ @CURL_FORMADD_NULL@

    __defined at:__ @curl\/curl.h:2612:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_FORMADD_NULL :: CURLFORMcode
pattern CURL_FORMADD_NULL = CURLFORMcode 3

{-| __C declaration:__ @CURL_FORMADD_UNKNOWN_OPTION@

    __defined at:__ @curl\/curl.h:2613:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_FORMADD_UNKNOWN_OPTION :: CURLFORMcode
pattern CURL_FORMADD_UNKNOWN_OPTION = CURLFORMcode 4

{-| __C declaration:__ @CURL_FORMADD_INCOMPLETE@

    __defined at:__ @curl\/curl.h:2614:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_FORMADD_INCOMPLETE :: CURLFORMcode
pattern CURL_FORMADD_INCOMPLETE = CURLFORMcode 5

{-| __C declaration:__ @CURL_FORMADD_ILLEGAL_ARRAY@

    __defined at:__ @curl\/curl.h:2615:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_FORMADD_ILLEGAL_ARRAY :: CURLFORMcode
pattern CURL_FORMADD_ILLEGAL_ARRAY = CURLFORMcode 6

{-| __C declaration:__ @CURL_FORMADD_DISABLED@

    __defined at:__ @curl\/curl.h:2617:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_FORMADD_DISABLED :: CURLFORMcode
pattern CURL_FORMADD_DISABLED = CURLFORMcode 7

{-| __C declaration:__ @CURL_FORMADD_LAST@

    __defined at:__ @curl\/curl.h:2619:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_FORMADD_LAST :: CURLFORMcode
pattern CURL_FORMADD_LAST = CURLFORMcode 8

{-| Auxiliary type used by 'Curl_formget_callback'

__defined at:__ @curl\/curl.h:2644:18@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_formget_callback_Deref = Curl_formget_callback_Deref
  { un_Curl_formget_callback_Deref :: (Ptr.Ptr Void) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO HsBindgen.Runtime.Prelude.CSize
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_formget_callback_Deref ::
     Curl_formget_callback_Deref
  -> IO (Ptr.FunPtr Curl_formget_callback_Deref)

foreign import ccall safe "dynamic" fromCurl_formget_callback_Deref ::
     Ptr.FunPtr Curl_formget_callback_Deref
  -> Curl_formget_callback_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_formget_callback_Deref where

  toFunPtr = toCurl_formget_callback_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_formget_callback_Deref where

  fromFunPtr = fromCurl_formget_callback_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_formget_callback_Deref) "un_Curl_formget_callback_Deref")
         ) => GHC.Records.HasField "un_Curl_formget_callback_Deref" (Ptr.Ptr Curl_formget_callback_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_formget_callback_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_formget_callback_Deref "un_Curl_formget_callback_Deref" where

  type CFieldType Curl_formget_callback_Deref "un_Curl_formget_callback_Deref" =
    (Ptr.Ptr Void) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO HsBindgen.Runtime.Prelude.CSize

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_formget_callback@

    __defined at:__ @curl\/curl.h:2644:18@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_formget_callback = Curl_formget_callback
  { un_Curl_formget_callback :: Ptr.FunPtr Curl_formget_callback_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_formget_callback) "un_Curl_formget_callback")
         ) => GHC.Records.HasField "un_Curl_formget_callback" (Ptr.Ptr Curl_formget_callback) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_formget_callback")

instance HsBindgen.Runtime.HasCField.HasCField Curl_formget_callback "un_Curl_formget_callback" where

  type CFieldType Curl_formget_callback "un_Curl_formget_callback" =
    Ptr.FunPtr Curl_formget_callback_Deref

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_slist@

    __defined at:__ @curl\/curl.h:2796:8@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
data Curl_slist = Curl_slist
  { curl_slist_data :: Ptr.Ptr FC.CChar
    {- ^ __C declaration:__ @data@

         __defined at:__ @curl\/curl.h:2797:9@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_slist_next :: Ptr.Ptr Curl_slist
    {- ^ __C declaration:__ @next@

         __defined at:__ @curl\/curl.h:2798:22@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  }
  deriving stock (Eq, Show)

instance F.Storable Curl_slist where

  sizeOf = \_ -> (16 :: Int)

  alignment = \_ -> (8 :: Int)

  peek =
    \ptr0 ->
          pure Curl_slist
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_slist_data") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_slist_next") ptr0

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_slist curl_slist_data2 curl_slist_next3 ->
               HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_slist_data") ptr0 curl_slist_data2
            >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_slist_next") ptr0 curl_slist_next3

instance HsBindgen.Runtime.HasCField.HasCField Curl_slist "curl_slist_data" where

  type CFieldType Curl_slist "curl_slist_data" =
    Ptr.Ptr FC.CChar

  offset# = \_ -> \_ -> 0

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_slist) "curl_slist_data")
         ) => GHC.Records.HasField "curl_slist_data" (Ptr.Ptr Curl_slist) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_slist_data")

instance HsBindgen.Runtime.HasCField.HasCField Curl_slist "curl_slist_next" where

  type CFieldType Curl_slist "curl_slist_next" =
    Ptr.Ptr Curl_slist

  offset# = \_ -> \_ -> 8

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_slist) "curl_slist_next")
         ) => GHC.Records.HasField "curl_slist_next" (Ptr.Ptr Curl_slist) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_slist_next")

{-| __C declaration:__ @curl_ssl_backend@

    __defined at:__ @curl\/curl.h:2827:8@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
data Curl_ssl_backend = Curl_ssl_backend
  { curl_ssl_backend_id :: Curl_sslbackend
    {- ^ __C declaration:__ @id@

         __defined at:__ @curl\/curl.h:2828:19@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_ssl_backend_name :: HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
    {- ^ __C declaration:__ @name@

         __defined at:__ @curl\/curl.h:2829:15@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  }
  deriving stock (Eq, Show)

instance F.Storable Curl_ssl_backend where

  sizeOf = \_ -> (16 :: Int)

  alignment = \_ -> (8 :: Int)

  peek =
    \ptr0 ->
          pure Curl_ssl_backend
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_ssl_backend_id") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_ssl_backend_name") ptr0

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_ssl_backend curl_ssl_backend_id2 curl_ssl_backend_name3 ->
               HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_ssl_backend_id") ptr0 curl_ssl_backend_id2
            >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_ssl_backend_name") ptr0 curl_ssl_backend_name3

instance HsBindgen.Runtime.HasCField.HasCField Curl_ssl_backend "curl_ssl_backend_id" where

  type CFieldType Curl_ssl_backend "curl_ssl_backend_id" =
    Curl_sslbackend

  offset# = \_ -> \_ -> 0

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_ssl_backend) "curl_ssl_backend_id")
         ) => GHC.Records.HasField "curl_ssl_backend_id" (Ptr.Ptr Curl_ssl_backend) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_ssl_backend_id")

instance HsBindgen.Runtime.HasCField.HasCField Curl_ssl_backend "curl_ssl_backend_name" where

  type CFieldType Curl_ssl_backend "curl_ssl_backend_name" =
    HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar

  offset# = \_ -> \_ -> 8

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_ssl_backend) "curl_ssl_backend_name")
         ) => GHC.Records.HasField "curl_ssl_backend_name" (Ptr.Ptr Curl_ssl_backend) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_ssl_backend_name")

{-| __C declaration:__ @CURLsslset@

    __defined at:__ @curl\/curl.h:2833:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype CURLsslset = CURLsslset
  { un_CURLsslset :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable CURLsslset where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure CURLsslset
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          CURLsslset un_CURLsslset2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_CURLsslset2

instance HsBindgen.Runtime.CEnum.CEnum CURLsslset where

  type CEnumZ CURLsslset = FC.CUInt

  toCEnum = CURLsslset

  fromCEnum = un_CURLsslset

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLSSLSET_OK")
                                                     , (1, Data.List.NonEmpty.singleton "CURLSSLSET_UNKNOWN_BACKEND")
                                                     , (2, Data.List.NonEmpty.singleton "CURLSSLSET_TOO_LATE")
                                                     , (3, Data.List.NonEmpty.singleton "CURLSSLSET_NO_BACKENDS")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "CURLsslset"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "CURLsslset"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum CURLsslset where

  minDeclaredValue = CURLSSLSET_OK

  maxDeclaredValue = CURLSSLSET_NO_BACKENDS

instance Show CURLsslset where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read CURLsslset where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLSSLSET_OK@

    __defined at:__ @curl\/curl.h:2834:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSSLSET_OK :: CURLsslset
pattern CURLSSLSET_OK = CURLsslset 0

{-| __C declaration:__ @CURLSSLSET_UNKNOWN_BACKEND@

    __defined at:__ @curl\/curl.h:2835:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSSLSET_UNKNOWN_BACKEND :: CURLsslset
pattern CURLSSLSET_UNKNOWN_BACKEND = CURLsslset 1

{-| __C declaration:__ @CURLSSLSET_TOO_LATE@

    __defined at:__ @curl\/curl.h:2836:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSSLSET_TOO_LATE :: CURLsslset
pattern CURLSSLSET_TOO_LATE = CURLsslset 2

{-| __C declaration:__ @CURLSSLSET_NO_BACKENDS@

    __defined at:__ @curl\/curl.h:2837:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSSLSET_NO_BACKENDS :: CURLsslset
pattern CURLSSLSET_NO_BACKENDS = CURLsslset 3

{-| __C declaration:__ @curl_certinfo@

    __defined at:__ @curl\/curl.h:2876:8@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
data Curl_certinfo = Curl_certinfo
  { curl_certinfo_num_of_certs :: FC.CInt
    {- ^ __C declaration:__ @num_of_certs@

         __defined at:__ @curl\/curl.h:2877:7@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_certinfo_certinfo :: Ptr.Ptr (Ptr.Ptr Curl_slist)
    {- ^ __C declaration:__ @certinfo@

         __defined at:__ @curl\/curl.h:2878:23@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  }
  deriving stock (Eq, Show)

instance F.Storable Curl_certinfo where

  sizeOf = \_ -> (16 :: Int)

  alignment = \_ -> (8 :: Int)

  peek =
    \ptr0 ->
          pure Curl_certinfo
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_certinfo_num_of_certs") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_certinfo_certinfo") ptr0

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_certinfo curl_certinfo_num_of_certs2 curl_certinfo_certinfo3 ->
               HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_certinfo_num_of_certs") ptr0 curl_certinfo_num_of_certs2
            >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_certinfo_certinfo") ptr0 curl_certinfo_certinfo3

instance HsBindgen.Runtime.HasCField.HasCField Curl_certinfo "curl_certinfo_num_of_certs" where

  type CFieldType Curl_certinfo "curl_certinfo_num_of_certs" =
    FC.CInt

  offset# = \_ -> \_ -> 0

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_certinfo) "curl_certinfo_num_of_certs")
         ) => GHC.Records.HasField "curl_certinfo_num_of_certs" (Ptr.Ptr Curl_certinfo) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_certinfo_num_of_certs")

instance HsBindgen.Runtime.HasCField.HasCField Curl_certinfo "curl_certinfo_certinfo" where

  type CFieldType Curl_certinfo "curl_certinfo_certinfo" =
    Ptr.Ptr (Ptr.Ptr Curl_slist)

  offset# = \_ -> \_ -> 8

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_certinfo) "curl_certinfo_certinfo")
         ) => GHC.Records.HasField "curl_certinfo_certinfo" (Ptr.Ptr Curl_certinfo) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_certinfo_certinfo")

{-| __C declaration:__ @curl_tlssessioninfo@

    __defined at:__ @curl\/curl.h:2887:8@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
data Curl_tlssessioninfo = Curl_tlssessioninfo
  { curl_tlssessioninfo_backend :: Curl_sslbackend
    {- ^ __C declaration:__ @backend@

         __defined at:__ @curl\/curl.h:2888:19@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_tlssessioninfo_internals :: Ptr.Ptr Void
    {- ^ __C declaration:__ @internals@

         __defined at:__ @curl\/curl.h:2889:9@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  }
  deriving stock (Eq, Show)

instance F.Storable Curl_tlssessioninfo where

  sizeOf = \_ -> (16 :: Int)

  alignment = \_ -> (8 :: Int)

  peek =
    \ptr0 ->
          pure Curl_tlssessioninfo
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_tlssessioninfo_backend") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_tlssessioninfo_internals") ptr0

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_tlssessioninfo
            curl_tlssessioninfo_backend2
            curl_tlssessioninfo_internals3 ->
                 HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_tlssessioninfo_backend") ptr0 curl_tlssessioninfo_backend2
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_tlssessioninfo_internals") ptr0 curl_tlssessioninfo_internals3

instance HsBindgen.Runtime.HasCField.HasCField Curl_tlssessioninfo "curl_tlssessioninfo_backend" where

  type CFieldType Curl_tlssessioninfo "curl_tlssessioninfo_backend" =
    Curl_sslbackend

  offset# = \_ -> \_ -> 0

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_tlssessioninfo) "curl_tlssessioninfo_backend")
         ) => GHC.Records.HasField "curl_tlssessioninfo_backend" (Ptr.Ptr Curl_tlssessioninfo) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_tlssessioninfo_backend")

instance HsBindgen.Runtime.HasCField.HasCField Curl_tlssessioninfo "curl_tlssessioninfo_internals" where

  type CFieldType Curl_tlssessioninfo "curl_tlssessioninfo_internals" =
    Ptr.Ptr Void

  offset# = \_ -> \_ -> 8

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_tlssessioninfo) "curl_tlssessioninfo_internals")
         ) => GHC.Records.HasField "curl_tlssessioninfo_internals" (Ptr.Ptr Curl_tlssessioninfo) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_tlssessioninfo_internals")

{-| __C declaration:__ @CURLINFO_STRING@

    __defined at:__ @curl\/curl.h:2892:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLINFO_STRING :: FC.CInt
cURLINFO_STRING = (1048576 :: FC.CInt)

{-| __C declaration:__ @CURLINFO_LONG@

    __defined at:__ @curl\/curl.h:2893:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLINFO_LONG :: FC.CInt
cURLINFO_LONG = (2097152 :: FC.CInt)

{-| __C declaration:__ @CURLINFO_DOUBLE@

    __defined at:__ @curl\/curl.h:2894:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLINFO_DOUBLE :: FC.CInt
cURLINFO_DOUBLE = (3145728 :: FC.CInt)

{-| __C declaration:__ @CURLINFO_SLIST@

    __defined at:__ @curl\/curl.h:2895:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLINFO_SLIST :: FC.CInt
cURLINFO_SLIST = (4194304 :: FC.CInt)

{-| __C declaration:__ @CURLINFO_PTR@

    __defined at:__ @curl\/curl.h:2896:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLINFO_PTR :: FC.CInt
cURLINFO_PTR = (4194304 :: FC.CInt)

{-| __C declaration:__ @CURLINFO_SOCKET@

    __defined at:__ @curl\/curl.h:2897:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLINFO_SOCKET :: FC.CInt
cURLINFO_SOCKET = (5242880 :: FC.CInt)

{-| __C declaration:__ @CURLINFO_OFF_T@

    __defined at:__ @curl\/curl.h:2898:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLINFO_OFF_T :: FC.CInt
cURLINFO_OFF_T = (6291456 :: FC.CInt)

{-| __C declaration:__ @CURLINFO_MASK@

    __defined at:__ @curl\/curl.h:2899:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLINFO_MASK :: FC.CInt
cURLINFO_MASK = (1048575 :: FC.CInt)

{-| __C declaration:__ @CURLINFO_TYPEMASK@

    __defined at:__ @curl\/curl.h:2900:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLINFO_TYPEMASK :: FC.CInt
cURLINFO_TYPEMASK = (15728640 :: FC.CInt)

{-| __C declaration:__ @CURLINFO@

    __defined at:__ @curl\/curl.h:2902:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype CURLINFO = CURLINFO
  { un_CURLINFO :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable CURLINFO where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure CURLINFO
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          CURLINFO un_CURLINFO2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_CURLINFO2

instance HsBindgen.Runtime.CEnum.CEnum CURLINFO where

  type CEnumZ CURLINFO = FC.CUInt

  toCEnum = CURLINFO

  fromCEnum = un_CURLINFO

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLINFO_NONE")
                                                     , (70, Data.List.NonEmpty.singleton "CURLINFO_LASTONE")
                                                     , (1048577, Data.List.NonEmpty.singleton "CURLINFO_EFFECTIVE_URL")
                                                     , (1048594, Data.List.NonEmpty.singleton "CURLINFO_CONTENT_TYPE")
                                                     , (1048597, Data.List.NonEmpty.singleton "CURLINFO_PRIVATE")
                                                     , (1048606, Data.List.NonEmpty.singleton "CURLINFO_FTP_ENTRY_PATH")
                                                     , (1048607, Data.List.NonEmpty.singleton "CURLINFO_REDIRECT_URL")
                                                     , (1048608, Data.List.NonEmpty.singleton "CURLINFO_PRIMARY_IP")
                                                     , (1048612, Data.List.NonEmpty.singleton "CURLINFO_RTSP_SESSION_ID")
                                                     , (1048617, Data.List.NonEmpty.singleton "CURLINFO_LOCAL_IP")
                                                     , (1048625, Data.List.NonEmpty.singleton "CURLINFO_SCHEME")
                                                     , (1048634, Data.List.NonEmpty.singleton "CURLINFO_EFFECTIVE_METHOD")
                                                     , (1048636, Data.List.NonEmpty.singleton "CURLINFO_REFERER")
                                                     , (1048637, Data.List.NonEmpty.singleton "CURLINFO_CAINFO")
                                                     , (1048638, Data.List.NonEmpty.singleton "CURLINFO_CAPATH")
                                                     , (2097154, Data.List.NonEmpty.singleton "CURLINFO_RESPONSE_CODE")
                                                     , (2097163, Data.List.NonEmpty.singleton "CURLINFO_HEADER_SIZE")
                                                     , (2097164, Data.List.NonEmpty.singleton "CURLINFO_REQUEST_SIZE")
                                                     , (2097165, Data.List.NonEmpty.singleton "CURLINFO_SSL_VERIFYRESULT")
                                                     , (2097166, Data.List.NonEmpty.singleton "CURLINFO_FILETIME")
                                                     , (2097172, Data.List.NonEmpty.singleton "CURLINFO_REDIRECT_COUNT")
                                                     , (2097174, Data.List.NonEmpty.singleton "CURLINFO_HTTP_CONNECTCODE")
                                                     , (2097175, Data.List.NonEmpty.singleton "CURLINFO_HTTPAUTH_AVAIL")
                                                     , (2097176, Data.List.NonEmpty.singleton "CURLINFO_PROXYAUTH_AVAIL")
                                                     , (2097177, Data.List.NonEmpty.singleton "CURLINFO_OS_ERRNO")
                                                     , (2097178, Data.List.NonEmpty.singleton "CURLINFO_NUM_CONNECTS")
                                                     , (2097181, Data.List.NonEmpty.singleton "CURLINFO_LASTSOCKET")
                                                     , (2097187, Data.List.NonEmpty.singleton "CURLINFO_CONDITION_UNMET")
                                                     , (2097189, Data.List.NonEmpty.singleton "CURLINFO_RTSP_CLIENT_CSEQ")
                                                     , (2097190, Data.List.NonEmpty.singleton "CURLINFO_RTSP_SERVER_CSEQ")
                                                     , (2097191, Data.List.NonEmpty.singleton "CURLINFO_RTSP_CSEQ_RECV")
                                                     , (2097192, Data.List.NonEmpty.singleton "CURLINFO_PRIMARY_PORT")
                                                     , (2097194, Data.List.NonEmpty.singleton "CURLINFO_LOCAL_PORT")
                                                     , (2097198, Data.List.NonEmpty.singleton "CURLINFO_HTTP_VERSION")
                                                     , (2097199, Data.List.NonEmpty.singleton "CURLINFO_PROXY_SSL_VERIFYRESULT")
                                                     , (2097200, Data.List.NonEmpty.singleton "CURLINFO_PROTOCOL")
                                                     , (2097211, Data.List.NonEmpty.singleton "CURLINFO_PROXY_ERROR")
                                                     , (2097218, Data.List.NonEmpty.singleton "CURLINFO_USED_PROXY")
                                                     , (2097221, Data.List.NonEmpty.singleton "CURLINFO_HTTPAUTH_USED")
                                                     , (2097222, Data.List.NonEmpty.singleton "CURLINFO_PROXYAUTH_USED")
                                                     , (3145731, Data.List.NonEmpty.singleton "CURLINFO_TOTAL_TIME")
                                                     , (3145732, Data.List.NonEmpty.singleton "CURLINFO_NAMELOOKUP_TIME")
                                                     , (3145733, Data.List.NonEmpty.singleton "CURLINFO_CONNECT_TIME")
                                                     , (3145734, Data.List.NonEmpty.singleton "CURLINFO_PRETRANSFER_TIME")
                                                     , (3145735, Data.List.NonEmpty.singleton "CURLINFO_SIZE_UPLOAD")
                                                     , (3145736, Data.List.NonEmpty.singleton "CURLINFO_SIZE_DOWNLOAD")
                                                     , (3145737, Data.List.NonEmpty.singleton "CURLINFO_SPEED_DOWNLOAD")
                                                     , (3145738, Data.List.NonEmpty.singleton "CURLINFO_SPEED_UPLOAD")
                                                     , (3145743, Data.List.NonEmpty.singleton "CURLINFO_CONTENT_LENGTH_DOWNLOAD")
                                                     , (3145744, Data.List.NonEmpty.singleton "CURLINFO_CONTENT_LENGTH_UPLOAD")
                                                     , (3145745, Data.List.NonEmpty.singleton "CURLINFO_STARTTRANSFER_TIME")
                                                     , (3145747, Data.List.NonEmpty.singleton "CURLINFO_REDIRECT_TIME")
                                                     , (3145761, Data.List.NonEmpty.singleton "CURLINFO_APPCONNECT_TIME")
                                                     , (4194331, Data.List.NonEmpty.singleton "CURLINFO_SSL_ENGINES")
                                                     , (4194332, Data.List.NonEmpty.singleton "CURLINFO_COOKIELIST")
                                                     , (4194338, Data.List.NonEmpty.singleton "CURLINFO_CERTINFO")
                                                     , (4194347, Data.List.NonEmpty.singleton "CURLINFO_TLS_SESSION")
                                                     , (4194349, Data.List.NonEmpty.singleton "CURLINFO_TLS_SSL_PTR")
                                                     , (5242924, Data.List.NonEmpty.singleton "CURLINFO_ACTIVESOCKET")
                                                     , (6291463, Data.List.NonEmpty.singleton "CURLINFO_SIZE_UPLOAD_T")
                                                     , (6291464, Data.List.NonEmpty.singleton "CURLINFO_SIZE_DOWNLOAD_T")
                                                     , (6291465, Data.List.NonEmpty.singleton "CURLINFO_SPEED_DOWNLOAD_T")
                                                     , (6291466, Data.List.NonEmpty.singleton "CURLINFO_SPEED_UPLOAD_T")
                                                     , (6291470, Data.List.NonEmpty.singleton "CURLINFO_FILETIME_T")
                                                     , (6291471, Data.List.NonEmpty.singleton "CURLINFO_CONTENT_LENGTH_DOWNLOAD_T")
                                                     , (6291472, Data.List.NonEmpty.singleton "CURLINFO_CONTENT_LENGTH_UPLOAD_T")
                                                     , (6291506, Data.List.NonEmpty.singleton "CURLINFO_TOTAL_TIME_T")
                                                     , (6291507, Data.List.NonEmpty.singleton "CURLINFO_NAMELOOKUP_TIME_T")
                                                     , (6291508, Data.List.NonEmpty.singleton "CURLINFO_CONNECT_TIME_T")
                                                     , (6291509, Data.List.NonEmpty.singleton "CURLINFO_PRETRANSFER_TIME_T")
                                                     , (6291510, Data.List.NonEmpty.singleton "CURLINFO_STARTTRANSFER_TIME_T")
                                                     , (6291511, Data.List.NonEmpty.singleton "CURLINFO_REDIRECT_TIME_T")
                                                     , (6291512, Data.List.NonEmpty.singleton "CURLINFO_APPCONNECT_TIME_T")
                                                     , (6291513, Data.List.NonEmpty.singleton "CURLINFO_RETRY_AFTER")
                                                     , (6291519, Data.List.NonEmpty.singleton "CURLINFO_XFER_ID")
                                                     , (6291520, Data.List.NonEmpty.singleton "CURLINFO_CONN_ID")
                                                     , (6291521, Data.List.NonEmpty.singleton "CURLINFO_QUEUE_TIME_T")
                                                     , (6291523, Data.List.NonEmpty.singleton "CURLINFO_POSTTRANSFER_TIME_T")
                                                     , (6291524, Data.List.NonEmpty.singleton "CURLINFO_EARLYDATA_SENT_T")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "CURLINFO"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "CURLINFO"

instance Show CURLINFO where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read CURLINFO where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLINFO_NONE@

    __defined at:__ @curl\/curl.h:2903:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_NONE :: CURLINFO
pattern CURLINFO_NONE = CURLINFO 0

{-| __C declaration:__ @CURLINFO_EFFECTIVE_URL@

    __defined at:__ @curl\/curl.h:2904:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_EFFECTIVE_URL :: CURLINFO
pattern CURLINFO_EFFECTIVE_URL = CURLINFO 1048577

{-| __C declaration:__ @CURLINFO_RESPONSE_CODE@

    __defined at:__ @curl\/curl.h:2905:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_RESPONSE_CODE :: CURLINFO
pattern CURLINFO_RESPONSE_CODE = CURLINFO 2097154

{-| __C declaration:__ @CURLINFO_TOTAL_TIME@

    __defined at:__ @curl\/curl.h:2906:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_TOTAL_TIME :: CURLINFO
pattern CURLINFO_TOTAL_TIME = CURLINFO 3145731

{-| __C declaration:__ @CURLINFO_NAMELOOKUP_TIME@

    __defined at:__ @curl\/curl.h:2907:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_NAMELOOKUP_TIME :: CURLINFO
pattern CURLINFO_NAMELOOKUP_TIME = CURLINFO 3145732

{-| __C declaration:__ @CURLINFO_CONNECT_TIME@

    __defined at:__ @curl\/curl.h:2908:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_CONNECT_TIME :: CURLINFO
pattern CURLINFO_CONNECT_TIME = CURLINFO 3145733

{-| __C declaration:__ @CURLINFO_PRETRANSFER_TIME@

    __defined at:__ @curl\/curl.h:2909:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_PRETRANSFER_TIME :: CURLINFO
pattern CURLINFO_PRETRANSFER_TIME = CURLINFO 3145734

{-| __C declaration:__ @CURLINFO_SIZE_UPLOAD@

    __defined at:__ @curl\/curl.h:2910:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_SIZE_UPLOAD :: CURLINFO
pattern CURLINFO_SIZE_UPLOAD = CURLINFO 3145735

{-| __C declaration:__ @CURLINFO_SIZE_UPLOAD_T@

    __defined at:__ @curl\/curl.h:2912:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_SIZE_UPLOAD_T :: CURLINFO
pattern CURLINFO_SIZE_UPLOAD_T = CURLINFO 6291463

{-| __C declaration:__ @CURLINFO_SIZE_DOWNLOAD@

    __defined at:__ @curl\/curl.h:2913:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_SIZE_DOWNLOAD :: CURLINFO
pattern CURLINFO_SIZE_DOWNLOAD = CURLINFO 3145736

{-| __C declaration:__ @CURLINFO_SIZE_DOWNLOAD_T@

    __defined at:__ @curl\/curl.h:2916:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_SIZE_DOWNLOAD_T :: CURLINFO
pattern CURLINFO_SIZE_DOWNLOAD_T = CURLINFO 6291464

{-| __C declaration:__ @CURLINFO_SPEED_DOWNLOAD@

    __defined at:__ @curl\/curl.h:2917:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_SPEED_DOWNLOAD :: CURLINFO
pattern CURLINFO_SPEED_DOWNLOAD = CURLINFO 3145737

{-| __C declaration:__ @CURLINFO_SPEED_DOWNLOAD_T@

    __defined at:__ @curl\/curl.h:2920:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_SPEED_DOWNLOAD_T :: CURLINFO
pattern CURLINFO_SPEED_DOWNLOAD_T = CURLINFO 6291465

{-| __C declaration:__ @CURLINFO_SPEED_UPLOAD@

    __defined at:__ @curl\/curl.h:2921:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_SPEED_UPLOAD :: CURLINFO
pattern CURLINFO_SPEED_UPLOAD = CURLINFO 3145738

{-| __C declaration:__ @CURLINFO_SPEED_UPLOAD_T@

    __defined at:__ @curl\/curl.h:2924:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_SPEED_UPLOAD_T :: CURLINFO
pattern CURLINFO_SPEED_UPLOAD_T = CURLINFO 6291466

{-| __C declaration:__ @CURLINFO_HEADER_SIZE@

    __defined at:__ @curl\/curl.h:2925:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_HEADER_SIZE :: CURLINFO
pattern CURLINFO_HEADER_SIZE = CURLINFO 2097163

{-| __C declaration:__ @CURLINFO_REQUEST_SIZE@

    __defined at:__ @curl\/curl.h:2926:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_REQUEST_SIZE :: CURLINFO
pattern CURLINFO_REQUEST_SIZE = CURLINFO 2097164

{-| __C declaration:__ @CURLINFO_SSL_VERIFYRESULT@

    __defined at:__ @curl\/curl.h:2927:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_SSL_VERIFYRESULT :: CURLINFO
pattern CURLINFO_SSL_VERIFYRESULT = CURLINFO 2097165

{-| __C declaration:__ @CURLINFO_FILETIME@

    __defined at:__ @curl\/curl.h:2928:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_FILETIME :: CURLINFO
pattern CURLINFO_FILETIME = CURLINFO 2097166

{-| __C declaration:__ @CURLINFO_FILETIME_T@

    __defined at:__ @curl\/curl.h:2929:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_FILETIME_T :: CURLINFO
pattern CURLINFO_FILETIME_T = CURLINFO 6291470

{-| __C declaration:__ @CURLINFO_CONTENT_LENGTH_DOWNLOAD@

    __defined at:__ @curl\/curl.h:2930:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_CONTENT_LENGTH_DOWNLOAD :: CURLINFO
pattern CURLINFO_CONTENT_LENGTH_DOWNLOAD = CURLINFO 3145743

{-| __C declaration:__ @CURLINFO_CONTENT_LENGTH_DOWNLOAD_T@

    __defined at:__ @curl\/curl.h:2934:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_CONTENT_LENGTH_DOWNLOAD_T :: CURLINFO
pattern CURLINFO_CONTENT_LENGTH_DOWNLOAD_T = CURLINFO 6291471

{-| __C declaration:__ @CURLINFO_CONTENT_LENGTH_UPLOAD@

    __defined at:__ @curl\/curl.h:2935:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_CONTENT_LENGTH_UPLOAD :: CURLINFO
pattern CURLINFO_CONTENT_LENGTH_UPLOAD = CURLINFO 3145744

{-| __C declaration:__ @CURLINFO_CONTENT_LENGTH_UPLOAD_T@

    __defined at:__ @curl\/curl.h:2939:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_CONTENT_LENGTH_UPLOAD_T :: CURLINFO
pattern CURLINFO_CONTENT_LENGTH_UPLOAD_T = CURLINFO 6291472

{-| __C declaration:__ @CURLINFO_STARTTRANSFER_TIME@

    __defined at:__ @curl\/curl.h:2940:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_STARTTRANSFER_TIME :: CURLINFO
pattern CURLINFO_STARTTRANSFER_TIME = CURLINFO 3145745

{-| __C declaration:__ @CURLINFO_CONTENT_TYPE@

    __defined at:__ @curl\/curl.h:2941:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_CONTENT_TYPE :: CURLINFO
pattern CURLINFO_CONTENT_TYPE = CURLINFO 1048594

{-| __C declaration:__ @CURLINFO_REDIRECT_TIME@

    __defined at:__ @curl\/curl.h:2942:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_REDIRECT_TIME :: CURLINFO
pattern CURLINFO_REDIRECT_TIME = CURLINFO 3145747

{-| __C declaration:__ @CURLINFO_REDIRECT_COUNT@

    __defined at:__ @curl\/curl.h:2943:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_REDIRECT_COUNT :: CURLINFO
pattern CURLINFO_REDIRECT_COUNT = CURLINFO 2097172

{-| __C declaration:__ @CURLINFO_PRIVATE@

    __defined at:__ @curl\/curl.h:2944:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_PRIVATE :: CURLINFO
pattern CURLINFO_PRIVATE = CURLINFO 1048597

{-| __C declaration:__ @CURLINFO_HTTP_CONNECTCODE@

    __defined at:__ @curl\/curl.h:2945:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_HTTP_CONNECTCODE :: CURLINFO
pattern CURLINFO_HTTP_CONNECTCODE = CURLINFO 2097174

{-| __C declaration:__ @CURLINFO_HTTPAUTH_AVAIL@

    __defined at:__ @curl\/curl.h:2946:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_HTTPAUTH_AVAIL :: CURLINFO
pattern CURLINFO_HTTPAUTH_AVAIL = CURLINFO 2097175

{-| __C declaration:__ @CURLINFO_PROXYAUTH_AVAIL@

    __defined at:__ @curl\/curl.h:2947:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_PROXYAUTH_AVAIL :: CURLINFO
pattern CURLINFO_PROXYAUTH_AVAIL = CURLINFO 2097176

{-| __C declaration:__ @CURLINFO_OS_ERRNO@

    __defined at:__ @curl\/curl.h:2948:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_OS_ERRNO :: CURLINFO
pattern CURLINFO_OS_ERRNO = CURLINFO 2097177

{-| __C declaration:__ @CURLINFO_NUM_CONNECTS@

    __defined at:__ @curl\/curl.h:2949:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_NUM_CONNECTS :: CURLINFO
pattern CURLINFO_NUM_CONNECTS = CURLINFO 2097178

{-| __C declaration:__ @CURLINFO_SSL_ENGINES@

    __defined at:__ @curl\/curl.h:2950:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_SSL_ENGINES :: CURLINFO
pattern CURLINFO_SSL_ENGINES = CURLINFO 4194331

{-| __C declaration:__ @CURLINFO_COOKIELIST@

    __defined at:__ @curl\/curl.h:2951:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_COOKIELIST :: CURLINFO
pattern CURLINFO_COOKIELIST = CURLINFO 4194332

{-| __C declaration:__ @CURLINFO_LASTSOCKET@

    __defined at:__ @curl\/curl.h:2952:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_LASTSOCKET :: CURLINFO
pattern CURLINFO_LASTSOCKET = CURLINFO 2097181

{-| __C declaration:__ @CURLINFO_FTP_ENTRY_PATH@

    __defined at:__ @curl\/curl.h:2954:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_FTP_ENTRY_PATH :: CURLINFO
pattern CURLINFO_FTP_ENTRY_PATH = CURLINFO 1048606

{-| __C declaration:__ @CURLINFO_REDIRECT_URL@

    __defined at:__ @curl\/curl.h:2955:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_REDIRECT_URL :: CURLINFO
pattern CURLINFO_REDIRECT_URL = CURLINFO 1048607

{-| __C declaration:__ @CURLINFO_PRIMARY_IP@

    __defined at:__ @curl\/curl.h:2956:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_PRIMARY_IP :: CURLINFO
pattern CURLINFO_PRIMARY_IP = CURLINFO 1048608

{-| __C declaration:__ @CURLINFO_APPCONNECT_TIME@

    __defined at:__ @curl\/curl.h:2957:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_APPCONNECT_TIME :: CURLINFO
pattern CURLINFO_APPCONNECT_TIME = CURLINFO 3145761

{-| __C declaration:__ @CURLINFO_CERTINFO@

    __defined at:__ @curl\/curl.h:2958:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_CERTINFO :: CURLINFO
pattern CURLINFO_CERTINFO = CURLINFO 4194338

{-| __C declaration:__ @CURLINFO_CONDITION_UNMET@

    __defined at:__ @curl\/curl.h:2959:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_CONDITION_UNMET :: CURLINFO
pattern CURLINFO_CONDITION_UNMET = CURLINFO 2097187

{-| __C declaration:__ @CURLINFO_RTSP_SESSION_ID@

    __defined at:__ @curl\/curl.h:2960:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_RTSP_SESSION_ID :: CURLINFO
pattern CURLINFO_RTSP_SESSION_ID = CURLINFO 1048612

{-| __C declaration:__ @CURLINFO_RTSP_CLIENT_CSEQ@

    __defined at:__ @curl\/curl.h:2961:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_RTSP_CLIENT_CSEQ :: CURLINFO
pattern CURLINFO_RTSP_CLIENT_CSEQ = CURLINFO 2097189

{-| __C declaration:__ @CURLINFO_RTSP_SERVER_CSEQ@

    __defined at:__ @curl\/curl.h:2962:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_RTSP_SERVER_CSEQ :: CURLINFO
pattern CURLINFO_RTSP_SERVER_CSEQ = CURLINFO 2097190

{-| __C declaration:__ @CURLINFO_RTSP_CSEQ_RECV@

    __defined at:__ @curl\/curl.h:2963:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_RTSP_CSEQ_RECV :: CURLINFO
pattern CURLINFO_RTSP_CSEQ_RECV = CURLINFO 2097191

{-| __C declaration:__ @CURLINFO_PRIMARY_PORT@

    __defined at:__ @curl\/curl.h:2964:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_PRIMARY_PORT :: CURLINFO
pattern CURLINFO_PRIMARY_PORT = CURLINFO 2097192

{-| __C declaration:__ @CURLINFO_LOCAL_IP@

    __defined at:__ @curl\/curl.h:2965:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_LOCAL_IP :: CURLINFO
pattern CURLINFO_LOCAL_IP = CURLINFO 1048617

{-| __C declaration:__ @CURLINFO_LOCAL_PORT@

    __defined at:__ @curl\/curl.h:2966:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_LOCAL_PORT :: CURLINFO
pattern CURLINFO_LOCAL_PORT = CURLINFO 2097194

{-| __C declaration:__ @CURLINFO_TLS_SESSION@

    __defined at:__ @curl\/curl.h:2967:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_TLS_SESSION :: CURLINFO
pattern CURLINFO_TLS_SESSION = CURLINFO 4194347

{-| __C declaration:__ @CURLINFO_ACTIVESOCKET@

    __defined at:__ @curl\/curl.h:2969:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_ACTIVESOCKET :: CURLINFO
pattern CURLINFO_ACTIVESOCKET = CURLINFO 5242924

{-| __C declaration:__ @CURLINFO_TLS_SSL_PTR@

    __defined at:__ @curl\/curl.h:2970:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_TLS_SSL_PTR :: CURLINFO
pattern CURLINFO_TLS_SSL_PTR = CURLINFO 4194349

{-| __C declaration:__ @CURLINFO_HTTP_VERSION@

    __defined at:__ @curl\/curl.h:2971:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_HTTP_VERSION :: CURLINFO
pattern CURLINFO_HTTP_VERSION = CURLINFO 2097198

{-| __C declaration:__ @CURLINFO_PROXY_SSL_VERIFYRESULT@

    __defined at:__ @curl\/curl.h:2972:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_PROXY_SSL_VERIFYRESULT :: CURLINFO
pattern CURLINFO_PROXY_SSL_VERIFYRESULT = CURLINFO 2097199

{-| __C declaration:__ @CURLINFO_PROTOCOL@

    __defined at:__ @curl\/curl.h:2973:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_PROTOCOL :: CURLINFO
pattern CURLINFO_PROTOCOL = CURLINFO 2097200

{-| __C declaration:__ @CURLINFO_SCHEME@

    __defined at:__ @curl\/curl.h:2975:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_SCHEME :: CURLINFO
pattern CURLINFO_SCHEME = CURLINFO 1048625

{-| __C declaration:__ @CURLINFO_TOTAL_TIME_T@

    __defined at:__ @curl\/curl.h:2976:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_TOTAL_TIME_T :: CURLINFO
pattern CURLINFO_TOTAL_TIME_T = CURLINFO 6291506

{-| __C declaration:__ @CURLINFO_NAMELOOKUP_TIME_T@

    __defined at:__ @curl\/curl.h:2977:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_NAMELOOKUP_TIME_T :: CURLINFO
pattern CURLINFO_NAMELOOKUP_TIME_T = CURLINFO 6291507

{-| __C declaration:__ @CURLINFO_CONNECT_TIME_T@

    __defined at:__ @curl\/curl.h:2978:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_CONNECT_TIME_T :: CURLINFO
pattern CURLINFO_CONNECT_TIME_T = CURLINFO 6291508

{-| __C declaration:__ @CURLINFO_PRETRANSFER_TIME_T@

    __defined at:__ @curl\/curl.h:2979:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_PRETRANSFER_TIME_T :: CURLINFO
pattern CURLINFO_PRETRANSFER_TIME_T = CURLINFO 6291509

{-| __C declaration:__ @CURLINFO_STARTTRANSFER_TIME_T@

    __defined at:__ @curl\/curl.h:2980:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_STARTTRANSFER_TIME_T :: CURLINFO
pattern CURLINFO_STARTTRANSFER_TIME_T = CURLINFO 6291510

{-| __C declaration:__ @CURLINFO_REDIRECT_TIME_T@

    __defined at:__ @curl\/curl.h:2981:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_REDIRECT_TIME_T :: CURLINFO
pattern CURLINFO_REDIRECT_TIME_T = CURLINFO 6291511

{-| __C declaration:__ @CURLINFO_APPCONNECT_TIME_T@

    __defined at:__ @curl\/curl.h:2982:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_APPCONNECT_TIME_T :: CURLINFO
pattern CURLINFO_APPCONNECT_TIME_T = CURLINFO 6291512

{-| __C declaration:__ @CURLINFO_RETRY_AFTER@

    __defined at:__ @curl\/curl.h:2983:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_RETRY_AFTER :: CURLINFO
pattern CURLINFO_RETRY_AFTER = CURLINFO 6291513

{-| __C declaration:__ @CURLINFO_EFFECTIVE_METHOD@

    __defined at:__ @curl\/curl.h:2984:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_EFFECTIVE_METHOD :: CURLINFO
pattern CURLINFO_EFFECTIVE_METHOD = CURLINFO 1048634

{-| __C declaration:__ @CURLINFO_PROXY_ERROR@

    __defined at:__ @curl\/curl.h:2985:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_PROXY_ERROR :: CURLINFO
pattern CURLINFO_PROXY_ERROR = CURLINFO 2097211

{-| __C declaration:__ @CURLINFO_REFERER@

    __defined at:__ @curl\/curl.h:2986:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_REFERER :: CURLINFO
pattern CURLINFO_REFERER = CURLINFO 1048636

{-| __C declaration:__ @CURLINFO_CAINFO@

    __defined at:__ @curl\/curl.h:2987:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_CAINFO :: CURLINFO
pattern CURLINFO_CAINFO = CURLINFO 1048637

{-| __C declaration:__ @CURLINFO_CAPATH@

    __defined at:__ @curl\/curl.h:2988:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_CAPATH :: CURLINFO
pattern CURLINFO_CAPATH = CURLINFO 1048638

{-| __C declaration:__ @CURLINFO_XFER_ID@

    __defined at:__ @curl\/curl.h:2989:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_XFER_ID :: CURLINFO
pattern CURLINFO_XFER_ID = CURLINFO 6291519

{-| __C declaration:__ @CURLINFO_CONN_ID@

    __defined at:__ @curl\/curl.h:2990:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_CONN_ID :: CURLINFO
pattern CURLINFO_CONN_ID = CURLINFO 6291520

{-| __C declaration:__ @CURLINFO_QUEUE_TIME_T@

    __defined at:__ @curl\/curl.h:2991:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_QUEUE_TIME_T :: CURLINFO
pattern CURLINFO_QUEUE_TIME_T = CURLINFO 6291521

{-| __C declaration:__ @CURLINFO_USED_PROXY@

    __defined at:__ @curl\/curl.h:2992:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_USED_PROXY :: CURLINFO
pattern CURLINFO_USED_PROXY = CURLINFO 2097218

{-| __C declaration:__ @CURLINFO_POSTTRANSFER_TIME_T@

    __defined at:__ @curl\/curl.h:2993:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_POSTTRANSFER_TIME_T :: CURLINFO
pattern CURLINFO_POSTTRANSFER_TIME_T = CURLINFO 6291523

{-| __C declaration:__ @CURLINFO_EARLYDATA_SENT_T@

    __defined at:__ @curl\/curl.h:2994:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_EARLYDATA_SENT_T :: CURLINFO
pattern CURLINFO_EARLYDATA_SENT_T = CURLINFO 6291524

{-| __C declaration:__ @CURLINFO_HTTPAUTH_USED@

    __defined at:__ @curl\/curl.h:2995:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_HTTPAUTH_USED :: CURLINFO
pattern CURLINFO_HTTPAUTH_USED = CURLINFO 2097221

{-| __C declaration:__ @CURLINFO_PROXYAUTH_USED@

    __defined at:__ @curl\/curl.h:2996:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_PROXYAUTH_USED :: CURLINFO
pattern CURLINFO_PROXYAUTH_USED = CURLINFO 2097222

{-| __C declaration:__ @CURLINFO_LASTONE@

    __defined at:__ @curl\/curl.h:2997:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLINFO_LASTONE :: CURLINFO
pattern CURLINFO_LASTONE = CURLINFO 70

{-| __C declaration:__ @curl_closepolicy@

    __defined at:__ @curl\/curl.h:3004:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_closepolicy = Curl_closepolicy
  { un_Curl_closepolicy :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable Curl_closepolicy where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Curl_closepolicy
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_closepolicy un_Curl_closepolicy2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_Curl_closepolicy2

instance HsBindgen.Runtime.CEnum.CEnum Curl_closepolicy where

  type CEnumZ Curl_closepolicy = FC.CUInt

  toCEnum = Curl_closepolicy

  fromCEnum = un_Curl_closepolicy

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLCLOSEPOLICY_NONE")
                                                     , (1, Data.List.NonEmpty.singleton "CURLCLOSEPOLICY_OLDEST")
                                                     , (2, Data.List.NonEmpty.singleton "CURLCLOSEPOLICY_LEAST_RECENTLY_USED")
                                                     , (3, Data.List.NonEmpty.singleton "CURLCLOSEPOLICY_LEAST_TRAFFIC")
                                                     , (4, Data.List.NonEmpty.singleton "CURLCLOSEPOLICY_SLOWEST")
                                                     , (5, Data.List.NonEmpty.singleton "CURLCLOSEPOLICY_CALLBACK")
                                                     , (6, Data.List.NonEmpty.singleton "CURLCLOSEPOLICY_LAST")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "Curl_closepolicy"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "Curl_closepolicy"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum Curl_closepolicy where

  minDeclaredValue = CURLCLOSEPOLICY_NONE

  maxDeclaredValue = CURLCLOSEPOLICY_LAST

instance Show Curl_closepolicy where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read Curl_closepolicy where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLCLOSEPOLICY_NONE@

    __defined at:__ @curl\/curl.h:3005:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLCLOSEPOLICY_NONE :: Curl_closepolicy
pattern CURLCLOSEPOLICY_NONE = Curl_closepolicy 0

{-| __C declaration:__ @CURLCLOSEPOLICY_OLDEST@

    __defined at:__ @curl\/curl.h:3007:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLCLOSEPOLICY_OLDEST :: Curl_closepolicy
pattern CURLCLOSEPOLICY_OLDEST = Curl_closepolicy 1

{-| __C declaration:__ @CURLCLOSEPOLICY_LEAST_RECENTLY_USED@

    __defined at:__ @curl\/curl.h:3008:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLCLOSEPOLICY_LEAST_RECENTLY_USED :: Curl_closepolicy
pattern CURLCLOSEPOLICY_LEAST_RECENTLY_USED = Curl_closepolicy 2

{-| __C declaration:__ @CURLCLOSEPOLICY_LEAST_TRAFFIC@

    __defined at:__ @curl\/curl.h:3009:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLCLOSEPOLICY_LEAST_TRAFFIC :: Curl_closepolicy
pattern CURLCLOSEPOLICY_LEAST_TRAFFIC = Curl_closepolicy 3

{-| __C declaration:__ @CURLCLOSEPOLICY_SLOWEST@

    __defined at:__ @curl\/curl.h:3010:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLCLOSEPOLICY_SLOWEST :: Curl_closepolicy
pattern CURLCLOSEPOLICY_SLOWEST = Curl_closepolicy 4

{-| __C declaration:__ @CURLCLOSEPOLICY_CALLBACK@

    __defined at:__ @curl\/curl.h:3011:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLCLOSEPOLICY_CALLBACK :: Curl_closepolicy
pattern CURLCLOSEPOLICY_CALLBACK = Curl_closepolicy 5

{-| __C declaration:__ @CURLCLOSEPOLICY_LAST@

    __defined at:__ @curl\/curl.h:3013:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLCLOSEPOLICY_LAST :: Curl_closepolicy
pattern CURLCLOSEPOLICY_LAST = Curl_closepolicy 6

{-| __C declaration:__ @CURL_GLOBAL_SSL@

    __defined at:__ @curl\/curl.h:3016:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_GLOBAL_SSL :: FC.CInt
cURL_GLOBAL_SSL =
  (C.<<) (1 :: FC.CInt) (0 :: FC.CInt)

{-| __C declaration:__ @CURL_GLOBAL_WIN32@

    __defined at:__ @curl\/curl.h:3017:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_GLOBAL_WIN32 :: FC.CInt
cURL_GLOBAL_WIN32 =
  (C.<<) (1 :: FC.CInt) (1 :: FC.CInt)

{-| __C declaration:__ @CURL_GLOBAL_ALL@

    __defined at:__ @curl\/curl.h:3018:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_GLOBAL_ALL :: FC.CInt
cURL_GLOBAL_ALL =
  (C..|.) cURL_GLOBAL_SSL cURL_GLOBAL_WIN32

{-| __C declaration:__ @CURL_GLOBAL_NOTHING@

    __defined at:__ @curl\/curl.h:3019:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_GLOBAL_NOTHING :: FC.CInt
cURL_GLOBAL_NOTHING = (0 :: FC.CInt)

{-| __C declaration:__ @CURL_GLOBAL_DEFAULT@

    __defined at:__ @curl\/curl.h:3020:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_GLOBAL_DEFAULT :: FC.CInt
cURL_GLOBAL_DEFAULT = cURL_GLOBAL_ALL

{-| __C declaration:__ @CURL_GLOBAL_ACK_EINTR@

    __defined at:__ @curl\/curl.h:3021:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_GLOBAL_ACK_EINTR :: FC.CInt
cURL_GLOBAL_ACK_EINTR =
  (C.<<) (1 :: FC.CInt) (2 :: FC.CInt)

{-| __C declaration:__ @curl_lock_data@

    __defined at:__ @curl\/curl.h:3029:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_lock_data = Curl_lock_data
  { un_Curl_lock_data :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable Curl_lock_data where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Curl_lock_data
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_lock_data un_Curl_lock_data2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_Curl_lock_data2

instance HsBindgen.Runtime.CEnum.CEnum Curl_lock_data where

  type CEnumZ Curl_lock_data = FC.CUInt

  toCEnum = Curl_lock_data

  fromCEnum = un_Curl_lock_data

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURL_LOCK_DATA_NONE")
                                                     , (1, Data.List.NonEmpty.singleton "CURL_LOCK_DATA_SHARE")
                                                     , (2, Data.List.NonEmpty.singleton "CURL_LOCK_DATA_COOKIE")
                                                     , (3, Data.List.NonEmpty.singleton "CURL_LOCK_DATA_DNS")
                                                     , (4, Data.List.NonEmpty.singleton "CURL_LOCK_DATA_SSL_SESSION")
                                                     , (5, Data.List.NonEmpty.singleton "CURL_LOCK_DATA_CONNECT")
                                                     , (6, Data.List.NonEmpty.singleton "CURL_LOCK_DATA_PSL")
                                                     , (7, Data.List.NonEmpty.singleton "CURL_LOCK_DATA_HSTS")
                                                     , (8, Data.List.NonEmpty.singleton "CURL_LOCK_DATA_LAST")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "Curl_lock_data"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "Curl_lock_data"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum Curl_lock_data where

  minDeclaredValue = CURL_LOCK_DATA_NONE

  maxDeclaredValue = CURL_LOCK_DATA_LAST

instance Show Curl_lock_data where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read Curl_lock_data where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURL_LOCK_DATA_NONE@

    __defined at:__ @curl\/curl.h:3030:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_LOCK_DATA_NONE :: Curl_lock_data
pattern CURL_LOCK_DATA_NONE = Curl_lock_data 0

{-| __C declaration:__ @CURL_LOCK_DATA_SHARE@

    __defined at:__ @curl\/curl.h:3035:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_LOCK_DATA_SHARE :: Curl_lock_data
pattern CURL_LOCK_DATA_SHARE = Curl_lock_data 1

{-| __C declaration:__ @CURL_LOCK_DATA_COOKIE@

    __defined at:__ @curl\/curl.h:3036:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_LOCK_DATA_COOKIE :: Curl_lock_data
pattern CURL_LOCK_DATA_COOKIE = Curl_lock_data 2

{-| __C declaration:__ @CURL_LOCK_DATA_DNS@

    __defined at:__ @curl\/curl.h:3037:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_LOCK_DATA_DNS :: Curl_lock_data
pattern CURL_LOCK_DATA_DNS = Curl_lock_data 3

{-| __C declaration:__ @CURL_LOCK_DATA_SSL_SESSION@

    __defined at:__ @curl\/curl.h:3038:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_LOCK_DATA_SSL_SESSION :: Curl_lock_data
pattern CURL_LOCK_DATA_SSL_SESSION = Curl_lock_data 4

{-| __C declaration:__ @CURL_LOCK_DATA_CONNECT@

    __defined at:__ @curl\/curl.h:3039:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_LOCK_DATA_CONNECT :: Curl_lock_data
pattern CURL_LOCK_DATA_CONNECT = Curl_lock_data 5

{-| __C declaration:__ @CURL_LOCK_DATA_PSL@

    __defined at:__ @curl\/curl.h:3040:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_LOCK_DATA_PSL :: Curl_lock_data
pattern CURL_LOCK_DATA_PSL = Curl_lock_data 6

{-| __C declaration:__ @CURL_LOCK_DATA_HSTS@

    __defined at:__ @curl\/curl.h:3041:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_LOCK_DATA_HSTS :: Curl_lock_data
pattern CURL_LOCK_DATA_HSTS = Curl_lock_data 7

{-| __C declaration:__ @CURL_LOCK_DATA_LAST@

    __defined at:__ @curl\/curl.h:3042:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_LOCK_DATA_LAST :: Curl_lock_data
pattern CURL_LOCK_DATA_LAST = Curl_lock_data 8

{-| __C declaration:__ @curl_lock_access@

    __defined at:__ @curl\/curl.h:3046:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_lock_access = Curl_lock_access
  { un_Curl_lock_access :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable Curl_lock_access where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Curl_lock_access
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_lock_access un_Curl_lock_access2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_Curl_lock_access2

instance HsBindgen.Runtime.CEnum.CEnum Curl_lock_access where

  type CEnumZ Curl_lock_access = FC.CUInt

  toCEnum = Curl_lock_access

  fromCEnum = un_Curl_lock_access

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURL_LOCK_ACCESS_NONE")
                                                     , (1, Data.List.NonEmpty.singleton "CURL_LOCK_ACCESS_SHARED")
                                                     , (2, Data.List.NonEmpty.singleton "CURL_LOCK_ACCESS_SINGLE")
                                                     , (3, Data.List.NonEmpty.singleton "CURL_LOCK_ACCESS_LAST")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "Curl_lock_access"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "Curl_lock_access"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum Curl_lock_access where

  minDeclaredValue = CURL_LOCK_ACCESS_NONE

  maxDeclaredValue = CURL_LOCK_ACCESS_LAST

instance Show Curl_lock_access where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read Curl_lock_access where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURL_LOCK_ACCESS_NONE@

    __defined at:__ @curl\/curl.h:3047:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_LOCK_ACCESS_NONE :: Curl_lock_access
pattern CURL_LOCK_ACCESS_NONE = Curl_lock_access 0

{-| __C declaration:__ @CURL_LOCK_ACCESS_SHARED@

    __defined at:__ @curl\/curl.h:3048:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_LOCK_ACCESS_SHARED :: Curl_lock_access
pattern CURL_LOCK_ACCESS_SHARED = Curl_lock_access 1

{-| __C declaration:__ @CURL_LOCK_ACCESS_SINGLE@

    __defined at:__ @curl\/curl.h:3049:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_LOCK_ACCESS_SINGLE :: Curl_lock_access
pattern CURL_LOCK_ACCESS_SINGLE = Curl_lock_access 2

{-| __C declaration:__ @CURL_LOCK_ACCESS_LAST@

    __defined at:__ @curl\/curl.h:3050:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURL_LOCK_ACCESS_LAST :: Curl_lock_access
pattern CURL_LOCK_ACCESS_LAST = Curl_lock_access 3

{-| Auxiliary type used by 'Curl_lock_function'

__defined at:__ @curl\/curl.h:3053:16@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_lock_function_Deref = Curl_lock_function_Deref
  { un_Curl_lock_function_Deref :: (Ptr.Ptr Void) -> Curl_lock_data -> Curl_lock_access -> (Ptr.Ptr Void) -> IO ()
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_lock_function_Deref ::
     Curl_lock_function_Deref
  -> IO (Ptr.FunPtr Curl_lock_function_Deref)

foreign import ccall safe "dynamic" fromCurl_lock_function_Deref ::
     Ptr.FunPtr Curl_lock_function_Deref
  -> Curl_lock_function_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_lock_function_Deref where

  toFunPtr = toCurl_lock_function_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_lock_function_Deref where

  fromFunPtr = fromCurl_lock_function_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_lock_function_Deref) "un_Curl_lock_function_Deref")
         ) => GHC.Records.HasField "un_Curl_lock_function_Deref" (Ptr.Ptr Curl_lock_function_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_lock_function_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_lock_function_Deref "un_Curl_lock_function_Deref" where

  type CFieldType Curl_lock_function_Deref "un_Curl_lock_function_Deref" =
    (Ptr.Ptr Void) -> Curl_lock_data -> Curl_lock_access -> (Ptr.Ptr Void) -> IO ()

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_lock_function@

    __defined at:__ @curl\/curl.h:3053:16@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_lock_function = Curl_lock_function
  { un_Curl_lock_function :: Ptr.FunPtr Curl_lock_function_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_lock_function) "un_Curl_lock_function")
         ) => GHC.Records.HasField "un_Curl_lock_function" (Ptr.Ptr Curl_lock_function) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_lock_function")

instance HsBindgen.Runtime.HasCField.HasCField Curl_lock_function "un_Curl_lock_function" where

  type CFieldType Curl_lock_function "un_Curl_lock_function" =
    Ptr.FunPtr Curl_lock_function_Deref

  offset# = \_ -> \_ -> 0

{-| Auxiliary type used by 'Curl_unlock_function'

__defined at:__ @curl\/curl.h:3057:16@

__exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_unlock_function_Deref = Curl_unlock_function_Deref
  { un_Curl_unlock_function_Deref :: (Ptr.Ptr Void) -> Curl_lock_data -> (Ptr.Ptr Void) -> IO ()
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_unlock_function_Deref ::
     Curl_unlock_function_Deref
  -> IO (Ptr.FunPtr Curl_unlock_function_Deref)

foreign import ccall safe "dynamic" fromCurl_unlock_function_Deref ::
     Ptr.FunPtr Curl_unlock_function_Deref
  -> Curl_unlock_function_Deref

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_unlock_function_Deref where

  toFunPtr = toCurl_unlock_function_Deref

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_unlock_function_Deref where

  fromFunPtr = fromCurl_unlock_function_Deref

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_unlock_function_Deref) "un_Curl_unlock_function_Deref")
         ) => GHC.Records.HasField "un_Curl_unlock_function_Deref" (Ptr.Ptr Curl_unlock_function_Deref) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_unlock_function_Deref")

instance HsBindgen.Runtime.HasCField.HasCField Curl_unlock_function_Deref "un_Curl_unlock_function_Deref" where

  type CFieldType Curl_unlock_function_Deref "un_Curl_unlock_function_Deref" =
    (Ptr.Ptr Void) -> Curl_lock_data -> (Ptr.Ptr Void) -> IO ()

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @curl_unlock_function@

    __defined at:__ @curl\/curl.h:3057:16@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_unlock_function = Curl_unlock_function
  { un_Curl_unlock_function :: Ptr.FunPtr Curl_unlock_function_Deref
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_unlock_function) "un_Curl_unlock_function")
         ) => GHC.Records.HasField "un_Curl_unlock_function" (Ptr.Ptr Curl_unlock_function) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_unlock_function")

instance HsBindgen.Runtime.HasCField.HasCField Curl_unlock_function "un_Curl_unlock_function" where

  type CFieldType Curl_unlock_function "un_Curl_unlock_function" =
    Ptr.FunPtr Curl_unlock_function_Deref

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @CURLSHcode@

    __defined at:__ @curl\/curl.h:3062:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype CURLSHcode = CURLSHcode
  { un_CURLSHcode :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable CURLSHcode where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure CURLSHcode
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          CURLSHcode un_CURLSHcode2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_CURLSHcode2

instance HsBindgen.Runtime.CEnum.CEnum CURLSHcode where

  type CEnumZ CURLSHcode = FC.CUInt

  toCEnum = CURLSHcode

  fromCEnum = un_CURLSHcode

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLSHE_OK")
                                                     , (1, Data.List.NonEmpty.singleton "CURLSHE_BAD_OPTION")
                                                     , (2, Data.List.NonEmpty.singleton "CURLSHE_IN_USE")
                                                     , (3, Data.List.NonEmpty.singleton "CURLSHE_INVALID")
                                                     , (4, Data.List.NonEmpty.singleton "CURLSHE_NOMEM")
                                                     , (5, Data.List.NonEmpty.singleton "CURLSHE_NOT_BUILT_IN")
                                                     , (6, Data.List.NonEmpty.singleton "CURLSHE_LAST")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "CURLSHcode"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "CURLSHcode"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum CURLSHcode where

  minDeclaredValue = CURLSHE_OK

  maxDeclaredValue = CURLSHE_LAST

instance Show CURLSHcode where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read CURLSHcode where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLSHE_OK@

    __defined at:__ @curl\/curl.h:3063:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSHE_OK :: CURLSHcode
pattern CURLSHE_OK = CURLSHcode 0

{-| __C declaration:__ @CURLSHE_BAD_OPTION@

    __defined at:__ @curl\/curl.h:3064:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSHE_BAD_OPTION :: CURLSHcode
pattern CURLSHE_BAD_OPTION = CURLSHcode 1

{-| __C declaration:__ @CURLSHE_IN_USE@

    __defined at:__ @curl\/curl.h:3065:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSHE_IN_USE :: CURLSHcode
pattern CURLSHE_IN_USE = CURLSHcode 2

{-| __C declaration:__ @CURLSHE_INVALID@

    __defined at:__ @curl\/curl.h:3066:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSHE_INVALID :: CURLSHcode
pattern CURLSHE_INVALID = CURLSHcode 3

{-| __C declaration:__ @CURLSHE_NOMEM@

    __defined at:__ @curl\/curl.h:3067:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSHE_NOMEM :: CURLSHcode
pattern CURLSHE_NOMEM = CURLSHcode 4

{-| __C declaration:__ @CURLSHE_NOT_BUILT_IN@

    __defined at:__ @curl\/curl.h:3068:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSHE_NOT_BUILT_IN :: CURLSHcode
pattern CURLSHE_NOT_BUILT_IN = CURLSHcode 5

{-| __C declaration:__ @CURLSHE_LAST@

    __defined at:__ @curl\/curl.h:3069:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSHE_LAST :: CURLSHcode
pattern CURLSHE_LAST = CURLSHcode 6

{-| __C declaration:__ @CURLSHoption@

    __defined at:__ @curl\/curl.h:3072:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype CURLSHoption = CURLSHoption
  { un_CURLSHoption :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable CURLSHoption where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure CURLSHoption
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          CURLSHoption un_CURLSHoption2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_CURLSHoption2

instance HsBindgen.Runtime.CEnum.CEnum CURLSHoption where

  type CEnumZ CURLSHoption = FC.CUInt

  toCEnum = CURLSHoption

  fromCEnum = un_CURLSHoption

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLSHOPT_NONE")
                                                     , (1, Data.List.NonEmpty.singleton "CURLSHOPT_SHARE")
                                                     , (2, Data.List.NonEmpty.singleton "CURLSHOPT_UNSHARE")
                                                     , (3, Data.List.NonEmpty.singleton "CURLSHOPT_LOCKFUNC")
                                                     , (4, Data.List.NonEmpty.singleton "CURLSHOPT_UNLOCKFUNC")
                                                     , (5, Data.List.NonEmpty.singleton "CURLSHOPT_USERDATA")
                                                     , (6, Data.List.NonEmpty.singleton "CURLSHOPT_LAST")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "CURLSHoption"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "CURLSHoption"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum CURLSHoption where

  minDeclaredValue = CURLSHOPT_NONE

  maxDeclaredValue = CURLSHOPT_LAST

instance Show CURLSHoption where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read CURLSHoption where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLSHOPT_NONE@

    __defined at:__ @curl\/curl.h:3073:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSHOPT_NONE :: CURLSHoption
pattern CURLSHOPT_NONE = CURLSHoption 0

{-| __C declaration:__ @CURLSHOPT_SHARE@

    __defined at:__ @curl\/curl.h:3074:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSHOPT_SHARE :: CURLSHoption
pattern CURLSHOPT_SHARE = CURLSHoption 1

{-| __C declaration:__ @CURLSHOPT_UNSHARE@

    __defined at:__ @curl\/curl.h:3075:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSHOPT_UNSHARE :: CURLSHoption
pattern CURLSHOPT_UNSHARE = CURLSHoption 2

{-| __C declaration:__ @CURLSHOPT_LOCKFUNC@

    __defined at:__ @curl\/curl.h:3076:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSHOPT_LOCKFUNC :: CURLSHoption
pattern CURLSHOPT_LOCKFUNC = CURLSHoption 3

{-| __C declaration:__ @CURLSHOPT_UNLOCKFUNC@

    __defined at:__ @curl\/curl.h:3077:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSHOPT_UNLOCKFUNC :: CURLSHoption
pattern CURLSHOPT_UNLOCKFUNC = CURLSHoption 4

{-| __C declaration:__ @CURLSHOPT_USERDATA@

    __defined at:__ @curl\/curl.h:3078:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSHOPT_USERDATA :: CURLSHoption
pattern CURLSHOPT_USERDATA = CURLSHoption 5

{-| __C declaration:__ @CURLSHOPT_LAST@

    __defined at:__ @curl\/curl.h:3080:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLSHOPT_LAST :: CURLSHoption
pattern CURLSHOPT_LAST = CURLSHoption 6

{-| __C declaration:__ @CURLversion@

    __defined at:__ @curl\/curl.h:3092:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype CURLversion = CURLversion
  { un_CURLversion :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable CURLversion where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure CURLversion
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          CURLversion un_CURLversion2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_CURLversion2

instance HsBindgen.Runtime.CEnum.CEnum CURLversion where

  type CEnumZ CURLversion = FC.CUInt

  toCEnum = CURLversion

  fromCEnum = un_CURLversion

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "CURLVERSION_FIRST")
                                                     , (1, Data.List.NonEmpty.singleton "CURLVERSION_SECOND")
                                                     , (2, Data.List.NonEmpty.singleton "CURLVERSION_THIRD")
                                                     , (3, Data.List.NonEmpty.singleton "CURLVERSION_FOURTH")
                                                     , (4, Data.List.NonEmpty.singleton "CURLVERSION_FIFTH")
                                                     , (5, Data.List.NonEmpty.singleton "CURLVERSION_SIXTH")
                                                     , (6, Data.List.NonEmpty.singleton "CURLVERSION_SEVENTH")
                                                     , (7, Data.List.NonEmpty.singleton "CURLVERSION_EIGHTH")
                                                     , (8, Data.List.NonEmpty.singleton "CURLVERSION_NINTH")
                                                     , (9, Data.List.NonEmpty.singleton "CURLVERSION_TENTH")
                                                     , (10, Data.List.NonEmpty.singleton "CURLVERSION_ELEVENTH")
                                                     , (11, Data.List.NonEmpty.singleton "CURLVERSION_TWELFTH")
                                                     , (12, Data.List.NonEmpty.singleton "CURLVERSION_LAST")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "CURLversion"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "CURLversion"

  isDeclared = HsBindgen.Runtime.CEnum.seqIsDeclared

  mkDeclared = HsBindgen.Runtime.CEnum.seqMkDeclared

instance HsBindgen.Runtime.CEnum.SequentialCEnum CURLversion where

  minDeclaredValue = CURLVERSION_FIRST

  maxDeclaredValue = CURLVERSION_LAST

instance Show CURLversion where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read CURLversion where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @CURLVERSION_FIRST@

    __defined at:__ @curl\/curl.h:3093:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLVERSION_FIRST :: CURLversion
pattern CURLVERSION_FIRST = CURLversion 0

{-| __C declaration:__ @CURLVERSION_SECOND@

    __defined at:__ @curl\/curl.h:3094:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLVERSION_SECOND :: CURLversion
pattern CURLVERSION_SECOND = CURLversion 1

{-| __C declaration:__ @CURLVERSION_THIRD@

    __defined at:__ @curl\/curl.h:3095:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLVERSION_THIRD :: CURLversion
pattern CURLVERSION_THIRD = CURLversion 2

{-| __C declaration:__ @CURLVERSION_FOURTH@

    __defined at:__ @curl\/curl.h:3096:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLVERSION_FOURTH :: CURLversion
pattern CURLVERSION_FOURTH = CURLversion 3

{-| __C declaration:__ @CURLVERSION_FIFTH@

    __defined at:__ @curl\/curl.h:3097:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLVERSION_FIFTH :: CURLversion
pattern CURLVERSION_FIFTH = CURLversion 4

{-| __C declaration:__ @CURLVERSION_SIXTH@

    __defined at:__ @curl\/curl.h:3098:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLVERSION_SIXTH :: CURLversion
pattern CURLVERSION_SIXTH = CURLversion 5

{-| __C declaration:__ @CURLVERSION_SEVENTH@

    __defined at:__ @curl\/curl.h:3099:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLVERSION_SEVENTH :: CURLversion
pattern CURLVERSION_SEVENTH = CURLversion 6

{-| __C declaration:__ @CURLVERSION_EIGHTH@

    __defined at:__ @curl\/curl.h:3100:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLVERSION_EIGHTH :: CURLversion
pattern CURLVERSION_EIGHTH = CURLversion 7

{-| __C declaration:__ @CURLVERSION_NINTH@

    __defined at:__ @curl\/curl.h:3101:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLVERSION_NINTH :: CURLversion
pattern CURLVERSION_NINTH = CURLversion 8

{-| __C declaration:__ @CURLVERSION_TENTH@

    __defined at:__ @curl\/curl.h:3102:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLVERSION_TENTH :: CURLversion
pattern CURLVERSION_TENTH = CURLversion 9

{-| __C declaration:__ @CURLVERSION_ELEVENTH@

    __defined at:__ @curl\/curl.h:3103:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLVERSION_ELEVENTH :: CURLversion
pattern CURLVERSION_ELEVENTH = CURLversion 10

{-| __C declaration:__ @CURLVERSION_TWELFTH@

    __defined at:__ @curl\/curl.h:3104:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLVERSION_TWELFTH :: CURLversion
pattern CURLVERSION_TWELFTH = CURLversion 11

{-| __C declaration:__ @CURLVERSION_LAST@

    __defined at:__ @curl\/curl.h:3105:3@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
pattern CURLVERSION_LAST :: CURLversion
pattern CURLVERSION_LAST = CURLversion 12

{-| __C declaration:__ @curl_version_info_data@

    __defined at:__ @curl\/curl.h:3115:8@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
data Curl_version_info_data = Curl_version_info_data
  { curl_version_info_data_age :: CURLversion
    {- ^ __C declaration:__ @age@

         __defined at:__ @curl\/curl.h:3116:15@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_version :: HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
    {- ^ __C declaration:__ @version@

         __defined at:__ @curl\/curl.h:3117:15@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_version_num :: FC.CUInt
    {- ^ __C declaration:__ @version_num@

         __defined at:__ @curl\/curl.h:3118:16@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_host :: HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
    {- ^ __C declaration:__ @host@

         __defined at:__ @curl\/curl.h:3119:15@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_features :: FC.CInt
    {- ^ __C declaration:__ @features@

         __defined at:__ @curl\/curl.h:3120:7@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_ssl_version :: HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
    {- ^ __C declaration:__ @ssl_version@

         __defined at:__ @curl\/curl.h:3121:15@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_ssl_version_num :: FC.CLong
    {- ^ __C declaration:__ @ssl_version_num@

         __defined at:__ @curl\/curl.h:3122:8@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_libz_version :: HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
    {- ^ __C declaration:__ @libz_version@

         __defined at:__ @curl\/curl.h:3123:15@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_protocols :: HsBindgen.Runtime.ConstPtr.ConstPtr (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)
    {- ^ __C declaration:__ @protocols@

         __defined at:__ @curl\/curl.h:3125:23@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_ares :: HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
    {- ^ __C declaration:__ @ares@

         __defined at:__ @curl\/curl.h:3128:15@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_ares_num :: FC.CInt
    {- ^ __C declaration:__ @ares_num@

         __defined at:__ @curl\/curl.h:3129:7@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_libidn :: HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
    {- ^ __C declaration:__ @libidn@

         __defined at:__ @curl\/curl.h:3132:15@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_iconv_ver_num :: FC.CInt
    {- ^ __C declaration:__ @iconv_ver_num@

         __defined at:__ @curl\/curl.h:3137:7@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_libssh_version :: HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
    {- ^ __C declaration:__ @libssh_version@

         __defined at:__ @curl\/curl.h:3139:15@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_brotli_ver_num :: FC.CUInt
    {- ^ __C declaration:__ @brotli_ver_num@

         __defined at:__ @curl\/curl.h:3142:16@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_brotli_version :: HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
    {- ^ __C declaration:__ @brotli_version@

         __defined at:__ @curl\/curl.h:3144:15@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_nghttp2_ver_num :: FC.CUInt
    {- ^ __C declaration:__ @nghttp2_ver_num@

         __defined at:__ @curl\/curl.h:3147:16@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_nghttp2_version :: HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
    {- ^ __C declaration:__ @nghttp2_version@

         __defined at:__ @curl\/curl.h:3149:15@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_quic_version :: HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
    {- ^ __C declaration:__ @quic_version@

         __defined at:__ @curl\/curl.h:3150:15@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_cainfo :: HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
    {- ^ __C declaration:__ @cainfo@

         __defined at:__ @curl\/curl.h:3154:15@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_capath :: HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
    {- ^ __C declaration:__ @capath@

         __defined at:__ @curl\/curl.h:3156:15@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_zstd_ver_num :: FC.CUInt
    {- ^ __C declaration:__ @zstd_ver_num@

         __defined at:__ @curl\/curl.h:3160:16@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_zstd_version :: HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
    {- ^ __C declaration:__ @zstd_version@

         __defined at:__ @curl\/curl.h:3162:15@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_hyper_version :: HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
    {- ^ __C declaration:__ @hyper_version@

         __defined at:__ @curl\/curl.h:3165:15@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_gsasl_version :: HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
    {- ^ __C declaration:__ @gsasl_version@

         __defined at:__ @curl\/curl.h:3168:15@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_feature_names :: HsBindgen.Runtime.ConstPtr.ConstPtr (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)
    {- ^ __C declaration:__ @feature_names@

         __defined at:__ @curl\/curl.h:3172:23@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  , curl_version_info_data_rtmp_version :: HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
    {- ^ __C declaration:__ @rtmp_version@

         __defined at:__ @curl\/curl.h:3175:15@

         __exported by:__ @curl\/curl.h@, @curl\/curl.h@
    -}
  }
  deriving stock (Eq, Show)

instance F.Storable Curl_version_info_data where

  sizeOf = \_ -> (216 :: Int)

  alignment = \_ -> (8 :: Int)

  peek =
    \ptr0 ->
          pure Curl_version_info_data
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_age") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_version") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_version_num") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_host") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_features") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_ssl_version") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_ssl_version_num") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_libz_version") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_protocols") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_ares") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_ares_num") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_libidn") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_iconv_ver_num") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_libssh_version") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_brotli_ver_num") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_brotli_version") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_nghttp2_ver_num") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_nghttp2_version") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_quic_version") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_cainfo") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_capath") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_zstd_ver_num") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_zstd_version") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_hyper_version") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_gsasl_version") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_feature_names") ptr0
      <*> HsBindgen.Runtime.HasCField.peekCField (Data.Proxy.Proxy @"curl_version_info_data_rtmp_version") ptr0

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Curl_version_info_data
            curl_version_info_data_age2
            curl_version_info_data_version3
            curl_version_info_data_version_num4
            curl_version_info_data_host5
            curl_version_info_data_features6
            curl_version_info_data_ssl_version7
            curl_version_info_data_ssl_version_num8
            curl_version_info_data_libz_version9
            curl_version_info_data_protocols10
            curl_version_info_data_ares11
            curl_version_info_data_ares_num12
            curl_version_info_data_libidn13
            curl_version_info_data_iconv_ver_num14
            curl_version_info_data_libssh_version15
            curl_version_info_data_brotli_ver_num16
            curl_version_info_data_brotli_version17
            curl_version_info_data_nghttp2_ver_num18
            curl_version_info_data_nghttp2_version19
            curl_version_info_data_quic_version20
            curl_version_info_data_cainfo21
            curl_version_info_data_capath22
            curl_version_info_data_zstd_ver_num23
            curl_version_info_data_zstd_version24
            curl_version_info_data_hyper_version25
            curl_version_info_data_gsasl_version26
            curl_version_info_data_feature_names27
            curl_version_info_data_rtmp_version28 ->
                 HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_age") ptr0 curl_version_info_data_age2
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_version") ptr0 curl_version_info_data_version3
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_version_num") ptr0 curl_version_info_data_version_num4
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_host") ptr0 curl_version_info_data_host5
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_features") ptr0 curl_version_info_data_features6
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_ssl_version") ptr0 curl_version_info_data_ssl_version7
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_ssl_version_num") ptr0 curl_version_info_data_ssl_version_num8
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_libz_version") ptr0 curl_version_info_data_libz_version9
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_protocols") ptr0 curl_version_info_data_protocols10
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_ares") ptr0 curl_version_info_data_ares11
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_ares_num") ptr0 curl_version_info_data_ares_num12
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_libidn") ptr0 curl_version_info_data_libidn13
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_iconv_ver_num") ptr0 curl_version_info_data_iconv_ver_num14
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_libssh_version") ptr0 curl_version_info_data_libssh_version15
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_brotli_ver_num") ptr0 curl_version_info_data_brotli_ver_num16
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_brotli_version") ptr0 curl_version_info_data_brotli_version17
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_nghttp2_ver_num") ptr0 curl_version_info_data_nghttp2_ver_num18
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_nghttp2_version") ptr0 curl_version_info_data_nghttp2_version19
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_quic_version") ptr0 curl_version_info_data_quic_version20
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_cainfo") ptr0 curl_version_info_data_cainfo21
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_capath") ptr0 curl_version_info_data_capath22
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_zstd_ver_num") ptr0 curl_version_info_data_zstd_ver_num23
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_zstd_version") ptr0 curl_version_info_data_zstd_version24
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_hyper_version") ptr0 curl_version_info_data_hyper_version25
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_gsasl_version") ptr0 curl_version_info_data_gsasl_version26
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_feature_names") ptr0 curl_version_info_data_feature_names27
              >> HsBindgen.Runtime.HasCField.pokeCField (Data.Proxy.Proxy @"curl_version_info_data_rtmp_version") ptr0 curl_version_info_data_rtmp_version28

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_age" where

  type CFieldType Curl_version_info_data "curl_version_info_data_age" =
    CURLversion

  offset# = \_ -> \_ -> 0

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_age")
         ) => GHC.Records.HasField "curl_version_info_data_age" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_age")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_version" where

  type CFieldType Curl_version_info_data "curl_version_info_data_version" =
    HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar

  offset# = \_ -> \_ -> 8

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_version")
         ) => GHC.Records.HasField "curl_version_info_data_version" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_version")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_version_num" where

  type CFieldType Curl_version_info_data "curl_version_info_data_version_num" =
    FC.CUInt

  offset# = \_ -> \_ -> 16

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_version_num")
         ) => GHC.Records.HasField "curl_version_info_data_version_num" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_version_num")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_host" where

  type CFieldType Curl_version_info_data "curl_version_info_data_host" =
    HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar

  offset# = \_ -> \_ -> 24

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_host")
         ) => GHC.Records.HasField "curl_version_info_data_host" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_host")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_features" where

  type CFieldType Curl_version_info_data "curl_version_info_data_features" =
    FC.CInt

  offset# = \_ -> \_ -> 32

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_features")
         ) => GHC.Records.HasField "curl_version_info_data_features" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_features")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_ssl_version" where

  type CFieldType Curl_version_info_data "curl_version_info_data_ssl_version" =
    HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar

  offset# = \_ -> \_ -> 40

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_ssl_version")
         ) => GHC.Records.HasField "curl_version_info_data_ssl_version" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_ssl_version")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_ssl_version_num" where

  type CFieldType Curl_version_info_data "curl_version_info_data_ssl_version_num" =
    FC.CLong

  offset# = \_ -> \_ -> 48

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_ssl_version_num")
         ) => GHC.Records.HasField "curl_version_info_data_ssl_version_num" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_ssl_version_num")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_libz_version" where

  type CFieldType Curl_version_info_data "curl_version_info_data_libz_version" =
    HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar

  offset# = \_ -> \_ -> 56

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_libz_version")
         ) => GHC.Records.HasField "curl_version_info_data_libz_version" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_libz_version")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_protocols" where

  type CFieldType Curl_version_info_data "curl_version_info_data_protocols" =
    HsBindgen.Runtime.ConstPtr.ConstPtr (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

  offset# = \_ -> \_ -> 64

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_protocols")
         ) => GHC.Records.HasField "curl_version_info_data_protocols" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_protocols")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_ares" where

  type CFieldType Curl_version_info_data "curl_version_info_data_ares" =
    HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar

  offset# = \_ -> \_ -> 72

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_ares")
         ) => GHC.Records.HasField "curl_version_info_data_ares" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_ares")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_ares_num" where

  type CFieldType Curl_version_info_data "curl_version_info_data_ares_num" =
    FC.CInt

  offset# = \_ -> \_ -> 80

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_ares_num")
         ) => GHC.Records.HasField "curl_version_info_data_ares_num" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_ares_num")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_libidn" where

  type CFieldType Curl_version_info_data "curl_version_info_data_libidn" =
    HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar

  offset# = \_ -> \_ -> 88

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_libidn")
         ) => GHC.Records.HasField "curl_version_info_data_libidn" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_libidn")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_iconv_ver_num" where

  type CFieldType Curl_version_info_data "curl_version_info_data_iconv_ver_num" =
    FC.CInt

  offset# = \_ -> \_ -> 96

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_iconv_ver_num")
         ) => GHC.Records.HasField "curl_version_info_data_iconv_ver_num" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_iconv_ver_num")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_libssh_version" where

  type CFieldType Curl_version_info_data "curl_version_info_data_libssh_version" =
    HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar

  offset# = \_ -> \_ -> 104

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_libssh_version")
         ) => GHC.Records.HasField "curl_version_info_data_libssh_version" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_libssh_version")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_brotli_ver_num" where

  type CFieldType Curl_version_info_data "curl_version_info_data_brotli_ver_num" =
    FC.CUInt

  offset# = \_ -> \_ -> 112

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_brotli_ver_num")
         ) => GHC.Records.HasField "curl_version_info_data_brotli_ver_num" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_brotli_ver_num")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_brotli_version" where

  type CFieldType Curl_version_info_data "curl_version_info_data_brotli_version" =
    HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar

  offset# = \_ -> \_ -> 120

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_brotli_version")
         ) => GHC.Records.HasField "curl_version_info_data_brotli_version" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_brotli_version")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_nghttp2_ver_num" where

  type CFieldType Curl_version_info_data "curl_version_info_data_nghttp2_ver_num" =
    FC.CUInt

  offset# = \_ -> \_ -> 128

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_nghttp2_ver_num")
         ) => GHC.Records.HasField "curl_version_info_data_nghttp2_ver_num" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_nghttp2_ver_num")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_nghttp2_version" where

  type CFieldType Curl_version_info_data "curl_version_info_data_nghttp2_version" =
    HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar

  offset# = \_ -> \_ -> 136

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_nghttp2_version")
         ) => GHC.Records.HasField "curl_version_info_data_nghttp2_version" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_nghttp2_version")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_quic_version" where

  type CFieldType Curl_version_info_data "curl_version_info_data_quic_version" =
    HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar

  offset# = \_ -> \_ -> 144

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_quic_version")
         ) => GHC.Records.HasField "curl_version_info_data_quic_version" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_quic_version")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_cainfo" where

  type CFieldType Curl_version_info_data "curl_version_info_data_cainfo" =
    HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar

  offset# = \_ -> \_ -> 152

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_cainfo")
         ) => GHC.Records.HasField "curl_version_info_data_cainfo" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_cainfo")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_capath" where

  type CFieldType Curl_version_info_data "curl_version_info_data_capath" =
    HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar

  offset# = \_ -> \_ -> 160

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_capath")
         ) => GHC.Records.HasField "curl_version_info_data_capath" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_capath")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_zstd_ver_num" where

  type CFieldType Curl_version_info_data "curl_version_info_data_zstd_ver_num" =
    FC.CUInt

  offset# = \_ -> \_ -> 168

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_zstd_ver_num")
         ) => GHC.Records.HasField "curl_version_info_data_zstd_ver_num" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_zstd_ver_num")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_zstd_version" where

  type CFieldType Curl_version_info_data "curl_version_info_data_zstd_version" =
    HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar

  offset# = \_ -> \_ -> 176

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_zstd_version")
         ) => GHC.Records.HasField "curl_version_info_data_zstd_version" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_zstd_version")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_hyper_version" where

  type CFieldType Curl_version_info_data "curl_version_info_data_hyper_version" =
    HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar

  offset# = \_ -> \_ -> 184

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_hyper_version")
         ) => GHC.Records.HasField "curl_version_info_data_hyper_version" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_hyper_version")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_gsasl_version" where

  type CFieldType Curl_version_info_data "curl_version_info_data_gsasl_version" =
    HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar

  offset# = \_ -> \_ -> 192

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_gsasl_version")
         ) => GHC.Records.HasField "curl_version_info_data_gsasl_version" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_gsasl_version")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_feature_names" where

  type CFieldType Curl_version_info_data "curl_version_info_data_feature_names" =
    HsBindgen.Runtime.ConstPtr.ConstPtr (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

  offset# = \_ -> \_ -> 200

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_feature_names")
         ) => GHC.Records.HasField "curl_version_info_data_feature_names" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_feature_names")

instance HsBindgen.Runtime.HasCField.HasCField Curl_version_info_data "curl_version_info_data_rtmp_version" where

  type CFieldType Curl_version_info_data "curl_version_info_data_rtmp_version" =
    HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar

  offset# = \_ -> \_ -> 208

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_version_info_data) "curl_version_info_data_rtmp_version")
         ) => GHC.Records.HasField "curl_version_info_data_rtmp_version" (Ptr.Ptr Curl_version_info_data) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"curl_version_info_data_rtmp_version")

{-| __C declaration:__ @CURL_VERSION_IPV6@

    __defined at:__ @curl\/curl.h:3179:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_IPV6 :: FC.CInt
cURL_VERSION_IPV6 =
  (C.<<) (1 :: FC.CInt) (0 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_KERBEROS4@

    __defined at:__ @curl\/curl.h:3180:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_KERBEROS4 :: FC.CInt
cURL_VERSION_KERBEROS4 =
  (C.<<) (1 :: FC.CInt) (1 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_SSL@

    __defined at:__ @curl\/curl.h:3182:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_SSL :: FC.CInt
cURL_VERSION_SSL =
  (C.<<) (1 :: FC.CInt) (2 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_LIBZ@

    __defined at:__ @curl\/curl.h:3183:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_LIBZ :: FC.CInt
cURL_VERSION_LIBZ =
  (C.<<) (1 :: FC.CInt) (3 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_NTLM@

    __defined at:__ @curl\/curl.h:3184:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_NTLM :: FC.CInt
cURL_VERSION_NTLM =
  (C.<<) (1 :: FC.CInt) (4 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_GSSNEGOTIATE@

    __defined at:__ @curl\/curl.h:3185:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_GSSNEGOTIATE :: FC.CInt
cURL_VERSION_GSSNEGOTIATE =
  (C.<<) (1 :: FC.CInt) (5 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_DEBUG@

    __defined at:__ @curl\/curl.h:3187:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_DEBUG :: FC.CInt
cURL_VERSION_DEBUG =
  (C.<<) (1 :: FC.CInt) (6 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_ASYNCHDNS@

    __defined at:__ @curl\/curl.h:3188:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_ASYNCHDNS :: FC.CInt
cURL_VERSION_ASYNCHDNS =
  (C.<<) (1 :: FC.CInt) (7 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_SPNEGO@

    __defined at:__ @curl\/curl.h:3189:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_SPNEGO :: FC.CInt
cURL_VERSION_SPNEGO =
  (C.<<) (1 :: FC.CInt) (8 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_LARGEFILE@

    __defined at:__ @curl\/curl.h:3190:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_LARGEFILE :: FC.CInt
cURL_VERSION_LARGEFILE =
  (C.<<) (1 :: FC.CInt) (9 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_IDN@

    __defined at:__ @curl\/curl.h:3191:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_IDN :: FC.CInt
cURL_VERSION_IDN =
  (C.<<) (1 :: FC.CInt) (10 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_SSPI@

    __defined at:__ @curl\/curl.h:3193:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_SSPI :: FC.CInt
cURL_VERSION_SSPI =
  (C.<<) (1 :: FC.CInt) (11 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_CONV@

    __defined at:__ @curl\/curl.h:3194:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_CONV :: FC.CInt
cURL_VERSION_CONV =
  (C.<<) (1 :: FC.CInt) (12 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_CURLDEBUG@

    __defined at:__ @curl\/curl.h:3195:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_CURLDEBUG :: FC.CInt
cURL_VERSION_CURLDEBUG =
  (C.<<) (1 :: FC.CInt) (13 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_TLSAUTH_SRP@

    __defined at:__ @curl\/curl.h:3196:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_TLSAUTH_SRP :: FC.CInt
cURL_VERSION_TLSAUTH_SRP =
  (C.<<) (1 :: FC.CInt) (14 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_NTLM_WB@

    __defined at:__ @curl\/curl.h:3197:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_NTLM_WB :: FC.CInt
cURL_VERSION_NTLM_WB =
  (C.<<) (1 :: FC.CInt) (15 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_HTTP2@

    __defined at:__ @curl\/curl.h:3199:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_HTTP2 :: FC.CInt
cURL_VERSION_HTTP2 =
  (C.<<) (1 :: FC.CInt) (16 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_GSSAPI@

    __defined at:__ @curl\/curl.h:3200:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_GSSAPI :: FC.CInt
cURL_VERSION_GSSAPI =
  (C.<<) (1 :: FC.CInt) (17 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_KERBEROS5@

    __defined at:__ @curl\/curl.h:3201:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_KERBEROS5 :: FC.CInt
cURL_VERSION_KERBEROS5 =
  (C.<<) (1 :: FC.CInt) (18 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_UNIX_SOCKETS@

    __defined at:__ @curl\/curl.h:3202:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_UNIX_SOCKETS :: FC.CInt
cURL_VERSION_UNIX_SOCKETS =
  (C.<<) (1 :: FC.CInt) (19 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_PSL@

    __defined at:__ @curl\/curl.h:3203:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_PSL :: FC.CInt
cURL_VERSION_PSL =
  (C.<<) (1 :: FC.CInt) (20 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_HTTPS_PROXY@

    __defined at:__ @curl\/curl.h:3205:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_HTTPS_PROXY :: FC.CInt
cURL_VERSION_HTTPS_PROXY =
  (C.<<) (1 :: FC.CInt) (21 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_MULTI_SSL@

    __defined at:__ @curl\/curl.h:3206:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_MULTI_SSL :: FC.CInt
cURL_VERSION_MULTI_SSL =
  (C.<<) (1 :: FC.CInt) (22 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_BROTLI@

    __defined at:__ @curl\/curl.h:3207:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_BROTLI :: FC.CInt
cURL_VERSION_BROTLI =
  (C.<<) (1 :: FC.CInt) (23 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_ALTSVC@

    __defined at:__ @curl\/curl.h:3208:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_ALTSVC :: FC.CInt
cURL_VERSION_ALTSVC =
  (C.<<) (1 :: FC.CInt) (24 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_HTTP3@

    __defined at:__ @curl\/curl.h:3209:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_HTTP3 :: FC.CInt
cURL_VERSION_HTTP3 =
  (C.<<) (1 :: FC.CInt) (25 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_ZSTD@

    __defined at:__ @curl\/curl.h:3210:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_ZSTD :: FC.CInt
cURL_VERSION_ZSTD =
  (C.<<) (1 :: FC.CInt) (26 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_UNICODE@

    __defined at:__ @curl\/curl.h:3211:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_UNICODE :: FC.CInt
cURL_VERSION_UNICODE =
  (C.<<) (1 :: FC.CInt) (27 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_HSTS@

    __defined at:__ @curl\/curl.h:3212:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_HSTS :: FC.CInt
cURL_VERSION_HSTS =
  (C.<<) (1 :: FC.CInt) (28 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_GSASL@

    __defined at:__ @curl\/curl.h:3213:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_GSASL :: FC.CInt
cURL_VERSION_GSASL =
  (C.<<) (1 :: FC.CInt) (29 :: FC.CInt)

{-| __C declaration:__ @CURL_VERSION_THREADSAFE@

    __defined at:__ @curl\/curl.h:3214:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURL_VERSION_THREADSAFE :: FC.CInt
cURL_VERSION_THREADSAFE =
  (C.<<) (1 :: FC.CInt) (30 :: FC.CInt)

{-| __C declaration:__ @CURLPAUSE_RECV@

    __defined at:__ @curl\/curl.h:3259:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPAUSE_RECV :: FC.CInt
cURLPAUSE_RECV = (C.<<) (1 :: FC.CInt) (0 :: FC.CInt)

{-| __C declaration:__ @CURLPAUSE_RECV_CONT@

    __defined at:__ @curl\/curl.h:3260:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPAUSE_RECV_CONT :: FC.CInt
cURLPAUSE_RECV_CONT = (0 :: FC.CInt)

{-| __C declaration:__ @CURLPAUSE_SEND@

    __defined at:__ @curl\/curl.h:3262:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPAUSE_SEND :: FC.CInt
cURLPAUSE_SEND = (C.<<) (1 :: FC.CInt) (2 :: FC.CInt)

{-| __C declaration:__ @CURLPAUSE_SEND_CONT@

    __defined at:__ @curl\/curl.h:3263:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPAUSE_SEND_CONT :: FC.CInt
cURLPAUSE_SEND_CONT = (0 :: FC.CInt)

{-| __C declaration:__ @CURLPAUSE_ALL@

    __defined at:__ @curl\/curl.h:3265:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPAUSE_ALL :: FC.CInt
cURLPAUSE_ALL = (C..|.) cURLPAUSE_RECV cURLPAUSE_SEND

{-| __C declaration:__ @CURLPAUSE_CONT@

    __defined at:__ @curl\/curl.h:3266:9@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
cURLPAUSE_CONT :: FC.CInt
cURLPAUSE_CONT =
  (C..|.) cURLPAUSE_RECV_CONT cURLPAUSE_SEND_CONT

{-| __C declaration:__ @curl_ssls_export_cb@

    __defined at:__ @curl\/curl.h:3285:18@

    __exported by:__ @curl\/curl.h@, @curl\/curl.h@
-}
newtype Curl_ssls_export_cb = Curl_ssls_export_cb
  { un_Curl_ssls_export_cb :: (Ptr.Ptr Void) -> (Ptr.Ptr Void) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CUChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CUChar) -> HsBindgen.Runtime.Prelude.CSize -> Curl_off_t -> FC.CInt -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO CURLcode
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

foreign import ccall safe "wrapper" toCurl_ssls_export_cb ::
     Curl_ssls_export_cb
  -> IO (Ptr.FunPtr Curl_ssls_export_cb)

foreign import ccall safe "dynamic" fromCurl_ssls_export_cb ::
     Ptr.FunPtr Curl_ssls_export_cb
  -> Curl_ssls_export_cb

instance HsBindgen.Runtime.FunPtr.ToFunPtr Curl_ssls_export_cb where

  toFunPtr = toCurl_ssls_export_cb

instance HsBindgen.Runtime.FunPtr.FromFunPtr Curl_ssls_export_cb where

  fromFunPtr = fromCurl_ssls_export_cb

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Curl_ssls_export_cb) "un_Curl_ssls_export_cb")
         ) => GHC.Records.HasField "un_Curl_ssls_export_cb" (Ptr.Ptr Curl_ssls_export_cb) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Curl_ssls_export_cb")

instance HsBindgen.Runtime.HasCField.HasCField Curl_ssls_export_cb "un_Curl_ssls_export_cb" where

  type CFieldType Curl_ssls_export_cb "un_Curl_ssls_export_cb" =
    (Ptr.Ptr Void) -> (Ptr.Ptr Void) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CUChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CUChar) -> HsBindgen.Runtime.Prelude.CSize -> Curl_off_t -> FC.CInt -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO CURLcode

  offset# = \_ -> \_ -> 0

-- | __unique:__ @instance ToFunPtr ((Ptr.Ptr Void) -> Curl_off_t -> FC.CInt -> IO FC.CInt)@
foreign import ccall safe "wrapper" hs_bindgen_86a2cb5a4906fae1 ::
     ((Ptr.Ptr Void) -> Curl_off_t -> FC.CInt -> IO FC.CInt)
  -> IO (Ptr.FunPtr ((Ptr.Ptr Void) -> Curl_off_t -> FC.CInt -> IO FC.CInt))

-- | __unique:__ @instance FromFunPtr ((Ptr.Ptr Void) -> Curl_off_t -> FC.CInt -> IO FC.CInt)@
foreign import ccall safe "dynamic" hs_bindgen_080d3de998fbb137 ::
     Ptr.FunPtr ((Ptr.Ptr Void) -> Curl_off_t -> FC.CInt -> IO FC.CInt)
  -> (Ptr.Ptr Void) -> Curl_off_t -> FC.CInt -> IO FC.CInt

instance HsBindgen.Runtime.FunPtr.ToFunPtr ((Ptr.Ptr Void) -> Curl_off_t -> FC.CInt -> IO FC.CInt) where

  toFunPtr = hs_bindgen_86a2cb5a4906fae1

instance HsBindgen.Runtime.FunPtr.FromFunPtr ((Ptr.Ptr Void) -> Curl_off_t -> FC.CInt -> IO FC.CInt) where

  fromFunPtr = hs_bindgen_080d3de998fbb137
