-- |
-- Module      : HSWM.Types.Events
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Types.Events where

import Bindings.River qualified as R
import Bindings.Wayland.Client qualified as WL
import Bindings.Wayland.ExtIdleNotifyV1 qualified as Ext
import Bindings.Wayland.ExtSessionLockV1 qualified as SL
import Bindings.Wayland.ExtForeignTopLevelListV1 qualified as WL
import Bindings.Wayland.XdgOutputUnstableV1 qualified as Zdg
import Bindings.Wlr.InputMethodUnstableV2 qualified as Zwp
import Bindings.Wlr.OutputManagementUnstableV1 qualified as Wlr

-- | Mash-up of all River/Wayland generated events
data Event
  = -- River_*
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
    ZdgOutputEvent !Zdg.OutputEvent
  deriving (Show, Generic)

data MainEvent
  = MainRestart FilePath
  | MainExit String
  | MainPoll
  | MainSaveToDisk
  deriving (Eq, Show, Generic)

instance (Monoid (m All)) => Default (Event -> m All) where
  def _ = mempty
