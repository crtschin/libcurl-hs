{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE DataKinds #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Generated.Curl.Easy.GetInfo.Instances.Unsafe where

import Data.Void
import Generated.Curl.Easy.GetInfo.Class
import Generated.Curl.Easy
import Generated.Curl.Multi
import Generated.Curl.Curl
import qualified Generated.Curl.Easy.GetInfo.Unsafe as Easy.GetInfo
import Foreign.C.Types
import Foreign.Ptr

data CurlinfoEffectiveUrl = CurlinfoEffectiveUrl

instance CurlInfo CurlinfoEffectiveUrl where
  type CurlInfoResult CurlinfoEffectiveUrl = Ptr CChar
  curlInfo _ = CURLINFO_EFFECTIVE_URL
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_string handle (curlInfo opt)

data CurlinfoResponseCode = CurlinfoResponseCode

instance CurlInfo CurlinfoResponseCode where
  type CurlInfoResult CurlinfoResponseCode = CLong
  curlInfo _ = CURLINFO_RESPONSE_CODE
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoTotalTime = CurlinfoTotalTime

instance CurlInfo CurlinfoTotalTime where
  type CurlInfoResult CurlinfoTotalTime = CDouble
  curlInfo _ = CURLINFO_TOTAL_TIME
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_double handle (curlInfo opt)

data CurlinfoNamelookupTime = CurlinfoNamelookupTime

instance CurlInfo CurlinfoNamelookupTime where
  type CurlInfoResult CurlinfoNamelookupTime = CDouble
  curlInfo _ = CURLINFO_NAMELOOKUP_TIME
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_double handle (curlInfo opt)

data CurlinfoConnectTime = CurlinfoConnectTime

instance CurlInfo CurlinfoConnectTime where
  type CurlInfoResult CurlinfoConnectTime = CDouble
  curlInfo _ = CURLINFO_CONNECT_TIME
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_double handle (curlInfo opt)

data CurlinfoPretransferTime = CurlinfoPretransferTime

instance CurlInfo CurlinfoPretransferTime where
  type CurlInfoResult CurlinfoPretransferTime = CDouble
  curlInfo _ = CURLINFO_PRETRANSFER_TIME
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_double handle (curlInfo opt)

data CurlinfoSizeUpload = CurlinfoSizeUpload

instance CurlInfo CurlinfoSizeUpload where
  type CurlInfoResult CurlinfoSizeUpload = CDouble
  curlInfo _ = CURLINFO_SIZE_UPLOAD
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_double handle (curlInfo opt)

data CurlinfoSizeUploadT = CurlinfoSizeUploadT

instance CurlInfo CurlinfoSizeUploadT where
  type CurlInfoResult CurlinfoSizeUploadT = CLong
  curlInfo _ = CURLINFO_SIZE_UPLOAD_T
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_off_t handle (curlInfo opt)

data CurlinfoSizeDownload = CurlinfoSizeDownload

instance CurlInfo CurlinfoSizeDownload where
  type CurlInfoResult CurlinfoSizeDownload = CDouble
  curlInfo _ = CURLINFO_SIZE_DOWNLOAD
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_double handle (curlInfo opt)

data CurlinfoSizeDownloadT = CurlinfoSizeDownloadT

instance CurlInfo CurlinfoSizeDownloadT where
  type CurlInfoResult CurlinfoSizeDownloadT = CLong
  curlInfo _ = CURLINFO_SIZE_DOWNLOAD_T
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_off_t handle (curlInfo opt)

data CurlinfoSpeedDownload = CurlinfoSpeedDownload

instance CurlInfo CurlinfoSpeedDownload where
  type CurlInfoResult CurlinfoSpeedDownload = CDouble
  curlInfo _ = CURLINFO_SPEED_DOWNLOAD
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_double handle (curlInfo opt)

data CurlinfoSpeedDownloadT = CurlinfoSpeedDownloadT

instance CurlInfo CurlinfoSpeedDownloadT where
  type CurlInfoResult CurlinfoSpeedDownloadT = CLong
  curlInfo _ = CURLINFO_SPEED_DOWNLOAD_T
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_off_t handle (curlInfo opt)

data CurlinfoSpeedUpload = CurlinfoSpeedUpload

instance CurlInfo CurlinfoSpeedUpload where
  type CurlInfoResult CurlinfoSpeedUpload = CDouble
  curlInfo _ = CURLINFO_SPEED_UPLOAD
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_double handle (curlInfo opt)

data CurlinfoSpeedUploadT = CurlinfoSpeedUploadT

instance CurlInfo CurlinfoSpeedUploadT where
  type CurlInfoResult CurlinfoSpeedUploadT = CLong
  curlInfo _ = CURLINFO_SPEED_UPLOAD_T
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_off_t handle (curlInfo opt)

data CurlinfoHeaderSize = CurlinfoHeaderSize

instance CurlInfo CurlinfoHeaderSize where
  type CurlInfoResult CurlinfoHeaderSize = CLong
  curlInfo _ = CURLINFO_HEADER_SIZE
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoRequestSize = CurlinfoRequestSize

instance CurlInfo CurlinfoRequestSize where
  type CurlInfoResult CurlinfoRequestSize = CLong
  curlInfo _ = CURLINFO_REQUEST_SIZE
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoSslVerifyresult = CurlinfoSslVerifyresult

instance CurlInfo CurlinfoSslVerifyresult where
  type CurlInfoResult CurlinfoSslVerifyresult = CLong
  curlInfo _ = CURLINFO_SSL_VERIFYRESULT
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoFiletime = CurlinfoFiletime

instance CurlInfo CurlinfoFiletime where
  type CurlInfoResult CurlinfoFiletime = CLong
  curlInfo _ = CURLINFO_FILETIME
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoFiletimeT = CurlinfoFiletimeT

instance CurlInfo CurlinfoFiletimeT where
  type CurlInfoResult CurlinfoFiletimeT = CLong
  curlInfo _ = CURLINFO_FILETIME_T
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_off_t handle (curlInfo opt)

data CurlinfoContentLengthDownload = CurlinfoContentLengthDownload

instance CurlInfo CurlinfoContentLengthDownload where
  type CurlInfoResult CurlinfoContentLengthDownload = CDouble
  curlInfo _ = CURLINFO_CONTENT_LENGTH_DOWNLOAD
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_double handle (curlInfo opt)

data CurlinfoContentLengthDownloadT = CurlinfoContentLengthDownloadT

instance CurlInfo CurlinfoContentLengthDownloadT where
  type CurlInfoResult CurlinfoContentLengthDownloadT = CLong
  curlInfo _ = CURLINFO_CONTENT_LENGTH_DOWNLOAD_T
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_off_t handle (curlInfo opt)

data CurlinfoContentLengthUpload = CurlinfoContentLengthUpload

instance CurlInfo CurlinfoContentLengthUpload where
  type CurlInfoResult CurlinfoContentLengthUpload = CDouble
  curlInfo _ = CURLINFO_CONTENT_LENGTH_UPLOAD
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_double handle (curlInfo opt)

data CurlinfoContentLengthUploadT = CurlinfoContentLengthUploadT

instance CurlInfo CurlinfoContentLengthUploadT where
  type CurlInfoResult CurlinfoContentLengthUploadT = CLong
  curlInfo _ = CURLINFO_CONTENT_LENGTH_UPLOAD_T
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_off_t handle (curlInfo opt)

data CurlinfoStarttransferTime = CurlinfoStarttransferTime

instance CurlInfo CurlinfoStarttransferTime where
  type CurlInfoResult CurlinfoStarttransferTime = CDouble
  curlInfo _ = CURLINFO_STARTTRANSFER_TIME
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_double handle (curlInfo opt)

data CurlinfoContentType = CurlinfoContentType

instance CurlInfo CurlinfoContentType where
  type CurlInfoResult CurlinfoContentType = Ptr CChar
  curlInfo _ = CURLINFO_CONTENT_TYPE
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_string handle (curlInfo opt)

data CurlinfoRedirectTime = CurlinfoRedirectTime

instance CurlInfo CurlinfoRedirectTime where
  type CurlInfoResult CurlinfoRedirectTime = CDouble
  curlInfo _ = CURLINFO_REDIRECT_TIME
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_double handle (curlInfo opt)

data CurlinfoRedirectCount = CurlinfoRedirectCount

instance CurlInfo CurlinfoRedirectCount where
  type CurlInfoResult CurlinfoRedirectCount = CLong
  curlInfo _ = CURLINFO_REDIRECT_COUNT
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoPrivate = CurlinfoPrivate

instance CurlInfo CurlinfoPrivate where
  type CurlInfoResult CurlinfoPrivate = Ptr CChar
  curlInfo _ = CURLINFO_PRIVATE
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_string handle (curlInfo opt)

data CurlinfoHttpConnectcode = CurlinfoHttpConnectcode

instance CurlInfo CurlinfoHttpConnectcode where
  type CurlInfoResult CurlinfoHttpConnectcode = CLong
  curlInfo _ = CURLINFO_HTTP_CONNECTCODE
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoHttpauthAvail = CurlinfoHttpauthAvail

instance CurlInfo CurlinfoHttpauthAvail where
  type CurlInfoResult CurlinfoHttpauthAvail = CLong
  curlInfo _ = CURLINFO_HTTPAUTH_AVAIL
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoProxyauthAvail = CurlinfoProxyauthAvail

instance CurlInfo CurlinfoProxyauthAvail where
  type CurlInfoResult CurlinfoProxyauthAvail = CLong
  curlInfo _ = CURLINFO_PROXYAUTH_AVAIL
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoOsErrno = CurlinfoOsErrno

instance CurlInfo CurlinfoOsErrno where
  type CurlInfoResult CurlinfoOsErrno = CLong
  curlInfo _ = CURLINFO_OS_ERRNO
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoNumConnects = CurlinfoNumConnects

instance CurlInfo CurlinfoNumConnects where
  type CurlInfoResult CurlinfoNumConnects = CLong
  curlInfo _ = CURLINFO_NUM_CONNECTS
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoSslEngines = CurlinfoSslEngines

instance CurlInfo CurlinfoSslEngines where
  type CurlInfoResult CurlinfoSslEngines = Ptr Curl_slist
  curlInfo _ = CURLINFO_SSL_ENGINES
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_slist handle (curlInfo opt)

data CurlinfoCookielist = CurlinfoCookielist

instance CurlInfo CurlinfoCookielist where
  type CurlInfoResult CurlinfoCookielist = Ptr Curl_slist
  curlInfo _ = CURLINFO_COOKIELIST
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_slist handle (curlInfo opt)

data CurlinfoLastsocket = CurlinfoLastsocket

instance CurlInfo CurlinfoLastsocket where
  type CurlInfoResult CurlinfoLastsocket = CLong
  curlInfo _ = CURLINFO_LASTSOCKET
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoFtpEntryPath = CurlinfoFtpEntryPath

instance CurlInfo CurlinfoFtpEntryPath where
  type CurlInfoResult CurlinfoFtpEntryPath = Ptr CChar
  curlInfo _ = CURLINFO_FTP_ENTRY_PATH
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_string handle (curlInfo opt)

data CurlinfoRedirectUrl = CurlinfoRedirectUrl

instance CurlInfo CurlinfoRedirectUrl where
  type CurlInfoResult CurlinfoRedirectUrl = Ptr CChar
  curlInfo _ = CURLINFO_REDIRECT_URL
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_string handle (curlInfo opt)

data CurlinfoPrimaryIp = CurlinfoPrimaryIp

instance CurlInfo CurlinfoPrimaryIp where
  type CurlInfoResult CurlinfoPrimaryIp = Ptr CChar
  curlInfo _ = CURLINFO_PRIMARY_IP
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_string handle (curlInfo opt)

data CurlinfoAppconnectTime = CurlinfoAppconnectTime

instance CurlInfo CurlinfoAppconnectTime where
  type CurlInfoResult CurlinfoAppconnectTime = CDouble
  curlInfo _ = CURLINFO_APPCONNECT_TIME
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_double handle (curlInfo opt)

data CurlinfoCertinfo = CurlinfoCertinfo

instance CurlInfo CurlinfoCertinfo where
  type CurlInfoResult CurlinfoCertinfo = Ptr Curl_slist
  curlInfo _ = CURLINFO_CERTINFO
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_slist handle (curlInfo opt)

data CurlinfoConditionUnmet = CurlinfoConditionUnmet

instance CurlInfo CurlinfoConditionUnmet where
  type CurlInfoResult CurlinfoConditionUnmet = CLong
  curlInfo _ = CURLINFO_CONDITION_UNMET
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoRtspSessionId = CurlinfoRtspSessionId

instance CurlInfo CurlinfoRtspSessionId where
  type CurlInfoResult CurlinfoRtspSessionId = Ptr CChar
  curlInfo _ = CURLINFO_RTSP_SESSION_ID
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_string handle (curlInfo opt)

data CurlinfoRtspClientCseq = CurlinfoRtspClientCseq

instance CurlInfo CurlinfoRtspClientCseq where
  type CurlInfoResult CurlinfoRtspClientCseq = CLong
  curlInfo _ = CURLINFO_RTSP_CLIENT_CSEQ
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoRtspServerCseq = CurlinfoRtspServerCseq

instance CurlInfo CurlinfoRtspServerCseq where
  type CurlInfoResult CurlinfoRtspServerCseq = CLong
  curlInfo _ = CURLINFO_RTSP_SERVER_CSEQ
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoRtspCseqRecv = CurlinfoRtspCseqRecv

instance CurlInfo CurlinfoRtspCseqRecv where
  type CurlInfoResult CurlinfoRtspCseqRecv = CLong
  curlInfo _ = CURLINFO_RTSP_CSEQ_RECV
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoPrimaryPort = CurlinfoPrimaryPort

instance CurlInfo CurlinfoPrimaryPort where
  type CurlInfoResult CurlinfoPrimaryPort = CLong
  curlInfo _ = CURLINFO_PRIMARY_PORT
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoLocalIp = CurlinfoLocalIp

instance CurlInfo CurlinfoLocalIp where
  type CurlInfoResult CurlinfoLocalIp = Ptr CChar
  curlInfo _ = CURLINFO_LOCAL_IP
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_string handle (curlInfo opt)

data CurlinfoLocalPort = CurlinfoLocalPort

instance CurlInfo CurlinfoLocalPort where
  type CurlInfoResult CurlinfoLocalPort = CLong
  curlInfo _ = CURLINFO_LOCAL_PORT
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoTlsSession = CurlinfoTlsSession

instance CurlInfo CurlinfoTlsSession where
  type CurlInfoResult CurlinfoTlsSession = Ptr Curl_slist
  curlInfo _ = CURLINFO_TLS_SESSION
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_slist handle (curlInfo opt)

data CurlinfoActivesocket = CurlinfoActivesocket

instance CurlInfo CurlinfoActivesocket where
  type CurlInfoResult CurlinfoActivesocket = Curl_socket_t
  curlInfo _ = CURLINFO_ACTIVESOCKET
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_socket_t handle (curlInfo opt)

data CurlinfoTlsSslPtr = CurlinfoTlsSslPtr

instance CurlInfo CurlinfoTlsSslPtr where
  type CurlInfoResult CurlinfoTlsSslPtr = Ptr Curl_slist
  curlInfo _ = CURLINFO_TLS_SSL_PTR
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_slist handle (curlInfo opt)

data CurlinfoHttpVersion = CurlinfoHttpVersion

instance CurlInfo CurlinfoHttpVersion where
  type CurlInfoResult CurlinfoHttpVersion = CLong
  curlInfo _ = CURLINFO_HTTP_VERSION
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoProxySslVerifyresult = CurlinfoProxySslVerifyresult

instance CurlInfo CurlinfoProxySslVerifyresult where
  type CurlInfoResult CurlinfoProxySslVerifyresult = CLong
  curlInfo _ = CURLINFO_PROXY_SSL_VERIFYRESULT
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoProtocol = CurlinfoProtocol

instance CurlInfo CurlinfoProtocol where
  type CurlInfoResult CurlinfoProtocol = CLong
  curlInfo _ = CURLINFO_PROTOCOL
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoScheme = CurlinfoScheme

instance CurlInfo CurlinfoScheme where
  type CurlInfoResult CurlinfoScheme = Ptr CChar
  curlInfo _ = CURLINFO_SCHEME
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_string handle (curlInfo opt)

data CurlinfoTotalTimeT = CurlinfoTotalTimeT

instance CurlInfo CurlinfoTotalTimeT where
  type CurlInfoResult CurlinfoTotalTimeT = CLong
  curlInfo _ = CURLINFO_TOTAL_TIME_T
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_off_t handle (curlInfo opt)

data CurlinfoNamelookupTimeT = CurlinfoNamelookupTimeT

instance CurlInfo CurlinfoNamelookupTimeT where
  type CurlInfoResult CurlinfoNamelookupTimeT = CLong
  curlInfo _ = CURLINFO_NAMELOOKUP_TIME_T
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_off_t handle (curlInfo opt)

data CurlinfoConnectTimeT = CurlinfoConnectTimeT

instance CurlInfo CurlinfoConnectTimeT where
  type CurlInfoResult CurlinfoConnectTimeT = CLong
  curlInfo _ = CURLINFO_CONNECT_TIME_T
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_off_t handle (curlInfo opt)

data CurlinfoPretransferTimeT = CurlinfoPretransferTimeT

instance CurlInfo CurlinfoPretransferTimeT where
  type CurlInfoResult CurlinfoPretransferTimeT = CLong
  curlInfo _ = CURLINFO_PRETRANSFER_TIME_T
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_off_t handle (curlInfo opt)

data CurlinfoStarttransferTimeT = CurlinfoStarttransferTimeT

instance CurlInfo CurlinfoStarttransferTimeT where
  type CurlInfoResult CurlinfoStarttransferTimeT = CLong
  curlInfo _ = CURLINFO_STARTTRANSFER_TIME_T
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_off_t handle (curlInfo opt)

data CurlinfoRedirectTimeT = CurlinfoRedirectTimeT

instance CurlInfo CurlinfoRedirectTimeT where
  type CurlInfoResult CurlinfoRedirectTimeT = CLong
  curlInfo _ = CURLINFO_REDIRECT_TIME_T
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_off_t handle (curlInfo opt)

data CurlinfoAppconnectTimeT = CurlinfoAppconnectTimeT

instance CurlInfo CurlinfoAppconnectTimeT where
  type CurlInfoResult CurlinfoAppconnectTimeT = CLong
  curlInfo _ = CURLINFO_APPCONNECT_TIME_T
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_off_t handle (curlInfo opt)

data CurlinfoRetryAfter = CurlinfoRetryAfter

instance CurlInfo CurlinfoRetryAfter where
  type CurlInfoResult CurlinfoRetryAfter = CLong
  curlInfo _ = CURLINFO_RETRY_AFTER
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_off_t handle (curlInfo opt)

data CurlinfoEffectiveMethod = CurlinfoEffectiveMethod

instance CurlInfo CurlinfoEffectiveMethod where
  type CurlInfoResult CurlinfoEffectiveMethod = Ptr CChar
  curlInfo _ = CURLINFO_EFFECTIVE_METHOD
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_string handle (curlInfo opt)

data CurlinfoProxyError = CurlinfoProxyError

instance CurlInfo CurlinfoProxyError where
  type CurlInfoResult CurlinfoProxyError = CLong
  curlInfo _ = CURLINFO_PROXY_ERROR
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoReferer = CurlinfoReferer

instance CurlInfo CurlinfoReferer where
  type CurlInfoResult CurlinfoReferer = Ptr CChar
  curlInfo _ = CURLINFO_REFERER
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_string handle (curlInfo opt)

data CurlinfoCainfo = CurlinfoCainfo

instance CurlInfo CurlinfoCainfo where
  type CurlInfoResult CurlinfoCainfo = Ptr CChar
  curlInfo _ = CURLINFO_CAINFO
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_string handle (curlInfo opt)

data CurlinfoCapath = CurlinfoCapath

instance CurlInfo CurlinfoCapath where
  type CurlInfoResult CurlinfoCapath = Ptr CChar
  curlInfo _ = CURLINFO_CAPATH
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_string handle (curlInfo opt)

data CurlinfoXferId = CurlinfoXferId

instance CurlInfo CurlinfoXferId where
  type CurlInfoResult CurlinfoXferId = CLong
  curlInfo _ = CURLINFO_XFER_ID
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_off_t handle (curlInfo opt)

data CurlinfoConnId = CurlinfoConnId

instance CurlInfo CurlinfoConnId where
  type CurlInfoResult CurlinfoConnId = CLong
  curlInfo _ = CURLINFO_CONN_ID
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_off_t handle (curlInfo opt)

data CurlinfoQueueTimeT = CurlinfoQueueTimeT

instance CurlInfo CurlinfoQueueTimeT where
  type CurlInfoResult CurlinfoQueueTimeT = CLong
  curlInfo _ = CURLINFO_QUEUE_TIME_T
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_off_t handle (curlInfo opt)

data CurlinfoUsedProxy = CurlinfoUsedProxy

instance CurlInfo CurlinfoUsedProxy where
  type CurlInfoResult CurlinfoUsedProxy = CLong
  curlInfo _ = CURLINFO_USED_PROXY
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoPosttransferTimeT = CurlinfoPosttransferTimeT

instance CurlInfo CurlinfoPosttransferTimeT where
  type CurlInfoResult CurlinfoPosttransferTimeT = CLong
  curlInfo _ = CURLINFO_POSTTRANSFER_TIME_T
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_off_t handle (curlInfo opt)

data CurlinfoEarlydataSentT = CurlinfoEarlydataSentT

instance CurlInfo CurlinfoEarlydataSentT where
  type CurlInfoResult CurlinfoEarlydataSentT = CLong
  curlInfo _ = CURLINFO_EARLYDATA_SENT_T
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_off_t handle (curlInfo opt)

data CurlinfoHttpauthUsed = CurlinfoHttpauthUsed

instance CurlInfo CurlinfoHttpauthUsed where
  type CurlInfoResult CurlinfoHttpauthUsed = CLong
  curlInfo _ = CURLINFO_HTTPAUTH_USED
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

data CurlinfoProxyauthUsed = CurlinfoProxyauthUsed

instance CurlInfo CurlinfoProxyauthUsed where
  type CurlInfoResult CurlinfoProxyauthUsed = CLong
  curlInfo _ = CURLINFO_PROXYAUTH_USED
  curlGetInfo opt handle = Easy.GetInfo.curl_easy_getinfo_long handle (curlInfo opt)

