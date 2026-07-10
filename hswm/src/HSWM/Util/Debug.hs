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

import           HSWM.Core
import           HSWM.Utils

import           WL.Client qualified as WL
import           River qualified as R

import           Data.Map qualified as M

logEvent :: (MonadLogger m, Show a, Monoid (m b)) => a -> m b
logEvent e = logEvent' "EV" e []

logEvent' :: (MonadLogger m, Show a, Monoid (m b)) => Text -> a -> [SeriesElem] -> m b
logEvent' str ev items = logDebug (("H.U.Debug:" <> str <> " " <> fromString (show ev)) :# items) >> mempty

debugHook :: Event -> H All
debugHook ev
  | WindowManagerEvent R.RiverWindowManagerManageStart {} <- ev = mempty
  | WindowManagerEvent R.RiverWindowManagerRenderStart {} <- ev = mempty
  | WindowManagerEvent e                                  <- ev = logEvent e
  | XkbKeyboardEvent e                                    <- ev = logEvent' "XKB" e []
  | XkbEvent e                                            <- ev = mempty
  -- | XkbEvent e                                            <- ev = logXkbEvent e
  | SeatEvent R.RiverSeatPointerPosition {} <- ev = mempty
  | SeatEvent R.RiverSeatPointerEnter {}    <- ev = mempty
  | SeatEvent R.RiverSeatPointerLeave {}    <- ev = mempty
  | SeatEvent e                             <- ev = logEvent' "S" e []
  | OutputEvent e                           <- ev = logEvent' "O" e []
  | WindowEvent R.RiverWindowDimensions {}  <- ev = mempty
  | WindowEvent R.RiverWindowTitle {}       <- ev = mempty
  | WindowEvent e                           <- ev = logEvent' "W" e []
  | WlOutputEvent _                         <- ev = logEvent' "WlOutput" ev []
  | WlShmEvent (WL.ShmFormat _ _ fmt)       <- ev = logInfo (fromString ("SHM FORMAT: " <> ppShmFormat fmt)) >> mempty
  | WlSeatEvent e                           <- ev = logEvent e
  | otherwise = logEvent ev

logXkbEvent :: (MonadIO m, MonadLogger m, Monoid (m All)) => R.RiverXkbBindingEvent -> m All
logXkbEvent ev = case ev of
  R.RiverXkbBindingPressed dt self -> logBinding "Press" dt self
  R.RiverXkbBindingReleased dt self -> logBinding "Release" dt self
  R.RiverXkbBindingStopRepeat dt self -> logBinding "StopRepeat" dt self

logBinding :: (MonadLogger m, MonadIO m, Show binding, Monoid (m All)) => Text -> Ptr Void -> binding -> m All
logBinding str dt self = do
  (xb :: XkbBinding (SomeAction H)) <- liftIO $ deRefStablePtr (castPtrToStablePtr $ castPtr dt)
  logEvent' "XKB" str [ "action" .= show xb.boundAction,  "bind" .= show self ]

debugAction :: H ()
debugAction = runInHS $ do
  logDebug "[[[ Outputs ]]]" >> use outputList >>= mapM_ logTraceShow
  logDebug "[[[  Seats  ]]]" >> use seatList   >>= mapM_ logTraceShow
  logDebug "[[[ Windows ]]]" >> use _windows   >>= mapM_ logTraceShow . M.elems
  logDebug "[[[WindowSet]]]" >> use windowset  >>= logTraceShow
