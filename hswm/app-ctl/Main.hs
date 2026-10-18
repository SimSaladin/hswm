{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-incomplete-record-selectors #-} -- XXX

module Main (main) where

import           HSWM.IPC

import           HSWM.Main.Options as HSWM (LogType'(..), defaultBufSize, initLoggers, AnsiColors(..), LogFormat)
import           Control.Monad.Reader
import qualified Data.Aeson as A
import qualified Data.ByteString.Char8 as BC8
import qualified Data.ByteString.Lazy.Char8 as BL
import qualified Data.Text.Lazy as TL
--import           Data.Time
import qualified Options.Applicative as Options
import           Options.Generic
--import           Prettyprinter
--import           Prettyprinter.Render.Terminal
import           System.Console.Haskeline
import           System.Console.Haskeline.ReaderT
import Data.Aeson.Encode.Pretty (encodePretty)

data ClientOptions' w
  = Version
  | Interactive
    { colorEnable :: w ::: AnsiColors <!> "auto" <#> "c" <?> "enable color output"
    , logFormat   :: w ::: LogFormat <!> "plain" <?> "Log output"
    }
  | Dump
    { colorEnable :: w ::: AnsiColors <!> "auto" <#> "c" <?> "enable color output"
    , logFormat   :: w ::: LogFormat <!> "plain" <?> "Log output"
    }
    deriving (Generic)

type ClientOptions = ClientOptions' Unwrapped

deriving instance Eq ClientOptions
deriving instance Show ClientOptions

instance ParseRecord (ClientOptions' Wrapped) where
  parseRecord = parseRecordWithModifiers lispCaseModifiers


main :: IO ()
main = do
    opts <- unwrapRecord progDesc
    runMode opts
  where
    progDesc :: Text
    progDesc = "hswmctl"

    runMode :: ClientOptions -> IO ()
    runMode opts@Interactive{} = interactive opts
    runMode Version{} = undefined
    runMode opts@Dump{} = withConnect opts $ \sock -> do
      res <- syncRequest sock (DumpState { param = "" })
      io $ BL.putStrLn $ "\n\n" <> A.encode res <> "\n"

    withConnect opts f = withLogging (LogStderr defaultBufSize) opts.logFormat opts.colorEnable $ runLoggingT $ clientRunWith def f

    withLogging :: MonadUnliftIO m => LogType' LogStr -> LogFormat -> AnsiColors -> (_ -> m a) -> m a
    withLogging logtype fmt co f =
      bracket (liftIO $ initLoggers logtype fmt co Nothing)
              (\(_, fn) -> liftIO fn) $ \(logFn, _) -> f logFn

    interactive o = runInputT defaultSettings $ do
        printExt <- getExternalPrint
        withLogging (LogCallback (printExt . BC8.unpack . fromLogStr) (return ())) o.logFormat (if o.colorEnable /= ColorNever then ColorAlways else o.colorEnable) $ \logFn ->
          fromReaderT $ runRT logFn

type CM = InputT (LoggingT IO)

runRT :: (Loc -> LogSource -> LogLevel -> LogStr -> IO ()) -> ReaderT (InputTEnv IO) IO ()
runRT logFun = withReaderT (mapInputTEnv liftIO) $
  mapReaderT (`runLoggingT` logFun) $
    toReaderT mainCM

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
      let header = Options.header "hswmctl"
          info   = Options.info (parseRecord @Request) header
          pres   = Options.execParserPure (Options.prefs defaultParserPrefs) info (words ln)
      case pres of
        Options.Success msg -> say msg
        Options.Failure pfail -> outputStrLn $ fst $ Options.renderFailure pfail "hswm"
        _ -> return ()
    Nothing -> return ()

defaultParserPrefs :: Options.PrefsMod
defaultParserPrefs = Options.multiSuffix "..."

-- * Orphan instances

instance ParseRecord Request

instance MonadLogger m => MonadLogger (InputT m) where

instance MonadReader r m => MonadReader r (InputT m) where
  ask = lift ask
  local f = mapInputT $ local f

instance MonadUnliftIO m => MonadUnliftIO (InputT m) where
  withRunInIO inner =
    withRunInBase $ \runInBase ->
      withRunInIO $ \runInIO ->
        inner (runInIO . runInBase)
