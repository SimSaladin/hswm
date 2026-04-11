-- |
-- Module      : Bindings.Wayland.FractionalScaleV1
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Bindings.Wayland.FractionalScaleV1 where

import Bindings.Wayland.Internal.TH
import Foreign

import Bindings.Wayland.FractionalScaleV1.Generated
import Bindings.Wayland.FractionalScaleV1.Generated.Global
import Bindings.Wayland.FractionalScaleV1.Generated.Safe

import Bindings.Wayland.Client.Generated
import Bindings.Wayland.Client

-- * FractionalScale
mkWlObject $
  objDropPrefixSuffix "Wp_" "_v1" $
  (wlobj ''Wp_fractional_scale_v1 [ ])
      { objHasDestructor = True
      , objEventFieldNames = [("preferred_scale", ["scale"])]
      }

-- * FractionalScaleManager
mkWlObject $
  objAddMarshall
    [ ([t|IO (Ptr Wp_fractional_scale_v1)|], [t|IO FractionalScale|], [|(\(FractionalScale r) -> r)|], [|return . FractionalScale|])
    , ([t|Ptr Wl_surface|], [t|Surface|], [|(\(Surface r) -> r)|], [|Surface|])
    ] $
  objDropPrefixSuffix "Wp_" "_v1" $
  (wlobj ''Wp_fractional_scale_manager_v1 [ "get_fractional_scale" ])
      { objHasDestructor = True
      , objListener = Nothing
      }
