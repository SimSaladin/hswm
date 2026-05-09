{-# LANGUAGE DuplicateRecordFields #-}
------------------------------------------------------------------------------
-- |
-- Module      : Wayland.Client.Extras
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
--
------------------------------------------------------------------------------
module Bindings.Wayland.Protocol.ForeignTopLevelListV1 where

import Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated
import Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Global
import Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Safe

import Wayland.Internal.TH
import Bindings.Wayland.Client

clientFromProtocolXML commonSettings "wayland-protocols/ext-foreign-toplevel-list-v1.xml"
