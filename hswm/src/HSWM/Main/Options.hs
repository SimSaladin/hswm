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
import qualified PackageInfo_hswm
import           Data.Version (showVersion)

-- | Read the program arguments.
parseMainArgs :: IO Main
parseMainArgs = unwrapRecord (toText programVersion)

programVersion :: String
programVersion = "hswm " ++ showVersion PackageInfo_hswm.version

type Main = MainOptions Unwrapped

-- XXX Note: <!> seems to not work with e.g. "Last foo <?> "desc""

-- | Main entrypoint settings.
data MainOptions w = MainOptions
  { mainLogLevel  :: w ::: Last LogLevel  <#> "l" <?> "Log level (one of debug, info, warn or error)"
  , mainLogFile   :: w ::: Last FilePath  <#> "o" <?> "Send logs to a file. If empty, a default file is used. If \"-\" the log output is sent to stdout."
  , mainStateFile :: w ::: Maybe FilePath <#> "f" <?> "State file to read on restart."
  , mainVersion   :: w ::: Bool           <#> "V" <?> "Display version and exit."
  } deriving (Generic)

deriving instance Eq Main
deriving instance Show Main

-- | Defaults defined via 'Default'
instance Default Main where
  def = MainOptions
    { mainLogLevel = pure LevelDebug
    , mainLogFile = mempty
    , mainStateFile = mempty
    , mainVersion = def
    }

-- | Field modifiers: drop the @main@ prefix, use @-@ as word separator.
instance ParseRecord (MainOptions Wrapped) where
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

mkMainLogger :: MainOptions Unwrapped -> IO LoggerSet
mkMainLogger main = case getLast main.mainLogFile of
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
    "debug"   -> Just LevelDebug
    "info"    -> Just LevelInfo
    "error"   -> Just LevelError
    "warn"    -> Just LevelWarn
    "warning" -> Just LevelWarn
    _         -> Nothing
