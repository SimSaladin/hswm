module Bindings.River.LayerShellV1 where

import           Bindings.River.LayerShellV1.Generated
import           Bindings.River.LayerShellV1.Generated.Global
import           Bindings.River.LayerShellV1.Generated.Unsafe as Unsafe

import           Bindings.River.WindowManagementV1 (RiverOutput(..), RiverSeat(..))

import           Wayland.Internal.TH

import Path_river_layer_shell_v1

clientFromProtocolXML' commonSettings protoXml
