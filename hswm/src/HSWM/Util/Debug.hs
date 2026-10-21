{-# OPTIONS_GHC -Wno-type-defaults #-}

{- |
Module      : HSWM.Util.Debug
Description : Short description
Copyright   : (c) Samuli Thomasson, 2026

Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
Stability   : unstable
Portability : unportable
-}
module HSWM.Util.Debug where

import Data.Typeable (typeOf)
import HSWM.Core
import HSWM.Util.PP
import HSWM.Utils

-- import qualified Prettyprinter.Combinators as PP
import Prettyprinter.Show qualified as PP
import River qualified as R
import WL.Client qualified as WL

debugHook :: Event -> H All
debugHook ev
    | WindowManagerEvent R.RiverWindowManagerManageStart{} <- ev = mempty
    | WindowManagerEvent R.RiverWindowManagerRenderStart{} <- ev = mempty
    | WindowManagerEvent e <- ev = logEventShow src e []
    | XkbKeyboardEvent e <- ev = logEventShow src e []
    | XkbEvent _ <- ev = mempty
    -- \| XkbEvent e                                            <- ev = logXkbEvent e
    | SeatEvent R.RiverSeatPointerPosition{} <- ev = mempty
    | SeatEvent R.RiverSeatPointerEnter{} <- ev = mempty
    | SeatEvent R.RiverSeatPointerLeave{} <- ev = mempty
    | SeatEvent R.RiverSeatOpDelta{} <- ev = mempty
    | SeatEvent R.RiverSeatWindowInteraction{} <- ev = mempty
    | XkbSeatEvent R.RiverXkbBindingsSeatModifiersUpdate{} <- ev = mempty
    | SeatEvent e <- ev = logEventShow src e []
    | OutputEvent e <- ev = logEventShow src e []
    | WindowEvent R.RiverWindowDimensions{} <- ev = mempty
    | WindowEvent R.RiverWindowTitle{} <- ev = mempty
    | WindowEvent e <- ev = logEventShow src e []
    | WlOutputEvent _ <- ev = logEventShow src ev []
    | WlShmEvent (WL.ShmFormat _ _ fmt) <- ev = logInfoNS src (fromString ("SHM FORMAT: " <> ppShmFormat fmt)) >> mempty
    | WlSeatEvent e <- ev = logEventShow src e []
    | WlrOutputHeadEvent{} <- ev = mempty
    | LibinputDeviceEvent{} <- ev = mempty
    | InputDeviceEvent{} <- ev = mempty
    | otherwise = logEventShow src ev []
  where
    src = "debugHook"

debugAction :: H ()
debugAction = runInHS $ do
    logShow "Outputs" =<< use outputList -- >>= mapM_ logTraceShow
    logShow "Seats" =<< use seatList -- >>= mapM_ logTraceShow
    logShow "Windows" =<< use _windows -- >>= mapM_ logTraceShow . M.elems
    logShow "WindowSet" =<< use windowset -- >>= logTraceShow
  where
    logShow (k :: Text) x = logDebug $ ppRenderForLog (ppShow x) :# ["_debug" .= k]

-- * Debug logging functions

logXkbEvent :: (MonadIO m, MonadLogger m, Monoid (m All)) => Text -> R.RiverXkbBindingEvent -> m All
logXkbEvent src ev = case ev of
    R.RiverXkbBindingPressed dt self -> logBinding src "Press" dt self
    R.RiverXkbBindingReleased dt self -> logBinding src "Release" dt self
    R.RiverXkbBindingStopRepeat dt self -> logBinding src "StopRepeat" dt self

logBinding ::
    (MonadLogger m, MonadIO m, Typeable binding, Show binding, Generic binding, Monoid (m All)) =>
    Text -> Text -> Ptr Void -> binding -> m All
logBinding src str dt self = do
    (xb :: XkbBinding (SomeAction H)) <- liftIO $ deRefStablePtr (castPtrToStablePtr $ castPtr dt)
    logEventShow src self ["event" .= str, "action" .= show xb.boundAction, "seat" .= show xb.riverSeat]

-- ** Event logging

logEventShow :: (MonadLogger m, Typeable a, Show a, Generic a, Monoid (m b)) => Text -> a -> [SeriesElem] -> m b
logEventShow src ev items = do
    logDebugNS src $ "event: " <> ppRenderForLog (ppShow ev) :# (["type" .= show (typeOf ev)] <> items)
    mempty

logEventPretty :: (MonadLogger m, Typeable a, PP.Pretty a, Monoid (m b)) => Text -> a -> [SeriesElem] -> m b
logEventPretty src ev items = do
    logDebugNS src $ ppRenderForLog (PP.pretty ev) :# (["type" .= show (typeOf ev)] <> items)
    mempty
