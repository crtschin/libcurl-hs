{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE DataKinds #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Generated.Curl.Easy.GetInfo.Instances.Unsafe where

import Data.Void
import Generated.Curl.Easy.GetInfo.Class
import Generated.Curl.Easy
import Generated.Curl.Curl
import qualified Generated.Curl.Easy.GetInfo.Unsafe as GetInfo
import Foreign.C.Types
import Foreign.Ptr

data CurlinfoEffectiveUrl = CurlinfoEffectiveUrl

instance CurlInfo CurlinfoEffectiveUrl where
  type CurlInfoResult CurlinfoEffectiveUrl = Ptr CChar
  curlInfo _ = CURLINFO_EFFECTIVE_URL
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_string handle (curlInfo info) ptr

data CurlinfoResponseCode = CurlinfoResponseCode

instance CurlInfo CurlinfoResponseCode where
  type CurlInfoResult CurlinfoResponseCode = CLong
  curlInfo _ = CURLINFO_RESPONSE_CODE
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoTotalTime = CurlinfoTotalTime

instance CurlInfo CurlinfoTotalTime where
  type CurlInfoResult CurlinfoTotalTime = CDouble
  curlInfo _ = CURLINFO_TOTAL_TIME
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_double handle (curlInfo info) ptr

data CurlinfoNamelookupTime = CurlinfoNamelookupTime

instance CurlInfo CurlinfoNamelookupTime where
  type CurlInfoResult CurlinfoNamelookupTime = CDouble
  curlInfo _ = CURLINFO_NAMELOOKUP_TIME
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_double handle (curlInfo info) ptr

data CurlinfoConnectTime = CurlinfoConnectTime

instance CurlInfo CurlinfoConnectTime where
  type CurlInfoResult CurlinfoConnectTime = CDouble
  curlInfo _ = CURLINFO_CONNECT_TIME
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_double handle (curlInfo info) ptr

data CurlinfoPretransferTime = CurlinfoPretransferTime

instance CurlInfo CurlinfoPretransferTime where
  type CurlInfoResult CurlinfoPretransferTime = CDouble
  curlInfo _ = CURLINFO_PRETRANSFER_TIME
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_double handle (curlInfo info) ptr

data CurlinfoSizeUpload = CurlinfoSizeUpload

instance CurlInfo CurlinfoSizeUpload where
  type CurlInfoResult CurlinfoSizeUpload = CDouble
  curlInfo _ = CURLINFO_SIZE_UPLOAD
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_double handle (curlInfo info) ptr

data CurlinfoSizeUploadT = CurlinfoSizeUploadT

instance CurlInfo CurlinfoSizeUploadT where
  type CurlInfoResult CurlinfoSizeUploadT = CLong
  curlInfo _ = CURLINFO_SIZE_UPLOAD_T
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_off_t handle (curlInfo info) ptr

data CurlinfoSizeDownload = CurlinfoSizeDownload

instance CurlInfo CurlinfoSizeDownload where
  type CurlInfoResult CurlinfoSizeDownload = CDouble
  curlInfo _ = CURLINFO_SIZE_DOWNLOAD
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_double handle (curlInfo info) ptr

data CurlinfoSizeDownloadT = CurlinfoSizeDownloadT

instance CurlInfo CurlinfoSizeDownloadT where
  type CurlInfoResult CurlinfoSizeDownloadT = CLong
  curlInfo _ = CURLINFO_SIZE_DOWNLOAD_T
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_off_t handle (curlInfo info) ptr

data CurlinfoSpeedDownload = CurlinfoSpeedDownload

instance CurlInfo CurlinfoSpeedDownload where
  type CurlInfoResult CurlinfoSpeedDownload = CDouble
  curlInfo _ = CURLINFO_SPEED_DOWNLOAD
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_double handle (curlInfo info) ptr

data CurlinfoSpeedDownloadT = CurlinfoSpeedDownloadT

instance CurlInfo CurlinfoSpeedDownloadT where
  type CurlInfoResult CurlinfoSpeedDownloadT = CLong
  curlInfo _ = CURLINFO_SPEED_DOWNLOAD_T
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_off_t handle (curlInfo info) ptr

data CurlinfoSpeedUpload = CurlinfoSpeedUpload

instance CurlInfo CurlinfoSpeedUpload where
  type CurlInfoResult CurlinfoSpeedUpload = CDouble
  curlInfo _ = CURLINFO_SPEED_UPLOAD
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_double handle (curlInfo info) ptr

data CurlinfoSpeedUploadT = CurlinfoSpeedUploadT

instance CurlInfo CurlinfoSpeedUploadT where
  type CurlInfoResult CurlinfoSpeedUploadT = CLong
  curlInfo _ = CURLINFO_SPEED_UPLOAD_T
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_off_t handle (curlInfo info) ptr

data CurlinfoHeaderSize = CurlinfoHeaderSize

instance CurlInfo CurlinfoHeaderSize where
  type CurlInfoResult CurlinfoHeaderSize = CLong
  curlInfo _ = CURLINFO_HEADER_SIZE
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoRequestSize = CurlinfoRequestSize

instance CurlInfo CurlinfoRequestSize where
  type CurlInfoResult CurlinfoRequestSize = CLong
  curlInfo _ = CURLINFO_REQUEST_SIZE
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoSslVerifyresult = CurlinfoSslVerifyresult

instance CurlInfo CurlinfoSslVerifyresult where
  type CurlInfoResult CurlinfoSslVerifyresult = CLong
  curlInfo _ = CURLINFO_SSL_VERIFYRESULT
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoFiletime = CurlinfoFiletime

instance CurlInfo CurlinfoFiletime where
  type CurlInfoResult CurlinfoFiletime = CLong
  curlInfo _ = CURLINFO_FILETIME
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoFiletimeT = CurlinfoFiletimeT

instance CurlInfo CurlinfoFiletimeT where
  type CurlInfoResult CurlinfoFiletimeT = CLong
  curlInfo _ = CURLINFO_FILETIME_T
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_off_t handle (curlInfo info) ptr

data CurlinfoContentLengthDownload = CurlinfoContentLengthDownload

instance CurlInfo CurlinfoContentLengthDownload where
  type CurlInfoResult CurlinfoContentLengthDownload = CDouble
  curlInfo _ = CURLINFO_CONTENT_LENGTH_DOWNLOAD
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_double handle (curlInfo info) ptr

data CurlinfoContentLengthDownloadT = CurlinfoContentLengthDownloadT

instance CurlInfo CurlinfoContentLengthDownloadT where
  type CurlInfoResult CurlinfoContentLengthDownloadT = CLong
  curlInfo _ = CURLINFO_CONTENT_LENGTH_DOWNLOAD_T
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_off_t handle (curlInfo info) ptr

data CurlinfoContentLengthUpload = CurlinfoContentLengthUpload

instance CurlInfo CurlinfoContentLengthUpload where
  type CurlInfoResult CurlinfoContentLengthUpload = CDouble
  curlInfo _ = CURLINFO_CONTENT_LENGTH_UPLOAD
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_double handle (curlInfo info) ptr

data CurlinfoContentLengthUploadT = CurlinfoContentLengthUploadT

instance CurlInfo CurlinfoContentLengthUploadT where
  type CurlInfoResult CurlinfoContentLengthUploadT = CLong
  curlInfo _ = CURLINFO_CONTENT_LENGTH_UPLOAD_T
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_off_t handle (curlInfo info) ptr

data CurlinfoStarttransferTime = CurlinfoStarttransferTime

instance CurlInfo CurlinfoStarttransferTime where
  type CurlInfoResult CurlinfoStarttransferTime = CDouble
  curlInfo _ = CURLINFO_STARTTRANSFER_TIME
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_double handle (curlInfo info) ptr

data CurlinfoContentType = CurlinfoContentType

instance CurlInfo CurlinfoContentType where
  type CurlInfoResult CurlinfoContentType = Ptr CChar
  curlInfo _ = CURLINFO_CONTENT_TYPE
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_string handle (curlInfo info) ptr

data CurlinfoRedirectTime = CurlinfoRedirectTime

instance CurlInfo CurlinfoRedirectTime where
  type CurlInfoResult CurlinfoRedirectTime = CDouble
  curlInfo _ = CURLINFO_REDIRECT_TIME
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_double handle (curlInfo info) ptr

data CurlinfoRedirectCount = CurlinfoRedirectCount

instance CurlInfo CurlinfoRedirectCount where
  type CurlInfoResult CurlinfoRedirectCount = CLong
  curlInfo _ = CURLINFO_REDIRECT_COUNT
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoPrivate = CurlinfoPrivate

instance CurlInfo CurlinfoPrivate where
  type CurlInfoResult CurlinfoPrivate = Ptr CChar
  curlInfo _ = CURLINFO_PRIVATE
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_string handle (curlInfo info) ptr

data CurlinfoHttpConnectcode = CurlinfoHttpConnectcode

instance CurlInfo CurlinfoHttpConnectcode where
  type CurlInfoResult CurlinfoHttpConnectcode = CLong
  curlInfo _ = CURLINFO_HTTP_CONNECTCODE
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoHttpauthAvail = CurlinfoHttpauthAvail

instance CurlInfo CurlinfoHttpauthAvail where
  type CurlInfoResult CurlinfoHttpauthAvail = CLong
  curlInfo _ = CURLINFO_HTTPAUTH_AVAIL
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoProxyauthAvail = CurlinfoProxyauthAvail

instance CurlInfo CurlinfoProxyauthAvail where
  type CurlInfoResult CurlinfoProxyauthAvail = CLong
  curlInfo _ = CURLINFO_PROXYAUTH_AVAIL
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoOsErrno = CurlinfoOsErrno

instance CurlInfo CurlinfoOsErrno where
  type CurlInfoResult CurlinfoOsErrno = CLong
  curlInfo _ = CURLINFO_OS_ERRNO
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoNumConnects = CurlinfoNumConnects

instance CurlInfo CurlinfoNumConnects where
  type CurlInfoResult CurlinfoNumConnects = CLong
  curlInfo _ = CURLINFO_NUM_CONNECTS
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoSslEngines = CurlinfoSslEngines

instance CurlInfo CurlinfoSslEngines where
  type CurlInfoResult CurlinfoSslEngines = Ptr Curl_slist
  curlInfo _ = CURLINFO_SSL_ENGINES
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_slist handle (curlInfo info) ptr

data CurlinfoCookielist = CurlinfoCookielist

instance CurlInfo CurlinfoCookielist where
  type CurlInfoResult CurlinfoCookielist = Ptr Curl_slist
  curlInfo _ = CURLINFO_COOKIELIST
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_slist handle (curlInfo info) ptr

data CurlinfoLastsocket = CurlinfoLastsocket

instance CurlInfo CurlinfoLastsocket where
  type CurlInfoResult CurlinfoLastsocket = CLong
  curlInfo _ = CURLINFO_LASTSOCKET
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoFtpEntryPath = CurlinfoFtpEntryPath

instance CurlInfo CurlinfoFtpEntryPath where
  type CurlInfoResult CurlinfoFtpEntryPath = Ptr CChar
  curlInfo _ = CURLINFO_FTP_ENTRY_PATH
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_string handle (curlInfo info) ptr

data CurlinfoRedirectUrl = CurlinfoRedirectUrl

instance CurlInfo CurlinfoRedirectUrl where
  type CurlInfoResult CurlinfoRedirectUrl = Ptr CChar
  curlInfo _ = CURLINFO_REDIRECT_URL
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_string handle (curlInfo info) ptr

data CurlinfoPrimaryIp = CurlinfoPrimaryIp

instance CurlInfo CurlinfoPrimaryIp where
  type CurlInfoResult CurlinfoPrimaryIp = Ptr CChar
  curlInfo _ = CURLINFO_PRIMARY_IP
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_string handle (curlInfo info) ptr

data CurlinfoAppconnectTime = CurlinfoAppconnectTime

instance CurlInfo CurlinfoAppconnectTime where
  type CurlInfoResult CurlinfoAppconnectTime = CDouble
  curlInfo _ = CURLINFO_APPCONNECT_TIME
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_double handle (curlInfo info) ptr

data CurlinfoCertinfo = CurlinfoCertinfo

instance CurlInfo CurlinfoCertinfo where
  type CurlInfoResult CurlinfoCertinfo = Ptr Curl_slist
  curlInfo _ = CURLINFO_CERTINFO
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_slist handle (curlInfo info) ptr

data CurlinfoConditionUnmet = CurlinfoConditionUnmet

instance CurlInfo CurlinfoConditionUnmet where
  type CurlInfoResult CurlinfoConditionUnmet = CLong
  curlInfo _ = CURLINFO_CONDITION_UNMET
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoRtspSessionId = CurlinfoRtspSessionId

instance CurlInfo CurlinfoRtspSessionId where
  type CurlInfoResult CurlinfoRtspSessionId = Ptr CChar
  curlInfo _ = CURLINFO_RTSP_SESSION_ID
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_string handle (curlInfo info) ptr

data CurlinfoRtspClientCseq = CurlinfoRtspClientCseq

instance CurlInfo CurlinfoRtspClientCseq where
  type CurlInfoResult CurlinfoRtspClientCseq = CLong
  curlInfo _ = CURLINFO_RTSP_CLIENT_CSEQ
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoRtspServerCseq = CurlinfoRtspServerCseq

instance CurlInfo CurlinfoRtspServerCseq where
  type CurlInfoResult CurlinfoRtspServerCseq = CLong
  curlInfo _ = CURLINFO_RTSP_SERVER_CSEQ
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoRtspCseqRecv = CurlinfoRtspCseqRecv

instance CurlInfo CurlinfoRtspCseqRecv where
  type CurlInfoResult CurlinfoRtspCseqRecv = CLong
  curlInfo _ = CURLINFO_RTSP_CSEQ_RECV
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoPrimaryPort = CurlinfoPrimaryPort

instance CurlInfo CurlinfoPrimaryPort where
  type CurlInfoResult CurlinfoPrimaryPort = CLong
  curlInfo _ = CURLINFO_PRIMARY_PORT
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoLocalIp = CurlinfoLocalIp

instance CurlInfo CurlinfoLocalIp where
  type CurlInfoResult CurlinfoLocalIp = Ptr CChar
  curlInfo _ = CURLINFO_LOCAL_IP
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_string handle (curlInfo info) ptr

data CurlinfoLocalPort = CurlinfoLocalPort

instance CurlInfo CurlinfoLocalPort where
  type CurlInfoResult CurlinfoLocalPort = CLong
  curlInfo _ = CURLINFO_LOCAL_PORT
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoTlsSession = CurlinfoTlsSession

instance CurlInfo CurlinfoTlsSession where
  type CurlInfoResult CurlinfoTlsSession = Ptr Curl_slist
  curlInfo _ = CURLINFO_TLS_SESSION
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_slist handle (curlInfo info) ptr

data CurlinfoActivesocket = CurlinfoActivesocket

instance CurlInfo CurlinfoActivesocket where
  type CurlInfoResult CurlinfoActivesocket = Curl_socket_t
  curlInfo _ = CURLINFO_ACTIVESOCKET
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_socket_t handle (curlInfo info) ptr

data CurlinfoTlsSslPtr = CurlinfoTlsSslPtr

instance CurlInfo CurlinfoTlsSslPtr where
  type CurlInfoResult CurlinfoTlsSslPtr = Ptr Curl_slist
  curlInfo _ = CURLINFO_TLS_SSL_PTR
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_slist handle (curlInfo info) ptr

data CurlinfoHttpVersion = CurlinfoHttpVersion

instance CurlInfo CurlinfoHttpVersion where
  type CurlInfoResult CurlinfoHttpVersion = CLong
  curlInfo _ = CURLINFO_HTTP_VERSION
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoProxySslVerifyresult = CurlinfoProxySslVerifyresult

instance CurlInfo CurlinfoProxySslVerifyresult where
  type CurlInfoResult CurlinfoProxySslVerifyresult = CLong
  curlInfo _ = CURLINFO_PROXY_SSL_VERIFYRESULT
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoProtocol = CurlinfoProtocol

instance CurlInfo CurlinfoProtocol where
  type CurlInfoResult CurlinfoProtocol = CLong
  curlInfo _ = CURLINFO_PROTOCOL
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoScheme = CurlinfoScheme

instance CurlInfo CurlinfoScheme where
  type CurlInfoResult CurlinfoScheme = Ptr CChar
  curlInfo _ = CURLINFO_SCHEME
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_string handle (curlInfo info) ptr

data CurlinfoTotalTimeT = CurlinfoTotalTimeT

instance CurlInfo CurlinfoTotalTimeT where
  type CurlInfoResult CurlinfoTotalTimeT = CLong
  curlInfo _ = CURLINFO_TOTAL_TIME_T
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_off_t handle (curlInfo info) ptr

data CurlinfoNamelookupTimeT = CurlinfoNamelookupTimeT

instance CurlInfo CurlinfoNamelookupTimeT where
  type CurlInfoResult CurlinfoNamelookupTimeT = CLong
  curlInfo _ = CURLINFO_NAMELOOKUP_TIME_T
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_off_t handle (curlInfo info) ptr

data CurlinfoConnectTimeT = CurlinfoConnectTimeT

instance CurlInfo CurlinfoConnectTimeT where
  type CurlInfoResult CurlinfoConnectTimeT = CLong
  curlInfo _ = CURLINFO_CONNECT_TIME_T
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_off_t handle (curlInfo info) ptr

data CurlinfoPretransferTimeT = CurlinfoPretransferTimeT

instance CurlInfo CurlinfoPretransferTimeT where
  type CurlInfoResult CurlinfoPretransferTimeT = CLong
  curlInfo _ = CURLINFO_PRETRANSFER_TIME_T
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_off_t handle (curlInfo info) ptr

data CurlinfoStarttransferTimeT = CurlinfoStarttransferTimeT

instance CurlInfo CurlinfoStarttransferTimeT where
  type CurlInfoResult CurlinfoStarttransferTimeT = CLong
  curlInfo _ = CURLINFO_STARTTRANSFER_TIME_T
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_off_t handle (curlInfo info) ptr

data CurlinfoRedirectTimeT = CurlinfoRedirectTimeT

instance CurlInfo CurlinfoRedirectTimeT where
  type CurlInfoResult CurlinfoRedirectTimeT = CLong
  curlInfo _ = CURLINFO_REDIRECT_TIME_T
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_off_t handle (curlInfo info) ptr

data CurlinfoAppconnectTimeT = CurlinfoAppconnectTimeT

instance CurlInfo CurlinfoAppconnectTimeT where
  type CurlInfoResult CurlinfoAppconnectTimeT = CLong
  curlInfo _ = CURLINFO_APPCONNECT_TIME_T
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_off_t handle (curlInfo info) ptr

data CurlinfoRetryAfter = CurlinfoRetryAfter

instance CurlInfo CurlinfoRetryAfter where
  type CurlInfoResult CurlinfoRetryAfter = CLong
  curlInfo _ = CURLINFO_RETRY_AFTER
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_off_t handle (curlInfo info) ptr

data CurlinfoEffectiveMethod = CurlinfoEffectiveMethod

instance CurlInfo CurlinfoEffectiveMethod where
  type CurlInfoResult CurlinfoEffectiveMethod = Ptr CChar
  curlInfo _ = CURLINFO_EFFECTIVE_METHOD
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_string handle (curlInfo info) ptr

data CurlinfoProxyError = CurlinfoProxyError

instance CurlInfo CurlinfoProxyError where
  type CurlInfoResult CurlinfoProxyError = CLong
  curlInfo _ = CURLINFO_PROXY_ERROR
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoReferer = CurlinfoReferer

instance CurlInfo CurlinfoReferer where
  type CurlInfoResult CurlinfoReferer = Ptr CChar
  curlInfo _ = CURLINFO_REFERER
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_string handle (curlInfo info) ptr

data CurlinfoCainfo = CurlinfoCainfo

instance CurlInfo CurlinfoCainfo where
  type CurlInfoResult CurlinfoCainfo = Ptr CChar
  curlInfo _ = CURLINFO_CAINFO
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_string handle (curlInfo info) ptr

data CurlinfoCapath = CurlinfoCapath

instance CurlInfo CurlinfoCapath where
  type CurlInfoResult CurlinfoCapath = Ptr CChar
  curlInfo _ = CURLINFO_CAPATH
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_string handle (curlInfo info) ptr

data CurlinfoXferId = CurlinfoXferId

instance CurlInfo CurlinfoXferId where
  type CurlInfoResult CurlinfoXferId = CLong
  curlInfo _ = CURLINFO_XFER_ID
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_off_t handle (curlInfo info) ptr

data CurlinfoConnId = CurlinfoConnId

instance CurlInfo CurlinfoConnId where
  type CurlInfoResult CurlinfoConnId = CLong
  curlInfo _ = CURLINFO_CONN_ID
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_off_t handle (curlInfo info) ptr

data CurlinfoQueueTimeT = CurlinfoQueueTimeT

instance CurlInfo CurlinfoQueueTimeT where
  type CurlInfoResult CurlinfoQueueTimeT = CLong
  curlInfo _ = CURLINFO_QUEUE_TIME_T
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_off_t handle (curlInfo info) ptr

data CurlinfoUsedProxy = CurlinfoUsedProxy

instance CurlInfo CurlinfoUsedProxy where
  type CurlInfoResult CurlinfoUsedProxy = CLong
  curlInfo _ = CURLINFO_USED_PROXY
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoPosttransferTimeT = CurlinfoPosttransferTimeT

instance CurlInfo CurlinfoPosttransferTimeT where
  type CurlInfoResult CurlinfoPosttransferTimeT = CLong
  curlInfo _ = CURLINFO_POSTTRANSFER_TIME_T
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_off_t handle (curlInfo info) ptr

data CurlinfoEarlydataSentT = CurlinfoEarlydataSentT

instance CurlInfo CurlinfoEarlydataSentT where
  type CurlInfoResult CurlinfoEarlydataSentT = CLong
  curlInfo _ = CURLINFO_EARLYDATA_SENT_T
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_off_t handle (curlInfo info) ptr

data CurlinfoHttpauthUsed = CurlinfoHttpauthUsed

instance CurlInfo CurlinfoHttpauthUsed where
  type CurlInfoResult CurlinfoHttpauthUsed = CLong
  curlInfo _ = CURLINFO_HTTPAUTH_USED
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoProxyauthUsed = CurlinfoProxyauthUsed

instance CurlInfo CurlinfoProxyauthUsed where
  type CurlInfoResult CurlinfoProxyauthUsed = CLong
  curlInfo _ = CURLINFO_PROXYAUTH_USED
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

data CurlinfoLastone = CurlinfoLastone

instance CurlInfo CurlinfoLastone where
  type CurlInfoResult CurlinfoLastone = CLong
  curlInfo _ = CURLINFO_LASTONE
  curlGetInfo info handle ptr = GetInfo.curl_easy_getinfo_long handle (curlInfo info) ptr

