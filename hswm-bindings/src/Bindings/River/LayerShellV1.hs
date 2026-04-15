module Bindings.River.LayerShellV1  where

import Bindings.River.WindowManagementV1

import Bindings.Wayland.Internal.TH

import Bindings.River.LayerShellV1.Generated
import Bindings.River.LayerShellV1.Generated.Global
import Bindings.River.LayerShellV1.Generated.Safe

import Bindings.Wayland.Client

clientFromProtocolXML commonSettings "river-layer-shell-v1.xml"
