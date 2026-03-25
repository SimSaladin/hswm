------------------------------------------------------------------------------
-- |
-- Module      : HSWM.Main
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
-- License     : WTFPL
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
--
------------------------------------------------------------------------------
module HSWM.Main  where

import HSWM.Types
import HSWM.Actions
import Core

testMain :: IO ()
testMain = do
  display <- openDisplay ""
  startHSWM display $ addKeys myKeys def
    where
  myKeys =
    [ (("M", "n" :: String), toSomeAction FocusNext)
    , (("M", "Return"),      toSomeAction $ LaunchProgram "evince" [])
    ]
