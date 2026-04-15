module Bindings.River.XkbBindingsV1  where

import Bindings.River.WindowManagementV1

import Bindings.Wayland.Internal.TH

import Bindings.River.XkbBindingsV1.Generated
import Bindings.River.XkbBindingsV1.Generated.Global
import Bindings.River.XkbBindingsV1.Generated.Safe

import Bindings.River.WindowManagementV1.Generated
import Bindings.Wayland.Client (Wl_interface)

clientFromProtocolXML commonSettings "river-xkb-bindings-v1.xml"

