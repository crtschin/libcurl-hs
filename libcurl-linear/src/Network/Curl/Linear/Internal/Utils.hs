module Network.Curl.Linear.Internal.Utils where

import Control.Exception (SomeException)
import Control.Functor.Linear as L
import GHC.IO qualified as N
import Prelude.Linear as L
import System.IO.Linear qualified as Linear

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
