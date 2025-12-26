{-# LANGUAGE OverloadedStrings #-}

module Test.Network.Curl.Linear.Internal.Buffer (tests) where

import Control.Monad.IO.Class (MonadIO (..))
import Data.ByteString (ByteString)
import Data.ByteString qualified as BS
import Network.Curl.Linear.Internal.Buffer qualified as Buffer
import System.IO.Unsafe
import Test.QuickCheck
  ( Arbitrary (..)
  , Gen

  , choose
  , forAll


  , vectorOf
  , (.&&.)
  , (===)
  )
import Test.Sandwich (TopSpec, describe, it, shouldBe)
import Test.Sandwich.QuickCheck (introduceQuickCheck, prop)
import Prelude

tests :: TopSpec
tests = describe "RingBuffer" $ do
  describe "Basic Properties" $ do
    it "new buffer has size 0" $ liftIO $ do
      Buffer.new 1024 $ \buf -> do
        sz <- Buffer.size buf
        sz `shouldBe` 0

  describe "Write Operations" $ do
    it "write to empty buffer returns empty remainder" $ liftIO $ do
      Buffer.new 100 $ \buf -> do
        remainder <- Buffer.write "hello" buf
        remainder `shouldBe` BS.empty
        sz <- Buffer.size buf
        sz `shouldBe` 5

    it "write partial when buffer full returns unwritten data" $ liftIO $ do
      Buffer.new 10 $ \buf -> do
        _ <- Buffer.write "12345" buf
        sz <- Buffer.size buf
        sz `shouldBe` 5
        remainder <- Buffer.write "67890ABCDE" buf
        remainder `shouldBe` "ABCDE"
        sz' <- Buffer.size buf
        sz' `shouldBe` 10

    it "write to full buffer returns entire input" $ liftIO $ do
      Buffer.new 5 $ \buf -> do
        _ <- Buffer.write "12345" buf
        remainder <- Buffer.write "xyz" buf
        remainder `shouldBe` "xyz"
        sz <- Buffer.size buf
        sz `shouldBe` 5

    it "empty write returns empty" $ liftIO $ do
      Buffer.new 10 $ \buf -> do
        remainder <- Buffer.write BS.empty buf
        remainder `shouldBe` BS.empty

  describe "unsafeToByteString" $ do
    it "empty buffer returns empty bytestring" $ liftIO $ do
      Buffer.new 10 $ \buf -> do
        bs <- Buffer.unsafeToByteString buf
        bs `shouldBe` BS.empty

    it "retrieves written data" $ liftIO $ do
      Buffer.new 20 $ \buf -> do
        _ <- Buffer.write "hello world" buf
        bs <- Buffer.unsafeToByteString buf
        bs `shouldBe` "hello world"

    it "retrieves partial writes correctly" $ liftIO $ do
      Buffer.new 10 $ \buf -> do
        _ <- Buffer.write "12345" buf
        _ <- Buffer.write "67890ABC" buf
        bs <- Buffer.unsafeToByteString buf
        bs `shouldBe` "1234567890"

  describe "Properties" $ introduceQuickCheck $ do
    prop "write then read retrieves exact data (within capacity)" $ do
      forAll genCapacityAndData $ \(cap, dat) -> unsafePerformIO $ do
        Buffer.new cap $ \buf -> do
          remainder <- Buffer.write dat buf
          bs <- Buffer.unsafeToByteString buf
          let expected = BS.take cap dat
          pure (bs === expected .&&. remainder === BS.drop cap dat)

    prop "size matches written bytes (capped at capacity)" $
      forAll genCapacityAndData $ \(cap, dat) -> unsafePerformIO $ do
        Buffer.new cap $ \buf -> do
          _ <- Buffer.write dat buf
          sz <- Buffer.size buf
          pure (sz === min cap (BS.length dat))

    prop "multiple small writes accumulate correctly" $
      forAll genCapacityAndChunks $ \(cap, chunks) -> unsafePerformIO $ do
        Buffer.new cap $ \buf -> do
          let writeThenCheck chunk = do
                _ <- Buffer.write chunk buf
                Buffer.size buf
          sizes <- mapM writeThenCheck chunks
          let expectedSizes = scanl1 (+) (map BS.length chunks)
              cappedSizes = map (min cap) expectedSizes
          pure (sizes === cappedSizes)

    prop "write returns correct remainder" $
      forAll genCapacityAndData $ \(cap, dat) -> unsafePerformIO $ do
        Buffer.new cap $ \buf -> do
          remainder <- Buffer.write dat buf
          let expected = BS.drop cap dat
          pure (remainder === expected)

    prop "capacity never changes" $
      forAll genCapacityAndMultiData $ \(cap, datas) -> unsafePerformIO $ do
        Buffer.new cap $ \buf -> do
          mapM_ (`Buffer.write` buf) datas
          pure (Buffer.capacity buf === cap)

    prop "unsafeToByteString after full buffer contains first N bytes" $
      forAll genCapacityAndLargeData $ \(cap, dat) -> unsafePerformIO $ do
       Buffer.new cap $ \buf -> do
          _ <- Buffer.write dat buf
          bs <- Buffer.unsafeToByteString buf
          pure (bs === BS.take cap dat)

  describe "Edge Cases" $ do
    it "write exactly capacity bytes" $ liftIO $ do
      Buffer.new 10 $ \buf -> do
        remainder <- Buffer.write "1234567890" buf
        remainder `shouldBe` BS.empty
        sz <- Buffer.size buf
        sz `shouldBe` 10
        bs <- Buffer.unsafeToByteString buf
        bs `shouldBe` "1234567890"

    it "write one byte at a time to capacity" $ liftIO $ do
      Buffer.new 5 $ \buf -> do
        mapM_ (`Buffer.write` buf) ["1", "2", "3", "4", "5"]
        sz <- Buffer.size buf
        sz `shouldBe` 5
        bs <- Buffer.unsafeToByteString buf
        bs `shouldBe` "12345"

    it "write after reaching capacity ignores new data" $ liftIO $ do
      Buffer.new 3 $ \buf -> do
        _ <- Buffer.write "ABC" buf
        remainder <- Buffer.write "XYZ" buf
        remainder `shouldBe` "XYZ"
        bs <- Buffer.unsafeToByteString buf
        bs `shouldBe` "ABC"

    it "minimum capacity buffer (1 byte)" $ liftIO $ do
      Buffer.new 1 $ \buf -> do
        _ <- Buffer.write "X" buf
        bs <- Buffer.unsafeToByteString buf
        bs `shouldBe` "X"
        remainder <- Buffer.write "Y" buf
        remainder `shouldBe` ""
        bs' <- Buffer.unsafeToByteString buf
        bs' `shouldBe` "Y"

-- Generators

genCapacityAndData :: Gen (Int, ByteString)
genCapacityAndData = do
  cap <- choose (1, 1024)
  len <- choose (0, cap * 2)
  dat <- genByteString len
  pure (cap, dat)

genCapacityAndLargeData :: Gen (Int, ByteString)
genCapacityAndLargeData = do
  cap <- choose (1, 512)
  len <- choose (cap, cap * 3)
  dat <- genByteString len
  pure (cap, dat)

genCapacityAndChunks :: Gen (Int, [ByteString])
genCapacityAndChunks = do
  cap <- choose (10, 200)
  numChunks <- choose (1, 10)
  chunks <- vectorOf numChunks (genByteString =<< choose (1, 20))
  pure (cap, chunks)

genCapacityAndMultiData :: Gen (Int, [ByteString])
genCapacityAndMultiData = do
  cap <- choose (1, 256)
  numWrites <- choose (1, 20)
  datas <- vectorOf numWrites (genByteString =<< choose (0, cap))
  pure (cap, datas)

genByteString :: Int -> Gen ByteString
genByteString n = BS.pack <$> vectorOf n arbitrary
