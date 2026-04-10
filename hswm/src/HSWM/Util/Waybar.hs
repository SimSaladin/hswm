------------------------------------------------------------------------------
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
--
------------------------------------------------------------------------------
module HSWM.Util.Waybar  where

import HSWM.Core hiding (closed)
import System.Process.Typed
import System.IO

data WaybarConfig = WaybarConfig
  deriving (Show, Eq, Generic)
  deriving anyclass (Default)

data WaybarState = WaybarState
  { wbProcess :: !(Maybe (Process () () Handle))
  }
  deriving (Show, Generic)
  deriving anyclass (Default)

waybarSB :: WaybarConfig -> ConfigDoM H
waybarSB wbcfg ucfg = ucfg
  { startupHook = startupHook ucfg <> waybarStartupHook wbcfg
  , exitHook = exitHook ucfg <> waybarExitHook wbcfg
  }

waybarStartupHook :: WaybarConfig -> H ()
waybarStartupHook _ = do
  log' "Starting waybar..."
  st <- getOrCreateObject $ pure (def :: WaybarState)
  process <- startProcess
    $ setStdin nullStream
    $ setStdout nullStream
    $ setStderr createPipe
    $ proc "waybar" [ "-l", "debug" ]
  let errh = getStderr process
  _ <- async $ forever $ do
    ln <- io $ hGetLine errh
    logInfo $ "[waybar] " <> fromString ln
  -- pid <- spawnProcess "waybar" [ "-l", "debug" ]
  putObject st { wbProcess = Just process }

waybarExitHook :: WaybarConfig -> H ()
waybarExitHook _ = do
  withObject $ \WaybarState{wbProcess} ->
    io $ case wbProcess of
      Nothing -> pure ()
      Just p -> void $ try @_ @SomeException $ stopProcess p
