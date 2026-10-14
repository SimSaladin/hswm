{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-incomplete-record-selectors #-} -- XXX


module Main (main) where

import           HSWM.IPC

import           HSWM.Main.Options as HSWM (LogType'(LogStderr), defaultBufSize, initLoggers, AnsiColors(..), LogFormat)
import           Control.Monad.Reader
import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy.Char8 as BL
import qualified Data.Text.Lazy as TL
import           Data.Time
import qualified Options.Applicative as Options
import           Options.Generic
import           Prettyprinter
import           Prettyprinter.Render.Terminal
import           System.Console.Haskeline
import           System.Console.Haskeline.ReaderT

type ClientOptions = ClientOptions' Unwrapped

deriving instance Eq ClientOptions
deriving instance Show ClientOptions

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

instance ParseRecord (ClientOptions' Wrapped) where
  parseRecord = parseRecordWithModifiers defaultModifiers
    -- { constructorNameModifier = }


main :: IO ()
main = do
    opts <- unwrapRecord progDesc
    runMode opts
  where
    progDesc :: Text
    progDesc = "hswmctl"

    runMode :: ClientOptions -> IO ()
    runMode Interactive{} = interactive
    runMode Version{} = undefined
    runMode opts@Dump{} = withConnect opts $ \sock -> do
      res <- syncRequest sock (DumpState { param = "" })
      io $ BL.putStrLn $ "\n\n" <> A.encode res <> "\n"

    withConnect opts f = withLogging (opts.logFormat, opts.colorEnable) $ clientRunWith def f

    withLogging (fmt, co) f =
      bracket (initLoggers (LogStderr defaultBufSize) fmt co)
              (\(_, fn) -> liftIO fn) $ \(logFn, _) ->
                runLoggingT f logFn

    interactive = runInputT defaultSettings $ do
        printExt <- getExternalPrint
        fromReaderT $ runRT (getLogFun printExt)

    getLogFun f loc src lv s = do
        t <- getCurrentTime
        let logStrBS = fromLogStr $ defaultLogStr t mempty loc src lv s
            msg      = A.decodeStrict @LoggedMessage logStrBS
        whenJust msg $ f . TL.unpack . renderLazy . layoutPretty defaultLayoutOptions . prettyLogMsg

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

-- * Logging utilities

prettyLogMsg :: LoggedMessage -> Doc AnsiStyle
prettyLogMsg LoggedMessage{..} = mconcat
    [ ppLevel loggedMessageLevel <> space
    , pretty loggedMessageText <> space
    , annotate (color Black <> bold)
        (pretty (BL.unpack (A.encode $ loggedMessageThreadContext <> loggedMessageMeta)))
    , line
    ]
  where
    ppLevel = \case
      LevelError   -> annotate (color Red) "error"
      LevelWarn    -> annotate (color Red <> bold) "warn"
      LevelInfo    -> annotate (color Cyan <> bold) "info"
      LevelDebug   -> annotate (color Black) "dbg"
      LevelOther x -> annotate (color Yellow) $ pretty x

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
