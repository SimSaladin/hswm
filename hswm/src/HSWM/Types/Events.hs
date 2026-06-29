-- |
-- Module      : HSWM.Types.Events
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Types.Events where

import River qualified as R
import WL.Client qualified as WL

import WL.ExtIdleNotify.Staging.V1.Client qualified as Ext
import WL.ExtSessionLock.Staging.V1.Client qualified as SL
import WL.ExtForeignToplevelList.Staging.V1.Client qualified as WL
import WL.XdgOutput.Unstable.V1.Client qualified as Xdg
import WL.Wlr.InputMethod.Unstable.V2.Client qualified as Zwp
import WL.Wlr.OutputManagement.Unstable.V1.Client qualified as Wlr

import System.Posix (Signal)

-- | Main loop events.
data MainEvent
  = MainPoll
  | MainSignal Signal
  | MainExit String SomeException
  | MainRestart FilePath
  | MainSaveToDisk
  deriving (Show, Generic)

class HandleEvent m event where
  handleEvent :: event -> m ()

-- | Mash-up of all River/Wayland generated events
data Event
  = -- River_*
    WindowManagerEvent    !R.RiverWindowManagerEvent
  | OutputEvent           !R.RiverOutputEvent
  | WindowEvent           !R.RiverWindowEvent
  | SeatEvent             !R.RiverSeatEvent
  | PointerEvent          !R.RiverPointerBindingEvent
  | XkbEvent              !R.RiverXkbBindingEvent
  | XkbSeatEvent          !R.RiverXkbBindingsSeatEvent
  | XkbConfigEvent        !R.RiverXkbConfigEvent
  | XkbKeyboardEvent      !R.RiverXkbKeyboardEvent
  | LayerShellOutputEvent !R.RiverLayerShellOutputEvent
  | LayerShellSeatEvent   !R.RiverLayerShellSeatEvent
  | InputManagerEvent     !R.RiverInputManagerEvent
  | InputDeviceEvent      !R.RiverInputDeviceEvent
  | LibinputConfigEvent   !R.RiverLibinputConfigEvent
  | LibinputDeviceEvent   !R.RiverLibinputDeviceEvent
  | -- Wl_*
    WlShmEvent !WL.ShmEvent
  | WlSeatEvent !WL.SeatEvent
  | WlOutputEvent !WL.OutputEvent
  | WlShellSurfaceEvent !WL.ShellSurfaceEvent
  | WlKeyboardEvent !WL.KeyboardEvent
  | WlPointerEvent !WL.PointerEvent
  | -- Ext_*
    ForeignTopLevelListV1 !WL.ForeignToplevelListEvent
  | ForeignTopLevelHandleV1 !WL.ForeignToplevelHandleEvent
  | SessionLockEvent !SL.SessionLockEvent
  | ExtIdleNotificationEvent !Ext.IdleNotificationEvent
  | -- Zwp_*
    ZwpIM2PopupSurfaceE !Zwp.InputPopupSurfaceEvent
  | ZwpIM2KeyboardGrabE !Zwp.InputMethodKeyboardGrabEvent
  | ZwpIM2E !Zwp.InputMethodEvent
  | -- Wlr_*
    WlrOutputManagerEvent !Wlr.OutputManagerEvent
  | WlrOutputHeadEvent !Wlr.OutputHeadEvent
  | -- Xdg
    ZdgOutputEvent !Xdg.OutputEvent
  deriving (Eq, Show, Generic)

instance (Monoid (m All)) => Default (Event -> m All) where
  def _ = mempty
