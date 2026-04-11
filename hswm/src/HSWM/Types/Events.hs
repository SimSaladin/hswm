-- |
-- Module      : HSWM.Types.Events
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Types.Events where

import River.Objects qualified as R
import Wayland.Client qualified as WL
import Wayland.Client.Extras qualified as WL
import Wlr qualified as Zwp
import qualified Bindings.Wayland.ExtSessionLockV1 as SL
import qualified Bindings.Wayland.XdgOutputUnstableV1 as Zdg
import qualified Bindings.Wayland.WlrOutputManagementUnstableV1 as Wlr
import qualified Bindings.Wayland.FractionalScaleV1 as FS

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
  | -- Ext_*
    ForeignTopLevelListV1 !WL.ForeignToplevelListEvent
  | ForeignTopLevelHandleV1 !WL.ForeignToplevelHandleEvent
  | SessionLockEvent !SL.SessionLockEvent
  | -- Zwp_*
    ZwpIM2PopupSurfaceE !Zwp.ZwpInputPopupSurfaceEvent
  | ZwpIM2KeyboardGrabE !Zwp.ZwpInputMethodKeyboardGrabEvent
  | ZwpIM2E !Zwp.ZwpInputMethodEvent
  | ZdgOutputEvent !Zdg.OutputEvent
  | WlrOutputManagerEvent !Wlr.OutputManagerEvent
  | WlrOutputHeadEvent !Wlr.OutputHeadEvent
  deriving (Show, Generic)

-- XXX is this used?
data MainEvent
  = MainRestart FilePath
  | MainExit String
  deriving (Eq, Show, Generic)

instance Monoid (m All) => Default (Event -> m All) where def _ = mempty
