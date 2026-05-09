module Bindings.Wayland.FractionalScaleV1 where

import Wayland.Internal.TH

import Bindings.Wayland.FractionalScaleV1.Generated
import Bindings.Wayland.FractionalScaleV1.Generated.Global
import Bindings.Wayland.FractionalScaleV1.Generated.Safe

import Bindings.Wayland.Client

clientFromProtocolXML commonSettings "wayland-protocols/fractional-scale-v1.xml"
