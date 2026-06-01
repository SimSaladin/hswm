module Bindings.Wayland.FractionalScaleV1 where

import Bindings.Wayland.FractionalScale.V1.Enums
import Bindings.Wayland.FractionalScale.V1.Client.Generated
import Bindings.Wayland.FractionalScale.V1.Client.Generated.Global
import Bindings.Wayland.FractionalScale.V1.Client.Generated.Safe

import Bindings.Wayland.Client (Surface(..))

import Wayland.Internal.TH
import Path_wayland_fractional_scale_v1

clientFromProtocolXML' commonSettings protoXml
