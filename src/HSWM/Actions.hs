module HSWM.Actions  where

import HSWM.Types

import Control.Monad.Fix (fix)
import GHC.Generics
import System.Posix.IO
import System.Posix.Types (ProcessID)
import System.Posix.Process (executeFile, forkProcess, getAnyProcessStatus, createSession)
import System.Posix.Signals

data ChangeFocus = FocusNext deriving (Generic)
instance IsAction ChangeFocus where
  runner FocusNext = log' "FocusNext todo"

class IsKeySym a where toKeySym :: a -> KeySym

instance IsKeySym KeySym where toKeySym = id

instance IsKeySym String where
  toKeySym = xkb_keysym_from_name

addKeys :: (IsKeySym k, IsAction a) => [((String, k), a)] -> HSWMConfig l -> HSWMConfig l
addKeys keys c = c
  { keyBindings = (keyBindings c) ++
    [ ((m, toKeySym k), toSomeAction a) | ((m, k), a) <- keys ]
  }

data LaunchProgram = LaunchProgram String [String]
  deriving (Generic)

instance IsAction LaunchProgram where
  runner (LaunchProgram cmd args) = do
    log' $ "[launch] " <> toText cmd <> " " <> tshow args
    void $ spawnProcess cmd args

spawnProcess :: MonadIO m => String -> [String] -> m ProcessID
spawnProcess x xs = xfork $ executeFile "/usr/bin/env" False (x : xs) Nothing

spawnShell :: MonadIO m => String -> m ProcessID
spawnShell x = xfork $ executeFile "/bin/sh" False ["-c", x] Nothing

spawn :: MonadIO m => String -> m ()
spawn x = void $ spawnShell x

-- | A replacement for 'forkProcess' which resets default signal handlers.
xfork :: MonadIO m => IO () -> m ProcessID
xfork x = io . forkProcess . finally nullStdin $ do
                uninstallSignalHandlers
                _ <- createSession
                x
 where
    nullStdin = do
        fd <- openFd "/dev/null" ReadOnly defaultFileFlags
        _ <- dupTo fd stdInput
        closeFd fd

-- | Ignore SIGPIPE to avoid termination when a pipe is full, and SIGCHLD to
-- avoid zombie processes, and clean up any extant zombie processes.
installSignalHandlers :: MonadIO m => m ()
installSignalHandlers = io $ do
    _ <- installHandler openEndedPipe Ignore Nothing
    _ <- installHandler sigCHLD Ignore Nothing
    void $ (try :: IO a -> IO (Either SomeException a))
      $ fix $ \more -> do
        x <- getAnyProcessStatus False False
        when (isJust x) more
    return ()

uninstallSignalHandlers :: MonadIO m => m ()
uninstallSignalHandlers = io $ do
    _ <- installHandler openEndedPipe Default Nothing
    _ <- installHandler sigCHLD Default Nothing
    return ()
