{-# LANGUAGE ExtendedDefaultRules #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-type-defaults #-}

-- |
-- Module      : Main
-- Description : Main file for the hswmctl CLI interface
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module Main (main) where

import Control.Monad.Reader
import Data.Aeson qualified as A
import Data.Aeson.Encode.Pretty (encodePretty)
import Data.ByteString.Char8 qualified as BC8
import Data.ByteString.Lazy.Char8 qualified as BL
import Data.Text qualified
import Data.Text.Lazy qualified as TL
import Data.Text.Short qualified as TS
import Data.Version (showVersion)
import GHC.Generics
import GHC.Generics qualified as G
import HSWM.IPC
import HSWM.Main.Options as HSWM (
  AnsiColors (..),
  LogFormat,
  LogType' (..),
  defaultBufSize,
  initLoggers,
  parseFieldWith,
  runReadM,
 )
import HSWM.Main.Options qualified as HSWM
import HSWM.Util.Process
import Options.Applicative qualified as Options
import Options.Applicative.Help.Pretty as OP
import Options.Generic
import System.Console.Haskeline
import System.Console.Haskeline.ReaderT

default (String)

infoPrefs :: Options.InfoMod a
infoPrefs =
  Options.headerDoc (Just header)
    <> Options.footerDoc (Just footer)
    <> Options.progDescDoc (Just progdesc)
  where
    header =
      OP.pretty "Client and CLI for the HsWM window manager"

    footer =
      OP.pretty name
        OP.<+> OP.pretty (showVersion version)
        OP.<+> "-"
        OP.<+> OP.pretty synopsis
        OP.<+> OP.pretty homepage
        OP.<+> OP.parens (OP.pretty copyright)

    progdesc =
      OP.pretty "Run with no arguments to enter the REPL interactive mode."
        <> OP.hardline
        <> OP.pretty "By default this program will attempt to contact the WM at:"
        OP.<+> OP.pretty (show (def :: ClientConfig))

    (name, synopsis, version, copyright, homepage) = packageInfo

defaultParserPrefs :: Options.PrefsMod
defaultParserPrefs =
  Options.multiSuffix "..."
    <> Options.subparserInline
    <> Options.helpShowGlobals
    <> Options.helpLongEquals
    <> Options.columns 98

main :: (HasCallStack) => IO ()
main = do
  Cmdline cmd' opts' <- getRecordWith infoPrefs defaultParserPrefs :: IO (Cmdline Wrapped)
  let cmd = unwrapCmd <$> cmd'
      opts = Options.Generic.unwrap opts'
  case cmd of
    Nothing -> interactive opts
    Just req -> do
      withConnect opts $ \sock -> do
        res <- syncRequest sock req
        displayResponse opts res

runCompleteQuery :: Request -> IO Response
runCompleteQuery req = withConnect opts $ \sock -> do
  syncRequest sock req
  where
    opts :: ClientOptions
    opts =
      ClientOptions
        { colorEnable = ColorNever
        , pager = Switch False
        , logFormat = HSWM.LogFormatPLAIN
        , logLevel = Just LevelError
        }

unwrapCmd :: Request' Wrapped Wrapped -> Request' Unwrapped Unwrapped
unwrapCmd = G.to . genericUnwrap . G.from . Options.Generic.unwrap

class GenericUnwrappable f f' where
  genericUnwrap :: f p -> f' p

instance GenericUnwrappable U1 U1 where
  genericUnwrap = id

instance (GenericUnwrappable f f') => GenericUnwrappable (M1 i c f) (M1 i c f') where
  genericUnwrap = M1 . genericUnwrap . unM1

instance (GenericUnwrappable f f', GenericUnwrappable g g') => GenericUnwrappable (f :+: g) (f' :+: g') where
  genericUnwrap (L1 f) = L1 (genericUnwrap f)
  genericUnwrap (R1 g) = R1 (genericUnwrap g)

instance (GenericUnwrappable f f', GenericUnwrappable g g') => GenericUnwrappable (f :*: g) (f' :*: g') where
  genericUnwrap (f :*: g) = genericUnwrap f :*: genericUnwrap g

instance GenericUnwrappable (K1 i c) (K1 i c) where
  genericUnwrap = id

instance (Unwrappable f) => GenericUnwrappable (K1 i (f Wrapped)) (K1 i (f Unwrapped)) where
  genericUnwrap (K1 c) = K1 (Options.Generic.unwrap c)

withConnect :: (HasCallStack, _) => _ -> ((HasCallStack) => _) -> _
withConnect opts f = withLogging (LogStderr defaultBufSize) opts.logLevel opts.logFormat opts.colorEnable $ \logFn -> do
  flip runLoggingT logFn $ clientRunWith def f

withLogging ::
  (HasCallStack, MonadMask m, MonadUnliftIO m) =>
  LogType' LogStr
  -> Maybe LogLevel
  -- ^ level filtering
  -> LogFormat
  -> AnsiColors
  -> ((HasCallStack) => _ -> m a)
  -> m a
withLogging logtype logfilter fmt co f =
  bracket (liftIO $ initLoggers logtype fmt co logfilter) (\(_, fn) -> liftIO fn) $
    \(logFn, _) -> f logFn

interactive :: ClientOptions -> IO ()
interactive o = runInputT defaultSettings $ do
  printExt <- getExternalPrint
  withLogging (LogCallback (printExt . BC8.unpack . fromLogStr) (return ())) Nothing o.logFormat (if o.colorEnable /= ColorNever then ColorAlways else o.colorEnable) $ \logFn ->
    fromReaderT $ runRT logFn
  where
    runRT :: (Loc -> LogSource -> LogLevel -> LogStr -> IO ()) -> ReaderT (InputTEnv IO) IO ()
    runRT logFun = withReaderT (mapInputTEnv liftIO) $ mapReaderT (`runLoggingT` logFun) $ toReaderT mainCM

-- | Either display directly if short or launch in a pager.
displayResponse :: (_) => _ -> Response -> _ ()
displayResponse opts res = do
  let (hl, raw) = case res of
        StateDumpResponse str -> ("haskell", TL.unpack str)
        InternalObject val -> ("json", BL.unpack $ encodePretty val)
        msg -> ("", show msg)
  if not opts.pager.unwrap || length raw < 500
    then io $ BL.putStrLn $ BL.pack raw
    else
      io $
        runProcess_ $
          setStdin (byteStringInput (fromString raw)) $
            setStdout inherit $
              setStderr inherit $
                proc "bat" $
                  ["--language=" ++ hl | hl /= ""]
                    ++ ["--strip-ansi=auto"]
                    ++ ["--file-name=Response from server"]
                    ++ ["--color=never" | opts.colorEnable == ColorNever]
                    ++ ["--color=always" | opts.colorEnable == ColorAlways]

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
      let info = Options.info (parseRecord @(Request' Wrapped Wrapped)) infoPrefs
          pres = Options.execParserPure (Options.prefs defaultParserPrefs) info (words ln)
      case pres of
        Options.Success msg -> say (unwrapCmd msg)
        Options.Failure pfail -> outputStrLn $ fst $ Options.renderFailure pfail "hswm"
        _ -> return ()
    Nothing -> return ()

-- * Options.Generic parsing

data Cmdline w = Cmdline (Maybe (Request' w w)) (ClientOptions' w)
  deriving (Generic)

data ClientOptions' w = ClientOptions
  { colorEnable :: w ::: AnsiColors <!> "auto" <#> "c" <?> "enable color output"
  , logFormat :: w ::: LogFormat <!> "plain" <?> "Log output"
  , pager :: w ::: Switch <!> "yes" <?> "Whether to use pager for long outputs"
  , logLevel :: w ::: Maybe LogLevel <#> "l" <?> "Log level [debug,info,warn,error]"
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

instance ParseRecord (Request' Wrapped Wrapped) where
  parseRecord = G.to . G.M1 <$> genericParseRecord lispCaseModifiers

-- WmCtrlValue / WmCtrlAction

instance ParseRecord (WmCtrlAction' Wrapped) where
  parseRecord = G.to . G.M1 <$> genericParseRecord lispCaseModifiers
instance ParseFields (WmCtrlAction' Wrapped) where
  parseFields _ _ _ _ = parseRecord

-- MethodName / MethodParams

instance ParseRecord MethodName where
  parseRecord = fmap getOnly parseRecord
instance ParseField MethodName
instance ParseFields MethodName where
  parseFields h _ _ _ =
    let proxy = Proxy :: Proxy MethodName
     in Options.argument Options.str $
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

-- OutputId

-- TODO complete
instance ParseFields OutputId where
  parseFields a b c d = OutputId <$> parseFields a b c d
instance ParseRecord OutputId where
  parseRecord = OutputId <$> parseRecord

instance ParseField WsId where
  parseField =
    parseFieldWith $
      Options.completer $
        Options.listIOCompleter $
          runCompleteQuery ListWorkspaces <&> getWsList
    where
      getWsList (InternalObject val) = case A.fromJSON val of
        A.Error err -> error err
        A.Success res -> res
      getWsList _ = error "unexpected response"

  readField = WsId . TS.fromString <$> readField
  metavar _ = "WORKSPACE"

instance ParseFields WsId where
  parseFields = parseField
instance ParseRecord WsId where
  parseRecord = WsId . TS.fromString <$> parseRecord

-- ShortText

instance ParseFields ShortText where
  parseFields a b c d = TS.fromString <$> parseFields a b c d
instance ParseRecord ShortText where
  parseRecord = TS.fromString <$> parseRecord

newtype Switch = Switch {unwrap :: Bool}
  deriving (Eq, Ord, Show, Generic)

instance ParseField Switch where
  parseField h m c _ = do
    case m of
      Nothing -> error "Switch: can't be an argument"
      Just name -> do
        let fs =
              Options.long (Data.Text.unpack name)
                <> foldMap (Options.help . Data.Text.unpack) h
                <> foldMap Options.short c
        let fsNo =
              Options.long ("no-" ++ Data.Text.unpack name)
                <> foldMap (Options.help . Data.Text.unpack) h
        Options.flag' (Switch True) fs
          <|> Options.flag' (Switch False) fsNo
  readField = Options.maybeReader $ \case
    "no" -> Just $ Switch False
    "yes" -> Just $ Switch True
    _ -> Nothing

instance ParseFields Switch where
  parseFields h m c d = fromMaybe (fromMaybe (Switch False) (runReadM readField =<< d)) . getLast <$> parseFields h m c d
instance ParseRecord Switch where
  parseRecord = fmap getOnly parseRecord

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
