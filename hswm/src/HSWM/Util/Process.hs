-- |
-- Module      : HSWM.Util.Process
-- Description : Spawning and managing child processes
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Util.Process
  ( module HSWM.Util.Process
  , module System.Process.Typed
  -- * Re-exports
  , CmdSpec(..)
  , StdStream(..)
  , StreamType(..)
  , ExitCode(..)
  , CPid
  , sigKILL
  , sigTERM
  , sigUSR2
  ) where

import System.Posix ( CPid, getAnyProcessStatus )
import System.Posix.Signals
import System.Process (CmdSpec(..), showCommandForUser)
import System.Process.Typed hiding (closed)
import qualified System.Process.Typed.Internal as Internal
-- import qualified System.Process.Typed.Internal as PC
import qualified Data.Text.IO as T
import HSWM.Types.Window
import qualified Data.Text as T
import qualified Data.Aeson as A
import Data.Typeable

spawnProcess :: MonadProcessSpawn m => String -> [String] -> m ()
spawnProcess prog args = do
  let pc = setCloseFds True $ setNewSession True $ proc prog args
  logProcessConfig "spawn" pc
  void . async $ runProcess_ pc

logProcessConfig :: forall m stdin stdout stderr. (MonadProcessSpawn m, Typeable stdin, Typeable stdout, Typeable stderr)
   => T.Text -> ProcessConfig stdin stdout stderr -> m ()
logProcessConfig text pc = logInfo $ text <> ": run process: " <> toText (showCmdSpec pc.pcCmdSpec)
  :# ([ "cmd" .= toText (showCmdSpec pc.pcCmdSpec)
      , "closeFds" .= pc.pcCloseFds
      , "createGroup" .= pc.pcCreateGroup
      , "newSession" .= pc.pcNewSession
      , "stdin" .= tshow (typeRep (Proxy @stdin))
      , "stdout" .= tshow (typeRep (Proxy @stdout))
      , "stderr" .= tshow (typeRep (Proxy @stderr))
      ] ++
      [ "env" .= A.toJSON x | Just x <- [pc.pcEnv] ] ++
      [ "workdir" .= toText x | Just x <- [pc.pcWorkingDir] ]
     )

showCmdSpec :: CmdSpec -> String
showCmdSpec (RawCommand prog args) = showCommandForUser prog args
showCmdSpec (ShellCommand s) = s

-- | Send a signal to the ProcessID of a window.
signalWindowByPID :: MonadProcessSpawn m => Signal -> Window -> m ()
signalWindowByPID sig w
  | Just pid <- w.unreliablePid = do
      logInfo $ "Signalling window " <> tshow w.river_window <> " (signal " <> tshow sig <> ")" :# [ "signal" .= tshow sig, "window" .= tshow w.river_window ]
      io $ signalProcess sig (fromIntegral pid)
  | otherwise = logWarn $ "Cannot signal process of window " <> tshow w.river_window <> " (ProcessID unknown)" :# [ "signal" .= tshow sig ]

-- * Types

type MonadProcessSpawn m = (MonadUnliftIO m, MonadLogger m)

-- * Main process signal handling

-- | Ignore SIGPIPE to avoid termination when a pipe is full.
--
-- Note: ignoring SIGCHLD would break 'waitForProcess'
--
-- Clean up any extant zombie processes.
installSignalHandlers :: (MonadIO m) => m ()
installSignalHandlers = io $ do
  _ <- installHandler openEndedPipe Ignore Nothing
  -- _ <- installHandler sigCHLD Ignore Nothing
  void $
    (try :: IO a -> IO (Either SomeException a)) $
      fix $ \more -> do
        x <- getAnyProcessStatus False False
        when (isJust x) more

-- | Undo 'installSignalHandlers' effect
uninstallSignalHandlers :: (MonadIO m) => m ()
uninstallSignalHandlers = io $ do
  _ <- installHandler openEndedPipe Default Nothing
  _ <- installHandler sigCHLD Default Nothing
  return ()

-- | StreamSpec that logs output
logOutput :: (Loc -> LogSource -> LogLevel -> LogStr -> IO ())
          -> Text -- ^ Log line prefix
          -> [SeriesElem] -- ^ Metadata
          -> StreamSpec STOutput (Async ())
logOutput logFn prefix meta = mkPipeStreamSpec $ \pc h -> do
  hSetBuffering h LineBuffering
  as <- async $ flip runLoggingT logFn $ forever $ do
    ln <- io $ T.hGetLine h
    logInfo $ f ln :# (meta ++ [ "process" .= showCmd pc.pcCmdSpec ])
  return (as, hClose h)
    where
      showCmd (ShellCommand s) = s
      showCmd (RawCommand x xs) = unwords (x : xs)
      f | prefix == "" = id
        | otherwise    = ((prefix <> ": ") <>)

runWithSystemD :: HasCallStack => MonadProcessSpawn m => String -> m ()
runWithSystemD cmd = void $ readProcess $ proc "systemd-run"
  [ "--user", "--no-block", "--collect", "--", "bash", "-c", cmd ]
