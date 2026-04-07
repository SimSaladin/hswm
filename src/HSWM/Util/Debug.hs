{-# OPTIONS_GHC -Wno-type-defaults #-}
------------------------------------------------------------------------------
-- |
-- Module      : HSWM.Util.Debug
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
------------------------------------------------------------------------------
module HSWM.Util.Debug  where

import HSWM
import qualified River.Objects as R
import qualified Wayland.Client as WL
import qualified Wayland.Client.Extras as WL
import qualified Data.Map as M
import           Foreign

debugHook :: Event -> H All
debugHook ev
   | WindowManagerEvent R.RiverWindowManagerManageStart{} <- ev = mempty
   | WindowManagerEvent R.RiverWindowManagerRenderStart{} <- ev = mempty
   | WindowManagerEvent e                                 <- ev = pTrace e >> mempty

   | XkbKeyboardEvent e                                   <- ev = pTrace e >> mempty

   | XkbEvent (R.RiverXkbBindingPressed dt _)             <- ev = do
      (xb :: XkbBinding (SomeAction H)) <- liftIO $ deRefStablePtr (castPtrToStablePtr $ castPtr dt)
      debug' $ toText $ printf "[EH] KEY PRESS ev=%s action=%s" (show ev) (show xb.action)
      pTrace ev
      mempty

   | SeatEvent R.RiverSeatPointerPosition{}   <- ev = mempty
   | SeatEvent e                              <- ev = pTrace e >> mempty

   | OutputEvent e                            <- ev = pTrace e >> mempty

   | WindowEvent R.RiverWindowDimensions{}    <- ev = mempty
   | WindowEvent e                            <- ev = pTrace e >> mempty

   -- WL_*
   | WlOutputEvent _                          <- ev = mempty -- pTrace e >> mempty
   | WlShmEvent (WL.ShmFormat _ _ fmt)        <- ev = log' (toText $ "shm format: " ++ ppShmFormat (WL.Wl_shm_format $ fi fmt)) >> mempty
   | WlSeatEvent e                            <- ev = pTrace e >> mempty

   -- Ext_*
   | ForeignTopLevelHandleV1 e                <- ev = do
       io $ case e of
           WL.ForeignToplevelHandleTitle _ _ s -> pTrace (e, s)
           WL.ForeignToplevelHandleIdentifier _ _ s -> pTrace (e, s)
           WL.ForeignToplevelHandleAppId _ _ s -> pTrace (e, s)
           _ -> return ()
       mempty

   | otherwise                             = pTrace ev >> mempty

debugAction :: H ()
debugAction = do
  pTrace "[[[ Windows ]]]" >> gets _windows >>= mapM_ pTrace . M.elems
  pTrace "[[[WindowSet]]]" >> gets windowset >>= pTrace
  pTrace "[[[ Outputs ]]]" >> gets _outputs >>= mapM_ pTrace
  pTrace "[[[  Seats  ]]]" >> gets _seats >>= mapM_ pTrace
