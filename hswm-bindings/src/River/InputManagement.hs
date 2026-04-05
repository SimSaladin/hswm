-- |
-- Module      : River.InputManagement
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
module River.InputManagement where

import Generated.River.InputManagementV1
import Generated.River.InputManagementV1.Global
import Generated.River.InputManagementV1.Safe
import Wayland.Client.Internal.TH
import Wayland.Client.Objects

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
