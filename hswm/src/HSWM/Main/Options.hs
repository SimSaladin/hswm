{-# OPTIONS_GHC -Wno-orphans #-}
-- |
-- Module      : HSWM.Main.Options
-- Description : Main command-line options parsing
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Main.Options where

import           Data.Char
import qualified Data.List as L
import qualified Options.Applicative as Opts
import           Options.Generic
import           System.Log.FastLogger

-- | Main entrypoint settings.
data MainRun w = MainRun
  { mainLogFile   :: w ::: Maybe FilePath <#> "o" <?> "Send logs to a file. If empty, a default file is used. If \"-\" the log output is sent to stdout."
  , mainLogLevel  :: w ::: LogLevel       <#> "l" <?> "Log level (one of debug, info, warn or error)" <!> "debug"
  , mainStateFile :: w ::: Maybe FilePath <#> "f" <?> "State file to read on restart."
  } deriving (Generic)

-- | Read the program arguments.
parseMainArgs :: IO (MainRun Unwrapped)
parseMainArgs = unwrapRecord "hswm"

-- | Defaults defined via 'Default'
instance Default (MainRun Unwrapped) where
  def = MainRun
    { mainLogFile = Nothing
    , mainLogLevel = LevelDebug
    , mainStateFile = Nothing
    }

-- | Field modifiers: drop the @main@ prefix, use @-@ as word separator.
instance ParseRecord (MainRun Wrapped) where
  parseRecord = parseRecordWithModifiers defaultModifiers
    { fieldNameModifier = \name -> fromCC $ fromMaybe name (L.stripPrefix "main" name) }
      where
        fromCC :: String -> String
        fromCC     [] = []
        fromCC (x:xs) = go (toLower x : xs)
          where
            go (y:ys) | isUpper y = '-' : toLower y : go ys
                      | otherwise = y : go ys
            go     []             = []

-- * Logging

mkMainLogger :: MainRun Unwrapped -> IO LoggerSet
mkMainLogger main = case main.mainLogFile of
    Just dst | dst == "-" || dst == "/dev/stdout" -> newStdoutLoggerSet defaultBufSize
    Just dst -> newFileLoggerSet defaultBufSize dst
    Nothing -> newFileLoggerSet defaultBufSize =<< defaultLogFile

defaultLogFile :: IO FilePath
defaultLogFile = do
  d <- getXdgDirectory XdgData "hswm"
  createDirectoryIfMissing True d
  return $ d ++ "/" ++ "hswm.log"

instance ParseField LogLevel where
  readField = Opts.maybeReader $ \case
    "debug" -> Just LevelDebug
    "info"  -> Just LevelInfo
    "error" -> Just LevelError
    "warn"  -> Just LevelWarn
    _       -> Nothing
instance ParseFields LogLevel
instance ParseRecord LogLevel where
  parseRecord = fmap getOnly parseRecord
