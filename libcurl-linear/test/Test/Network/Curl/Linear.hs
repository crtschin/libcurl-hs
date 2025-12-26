{-# LANGUAGE LinearTypes #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QualifiedDo #-}

module Test.Network.Curl.Linear (tests) where

import Control.Functor.Linear as Linear
import Control.Monad.IO.Class (MonadIO (..))
import Data.ByteString.Lazy qualified as BSL
import Data.IORef qualified as N
import Data.Text qualified as T
import Data.Text.IO qualified as T
import Network.Curl.Linear
import Prelude.Linear
import Streaming.Linear qualified as Linear
import System.IO
import System.IO.Linear as Linear
import System.IO.Temp
import Test.Sandwich
import Prelude qualified as N
import qualified Data.ByteString as BS

tests :: TopSpec
tests = describe "Network.Curl.Linear" $ do
  basicTests
  performTests

basicTests :: TopSpec
basicTests = describe "Basic" $ do
  it "initializes and cleans up curl global" basicNoopGlobal
  it "creates and cleans up curl easy handle" basicEasyNoop
  it "sets URL without crashing" basicSetUrl
  it "sets timeout without crashing" basicSetTimeout
  it "chains multiple options using builder pattern" basicSetMultiple
  it "resets handle without crashing" basicReset

performTests :: TopSpec
performTests = describe "Perform" $ do
  it "can perform with no options" performBasicTest
  it "can perform with no options with error buffer" performBasicErrorTest
  it "captures error message for invalid URL" performInvalidErrorMessage
  it "can download the contents of a file" performStreamFileTest

--------------------------------------------------------------------------------
-- Basic
--------------------------------------------------------------------------------

basicNoopGlobal :: ExampleT ctx N.IO ()
basicNoopGlobal = do
  liftIO $ Linear.withLinearIO (withCurlGlobal action)
 where
  action :: Ur GlobalCurlHandle %1 -> Linear.IO (Ur ())
  action h = pure $ move (consume h)

basicTestSetup :: (Consumable a, MonadIO m) => (CurlEasy %1 -> a) -> m ()
basicTestSetup act =
  liftIO $ Linear.withLinearIO (withCurlGlobal action)
 where
  action :: Ur GlobalCurlHandle %1 -> Linear.IO (Ur ())
  action (Ur global) = withCurlEasy global $ \h ->
    pure $ move (consume (act h))

basicEasyNoop :: ExampleT ctx N.IO ()
basicEasyNoop = basicTestSetup id

basicSetUrl :: ExampleT ctx N.IO ()
basicSetUrl = basicTestSetup $ setUrl "https://example.com"

basicSetTimeout :: ExampleT ctx N.IO ()
basicSetTimeout = basicTestSetup $ setTimeout 30

basicSetMultiple :: ExampleT ctx N.IO ()
basicSetMultiple =
  basicTestSetup
    $ setUrl "https://example.com"
    . setTimeout 30
    . setFollowLocation True
    . setVerbose False

basicReset :: ExampleT ctx N.IO ()
basicReset =
  basicTestSetup
    $ reset
    . setUrl "https://example.com"

--------------------------------------------------------------------------------
-- Perform
--------------------------------------------------------------------------------

performTestSetup :: MonadIO m => (CurlEasy %1 -> CurlEasy) -> (CurlEasyResult -> m r) -> m r
performTestSetup setupHandle expect = do
  result <- liftIO (withLinearIO $ withCurlGlobal action)
  expect result
 where
  action :: Ur GlobalCurlHandle %1 -> Linear.IO (Ur CurlEasyResult)
  action (Ur global) = withCurlEasy global $ \h -> Linear.do
    (h', r) <- perform (setupHandle h)
    pure $ lseq h' r

performStreamTestSetup
  :: MonadIO m => (CurlEasy %1 -> CurlEasy) -> (CurlEasyResult -> BSL.ByteString -> m r) -> m r
performStreamTestSetup setupHandle expect = do
  (result, buffer) <- liftIO (withLinearIO $ withCurlGlobal action)
  bufferContents <- liftIO $ N.readIORef $ unur buffer
  expect result (BS.fromStrict bufferContents)
 where
  action :: Ur GlobalCurlHandle %1 -> Linear.IO (Ur (CurlEasyResult, Ur (N.IORef BS.ByteString)))
  action (Ur global) = withCurlEasy global $ \h -> Linear.do
    Ur bufferRef <- newIORef N.mempty
    (h', result) <- performStream (setupHandle h) (StreamOptions 1024) $ \h' stream -> Linear.do
      let accumContents :: Linear.Of BS.ByteString a %1 -> Linear.IO a
          accumContents (new Linear.:> buff) = Linear.do
            fromSystemIO $ N.modifyIORef' bufferRef $ \prev -> prev N.<> new
            pure buff
      result <- Linear.mapsM_ @(Linear.Of BS.ByteString) @Linear.IO accumContents stream
      pure $ h' `lseq` move result
    pure $ lseq h' $ move (unur result, Ur bufferRef)

performBasicTest :: ExampleT ctx N.IO ()
performBasicTest = performTestSetup id $ \result ->
  result `shouldBe` CurlEasyResultError (CurlError 3 "Error occurred")

performStreamFileTest :: ExampleT ctx N.IO ()
performStreamFileTest =
  withSystemTempFile "performBasicFileTest" $ \path handle -> do
    liftIO $ T.hPutStr handle "test string"
    liftIO $ hClose handle
    performStreamTestSetup (setUrl ("file://" `T.append` T.pack path) . setErrorBuffer) $ \result buffer -> do
      result `shouldBe` CurlEasyResultOk
      buffer `shouldBe` "test string"

performBasicErrorTest :: ExampleT ctx N.IO ()
performBasicErrorTest = performTestSetup setErrorBuffer $ \result ->
  result `shouldBe` CurlEasyResultError (CurlError 3 "No URL set")

performInvalidErrorMessage :: ExampleT context N.IO ()
performInvalidErrorMessage = performTestSetup (setUrl "ht!tp://invalid url" . setErrorBuffer) $ \result ->
  result
    `shouldBe` CurlEasyResultError (CurlError 3 "URL rejected: Malformed input to a URL function")
