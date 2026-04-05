------------------------------------------------------------------------------
-- |
-- Module      : HSWM.Main
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
------------------------------------------------------------------------------
module HSWM.Main  where

import Core
import HSWM.Utils

hswm :: (LayoutClass l RiverWindow, Read (l RiverWindow)) => HSWMConfig l -> IO ()
hswm conf = do
  installSignalHandlers
  display <- displayConnect Nothing
  startHSWM display conf
