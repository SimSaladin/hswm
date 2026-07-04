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
  ) where

import System.Posix ( CPid, getAnyProcessStatus )
import System.Posix.Signals
import System.Process (CmdSpec(..))
import System.Process.Typed hiding (closed)
import qualified Data.ByteString.Char8 as C8

spawnProcess :: MonadProcessSpawn m => String -> [String] -> m ()
spawnProcess prog args = void . async $ runProcess $
  setCloseFds True $
  setNewSession True $
  proc prog args

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

logOutput :: (Loc -> LogSource -> LogLevel -> LogStr -> IO ()) -> Text -> StreamSpec anyStreamType (Async ())
logOutput logFn prefix = mkPipeStreamSpec $ \pc h -> do
  hSetBuffering h LineBuffering
  as <- async $ flip runLoggingT logFn $ forever $ do
    ln <- io $ C8.hGetLine h
    logInfo $ prefix <> ": " <> fromString (C8.unpack ln) :# [ "processConfig" .= show pc ]
  return (as, hClose h)
