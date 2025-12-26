{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE DataKinds #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Generated.Curl.Easy.SetOpt.Instances.Safe where

import Data.Void
import Generated.Curl.Easy.SetOpt.Class
import Generated.Curl.Curl
import qualified Generated.Curl.Easy.SetOpt.Safe as SetOpt
import Foreign.C.Types
import Foreign.Ptr

data CurloptWritedata = CurloptWritedata

instance CurlOption CurloptWritedata where
  type CurlOptionArgument CurloptWritedata = Ptr Void
  curlOption _ = CURLOPT_WRITEDATA
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptUrl = CurloptUrl

instance CurlOption CurloptUrl where
  type CurlOptionArgument CurloptUrl = Ptr Void
  curlOption _ = CURLOPT_URL
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptPort = CurloptPort

instance CurlOption CurloptPort where
  type CurlOptionArgument CurloptPort = CLong
  curlOption _ = CURLOPT_PORT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptProxy = CurloptProxy

instance CurlOption CurloptProxy where
  type CurlOptionArgument CurloptProxy = Ptr Void
  curlOption _ = CURLOPT_PROXY
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptUserpwd = CurloptUserpwd

instance CurlOption CurloptUserpwd where
  type CurlOptionArgument CurloptUserpwd = Ptr Void
  curlOption _ = CURLOPT_USERPWD
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptProxyuserpwd = CurloptProxyuserpwd

instance CurlOption CurloptProxyuserpwd where
  type CurlOptionArgument CurloptProxyuserpwd = Ptr Void
  curlOption _ = CURLOPT_PROXYUSERPWD
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptRange = CurloptRange

instance CurlOption CurloptRange where
  type CurlOptionArgument CurloptRange = Ptr Void
  curlOption _ = CURLOPT_RANGE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptReaddata = CurloptReaddata

instance CurlOption CurloptReaddata where
  type CurlOptionArgument CurloptReaddata = Ptr Void
  curlOption _ = CURLOPT_READDATA
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptErrorbuffer = CurloptErrorbuffer

instance CurlOption CurloptErrorbuffer where
  type CurlOptionArgument CurloptErrorbuffer = Ptr Void
  curlOption _ = CURLOPT_ERRORBUFFER
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptWritefunction = CurloptWritefunction

instance CurlOption CurloptWritefunction where
  type CurlOptionArgument CurloptWritefunction = Ptr Void
  curlOption _ = CURLOPT_WRITEFUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptReadfunction = CurloptReadfunction

instance CurlOption CurloptReadfunction where
  type CurlOptionArgument CurloptReadfunction = Ptr Void
  curlOption _ = CURLOPT_READFUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptTimeout = CurloptTimeout

instance CurlOption CurloptTimeout where
  type CurlOptionArgument CurloptTimeout = CLong
  curlOption _ = CURLOPT_TIMEOUT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptInfilesize = CurloptInfilesize

instance CurlOption CurloptInfilesize where
  type CurlOptionArgument CurloptInfilesize = CLong
  curlOption _ = CURLOPT_INFILESIZE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptPostfields = CurloptPostfields

instance CurlOption CurloptPostfields where
  type CurlOptionArgument CurloptPostfields = Ptr Void
  curlOption _ = CURLOPT_POSTFIELDS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptReferer = CurloptReferer

instance CurlOption CurloptReferer where
  type CurlOptionArgument CurloptReferer = Ptr Void
  curlOption _ = CURLOPT_REFERER
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptFtpport = CurloptFtpport

instance CurlOption CurloptFtpport where
  type CurlOptionArgument CurloptFtpport = Ptr Void
  curlOption _ = CURLOPT_FTPPORT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptUseragent = CurloptUseragent

instance CurlOption CurloptUseragent where
  type CurlOptionArgument CurloptUseragent = Ptr Void
  curlOption _ = CURLOPT_USERAGENT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptLowSpeedLimit = CurloptLowSpeedLimit

instance CurlOption CurloptLowSpeedLimit where
  type CurlOptionArgument CurloptLowSpeedLimit = CLong
  curlOption _ = CURLOPT_LOW_SPEED_LIMIT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptLowSpeedTime = CurloptLowSpeedTime

instance CurlOption CurloptLowSpeedTime where
  type CurlOptionArgument CurloptLowSpeedTime = CLong
  curlOption _ = CURLOPT_LOW_SPEED_TIME
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptResumeFrom = CurloptResumeFrom

instance CurlOption CurloptResumeFrom where
  type CurlOptionArgument CurloptResumeFrom = CLong
  curlOption _ = CURLOPT_RESUME_FROM
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptCookie = CurloptCookie

instance CurlOption CurloptCookie where
  type CurlOptionArgument CurloptCookie = Ptr Void
  curlOption _ = CURLOPT_COOKIE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptHttpheader = CurloptHttpheader

instance CurlOption CurloptHttpheader where
  type CurlOptionArgument CurloptHttpheader = Ptr Void
  curlOption _ = CURLOPT_HTTPHEADER
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptHttppost = CurloptHttppost

instance CurlOption CurloptHttppost where
  type CurlOptionArgument CurloptHttppost = Ptr Void
  curlOption _ = CURLOPT_HTTPPOST
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSslcert = CurloptSslcert

instance CurlOption CurloptSslcert where
  type CurlOptionArgument CurloptSslcert = Ptr Void
  curlOption _ = CURLOPT_SSLCERT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptKeypasswd = CurloptKeypasswd

instance CurlOption CurloptKeypasswd where
  type CurlOptionArgument CurloptKeypasswd = Ptr Void
  curlOption _ = CURLOPT_KEYPASSWD
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptCrlf = CurloptCrlf

instance CurlOption CurloptCrlf where
  type CurlOptionArgument CurloptCrlf = CLong
  curlOption _ = CURLOPT_CRLF
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptQuote = CurloptQuote

instance CurlOption CurloptQuote where
  type CurlOptionArgument CurloptQuote = Ptr Void
  curlOption _ = CURLOPT_QUOTE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptHeaderdata = CurloptHeaderdata

instance CurlOption CurloptHeaderdata where
  type CurlOptionArgument CurloptHeaderdata = Ptr Void
  curlOption _ = CURLOPT_HEADERDATA
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptCookiefile = CurloptCookiefile

instance CurlOption CurloptCookiefile where
  type CurlOptionArgument CurloptCookiefile = Ptr Void
  curlOption _ = CURLOPT_COOKIEFILE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSslversion = CurloptSslversion

instance CurlOption CurloptSslversion where
  type CurlOptionArgument CurloptSslversion = CLong
  curlOption _ = CURLOPT_SSLVERSION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptTimecondition = CurloptTimecondition

instance CurlOption CurloptTimecondition where
  type CurlOptionArgument CurloptTimecondition = CLong
  curlOption _ = CURLOPT_TIMECONDITION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptTimevalue = CurloptTimevalue

instance CurlOption CurloptTimevalue where
  type CurlOptionArgument CurloptTimevalue = CLong
  curlOption _ = CURLOPT_TIMEVALUE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptCustomrequest = CurloptCustomrequest

instance CurlOption CurloptCustomrequest where
  type CurlOptionArgument CurloptCustomrequest = Ptr Void
  curlOption _ = CURLOPT_CUSTOMREQUEST
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptStderr = CurloptStderr

instance CurlOption CurloptStderr where
  type CurlOptionArgument CurloptStderr = Ptr Void
  curlOption _ = CURLOPT_STDERR
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptPostquote = CurloptPostquote

instance CurlOption CurloptPostquote where
  type CurlOptionArgument CurloptPostquote = Ptr Void
  curlOption _ = CURLOPT_POSTQUOTE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptVerbose = CurloptVerbose

instance CurlOption CurloptVerbose where
  type CurlOptionArgument CurloptVerbose = CLong
  curlOption _ = CURLOPT_VERBOSE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptHeader = CurloptHeader

instance CurlOption CurloptHeader where
  type CurlOptionArgument CurloptHeader = CLong
  curlOption _ = CURLOPT_HEADER
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptNoprogress = CurloptNoprogress

instance CurlOption CurloptNoprogress where
  type CurlOptionArgument CurloptNoprogress = CLong
  curlOption _ = CURLOPT_NOPROGRESS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptNobody = CurloptNobody

instance CurlOption CurloptNobody where
  type CurlOptionArgument CurloptNobody = CLong
  curlOption _ = CURLOPT_NOBODY
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptFailonerror = CurloptFailonerror

instance CurlOption CurloptFailonerror where
  type CurlOptionArgument CurloptFailonerror = CLong
  curlOption _ = CURLOPT_FAILONERROR
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptUpload = CurloptUpload

instance CurlOption CurloptUpload where
  type CurlOptionArgument CurloptUpload = CLong
  curlOption _ = CURLOPT_UPLOAD
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptPost = CurloptPost

instance CurlOption CurloptPost where
  type CurlOptionArgument CurloptPost = CLong
  curlOption _ = CURLOPT_POST
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptDirlistonly = CurloptDirlistonly

instance CurlOption CurloptDirlistonly where
  type CurlOptionArgument CurloptDirlistonly = CLong
  curlOption _ = CURLOPT_DIRLISTONLY
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptAppend = CurloptAppend

instance CurlOption CurloptAppend where
  type CurlOptionArgument CurloptAppend = CLong
  curlOption _ = CURLOPT_APPEND
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptNetrc = CurloptNetrc

instance CurlOption CurloptNetrc where
  type CurlOptionArgument CurloptNetrc = CLong
  curlOption _ = CURLOPT_NETRC
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptFollowlocation = CurloptFollowlocation

instance CurlOption CurloptFollowlocation where
  type CurlOptionArgument CurloptFollowlocation = CLong
  curlOption _ = CURLOPT_FOLLOWLOCATION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptTransfertext = CurloptTransfertext

instance CurlOption CurloptTransfertext where
  type CurlOptionArgument CurloptTransfertext = CLong
  curlOption _ = CURLOPT_TRANSFERTEXT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptPut = CurloptPut

instance CurlOption CurloptPut where
  type CurlOptionArgument CurloptPut = CLong
  curlOption _ = CURLOPT_PUT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptProgressfunction = CurloptProgressfunction

instance CurlOption CurloptProgressfunction where
  type CurlOptionArgument CurloptProgressfunction = Ptr Void
  curlOption _ = CURLOPT_PROGRESSFUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptXferinfodata = CurloptXferinfodata

instance CurlOption CurloptXferinfodata where
  type CurlOptionArgument CurloptXferinfodata = Ptr Void
  curlOption _ = CURLOPT_XFERINFODATA
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptAutoreferer = CurloptAutoreferer

instance CurlOption CurloptAutoreferer where
  type CurlOptionArgument CurloptAutoreferer = CLong
  curlOption _ = CURLOPT_AUTOREFERER
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptProxyport = CurloptProxyport

instance CurlOption CurloptProxyport where
  type CurlOptionArgument CurloptProxyport = CLong
  curlOption _ = CURLOPT_PROXYPORT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptPostfieldsize = CurloptPostfieldsize

instance CurlOption CurloptPostfieldsize where
  type CurlOptionArgument CurloptPostfieldsize = CLong
  curlOption _ = CURLOPT_POSTFIELDSIZE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptHttpproxytunnel = CurloptHttpproxytunnel

instance CurlOption CurloptHttpproxytunnel where
  type CurlOptionArgument CurloptHttpproxytunnel = CLong
  curlOption _ = CURLOPT_HTTPPROXYTUNNEL
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptInterface = CurloptInterface

instance CurlOption CurloptInterface where
  type CurlOptionArgument CurloptInterface = Ptr Void
  curlOption _ = CURLOPT_INTERFACE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptKrblevel = CurloptKrblevel

instance CurlOption CurloptKrblevel where
  type CurlOptionArgument CurloptKrblevel = Ptr Void
  curlOption _ = CURLOPT_KRBLEVEL
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSslVerifypeer = CurloptSslVerifypeer

instance CurlOption CurloptSslVerifypeer where
  type CurlOptionArgument CurloptSslVerifypeer = CLong
  curlOption _ = CURLOPT_SSL_VERIFYPEER
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptCainfo = CurloptCainfo

instance CurlOption CurloptCainfo where
  type CurlOptionArgument CurloptCainfo = Ptr Void
  curlOption _ = CURLOPT_CAINFO
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptMaxredirs = CurloptMaxredirs

instance CurlOption CurloptMaxredirs where
  type CurlOptionArgument CurloptMaxredirs = CLong
  curlOption _ = CURLOPT_MAXREDIRS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptFiletime = CurloptFiletime

instance CurlOption CurloptFiletime where
  type CurlOptionArgument CurloptFiletime = CLong
  curlOption _ = CURLOPT_FILETIME
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptTelnetoptions = CurloptTelnetoptions

instance CurlOption CurloptTelnetoptions where
  type CurlOptionArgument CurloptTelnetoptions = Ptr Void
  curlOption _ = CURLOPT_TELNETOPTIONS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptMaxconnects = CurloptMaxconnects

instance CurlOption CurloptMaxconnects where
  type CurlOptionArgument CurloptMaxconnects = CLong
  curlOption _ = CURLOPT_MAXCONNECTS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptFreshConnect = CurloptFreshConnect

instance CurlOption CurloptFreshConnect where
  type CurlOptionArgument CurloptFreshConnect = CLong
  curlOption _ = CURLOPT_FRESH_CONNECT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptForbidReuse = CurloptForbidReuse

instance CurlOption CurloptForbidReuse where
  type CurlOptionArgument CurloptForbidReuse = CLong
  curlOption _ = CURLOPT_FORBID_REUSE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptRandomFile = CurloptRandomFile

instance CurlOption CurloptRandomFile where
  type CurlOptionArgument CurloptRandomFile = Ptr Void
  curlOption _ = CURLOPT_RANDOM_FILE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptEgdsocket = CurloptEgdsocket

instance CurlOption CurloptEgdsocket where
  type CurlOptionArgument CurloptEgdsocket = Ptr Void
  curlOption _ = CURLOPT_EGDSOCKET
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptConnecttimeout = CurloptConnecttimeout

instance CurlOption CurloptConnecttimeout where
  type CurlOptionArgument CurloptConnecttimeout = CLong
  curlOption _ = CURLOPT_CONNECTTIMEOUT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptHeaderfunction = CurloptHeaderfunction

instance CurlOption CurloptHeaderfunction where
  type CurlOptionArgument CurloptHeaderfunction = Ptr Void
  curlOption _ = CURLOPT_HEADERFUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptHttpget = CurloptHttpget

instance CurlOption CurloptHttpget where
  type CurlOptionArgument CurloptHttpget = CLong
  curlOption _ = CURLOPT_HTTPGET
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptSslVerifyhost = CurloptSslVerifyhost

instance CurlOption CurloptSslVerifyhost where
  type CurlOptionArgument CurloptSslVerifyhost = CLong
  curlOption _ = CURLOPT_SSL_VERIFYHOST
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptCookiejar = CurloptCookiejar

instance CurlOption CurloptCookiejar where
  type CurlOptionArgument CurloptCookiejar = Ptr Void
  curlOption _ = CURLOPT_COOKIEJAR
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSslCipherList = CurloptSslCipherList

instance CurlOption CurloptSslCipherList where
  type CurlOptionArgument CurloptSslCipherList = Ptr Void
  curlOption _ = CURLOPT_SSL_CIPHER_LIST
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptHttpVersion = CurloptHttpVersion

instance CurlOption CurloptHttpVersion where
  type CurlOptionArgument CurloptHttpVersion = CLong
  curlOption _ = CURLOPT_HTTP_VERSION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptFtpUseEpsv = CurloptFtpUseEpsv

instance CurlOption CurloptFtpUseEpsv where
  type CurlOptionArgument CurloptFtpUseEpsv = CLong
  curlOption _ = CURLOPT_FTP_USE_EPSV
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptSslcerttype = CurloptSslcerttype

instance CurlOption CurloptSslcerttype where
  type CurlOptionArgument CurloptSslcerttype = Ptr Void
  curlOption _ = CURLOPT_SSLCERTTYPE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSslkey = CurloptSslkey

instance CurlOption CurloptSslkey where
  type CurlOptionArgument CurloptSslkey = Ptr Void
  curlOption _ = CURLOPT_SSLKEY
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSslkeytype = CurloptSslkeytype

instance CurlOption CurloptSslkeytype where
  type CurlOptionArgument CurloptSslkeytype = Ptr Void
  curlOption _ = CURLOPT_SSLKEYTYPE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSslengine = CurloptSslengine

instance CurlOption CurloptSslengine where
  type CurlOptionArgument CurloptSslengine = Ptr Void
  curlOption _ = CURLOPT_SSLENGINE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSslengineDefault = CurloptSslengineDefault

instance CurlOption CurloptSslengineDefault where
  type CurlOptionArgument CurloptSslengineDefault = CLong
  curlOption _ = CURLOPT_SSLENGINE_DEFAULT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptDnsUseGlobalCache = CurloptDnsUseGlobalCache

instance CurlOption CurloptDnsUseGlobalCache where
  type CurlOptionArgument CurloptDnsUseGlobalCache = CLong
  curlOption _ = CURLOPT_DNS_USE_GLOBAL_CACHE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptDnsCacheTimeout = CurloptDnsCacheTimeout

instance CurlOption CurloptDnsCacheTimeout where
  type CurlOptionArgument CurloptDnsCacheTimeout = CLong
  curlOption _ = CURLOPT_DNS_CACHE_TIMEOUT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptPrequote = CurloptPrequote

instance CurlOption CurloptPrequote where
  type CurlOptionArgument CurloptPrequote = Ptr Void
  curlOption _ = CURLOPT_PREQUOTE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptDebugfunction = CurloptDebugfunction

instance CurlOption CurloptDebugfunction where
  type CurlOptionArgument CurloptDebugfunction = Ptr Void
  curlOption _ = CURLOPT_DEBUGFUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptDebugdata = CurloptDebugdata

instance CurlOption CurloptDebugdata where
  type CurlOptionArgument CurloptDebugdata = Ptr Void
  curlOption _ = CURLOPT_DEBUGDATA
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptCookiesession = CurloptCookiesession

instance CurlOption CurloptCookiesession where
  type CurlOptionArgument CurloptCookiesession = CLong
  curlOption _ = CURLOPT_COOKIESESSION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptCapath = CurloptCapath

instance CurlOption CurloptCapath where
  type CurlOptionArgument CurloptCapath = Ptr Void
  curlOption _ = CURLOPT_CAPATH
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptBuffersize = CurloptBuffersize

instance CurlOption CurloptBuffersize where
  type CurlOptionArgument CurloptBuffersize = CLong
  curlOption _ = CURLOPT_BUFFERSIZE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptNosignal = CurloptNosignal

instance CurlOption CurloptNosignal where
  type CurlOptionArgument CurloptNosignal = CLong
  curlOption _ = CURLOPT_NOSIGNAL
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptShare = CurloptShare

instance CurlOption CurloptShare where
  type CurlOptionArgument CurloptShare = Ptr Void
  curlOption _ = CURLOPT_SHARE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptProxytype = CurloptProxytype

instance CurlOption CurloptProxytype where
  type CurlOptionArgument CurloptProxytype = CLong
  curlOption _ = CURLOPT_PROXYTYPE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptAcceptEncoding = CurloptAcceptEncoding

instance CurlOption CurloptAcceptEncoding where
  type CurlOptionArgument CurloptAcceptEncoding = Ptr Void
  curlOption _ = CURLOPT_ACCEPT_ENCODING
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptPrivate = CurloptPrivate

instance CurlOption CurloptPrivate where
  type CurlOptionArgument CurloptPrivate = Ptr Void
  curlOption _ = CURLOPT_PRIVATE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptHttp200aliases = CurloptHttp200aliases

instance CurlOption CurloptHttp200aliases where
  type CurlOptionArgument CurloptHttp200aliases = Ptr Void
  curlOption _ = CURLOPT_HTTP200ALIASES
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptUnrestrictedAuth = CurloptUnrestrictedAuth

instance CurlOption CurloptUnrestrictedAuth where
  type CurlOptionArgument CurloptUnrestrictedAuth = CLong
  curlOption _ = CURLOPT_UNRESTRICTED_AUTH
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptFtpUseEprt = CurloptFtpUseEprt

instance CurlOption CurloptFtpUseEprt where
  type CurlOptionArgument CurloptFtpUseEprt = CLong
  curlOption _ = CURLOPT_FTP_USE_EPRT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptHttpauth = CurloptHttpauth

instance CurlOption CurloptHttpauth where
  type CurlOptionArgument CurloptHttpauth = CLong
  curlOption _ = CURLOPT_HTTPAUTH
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptSslCtxFunction = CurloptSslCtxFunction

instance CurlOption CurloptSslCtxFunction where
  type CurlOptionArgument CurloptSslCtxFunction = Ptr Void
  curlOption _ = CURLOPT_SSL_CTX_FUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSslCtxData = CurloptSslCtxData

instance CurlOption CurloptSslCtxData where
  type CurlOptionArgument CurloptSslCtxData = Ptr Void
  curlOption _ = CURLOPT_SSL_CTX_DATA
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptFtpCreateMissingDirs = CurloptFtpCreateMissingDirs

instance CurlOption CurloptFtpCreateMissingDirs where
  type CurlOptionArgument CurloptFtpCreateMissingDirs = CLong
  curlOption _ = CURLOPT_FTP_CREATE_MISSING_DIRS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptProxyauth = CurloptProxyauth

instance CurlOption CurloptProxyauth where
  type CurlOptionArgument CurloptProxyauth = CLong
  curlOption _ = CURLOPT_PROXYAUTH
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptServerResponseTimeout = CurloptServerResponseTimeout

instance CurlOption CurloptServerResponseTimeout where
  type CurlOptionArgument CurloptServerResponseTimeout = CLong
  curlOption _ = CURLOPT_SERVER_RESPONSE_TIMEOUT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptIpresolve = CurloptIpresolve

instance CurlOption CurloptIpresolve where
  type CurlOptionArgument CurloptIpresolve = CLong
  curlOption _ = CURLOPT_IPRESOLVE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptMaxfilesize = CurloptMaxfilesize

instance CurlOption CurloptMaxfilesize where
  type CurlOptionArgument CurloptMaxfilesize = CLong
  curlOption _ = CURLOPT_MAXFILESIZE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptInfilesizeLarge = CurloptInfilesizeLarge

instance CurlOption CurloptInfilesizeLarge where
  type CurlOptionArgument CurloptInfilesizeLarge = Curl_off_t
  curlOption _ = CURLOPT_INFILESIZE_LARGE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_off_t handle (curlOption opt) arg

data CurloptResumeFromLarge = CurloptResumeFromLarge

instance CurlOption CurloptResumeFromLarge where
  type CurlOptionArgument CurloptResumeFromLarge = Curl_off_t
  curlOption _ = CURLOPT_RESUME_FROM_LARGE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_off_t handle (curlOption opt) arg

data CurloptMaxfilesizeLarge = CurloptMaxfilesizeLarge

instance CurlOption CurloptMaxfilesizeLarge where
  type CurlOptionArgument CurloptMaxfilesizeLarge = Curl_off_t
  curlOption _ = CURLOPT_MAXFILESIZE_LARGE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_off_t handle (curlOption opt) arg

data CurloptNetrcFile = CurloptNetrcFile

instance CurlOption CurloptNetrcFile where
  type CurlOptionArgument CurloptNetrcFile = Ptr Void
  curlOption _ = CURLOPT_NETRC_FILE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptUseSsl = CurloptUseSsl

instance CurlOption CurloptUseSsl where
  type CurlOptionArgument CurloptUseSsl = CLong
  curlOption _ = CURLOPT_USE_SSL
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptPostfieldsizeLarge = CurloptPostfieldsizeLarge

instance CurlOption CurloptPostfieldsizeLarge where
  type CurlOptionArgument CurloptPostfieldsizeLarge = Curl_off_t
  curlOption _ = CURLOPT_POSTFIELDSIZE_LARGE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_off_t handle (curlOption opt) arg

data CurloptTcpNodelay = CurloptTcpNodelay

instance CurlOption CurloptTcpNodelay where
  type CurlOptionArgument CurloptTcpNodelay = CLong
  curlOption _ = CURLOPT_TCP_NODELAY
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptFtpsslauth = CurloptFtpsslauth

instance CurlOption CurloptFtpsslauth where
  type CurlOptionArgument CurloptFtpsslauth = CLong
  curlOption _ = CURLOPT_FTPSSLAUTH
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptIoctlfunction = CurloptIoctlfunction

instance CurlOption CurloptIoctlfunction where
  type CurlOptionArgument CurloptIoctlfunction = Ptr Void
  curlOption _ = CURLOPT_IOCTLFUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptIoctldata = CurloptIoctldata

instance CurlOption CurloptIoctldata where
  type CurlOptionArgument CurloptIoctldata = Ptr Void
  curlOption _ = CURLOPT_IOCTLDATA
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptFtpAccount = CurloptFtpAccount

instance CurlOption CurloptFtpAccount where
  type CurlOptionArgument CurloptFtpAccount = Ptr Void
  curlOption _ = CURLOPT_FTP_ACCOUNT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptCookielist = CurloptCookielist

instance CurlOption CurloptCookielist where
  type CurlOptionArgument CurloptCookielist = Ptr Void
  curlOption _ = CURLOPT_COOKIELIST
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptIgnoreContentLength = CurloptIgnoreContentLength

instance CurlOption CurloptIgnoreContentLength where
  type CurlOptionArgument CurloptIgnoreContentLength = CLong
  curlOption _ = CURLOPT_IGNORE_CONTENT_LENGTH
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptFtpSkipPasvIp = CurloptFtpSkipPasvIp

instance CurlOption CurloptFtpSkipPasvIp where
  type CurlOptionArgument CurloptFtpSkipPasvIp = CLong
  curlOption _ = CURLOPT_FTP_SKIP_PASV_IP
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptFtpFilemethod = CurloptFtpFilemethod

instance CurlOption CurloptFtpFilemethod where
  type CurlOptionArgument CurloptFtpFilemethod = CLong
  curlOption _ = CURLOPT_FTP_FILEMETHOD
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptLocalport = CurloptLocalport

instance CurlOption CurloptLocalport where
  type CurlOptionArgument CurloptLocalport = CLong
  curlOption _ = CURLOPT_LOCALPORT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptLocalportrange = CurloptLocalportrange

instance CurlOption CurloptLocalportrange where
  type CurlOptionArgument CurloptLocalportrange = CLong
  curlOption _ = CURLOPT_LOCALPORTRANGE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptConnectOnly = CurloptConnectOnly

instance CurlOption CurloptConnectOnly where
  type CurlOptionArgument CurloptConnectOnly = CLong
  curlOption _ = CURLOPT_CONNECT_ONLY
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptConvFromNetworkFunction = CurloptConvFromNetworkFunction

instance CurlOption CurloptConvFromNetworkFunction where
  type CurlOptionArgument CurloptConvFromNetworkFunction = Ptr Void
  curlOption _ = CURLOPT_CONV_FROM_NETWORK_FUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptConvToNetworkFunction = CurloptConvToNetworkFunction

instance CurlOption CurloptConvToNetworkFunction where
  type CurlOptionArgument CurloptConvToNetworkFunction = Ptr Void
  curlOption _ = CURLOPT_CONV_TO_NETWORK_FUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptConvFromUtf8Function = CurloptConvFromUtf8Function

instance CurlOption CurloptConvFromUtf8Function where
  type CurlOptionArgument CurloptConvFromUtf8Function = Ptr Void
  curlOption _ = CURLOPT_CONV_FROM_UTF8_FUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptMaxSendSpeedLarge = CurloptMaxSendSpeedLarge

instance CurlOption CurloptMaxSendSpeedLarge where
  type CurlOptionArgument CurloptMaxSendSpeedLarge = Curl_off_t
  curlOption _ = CURLOPT_MAX_SEND_SPEED_LARGE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_off_t handle (curlOption opt) arg

data CurloptMaxRecvSpeedLarge = CurloptMaxRecvSpeedLarge

instance CurlOption CurloptMaxRecvSpeedLarge where
  type CurlOptionArgument CurloptMaxRecvSpeedLarge = Curl_off_t
  curlOption _ = CURLOPT_MAX_RECV_SPEED_LARGE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_off_t handle (curlOption opt) arg

data CurloptFtpAlternativeToUser = CurloptFtpAlternativeToUser

instance CurlOption CurloptFtpAlternativeToUser where
  type CurlOptionArgument CurloptFtpAlternativeToUser = Ptr Void
  curlOption _ = CURLOPT_FTP_ALTERNATIVE_TO_USER
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSockoptfunction = CurloptSockoptfunction

instance CurlOption CurloptSockoptfunction where
  type CurlOptionArgument CurloptSockoptfunction = Ptr Void
  curlOption _ = CURLOPT_SOCKOPTFUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSockoptdata = CurloptSockoptdata

instance CurlOption CurloptSockoptdata where
  type CurlOptionArgument CurloptSockoptdata = Ptr Void
  curlOption _ = CURLOPT_SOCKOPTDATA
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSslSessionidCache = CurloptSslSessionidCache

instance CurlOption CurloptSslSessionidCache where
  type CurlOptionArgument CurloptSslSessionidCache = CLong
  curlOption _ = CURLOPT_SSL_SESSIONID_CACHE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptSshAuthTypes = CurloptSshAuthTypes

instance CurlOption CurloptSshAuthTypes where
  type CurlOptionArgument CurloptSshAuthTypes = CLong
  curlOption _ = CURLOPT_SSH_AUTH_TYPES
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptSshPublicKeyfile = CurloptSshPublicKeyfile

instance CurlOption CurloptSshPublicKeyfile where
  type CurlOptionArgument CurloptSshPublicKeyfile = Ptr Void
  curlOption _ = CURLOPT_SSH_PUBLIC_KEYFILE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSshPrivateKeyfile = CurloptSshPrivateKeyfile

instance CurlOption CurloptSshPrivateKeyfile where
  type CurlOptionArgument CurloptSshPrivateKeyfile = Ptr Void
  curlOption _ = CURLOPT_SSH_PRIVATE_KEYFILE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptFtpSslCcc = CurloptFtpSslCcc

instance CurlOption CurloptFtpSslCcc where
  type CurlOptionArgument CurloptFtpSslCcc = CLong
  curlOption _ = CURLOPT_FTP_SSL_CCC
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptTimeoutMs = CurloptTimeoutMs

instance CurlOption CurloptTimeoutMs where
  type CurlOptionArgument CurloptTimeoutMs = CLong
  curlOption _ = CURLOPT_TIMEOUT_MS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptConnecttimeoutMs = CurloptConnecttimeoutMs

instance CurlOption CurloptConnecttimeoutMs where
  type CurlOptionArgument CurloptConnecttimeoutMs = CLong
  curlOption _ = CURLOPT_CONNECTTIMEOUT_MS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptHttpTransferDecoding = CurloptHttpTransferDecoding

instance CurlOption CurloptHttpTransferDecoding where
  type CurlOptionArgument CurloptHttpTransferDecoding = CLong
  curlOption _ = CURLOPT_HTTP_TRANSFER_DECODING
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptHttpContentDecoding = CurloptHttpContentDecoding

instance CurlOption CurloptHttpContentDecoding where
  type CurlOptionArgument CurloptHttpContentDecoding = CLong
  curlOption _ = CURLOPT_HTTP_CONTENT_DECODING
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptNewFilePerms = CurloptNewFilePerms

instance CurlOption CurloptNewFilePerms where
  type CurlOptionArgument CurloptNewFilePerms = CLong
  curlOption _ = CURLOPT_NEW_FILE_PERMS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptNewDirectoryPerms = CurloptNewDirectoryPerms

instance CurlOption CurloptNewDirectoryPerms where
  type CurlOptionArgument CurloptNewDirectoryPerms = CLong
  curlOption _ = CURLOPT_NEW_DIRECTORY_PERMS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptPostredir = CurloptPostredir

instance CurlOption CurloptPostredir where
  type CurlOptionArgument CurloptPostredir = CLong
  curlOption _ = CURLOPT_POSTREDIR
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptSshHostPublicKeyMd5 = CurloptSshHostPublicKeyMd5

instance CurlOption CurloptSshHostPublicKeyMd5 where
  type CurlOptionArgument CurloptSshHostPublicKeyMd5 = Ptr Void
  curlOption _ = CURLOPT_SSH_HOST_PUBLIC_KEY_MD5
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptOpensocketfunction = CurloptOpensocketfunction

instance CurlOption CurloptOpensocketfunction where
  type CurlOptionArgument CurloptOpensocketfunction = Ptr Void
  curlOption _ = CURLOPT_OPENSOCKETFUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptOpensocketdata = CurloptOpensocketdata

instance CurlOption CurloptOpensocketdata where
  type CurlOptionArgument CurloptOpensocketdata = Ptr Void
  curlOption _ = CURLOPT_OPENSOCKETDATA
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptCopypostfields = CurloptCopypostfields

instance CurlOption CurloptCopypostfields where
  type CurlOptionArgument CurloptCopypostfields = Ptr Void
  curlOption _ = CURLOPT_COPYPOSTFIELDS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptProxyTransferMode = CurloptProxyTransferMode

instance CurlOption CurloptProxyTransferMode where
  type CurlOptionArgument CurloptProxyTransferMode = CLong
  curlOption _ = CURLOPT_PROXY_TRANSFER_MODE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptSeekfunction = CurloptSeekfunction

instance CurlOption CurloptSeekfunction where
  type CurlOptionArgument CurloptSeekfunction = Ptr Void
  curlOption _ = CURLOPT_SEEKFUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSeekdata = CurloptSeekdata

instance CurlOption CurloptSeekdata where
  type CurlOptionArgument CurloptSeekdata = Ptr Void
  curlOption _ = CURLOPT_SEEKDATA
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptCrlfile = CurloptCrlfile

instance CurlOption CurloptCrlfile where
  type CurlOptionArgument CurloptCrlfile = Ptr Void
  curlOption _ = CURLOPT_CRLFILE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptIssuercert = CurloptIssuercert

instance CurlOption CurloptIssuercert where
  type CurlOptionArgument CurloptIssuercert = Ptr Void
  curlOption _ = CURLOPT_ISSUERCERT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptAddressScope = CurloptAddressScope

instance CurlOption CurloptAddressScope where
  type CurlOptionArgument CurloptAddressScope = CLong
  curlOption _ = CURLOPT_ADDRESS_SCOPE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptCertinfo = CurloptCertinfo

instance CurlOption CurloptCertinfo where
  type CurlOptionArgument CurloptCertinfo = CLong
  curlOption _ = CURLOPT_CERTINFO
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptUsername = CurloptUsername

instance CurlOption CurloptUsername where
  type CurlOptionArgument CurloptUsername = Ptr Void
  curlOption _ = CURLOPT_USERNAME
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptPassword = CurloptPassword

instance CurlOption CurloptPassword where
  type CurlOptionArgument CurloptPassword = Ptr Void
  curlOption _ = CURLOPT_PASSWORD
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptProxyusername = CurloptProxyusername

instance CurlOption CurloptProxyusername where
  type CurlOptionArgument CurloptProxyusername = Ptr Void
  curlOption _ = CURLOPT_PROXYUSERNAME
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptProxypassword = CurloptProxypassword

instance CurlOption CurloptProxypassword where
  type CurlOptionArgument CurloptProxypassword = Ptr Void
  curlOption _ = CURLOPT_PROXYPASSWORD
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptNoproxy = CurloptNoproxy

instance CurlOption CurloptNoproxy where
  type CurlOptionArgument CurloptNoproxy = Ptr Void
  curlOption _ = CURLOPT_NOPROXY
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptTftpBlksize = CurloptTftpBlksize

instance CurlOption CurloptTftpBlksize where
  type CurlOptionArgument CurloptTftpBlksize = CLong
  curlOption _ = CURLOPT_TFTP_BLKSIZE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptSocks5GssapiService = CurloptSocks5GssapiService

instance CurlOption CurloptSocks5GssapiService where
  type CurlOptionArgument CurloptSocks5GssapiService = Ptr Void
  curlOption _ = CURLOPT_SOCKS5_GSSAPI_SERVICE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSocks5GssapiNec = CurloptSocks5GssapiNec

instance CurlOption CurloptSocks5GssapiNec where
  type CurlOptionArgument CurloptSocks5GssapiNec = CLong
  curlOption _ = CURLOPT_SOCKS5_GSSAPI_NEC
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptProtocols = CurloptProtocols

instance CurlOption CurloptProtocols where
  type CurlOptionArgument CurloptProtocols = CLong
  curlOption _ = CURLOPT_PROTOCOLS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptRedirProtocols = CurloptRedirProtocols

instance CurlOption CurloptRedirProtocols where
  type CurlOptionArgument CurloptRedirProtocols = CLong
  curlOption _ = CURLOPT_REDIR_PROTOCOLS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptSshKnownhosts = CurloptSshKnownhosts

instance CurlOption CurloptSshKnownhosts where
  type CurlOptionArgument CurloptSshKnownhosts = Ptr Void
  curlOption _ = CURLOPT_SSH_KNOWNHOSTS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSshKeyfunction = CurloptSshKeyfunction

instance CurlOption CurloptSshKeyfunction where
  type CurlOptionArgument CurloptSshKeyfunction = Ptr Void
  curlOption _ = CURLOPT_SSH_KEYFUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSshKeydata = CurloptSshKeydata

instance CurlOption CurloptSshKeydata where
  type CurlOptionArgument CurloptSshKeydata = Ptr Void
  curlOption _ = CURLOPT_SSH_KEYDATA
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptMailFrom = CurloptMailFrom

instance CurlOption CurloptMailFrom where
  type CurlOptionArgument CurloptMailFrom = Ptr Void
  curlOption _ = CURLOPT_MAIL_FROM
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptMailRcpt = CurloptMailRcpt

instance CurlOption CurloptMailRcpt where
  type CurlOptionArgument CurloptMailRcpt = Ptr Void
  curlOption _ = CURLOPT_MAIL_RCPT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptFtpUsePret = CurloptFtpUsePret

instance CurlOption CurloptFtpUsePret where
  type CurlOptionArgument CurloptFtpUsePret = CLong
  curlOption _ = CURLOPT_FTP_USE_PRET
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptRtspRequest = CurloptRtspRequest

instance CurlOption CurloptRtspRequest where
  type CurlOptionArgument CurloptRtspRequest = CLong
  curlOption _ = CURLOPT_RTSP_REQUEST
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptRtspSessionId = CurloptRtspSessionId

instance CurlOption CurloptRtspSessionId where
  type CurlOptionArgument CurloptRtspSessionId = Ptr Void
  curlOption _ = CURLOPT_RTSP_SESSION_ID
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptRtspStreamUri = CurloptRtspStreamUri

instance CurlOption CurloptRtspStreamUri where
  type CurlOptionArgument CurloptRtspStreamUri = Ptr Void
  curlOption _ = CURLOPT_RTSP_STREAM_URI
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptRtspTransport = CurloptRtspTransport

instance CurlOption CurloptRtspTransport where
  type CurlOptionArgument CurloptRtspTransport = Ptr Void
  curlOption _ = CURLOPT_RTSP_TRANSPORT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptRtspClientCseq = CurloptRtspClientCseq

instance CurlOption CurloptRtspClientCseq where
  type CurlOptionArgument CurloptRtspClientCseq = CLong
  curlOption _ = CURLOPT_RTSP_CLIENT_CSEQ
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptRtspServerCseq = CurloptRtspServerCseq

instance CurlOption CurloptRtspServerCseq where
  type CurlOptionArgument CurloptRtspServerCseq = CLong
  curlOption _ = CURLOPT_RTSP_SERVER_CSEQ
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptInterleavedata = CurloptInterleavedata

instance CurlOption CurloptInterleavedata where
  type CurlOptionArgument CurloptInterleavedata = Ptr Void
  curlOption _ = CURLOPT_INTERLEAVEDATA
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptInterleavefunction = CurloptInterleavefunction

instance CurlOption CurloptInterleavefunction where
  type CurlOptionArgument CurloptInterleavefunction = Ptr Void
  curlOption _ = CURLOPT_INTERLEAVEFUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptWildcardmatch = CurloptWildcardmatch

instance CurlOption CurloptWildcardmatch where
  type CurlOptionArgument CurloptWildcardmatch = CLong
  curlOption _ = CURLOPT_WILDCARDMATCH
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptChunkBgnFunction = CurloptChunkBgnFunction

instance CurlOption CurloptChunkBgnFunction where
  type CurlOptionArgument CurloptChunkBgnFunction = Ptr Void
  curlOption _ = CURLOPT_CHUNK_BGN_FUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptChunkEndFunction = CurloptChunkEndFunction

instance CurlOption CurloptChunkEndFunction where
  type CurlOptionArgument CurloptChunkEndFunction = Ptr Void
  curlOption _ = CURLOPT_CHUNK_END_FUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptFnmatchFunction = CurloptFnmatchFunction

instance CurlOption CurloptFnmatchFunction where
  type CurlOptionArgument CurloptFnmatchFunction = Ptr Void
  curlOption _ = CURLOPT_FNMATCH_FUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptChunkData = CurloptChunkData

instance CurlOption CurloptChunkData where
  type CurlOptionArgument CurloptChunkData = Ptr Void
  curlOption _ = CURLOPT_CHUNK_DATA
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptFnmatchData = CurloptFnmatchData

instance CurlOption CurloptFnmatchData where
  type CurlOptionArgument CurloptFnmatchData = Ptr Void
  curlOption _ = CURLOPT_FNMATCH_DATA
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptResolve = CurloptResolve

instance CurlOption CurloptResolve where
  type CurlOptionArgument CurloptResolve = Ptr Void
  curlOption _ = CURLOPT_RESOLVE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptTlsauthUsername = CurloptTlsauthUsername

instance CurlOption CurloptTlsauthUsername where
  type CurlOptionArgument CurloptTlsauthUsername = Ptr Void
  curlOption _ = CURLOPT_TLSAUTH_USERNAME
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptTlsauthPassword = CurloptTlsauthPassword

instance CurlOption CurloptTlsauthPassword where
  type CurlOptionArgument CurloptTlsauthPassword = Ptr Void
  curlOption _ = CURLOPT_TLSAUTH_PASSWORD
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptTlsauthType = CurloptTlsauthType

instance CurlOption CurloptTlsauthType where
  type CurlOptionArgument CurloptTlsauthType = Ptr Void
  curlOption _ = CURLOPT_TLSAUTH_TYPE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptTransferEncoding = CurloptTransferEncoding

instance CurlOption CurloptTransferEncoding where
  type CurlOptionArgument CurloptTransferEncoding = CLong
  curlOption _ = CURLOPT_TRANSFER_ENCODING
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptClosesocketfunction = CurloptClosesocketfunction

instance CurlOption CurloptClosesocketfunction where
  type CurlOptionArgument CurloptClosesocketfunction = Ptr Void
  curlOption _ = CURLOPT_CLOSESOCKETFUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptClosesocketdata = CurloptClosesocketdata

instance CurlOption CurloptClosesocketdata where
  type CurlOptionArgument CurloptClosesocketdata = Ptr Void
  curlOption _ = CURLOPT_CLOSESOCKETDATA
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptGssapiDelegation = CurloptGssapiDelegation

instance CurlOption CurloptGssapiDelegation where
  type CurlOptionArgument CurloptGssapiDelegation = CLong
  curlOption _ = CURLOPT_GSSAPI_DELEGATION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptDnsServers = CurloptDnsServers

instance CurlOption CurloptDnsServers where
  type CurlOptionArgument CurloptDnsServers = Ptr Void
  curlOption _ = CURLOPT_DNS_SERVERS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptAccepttimeoutMs = CurloptAccepttimeoutMs

instance CurlOption CurloptAccepttimeoutMs where
  type CurlOptionArgument CurloptAccepttimeoutMs = CLong
  curlOption _ = CURLOPT_ACCEPTTIMEOUT_MS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptTcpKeepalive = CurloptTcpKeepalive

instance CurlOption CurloptTcpKeepalive where
  type CurlOptionArgument CurloptTcpKeepalive = CLong
  curlOption _ = CURLOPT_TCP_KEEPALIVE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptTcpKeepidle = CurloptTcpKeepidle

instance CurlOption CurloptTcpKeepidle where
  type CurlOptionArgument CurloptTcpKeepidle = CLong
  curlOption _ = CURLOPT_TCP_KEEPIDLE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptTcpKeepintvl = CurloptTcpKeepintvl

instance CurlOption CurloptTcpKeepintvl where
  type CurlOptionArgument CurloptTcpKeepintvl = CLong
  curlOption _ = CURLOPT_TCP_KEEPINTVL
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptSslOptions = CurloptSslOptions

instance CurlOption CurloptSslOptions where
  type CurlOptionArgument CurloptSslOptions = CLong
  curlOption _ = CURLOPT_SSL_OPTIONS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptMailAuth = CurloptMailAuth

instance CurlOption CurloptMailAuth where
  type CurlOptionArgument CurloptMailAuth = Ptr Void
  curlOption _ = CURLOPT_MAIL_AUTH
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSaslIr = CurloptSaslIr

instance CurlOption CurloptSaslIr where
  type CurlOptionArgument CurloptSaslIr = CLong
  curlOption _ = CURLOPT_SASL_IR
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptXferinfofunction = CurloptXferinfofunction

instance CurlOption CurloptXferinfofunction where
  type CurlOptionArgument CurloptXferinfofunction = Ptr Void
  curlOption _ = CURLOPT_XFERINFOFUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptXoauth2Bearer = CurloptXoauth2Bearer

instance CurlOption CurloptXoauth2Bearer where
  type CurlOptionArgument CurloptXoauth2Bearer = Ptr Void
  curlOption _ = CURLOPT_XOAUTH2_BEARER
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptDnsInterface = CurloptDnsInterface

instance CurlOption CurloptDnsInterface where
  type CurlOptionArgument CurloptDnsInterface = Ptr Void
  curlOption _ = CURLOPT_DNS_INTERFACE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptDnsLocalIp4 = CurloptDnsLocalIp4

instance CurlOption CurloptDnsLocalIp4 where
  type CurlOptionArgument CurloptDnsLocalIp4 = Ptr Void
  curlOption _ = CURLOPT_DNS_LOCAL_IP4
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptDnsLocalIp6 = CurloptDnsLocalIp6

instance CurlOption CurloptDnsLocalIp6 where
  type CurlOptionArgument CurloptDnsLocalIp6 = Ptr Void
  curlOption _ = CURLOPT_DNS_LOCAL_IP6
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptLoginOptions = CurloptLoginOptions

instance CurlOption CurloptLoginOptions where
  type CurlOptionArgument CurloptLoginOptions = Ptr Void
  curlOption _ = CURLOPT_LOGIN_OPTIONS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSslEnableNpn = CurloptSslEnableNpn

instance CurlOption CurloptSslEnableNpn where
  type CurlOptionArgument CurloptSslEnableNpn = CLong
  curlOption _ = CURLOPT_SSL_ENABLE_NPN
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptSslEnableAlpn = CurloptSslEnableAlpn

instance CurlOption CurloptSslEnableAlpn where
  type CurlOptionArgument CurloptSslEnableAlpn = CLong
  curlOption _ = CURLOPT_SSL_ENABLE_ALPN
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptExpect100TimeoutMs = CurloptExpect100TimeoutMs

instance CurlOption CurloptExpect100TimeoutMs where
  type CurlOptionArgument CurloptExpect100TimeoutMs = CLong
  curlOption _ = CURLOPT_EXPECT_100_TIMEOUT_MS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptProxyheader = CurloptProxyheader

instance CurlOption CurloptProxyheader where
  type CurlOptionArgument CurloptProxyheader = Ptr Void
  curlOption _ = CURLOPT_PROXYHEADER
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptHeaderopt = CurloptHeaderopt

instance CurlOption CurloptHeaderopt where
  type CurlOptionArgument CurloptHeaderopt = CLong
  curlOption _ = CURLOPT_HEADEROPT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptPinnedpublickey = CurloptPinnedpublickey

instance CurlOption CurloptPinnedpublickey where
  type CurlOptionArgument CurloptPinnedpublickey = Ptr Void
  curlOption _ = CURLOPT_PINNEDPUBLICKEY
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptUnixSocketPath = CurloptUnixSocketPath

instance CurlOption CurloptUnixSocketPath where
  type CurlOptionArgument CurloptUnixSocketPath = Ptr Void
  curlOption _ = CURLOPT_UNIX_SOCKET_PATH
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSslVerifystatus = CurloptSslVerifystatus

instance CurlOption CurloptSslVerifystatus where
  type CurlOptionArgument CurloptSslVerifystatus = CLong
  curlOption _ = CURLOPT_SSL_VERIFYSTATUS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptSslFalsestart = CurloptSslFalsestart

instance CurlOption CurloptSslFalsestart where
  type CurlOptionArgument CurloptSslFalsestart = CLong
  curlOption _ = CURLOPT_SSL_FALSESTART
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptPathAsIs = CurloptPathAsIs

instance CurlOption CurloptPathAsIs where
  type CurlOptionArgument CurloptPathAsIs = CLong
  curlOption _ = CURLOPT_PATH_AS_IS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptProxyServiceName = CurloptProxyServiceName

instance CurlOption CurloptProxyServiceName where
  type CurlOptionArgument CurloptProxyServiceName = Ptr Void
  curlOption _ = CURLOPT_PROXY_SERVICE_NAME
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptServiceName = CurloptServiceName

instance CurlOption CurloptServiceName where
  type CurlOptionArgument CurloptServiceName = Ptr Void
  curlOption _ = CURLOPT_SERVICE_NAME
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptPipewait = CurloptPipewait

instance CurlOption CurloptPipewait where
  type CurlOptionArgument CurloptPipewait = CLong
  curlOption _ = CURLOPT_PIPEWAIT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptDefaultProtocol = CurloptDefaultProtocol

instance CurlOption CurloptDefaultProtocol where
  type CurlOptionArgument CurloptDefaultProtocol = Ptr Void
  curlOption _ = CURLOPT_DEFAULT_PROTOCOL
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptStreamWeight = CurloptStreamWeight

instance CurlOption CurloptStreamWeight where
  type CurlOptionArgument CurloptStreamWeight = CLong
  curlOption _ = CURLOPT_STREAM_WEIGHT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptStreamDepends = CurloptStreamDepends

instance CurlOption CurloptStreamDepends where
  type CurlOptionArgument CurloptStreamDepends = Ptr Void
  curlOption _ = CURLOPT_STREAM_DEPENDS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptStreamDependsE = CurloptStreamDependsE

instance CurlOption CurloptStreamDependsE where
  type CurlOptionArgument CurloptStreamDependsE = Ptr Void
  curlOption _ = CURLOPT_STREAM_DEPENDS_E
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptTftpNoOptions = CurloptTftpNoOptions

instance CurlOption CurloptTftpNoOptions where
  type CurlOptionArgument CurloptTftpNoOptions = CLong
  curlOption _ = CURLOPT_TFTP_NO_OPTIONS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptConnectTo = CurloptConnectTo

instance CurlOption CurloptConnectTo where
  type CurlOptionArgument CurloptConnectTo = Ptr Void
  curlOption _ = CURLOPT_CONNECT_TO
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptTcpFastopen = CurloptTcpFastopen

instance CurlOption CurloptTcpFastopen where
  type CurlOptionArgument CurloptTcpFastopen = CLong
  curlOption _ = CURLOPT_TCP_FASTOPEN
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptKeepSendingOnError = CurloptKeepSendingOnError

instance CurlOption CurloptKeepSendingOnError where
  type CurlOptionArgument CurloptKeepSendingOnError = CLong
  curlOption _ = CURLOPT_KEEP_SENDING_ON_ERROR
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptProxyCainfo = CurloptProxyCainfo

instance CurlOption CurloptProxyCainfo where
  type CurlOptionArgument CurloptProxyCainfo = Ptr Void
  curlOption _ = CURLOPT_PROXY_CAINFO
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptProxyCapath = CurloptProxyCapath

instance CurlOption CurloptProxyCapath where
  type CurlOptionArgument CurloptProxyCapath = Ptr Void
  curlOption _ = CURLOPT_PROXY_CAPATH
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptProxySslVerifypeer = CurloptProxySslVerifypeer

instance CurlOption CurloptProxySslVerifypeer where
  type CurlOptionArgument CurloptProxySslVerifypeer = CLong
  curlOption _ = CURLOPT_PROXY_SSL_VERIFYPEER
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptProxySslVerifyhost = CurloptProxySslVerifyhost

instance CurlOption CurloptProxySslVerifyhost where
  type CurlOptionArgument CurloptProxySslVerifyhost = CLong
  curlOption _ = CURLOPT_PROXY_SSL_VERIFYHOST
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptProxySslversion = CurloptProxySslversion

instance CurlOption CurloptProxySslversion where
  type CurlOptionArgument CurloptProxySslversion = CLong
  curlOption _ = CURLOPT_PROXY_SSLVERSION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptProxyTlsauthUsername = CurloptProxyTlsauthUsername

instance CurlOption CurloptProxyTlsauthUsername where
  type CurlOptionArgument CurloptProxyTlsauthUsername = Ptr Void
  curlOption _ = CURLOPT_PROXY_TLSAUTH_USERNAME
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptProxyTlsauthPassword = CurloptProxyTlsauthPassword

instance CurlOption CurloptProxyTlsauthPassword where
  type CurlOptionArgument CurloptProxyTlsauthPassword = Ptr Void
  curlOption _ = CURLOPT_PROXY_TLSAUTH_PASSWORD
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptProxyTlsauthType = CurloptProxyTlsauthType

instance CurlOption CurloptProxyTlsauthType where
  type CurlOptionArgument CurloptProxyTlsauthType = Ptr Void
  curlOption _ = CURLOPT_PROXY_TLSAUTH_TYPE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptProxySslcert = CurloptProxySslcert

instance CurlOption CurloptProxySslcert where
  type CurlOptionArgument CurloptProxySslcert = Ptr Void
  curlOption _ = CURLOPT_PROXY_SSLCERT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptProxySslcerttype = CurloptProxySslcerttype

instance CurlOption CurloptProxySslcerttype where
  type CurlOptionArgument CurloptProxySslcerttype = Ptr Void
  curlOption _ = CURLOPT_PROXY_SSLCERTTYPE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptProxySslkey = CurloptProxySslkey

instance CurlOption CurloptProxySslkey where
  type CurlOptionArgument CurloptProxySslkey = Ptr Void
  curlOption _ = CURLOPT_PROXY_SSLKEY
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptProxySslkeytype = CurloptProxySslkeytype

instance CurlOption CurloptProxySslkeytype where
  type CurlOptionArgument CurloptProxySslkeytype = Ptr Void
  curlOption _ = CURLOPT_PROXY_SSLKEYTYPE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptProxyKeypasswd = CurloptProxyKeypasswd

instance CurlOption CurloptProxyKeypasswd where
  type CurlOptionArgument CurloptProxyKeypasswd = Ptr Void
  curlOption _ = CURLOPT_PROXY_KEYPASSWD
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptProxySslCipherList = CurloptProxySslCipherList

instance CurlOption CurloptProxySslCipherList where
  type CurlOptionArgument CurloptProxySslCipherList = Ptr Void
  curlOption _ = CURLOPT_PROXY_SSL_CIPHER_LIST
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptProxyCrlfile = CurloptProxyCrlfile

instance CurlOption CurloptProxyCrlfile where
  type CurlOptionArgument CurloptProxyCrlfile = Ptr Void
  curlOption _ = CURLOPT_PROXY_CRLFILE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptProxySslOptions = CurloptProxySslOptions

instance CurlOption CurloptProxySslOptions where
  type CurlOptionArgument CurloptProxySslOptions = CLong
  curlOption _ = CURLOPT_PROXY_SSL_OPTIONS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptPreProxy = CurloptPreProxy

instance CurlOption CurloptPreProxy where
  type CurlOptionArgument CurloptPreProxy = Ptr Void
  curlOption _ = CURLOPT_PRE_PROXY
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptProxyPinnedpublickey = CurloptProxyPinnedpublickey

instance CurlOption CurloptProxyPinnedpublickey where
  type CurlOptionArgument CurloptProxyPinnedpublickey = Ptr Void
  curlOption _ = CURLOPT_PROXY_PINNEDPUBLICKEY
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptAbstractUnixSocket = CurloptAbstractUnixSocket

instance CurlOption CurloptAbstractUnixSocket where
  type CurlOptionArgument CurloptAbstractUnixSocket = Ptr Void
  curlOption _ = CURLOPT_ABSTRACT_UNIX_SOCKET
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSuppressConnectHeaders = CurloptSuppressConnectHeaders

instance CurlOption CurloptSuppressConnectHeaders where
  type CurlOptionArgument CurloptSuppressConnectHeaders = CLong
  curlOption _ = CURLOPT_SUPPRESS_CONNECT_HEADERS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptRequestTarget = CurloptRequestTarget

instance CurlOption CurloptRequestTarget where
  type CurlOptionArgument CurloptRequestTarget = Ptr Void
  curlOption _ = CURLOPT_REQUEST_TARGET
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSocks5Auth = CurloptSocks5Auth

instance CurlOption CurloptSocks5Auth where
  type CurlOptionArgument CurloptSocks5Auth = CLong
  curlOption _ = CURLOPT_SOCKS5_AUTH
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptSshCompression = CurloptSshCompression

instance CurlOption CurloptSshCompression where
  type CurlOptionArgument CurloptSshCompression = CLong
  curlOption _ = CURLOPT_SSH_COMPRESSION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptMimepost = CurloptMimepost

instance CurlOption CurloptMimepost where
  type CurlOptionArgument CurloptMimepost = Ptr Void
  curlOption _ = CURLOPT_MIMEPOST
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptTimevalueLarge = CurloptTimevalueLarge

instance CurlOption CurloptTimevalueLarge where
  type CurlOptionArgument CurloptTimevalueLarge = Curl_off_t
  curlOption _ = CURLOPT_TIMEVALUE_LARGE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_off_t handle (curlOption opt) arg

data CurloptHappyEyeballsTimeoutMs = CurloptHappyEyeballsTimeoutMs

instance CurlOption CurloptHappyEyeballsTimeoutMs where
  type CurlOptionArgument CurloptHappyEyeballsTimeoutMs = CLong
  curlOption _ = CURLOPT_HAPPY_EYEBALLS_TIMEOUT_MS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptResolverStartFunction = CurloptResolverStartFunction

instance CurlOption CurloptResolverStartFunction where
  type CurlOptionArgument CurloptResolverStartFunction = Ptr Void
  curlOption _ = CURLOPT_RESOLVER_START_FUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptResolverStartData = CurloptResolverStartData

instance CurlOption CurloptResolverStartData where
  type CurlOptionArgument CurloptResolverStartData = Ptr Void
  curlOption _ = CURLOPT_RESOLVER_START_DATA
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptHaproxyprotocol = CurloptHaproxyprotocol

instance CurlOption CurloptHaproxyprotocol where
  type CurlOptionArgument CurloptHaproxyprotocol = CLong
  curlOption _ = CURLOPT_HAPROXYPROTOCOL
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptDnsShuffleAddresses = CurloptDnsShuffleAddresses

instance CurlOption CurloptDnsShuffleAddresses where
  type CurlOptionArgument CurloptDnsShuffleAddresses = CLong
  curlOption _ = CURLOPT_DNS_SHUFFLE_ADDRESSES
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptTls13Ciphers = CurloptTls13Ciphers

instance CurlOption CurloptTls13Ciphers where
  type CurlOptionArgument CurloptTls13Ciphers = Ptr Void
  curlOption _ = CURLOPT_TLS13_CIPHERS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptProxyTls13Ciphers = CurloptProxyTls13Ciphers

instance CurlOption CurloptProxyTls13Ciphers where
  type CurlOptionArgument CurloptProxyTls13Ciphers = Ptr Void
  curlOption _ = CURLOPT_PROXY_TLS13_CIPHERS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptDisallowUsernameInUrl = CurloptDisallowUsernameInUrl

instance CurlOption CurloptDisallowUsernameInUrl where
  type CurlOptionArgument CurloptDisallowUsernameInUrl = CLong
  curlOption _ = CURLOPT_DISALLOW_USERNAME_IN_URL
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptDohUrl = CurloptDohUrl

instance CurlOption CurloptDohUrl where
  type CurlOptionArgument CurloptDohUrl = Ptr Void
  curlOption _ = CURLOPT_DOH_URL
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptUploadBuffersize = CurloptUploadBuffersize

instance CurlOption CurloptUploadBuffersize where
  type CurlOptionArgument CurloptUploadBuffersize = CLong
  curlOption _ = CURLOPT_UPLOAD_BUFFERSIZE
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptUpkeepIntervalMs = CurloptUpkeepIntervalMs

instance CurlOption CurloptUpkeepIntervalMs where
  type CurlOptionArgument CurloptUpkeepIntervalMs = CLong
  curlOption _ = CURLOPT_UPKEEP_INTERVAL_MS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptCurlu = CurloptCurlu

instance CurlOption CurloptCurlu where
  type CurlOptionArgument CurloptCurlu = Ptr Void
  curlOption _ = CURLOPT_CURLU
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptTrailerfunction = CurloptTrailerfunction

instance CurlOption CurloptTrailerfunction where
  type CurlOptionArgument CurloptTrailerfunction = Ptr Void
  curlOption _ = CURLOPT_TRAILERFUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptTrailerdata = CurloptTrailerdata

instance CurlOption CurloptTrailerdata where
  type CurlOptionArgument CurloptTrailerdata = Ptr Void
  curlOption _ = CURLOPT_TRAILERDATA
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptHttp09Allowed = CurloptHttp09Allowed

instance CurlOption CurloptHttp09Allowed where
  type CurlOptionArgument CurloptHttp09Allowed = CLong
  curlOption _ = CURLOPT_HTTP09_ALLOWED
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptAltsvcCtrl = CurloptAltsvcCtrl

instance CurlOption CurloptAltsvcCtrl where
  type CurlOptionArgument CurloptAltsvcCtrl = CLong
  curlOption _ = CURLOPT_ALTSVC_CTRL
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptAltsvc = CurloptAltsvc

instance CurlOption CurloptAltsvc where
  type CurlOptionArgument CurloptAltsvc = Ptr Void
  curlOption _ = CURLOPT_ALTSVC
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptMaxageConn = CurloptMaxageConn

instance CurlOption CurloptMaxageConn where
  type CurlOptionArgument CurloptMaxageConn = CLong
  curlOption _ = CURLOPT_MAXAGE_CONN
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptSaslAuthzid = CurloptSaslAuthzid

instance CurlOption CurloptSaslAuthzid where
  type CurlOptionArgument CurloptSaslAuthzid = Ptr Void
  curlOption _ = CURLOPT_SASL_AUTHZID
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptMailRcptAllowfails = CurloptMailRcptAllowfails

instance CurlOption CurloptMailRcptAllowfails where
  type CurlOptionArgument CurloptMailRcptAllowfails = CLong
  curlOption _ = CURLOPT_MAIL_RCPT_ALLOWFAILS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptSslcertBlob = CurloptSslcertBlob

instance CurlOption CurloptSslcertBlob where
  type CurlOptionArgument CurloptSslcertBlob = Curl_off_t
  curlOption _ = CURLOPT_SSLCERT_BLOB
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_off_t handle (curlOption opt) arg

data CurloptSslkeyBlob = CurloptSslkeyBlob

instance CurlOption CurloptSslkeyBlob where
  type CurlOptionArgument CurloptSslkeyBlob = Curl_off_t
  curlOption _ = CURLOPT_SSLKEY_BLOB
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_off_t handle (curlOption opt) arg

data CurloptProxySslcertBlob = CurloptProxySslcertBlob

instance CurlOption CurloptProxySslcertBlob where
  type CurlOptionArgument CurloptProxySslcertBlob = Curl_off_t
  curlOption _ = CURLOPT_PROXY_SSLCERT_BLOB
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_off_t handle (curlOption opt) arg

data CurloptProxySslkeyBlob = CurloptProxySslkeyBlob

instance CurlOption CurloptProxySslkeyBlob where
  type CurlOptionArgument CurloptProxySslkeyBlob = Curl_off_t
  curlOption _ = CURLOPT_PROXY_SSLKEY_BLOB
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_off_t handle (curlOption opt) arg

data CurloptIssuercertBlob = CurloptIssuercertBlob

instance CurlOption CurloptIssuercertBlob where
  type CurlOptionArgument CurloptIssuercertBlob = Curl_off_t
  curlOption _ = CURLOPT_ISSUERCERT_BLOB
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_off_t handle (curlOption opt) arg

data CurloptProxyIssuercert = CurloptProxyIssuercert

instance CurlOption CurloptProxyIssuercert where
  type CurlOptionArgument CurloptProxyIssuercert = Ptr Void
  curlOption _ = CURLOPT_PROXY_ISSUERCERT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptProxyIssuercertBlob = CurloptProxyIssuercertBlob

instance CurlOption CurloptProxyIssuercertBlob where
  type CurlOptionArgument CurloptProxyIssuercertBlob = Curl_off_t
  curlOption _ = CURLOPT_PROXY_ISSUERCERT_BLOB
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_off_t handle (curlOption opt) arg

data CurloptSslEcCurves = CurloptSslEcCurves

instance CurlOption CurloptSslEcCurves where
  type CurlOptionArgument CurloptSslEcCurves = Ptr Void
  curlOption _ = CURLOPT_SSL_EC_CURVES
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptHstsCtrl = CurloptHstsCtrl

instance CurlOption CurloptHstsCtrl where
  type CurlOptionArgument CurloptHstsCtrl = CLong
  curlOption _ = CURLOPT_HSTS_CTRL
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptHsts = CurloptHsts

instance CurlOption CurloptHsts where
  type CurlOptionArgument CurloptHsts = Ptr Void
  curlOption _ = CURLOPT_HSTS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptHstsreadfunction = CurloptHstsreadfunction

instance CurlOption CurloptHstsreadfunction where
  type CurlOptionArgument CurloptHstsreadfunction = Ptr Void
  curlOption _ = CURLOPT_HSTSREADFUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptHstsreaddata = CurloptHstsreaddata

instance CurlOption CurloptHstsreaddata where
  type CurlOptionArgument CurloptHstsreaddata = Ptr Void
  curlOption _ = CURLOPT_HSTSREADDATA
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptHstswritefunction = CurloptHstswritefunction

instance CurlOption CurloptHstswritefunction where
  type CurlOptionArgument CurloptHstswritefunction = Ptr Void
  curlOption _ = CURLOPT_HSTSWRITEFUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptHstswritedata = CurloptHstswritedata

instance CurlOption CurloptHstswritedata where
  type CurlOptionArgument CurloptHstswritedata = Ptr Void
  curlOption _ = CURLOPT_HSTSWRITEDATA
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptAwsSigv4 = CurloptAwsSigv4

instance CurlOption CurloptAwsSigv4 where
  type CurlOptionArgument CurloptAwsSigv4 = Ptr Void
  curlOption _ = CURLOPT_AWS_SIGV4
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptDohSslVerifypeer = CurloptDohSslVerifypeer

instance CurlOption CurloptDohSslVerifypeer where
  type CurlOptionArgument CurloptDohSslVerifypeer = CLong
  curlOption _ = CURLOPT_DOH_SSL_VERIFYPEER
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptDohSslVerifyhost = CurloptDohSslVerifyhost

instance CurlOption CurloptDohSslVerifyhost where
  type CurlOptionArgument CurloptDohSslVerifyhost = CLong
  curlOption _ = CURLOPT_DOH_SSL_VERIFYHOST
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptDohSslVerifystatus = CurloptDohSslVerifystatus

instance CurlOption CurloptDohSslVerifystatus where
  type CurlOptionArgument CurloptDohSslVerifystatus = CLong
  curlOption _ = CURLOPT_DOH_SSL_VERIFYSTATUS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptCainfoBlob = CurloptCainfoBlob

instance CurlOption CurloptCainfoBlob where
  type CurlOptionArgument CurloptCainfoBlob = Curl_off_t
  curlOption _ = CURLOPT_CAINFO_BLOB
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_off_t handle (curlOption opt) arg

data CurloptProxyCainfoBlob = CurloptProxyCainfoBlob

instance CurlOption CurloptProxyCainfoBlob where
  type CurlOptionArgument CurloptProxyCainfoBlob = Curl_off_t
  curlOption _ = CURLOPT_PROXY_CAINFO_BLOB
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_off_t handle (curlOption opt) arg

data CurloptSshHostPublicKeySha256 = CurloptSshHostPublicKeySha256

instance CurlOption CurloptSshHostPublicKeySha256 where
  type CurlOptionArgument CurloptSshHostPublicKeySha256 = Ptr Void
  curlOption _ = CURLOPT_SSH_HOST_PUBLIC_KEY_SHA256
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptPrereqfunction = CurloptPrereqfunction

instance CurlOption CurloptPrereqfunction where
  type CurlOptionArgument CurloptPrereqfunction = Ptr Void
  curlOption _ = CURLOPT_PREREQFUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptPrereqdata = CurloptPrereqdata

instance CurlOption CurloptPrereqdata where
  type CurlOptionArgument CurloptPrereqdata = Ptr Void
  curlOption _ = CURLOPT_PREREQDATA
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptMaxlifetimeConn = CurloptMaxlifetimeConn

instance CurlOption CurloptMaxlifetimeConn where
  type CurlOptionArgument CurloptMaxlifetimeConn = CLong
  curlOption _ = CURLOPT_MAXLIFETIME_CONN
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptMimeOptions = CurloptMimeOptions

instance CurlOption CurloptMimeOptions where
  type CurlOptionArgument CurloptMimeOptions = CLong
  curlOption _ = CURLOPT_MIME_OPTIONS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptSshHostkeyfunction = CurloptSshHostkeyfunction

instance CurlOption CurloptSshHostkeyfunction where
  type CurlOptionArgument CurloptSshHostkeyfunction = Ptr Void
  curlOption _ = CURLOPT_SSH_HOSTKEYFUNCTION
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptSshHostkeydata = CurloptSshHostkeydata

instance CurlOption CurloptSshHostkeydata where
  type CurlOptionArgument CurloptSshHostkeydata = Ptr Void
  curlOption _ = CURLOPT_SSH_HOSTKEYDATA
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptProtocolsStr = CurloptProtocolsStr

instance CurlOption CurloptProtocolsStr where
  type CurlOptionArgument CurloptProtocolsStr = Ptr Void
  curlOption _ = CURLOPT_PROTOCOLS_STR
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptRedirProtocolsStr = CurloptRedirProtocolsStr

instance CurlOption CurloptRedirProtocolsStr where
  type CurlOptionArgument CurloptRedirProtocolsStr = Ptr Void
  curlOption _ = CURLOPT_REDIR_PROTOCOLS_STR
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptWsOptions = CurloptWsOptions

instance CurlOption CurloptWsOptions where
  type CurlOptionArgument CurloptWsOptions = CLong
  curlOption _ = CURLOPT_WS_OPTIONS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptCaCacheTimeout = CurloptCaCacheTimeout

instance CurlOption CurloptCaCacheTimeout where
  type CurlOptionArgument CurloptCaCacheTimeout = CLong
  curlOption _ = CURLOPT_CA_CACHE_TIMEOUT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptQuickExit = CurloptQuickExit

instance CurlOption CurloptQuickExit where
  type CurlOptionArgument CurloptQuickExit = CLong
  curlOption _ = CURLOPT_QUICK_EXIT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptHaproxyClientIp = CurloptHaproxyClientIp

instance CurlOption CurloptHaproxyClientIp where
  type CurlOptionArgument CurloptHaproxyClientIp = Ptr Void
  curlOption _ = CURLOPT_HAPROXY_CLIENT_IP
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptServerResponseTimeoutMs = CurloptServerResponseTimeoutMs

instance CurlOption CurloptServerResponseTimeoutMs where
  type CurlOptionArgument CurloptServerResponseTimeoutMs = CLong
  curlOption _ = CURLOPT_SERVER_RESPONSE_TIMEOUT_MS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptEch = CurloptEch

instance CurlOption CurloptEch where
  type CurlOptionArgument CurloptEch = Ptr Void
  curlOption _ = CURLOPT_ECH
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptTcpKeepcnt = CurloptTcpKeepcnt

instance CurlOption CurloptTcpKeepcnt where
  type CurlOptionArgument CurloptTcpKeepcnt = CLong
  curlOption _ = CURLOPT_TCP_KEEPCNT
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptUploadFlags = CurloptUploadFlags

instance CurlOption CurloptUploadFlags where
  type CurlOptionArgument CurloptUploadFlags = CLong
  curlOption _ = CURLOPT_UPLOAD_FLAGS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_long handle (curlOption opt) arg

data CurloptSslSignatureAlgorithms = CurloptSslSignatureAlgorithms

instance CurlOption CurloptSslSignatureAlgorithms where
  type CurlOptionArgument CurloptSslSignatureAlgorithms = Ptr Void
  curlOption _ = CURLOPT_SSL_SIGNATURE_ALGORITHMS
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

data CurloptLastentry = CurloptLastentry

instance CurlOption CurloptLastentry where
  type CurlOptionArgument CurloptLastentry = Ptr Void
  curlOption _ = CURLOPT_LASTENTRY
  curlSetOpt opt handle arg = SetOpt.curl_easy_setopt_ptr handle (curlOption opt) arg

