-- |
-- Module      : Bindings.Wayland.XdgOutputUnstableV1
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Bindings.Wayland.XdgOutputUnstableV1 where


import Bindings.Wayland.Internal.TH
import Foreign

import Bindings.Wayland.XdgOutputUnstableV1.Generated
import Bindings.Wayland.XdgOutputUnstableV1.Generated.Global
import Bindings.Wayland.XdgOutputUnstableV1.Generated.Safe

import qualified Bindings.Wayland.Client as WL.Generated
import qualified Bindings.Wayland.Client as WL

-- * Output
mkWlObject $
  objDropPrefixSuffix "Zxdg_" "_v1" $
  (wlobj ''Zxdg_output_v1 [  ])
      { objHasDestructor = True
      , objEventFieldNames =
        [ ("logical_position", ["x", "y"])
        , ("logical_size",     ["width", "height"])
        , ("name",             ["name"])
        , ("description",      ["description"])
        ]
      }

-- * OutputManager
mkWlObject $
  objAddMarshall
    [ ([t|IO (Ptr Zxdg_output_v1)|], [t|IO Output|], [|(\(Output r) -> r)|], [|return . Output|])
    , ([t|Ptr WL.Wl_output|], [t|WL.Output|], [|(\(WL.Output r) -> r)|], [|WL.Output|])
    ] $
  objDropPrefixSuffix "Zxdg_" "_v1" $
  (wlobj ''Zxdg_output_manager_v1 [ "get_xdg_output" ])
      { objHasDestructor = True
      , objListener = Nothing
      }
