-- |
-- Module      : HSWM.Types.Events
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Types.Events where

import HSWM.Util.PP

import River qualified as R
import System.Posix (Signal)
import WL.Client qualified as WL
import WL.ExtForeignToplevelList.Staging.V1.Client qualified as ExtFTL
import WL.ExtIdleNotify.Staging.V1.Client qualified as ExtIN
import WL.ExtSessionLock.Staging.V1.Client qualified as ExtSL
import WL.Wlr.InputMethod.Unstable.V2.Client qualified as WlrIM
import WL.Wlr.OutputManagement.Unstable.V1.Client qualified as WlrOM
import WL.Wlr.OutputPowerManagement.Unstable.V1.Client qualified as WlrOPM
import WL.XdgOutput.Unstable.V1.Client qualified as Xdg

-- | Main loop events.
data MainEvent
  = MainPoll
  | MainSignal Signal
  | MainExit String SomeException
  | MainRestart FilePath
  | MainSaveToDisk
  deriving stock (Show, Generic)

-- deriving anyclass (NFData)

-- | Mash-up of all River/Wayland generated events
data Event
  = -- River
    WindowManagerEvent !R.RiverWindowManagerEvent
  | OutputEvent !R.RiverOutputEvent
  | WindowEvent !R.RiverWindowEvent
  | SeatEvent !R.RiverSeatEvent
  | PointerEvent !R.RiverPointerBindingEvent
  | XkbEvent !R.RiverXkbBindingEvent
  | XkbSeatEvent !R.RiverXkbBindingsSeatEvent
  | XkbConfigEvent !R.RiverXkbConfigEvent
  | XkbKeyboardEvent !R.RiverXkbKeyboardEvent
  | LayerShellOutputEvent !R.RiverLayerShellOutputEvent
  | LayerShellSeatEvent !R.RiverLayerShellSeatEvent
  | InputManagerEvent !R.RiverInputManagerEvent
  | InputDeviceEvent !R.RiverInputDeviceEvent
  | LibinputConfigEvent !R.RiverLibinputConfigEvent
  | LibinputDeviceEvent !R.RiverLibinputDeviceEvent
  | -- Wayland core
    WlShmEvent !WL.ShmEvent
  | WlSeatEvent !WL.SeatEvent
  | WlOutputEvent !WL.OutputEvent
  | WlShellSurfaceEvent !WL.ShellSurfaceEvent
  -- | WlKeyboardEvent !WL.KeyboardEvent
  | WlPointerEvent !WL.PointerEvent
  | WlTouchEvent !WL.TouchEvent
  | -- Wlroots
    WlrIMEvent !WlrIM.InputMethodEvent
  | WlrIMPopupSurfaceEvent !WlrIM.InputPopupSurfaceEvent
  | WlrIMKeyboardGrabEvent !WlrIM.InputMethodKeyboardGrabEvent
  | WlrOutputManagerEvent !WlrOM.OutputManagerEvent
  | WlrOutputHeadEvent !WlrOM.OutputHeadEvent
  | OutputPowerEvent !WlrOPM.OutputPowerEvent
  | -- Misc
    XdgOutputEvent !Xdg.OutputEvent
  | SessionLockEvent !ExtSL.SessionLockEvent
  | IdleNotificationEvent !ExtIN.IdleNotificationEvent
  | FTopLevelListEvent !ExtFTL.ForeignToplevelListEvent
  | FTopLevelHandleEvent !ExtFTL.ForeignToplevelHandleEvent
  deriving stock (Eq, Ord, Show, Generic, Data)
  deriving anyclass (NFData, Hashable)

deriving via PPGeneric Event instance Pretty Event

class HandleEvent m event where
  handleEvent :: event -> m ()

-- | To define empty event handler
instance (Applicative m, Monoid a) => Default (Event -> m a) where
  def _ = pure mempty
