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
import           System.Environment (executablePath)
import qualified System.Log.FastLogger as FastLogger
import qualified Control.Monad.Logger as MonadLog
import qualified Data.Aeson as A
import qualified Data.Aeson.Text as A
import qualified Data.Aeson.KeyMap as A
import qualified Data.Aeson.Types as A
import qualified Prettyprinter as PP
import           Prettyprinter.Instances ()
import qualified Prettyprinter.Render.Terminal as PP

-- | Read the program arguments.
parseMainArgs :: IO Main
parseMainArgs = unwrapRecord (toText programVersion)

programVersion :: String
programVersion = "hswm " ++ showVersion PackageInfo_hswm.version

type Main = MainOptions Unwrapped

-- XXX Note: <!> seems to not work with e.g. "Last foo <?> "desc""

-- | Main entrypoint settings.
data MainOptions w = MainOptions
  { mainLogLevel  :: w ::: Last LogLevel  <#> "l" <?> "Log level [debug,info,warn,error]"
  , mainLogFile   :: w ::: Last FilePath  <#> "o" <?> "Send logs to a file. If empty, a default file is used. If \"-\" the log output is sent to stdout."
  , mainLogFormat :: w ::: Last LogFormat         <?> "Which log format use [plain,json]"
  , mainColor     :: w ::: Last AnsiColors        <?> "Whether to enable color output in plain format mode"
  , mainStateFile :: w ::: Maybe FilePath <#> "f" <?> "State file to read on restart."
  , mainVersion   :: w ::: Bool           <#> "V" <?> "Display version and exit."
  , mainStateSave :: w ::: Integer        <?> "Save the state to file every X minutes. Disabled if <=0"
  } deriving (Generic)

deriving instance Eq Main
deriving instance Show Main

-- | Defaults defined via 'Default'
instance Default Main where
  def = MainOptions
    { mainLogLevel  = pure LevelDebug
    , mainLogFile   = mempty
    , mainLogFormat = pure LogFormatJSON
    , mainColor     = mempty
    , mainStateFile = mempty
    , mainVersion   = def
    , mainStateSave = 30
    }

data AnsiColors = ColorAuto | ColorNever | ColorAlways
  deriving (Eq, Ord, Show, Read, Generic)

instance ParseField AnsiColors where
  readField = Opts.maybeReader $ \case
    ""        -> Just ColorAuto
    "auto"    -> Just ColorAuto
    "never"   -> Just ColorNever
    "no"      -> Just ColorNever
    "yes"     -> Just ColorAlways
    "always"  -> Just ColorAlways
    _         -> Nothing

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

initLoggers
  :: MainOptions Unwrapped
  -> IO (LogType, Loc -> LogSource -> LogLevel -> LogStr -> IO (), IO ())
initLoggers options = do
  logType <- mainLogType options
  case getLast options.mainLogFormat of
    Just LogFormatJSON -> do
      (lgr, clean) <- newFastLogger logType
      let lgrFun = defaultOutputWith $ defaultOutputOptions $ \_ -> lgr . toLogStr
      return (logType, lgrFun, clean)

    Just LogFormatPLAIN -> do
      getTime <- FastLogger.newTimeCache FastLogger.simpleTimeFormat'
      (timedLog, clean) <- newTimedFastLogger getTime logType
      let hasColor = case fromMaybe ColorAuto $ getLast options.mainColor of
                         ColorAlways -> True
                         ColorNever -> False
                         ColorAuto -> case logType of
                                        LogStdout{} -> True
                                        LogStderr{} -> True
                                        _           -> False
      let lgrFun loc src lvl msg
            | hasColor = timedLog $ \time ->
                  toLogStr (PP.renderLazy $ PP.layoutPretty lopts $ PP.hsep
                    [ PP.annotate (PP.colorDull PP.Yellow) $ PP.pretty time
                    , PP.brackets $ ppLevel lvl
                    , unJSON msg PP.pretty (PP.annotate (PP.colorDull PP.Green) . PP.pretty . A.encodeToLazyText) (PP.pretty . fromLogStr)
                    , PP.annotate (PP.colorDull PP.Cyan) $ PP.pretty $ fileLocStr loc
                    ]) <> "\n"

            | otherwise = timedLog $ \time ->
              toLogStr time <> " " <>
              MonadLog.defaultLogStr loc src lvl (unJSON msg toLogStr (toLogStr . A.encode) id)

      return (logType, lgrFun, clean)
    _ -> error "loggerOutput"
  where
    lopts = PP.defaultLayoutOptions { PP.layoutPageWidth = PP.Unbounded }
    ppLevel = \case
      LevelError   -> PP.annotate (PP.colorDull PP.Red)     "ERR"
      LevelWarn    -> PP.annotate (PP.colorDull PP.Yellow)  "WRN"
      LevelInfo    -> PP.annotate (PP.colorDull PP.Blue)    "INF"
      LevelDebug   -> PP.annotate (PP.colorDull PP.Cyan)    "DBG"
      LevelOther x -> PP.annotate (PP.colorDull PP.Magenta) $ PP.pretty x

    unJSON :: (Monoid x, IsString x)
           => LogStr
           -> (Text -> x)
           -> (A.KeyMap A.Value -> x)
           -> (LogStr -> x)
           -> x
    unJSON bs f g backup
      | Just (val :: A.Value) <- A.decodeStrict $ fromLogStr bs
      , Just (txt :: Text, mmeta :: Maybe A.Object) <- A.parseMaybe parse val
      = f txt <> maybe mempty ((" " <>) . g) mmeta
      | otherwise = backup bs

    parse = A.withObject "LogMsg" $ \v -> do
      txt  <- v A..: "text"
      meta <- v A..:? "meta"
      return (txt, meta)

    -- taken from file-location package
    -- turn the TH Loc loaction information into a human readable string
    -- leaving out the loc_end parameter
    fileLocStr loc = loc_package loc ++ ':' : loc_module loc ++
      ' ' : loc_filename loc ++ ':' : line loc ++ ':' : char loc
      where
        line = show . fst . loc_start
        char = show . snd . loc_start

mainLogType :: MainOptions Unwrapped -> IO LogType
mainLogType config = do
  case getLast config.mainLogFile of
    Just dst | dst == "-" || dst == "/dev/stdout" -> pure $ LogStdout defaultBufSize
             | dst == "/dev/stderr" -> pure $ LogStderr defaultBufSize
             | otherwise -> fileSpec dst
    Nothing -> defaultLogFile >>= fileSpec
  where
    fileSpec file = return $ LogFile (FileLogSpec file (1024 * 1024 * 25) 3) defaultBufSize

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
    "warn"    -> Just LevelWarn
    "warning" -> Just LevelWarn
    "error"   -> Just LevelError
    _         -> Nothing

data LogFormat = LogFormatJSON
               | LogFormatPLAIN
               deriving (Eq, Ord, Enum, Show, Read)

instance ParseField LogFormat where
  readField = Opts.maybeReader $ \case
    "json"  -> Just LogFormatJSON
    "plain" -> Just LogFormatPLAIN
    _       -> Nothing

-- * Misc.

-- | Default executable for restart via executeFile
getProgramPath :: IO FilePath
getProgramPath = lookupEnv "HSWM_EXECUTABLE" >>= \case
  Just x -> return x
  Nothing
    | Just getExe <- executablePath -> do
        x <- fromMaybe (error "restart: unable to get program path") <$> getExe
        setEnv "HSWM_EXECUTABLE" x
        return x
    | otherwise -> error "restart: unable to resolve program path"
