{-# OPTIONS_GHC -Wno-type-defaults #-}

-- |
-- Module      : HSWM.Util.Debug
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Util.Debug where

import Data.Map qualified as M
import Foreign
import HSWM
import Bindings.River qualified as R
--import Text.Printf
import Bindings.Wayland.Client qualified as WL

logEvent :: (MonadLogger m, Show a, Monoid (m b)) => a -> m b
logEvent ev = logDebug (fromString $ "evt: " ++ show ev) >> mempty

debugHook :: Event -> H All
debugHook ev
  | WindowManagerEvent R.RiverWindowManagerManageStart {} <- ev = mempty
  | WindowManagerEvent R.RiverWindowManagerRenderStart {} <- ev = mempty
  | WindowManagerEvent e <- ev = logEvent e
  | XkbKeyboardEvent e <- ev = logEvent e
  | XkbEvent (R.RiverXkbBindingPressed dt self) <- ev = do
      (xb :: XkbBinding (SomeAction H)) <- liftIO $ deRefStablePtr (castPtrToStablePtr $ castPtr dt)
      logDebug $ "XK (pressed)" :# [ "action" .= show xb.action,  "bind" .= show self ]
      mempty
  | XkbEvent (R.RiverXkbBindingReleased dt self) <- ev = do
      (xb :: XkbBinding (SomeAction H)) <- liftIO $ deRefStablePtr (castPtrToStablePtr $ castPtr dt)
      logDebug $ "XK (released)" :# [ "action" .= show xb.action,  "bind" .= show self ]
      mempty
  | SeatEvent R.RiverSeatPointerPosition {} <- ev = mempty
  | SeatEvent e <- ev = logEvent e
  | OutputEvent e <- ev = logEvent e
  | WindowEvent R.RiverWindowDimensions {} <- ev = mempty
  | WindowEvent R.RiverWindowTitle {} <- ev = mempty
  | WindowEvent e <- ev = logEvent e
  -- WL_*
  | WlOutputEvent _ <- ev = logEvent ev
  | WlShmEvent (WL.ShmFormat _ _ fmt) <- ev = logInfo (fromString ("SHM FORMAT: " <> ppShmFormat fmt)) >> mempty
  | WlSeatEvent e <- ev = logEvent e
  -- Ext_*
  | ForeignTopLevelHandleV1 e <- ev = logEvent e
  | otherwise = logEvent ev

debugAction :: H ()
debugAction = runInHS $ do
  logDebug "[[[ Windows ]]]" >> gets _windows  >>= mapM_ logTraceShow . M.elems
  logDebug "[[[WindowSet]]]" >> gets windowset >>= logTraceShow
  logDebug "[[[ Outputs ]]]" >> gets _outputs  >>= mapM_ logTraceShow
  logDebug "[[[  Seats  ]]]" >> gets _seats    >>= mapM_ logTraceShow
