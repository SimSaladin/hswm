module Bindings.River.LibinputConfigV1 where

import Bindings.River.LibinputConfigV1.Generated
import Bindings.River.LibinputConfigV1.Generated.Global
import Bindings.River.LibinputConfigV1.Generated.Safe

import Bindings.River.InputManagementV1

import Bindings.Wayland.Internal.TH
import Bindings.Wayland.Client
import Bindings.Wayland.Util

clientFromProtocolXML commonSettings "river-libinput-config-v1.xml"
