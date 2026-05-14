module Bindings.River.LibinputConfigV1 where

import Bindings.River.LibinputConfigV1.Generated
import Bindings.River.LibinputConfigV1.Generated.Global
import Bindings.River.LibinputConfigV1.Generated.Unsafe

import Bindings.River.InputManagementV1 (RiverInputDevice(..))

import Bindings.Wayland.Util (Array(..))

import Wayland.Internal.TH

clientFromProtocolXML commonSettings "river-libinput-config-v1.xml"
