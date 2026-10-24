{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-orphans #-}

module Main {-(main)-} where

import Control.Monad.Reader
import Data.ByteString.Char8 qualified as BC8
import Data.ByteString.Lazy.Char8 qualified as BL
import Data.Text qualified
import Data.Text.Lazy qualified as TL
import GHC.Generics qualified as G
import HSWM.IPC hiding (unwrap)
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

-- import           Prettyprinter
-- import           Prettyprinter.Render.Terminal

import Data.Aeson qualified as A
import Data.Aeson.Encode.Pretty (encodePretty)
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

data Cmdline w = Cmdline (Maybe (Request' w)) (ClientOptions' w)
  deriving (Generic)

instance ParseRecord (Request' Wrapped)

instance ParseRecord (Cmdline Wrapped) where
  parseRecord =
    Cmdline
      <$> optional (fmap (G.to . G.M1) (genericParseRecord mods))
      <*> fmap G.to (genericParseRecord mods)
    where
      mods = lispCaseModifiers
          { fieldNameModifier = \s -> case s of
                                        "colorEnable" -> "color"
                                        _ -> lispCaseModifiers.fieldNameModifier s
          }

data ClientOptions' w = ClientOptions
  { colorEnable :: w ::: AnsiColors <!> "auto" <#> "c" <?> "enable color output"
  , logFormat :: w ::: LogFormat <!> "plain" <?> "Log output"
  }
  deriving (Generic)

type ClientOptions = ClientOptions' Unwrapped
deriving instance Eq ClientOptions
deriving instance Show ClientOptions

instance ParseRecord MethodName
instance ParseField MethodName where
instance ParseFields MethodName where
    parseFields h _ _ _ =
        let proxy = Proxy :: Proxy MethodName in
        Options.argument Options.str $
            Options.metavar (metavar proxy)
            <> foldMap (Options.help . Data.Text.unpack) h

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

main :: IO ()
main = do
  Cmdline cmd' opts' <- getRecordWith infoPrefs defaultParserPrefs :: IO (Cmdline Wrapped)
  let cmd = fmap unwrap cmd'
      opts = unwrap opts'
  runMode opts cmd
  where
    runMode opts Nothing = interactive opts
    runMode opts (Just req) = withConnect opts $ \sock -> do
      res <- syncRequest sock req
      io $ BL.putStrLn $ BL.pack $ prettyResponse res

    withConnect opts f = withLogging (LogStderr defaultBufSize) opts.logFormat opts.colorEnable $ runLoggingT $ clientRunWith def f

withLogging :: (MonadUnliftIO m) => LogType' LogStr -> LogFormat -> AnsiColors -> (_ -> m a) -> m a
withLogging logtype fmt co f =
  bracket
    (liftIO $ initLoggers logtype fmt co Nothing)
    (\(_, fn) -> liftIO fn)
    $ \(logFn, _) -> f logFn

interactive :: ClientOptions -> IO ()
interactive o = runInputT defaultSettings $ do
  printExt <- getExternalPrint
  withLogging (LogCallback (printExt . BC8.unpack . fromLogStr) (return ())) o.logFormat (if o.colorEnable /= ColorNever then ColorAlways else o.colorEnable) $ \logFn ->
    fromReaderT $ runRT logFn

type CM = InputT (LoggingT IO)

runRT :: (Loc -> LogSource -> LogLevel -> LogStr -> IO ()) -> ReaderT (InputTEnv IO) IO ()
runRT logFun =
  withReaderT (mapInputTEnv liftIO) $
    mapReaderT (`runLoggingT` logFun) $
      toReaderT mainCM

mainCM :: CM ()
mainCM = clientRun def msgHandler consoleHandler

prettyResponse :: Response -> String
prettyResponse = \case
  StateDumpResponse str -> TL.unpack str
  InternalObject value -> BL.unpack $ encodePretty value
  --Error msg -> "error: " ++ T.unpack msg
  msg -> show msg

msgHandler :: Response -> CM ()
msgHandler = \case
  StateDumpResponse str -> outputStrLn $ TL.unpack str
  Outputs{} -> return ()
  Workspaces{} -> return ()
  FocusedWindow{} -> return ()
  InternalObject value -> outputStrLn $ BL.unpack $ encodePretty value
  --Error msg -> outputStrLn $ T.unpack msg
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
        Options.Success msg -> say (unwrap msg)
        Options.Failure pfail -> outputStrLn $ fst $ Options.renderFailure pfail "hswm"
        _ -> return ()
    Nothing -> return ()

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
