{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE DataKinds #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Generated.Curl.Multi.SetOpt.Instances.Safe where

import Data.Void
import Generated.Curl.Multi.SetOpt.Class
import Generated.Curl.Easy
import Generated.Curl.Multi
import Generated.Curl.Curl
import qualified Generated.Curl.Multi.SetOpt.Safe as Multi.SetOpt
import Foreign.C.Types
import Foreign.Ptr

data CurlmoptSocketfunction = CurlmoptSocketfunction

instance CurlMultiOption CurlmoptSocketfunction where
  type CurlMOptionArgument CurlmoptSocketfunction = Ptr Void
  curlMOption _ = CURLMOPT_SOCKETFUNCTION
  curlSetMOpt opt handle = Multi.SetOpt.curl_multi_setopt_ptr handle (curlMOption opt)

data CurlmoptSocketdata = CurlmoptSocketdata

instance CurlMultiOption CurlmoptSocketdata where
  type CurlMOptionArgument CurlmoptSocketdata = Ptr Void
  curlMOption _ = CURLMOPT_SOCKETDATA
  curlSetMOpt opt handle = Multi.SetOpt.curl_multi_setopt_ptr handle (curlMOption opt)

data CurlmoptPipelining = CurlmoptPipelining

instance CurlMultiOption CurlmoptPipelining where
  type CurlMOptionArgument CurlmoptPipelining = CLong
  curlMOption _ = CURLMOPT_PIPELINING
  curlSetMOpt opt handle = Multi.SetOpt.curl_multi_setopt_long handle (curlMOption opt)

data CurlmoptTimerfunction = CurlmoptTimerfunction

instance CurlMultiOption CurlmoptTimerfunction where
  type CurlMOptionArgument CurlmoptTimerfunction = Ptr Void
  curlMOption _ = CURLMOPT_TIMERFUNCTION
  curlSetMOpt opt handle = Multi.SetOpt.curl_multi_setopt_ptr handle (curlMOption opt)

data CurlmoptTimerdata = CurlmoptTimerdata

instance CurlMultiOption CurlmoptTimerdata where
  type CurlMOptionArgument CurlmoptTimerdata = Ptr Void
  curlMOption _ = CURLMOPT_TIMERDATA
  curlSetMOpt opt handle = Multi.SetOpt.curl_multi_setopt_ptr handle (curlMOption opt)

data CurlmoptMaxconnects = CurlmoptMaxconnects

instance CurlMultiOption CurlmoptMaxconnects where
  type CurlMOptionArgument CurlmoptMaxconnects = CLong
  curlMOption _ = CURLMOPT_MAXCONNECTS
  curlSetMOpt opt handle = Multi.SetOpt.curl_multi_setopt_long handle (curlMOption opt)

data CurlmoptMaxHostConnections = CurlmoptMaxHostConnections

instance CurlMultiOption CurlmoptMaxHostConnections where
  type CurlMOptionArgument CurlmoptMaxHostConnections = CLong
  curlMOption _ = CURLMOPT_MAX_HOST_CONNECTIONS
  curlSetMOpt opt handle = Multi.SetOpt.curl_multi_setopt_long handle (curlMOption opt)

data CurlmoptMaxPipelineLength = CurlmoptMaxPipelineLength

instance CurlMultiOption CurlmoptMaxPipelineLength where
  type CurlMOptionArgument CurlmoptMaxPipelineLength = CLong
  curlMOption _ = CURLMOPT_MAX_PIPELINE_LENGTH
  curlSetMOpt opt handle = Multi.SetOpt.curl_multi_setopt_long handle (curlMOption opt)

data CurlmoptContentLengthPenaltySize = CurlmoptContentLengthPenaltySize

instance CurlMultiOption CurlmoptContentLengthPenaltySize where
  type CurlMOptionArgument CurlmoptContentLengthPenaltySize = Curl_off_t
  curlMOption _ = CURLMOPT_CONTENT_LENGTH_PENALTY_SIZE
  curlSetMOpt opt handle = Multi.SetOpt.curl_multi_setopt_off_t handle (curlMOption opt)

data CurlmoptChunkLengthPenaltySize = CurlmoptChunkLengthPenaltySize

instance CurlMultiOption CurlmoptChunkLengthPenaltySize where
  type CurlMOptionArgument CurlmoptChunkLengthPenaltySize = Curl_off_t
  curlMOption _ = CURLMOPT_CHUNK_LENGTH_PENALTY_SIZE
  curlSetMOpt opt handle = Multi.SetOpt.curl_multi_setopt_off_t handle (curlMOption opt)

data CurlmoptPipeliningSiteBl = CurlmoptPipeliningSiteBl

instance CurlMultiOption CurlmoptPipeliningSiteBl where
  type CurlMOptionArgument CurlmoptPipeliningSiteBl = Ptr Void
  curlMOption _ = CURLMOPT_PIPELINING_SITE_BL
  curlSetMOpt opt handle = Multi.SetOpt.curl_multi_setopt_ptr handle (curlMOption opt)

data CurlmoptPipeliningServerBl = CurlmoptPipeliningServerBl

instance CurlMultiOption CurlmoptPipeliningServerBl where
  type CurlMOptionArgument CurlmoptPipeliningServerBl = Ptr Void
  curlMOption _ = CURLMOPT_PIPELINING_SERVER_BL
  curlSetMOpt opt handle = Multi.SetOpt.curl_multi_setopt_ptr handle (curlMOption opt)

data CurlmoptMaxTotalConnections = CurlmoptMaxTotalConnections

instance CurlMultiOption CurlmoptMaxTotalConnections where
  type CurlMOptionArgument CurlmoptMaxTotalConnections = CLong
  curlMOption _ = CURLMOPT_MAX_TOTAL_CONNECTIONS
  curlSetMOpt opt handle = Multi.SetOpt.curl_multi_setopt_long handle (curlMOption opt)

data CurlmoptPushfunction = CurlmoptPushfunction

instance CurlMultiOption CurlmoptPushfunction where
  type CurlMOptionArgument CurlmoptPushfunction = Ptr Void
  curlMOption _ = CURLMOPT_PUSHFUNCTION
  curlSetMOpt opt handle = Multi.SetOpt.curl_multi_setopt_ptr handle (curlMOption opt)

data CurlmoptPushdata = CurlmoptPushdata

instance CurlMultiOption CurlmoptPushdata where
  type CurlMOptionArgument CurlmoptPushdata = Ptr Void
  curlMOption _ = CURLMOPT_PUSHDATA
  curlSetMOpt opt handle = Multi.SetOpt.curl_multi_setopt_ptr handle (curlMOption opt)

data CurlmoptMaxConcurrentStreams = CurlmoptMaxConcurrentStreams

instance CurlMultiOption CurlmoptMaxConcurrentStreams where
  type CurlMOptionArgument CurlmoptMaxConcurrentStreams = CLong
  curlMOption _ = CURLMOPT_MAX_CONCURRENT_STREAMS
  curlSetMOpt opt handle = Multi.SetOpt.curl_multi_setopt_long handle (curlMOption opt)

data CurlmoptNetworkChanged = CurlmoptNetworkChanged

instance CurlMultiOption CurlmoptNetworkChanged where
  type CurlMOptionArgument CurlmoptNetworkChanged = CLong
  curlMOption _ = CURLMOPT_NETWORK_CHANGED
  curlSetMOpt opt handle = Multi.SetOpt.curl_multi_setopt_long handle (curlMOption opt)

data CurlmoptNotifyfunction = CurlmoptNotifyfunction

instance CurlMultiOption CurlmoptNotifyfunction where
  type CurlMOptionArgument CurlmoptNotifyfunction = Ptr Void
  curlMOption _ = CURLMOPT_NOTIFYFUNCTION
  curlSetMOpt opt handle = Multi.SetOpt.curl_multi_setopt_ptr handle (curlMOption opt)

data CurlmoptNotifydata = CurlmoptNotifydata

instance CurlMultiOption CurlmoptNotifydata where
  type CurlMOptionArgument CurlmoptNotifydata = Ptr Void
  curlMOption _ = CURLMOPT_NOTIFYDATA
  curlSetMOpt opt handle = Multi.SetOpt.curl_multi_setopt_ptr handle (curlMOption opt)

data CurlmoptLastentry = CurlmoptLastentry

instance CurlMultiOption CurlmoptLastentry where
  type CurlMOptionArgument CurlmoptLastentry = Ptr Void
  curlMOption _ = CURLMOPT_LASTENTRY
  curlSetMOpt opt handle = Multi.SetOpt.curl_multi_setopt_ptr handle (curlMOption opt)

