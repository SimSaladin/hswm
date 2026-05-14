-- |
-- Description :
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Bindings.Wayland.Protocol.ForeignTopLevelListV1 where

import Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated
import Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Global
import Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Safe

import Bindings.Wayland.Client ()

import Wayland.Internal.TH

clientFromProtocolXML commonSettings "wayland-protocols/ext-foreign-toplevel-list-v1.xml"
