module Bindings.Wayland.Viewporter where

import Bindings.Wayland.Viewporter.Generated
import Bindings.Wayland.Viewporter.Generated.Global
import Bindings.Wayland.Viewporter.Generated.Safe

import Bindings.Wayland.Client (Surface(..))

import Wayland.Internal.TH
import Path_wayland_viewporter

clientFromProtocolXML' commonSettings protoXml
