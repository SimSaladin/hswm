-- |
-- Module      : HSWM.Util.Waybar
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
module HSWM.Util.Waybar where

import HSWM.Core hiding (closed)
import System.IO
import System.Process (terminateProcess)
import System.Process.Typed

data WaybarConfig = WaybarConfig
  deriving (Show, Eq, Generic)
  deriving anyclass (Default)

data WaybarState = WaybarState
  { wbProcess :: !(Maybe (Process () Handle Handle))
  , wbAsyncs :: [Async ()]
  }
  deriving (Show, Generic)
  deriving anyclass (Default)

waybarSB :: WaybarConfig -> ConfigDoM H
waybarSB wbcfg ucfg =
  ucfg
    { startupHook = startupHook ucfg <> waybarStartupHook wbcfg,
      exitHook = exitHook ucfg <> waybarExitHook wbcfg
    }

waybarStartupHook :: WaybarConfig -> H ()
waybarStartupHook _ = do
  log' "Starting waybar..."
  st <- getOrCreateObject $ pure (def :: WaybarState)
  process <-
    startProcess $
      setStdin nullStream $
        setStdout createPipe $
          setStderr createPipe $
            proc "waybar" [{-"-l", "debug"-}]
  let errh = getStderr process
  let outh = getStdout process
  a1 <- async $ forever $ do
    ln <- io $ hGetLine errh
    logInfo $ fromString ln :# [ "process" .= ("waybar" :: String) ]
  a2 <- async $ forever $ do
    ln <- io $ hGetLine outh
    logInfo $ fromString ln :# [ "process" .= ("waybar" :: String) ]

  putObject st {wbProcess = Just process, wbAsyncs = [a1, a2]}

waybarExitHook :: WaybarConfig -> H ()
waybarExitHook _ = do
  withObject $ \WaybarState {wbProcess, wbAsyncs} -> do
    io $ case wbProcess of
      Nothing -> pure ()
      Just p -> do
        void $ try @_ @SomeException $ terminateProcess $ unsafeProcessHandle p
        void $ try @_ @SomeException $ stopProcess p

    cancelMany wbAsyncs
