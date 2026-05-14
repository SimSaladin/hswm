module Bindings.River.LayerShellV1 where

import           Bindings.River.LayerShellV1.Generated
import           Bindings.River.LayerShellV1.Generated.Global
import           Bindings.River.LayerShellV1.Generated.Unsafe as Unsafe

import           Bindings.River.WindowManagementV1 (RiverOutput(..), RiverSeat(..))

import           Wayland.Internal.TH

clientFromProtocolXML commonSettings "river-layer-shell-v1.xml"
