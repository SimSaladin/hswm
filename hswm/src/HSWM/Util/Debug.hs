{-# OPTIONS_GHC -Wno-type-defaults #-}

------------------------------------------------------------------------------

------------------------------------------------------------------------------

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
import River.Objects qualified as R
import Text.Printf
import Wayland.Client qualified as WL
import Wayland.Client.Extras qualified as WL

debugHook :: Event -> H All
debugHook ev
  | WindowManagerEvent R.RiverWindowManagerManageStart {} <- ev = mempty
  | WindowManagerEvent R.RiverWindowManagerRenderStart {} <- ev = mempty
  | WindowManagerEvent e <- ev = logTraceShow e >> mempty
  | XkbKeyboardEvent e <- ev = logTraceShow e >> mempty
  | XkbEvent (R.RiverXkbBindingPressed dt _) <- ev = do
      (xb :: XkbBinding (SomeAction H)) <- liftIO $ deRefStablePtr (castPtrToStablePtr $ castPtr dt)
      logDebug $ display $ toText $ printf "[EH] KEY PRESS ev=%s action=%s" (show ev) (show xb.action)
      logTraceShow ev
      mempty
  | SeatEvent R.RiverSeatPointerPosition {} <- ev = mempty
  | SeatEvent e <- ev = logTraceShow e >> mempty
  | OutputEvent e <- ev = logTraceShow e >> mempty
  | WindowEvent R.RiverWindowDimensions {} <- ev = mempty
  | WindowEvent e <- ev = logTraceShow e >> mempty
  -- WL_*
  | WlOutputEvent _ <- ev = logTraceShow ev >> mempty -- pTrace e >> mempty
  | WlShmEvent (WL.ShmFormat _ _ fmt) <- ev = log' (display (toText $ "shm format: " ++ ppShmFormat (WL.Wl_shm_format $ fi fmt))) >> mempty
  | WlSeatEvent e <- ev = logTraceShow e >> mempty
  -- Ext_*
  | ForeignTopLevelHandleV1 e <- ev = do
      case e of
        WL.ForeignToplevelHandleTitle _ _ s -> logTraceShow (e, s)
        WL.ForeignToplevelHandleIdentifier _ _ s -> logTraceShow (e, s)
        WL.ForeignToplevelHandleAppId _ _ s -> logTraceShow (e, s)
        _ -> return ()
      mempty
  | otherwise = logTraceShow ev >> mempty

debugAction :: H ()
debugAction = runInHS $ do
  logDebug "[[[ Windows ]]]" >> gets _windows >>= mapM_ logTraceShow . M.elems
  logDebug "[[[WindowSet]]]" >> gets windowset >>= logTraceShow
  logDebug "[[[ Outputs ]]]" >> gets _outputs >>= mapM_ logTraceShow
  logDebug "[[[  Seats  ]]]" >> gets _seats >>= mapM_ logTraceShow
