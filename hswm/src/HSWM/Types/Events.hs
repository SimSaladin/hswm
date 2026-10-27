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
import WL.ExtForeignToplevelList.Staging.V1.Client qualified as ExtFTL

import WL.ExtSessionLock.Staging.V1.Client qualified as ExtSL
import WL.Wlr.InputMethod.Unstable.V2.Client qualified as WlrIM
import WL.Wlr.OutputManagement.Unstable.V1.Client qualified as WlrOM
import WL.Wlr.OutputPowerManagement.Unstable.V1.Client qualified as WlrOPM
import WL.XdgOutput.Unstable.V1.Client qualified as Xdg

-- | Main loop events.
data MainEvent
  = MainSaveToDisk
  | MainRestart { evExecutable :: FilePath }
  | MainSignal { evSignal :: Signal }
  | MainExit { evMessage :: String, evError :: Maybe SomeException }
  | MainCont
  deriving stock (Show, Generic)

-- deriving anyclass (NFData)

-- | Mash-up of all River/Wayland generated events
data Event
  = -- River
    OutputEvent !R.RiverOutputEvent
  | PointerEvent !R.RiverPointerBindingEvent
  | XkbConfigEvent !R.RiverXkbConfigEvent
  | LayerShellOutputEvent !R.RiverLayerShellOutputEvent
  | InputManagerEvent !R.RiverInputManagerEvent
  | InputDeviceEvent !R.RiverInputDeviceEvent
  | LibinputConfigEvent !R.RiverLibinputConfigEvent
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
