module Bindings.Wayland.FractionalScaleV1 where

import Bindings.Wayland.Internal.TH

import Bindings.Wayland.FractionalScaleV1.Generated
import Bindings.Wayland.FractionalScaleV1.Generated.Global
import Bindings.Wayland.FractionalScaleV1.Generated.Safe

import Bindings.Wayland.Client

clientFromProtocolXML commonSettings "fractional-scale-v1.xml"
