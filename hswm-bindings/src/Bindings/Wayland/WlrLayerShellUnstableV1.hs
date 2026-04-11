-- |
-- Module      : Bindings.Wayland.WlrLayerShellUnstableV1
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Bindings.Wayland.WlrLayerShellUnstableV1 where

import Bindings.Wayland.Internal.TH
import Foreign

import Bindings.Wayland.WlrLayerShellUnstableV1.Generated
import Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Global
import Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Safe

import Bindings.Wayland.Client.Generated
import Bindings.Wayland.Client

-- * LayerSurface
mkWlObject $
  objDropPrefixSuffix "Zwlr_" "_v1" $
  (wlobj ''Zwlr_layer_surface_v1 [ "set_size"
                                 , "set_anchor"
                                 , "set_exclusive_zone"
                                 , "set_margin"
                                 , "set_keyboard_interactivity"
                                 , "get_popup"
                                 , "ack_configure"
                                 ])
      { objHasDestructor = True
      , objEventFieldNames = [ ("configure", ["serial", "width", "height" ] ) ]
      }


-- * LayerShell
mkWlObject $
  objDropPrefixSuffix "Zwlr_" "_v1" $
  objAddMarshall
    [ ([t|IO (Ptr Zwlr_layer_surface_v1)|], [t|IO LayerSurface|], [|(\(LayerSurface r) -> r)|], [|return . LayerSurface|])
    , ([t|Ptr Wl_surface|], [t|Surface|], [|(\(Surface r) -> r)|], [|Surface|])
    , ([t|Ptr Wl_output|], [t|Output|], [|(\(Output r) -> r)|], [|Output|])
    ] $
  (wlobj ''Zwlr_layer_shell_v1 [ "get_layer_surface" ])
      { objHasDestructor = True
      , objListener = Nothing
      }
