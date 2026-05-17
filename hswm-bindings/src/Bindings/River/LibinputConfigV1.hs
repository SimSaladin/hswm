module Bindings.River.LibinputConfigV1 where

import Bindings.River.LibinputConfigV1.Generated
import Bindings.River.LibinputConfigV1.Generated.Global
import Bindings.River.LibinputConfigV1.Generated.Unsafe

import Bindings.River.InputManagementV1 (RiverInputDevice(..))

import Bindings.Wayland.Util (Array(..))

import Wayland.Internal.TH

import Path_river_libinput_config_v1

clientFromProtocolXML' commonSettings protoXml
