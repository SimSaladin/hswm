-- |
-- Module      : River.InputManagementV1
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module Bindings.River.InputManagementV1 where

import Bindings.River.InputManagementV1.Generated
import Bindings.River.InputManagementV1.Generated.Global
import Bindings.River.InputManagementV1.Generated.Safe
import Bindings.Wayland.Internal.TH
import Bindings.Wayland.Client

-- * RiverInputDevice

mkWlObject
  ( riverObj
      ''River_input_device_v1
      [ "assign_to_seat",
        "set_repeat_info",
        "set_scroll_factor",
        "map_to_output",
        "map_to_rectangle"
      ]
  )

-- * RiverInputManager

mkWlObject
  ( riverObj
      ''River_input_manager_v1
      [ "stop",
        "create_seat",
        "destroy_seat"
      ]
  )
