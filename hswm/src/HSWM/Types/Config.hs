-- |
-- Module      : HSWM.Types.Config
-- Description : Main config
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Types.Config where

import Foreign
import HSWM.Types.Events
import HSWM.Types.Layouts
import HSWM.Types.WM
import HSWM.Utils
import HSWM.XKB
import River
import River.Safe qualified as R

-- | Composable config modification.
type ConfigDoPure = forall m l. HSWMConfig m l -> HSWMConfig m l

type ConfigDoM m = forall l. HSWMConfig m l -> HSWMConfig m l
