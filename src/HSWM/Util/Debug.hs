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
import qualified Wayland.Client.Extras as WL
import qualified Data.Map as M
import           Foreign
import           Foreign.C

debugHook :: Event -> H All
debugHook ev
   | WindowManagerEvent R.RiverWindowManagerManageStart{} <- ev = mempty
   | WindowManagerEvent R.RiverWindowManagerRenderStart{} <- ev = mempty
   | XkbEvent (R.RiverXkbBindingPressed dt _)   <- ev = do
      (xb :: XkbBinding SomeAction) <- liftIO $ deRefStablePtr (castPtrToStablePtr $ castPtr dt)
      debug' $ toText $ printf "[EH] KEY PRESS ev=%s action=%s" (show ev) (show xb.action)
      pTrace ev
      mempty

   | SeatEvent R.RiverSeatPointerPosition{}   <- ev = mempty
   | SeatEvent e                     <- ev = pTrace e >> mempty

   | OutputEvent e                   <- ev = pTrace e >> mempty

   | WindowEvent R.RiverWindowDimensions{}  <- ev = mempty
   | WindowEvent e                   <- ev = pTrace e >> mempty

   | WlOutputEvent _                 <- ev = mempty -- pTrace e >> mempty
   | XkbKeyboardEvent e              <- ev = pTrace e >> mempty
   | WindowManagerEvent e            <- ev = pTrace e >> mempty
   | WlShmEvent _                    <- ev = mempty

   | ForeignTopLevelHandleV1 e <- ev = do
       io $ case e of
           WL.ExtForeignToplevelHandleV1Title _ _ cs -> peekCString (unConstPtr cs) >>= \s -> pTrace (e, s)
           WL.ExtForeignToplevelHandleV1Identifier _ _ cs -> peekCString (unConstPtr cs) >>= \s -> pTrace (e, s)
           WL.ExtForeignToplevelHandleV1AppId _ _ cs -> peekCString (unConstPtr cs) >>= \s -> pTrace (e, s)
           _ -> return ()
       mempty

   | otherwise                             = pTrace ev >> mempty

debugAction :: H ()
debugAction = do
  pTrace "[[[ Outputs ]]]" >> gets _outputs >>= mapM_ pTrace
  pTrace "[[[ Windows ]]]" >> gets _windows >>= mapM_ pTrace . M.elems
  pTrace "[[[WindowSet]]]" >> gets windowset >>= pTrace
