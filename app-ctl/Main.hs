module Main (main) where

import HSWM
import HSWM.Util.IPC
import System.IO qualified as IO
import Text.Read (readMaybe)

main :: IO ()
main = do
  logOpts <- logOptionsHandle stderr True
  withLogFunc logOpts $ \logFunc -> do
      putStrLn "Connecting..."

      let msgHandler = \case
            _msg -> putStrLn "Response!"

      clientRun Nothing msgHandler consoleHandler
      where
        consoleHandler say =
          forever $
            IO.getLine >>= \ln -> case readMaybe ln :: Maybe ProtoMsg of
              Just m -> say m
              Nothing -> putStrLn "error: could not read input message"
