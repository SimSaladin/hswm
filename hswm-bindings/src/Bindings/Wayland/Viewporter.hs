module Bindings.Wayland.Viewporter where

import Bindings.Wayland.Viewporter.Generated
import Bindings.Wayland.Viewporter.Generated.Global
import Bindings.Wayland.Viewporter.Generated.Safe

import Bindings.Wayland.Client (Surface(..))

import Wayland.Internal.TH

clientFromProtocolXML commonSettings "wayland-protocols/viewporter.xml"
