-- |
-- Module      : HSWM.Types.Config
-- Description : Main config
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Types.Config where

import Foreign
import HSWM.Utils
import HSWM.XKB
import River
import River.Safe qualified as R

import HSWM.Types.WM
import HSWM.Types.Layouts
import HSWM.Types.Events

-- | User configuration
data HSWMConfig m l = HSWMConfig
  { keyBindings :: [((ModMask, KeySym), SomeAction m)],
    pointerBindings :: [((String, KeySym), SomeAction m)],
    defaultModMask :: !String,
    borderWidth :: !Int32,
    normalBorder :: !RiverColor,
    focusedBorder :: !RiverColor,
    borderEdges :: !Int32,
    startupHook :: !(m ()),
    exitHook :: !(m ()),
    handleEventHook :: !(Event -> m All),
    layoutHook :: !(l RiverWindow),
    manageHook :: !(m ()),
    renderHook :: !(m ()),
    logHook :: !(m ()),
    -- | Keyboard layout set for connected keyboards
    xkbLayout :: !(Maybe XkbRuleNames),
    workspaces :: [WorkspaceId],
    -- | Keyboard repeat (rate, delay)
    repeatInfo :: !(Maybe (Int32, Int32))
  }
  deriving stock (Generic)


-- | Default config (defaults).
instance (Default (m ()), Monoid (m ()), Monoid (m All)) => Default (HSWMConfig m Full) where
  def =
    (def :: HSWMConfig m Layout)
      { borderWidth = 2,
        normalBorder = parseRgba "0x0000B0",
        focusedBorder = parseRgba "0xFA0050",
        borderEdges = foldl' (.|.) 0 (fi . (.unwrap) <$> [EdgeLeft, EdgeRight, EdgeTop, EdgeBottom]),
        keyBindings = [],
        pointerBindings = [],
        defaultModMask = "Ctrl",
        startupHook = mempty,
        handleEventHook = mempty,
        layoutHook = Full,
        logHook = mempty,
        xkbLayout = Nothing,
        workspaces = ["1", "2", "3", "4"]
      }

deriving anyclass instance (Default (m ()), Monoid (m All), Monoid (m ())) => Default (HSWMConfig m Layout)

-- | Composable config modification.
type ConfigDoPure = forall m l. HSWMConfig m l -> HSWMConfig m l

type ConfigDoM m = forall l. HSWMConfig m l -> HSWMConfig m l
