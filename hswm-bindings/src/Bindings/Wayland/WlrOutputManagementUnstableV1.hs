module Bindings.Wayland.WlrOutputManagementUnstableV1 where

import Bindings.Wayland.Internal.TH

import Bindings.Wayland.WlrOutputManagementUnstableV1.Generated
import Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Global
import Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe

import Bindings.Wayland.Client (Wl_interface)
import qualified Bindings.Wayland.Client

clientFromProtocolXML commonSettings "wlr-output-management-unstable-v1.xml"
