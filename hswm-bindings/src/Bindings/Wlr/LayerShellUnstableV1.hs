module Bindings.Wlr.LayerShellUnstableV1 where

import Wayland.Internal.TH

import Bindings.Wlr.LayerShellUnstableV1.Generated
import Bindings.Wlr.LayerShellUnstableV1.Generated.Global
import Bindings.Wlr.LayerShellUnstableV1.Generated.Safe

import Bindings.Wayland.Client
import Bindings.Wayland.XdgShell (Popup(..))

import Path_wlr_layer_shell_unstable_v1

clientFromProtocolXML' commonSettings protoXml
