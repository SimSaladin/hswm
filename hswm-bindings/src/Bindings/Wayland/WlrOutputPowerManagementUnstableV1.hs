-- -- |
-- Module      : Bindings.Wayland.WlrOutputPowerManagementUnstableV1
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Bindings.Wayland.WlrOutputPowerManagementUnstableV1 where

import Bindings.Wayland.Internal.TH

import Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated
import Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Global
import Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Safe

import qualified Bindings.Wayland.Client
import Bindings.Wayland.Client (Wl_interface)

clientFromProtocolXML commonSettings "wlr-output-power-management-unstable-v1.xml"
