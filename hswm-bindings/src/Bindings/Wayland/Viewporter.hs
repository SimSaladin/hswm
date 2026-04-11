-- |
-- Module      : Bindings.Wayland.Viewporter
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Bindings.Wayland.Viewporter where

import Wayland.Client.Internal.TH
import Foreign

import Bindings.Wayland.Viewporter.Generated
import Bindings.Wayland.Viewporter.Generated.Global
import Bindings.Wayland.Viewporter.Generated.Safe

import Generated.Wayland.Client
import Wayland.Client.Objects

-- * Viewport
mkWlObject $
  objDropPrefixSuffix "Wp_" "" $
  (wlobj ''Wp_viewport [ "set_source", "set_destination" ])
      { objHasDestructor = True
      , objListener = Nothing
      }

-- * Viewporter
mkWlObject $
  objDropPrefixSuffix "Wp_" "" $
  objAddMarshall
    [ ([t|Ptr Wl_surface|], [t|Surface|], [|(\(Surface r) -> r)|], [|Surface|])
    , ([t|IO (Ptr Wp_viewport)|], [t|IO Viewport|], [|(\(Viewport r) -> r)|], [|return . Viewport|])
    ] $
  (wlobj ''Wp_viewporter [ "get_viewport" ])
      { objHasDestructor = True
      , objListener = Nothing
      }
