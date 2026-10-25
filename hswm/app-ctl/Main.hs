{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-orphans #-}

module Main {-(main)-} where

import Control.Monad.Reader
import Data.Aeson qualified as A
import Data.Aeson.Encode.Pretty (encodePretty)
import Data.ByteString.Char8 qualified as BC8
import Data.ByteString.Lazy.Char8 qualified as BL
import Data.Text qualified
import Data.Text.Lazy qualified as TL
import Data.Text.Short qualified as TS
import GHC.Generics qualified as G
import HSWM.IPC
import HSWM.Main.Options as HSWM (
  AnsiColors (..),
  LogFormat,
  LogType' (..),
  defaultBufSize,
  initLoggers,
  runReadM,
 )
import Options.Applicative qualified as Options
import Options.Generic
import System.Console.Haskeline
import System.Console.Haskeline.ReaderT

progDesc :: String
progDesc = "hswmctl"

infoPrefs :: Options.InfoMod a
infoPrefs = Options.header progDesc

defaultParserPrefs :: Options.PrefsMod
defaultParserPrefs =
  Options.multiSuffix "..."
    <> Options.subparserInline
    <> Options.helpShowGlobals

main :: IO ()
main = do
  Cmdline cmd' opts' <- getRecordWith infoPrefs defaultParserPrefs :: IO (Cmdline Wrapped)
  let cmd = Options.Generic.unwrap <$> cmd'
      opts = Options.Generic.unwrap opts'
  case cmd of
    Nothing -> interactive opts
    Just req -> withConnect opts $ \sock -> do
      res <- syncRequest sock req
      io $ BL.putStrLn $ BL.pack $ prettyResponse res
  where
    withConnect opts f = withLogging (LogStderr defaultBufSize) opts.logFormat opts.colorEnable $ runLoggingT $ clientRunWith def f

interactive :: ClientOptions -> IO ()
interactive o = runInputT defaultSettings $ do
  printExt <- getExternalPrint
  withLogging (LogCallback (printExt . BC8.unpack . fromLogStr) (return ())) o.logFormat (if o.colorEnable /= ColorNever then ColorAlways else o.colorEnable) $ \logFn ->
    fromReaderT $ runRT logFn
  where
    runRT :: (Loc -> LogSource -> LogLevel -> LogStr -> IO ()) -> ReaderT (InputTEnv IO) IO ()
    runRT logFun = withReaderT (mapInputTEnv liftIO) $ mapReaderT (`runLoggingT` logFun) $ toReaderT mainCM

withLogging :: (MonadUnliftIO m) => LogType' LogStr -> LogFormat -> AnsiColors -> (_ -> m a) -> m a
withLogging logtype fmt co f = bracket (liftIO $ initLoggers logtype fmt co Nothing) (\(_, fn) -> liftIO fn) $ \(logFn, _) -> f logFn

prettyResponse :: Response -> String
prettyResponse = \case
  StateDumpResponse str -> TL.unpack str
  InternalObject value -> BL.unpack $ encodePretty value
  msg -> show msg

-- * Haskeline

type CM = InputT (LoggingT IO)

mainCM :: CM ()
mainCM = clientRun def msgHandler consoleHandler

msgHandler :: Response -> CM ()
msgHandler = \case
  StateDumpResponse str -> outputStrLn $ TL.unpack str
  Outputs{} -> return ()
  Workspaces{} -> return ()
  FocusedWindow{} -> return ()
  InternalObject value -> outputStrLn $ BL.unpack $ encodePretty value
  msg -> outputStrLn $ show msg

consoleHandler :: (Request -> CM ()) -> CM ()
consoleHandler say = forever $ do
  minput <- getInputLine ">>> "
  case minput of
    Just "" -> return ()
    Just ln -> do
      let info = Options.info (parseRecord @(Request' Wrapped)) infoPrefs
          pres = Options.execParserPure (Options.prefs defaultParserPrefs) info (words ln)
      case pres of
        Options.Success msg -> say (Options.Generic.unwrap msg)
        Options.Failure pfail -> outputStrLn $ fst $ Options.renderFailure pfail "hswm"
        _ -> return ()
    Nothing -> return ()

-- * Options.Generic parsing

data Cmdline w = Cmdline (Maybe (Request' w)) (ClientOptions' w)
  deriving (Generic)

data ClientOptions' w = ClientOptions
  { colorEnable :: w ::: AnsiColors <!> "auto" <#> "c" <?> "enable color output"
  , logFormat :: w ::: LogFormat <!> "plain" <?> "Log output"
  }
  deriving (Generic)

type ClientOptions = ClientOptions' Unwrapped
deriving instance Eq ClientOptions
deriving instance Show ClientOptions

instance ParseRecord (Cmdline Wrapped) where
  parseRecord = Cmdline <$> optional parseRecord <*> fmap G.to (genericParseRecord mods)
    where
      mods =
        lispCaseModifiers
          { fieldNameModifier = \s -> case s of
              "colorEnable" -> "color"
              _ -> lispCaseModifiers.fieldNameModifier s
          }

-- Request

instance ParseRecord (Request' Wrapped) where
  parseRecord = G.to . G.M1 <$> genericParseRecord lispCaseModifiers

-- WmCtrlAction

instance ParseRecord WmCtrlActionValue where
  parseRecord = WmCtrlActionValue . A.toJSON . Options.Generic.unwrap <$> parseRecord @(WmCtrlAction' Wrapped)
instance ParseFields WmCtrlActionValue where
  parseFields a b c d = WmCtrlActionValue . A.toJSON . Options.Generic.unwrap <$> parseFields @(WmCtrlAction' Wrapped) a b c d
instance ParseRecord (WmCtrlAction' Wrapped) where
  parseRecord = G.to . G.M1 <$> genericParseRecord lispCaseModifiers
instance ParseFields (WmCtrlAction' Wrapped) where
  parseFields _ _ _ _ = parseRecord

-- MethodName

instance ParseRecord MethodName where
  parseRecord = fmap getOnly parseRecord
instance ParseField MethodName
instance ParseFields MethodName where
  parseFields h _ _ _ =
    let proxy = Proxy :: Proxy MethodName
     in Options.argument Options.str $
          Options.metavar (metavar proxy)
            <> foldMap (Options.help . Data.Text.unpack) h

-- MethodParams

instance ParseRecord MethodParams where
  parseRecord = fmap getOnly parseRecord
instance ParseFields MethodParams where
  parseFields _ _ _ _ =
    parseField
      (Just "Arbitrary method arguments (JSON-encoded)")
      (Just "parameters")
      (Just 'p')
      (Just "{}")
instance ParseField MethodParams where
  parseField h m c d = do
    let proxy = Proxy :: Proxy MethodParams
    case m of
      Nothing -> do
        let fs =
              Options.metavar (metavar proxy)
                <> foldMap (Options.help . Data.Text.unpack) h
        Options.argument readField fs
      Just name -> do
        let fs =
              Options.metavar (metavar proxy)
                <> Options.long (Data.Text.unpack name)
                <> foldMap (Options.help . Data.Text.unpack) h
                <> foldMap Options.short c
                <> foldMap Options.value (d >>= runReadM readField)
                <> foldMap (Options.showDefaultWith . const) d
        Options.option readField fs
  readField = MethodParams <$> Options.eitherReader (A.eitherDecode . BL.pack)
  metavar _ = "JSON"

-- OutputId

instance ParseFields OutputId where
  parseFields a b c d = OutputId <$> parseFields a b c d
instance ParseRecord OutputId where
  parseRecord = OutputId <$> parseRecord

-- ShortText

instance ParseFields ShortText where
  parseFields a b c d = TS.fromString <$> parseFields a b c d
instance ParseRecord ShortText where
  parseRecord = TS.fromString <$> parseRecord

-- * Orphan instances

instance (MonadLogger m) => MonadLogger (InputT m)

instance (MonadReader r m) => MonadReader r (InputT m) where
  ask = lift ask
  local f = mapInputT $ local f

instance (MonadUnliftIO m) => MonadUnliftIO (InputT m) where
  withRunInIO inner =
    withRunInBase $ \runInBase ->
      withRunInIO $ \runInIO ->
        inner (runInIO . runInBase)
