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
    module HSWM.XKB,
    R.RiverColor(..),
  )
where

import           HSWM.Types.Config
import           HSWM.Types.Events
import           HSWM.Types.TypeMap
import           HSWM.Types.WM
import           HSWM.XKB hiding (LogLevel(..))
import qualified River as R

import           Control.Monad.State
import           GHC.Stack

-----------------------------------------------------------
-- * run / lift

runH :: HConf -> H a -> IO a
runH c (H a) = runReaderT a c

runHS :: HConf -> HState -> HS a -> IO (a, HState)
runHS c st (HS a) = flip runReaderT c $ runStateT a st

liftH' :: (MonadReader HConf m, MonadIO m) => H a -> m a
liftH' a = do
  c <- ask
  io $ runH c a

-----------------------------------------------------------
-- * catch

-- a la xmonad
catchH :: HasCallStack => H a -> H a -> H a
catchH job errcase = do
  c <- ask
  io (runH c job)
    `catch` \e -> case fromException e of
      Just (_ :: ExitCode) -> throwM e
      _ -> do logError $ "exception in H action" :# [ "exception" .= show e, "callStack" .= prettyCallStack callStack ]
              errcase

catchHS :: HasCallStack => HS a -> HS a -> HS a
catchHS job errcase = do
  c <- ask
  s <- get
  (a, s') <- io $
    runHS c s job
    `catch` \e -> case fromException e of
      Just (_ :: ExitCode) -> throwM e
      _ -> do runH c $ logError $ "exception in HS action" :# [ "exception" .= show e, "callStack" .= prettyCallStack callStack ]
              runHS c s errcase
  put s'
  return a

-- a la xmonad
userCode :: HasCallStack => H a -> H (Maybe a)
userCode a = catchH (Just <$> a) (return Nothing)

-- a la xmonad
userCodeS :: HasCallStack => HS a -> HS (Maybe a)
userCodeS a = catchHS (Just <$> a) (return Nothing)

-- | Same as userCode but with a default argument to return instead of using
-- Maybe, provided for convenience.
userCodeDef :: HasCallStack => a -> H a -> H a
userCodeDef defValue a = fromMaybe defValue <$> userCode a

-- | Same as userCode but with a default argument to return instead of using
-- Maybe, provided for convenience.
userCodeDefS :: HasCallStack => a -> HS a -> HS a
userCodeDefS defValue a = fromMaybe defValue <$> userCodeS a

-----------------------------------------------------------

-- * Manage/Render Event queues

writeManageQ :: (MonadReader s m, MonadIO m, s ~ HConf) => HS () -> m ()
writeManageQ x = do
    q <- asks (view pendingManageQ)
    atomically $ writeTQueue q x

writeRenderQ :: (MonadReader s m, MonadIO m, s ~ HConf) => HS () -> m ()
writeRenderQ x = do
    q <- asks (view pendingRenderQ)
    atomically $ writeTQueue q x

-- | Queue an event for the main event queue.
writeMainQ :: (MonadReader s m, MonadIO m, s ~ HConf) => MainEvent -> m ()
writeMainQ ev = do
    q <- asks (view eventQueue)
    atomically $ writeTQueue q ev

--------------------------------------------------
