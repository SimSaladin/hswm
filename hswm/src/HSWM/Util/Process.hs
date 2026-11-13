{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE NoFieldSelectors #-}

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

  -- * System.Process.Typed
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
import HSWM.Types.Lens
import System.Posix (CPid, getAnyProcessStatus)
import System.Posix.Signals
import System.Process (CmdSpec (..), showCommandForUser)
import System.Process.Typed hiding (byteStringOutput, closed)
import System.Process.Typed qualified as P (closed)
import System.Process.Typed.Internal qualified as Internal

type MonadProcessSpawn m = (MonadUnliftIO m, MonadLogger m)

-- * systemd-run

data Flag a = FlagEmpty | FlagDefault a | FlagSet a
  deriving (Eq, Show, Read, Generic)
instance Default (Flag a) where def = FlagEmpty

instance {-# OVERLAPS #-} Semigroup (Flag String) where
  FlagEmpty <> x = x
  x <> FlagEmpty = x
  x <> FlagDefault{} = x
  x@FlagSet{} <> _ = x
  _ <> x@FlagSet{} = x
instance {-# OVERLAPS #-} Monoid (Flag String) where
  mempty = def

instance Semigroup (Flag Bool) where
  FlagEmpty <> x = x
  x <> FlagEmpty = x
  x <> FlagDefault{} = x
  x@FlagSet{} <> _ = x
  _ <> x@FlagSet{} = x
instance Monoid (Flag Bool) where
  mempty = def

instance Semigroup (Flag [a]) where
  FlagEmpty <> x = x
  x <> FlagEmpty = x
  FlagDefault x <> FlagDefault y = FlagDefault (x <> y)
  FlagSet x <> FlagSet y = FlagSet (x <> y)
  x <> y = FlagSet $ fromFlag [] x <> fromFlag [] y
instance Monoid (Flag [a]) where
  mempty = def

flagDef :: a -> Flag a
flagDef = FlagDefault

flagSet :: a -> Flag a
flagSet = FlagSet

flagToMaybe :: Flag a -> Maybe a
flagToMaybe = \case
  FlagEmpty -> Nothing
  FlagDefault a -> Just a
  FlagSet a -> Just a

fromFlag :: a -> Flag a -> a
fromFlag d = fromMaybe d . flagToMaybe

flagYes :: Flag Bool -> Bool
flagYes = \case
  FlagEmpty -> False
  FlagSet a -> a
  FlagDefault a -> a

flagNo :: Flag Bool -> Bool
flagNo = not . flagYes

flagVal :: Traversal (Flag a) (Flag a') a a'
flagVal _ FlagEmpty = pure FlagEmpty
flagVal f (FlagDefault x) = FlagDefault <$> f x
flagVal f (FlagSet x) = FlagSet <$> f x

-- | Options for launching something in
-- the (user) systemd session (using @systemd-run@).
data SDRunParams = SDRunParams
  { sdCollect :: Flag Bool
  -- ^ Collect unit state when it exits (even failed units).
  , sdScope :: Flag Bool
  -- ^ Launch as a scope (default: service)
  , sdUnit :: Flag String
  -- ^ Unit name (default is random)
  , sdSlice :: Flag String
  -- ^ Assign the unit to this slice.
  , sdSameDir :: Flag Bool
  -- ^ Inherit CWD
  , sdType :: Flag String
  -- ^ E.g. @Type=exec@ (default is @simple@)
  , sdWorkDir :: Flag FilePath
  , sdEnv :: Flag [(String, String)]
  }
  deriving (Eq, Generic)

makeLenses' [''SDRunParams]

slice' :: ASetter SDRunParams SDRunParams (Flag String) String
slice' f x = Identity $ x{sdSlice = flagSet (runIdentity $ f x.sdSlice)}

unit' :: ASetter SDRunParams SDRunParams (Flag String) String
unit' f x = Identity $ x{sdUnit = flagSet (runIdentity $ f x.sdUnit)}

workDir :: ASetter SDRunParams SDRunParams (Flag FilePath) FilePath
workDir f x = Identity $ x{sdWorkDir = flagSet (runIdentity $ f x.sdWorkDir)}

instance Semigroup SDRunParams where
  a <> b =
    SDRunParams
      { sdCollect = a.sdCollect <> b.sdCollect
      , sdScope = a.sdScope <> b.sdScope
      , sdUnit = a.sdUnit <> b.sdUnit
      , sdSlice = a.sdSlice <> b.sdSlice
      , sdSameDir = a.sdSameDir <> b.sdSameDir
      , sdType = a.sdType <> b.sdType
      , sdWorkDir = a.sdWorkDir <> b.sdWorkDir
      , sdEnv = a.sdEnv <> b.sdEnv
      }

instance Monoid SDRunParams where
  mempty =
    SDRunParams
      { sdCollect = mempty
      , sdScope = mempty
      , sdUnit = mempty
      , sdSlice = mempty
      , sdSameDir = mempty
      , sdType = mempty
      , sdWorkDir = mempty
      , sdEnv = mempty
      }

-- | Opinionated defaults!
instance Default SDRunParams where
  def =
    mempty
      { sdCollect = flagDef True
      , sdSlice = flagDef "app.slice"
      , sdType = flagDef "exec"
      }

-- | Run a program in the user's systemd session.
sdSpawnProcess :: (HasCallStack, MonadProcessSpawn m) => SDRunParams -> String -> [String] -> m ()
sdSpawnProcess p cmd args = do
  let pc =
        proc "systemd-run" $
          ["--user", "--no-pager", "--no-ask-password"]
            ++ ["--no-block" | flagNo p.sdScope]
            ++ ["--collect" | flagYes p.sdCollect] -- not supported in scope mode
            ++ ["--scope" | flagYes p.sdScope]
            ++ ["--unit=" ++ u | Just u <- [flagToMaybe p.sdUnit]]
            ++ ["--slice=" ++ s | Just s <- [flagToMaybe p.sdSlice]]
            ++ ["--same-dir" | fromFlag False p.sdSameDir]
            ++ ["--property=Type=" ++ ty | Just ty <- [flagToMaybe p.sdType]]
            ++ ["--working-directory=" ++ pa | Just pa <- [flagToMaybe p.sdWorkDir]]
            ++ ["--setenv=" ++ n ++ "=" ++ v | (n, v) <- fromFlag [] p.sdEnv]
            ++ ["--", cmd]
            ++ args
  logProcessConfig "run-sd" pc
  res <- readProcess pc
  logInfo $ "run-sd: process completed" :# ["result" .= show res]

-- | Like sdSpawnProcess but takes a shell script instead.
sdSpawnShell :: (HasCallStack, MonadProcessSpawn m) => SDRunParams -> String -> m ()
sdSpawnShell p cmd = sdSpawnProcess p "bash" ["-c", cmd]

-- | Like sdSpawnProcess, but takes a ProcessConfig instead.
sdSpawnProcessConfig :: (HasCallStack, MonadProcessSpawn m) => SDRunParams -> ProcessConfig a b c -> m ()
sdSpawnProcessConfig p pc = do
  case pc.pcCmdSpec of
    RawCommand c as -> sdSpawnProcess (pset p) c as
    ShellCommand x -> sdSpawnShell (pset p) x
  where
    pset =
      maybe id (workDir .~) pc.pcWorkingDir
        . maybe id (\e -> sdEnv %~ (<> flagSet e)) pc.pcEnv

-- * spawn direct

-- | No logging or other extras, just start thte process ASAP.
spawnProcessFast :: String -> [String] -> IO ()
spawnProcessFast prog args = void . async $ runProcess_ (proc prog args)

spawnProcess :: (MonadProcessSpawn m) => String -> [String] -> m ()
spawnProcess prog args = do
  let pc = setCloseFds True $ setNewSession True $ proc prog args
  logProcessConfig "spawn" pc
  void . async $ runProcess_ pc

-- * Send desktop notifications

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

-- * Stream specs (for typed-process)

-- | Renamed 'P.closed'
closedStream :: StreamSpec anyStreamType ()
closedStream = P.closed

-- | Modified 'P.byteStringOutput' so that 'stopProcess' works.
byteStringOutput :: StreamSpec STOutput (STM LazyByteString)
byteStringOutput = mkPipeStreamSpec $ \pc h -> do
  (a, c) <- Internal.byteStringFromHandle pc h
  return (a, void $ async c)

-- * Logging helpers

-- | StreamSpec that logs output lines as log lines
logOutput ::
  (Loc -> LogSource -> LogLevel -> LogStr -> IO ())
  -> Text
  -- ^ Log line prefix
  -> LogLevel
  -> [SeriesElem]
  -- ^ Metadata
  -> StreamSpec STOutput (Async ())
logOutput logFn src lvl meta = mkPipeStreamSpec $ \pc h -> do
  hSetBuffering h LineBuffering
  as <- async $ (`finally` hClose h) $ flip runLoggingT logFn $ forever $ do
    ln <- io (T.hGetLine h)
    logOtherNS src lvl $ ln :# (("process" .= showCmdSpec pc.pcCmdSpec) : meta)
  -- Note: the handle is closed by the async worker thread. If we closed it in the cleanup
  -- action below, hClose would block because of the hGetLine above. This breaks stopProcess!
  return (as, return ())

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

-- * Signal sending & handling

-- | Send a signal to the ProcessID of a window.
signalWindowByPID :: (MonadProcessSpawn m) => Signal -> Window -> m ()
signalWindowByPID sig w
  | Just pid <- w.unreliablePid = do
      logInfo $ "Signalling window " <> tshow w.river_window <> " (signal " <> tshow sig <> ")" :# ["signal" .= tshow sig, "window" .= tshow w.river_window]
      io $ signalProcess sig (fromIntegral pid)
  | otherwise = logWarn $ "Cannot signal process of window " <> tshow w.river_window <> " (ProcessID unknown)" :# ["signal" .= tshow sig]

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
