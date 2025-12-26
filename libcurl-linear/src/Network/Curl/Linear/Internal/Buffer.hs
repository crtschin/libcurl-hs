{-# LANGUAGE MagicHash #-}

module Network.Curl.Linear.Internal.Buffer
  ( Buffer
  , new
  , write
  , writePtr
  , toByteString
  , capacity
  , size

    -- * Testing
  , c_getpagesize
  ) where

import Control.Concurrent.STM
import Control.Exception (bracket)
import Control.Monad (when)
import Data.ByteString (ByteString)
import Data.ByteString qualified as BS
import Data.ByteString.Internal qualified as BSI
import Data.ByteString.Unsafe qualified as BSU
import Foreign (ForeignPtr, castPtr, copyBytes, nullPtr)
import Foreign.C
import Foreign.Ptr (plusPtr)
import GHC.Exts
import GHC.IO (finally)
import GHC.Word (Word8)
import MMAP
import System.Posix
import Prelude

-- A circular buffer using virtual memory.
data Buffer = Buffer
  { bufPtr :: {-# UNPACK #-} !(Ptr Word8)
  , scratchPtr :: {-# UNPACK #-} !(ForeignPtr Word8)
  , bufCap :: {-# UNPACK #-} !Int
  , bufHead :: {-# UNPACK #-} !(TVar Int)
  , bufTail :: {-# UNPACK #-} !(TVar Int)
  }

foreign import ccall unsafe "getpagesize" c_getpagesize :: IO CInt

-- | Aligns a size to the nearest page size multiple.
alignToPageSize :: Int -> Int -> Int
alignToPageSize pageSize sz = ((sz + pageSize - 1) `div` pageSize) * pageSize

new :: Int -> (Buffer -> IO r) -> IO r
new cap _ | cap <= 0 = error "RingBuffer.new: capacity must be positive"
new cap f = do
  -- Ensure capacity is page-aligned, necessary for efficient virtual memory usage.
  scratch <- BSI.mallocByteString cap
  pageSize <- fromIntegral <$> c_getpagesize :: IO Int

  let bufferCapacity = max pageSize (alignToPageSize pageSize cap)
  let totalCapacity = bufferCapacity * 2
      withFd fp = bracket (openFd fp ReadWrite defaultFileFlags) closeFd

  -- Open anonymous file descriptor, that'll be mmap'ed
  ptr <- withFd "/dev/zero" $ \fd -> do
    let offset = 0

    ptr <-
      mmap
        nullPtr
        (fromIntegral totalCapacity)
        (protRead <> protWrite)
        (mkMmapFlags mapPrivate mapNoreserve)
        fd
        offset

    when (ptr == nullPtr) $ error "RingBuffer.new: mmap failed to allocate primary region."
    munmap (ptr `plusPtr` bufferCapacity) (fromIntegral bufferCapacity)

    let targetPtr2 = ptr `plusPtr` bufferCapacity
    _ <-
      mmap
        targetPtr2
        (fromIntegral bufferCapacity)
        (protRead <> protWrite)
        (mkMmapFlags mapShared mapFixed)
        fd
        (fromIntegral offset)

    pure ptr

  tailRef <- newTVarIO 0
  headRef <- newTVarIO 0
  let buffer =
        Buffer
          { bufPtr = castPtr ptr
          , scratchPtr = scratch
          , bufCap = bufferCapacity
          , bufHead = headRef
          , bufTail = tailRef
          }
  f buffer `finally` munmap (castPtr (bufPtr buffer)) (fromIntegral totalCapacity)

write :: ByteString -> Buffer -> IO ByteString
write bs buf = BSU.unsafeUseAsCStringLen bs $ \(Ptr src#, len) -> do
  remaining <- writePtr (Ptr src#) len buf
  pure $ BS.drop (len - remaining) bs

writePtr :: Ptr Word8 -> Int -> Buffer -> IO Int
writePtr src len buf
  | len <= 0 = pure 0
  | otherwise = do
      let cap = bufCap buf
      (offset, n) <- atomically $ do
        h <- readTVar (bufHead buf)
        let available = cap - h
            n = min available len
        when (n > 0) $ do
          writeTVar (bufHead buf) (h + n)
        pure (h, n)

      when (n > 0) $
        copyBytes (bufPtr buf `plusPtr` offset) src n
      pure (len - n)

-- | Safety: No references to a bytestring that is returned from this function,
-- when it is called again. It is _only_ safe when it is used linearly. Under
-- the hood, every bytestring returned from this function comes from the same
-- buffer.
toByteString :: Buffer -> IO ByteString
toByteString buf = do
  (sz, offset) <- atomically $ do
    h <- readTVar (bufHead buf)
    t <- readTVar (bufTail buf)
    writeTVar (bufTail buf) 0
    writeTVar (bufHead buf) 0
    let sz = if h >= t then h - t else bufCap buf - (t - h)
    pure (sz, t)

  if sz == 0
    then pure mempty
    else do
      BSI.unsafeWithForeignPtr (scratchPtr buf) $ \dst ->
        copyBytes dst (bufPtr buf `plusPtr` offset) sz
      pure $ BSI.fromForeignPtr (scratchPtr buf) 0 sz

capacity :: Buffer -> Int
capacity = bufCap

size :: Buffer -> IO Int
size buf =
  atomically $ do
    h <- readTVar (bufHead buf)
    t <- readTVar (bufTail buf)
    pure $ if h >= t then h - t else bufCap buf - (t - h)
