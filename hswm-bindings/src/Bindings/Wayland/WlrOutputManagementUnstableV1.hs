module Bindings.Wayland.WlrOutputManagementUnstableV1 where

import Bindings.Wayland.WlrOutputManagementUnstableV1.Generated
import Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Global
import Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe

import Bindings.Wayland.Client (Wl_output_transform(..))

import Wayland.Internal.TH

clientFromProtocolXML commonSettings "wlr-output-management-unstable-v1.xml"
