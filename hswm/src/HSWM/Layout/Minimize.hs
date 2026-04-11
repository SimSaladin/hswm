{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE PatternGuards #-}
{-# LANGUAGE TypeSynonymInstances #-}

----------------------------------------------------------------------------

-----------------------------------------------------------------------------

-- |
-- Module      :  HSWM.Layout.Minimize
-- Description :  Minimize windows, temporarily removing them from the layout.
-- Copyright   :  (c) Jan Vornberger 2009, Alejandro Serrano 2010
-- License     :  BSD3-style (see LICENSE)
--
-- Maintainer  :  jan.vornberger@informatik.uni-oldenburg.de
-- Stability   :  unstable
-- Portability :  not portable
--
-- Makes it possible to minimize windows, temporarily removing them
-- from the layout until they are restored.
module HSWM.Layout.Minimize
  ( -- * Usage
    -- $usage
    Minimize,
    minimize,
  )
where

import HSWM hiding (Minimize)
import HSWM.Layout.BoringWindows as BW
import HSWM.Layout.LayoutModifier
import HSWM.StackSet qualified as W
import HSWM.Util.ExtensibleState qualified as XS
import HSWM.Util.Minimize (Minimized (..))

-- $usage
-- You can use this module with the following in your @xmonad.hs@:
--
-- > import HSWM.Layout.Minimize
--
-- Then edit your @layoutHook@ by adding the Minimize layout modifier:
--
-- > myLayout = minimize (Tall 1 (3/100) (1/2)) ||| Full ||| etc..
-- > main = xmonad def { layoutHook = myLayout }
--
-- For more detailed instructions on editing the layoutHook see
-- <https://xmonad.org/TUTORIAL.html#customizing-xmonad the tutorial> and
-- "HSWM.Doc.Extending#Editing_the_layout_hook".
--
-- The module is designed to work together with "HSWM.Layout.BoringWindows" so
-- that minimized windows will be skipped over when switching the focused window with
-- the keyboard. Include 'BW.boringWindows' in your layout hook and see the
-- documentation of "HSWM.Layout.BoringWindows" on how to modify your keybindings.
--
-- See "HSWM.Actions.Minimize" for possible actions for minimizing/restoring windows
--
-- Also see "HSWM.Hooks.Minimize" if you want to be able to minimize
-- and restore windows from your taskbar.

data Minimize a = Minimize deriving (Read, Show)

minimize :: l RiverWindow -> ModifiedLayout Minimize l RiverWindow
minimize = ModifiedLayout Minimize

instance LayoutModifier Minimize RiverWindow where
  modifierDescription _ = "Minimize"

  modifyLayout Minimize wksp rect = do
    minimized <- XS.gets minimizedStack
    let stack = W.stack wksp
        filtStack = stack >>= W.filter (`notElem` minimized)
    runLayout (wksp {W.stack = filtStack}) rect

  handleMess Minimize m
    | Just BW.UpdateBoring <- fromMessage m = do
        minimized <- XS.gets minimizedStack
        ws <- gets (W.workspace . W.current . windowset)
        flip sendMessageWithNoRefresh ws $ BW.Replace "Minimize" minimized
        return Nothing
    | otherwise = return Nothing
