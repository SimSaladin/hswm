----------------------------------------------------------------------------
-- |
-- Module      :  HSWM.Actions.Minimize
-- Description :  Actions for minimizing and maximizing windows.
-- Copyright   :  (c) Bogdan Sinitsyn (2016)
-- License     :  BSD3-style (see LICENSE)
--
-- Maintainer  :  Bogdan Sinitsyn <bogdan.sinitsyn@gmail.com>
-- Stability   :  unstable
-- Portability :  not portable
--
-- Adds actions for minimizing and maximizing windows
--
-- This module should be used with "HSWM.Layout.Minimize". Add 'minimize' to your
-- layout modifiers as described in "HSWM.Layout.Minimize" and use actions from
-- this module
--
-- Possible keybindings:
--
-- >        , ((modm,               xK_m     ), withFocused minimizeWindow)
-- >        , ((modm .|. shiftMask, xK_m     ), withLastMinimized maximizeWindowAndFocus)
--
-----------------------------------------------------------------------------

module HSWM.Actions.Minimize
  ( -- * Usage
    -- $usage
    minimizeWindow
  , maximizeWindow
  , maximizeWindowAndFocus
  , withLastMinimized
  , withLastMinimized'
  , withFirstMinimized
  , withFirstMinimized'
  , withMinimized
  ) where

import HSWM
import qualified HSWM.StackSet as W

import qualified HSWM.Layout.BoringWindows as BW
import qualified HSWM.Util.ExtensibleState as XS
import HSWM.Util.Minimize
--import HSWM.Util.RiverWindowProperties (getProp32)

import Foreign.C.Types (CLong)
import qualified Data.List as L
import qualified Data.Map as M

-- $usage
-- Import this module with "HSWM.Layout.Minimize" and "HSWM.Layout.BoringWindows":
--
-- > import HSWM.Actions.Minimize
-- > import HSWM.Layout.Minimize
-- > import qualified HSWM.Layout.BoringWindows as BW
--
-- Then apply 'minimize' and 'boringWindows' to your layout hook and use some
-- actions from this module:
--
-- > main = xmonad def { layoutHook = minimize . BW.boringWindows $ whatever }
--
-- Example keybindings:
--
-- >        , ((modm,               xK_m     ), withFocused minimizeWindow      )
-- >        , ((modm .|. shiftMask, xK_m     ), withLastMinimized maximizeWindow)

setMinimizedState :: RiverWindow -> Bool -> HS ()
setMinimizedState win True = modifyWindow win $ \s -> s { minimized = True, p_set_visible = Just False }
setMinimizedState win False = modifyWindow win $ \s -> s { minimized = False, p_set_visible = Just True }

setMinimized :: RiverWindow -> HS ()
setMinimized win = setMinimizedState win True

setNotMinimized :: RiverWindow -> HS ()
setNotMinimized win = setMinimizedState win False

-- It does not just set minimizedStack to newWindows because it should save
-- order in which elements were added (newer first)
modified :: (RectMap -> RectMap) -> HS Bool
modified f = XS.modified $
    \Minimized { rectMap = oldRectMap, minimizedStack = oldStack } ->
      let newRectMap = f oldRectMap
          newWindows = M.keys newRectMap
       in Minimized { rectMap = newRectMap
                    , minimizedStack = (newWindows L.\\ oldStack)
                                       ++
                                       (oldStack `L.intersect` newWindows)
                    }


-- | Minimize a window
minimizeWindow :: RiverWindow -> HS ()
minimizeWindow w = withWindowSet $ \ws ->
  whenM (modified $ M.insert w (M.lookup w $ W.floating ws)) $ do
    setMinimized w
    windows $ W.sink w
    BW.focusDown


-- | Maximize window and apply a function to maximized window and 'WindowSet'
maximizeWindowAndChangeWSet :: (RiverWindow -> WindowSet -> WindowSet) -> RiverWindow -> HS ()
maximizeWindowAndChangeWSet f w = do
  mrect <- XS.gets (join . M.lookup w . rectMap)
  whenM (modified $ M.delete w) $ do
    setNotMinimized w
    broadcastMessage BW.UpdateBoring
    windows $ f w . maybe id (W.float w) mrect

-- | Just maximize a window without focusing
maximizeWindow :: RiverWindow -> HS ()
maximizeWindow = maximizeWindowAndChangeWSet $ const id

-- | Maximize a window and then focus it
maximizeWindowAndFocus :: RiverWindow -> HS ()
maximizeWindowAndFocus = maximizeWindowAndChangeWSet W.focusWindow

-- | Perform an action with first minimized window on current workspace
--   or do nothing if there is no minimized windows on current workspace
withFirstMinimized :: (RiverWindow -> HS ()) -> HS ()
withFirstMinimized action = withFirstMinimized' (`whenJust` action)

-- | Like withFirstMinimized but the provided action is always invoked with a
--   'Maybe RiverWindow', that will be nothing if there is no first minimized window.
withFirstMinimized' :: (Maybe RiverWindow -> HS ()) -> HS ()
withFirstMinimized' action = withMinimized (action . listToMaybe . reverse)

-- | Perform an action with last minimized window on current workspace
--   or do nothing if there is no minimized windows on current workspace
withLastMinimized :: (RiverWindow -> HS ()) -> HS ()
withLastMinimized action = withLastMinimized' (`whenJust` action)

-- | Like withLastMinimized but the provided action is always invoked with a
--   'Maybe RiverWindow', that will be nothing if there is no last minimized window.
withLastMinimized' :: (Maybe RiverWindow -> HS ()) -> HS ()
withLastMinimized' action = withMinimized (action . listToMaybe)

withMinimized :: ([RiverWindow] -> HS a) -> HS a
withMinimized action = do
  minimized <- XS.gets minimizedStack
  currentStack <- withWindowSet $ return . W.index
  action $ minimized `L.intersect` currentStack
