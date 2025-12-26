module Main where

import Test.Network.Curl.Linear qualified as Linear
import Test.Network.Curl.Linear.Internal.Buffer qualified as Buffer
import Test.Sandwich
import Prelude

main :: IO ()
main = runSandwich defaultOptions $ do
  Linear.tests
  Buffer.tests
