{-# LANGUAGE DataKinds #-}

module Network.Curl.Linear
  ( -- * Types
    GlobalCurlHandle
  , CurlEasy
  , CurlEasyResult (..)
  , CurlError (..)

    -- * curl_global_init
  , withCurlGlobal

    -- * curl_easy_init
  , withCurlEasy

    -- * curl_easy_setopt
  , CurlWriteFunction (..)
  , setOption
  , setOptionM
  , setNumericOption
  , setTextOption
  , setUrl
  , setTimeout
  , setTimeoutMS
  , setFollowLocation
  , setVerbose
  , setErrorBuffer
  , setWriteFunction
  , setHeaderFunction

    -- * curl_easy_getinfo
  , getInfo
  , getInfoText
  , getInfoSList
  , getEffectiveUrl
  , getResponseCode

    -- * curl_easy_perform
  , StreamOptions (..)
  , perform
  , perform_
  , performStream

    -- * Handle manipulation
  , reset
  ) where

import Network.Curl.Linear.Internal.Handle
import Network.Curl.Linear.Internal.Info
import Network.Curl.Linear.Internal.Option
import Network.Curl.Linear.Internal.Perform
import Network.Curl.Linear.Internal.Types
