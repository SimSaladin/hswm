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

import Data.Typeable (typeOf)
import HSWM.Core
import HSWM.Util.PP
--import HSWM.Utils

import Data.Dynamic
import WL.Wlr.OutputManagement.Unstable.V1.Client qualified as WlrOM

-- import WL.Wlr.OutputPowerManagement.Unstable.V1.Client qualified as WlrOPM
-- import qualified Prettyprinter.Combinators as PP
import Prettyprinter.Show qualified as PP
import River qualified as R
import WL.Client qualified as WL

debugHookDyn :: Dynamic -> H All
debugHookDyn dyn
  | Just R.RiverWindowManagerManageStart{} <- ev = mempty
  | Just R.RiverWindowManagerRenderStart{} <- ev = mempty
  | Just (e :: R.RiverWindowManagerEvent) <- ev = logEventShow src e []
  | Just (e :: R.RiverXkbKeyboardEvent) <- ev = logEventShow src e []
  | Just (_ :: R.RiverXkbBindingEvent) <- ev = mempty
  | Just R.RiverSeatPointerPosition{} <- ev = mempty
  | Just R.RiverSeatPointerEnter{} <- ev = mempty
  | Just R.RiverSeatPointerLeave{} <- ev = mempty
  | Just R.RiverSeatOpDelta{} <- ev = mempty
  | Just R.RiverSeatWindowInteraction{} <- ev = mempty
  | Just R.RiverXkbBindingsSeatModifiersUpdate{} <- ev = mempty
  | Just (e :: R.RiverSeatEvent) <- ev = logEventShow src e []
  | Just (e :: R.RiverOutputEvent) <- ev = logEventShow src e []
  | Just R.RiverWindowDimensions{} <- ev = mempty
  | Just R.RiverWindowTitle{} <- ev = mempty
  | Just (e :: R.RiverWindowEvent) <- ev = logEventShow src e []
  | Just (e :: WL.OutputEvent) <- ev = logEventShow src e []
  | Just (WL.ShmFormat _ _ fmt) <- ev = logInfoNS src (fromString ("SHM FORMAT: " <> ppShmFormat fmt)) >> mempty
  | Just (e :: WL.SeatEvent) <- ev = logEventShow src e []
  | Just (_ :: WlrOM.OutputHeadEvent) <- ev = mempty
  | Just (_ :: R.RiverInputDeviceEvent) <- ev = mempty
  | Just (_ :: R.RiverLibinputDeviceEvent) <- ev = mempty
  | otherwise = do
      logInfoNS src $ fromString $ "unhandled event of type " <> show (dynTypeRep dyn)
      mempty
  where
    ev :: (Typeable a) => Maybe a
    ev = fromDynamic dyn
    src = "debugHook"

debugHook :: Event -> H All
debugHook ev
  | OutputEvent e <- ev = logEventShow src e []
  | WlrOutputHeadEvent{} <- ev = mempty
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
