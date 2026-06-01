module Bindings.River.XkbBindingsV1  where

import Bindings.River.XkbBindings.V1.Enums
import Bindings.River.XkbBindings.V1.Client.Generated
import Bindings.River.XkbBindings.V1.Client.Generated.Global
import Bindings.River.XkbBindings.V1.Client.Generated.Unsafe

import Bindings.River.WindowManagementV1 (RiverSeat(..), RiverSeatModifiers, River_seat_v1_modifiers(..))

import Wayland.Internal.TH

import Path_river_xkb_bindings_v1

clientFromProtocolXML' commonSettings protoXml
