------------------------------------------------------------------------------
-- |
-- Module      : River.LayerShell
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
------------------------------------------------------------------------------
module River.LayerShell  where

import River.WindowManagement

import Wayland.Client.Internal.TH

import Generated.River.LayerShellV1
import Generated.River.LayerShellV1.Global
import Generated.River.LayerShellV1.Safe

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
