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
import System.Process (terminateProcess)
import System.Process.Typed
import HSWM.Util.Process

newtype WaybarConfig = WaybarConfig { args :: [String] }
  deriving (Show, Eq, Generic)
  deriving anyclass (Default)

newtype WaybarState = WaybarState { wbProcess :: Maybe (Process () () ()) }
  deriving (Show, Generic)
  deriving anyclass (Default)

waybarSB :: WaybarConfig -> ConfigDoM H
waybarSB wbcfg ucfg =
  ucfg
    { startupHook = startupHook ucfg <> waybarStartupHook wbcfg,
      exitHook = exitHook ucfg <> waybarExitHook wbcfg
    }

waybarStartupHook :: WaybarConfig -> H ()
waybarStartupHook cfg = do
  logInfo "Starting waybar..."
  logFn <- askLoggerIO
  process <- startProcess $
      setStdin nullStream $
      setStdout (logOutput logFn) $
      setStderr (logOutput logFn) $
      proc "waybar" cfg.args
  modifyObjectDef $ \st -> st {wbProcess = Just process}

waybarExitHook :: WaybarConfig -> H ()
waybarExitHook _ = do
  withObject $ \WaybarState {wbProcess} -> do
    io $ case wbProcess of
      Nothing -> pure ()
      Just p -> do
        void $ try @_ @SomeException $ terminateProcess $ unsafeProcessHandle p
        void $ try @_ @SomeException $ stopProcess p
