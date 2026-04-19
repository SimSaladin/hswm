-- |
-- Module      : HSWM.Core
-- Description :
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Core
  ( module HSWM.Core,
    module HSWM.Types.Config,
    module HSWM.Types.Events,
    module HSWM.Types.WM,
    module HSWM.Types.TypeMap,
    module HSWM.Util.Types,
    module HSWM.ManageHook,
    module River,
    ModMask,
    KeySym,
  )
where

import Control.Monad.State
import HSWM.ManageHook
import HSWM.Types.Config
import HSWM.Types.Events
import HSWM.Types.TypeMap
import HSWM.Types.WM
import HSWM.Util.Types
import HSWM.XKB
import River
import GHC.Stack

runH :: HConf -> H a -> IO a
runH c (H a) = runReaderT a c

runHS :: HConf -> HState -> HS a -> IO (a, HState)
runHS c st (HS a) = runStateT (runReaderT a c) st

runInHS :: HasCallStack => (MonadIO m, MonadReader HConf m) => HS a -> m a
runInHS a = do
  conf <- ask
  when conf._stateLocked $ throwString $ "runInHS: state locked (attempted to nest state lock?)\n" ++ prettyCallStack callStack
  io $ bracketOnError (atomically $ takeTMVar conf._state) (atomically . tryPutTMVar conf._state) $ \st -> do
    res <- timeout 2_000_000 $ runHS conf {_stateLocked = True} st a
    case res of
      Just (r, st') -> atomically (putTMVar conf._state st') >> return r
      Nothing -> throwString $ "runInHS: timed out (2s): " ++ prettyCallStack callStack

liftH :: (MonadReader HConf m, MonadIO m) => H a -> m a
liftH a = do
  c <- ask
  io $ runH c a

-- a la xmonad
catchH :: HasCallStack => H a -> H a -> H a
catchH job errcase = do
  c <- ask
  io (runH c job)
    `catch` \e -> case fromException e of
      Just (_ :: ExitCode) -> throwM e
      _ -> do logError $ "exception in H action" :# [ "exception" .= show e, "callstack" .= prettyCallStack callStack ]
              errcase

catchHS :: HasCallStack => HS a -> HS a -> HS a
catchHS job errcase = do
  c <- ask
  s <- get
  (a, s') <- liftIO $ runHS c s job
        `catch` \e -> case fromException e of
          Just (_ :: ExitCode) -> throwM e
          _ -> do runH c $ logError $ "excption in HS action" :# [ "exception" .= show e, "callstack" .= prettyCallStack callStack ]
                  runHS c s errcase
  put s'
  return a

-- a la xmonad
userCode :: HasCallStack => H a -> H (Maybe a)
userCode a = catchH (Just <$> a) (return Nothing)

-- | Same as userCode but with a default argument to return instead of using
-- Maybe, provided for convenience.
userCodeDef :: HasCallStack => a -> H a -> H a
userCodeDef defValue a = fromMaybe defValue <$> userCode a

-- a la xmonad
userCodeS :: HasCallStack => HS a -> HS (Maybe a)
userCodeS a = catchHS (Just <$> a) (return Nothing)

-- | Same as userCode but with a default argument to return instead of using
-- Maybe, provided for convenience.
userCodeDefS :: HasCallStack => a -> HS a -> HS a
userCodeDefS defValue a = fromMaybe defValue <$> userCodeS a

-----------------------------------------------------------

-- * Manage/Render Event queues

class HasEventQueues env where
  pendingManageQL :: Lens' env (TQueue (HS ()))
  pendingRenderQL :: Lens' env (TQueue (HS ()))
  mainEventQL :: Lens' env (TQueue MainEvent)

instance HasEventQueues HConf where
  pendingManageQL = lens pendingManageQ $ \s a -> s {pendingManageQ = a}
  pendingRenderQL = lens pendingRenderQ $ \s a -> s {pendingRenderQ = a}
  mainEventQL = lens eventQueue $ \s a -> s { eventQueue = a}

getEventQueueFuncs ::
  (MonadReader env m, HasEventQueues env, MonadIO inner) =>
  -- | @(queueForManagePhase, queueForRenderPhase)@
  m (HS e1 -> inner (), HS e2 -> inner ())
getEventQueueFuncs = (wrap *** wrap) <$> asks ((,) <$> view pendingManageQL <*> view pendingRenderQL)
  where
    wrap q = atomically . writeTQueue q . void
