module Main (main) where

import HSWM
import HSWM.Util.IPC
import System.IO qualified as IO
import Text.Read (readMaybe)

main :: IO ()
main = do
  logOpts <- logOptionsHandle stderr True
  withLogFunc logOpts $ \logFunc -> flip runReaderT logFunc $ do
      logInfo "Connecting..."

      let msgHandler = \case
            _msg -> logInfo "Response!"

      clientRun Nothing msgHandler consoleHandler
      where
        consoleHandler say = forever $
            io IO.getLine >>= \ln -> case readMaybe ln :: Maybe ProtoMsg of
              Just m -> say m
              Nothing -> logInfo "error: could not read input message"
