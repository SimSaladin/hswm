module Bindings.River.InputManagementV1 where

import Bindings.River.InputManagementV1.Generated
import Bindings.River.InputManagementV1.Generated.Global
import Bindings.River.InputManagementV1.Generated.Unsafe

import Bindings.Wayland.Client (Output(..))

import Wayland.Internal.TH

clientFromProtocolXML commonSettings "river-input-management-v1.xml"
