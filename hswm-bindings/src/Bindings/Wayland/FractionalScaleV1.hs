module Bindings.Wayland.FractionalScaleV1 where

import Bindings.Wayland.FractionalScaleV1.Generated
import Bindings.Wayland.FractionalScaleV1.Generated.Global
import Bindings.Wayland.FractionalScaleV1.Generated.Safe

import Bindings.Wayland.Client (Surface(..))

import Wayland.Internal.TH

clientFromProtocolXML commonSettings "wayland-protocols/fractional-scale-v1.xml"
