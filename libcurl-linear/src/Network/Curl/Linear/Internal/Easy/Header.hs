module Network.Curl.Linear.Internal.Easy.Header where

import Control.Functor.Linear qualified as L
import Data.Map.Strict qualified as M
import Data.Text (Text)
import Data.Text qualified as T
import Foreign
import Foreign.C (peekCString)
import Generated.Curl.Curl qualified as C
import Generated.Curl.Curl.Safe qualified as Safe
import Network.Curl.Linear.Internal.Types
import Network.Curl.Linear.Internal.Utils qualified as Linear
import Prelude.Linear as L
import Streaming.Linear qualified as Linear
import Streaming.Prelude.Linear qualified as Linear
import System.IO.Linear qualified as Linear
import Unsafe.Linear qualified as Unsafe
import Prelude qualified as N

curlGetLastHeaders :: CurlEasy %1 -> Linear.IO (CurlEasy, CurlHeaders)
curlGetLastHeaders = Unsafe.toLinear helper
 where
  helper :: CurlEasy -> Linear.IO (CurlEasy, CurlHeaders)
  helper h = L.do
    let
      addHeader :: CurlHeaders %1 -> (Text, Text) -> Linear.IO CurlHeaders
      addHeader = Unsafe.toLinear $ \hs (hn, hv) -> case hs of
        CurlHeaders hs' -> L.pure $ CurlHeaders $ M.insert hn hv hs'
    (headers, handle) <- Linear.foldM addHeader (L.pure (CurlHeaders N.mempty)) L.pure $ headerStream h
    L.pure (handle, headers)

  getHeader :: CurlEasy %1 -> Linear.IO (CurlEasy, Maybe (Text, Text))
  getHeader = Unsafe.toLinear $ \h -> Linear.fromSystemIO $ do
    headerPtr <-
      Safe.curl_easy_nextheader
        (easyHandle h)
        (fromIntegral C.cURLH_HEADER)
        (-1)
        nullPtr
    if headerPtr N.== nullPtr
      then N.pure (h, Nothing)
      else do
        curlHeader <- peek headerPtr
        curlHeaderName <- T.pack N.<$> peekCString (C.curl_header_name curlHeader)
        curlHeaderValue <- T.pack N.<$> peekCString (C.curl_header_value curlHeader)
        N.pure (h, Just (curlHeaderName, curlHeaderValue))

  headerStream :: CurlEasy %1 -> Linear.Stream (Linear.Of (Text, Text)) Linear.IO CurlEasy
  headerStream = Linear.unfold $ Unsafe.toLinear $ \h -> Linear.fromSystemIO $ do
    (h', result) <- Linear.toSystemIO $ getHeader h
    case result of
      Nothing -> N.pure $ Left h'
      Just (name, value) -> N.pure $ Right ((name, value) Linear.:> h')
