module Bindings.Wayland.Viewporter where

import Bindings.Wayland.Internal.TH

import Bindings.Wayland.Viewporter.Generated
import Bindings.Wayland.Viewporter.Generated.Global
import Bindings.Wayland.Viewporter.Generated.Safe

import Bindings.Wayland.Client

clientFromProtocolXML commonSettings "viewporter.xml"
