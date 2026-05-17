module Bindings.River.XkbBindingsV1  where

import Bindings.River.XkbBindingsV1.Generated
import Bindings.River.XkbBindingsV1.Generated.Global
import Bindings.River.XkbBindingsV1.Generated.Unsafe

import Bindings.River.WindowManagementV1 (RiverSeat(..))
import Bindings.River.WindowManagementV1.Generated (River_seat_v1_modifiers(..))

import Wayland.Internal.TH

import Path_river_xkb_bindings_v1

clientFromProtocolXML' commonSettings protoXml
