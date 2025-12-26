{-# LANGUAGE MagicHash #-}

module Network.Curl.Linear.Internal.Buffer
  ( Buffer
  , new
  , write
  , writePtr
  , unsafeToByteString
  , capacity
  , size
  ) where

import Control.Concurrent.STM
import Control.Monad (when)
import Data.ByteString (ByteString)
import Data.ByteString qualified as BS
import Data.ByteString.Internal qualified as BSI
import Data.ByteString.Unsafe qualified as BSU
import Foreign (ForeignPtr, copyBytes)
import Foreign.Ptr (plusPtr)
import GHC.Exts
import GHC.Word (Word8)
import Prelude

-- A double buffer.
data Buffer = Buffer
  { primary :: {-# UNPACK #-} !(TVar (ForeignPtr Word8, Int))
  , secondary :: {-# UNPACK #-} !(TVar (ForeignPtr Word8, Int))
  , capacity :: {-# UNPACK #-} !Int
  }

new :: Int -> (Buffer -> IO r) -> IO r
new cap _ | cap <= 0 = error "RingBuffer.new: capacity must be positive"
new cap f = do
  primary <- BSI.mallocByteString cap
  secondary <- BSI.mallocByteString cap
  primaryPointer <- newTVarIO (primary, 0)
  secondaryPointer <- newTVarIO (secondary, 0)
  let buffer = Buffer primaryPointer secondaryPointer cap
  f buffer

write :: ByteString -> Buffer -> IO ByteString
{-# INLINABLE write #-}
write bs buf = BSU.unsafeUseAsCStringLen bs (\(Ptr src#, len) -> do
  !remaining <- writePtr (Ptr src#) len buf
  pure $! BS.drop (len - remaining) bs)

writePtr :: Ptr Word8 -> Int -> Buffer -> IO Int
{-# INLINABLE writePtr #-}
writePtr src len buf
  | len <= 0 = pure 0
  | otherwise = do
      (buffer, offset, sz) <- atomically $ do
        (bufferPtr, bufferSize) <- readTVar (primary buf)
        let available = min len (capacity buf - bufferSize)
        writeTVar (primary buf) (bufferPtr, bufferSize + available)
        pure (bufferPtr, bufferSize, available)

      when (sz > 0) $ BSI.unsafeWithForeignPtr buffer $ \dst ->
        copyBytes (dst `plusPtr` offset) src sz
      pure (len - sz)

-- | SAFETY: No references to a bytestring that is returned from this function
-- should be 'live' when it is called again, that includes thunks. It is _only_
-- safe when it is used linearly. Under the hood, every bytestring returned from
-- this function comes from the same buffer, no copying is done.
unsafeToByteString :: Buffer -> IO ByteString
{-# INLINABLE unsafeToByteString #-}
unsafeToByteString buf = do
  (secondaryPtr, secondarySize) <- atomically $ do
    (primaryPtr, sz) <- readTVar (primary buf)
    (secondaryPtr, _) <- readTVar (secondary buf)
    writeTVar (primary buf) (secondaryPtr, 0)
    writeTVar (secondary buf) (primaryPtr, sz)
    pure (primaryPtr, sz)
  pure $ BSI.fromForeignPtr secondaryPtr 0 secondarySize

size :: Buffer -> IO Int
size buf = snd <$> readTVarIO (primary buf)
