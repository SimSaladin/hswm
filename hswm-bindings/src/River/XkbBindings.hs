------------------------------------------------------------------------------
-- |
-- Module      : River.XkbBindings
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
------------------------------------------------------------------------------
module River.XkbBindings  where

import River.WindowManagement

import Wayland.Client.Internal.TH

import Generated.River.XkbBindingsV1
import Generated.River.XkbBindingsV1.Global
import Generated.River.XkbBindingsV1.Safe

-- * RiverXkbBindingsSeat
mkWlObject (riverObj ''River_xkb_bindings_seat_v1
  [ "ensure_next_key_eaten"
  , "cancel_ensure_next_key_eaten"
  ])

-- * RiverXkbBinding
mkWlObject (riverObj ''River_xkb_binding_v1
  [ "enable"
  , "disable"
  , "set_layout_override"
  ])

-- * RiverXkbBindings
mkWlObject (riverObj ''River_xkb_bindings_v1
  [ "get_xkb_binding"
  , "get_seat"
  ])
    { objListener = Nothing }
