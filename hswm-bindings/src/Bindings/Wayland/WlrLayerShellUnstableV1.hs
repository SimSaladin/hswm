module Bindings.Wayland.WlrLayerShellUnstableV1 where

import Bindings.Wayland.Internal.TH
import Foreign

import Bindings.Wayland.WlrLayerShellUnstableV1.Generated
import Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Global
import Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Safe

import Bindings.Wayland.Client

-- XXX: missing
newtype XdgPopup = XdgPopup { unwrap :: Ptr Xdg_popup }

clientFromProtocolXML commonSettings "wlr-layer-shell-unstable-v1.xml"
