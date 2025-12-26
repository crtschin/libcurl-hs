module Main where

import Control.Applicative qualified as N
import Control.Functor.Linear qualified as L
import Data.ByteString qualified as BS
import Data.Text (Text)
import Data.Text qualified as T
import Data.Unrestricted.Linear qualified as Ur
import Network.Curl.Linear.Easy
import Options.Applicative
import Prelude.Linear as L
import Streaming.Prelude.Linear qualified as L
import System.Directory
import System.IO
import System.IO.Linear qualified as Linear
import Prelude qualified as N

data Options = Options
  { url :: Text
  , output :: FilePath
  , verbose :: N.Bool
  }
  deriving (N.Show)

optionsParser :: Parser Options
optionsParser =
  Options
    N.<$> argument str (metavar "URL" N.<> help "URL to download")
    N.<*> strOption (short 'o' N.<> long "output" N.<> metavar "FILE" N.<> help "Output file path")
    N.<*> switch (short 'v' N.<> long "verbose" N.<> help "Enable verbose output")

opts :: ParserInfo Options
opts =
  info
    (optionsParser N.<**> helper)
    ( fullDesc
        N.<> progDesc "Download URL to file using libcurl"
        N.<> header "libcurl-linear-client - a simple downloader"
    )

main :: N.IO ()
main = do
  options <- execParser opts
  result <- withFile (output options) WriteMode $ \file -> do
    let streamOptions = StreamOptions (256 * 1024)
    Linear.withLinearIO $ L.do
      withCurlGlobal $ \global -> L.do
        withCurlEasy global $ \handle -> L.do
          (handle', result) <- performStream
            streamOptions
            ( handle
                & setUrl (url options)
                & setFollowLocation N.True
                & setTimeout 10
                & setVerbose (verbose options)
                & setErrorBuffer
            )
            $ \headers stream -> L.do
              let writeHandle bs = Linear.fromSystemIO $ BS.hPut file bs
              StreamResult result <- L.mapM_ writeHandle stream
              L.pure $ headers `lseq` Ur.move result
          handle' `lseq` L.pure result

  case result of
    CurlEasyResultOk -> do
      N.putStrLn $ "Downloaded " N.<> T.unpack (url options) N.<> " to " N.<> output options
    CurlEasyResultError err -> do
      removeFile (output options)
      N.putStrLn $ "Error: " N.<> errorMessage err
