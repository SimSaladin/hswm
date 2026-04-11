-- |
-- Module      : HSWM.Types.Layouts
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Types.Layouts where

import HSWM.Types.WM
import HSWM.Util.Types
import River as HSWM.Types.WM (RiverWindow)
import HSWM.StackSet as W
import Data.Typeable
import HSWM.Types.Events
import Text.Read (reads)


-- | Using the 'Layout' as a witness, parse existentially wrapped windows
-- from a 'String'.
readsLayout :: Layout a -> String -> [(Layout a, String)]
readsLayout (Layout l) s = [(Layout (asTypeOf x l), rs) | (x, rs) <- reads s]


-- | 'LayoutMessages' are core messages that all layouts (especially stateful
-- layouts) should consider handling.
data LayoutMessages
  = -- | sent when a layout becomes non-visible
    Hide
  | -- | sent when xmonad is exiting or restarting
    ReleaseResources
  deriving (Eq, Show)

instance Message LayoutMessages

instance Message Event
