module Bindings.River.XkbConfigV1 where

import Bindings.River.XkbConfigV1.Generated
import Bindings.River.XkbConfigV1.Generated.Global
import Bindings.River.XkbConfigV1.Generated.Unsafe

import Bindings.River.InputManagementV1 (RiverInputDevice(..))

import Wayland.Internal.TH

import Path_river_xkb_config_v1

clientFromProtocolXML' commonSettings protoXml
