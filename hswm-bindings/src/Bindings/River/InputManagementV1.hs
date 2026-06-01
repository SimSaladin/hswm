module Bindings.River.InputManagementV1 where

import Bindings.River.InputManagement.V1.Enums
import Bindings.River.InputManagement.V1.Client.Generated
import Bindings.River.InputManagement.V1.Client.Generated.Global
import Bindings.River.InputManagement.V1.Client.Generated.Unsafe

import Bindings.Wayland.Client (Output(..))

import Wayland.Internal.TH

import Path_river_input_management_v1

clientFromProtocolXML' commonSettings protoXml

instance Default RiverInputDevice where
  def = RiverInputDevice nullPtr
