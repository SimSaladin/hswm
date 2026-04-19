module Main (main) where

import HSWM
import HSWM.Util.IPC
import System.IO qualified as IO
import Data.Text.Lazy.IO qualified as TL

main :: IO ()
main = do
  runStdoutAsTextLoggingT $ do
    logInfo "Connecting..."

    let msgHandler = \case
          StateDumpResponse str -> io $ TL.putStrLn str
          msg -> io $ print msg

    runReaderT (clientRun def msgHandler consoleHandler) ()
  where
    consoleHandler say =
      forever $
        io IO.getLine >>= \ln -> case readMaybe ln :: Maybe ProtoMsg of
          Just m -> say m
          Nothing -> logInfo "error: could not read input message"
