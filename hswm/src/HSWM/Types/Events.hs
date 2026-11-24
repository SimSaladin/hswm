-- |
-- Module      : HSWM.Types.Events
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Types.Events where

import System.Posix (Signal)

-- | Main loop events.
data MainEvent
  = MainSaveToDisk
  | MainRestart {evExecutable :: FilePath}
  | MainSignal {evSignal :: Signal}
  | MainExit {evMessage :: String, evError :: Maybe SomeException}
  | MainCont
  deriving stock (Show, Generic)

class HandleEvent m event where
  handleEvent :: event -> m ()
