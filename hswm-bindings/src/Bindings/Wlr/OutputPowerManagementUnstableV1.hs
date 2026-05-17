-- -- |
-- Module      : Bindings.Wlr.OutputPowerManagementUnstableV1
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Bindings.Wlr.OutputPowerManagementUnstableV1 where

import Bindings.Wlr.OutputPowerManagementUnstableV1.Generated
import Bindings.Wlr.OutputPowerManagementUnstableV1.Generated.Global
import Bindings.Wlr.OutputPowerManagementUnstableV1.Generated.Safe

import Bindings.Wayland.Client (Output(..))

import Wayland.Internal.TH

import Path_wlr_output_power_management_unstable_v1

clientFromProtocolXML' commonSettings protoXml
