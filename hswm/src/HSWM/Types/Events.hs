-- |
-- Module      : HSWM.Types.Events
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Types.Events where

import HSWM.Util.PP

import System.Posix (Signal)

import WL.ExtSessionLock.Staging.V1.Client qualified as ExtSL

-- | Main loop events.
data MainEvent
  = MainSaveToDisk
  | MainRestart { evExecutable :: FilePath }
  | MainSignal { evSignal :: Signal }
  | MainExit { evMessage :: String, evError :: Maybe SomeException }
  | MainCont
  deriving stock (Show, Generic)

-- deriving anyclass (NFData)

-- | Mash-up of all River/Wayland generated events
newtype Event
  =
  -- Misc
    SessionLockEvent ExtSL.SessionLockEvent
  deriving stock (Eq, Ord, Show, Generic, Data)
  deriving anyclass (NFData, Hashable)

deriving via PPGeneric Event instance Pretty Event

class HandleEvent m event where
  handleEvent :: event -> m ()

-- | To define empty event handler
instance (Applicative m, Monoid a) => Default (Event -> m a) where
  def _ = pure mempty
