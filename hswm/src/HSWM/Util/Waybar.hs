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

data WaybarConfig = WaybarConfig { command :: FilePath, args :: [String] }
  deriving (Show, Eq, Generic)

instance Default WaybarConfig where
  def = WaybarConfig "waybar" []

newtype WaybarState = WaybarState { wbProcess :: Maybe (Process () (Async ()) (Async ())) }
  deriving (Show, Generic)
  deriving anyclass (Default)

waybarSB :: WaybarConfig -> ConfigDoM H
waybarSB wbcfg ucfg = ucfg
  { startupHook = ucfg.startupHook <> waybarStartupHook wbcfg
  , exitHook = ucfg.exitHook <> waybarExitHook wbcfg
  }

waybarStartupHook :: WaybarConfig -> H ()
waybarStartupHook cfg = do
  logInfo "Waybar starting..."
  logFn <- askLoggerIO
  process <- startProcess $
      setStdin nullStream $
      setStdout (logOutput logFn "waybar (stdout)") $
      setStderr (logOutput logFn "waybar (stderr)") $
      setCloseFds True $
      setNewSession True $
      proc cfg.command cfg.args
  modifyObjectDef $ \st -> st {wbProcess = Just process}

waybarExitHook :: WaybarConfig -> H ()
waybarExitHook _ = do
  withObject $ \WaybarState {wbProcess} ->
    case wbProcess of
      Just p -> do
        void $ io $ try @_ @SomeException $ terminateProcess $ unsafeProcessHandle p
        void $ io $ try @_ @SomeException $ stopProcess p
        modifyObjectDef $ \st -> st { wbProcess = Nothing }
      Nothing -> pure ()
