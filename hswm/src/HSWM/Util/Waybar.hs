{-# LANGUAGE StaticPointers #-}

{- |
Module      : HSWM.Util.Waybar
Description : Short description
Copyright   : (c) Samuli Thomasson, 2026

Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
Stability   : unstable
Portability : unportable

Longer description of this module.
-}
module HSWM.Util.Waybar where

import HSWM.Core hiding (closed)
import System.Process (terminateProcess)

-- import System.Process.Typed

import GHC.StaticPtr
import HSWM.Util.Process

data WaybarConfig = WaybarConfig {command :: FilePath, args :: [String]}
    deriving (Show, Eq, Generic)

instance Default WaybarConfig where
    def = WaybarConfig "waybar" ["-l", "warning"]

data WaybarState = WaybarState
    { wbProcess :: !(Maybe (Process () (Async ()) (Async ())))
    , wbConfig :: !WaybarConfig
    }
    deriving (Show, Generic)

waybarSB :: WaybarConfig -> ConfigDoM H
waybarSB wbcfg ucfg =
    ucfg
        & startupHook
        <>~ waybarStartupHook wbcfg
        & exitHook
        <>~ waybarCleanup

waybarStartupHook :: WaybarConfig -> H ()
waybarStartupHook cfg = do
    putObject $ WaybarState Nothing cfg
    waybarTask
    let wbTaskPtr = static waybarTask
    logInfo $ "waybar task" :# ["taskPtr" .= show (staticPtrInfo wbTaskPtr)]

waybarTask :: H ()
waybarTask = withOptionalObject $ \WaybarState{wbProcess, wbConfig} -> do
    case wbProcess of
        Nothing -> startIt wbConfig
        Just ph -> getExitCode ph >>= maybe (return ()) (\_ -> restartIt ph wbConfig)
  where
    startIt cfg = do
        logInfo "Waybar starting..."
        logFn <- askLoggerIO
        let pc =
                setStdin nullStream $
                    setStdout (logOutput logFn "waybar" ["stream" .= ("stdout" :: String)]) $
                        setStderr (logOutput logFn "waybar" ["stream" .= ("stderr" :: String)]) $
                            setCloseFds True $
                                setNewSession True $
                                    proc cfg.command cfg.args
        logProcessConfig "waybar" pc
        process <- startProcess pc
        modifyObject $ \st -> st{wbProcess = Just process}
    restartIt ph cfg = do
        logInfo "waybar: process is no longer running, now restarting"
        stopProcess ph
        startIt cfg

waybarCleanup :: (HasCallStack) => H ()
waybarCleanup = withOptionalObject $ \WaybarState{wbProcess} -> do
    forM_ wbProcess $ \p -> do
        logDebug "waybar: stopping the process and cleaning up the state"
        withAsync (delayKill p) $ \_ -> do
            mpid <- io $ getPid p
            io $ forM_ mpid $ signalProcess sigTERM
            stopProcess p `onException` logError "stopProcess threw an error!"
        modifyObject $ \st -> st{wbProcess = Nothing}
  where
    delayKill p = do
        --
        mpid <- io $ getPid p
        io $ threadDelay 5_000
        io $ forM_ mpid $ signalProcess sigINT
        io $ threadDelay 10_000_000
        logWarn "waybar: process apparently still running after 15s, killing it forcefully..."
        io $ terminateProcess (unsafeProcessHandle p)
