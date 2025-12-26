{-# LANGUAGE MagicHash #-}

module Network.Curl.Linear.Internal.Buffer
  ( Buffer
  , new
  , write
  , writePtr
  , toByteString
  , capacity
  , size
  ) where

import Control.Monad (when)
import Data.Atomics
import Data.ByteString (ByteString)
import Data.ByteString qualified as BS
import Data.ByteString.Internal qualified as BSI
import Data.ByteString.Unsafe qualified as BSU
import Data.IORef (IORef, newIORef, readIORef)
import Foreign (ForeignPtr, copyBytes)
import Foreign.Ptr (plusPtr)
import GHC.Exts
import GHC.Word (Word8)
import Prelude

-- A double buffer.
data Buffer = Buffer
  { primary :: {-# UNPACK #-} !(IORef (ForeignPtr Word8, Int))
  , secondary :: {-# UNPACK #-} !(IORef (ForeignPtr Word8, Int))
  , capacity :: {-# UNPACK #-} !Int
  }

new :: Int -> (Buffer -> IO r) -> IO r
new cap _ | cap <= 0 = error "RingBuffer.new: capacity must be positive"
new cap f = do
  primary <- BSI.mallocByteString cap
  secondary <- BSI.mallocByteString cap
  primaryPointer <- newIORef (primary, 0)
  secondaryPointer <- newIORef (secondary, 0)
  let buffer = Buffer primaryPointer secondaryPointer cap
  f buffer

write :: ByteString -> Buffer -> IO ByteString
write bs buf = BSU.unsafeUseAsCStringLen bs $ \(Ptr src#, len) -> do
  remaining <- writePtr (Ptr src#) len buf
  pure $ BS.drop (len - remaining) bs

writePtr :: Ptr Word8 -> Int -> Buffer -> IO Int
writePtr src len buf
  | len <= 0 = pure 0
  | otherwise = do
      let setSize ticket = do
            let (bufferPtr, bufferSize) = peekTicket ticket
                available = min len (capacity buf - bufferSize)
            (result, next) <- casIORef (primary buf) ticket (bufferPtr, bufferSize + available)
            if result
              then pure (bufferPtr, bufferSize, available)
              else setSize next

      primaryTicket <- readForCAS (primary buf)
      (buffer, offset, sz) <- setSize primaryTicket

      when (sz > 0) $ BSI.unsafeWithForeignPtr buffer $ \dst ->
        copyBytes (dst `plusPtr` offset) src sz

      pure (len - sz)

-- | SAFETY: No references to a bytestring that is returned from this function,
-- when it is called again. It is _only_ safe when it is used linearly. Under
-- the hood, every bytestring returned from this function comes from the same
-- buffer.
toByteString :: Buffer -> IO ByteString
toByteString buf = do
  let swapBuffers buf' ticket = do
        (buffer, _) <- readIORef (secondary buf')
        (result, next) <- casIORef (primary buf') ticket (buffer, 0)
        if result
          then pure $ peekTicket ticket
          else swapBuffers buf' next
  primaryTicket <- readForCAS (primary buf)
  (secondaryPtr, secondarySize) <- swapBuffers buf primaryTicket
  pure $ BSI.fromForeignPtr secondaryPtr 0 secondarySize

size :: Buffer -> IO Int
size buf = snd <$> readIORef (primary buf)
