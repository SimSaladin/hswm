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
  { mainLogFile   :: w ::: Maybe FilePath <?> "If not logging to file, logs are sent to stdout" <!> ""
  , mainLogLevel  :: w ::: LogLevel       <?> "Log level (debug, info, warn or error)" <!> "debug"
  , mainStateFile :: w ::: Maybe FilePath <?> "State file to read on restart"
  } deriving (Generic)

instance Default (MainRun Unwrapped) where
  def = MainRun (Just "") LevelDebug Nothing

parseMainArgs :: IO (MainRun Unwrapped)
parseMainArgs = unwrapRecord "hswm"

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

mkMainLogger :: MainRun Unwrapped -> IO LoggerSet
mkMainLogger main = case main.mainLogFile of
   Nothing -> newStdoutLoggerSet defaultBufSize
   Just "" -> newFileLoggerSet defaultBufSize =<< defaultLogFile
   Just file -> newFileLoggerSet defaultBufSize file

defaultLogFile :: IO FilePath
defaultLogFile = do
  d <- getXdgDirectory XdgData "hswm"
  createDirectoryIfMissing True d
  return $ d ++ "/" ++ "hswm.log"
