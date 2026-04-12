module Main (main) where

import HSWM
import HSWM.Util.IPC
import System.IO qualified as IO

main :: IO ()
main = do
  runStdoutLoggingT $ do
    logInfo "Connecting..."

    let msgHandler = \case
          StateDumpResponse str -> liftIO $ putStrLn str
          msg -> liftIO $ print msg

    runReaderT (clientRun def msgHandler consoleHandler) ()
  where
    consoleHandler say =
      forever $
        io IO.getLine >>= \ln -> case readMaybe ln :: Maybe ProtoMsg of
          Just m -> say m
          Nothing -> logInfo "error: could not read input message"
