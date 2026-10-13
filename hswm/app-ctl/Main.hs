{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-orphans #-}

module Main (main) where

import           HSWM.IPC

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy.Char8 as BL
import qualified Data.Text.Lazy as TL
import           Data.Time
import qualified Options.Applicative as Options
import           Options.Generic
import           Prettyprinter
import           Prettyprinter.Render.Terminal
import           System.Console.Haskeline
--import           System.Console.Haskeline.Internal (mapReaderT)
import           System.Console.Haskeline.ReaderT
import Control.Monad.Reader

type CM = InputT (LoggingT IO)

main :: IO ()
main = runInputT defaultSettings $ do
  printExt <- getExternalPrint
  let logFun loc src lv s = do
          t <- getCurrentTime
          let logStrBS = fromLogStr $ defaultLogStr t mempty loc src lv s
              msg      = A.decodeStrict @LoggedMessage logStrBS
          whenJust msg $ printExt . TL.unpack . renderLazy . layoutPretty defaultLayoutOptions . prettyLogMsg
  fromReaderT $ runRT logFun

runRT :: (Loc -> LogSource -> LogLevel -> LogStr -> IO ())
      -> ReaderT (InputTEnv IO) IO ()
runRT logFun = withReaderT f' $ mapReaderT f $ toReaderT mainCM
  where
    f :: LoggingT IO () -> IO ()
    f ma = runLoggingT ma logFun
    f' :: InputTEnv IO -> InputTEnv (LoggingT IO)
    f' = mapInputTEnv liftIO -- _f''

mainCM :: CM ()
mainCM = do
  clientRun def msgHandler consoleHandler

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
