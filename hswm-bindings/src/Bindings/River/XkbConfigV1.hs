module Bindings.River.XkbConfigV1 where

import Bindings.River.XkbConfig.V1.Enums
import Bindings.River.XkbConfig.V1.Client.Generated
import Bindings.River.XkbConfig.V1.Client.Generated.Global
import Bindings.River.XkbConfig.V1.Client.Generated.Unsafe

import Bindings.River.InputManagementV1 (RiverInputDevice(..))

import Wayland.Internal.TH

import Path_river_xkb_config_v1

clientFromProtocolXML' commonSettings protoXml
