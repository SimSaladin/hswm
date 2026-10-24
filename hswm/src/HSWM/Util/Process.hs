-- |
-- Module      : HSWM.Util.Process
-- Description : Spawning and managing child processes
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Util.Process (
  module HSWM.Util.Process,
  module System.Process.Typed,

  -- * Re-exports
  CmdSpec (..),
  StdStream (..),
  StreamType (..),
  ExitCode (..),
  CPid,
  sigKILL,
  sigINT,
  sigTERM,
  sigUSR2,
  signalProcess,
) where

import HSWM.Types.Window

import Data.Aeson qualified as A
import Data.Text qualified as T
import Data.Text.IO qualified as T
import Data.Typeable
import System.Posix (CPid, getAnyProcessStatus)
import System.Posix.Signals
import System.Process (CmdSpec (..), showCommandForUser)
import System.Process.Typed hiding (byteStringOutput, closed)
import System.Process.Typed qualified as P (closed)
import System.Process.Typed.Internal qualified as Internal

type MonadProcessSpawn m = (MonadUnliftIO m, MonadLogger m)

spawnProcess :: (MonadProcessSpawn m) => String -> [String] -> m ()
spawnProcess prog args = do
  let pc = setCloseFds True $ setNewSession True $ proc prog args
  logProcessConfig "spawn" pc
  void . async $ runProcess_ pc

-- | Send a signal to the ProcessID of a window.
signalWindowByPID :: (MonadProcessSpawn m) => Signal -> Window -> m ()
signalWindowByPID sig w
  | Just pid <- w.unreliablePid = do
      logInfo $ "Signalling window " <> tshow w.river_window <> " (signal " <> tshow sig <> ")" :# ["signal" .= tshow sig, "window" .= tshow w.river_window]
      io $ signalProcess sig (fromIntegral pid)
  | otherwise = logWarn $ "Cannot signal process of window " <> tshow w.river_window <> " (ProcessID unknown)" :# ["signal" .= tshow sig]

data SDRunParams = SDRunParams
  { sdCollect :: Bool
  , sdScope :: Bool
  , sdUnit :: Maybe String
  , sdSlice :: Maybe String
  } deriving (Eq, Generic)

instance Default SDRunParams where
  def = SDRunParams { sdCollect = True, sdScope = True, sdUnit = Nothing, sdSlice = Nothing }

runProgWithSystemD :: (HasCallStack) => (MonadProcessSpawn m) => SDRunParams -> String -> [String] -> m ()
runProgWithSystemD p cmd args = void $ readProcess $ proc "systemd-run" $
    ["--user", "--no-pager", "--no-block", "--no-ask-password"] ++
    ["--collect" | p.sdCollect] ++
    ["--scope" | p.sdScope] ++
    ["--unit=" ++ u | Just u <- pure p.sdUnit] ++
    ["--slice=" ++ s | Just s <- pure p.sdSlice] ++
    ["--", cmd] ++ args -- ["bash", "-c", cmd]

runWithSystemD :: (HasCallStack) => (MonadProcessSpawn m) => SDRunParams -> String -> m ()
runWithSystemD p cmd = runProgWithSystemD p "bash" ["-c", cmd]

notifySend ::
  (MonadProcessSpawn m) =>
  NotifySendOptions
  -> String
  -- ^ Summary
  -> Maybe String
  -- ^ Body
  -> m (Async ())
notifySend opts summary mbody =
  async . runProcess_ $
    setStdin nullStream $
      setStdout nullStream $
        setCloseFds True $
          proc "notify-send" $
            ["--" <> k <> "=" <> v | (k, v) <- opts.notifySendOptions]
              ++ [summary, "--"]
              ++ catMaybes [mbody]

newtype NotifySendOptions = NotifySendOptions {notifySendOptions :: [(String, String)]}
  deriving (Eq, Ord, Show, Read, Generic)

instance Default NotifySendOptions where
  def = NotifySendOptions [("app-name", "HSWM")]

-- * Standard streams & logging

-- | Renamed 'P.closed'
closedStream :: StreamSpec anyStreamType ()
closedStream = P.closed

-- | StreamSpec that logs output lines as log lines
logOutput ::
  (Loc -> LogSource -> LogLevel -> LogStr -> IO ())
  -> Text
  -- ^ Log line prefix
  -> [SeriesElem]
  -- ^ Metadata
  -> StreamSpec STOutput (Async ())
logOutput logFn src meta = mkPipeStreamSpec $ \pc h -> do
  hSetBuffering h LineBuffering
  as <- async $ (`finally` hClose h) $ flip runLoggingT logFn $ forever $ do
    ln <- io (T.hGetLine h)
    logInfoNS src $ ln :# (("process" .= showCmdSpec pc.pcCmdSpec) : meta)
  -- Note: the handle is closed by the async worker thread. If we closed it in the cleanup
  -- action below, hClose would block because of the hGetLine above. This breaks stopProcess!
  return (as, return ())

-- | Modified 'P.byteStringOutput' so that 'stopProcess' works.
byteStringOutput :: StreamSpec STOutput (STM LazyByteString)
byteStringOutput = mkPipeStreamSpec $ \pc h -> do
  (a, c) <- Internal.byteStringFromHandle pc h
  return (a, void $ async c)

showCmdSpec :: CmdSpec -> String
showCmdSpec (RawCommand prog args) = showCommandForUser prog args
showCmdSpec (ShellCommand s) = s

logProcessConfig ::
  forall m stdin stdout stderr.
  (MonadProcessSpawn m, Typeable stdin, Typeable stdout, Typeable stderr) =>
  T.Text -> ProcessConfig stdin stdout stderr -> m ()
logProcessConfig src pc =
  logInfoNS src $
    "new process config: "
      <> toText (showCmdSpec pc.pcCmdSpec)
        :# ( -- [ "cmd" .= toText (showCmdSpec pc.pcCmdSpec)
             [ "close_fds" .= pc.pcCloseFds
             , "create_group" .= pc.pcCreateGroup
             , "new_session" .= pc.pcNewSession
             , "stdin" .= tshow (typeRep (Proxy @stdin))
             , "stdout" .= tshow (typeRep (Proxy @stdout))
             , "stderr" .= tshow (typeRep (Proxy @stderr))
             ]
               ++ ["env" .= A.toJSON x | Just x <- [pc.pcEnv]]
               ++ ["workdir" .= toText x | Just x <- [pc.pcWorkingDir]]
           )

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
