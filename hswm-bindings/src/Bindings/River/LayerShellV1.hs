------------------------------------------------------------------------------
-- |
-- Module      : River.LayerShellV1
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
------------------------------------------------------------------------------
module Bindings.River.LayerShellV1  where

import Bindings.River.WindowManagementV1

import Bindings.Wayland.Internal.TH

import Bindings.River.LayerShellV1.Generated
import Bindings.River.LayerShellV1.Generated.Global
import Bindings.River.LayerShellV1.Generated.Safe

-- * RiverLayerShellOutput
mkWlObject (riverObj ''River_layer_shell_output_v1
  [ "set_default"
  ])

-- * RiverLayerShellSeat
mkWlObject (riverObj ''River_layer_shell_seat_v1
  [
  ])

-- * RiverLayerShell
mkWlObject (riverObj ''River_layer_shell_v1
  [ "get_output"
  , "get_seat"
  ])
  { objListener = Nothing }
