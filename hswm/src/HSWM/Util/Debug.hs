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

import           Data.Typeable (typeOf)
import           HSWM.Core
import           HSWM.Util.PP
import           HSWM.Utils
-- import qualified Prettyprinter.Combinators as PP
import qualified Prettyprinter.Show as PP
import qualified River as R
import qualified WL.Client as WL

-- PP.ppGeneric

debugHook :: Event -> H All
debugHook ev
  | WindowManagerEvent R.RiverWindowManagerManageStart {} <- ev = mempty
  | WindowManagerEvent R.RiverWindowManagerRenderStart {} <- ev = mempty
  | WindowManagerEvent e                                  <- ev = logEventShow "WM" e []
  | XkbKeyboardEvent e                                    <- ev = logEventShow "XKB" e []
  | XkbEvent _                                            <- ev = mempty
  -- | XkbEvent e                                            <- ev = logXkbEvent e
  | SeatEvent R.RiverSeatPointerPosition {} <- ev = mempty
  | SeatEvent R.RiverSeatPointerEnter {}    <- ev = mempty
  | SeatEvent R.RiverSeatPointerLeave {}    <- ev = mempty
  | SeatEvent R.RiverSeatOpDelta {}         <- ev = mempty
  | SeatEvent R.RiverSeatWindowInteraction {} <- ev = mempty
  | SeatEvent e                             <- ev = logEventPretty e []
  | OutputEvent e                           <- ev = logEventShow "O" e []
  | WindowEvent R.RiverWindowDimensions {}  <- ev = mempty
  | WindowEvent R.RiverWindowTitle {}       <- ev = mempty
  | WindowEvent e                           <- ev = logEventShow "W" e []
  | WlOutputEvent _                         <- ev = logEventShow "WlOutput" ev []
  | WlShmEvent (WL.ShmFormat _ _ fmt)       <- ev = logInfo (fromString ("SHM FORMAT: " <> ppShmFormat fmt)) >> mempty
  | WlSeatEvent e                           <- ev = logEventShow "WlSeat" e []
  | otherwise = logEventShow "?" ev []

debugAction :: H ()
debugAction = runInHS $ do
  logShow "Outputs" =<< use outputList   -- >>= mapM_ logTraceShow
  logShow "Seats" =<< use seatList       -- >>= mapM_ logTraceShow
  logShow "Windows" =<< use _windows     -- >>= mapM_ logTraceShow . M.elems
  logShow "WindowSet" =<< use windowset  -- >>= logTraceShow
    where
      logShow (k :: Text) x = logDebug $ ppRenderForLog (ppShow x) :# [ "_debug" .= k ]

-- * Debug logging functions

logXkbEvent :: (MonadIO m, MonadLogger m, Monoid (m All)) => R.RiverXkbBindingEvent -> m All
logXkbEvent ev = case ev of
  R.RiverXkbBindingPressed dt self -> logBinding "Press" dt self
  R.RiverXkbBindingReleased dt self -> logBinding "Release" dt self
  R.RiverXkbBindingStopRepeat dt self -> logBinding "StopRepeat" dt self

logBinding :: (MonadLogger m, MonadIO m, Typeable binding, Show binding, Generic binding, Monoid (m All))
           => Text -> Ptr Void -> binding -> m All
logBinding str dt self = do
  (xb :: XkbBinding (SomeAction H)) <- liftIO $ deRefStablePtr (castPtrToStablePtr $ castPtr dt)
  logEventShow "XKB" self [ "event" .= str, "action" .= show xb.boundAction,  "seat" .= show xb.riverSeat ]

-- ** Event logging

logEventShow :: (MonadLogger m, Typeable a, Show a, Generic a, Monoid (m b)) => Text -> a -> [SeriesElem] -> m b
logEventShow str ev items = do
  logDebug $ "event: " <> str <> ": " <> ppRenderForLog (ppShow ev) :# ([ "event-type" .= show (typeOf ev) ] <> items)
  mempty

logEventPretty :: (MonadLogger m, Typeable a, PP.Pretty a, Monoid (m b)) => a -> [SeriesElem] -> m b
logEventPretty ev items = do
  logDebug $ ppRenderForLog (PP.pretty ev) :# ([ "event-type" .= show (typeOf ev) ] <> items)
  mempty
