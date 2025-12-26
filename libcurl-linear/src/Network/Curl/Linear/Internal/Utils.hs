module Network.Curl.Linear.Internal.Utils where

import Control.Exception (SomeException)
import Control.Functor.Linear as L
import GHC.IO qualified as N
import Prelude.Linear as L
import System.IO.Linear qualified as Linear
import Unsafe.Linear qualified as Unsafe

data ScopedResult a b = ScopedResult
  { _scoped :: !a
  , _scopedResult :: {-# UNPACK #-} !(Ur b)
  }

scopedResult :: ScopedResult a b %1 -> Ur b
scopedResult = Unsafe.toLinear $ \(ScopedResult _ r) -> r

finally :: Linear.IO (L.Ur a) -> Linear.IO () -> Linear.IO (L.Ur a)
finally action after = L.do
  result <-
    action `Linear.catch` \(e :: SomeException) -> L.do
      h <- Linear.mask_ after
      lseq h Linear.throwIO e
  Linear.mask_ after
  pure result

-- | Convert a linear IO action to a "System.IO" action.
toSystemIO :: Linear.IO a %1 -> N.IO a
toSystemIO (Linear.IO f) = N.IO $ \s -> f s
