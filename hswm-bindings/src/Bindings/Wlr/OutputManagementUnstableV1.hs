module Bindings.Wlr.OutputManagementUnstableV1 where

import Bindings.Wlr.OutputManagementUnstableV1.Generated
import Bindings.Wlr.OutputManagementUnstableV1.Generated.Global
import Bindings.Wlr.OutputManagementUnstableV1.Generated.Safe

import Bindings.Wayland.Client (Wl_output_transform(..))

import Wayland.Internal.TH

import Path_wlr_output_management_unstable_v1

clientFromProtocolXML' commonSettings protoXml
