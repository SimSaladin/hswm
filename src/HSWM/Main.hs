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

import Core
import HSWM.Utils

hswm :: (LayoutClass l RiverWindow, Read (l RiverWindow)) => HSWMConfig l -> IO ()
hswm conf = do
  installSignalHandlers
  display <- openDisplay ""
  startHSWM display conf
