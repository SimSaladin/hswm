module Bindings.River.XkbBindingsV1  where

import Bindings.River.XkbBindingsV1.Generated
import Bindings.River.XkbBindingsV1.Generated.Global
import Bindings.River.XkbBindingsV1.Generated.Unsafe

import Bindings.River.WindowManagementV1 (RiverSeat(..))
import Bindings.River.WindowManagementV1.Generated (River_seat_v1_modifiers(..))

import Wayland.Internal.TH

clientFromProtocolXML commonSettings "river-xkb-bindings-v1.xml"

