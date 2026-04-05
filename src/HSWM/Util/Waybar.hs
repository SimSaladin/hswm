------------------------------------------------------------------------------
-- |
-- Module      : HSWM.Util.Waybar
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
--
------------------------------------------------------------------------------
module HSWM.Util.Waybar  where


import HSWM.Core
import HSWM.Utils

import qualified System.Posix as Posix

data WaybarConfig = WaybarConfig
  deriving (Show, Eq, Generic)
  deriving anyclass (Default)

data WaybarState = WaybarState { wbPID :: Maybe Posix.ProcessID }
  deriving (Show, Eq, Generic)
  deriving anyclass (Default)

waybarSB :: WaybarConfig -> HSWMConfig l -> HSWMConfig l
waybarSB wbcfg ucfg = ucfg
  { startupHook = startupHook ucfg <> waybarStartupHook wbcfg
  , exitHook = exitHook ucfg <> waybarExitHook wbcfg
  }

waybarStartupHook :: WaybarConfig -> H ()
waybarStartupHook _ = do
  log' "Starting waybar..."
  st <- getOrCreateObject $ pure (def :: WaybarState)
  pid <- spawnProcess "waybar" [ "-l", "debug" ]
  putObject st { wbPID = Just pid }

waybarExitHook :: WaybarConfig -> H ()
waybarExitHook _ = do
  withObject $ \WaybarState{wbPID} ->
    io $ case wbPID of
      Nothing -> pure ()
      Just pid -> do
        log' "Stopping waybar..."
        Posix.signalProcessGroup Posix.sigTERM pid
