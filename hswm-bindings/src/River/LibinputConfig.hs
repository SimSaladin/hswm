-- |
-- Module      : River.LibinputConfig
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module River.LibinputConfig where

import Generated.River.LibinputConfigV1
import Generated.River.LibinputConfigV1.Global
import Generated.River.LibinputConfigV1.Safe
import River.InputManagement
import Wayland.Client.Internal.TH
import Wayland.Client.Objects

-- * RiverLibinputResult

mkWlObject
  ( riverObj
      ''River_libinput_result_v1
      []
  )

-- * RiverLibinputAccelConfig

mkWlObject
  ( riverObj
      ''River_libinput_accel_config_v1
      [ "set_points"
      ]
  )
    { objListener = Nothing
    }

-- * RiverLibinputDevice

mkWlObject
  ( riverObj
      ''River_libinput_device_v1
      [ "set_send_events",
        "set_tap",
        "set_tap_button_map",
        "set_drag",
        "set_drag_lock",
        "set_three_finger_drag",
        "set_calibration_matrix",
        "set_accel_profile",
        "set_accel_speed",
        "apply_accel_config",
        "set_natural_scroll",
        "set_left_handed",
        "set_click_method",
        "set_clickfinger_button_map",
        "set_middle_emulation",
        "set_scroll_method",
        "set_scroll_button",
        "set_scroll_button_lock",
        "set_dwt",
        "set_dwtp",
        "set_rotation"
      ]
  )
    { objEventFieldNames =
        [ ("input_device", ["inputDevice"]),
          ("send_events_support", ["modes"]),
          ("send_events_default", ["modes"]),
          ("send_events_current", ["modes"])
        ]
    }

-- * RiverLibinputConfig

mkWlObject
  ( riverObj
      ''River_libinput_config_v1
      [ "stop",
        "create_accel_config"
      ]
  )
