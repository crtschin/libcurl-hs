{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeFamilies #-}

module Network.Curl.Linear.Internal.Info where

import Data.Functor.Linear qualified as L
import Data.Text (Text)
import Data.Text qualified as T
import Foreign
import Foreign.C.String (CString, peekCString)
import Foreign.C.Types (CLong)
import Generated.Curl.Curl qualified as C
import Generated.Curl.Easy.GetInfo.Class
import Generated.Curl.Easy.GetInfo.Instances.Unsafe qualified as Unsafe
import Generated.Curl.Curl.Unsafe qualified as Unsafe
import Network.Curl.Linear.Internal.Types
import Prelude.Linear as L
import System.IO.Unsafe qualified as Unsafe
import Unsafe.Linear qualified as Unsafe
import Prelude qualified as N

getInfo
  :: (CurlInfo c, Storable (CurlInfoResult c), IsSList (CurlInfoResult c) ~ False)
  => c
  -> CurlEasy
  %1 -> (CurlEasy, Maybe (CurlInfoResult c))
getInfo option = getInfoInternal option N.pure

getInfoText
  :: (CurlInfo c, Storable (CurlInfoResult c), CurlInfoResult c ~ CString)
  => c
  -> CurlEasy
  %1 -> (CurlEasy, Maybe Text)
getInfoText option = getInfoInternal option (N.fmap T.pack N.. peekCString)

type family IsSList a where
  IsSList (Ptr C.Curl_slist) = True
  IsSList a = False

getInfoSList
  :: (CurlInfo c, Storable (CurlInfoResult c), CurlInfoResult c ~ Ptr C.Curl_slist)
  => c
  -> CurlEasy
  %1 -> (CurlEasy, [Text])
getInfoSList option = L.fmap (fromMaybe []) . getInfoInternal option helper
 where
  helper ptr = do
    result <- peekSList ptr []
    Unsafe.curl_slist_free_all ptr
    N.pure result

  peekSList slistPtr acc =
    if slistPtr N.== nullPtr
      then N.pure acc
      else do
        slist <- peek slistPtr
        payload <- T.pack N.<$> peekCString (C.curl_slist_data slist)
        peekSList (C.curl_slist_next slist) (payload : acc)

getInfoInternal
  :: (CurlInfo c, Storable (CurlInfoResult c))
  => c
  -> (CurlInfoResult c -> IO r)
  -> CurlEasy
  %1 -> (CurlEasy, Maybe r)
getInfoInternal option result = Unsafe.toLinear helper
 where
  helper h = Unsafe.unsafeDupablePerformIO $ do
    alloca $ \ptr -> do
      infoResult <- curlGetInfo option (unur (curlHandle h)) ptr
      case infoResult of
        C.CURLE_OK -> do
          if ptr N.== nullPtr
            then N.pure (h, Nothing)
            else do
              infoContent <- peek ptr
              r <- result infoContent
              N.pure (h, Just r)
        _ -> N.pure (h, Nothing)

getEffectiveUrl :: CurlEasy %1 -> (CurlEasy, Maybe Text)
getEffectiveUrl = getInfoText Unsafe.CurlinfoEffectiveUrl

getResponseCode :: CurlEasy %1 -> (CurlEasy, Maybe CLong)
getResponseCode = getInfo Unsafe.CurlinfoResponseCode
