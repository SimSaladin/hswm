module Bindings.Wayland.Viewporter where

import Wayland.Internal.TH

import Bindings.Wayland.Viewporter.Generated
import Bindings.Wayland.Viewporter.Generated.Global
import Bindings.Wayland.Viewporter.Generated.Safe

import Bindings.Wayland.Client

clientFromProtocolXML commonSettings "wayland-protocols/viewporter.xml"
