{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE OverloadedLabels #-}


-- |
-- Module      : River.WindowManagement
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module Bindings.River.WindowManagement where

import Bindings.River.WindowManagementV1.Generated
import Bindings.River.WindowManagementV1.Generated.Global
import Bindings.River.WindowManagementV1.Generated.Safe
import Bindings.Wayland.Internal.TH
import Bindings.Wayland.Client
import Data.Default
import Foreign.Ptr
import Bindings.Wayland.Internal.Types
import GHC.Records
import Control.Arrow

mkWlObjectType (riverObj ''River_pointer_binding_v1 [])
mkWlObjectType (riverObj ''River_window_v1 []) { objDeriveShow = False }
mkWlObjectType (riverObj ''River_seat_v1 [])

-- * RiverPointerBinding

mkWlObjectMisc
  ( riverObj
      ''River_pointer_binding_v1
      [ "enable",
        "disable"
      ]
  )

-- * RiverNode

mkWlObject
  ( riverObj
      ''River_node_v1
      [ "set_position",
        "place_top",
        "place_bottom",
        "place_above",
        "place_below"
      ]
  )
    { objListener = Nothing
    }

-- * RiverShellSurface

mkWlObject
  ( riverObj
      ''River_shell_surface_v1
      [ "get_node",
        "sync_next_commit"
      ]
  )
    { objListener = Nothing
    }

-- * RiverDecoration

mkWlObject
  ( riverObj
      ''River_decoration_v1
      [ "set_offset",
        "sync_next_commit"
      ]
  )
    { objListener = Nothing
    }

-- * RiverOutput

mkWlObject
  ( riverObj
      ''River_output_v1
      [ "set_presentation_mode"
      ]
  )

-- * RiverWindow

mkWlObjectMisc
  ( riverObj
      ''River_window_v1
      [ "close",
        "get_node",
        "propose_dimensions",
        "hide",
        "show",
        "use_csd",
        "use_ssd",
        "set_borders",
        "set_tiled",
        "get_decoration_above",
        "get_decoration_below",
        "inform_resize_start",
        "inform_resize_end",
        "set_capabilities",
        "inform_maximized",
        "inform_unmaximized",
        "inform_fullscreen",
        "inform_not_fullscreen",
        "fullscreen",
        "exit_fullscreen",
        "set_clip_box",
        "set_content_clip_box",
        "set_dimension_bounds"
      ]
  )

instance Show RiverWindow where
  show = show . ptrToWordPtr . getField @"unwrap"
instance Read RiverWindow where
  readsPrec n s = fmap (first $ RiverWindow . wordPtrToPtr) $ readsPrec n s

-- * RiverSeat

mkWlObjectMisc
  ( riverObj
      ''River_seat_v1
      [ "focus_window",
        "focus_shell_surface",
        "clear_focus",
        "op_start_pointer",
        "op_end",
        "get_pointer_binding",
        "set_xcursor_theme",
        "pointer_warp"
      ]
  )

-- * RiverWindowManager

mkWlObject
  ( riverObj
      ''River_window_manager_v1
      [ "stop",
        "manage_finish",
        "manage_dirty",
        "render_finish",
        "get_shell_surface",
        "exit_session"
      ]
  )

-------
instance Default RiverWindow where def = RiverWindow nullPtr
instance Default RiverNode where def = RiverNode nullPtr
instance Default RiverSeat where def = RiverSeat nullPtr
instance Default RiverOutput where def = RiverOutput nullPtr
