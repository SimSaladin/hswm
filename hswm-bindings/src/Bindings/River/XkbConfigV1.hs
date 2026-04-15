module Bindings.River.XkbConfigV1 where

import Bindings.River.XkbConfigV1.Generated
import Bindings.River.XkbConfigV1.Generated.Global
import Bindings.River.XkbConfigV1.Generated.Safe

import Bindings.River.InputManagementV1

import Bindings.Wayland.Internal.TH
import Bindings.Wayland.Client

clientFromProtocolXML commonSettings "river-xkb-config-v1.xml"
