{-# OPTIONS_GHC -Wno-orphans #-}

-- |
-- Module      : HSWM.Main.Options
-- Description : Main command-line options parsing
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Main.Options (
  module HSWM.Main.Options,
  FastLogger,
  LogType' (..),
  defaultBufSize,
  Last (..),
) where

import Control.Monad.Trans.Except (runExcept)
import Data.Aeson qualified as A
import Data.Aeson.Key qualified as A.Key
import Data.Aeson.KeyMap qualified as A
import Data.Aeson.Text qualified as A
import Data.Aeson.Types qualified as A
import Data.List qualified as L
import Data.Text qualified as T
import Data.Text.Encoding (decodeUtf8)
import Data.Text.Lazy qualified as TL
import Data.Version (showVersion)
import Options.Applicative qualified as Opts
import Options.Applicative.Types qualified as Opts
import Options.Generic
import PackageInfo_hswm qualified
import Prettyprinter qualified as PP
import Prettyprinter.Instances ()
import Prettyprinter.Render.Terminal qualified as PP
import System.Environment (executablePath)
import System.Log.FastLogger
import System.Log.FastLogger qualified as FastLogger

-- * Main

type Main = MainOptions Unwrapped

-- | Main entrypoint settings.
data MainOptions w = MainOptions
  { mainVersion :: w ::: Bool <#> "V" <?> "Display version and exit."
  , mainStateSave :: w ::: Integer <!> "30" <?> "Save the state to file every X minutes. Disabled if <=0"
  , mainStateFile :: w ::: Maybe FilePath <#> "f" <?> "State file to read on restart."
  , mainColor :: w ::: AnsiColors <!> "auto" <?> "Whether to enable color output in plain format mode"
  , mainLogFormat :: w ::: LogFormat <!> "json" <?> "Which log format use [plain,json]"
  , mainLogLevel :: w ::: Last LogLevel <#> "l" <?> "Log level [debug,info,warn,error]"
  , mainLogFile :: w ::: Last FilePath <#> "o" <?> "Send logs to a file. If empty, a default file is used. If \"-\" the log output is sent to stdout."
  }
  deriving (Generic)

deriving instance Eq Main
deriving instance Show Main

-- | Field modifiers: drop the @main@ prefix, use @-@ as word separator.
instance ParseRecord (MainOptions Wrapped) where
  parseRecord =
    parseRecordWithModifiers
      lispCaseModifiers
        { fieldNameModifier = \name ->
            lispCaseModifiers.fieldNameModifier $
              fromMaybe name (L.stripPrefix "main" name)
        }

-- | Read the program arguments.
parseMainArgs :: IO Main
parseMainArgs = unwrapRecord (toText programVersion)

mainLogType :: MainOptions Unwrapped -> IO LogType
mainLogType config = do
  case getLast config.mainLogFile of
    Just dst
      | dst == "-" || dst == "/dev/stdout" -> pure $ LogStdout defaultBufSize
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

-- | Default executable for restart via executeFile
getProgramPath :: IO FilePath
getProgramPath =
  lookupEnv "HSWM_EXECUTABLE" >>= \case
    Just x -> return x
    Nothing
      | Just getExe <- executablePath -> do
          x <- fromMaybe (error "restart: unable to get program path") <$> getExe
          setEnv "HSWM_EXECUTABLE" x
          return x
      | otherwise -> error "restart: unable to resolve program path"

programVersion :: String
programVersion = "hswm " ++ showVersion PackageInfo_hswm.version

-- * Optparse options

-- ** Last1

newtype Last1 field = Last1 {getLast1 :: field}
  deriving (Eq, Show, Generic)

instance forall a. (ParseField a) => ParseFields (Last1 a) where
  parseFields h m c d =
    case m of
      Just name ->
        let fs =
              Opts.metavar (metavar (Proxy :: Proxy a))
                <> Opts.long (T.unpack name)
                <> foldMap (Opts.help . T.unpack) h
                <> foldMap Opts.short c
                <> foldMap (Opts.showDefaultWith . const) d
            fsD = fs <> foldMap Opts.value (d >>= runReadM readField)
            parse1 = Opts.option readField (fs <> Opts.internal)
         in (\x xs -> Last1 . fromMaybe x . getLast $ mconcat xs)
              <$> Opts.option readField fsD
              <*> (many . fmap (Last . Just)) parse1
      Nothing -> Last1 <$> parseField h m c d

instance (ParseField a) => ParseRecord (Last1 a) where
  parseRecord = fmap getOnly parseRecord

-- | a readMaybe using provided ReadM
runReadM :: Opts.ReadM a -> String -> Maybe a
runReadM r s =
  either (const Nothing) Just $
    runExcept (runReaderT (Opts.unReadM r) s)

-- ** LogLevel

instance ParseField LogLevel where
  readField = Opts.maybeReader $ \case
    "debug" -> Just LevelDebug
    "info" -> Just LevelInfo
    "warn" -> Just LevelWarn
    "warning" -> Just LevelWarn
    "error" -> Just LevelError
    _ -> Nothing

-- ** LogFormat

data LogFormat
  = LogFormatJSON
  | LogFormatPLAIN
  deriving (Eq, Ord, Enum, Bounded, Show, Read, Generic, Data)

instance ParseField LogFormat where
  readField = Opts.maybeReader $ \case
    "json" -> Just LogFormatJSON
    "plain" -> Just LogFormatPLAIN
    _ -> Nothing

instance ParseFields LogFormat where
  parseFields h m c d = getLast1 <$> parseFields h m c d

instance ParseRecord LogFormat where
  parseRecord = fmap getOnly parseRecord

-- ** AnsiColors

data AnsiColors = ColorAuto | ColorNever | ColorAlways
  deriving (Eq, Ord, Show, Read, Generic)

instance Default AnsiColors where
  def = ColorAuto

instance ParseField AnsiColors where
  readField = Opts.maybeReader $ \case
    "" -> Just ColorAuto
    "auto" -> Just ColorAuto
    "never" -> Just ColorNever
    "no" -> Just ColorNever
    "off" -> Just ColorNever
    "yes" -> Just ColorAlways
    "on" -> Just ColorAlways
    "always" -> Just ColorAlways
    _ -> Nothing

instance ParseFields AnsiColors where
  parseFields h m c d = getLast1 <$> parseFields h m c d

instance ParseRecord AnsiColors where
  parseRecord = fmap getOnly parseRecord

-- * Logging

initLoggers ::
  LogType
  -> LogFormat
  -> AnsiColors
  -- ^ Enable color output if terminal?
  -> Maybe LogLevel
  -- ^ Filter by log level
  -> IO (Loc -> LogSource -> LogLevel -> LogStr -> IO (), IO ())
initLoggers logType logFormat ansiColors mbLogLevel = do
  case logFormat of
    LogFormatJSON -> do
      (lgr, clean) <- newFastLogger logType
      let lgrFun = defaultOutputWith $ defaultOutputOptions $ \_ bs -> lgr $ toLogStr bs <> "\n"
      return (withFilter lgrFun, clean)
    LogFormatPLAIN -> do
      getTime <- FastLogger.newTimeCache FastLogger.simpleTimeFormat'
      (timedLog, clean) <- newTimedFastLogger getTime logType
      let lgrFun loc src lvl msg = timedLog $ \time ->
            let (txt, meta) = parseMessage msg
             in toLogStr (ppLogMessage hasColor loc src lvl txt meta time) <> "\n"

      return (withFilter lgrFun, clean)
  where
    withFilter f
      | Just lvl <- mbLogLevel = \lo so lv str -> when (lvl <= lv) (f lo so lv str)
      | otherwise = f

    hasColor
      | ColorAlways <- ansiColors = True
      | ColorNever <- ansiColors = False
      | LogStdout{} <- logType = True
      | LogStderr{} <- logType = True
      | otherwise = False

    parseMessage :: LogStr -> (Text, Maybe A.Object)
    parseMessage bs
      | Just (val :: A.Value) <- A.decodeStrict $ fromLogStr bs
      , Just (txt :: Text, meta :: Maybe A.Object) <- A.parseMaybe parse val =
          (txt, meta)
      | otherwise = (decodeUtf8 $ fromLogStr bs, Nothing)
      where
        parse = A.withObject "LogMsg" $ \v -> do
          txt <- v A..: "text"
          meta <- v A..:? "meta"
          return (txt, meta)

ppLogMessage ::
  Bool
  -> Loc
  -> Text
  -> LogLevel
  -> Text
  -> Maybe A.Object
  -> ByteString
  -> TL.Text
ppLogMessage hasColor loc src lvl txt meta time =
  PP.renderLazy $
    layout $
      PP.hsep
        [ annotate (PP.colorDull PP.Yellow) $ PP.pretty time
        , PP.brackets $ ppLevel lvl <> (if src /= "" then "#" <> PP.pretty src else "")
        , PP.pretty txt <> maybe "" ppMeta meta
        , annotate (PP.colorDull PP.Cyan) $ PP.pretty fileLocStr
        ]
  where
    layout =
      if hasColor
        then PP.layoutPretty PP.defaultLayoutOptions{PP.layoutPageWidth = PP.Unbounded}
        else PP.layoutCompact
    annotate = PP.annotate

    ppLevel = \case
      LevelError -> annotate (PP.colorDull PP.Red) "ERR"
      LevelWarn -> annotate (PP.colorDull PP.Yellow) "WRN"
      LevelInfo -> annotate (PP.colorDull PP.Blue) "INF"
      LevelDebug -> annotate (PP.colorDull PP.Cyan) "DBG"
      LevelOther x -> annotate (PP.colorDull PP.Magenta) $ PP.pretty x

    ppMeta = ppKM ""
      where
        ppKM p = A.foldMapWithKey $ \k v -> case v of
          A.Object inner -> ppKM (A.Key.toText k <> ".") inner
          _ ->
            " "
              <> annotate (PP.colorDull PP.Green) (PP.pretty $ p <> A.Key.toText k)
              <> "="
              <> annotate (PP.color PP.Green) (PP.pretty $ A.encodeToLazyText v)

    -- taken from file-location package
    -- turn the Loc TH location information into a human readable string
    -- leaving out the loc_end parameter
    fileLocStr =
      "@("
        ++ loc_package loc
        ++ ':'
        : loc_module loc
        ++ ' '
        : loc_filename loc
        ++ ':'
        : line loc
        ++ ':'
        : char loc
        ++ ")"
      where
        line = show . fst . loc_start
        char = show . snd . loc_start
