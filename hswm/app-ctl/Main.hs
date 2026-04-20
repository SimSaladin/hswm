{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-orphans #-}

module Main (main) where

import HSWM
import HSWM.Util.IPC
import Data.Text.Lazy qualified as TL
import System.Console.Haskeline
import Data.ByteString.Lazy.Char8 qualified as BL
import Data.Time
import Data.Aeson qualified as A
import Prettyprinter
import Prettyprinter.Render.Terminal

type CM = InputT (LoggingT (ReaderT () IO))

instance MonadLogger m => MonadLogger (InputT m) where

instance MonadReader r m => MonadReader r (InputT m) where
  ask = lift ask
  local f = mapInputT $ local f

instance MonadUnliftIO m => MonadUnliftIO (InputT m) where
  withRunInIO inner =
    withRunInBase $ \runInBase ->
      withRunInIO $ \runInIO ->
        inner (runInIO . runInBase)

main :: IO ()
main = do
  var <- newEmptyMVar
  let logfun loc src lv s = do
          t <- getCurrentTime
          let logStrBS = fromLogStr $ defaultLogStr t mempty loc src lv s
          let msg = A.decodeStrict @LoggedMessage logStrBS
          f <- readMVar var
          whenJust msg $ f . TL.unpack . renderLazy . layoutPretty defaultLayoutOptions . prettyLogMsg
  flip runReaderT () $
    flip runLoggingT logfun $
      runInputT defaultSettings $ do
        getExternalPrint >>= putMVar var
        mainCM

prettyLogMsg :: LoggedMessage -> Doc AnsiStyle
prettyLogMsg LoggedMessage{..} =
  ppLevel loggedMessageLevel <> space <>
    pretty loggedMessageText <> space <>
      annotate (color Black) (pretty (BL.unpack (A.encode loggedMessageMeta))) <>
        line
    where
      ppLevel = \case
        LevelError   -> annotate (color Red) "error"
        LevelWarn    -> annotate (color Red <> bold) "warn"
        LevelInfo    -> annotate (color Cyan <> bold) "info"
        LevelDebug   -> annotate (color Black) "dbg"
        LevelOther x -> annotate (color Yellow) $ pretty x

mainCM :: CM ()
mainCM = do
  logInfo "Connecting..."
  clientRun def msgHandler consoleHandler

msgHandler :: ProtoMsg -> CM ()
msgHandler = \case
  StateDumpResponse str -> outputStrLn $ TL.unpack str
  OutputInfo{} -> return ()
  WsInfo{} -> return ()
  FocusedWindow{} -> return ()
  msg -> outputStrLn $ show msg

consoleHandler :: (ProtoMsg -> CM ()) -> CM ()
consoleHandler say = forever $ do
  minput <- getInputLine ">>> "
  case minput of
    Nothing -> return ()
    Just "" -> return ()
    Just ln -> case readMaybe ln :: Maybe ProtoMsg of
      Just m -> say m
      Nothing -> logError "Could not read input message"
