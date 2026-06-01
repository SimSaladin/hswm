module Bindings.Wlr.LayerShellUnstableV1
  ( module Bindings.Wlr.LayerShellUnstableV1
  , module Bindings.Wlr.LayerShell.UnstableV1.Enums
  ) where

import Wayland.Internal.TH

import Bindings.Wlr.LayerShell.UnstableV1.Enums
import Bindings.Wlr.LayerShell.UnstableV1.Client.Generated
import Bindings.Wlr.LayerShell.UnstableV1.Client.Generated.Global
import Bindings.Wlr.LayerShell.UnstableV1.Client.Generated.Safe

import Bindings.Wayland.Client
import Bindings.Wayland.XdgShell (Popup(..))

import Path_wlr_layer_shell_unstable_v1

clientFromProtocolXML' commonSettings protoXml
