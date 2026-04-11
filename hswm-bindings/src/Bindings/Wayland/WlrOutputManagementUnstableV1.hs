-- |
-- Module      : Bindings.Wayland.WlrOutputManagementUnstableV1
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Bindings.Wayland.WlrOutputManagementUnstableV1 where


import Wayland.Client.Internal.TH
import Foreign

import Bindings.Wayland.WlrOutputManagementUnstableV1.Generated
import Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Global
import Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe

import qualified Generated.Wayland.Client as WL
import qualified Wayland.Client.Objects as WL

-- * OutputMode
mkWlObject $
  objDropPrefixSuffix "Zwlr_" "_v1" $
  (wlobj ''Zwlr_output_mode_v1 [ "release"  ])
      { objHasDestructor = True
      , objEventFieldNames = []
      }

-- * OutputConfigurationHead
mkWlObject $
  objDropPrefixSuffix "Zwlr_" "_v1" $
  (wlobj ''Zwlr_output_configuration_head_v1 [ "set_mode", "set_custom_mode", "set_position", "set_transform", "set_scale", "set_adaptive_sync" ])
      { objHasDestructor = True
      , objListener = Nothing
      , objEventFieldNames = []
      }

-- * OutputConfiguration
mkWlObject $
  objDropPrefixSuffix "Zwlr_" "_v1" $
  (wlobj ''Zwlr_output_configuration_v1 [ "enable_head", "disable_head", "apply", "test" ])
      { objHasDestructor = True
      , objEventFieldNames = []
      }

-- * OutputHead
mkWlObject $
  objDropPrefixSuffix "Zwlr_" "_v1" $
   objAddMarshall
     [ ([t|IO (Ptr Zwlr_output_mode_v1)|], [t|IO OutputMode|], [|(\(OutputMode r) -> r)|], [|return . OutputMode|])
     ] $
  (wlobj ''Zwlr_output_head_v1 [ "release" ])
      { objHasDestructor = True
      , objEventFieldNames =
        [ ("name", ["name"])
        , ("description", ["description"])
        , ("physical_size", ["width", "height"])
        , ("mode", ["outputMode"])
        , ("enabled", ["enabled"])
        , ("current_mode", ["outputMode"])
        , ("position", ["x", "y"])
        , ("transform", ["transform"])
        , ("scale", ["scale"])
        , ("make", ["make"])
        , ("model", ["model"])
        , ("serial_number", ["serialNumber"])
        , ("adaptive_sync", ["adaptiveSync"])
        ]
      }

-- * OutputManager
mkWlObject $
  objDropPrefixSuffix "Zwlr_" "_v1" $
   objAddMarshall
     [ ([t|IO (Ptr Zwlr_output_configuration_v1)|], [t|IO OutputConfiguration|], [|(\(OutputConfiguration r) -> r)|], [|return . OutputConfiguration|])
     , ([t|Ptr Zwlr_output_head_v1|], [t|OutputHead|], [|(\(OutputHead r) -> r)|], [|OutputHead|])
     -- , ([t|Ptr Wl_surface|], [t|Surface|], [|(\(Surface r) -> r)|], [|Surface|])
     ] $
  (wlobj ''Zwlr_output_manager_v1 [ "create_configuration", "stop" ])
      { objHasDestructor = True
      , objEventFieldNames =
        [ ("head", ["outputHead"])
        , ("done", ["serial"])
        ]
      }
