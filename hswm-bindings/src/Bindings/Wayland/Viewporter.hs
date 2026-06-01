module Bindings.Wayland.Viewporter where

import Bindings.Wayland.Viewporter.Enums
import Bindings.Wayland.Viewporter.Client.Generated
import Bindings.Wayland.Viewporter.Client.Generated.Global
import Bindings.Wayland.Viewporter.Client.Generated.Safe

import Bindings.Wayland.Client (Surface(..))

import Wayland.Internal.TH
import Path_wayland_viewporter

clientFromProtocolXML' commonSettings protoXml
