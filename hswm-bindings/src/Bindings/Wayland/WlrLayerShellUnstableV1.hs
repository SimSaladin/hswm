module Bindings.Wayland.WlrLayerShellUnstableV1 where

import Wayland.Internal.TH

import Bindings.Wayland.WlrLayerShellUnstableV1.Generated
import Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Global
import Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Safe

import Bindings.Wayland.Client
import Bindings.Wayland.XdgShell (Popup(..))

clientFromProtocolXML commonSettings "wlr-layer-shell-unstable-v1.xml"
