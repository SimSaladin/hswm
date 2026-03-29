{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UnboxedTuples #-}
{-# LANGUAGE UndecidableInstances #-}

module Generated.River.LibinputConfigV1
    ( Generated.River.LibinputConfigV1.River_input_device_v1
    , Generated.River.LibinputConfigV1.River_libinput_accel_config_v1
    , Generated.River.LibinputConfigV1.River_libinput_config_v1
    , Generated.River.LibinputConfigV1.River_libinput_device_v1
    , Generated.River.LibinputConfigV1.River_libinput_result_v1
    , Generated.River.LibinputConfigV1.River_libinput_config_v1_error(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_CONFIG_V1_ERROR_INVALID_ARG
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_CONFIG_V1_ERROR_INVALID_DESTROY
    , Generated.River.LibinputConfigV1.River_libinput_config_v1_listener(..)
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_CONFIG_V1_STOP
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_CONFIG_V1_DESTROY
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_CONFIG_V1_CREATE_ACCEL_CONFIG
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_CONFIG_V1_FINISHED_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_CONFIG_V1_LIBINPUT_DEVICE_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_CONFIG_V1_STOP_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_CONFIG_V1_DESTROY_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_CONFIG_V1_CREATE_ACCEL_CONFIG_SINCE_VERSION
    , Generated.River.LibinputConfigV1.River_libinput_device_v1_error(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_ERROR_INVALID_ARG
    , Generated.River.LibinputConfigV1.River_libinput_device_v1_send_events_modes(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_MODES_ENABLED
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_MODES_DISABLED
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_MODES_DISABLED_ON_EXTERNAL_MOUSE
    , Generated.River.LibinputConfigV1.River_libinput_device_v1_tap_state(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_TAP_STATE_DISABLED
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_TAP_STATE_ENABLED
    , Generated.River.LibinputConfigV1.River_libinput_device_v1_tap_button_map(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_TAP_BUTTON_MAP_LRM
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_TAP_BUTTON_MAP_LMR
    , Generated.River.LibinputConfigV1.River_libinput_device_v1_drag_state(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_DRAG_STATE_DISABLED
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_DRAG_STATE_ENABLED
    , Generated.River.LibinputConfigV1.River_libinput_device_v1_drag_lock_state(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_STATE_DISABLED
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_STATE_ENABLED_TIMEOUT
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_STATE_ENABLED_STICKY
    , Generated.River.LibinputConfigV1.River_libinput_device_v1_three_finger_drag_state(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_STATE_DISABLED
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_STATE_ENABLED_3FG
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_STATE_ENABLED_4FG
    , Generated.River.LibinputConfigV1.River_libinput_device_v1_accel_profile(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_NONE
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_FLAT
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_ADAPTIVE
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_CUSTOM
    , Generated.River.LibinputConfigV1.River_libinput_device_v1_accel_profiles(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_NONE
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_FLAT
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_ADAPTIVE
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_CUSTOM
    , Generated.River.LibinputConfigV1.River_libinput_device_v1_natural_scroll_state(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_STATE_DISABLED
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_STATE_ENABLED
    , Generated.River.LibinputConfigV1.River_libinput_device_v1_left_handed_state(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_STATE_DISABLED
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_STATE_ENABLED
    , Generated.River.LibinputConfigV1.River_libinput_device_v1_click_method(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_NONE
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_BUTTON_AREAS
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_CLICKFINGER
    , Generated.River.LibinputConfigV1.River_libinput_device_v1_click_methods(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_CLICK_METHODS_NONE
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_CLICK_METHODS_BUTTON_AREAS
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_CLICK_METHODS_CLICKFINGER
    , Generated.River.LibinputConfigV1.River_libinput_device_v1_clickfinger_button_map(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_CLICKFINGER_BUTTON_MAP_LRM
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_CLICKFINGER_BUTTON_MAP_LMR
    , Generated.River.LibinputConfigV1.River_libinput_device_v1_middle_emulation_state(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_STATE_DISABLED
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_STATE_ENABLED
    , Generated.River.LibinputConfigV1.River_libinput_device_v1_scroll_method(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_NO_SCROLL
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_TWO_FINGER
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_EDGE
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_ON_BUTTON_DOWN
    , Generated.River.LibinputConfigV1.River_libinput_device_v1_scroll_methods(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHODS_NO_SCROLL
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHODS_TWO_FINGER
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHODS_EDGE
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHODS_ON_BUTTON_DOWN
    , Generated.River.LibinputConfigV1.River_libinput_device_v1_scroll_button_lock_state(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_LOCK_STATE_DISABLED
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_LOCK_STATE_ENABLED
    , Generated.River.LibinputConfigV1.River_libinput_device_v1_dwt_state(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_DWT_STATE_DISABLED
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_DWT_STATE_ENABLED
    , Generated.River.LibinputConfigV1.River_libinput_device_v1_dwtp_state(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_DWTP_STATE_DISABLED
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_DEVICE_V1_DWTP_STATE_ENABLED
    , Generated.River.LibinputConfigV1.River_libinput_device_v1_listener(..)
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_DESTROY
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_SEND_EVENTS
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_TAP
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_TAP_BUTTON_MAP
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_DRAG
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_DRAG_LOCK
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_THREE_FINGER_DRAG
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_CALIBRATION_MATRIX
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_ACCEL_PROFILE
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_ACCEL_SPEED
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_APPLY_ACCEL_CONFIG
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_NATURAL_SCROLL
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_LEFT_HANDED
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_CLICK_METHOD
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_CLICKFINGER_BUTTON_MAP
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_MIDDLE_EMULATION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_METHOD
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_BUTTON
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_BUTTON_LOCK
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_DWT
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_DWTP
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_ROTATION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_REMOVED_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_INPUT_DEVICE_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_SUPPORT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_DEFAULT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_CURRENT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_TAP_SUPPORT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_TAP_DEFAULT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_TAP_CURRENT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_TAP_BUTTON_MAP_DEFAULT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_TAP_BUTTON_MAP_CURRENT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_DRAG_DEFAULT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_DRAG_CURRENT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_DEFAULT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_CURRENT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_SUPPORT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_DEFAULT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_CURRENT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_CALIBRATION_MATRIX_SUPPORT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_CALIBRATION_MATRIX_DEFAULT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_CALIBRATION_MATRIX_CURRENT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_SUPPORT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_DEFAULT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_CURRENT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_ACCEL_SPEED_DEFAULT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_ACCEL_SPEED_CURRENT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_SUPPORT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_DEFAULT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_CURRENT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_SUPPORT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_DEFAULT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_CURRENT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_SUPPORT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_DEFAULT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_CURRENT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_CLICKFINGER_BUTTON_MAP_DEFAULT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_CLICKFINGER_BUTTON_MAP_CURRENT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_SUPPORT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_DEFAULT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_CURRENT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_SUPPORT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_DEFAULT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_CURRENT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_DEFAULT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_CURRENT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_LOCK_DEFAULT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_LOCK_CURRENT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_DWT_SUPPORT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_DWT_DEFAULT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_DWT_CURRENT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_DWTP_SUPPORT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_DWTP_DEFAULT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_DWTP_CURRENT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_ROTATION_SUPPORT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_ROTATION_DEFAULT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_ROTATION_CURRENT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_DESTROY_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_SEND_EVENTS_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_TAP_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_TAP_BUTTON_MAP_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_DRAG_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_DRAG_LOCK_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_THREE_FINGER_DRAG_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_CALIBRATION_MATRIX_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_ACCEL_PROFILE_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_ACCEL_SPEED_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_APPLY_ACCEL_CONFIG_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_NATURAL_SCROLL_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_LEFT_HANDED_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_CLICK_METHOD_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_CLICKFINGER_BUTTON_MAP_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_MIDDLE_EMULATION_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_METHOD_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_BUTTON_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_BUTTON_LOCK_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_DWT_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_DWTP_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_DEVICE_V1_SET_ROTATION_SINCE_VERSION
    , Generated.River.LibinputConfigV1.River_libinput_accel_config_v1_error(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_ACCEL_CONFIG_V1_ERROR_INVALID_ARG
    , Generated.River.LibinputConfigV1.River_libinput_accel_config_v1_accel_type(..)
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_ACCEL_CONFIG_V1_ACCEL_TYPE_FALLBACK
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_ACCEL_CONFIG_V1_ACCEL_TYPE_MOTION
    , pattern Generated.River.LibinputConfigV1.RIVER_LIBINPUT_ACCEL_CONFIG_V1_ACCEL_TYPE_SCROLL
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_ACCEL_CONFIG_V1_DESTROY
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_ACCEL_CONFIG_V1_SET_POINTS
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_ACCEL_CONFIG_V1_DESTROY_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_ACCEL_CONFIG_V1_SET_POINTS_SINCE_VERSION
    , Generated.River.LibinputConfigV1.River_libinput_result_v1_listener(..)
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_RESULT_V1_SUCCESS_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_RESULT_V1_UNSUPPORTED_SINCE_VERSION
    , Generated.River.LibinputConfigV1.rIVER_LIBINPUT_RESULT_V1_INVALID_SINCE_VERSION
    )
  where

import qualified Generated.Wayland.Util
import qualified HsBindgen.Runtime.CEnum as CEnum
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.Marshal as Marshal

{-|

  > page_river_libinput_config_v1 The river_libinput_config_v1 protocol

  configure libinput devices

  > page_desc_river_libinput_config_v1 Description

  This protocol exposes libinput device configuration APIs. The libinput documentation should be referred to for detailed information on libinput's behavior.

  Note that the compositor will not be able to expose libinput devices through this protocol when it does not have access to the hardware, for example when running nested in another Wayland compositor or X11 session.

  This protocol is designed so that (hopefully) any backwards compatible change to libinput's API can be matched with a backwards compatible change to this protocol.

  Note: the libinput API uses floating point types (float and double in C) which are not (yet?) natively supported by the Wayland protocol. However, the Wayland protocol does support sending arbitrary bytes through the array argument type. This protocol uses e.g. type="array" summary="double" to indicate a native-endian IEEE-754 64-bit double value.

  The key words "must", "must not", "required", "shall", "shall not", "should", "should not", "recommended", "may", and "optional" in this document are to be interpreted as described in IETF RFC 2119.

  > page_ifaces_river_libinput_config_v1 Interfaces

  -

  > page_iface_river_libinput_config_v1 - libinput config global interface

  -

  > page_iface_river_libinput_device_v1 - a libinput device

  -

  > page_iface_river_libinput_accel_config_v1 - acceleration config

  -

  > page_iface_river_libinput_result_v1 - config application result

  > page_copyright_river_libinput_config_v1 Copyright

  SPDX-FileCopyrightText: © 2025 Isaac Freund SPDX-License-Identifier: MIT

  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

__C declaration:__ @struct river_input_device_v1@

__defined at:__ @river-libinput-config-v1-client-protocol.h 72:8@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
data River_input_device_v1

{-| __C declaration:__ @struct river_libinput_accel_config_v1@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 73:8@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
data River_libinput_accel_config_v1

{-| __C declaration:__ @struct river_libinput_config_v1@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 74:8@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
data River_libinput_config_v1

{-| __C declaration:__ @struct river_libinput_device_v1@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 75:8@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
data River_libinput_device_v1

{-| __C declaration:__ @struct river_libinput_result_v1@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 76:8@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
data River_libinput_result_v1

{-| __C declaration:__ @enum river_libinput_config_v1_error@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 159:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_config_v1_error = River_libinput_config_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_config_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_config_v1_error where

  readRaw =
    \ptr0 ->
          pure River_libinput_config_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_config_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_config_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_config_v1_error instance RIP.Storable River_libinput_config_v1_error

deriving via RIP.CUInt instance RIP.Prim River_libinput_config_v1_error

instance CEnum.CEnum River_libinput_config_v1_error where

  type CEnumZ River_libinput_config_v1_error =
    RIP.CUInt

  toCEnum = River_libinput_config_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_LIBINPUT_CONFIG_V1_ERROR_INVALID_ARG")
                                   , (1, RIP.singleton "RIVER_LIBINPUT_CONFIG_V1_ERROR_INVALID_DESTROY")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_config_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_config_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_libinput_config_v1_error where

  minDeclaredValue =
    RIVER_LIBINPUT_CONFIG_V1_ERROR_INVALID_ARG

  maxDeclaredValue =
    RIVER_LIBINPUT_CONFIG_V1_ERROR_INVALID_DESTROY

instance Show River_libinput_config_v1_error where

  showsPrec = CEnum.shows

instance Read River_libinput_config_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_config_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_config_v1_error "unwrap" where

  type CFieldType River_libinput_config_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| invalid enum value or similar

__C declaration:__ @RIVER_LIBINPUT_CONFIG_V1_ERROR_INVALID_ARG@

__defined at:__ @river-libinput-config-v1-client-protocol.h 163:2@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_CONFIG_V1_ERROR_INVALID_ARG :: River_libinput_config_v1_error
pattern RIVER_LIBINPUT_CONFIG_V1_ERROR_INVALID_ARG = River_libinput_config_v1_error 0

{-| invalid enum value or similar

__C declaration:__ @RIVER_LIBINPUT_CONFIG_V1_ERROR_INVALID_DESTROY@

__defined at:__ @river-libinput-config-v1-client-protocol.h 164:2@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_CONFIG_V1_ERROR_INVALID_DESTROY :: River_libinput_config_v1_error
pattern RIVER_LIBINPUT_CONFIG_V1_ERROR_INVALID_DESTROY = River_libinput_config_v1_error 1

{-|

  > iface_river_libinput_config_v1

  > river_libinput_config_v1_listener

__C declaration:__ @struct river_libinput_config_v1_listener@

__defined at:__ @river-libinput-config-v1-client-protocol.h 172:8@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
data River_libinput_config_v1_listener = River_libinput_config_v1_listener
  { finished :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> IO ())
    {- ^ the server has finished with the object

       This event indicates that the server will send no further events on this object. The client should destroy the object. See river_libinput_config_v1.destroy for more information.

    __C declaration:__ @finished@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 180:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , libinput_device :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> (RIP.Ptr River_libinput_device_v1) -> IO ())
    {- ^ new libinput device

       A new libinput device has been created. Not every river_input_device_v1 is necessarily a libinput device as well.

    __C declaration:__ @libinput_device@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 188:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize River_libinput_config_v1_listener where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw River_libinput_config_v1_listener where

  readRaw =
    \ptr0 ->
          pure River_libinput_config_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"finished") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"libinput_device") ptr0

instance Marshal.WriteRaw River_libinput_config_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_config_v1_listener finished2 libinput_device3 ->
               HasCField.writeRaw (RIP.Proxy @"finished") ptr0 finished2
            >> HasCField.writeRaw (RIP.Proxy @"libinput_device") ptr0 libinput_device3

deriving via Marshal.EquivStorable River_libinput_config_v1_listener instance RIP.Storable River_libinput_config_v1_listener

instance HasCField.HasCField River_libinput_config_v1_listener "finished" where

  type CFieldType River_libinput_config_v1_listener "finished" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> IO ()))
         ) => RIP.HasField "finished" (RIP.Ptr River_libinput_config_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"finished")

instance HasCField.HasCField River_libinput_config_v1_listener "libinput_device" where

  type CFieldType River_libinput_config_v1_listener "libinput_device" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> (RIP.Ptr River_libinput_device_v1) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> (RIP.Ptr River_libinput_device_v1) -> IO ()))
         ) => RIP.HasField "libinput_device" (RIP.Ptr River_libinput_config_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"libinput_device")

{-| __C declaration:__ @macro RIVER_LIBINPUT_CONFIG_V1_STOP@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 204:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_CONFIG_V1_STOP :: RIP.CInt
rIVER_LIBINPUT_CONFIG_V1_STOP = (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_CONFIG_V1_DESTROY@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 205:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_CONFIG_V1_DESTROY :: RIP.CInt
rIVER_LIBINPUT_CONFIG_V1_DESTROY = (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_CONFIG_V1_CREATE_ACCEL_CONFIG@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 206:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_CONFIG_V1_CREATE_ACCEL_CONFIG :: RIP.CInt
rIVER_LIBINPUT_CONFIG_V1_CREATE_ACCEL_CONFIG =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_CONFIG_V1_FINISHED_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 211:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_CONFIG_V1_FINISHED_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_CONFIG_V1_FINISHED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_CONFIG_V1_LIBINPUT_DEVICE_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 215:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_CONFIG_V1_LIBINPUT_DEVICE_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_CONFIG_V1_LIBINPUT_DEVICE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_CONFIG_V1_STOP_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 220:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_CONFIG_V1_STOP_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_CONFIG_V1_STOP_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_CONFIG_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 224:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_CONFIG_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_CONFIG_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_CONFIG_V1_CREATE_ACCEL_CONFIG_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 228:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_CONFIG_V1_CREATE_ACCEL_CONFIG_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_CONFIG_V1_CREATE_ACCEL_CONFIG_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @enum river_libinput_device_v1_error@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 309:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_device_v1_error = River_libinput_device_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_device_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_device_v1_error where

  readRaw =
    \ptr0 ->
          pure River_libinput_device_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_device_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_device_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_device_v1_error instance RIP.Storable River_libinput_device_v1_error

deriving via RIP.CUInt instance RIP.Prim River_libinput_device_v1_error

instance CEnum.CEnum River_libinput_device_v1_error where

  type CEnumZ River_libinput_device_v1_error =
    RIP.CUInt

  toCEnum = River_libinput_device_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(0, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_ERROR_INVALID_ARG")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_device_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_device_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_libinput_device_v1_error where

  minDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_ERROR_INVALID_ARG

  maxDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_ERROR_INVALID_ARG

instance Show River_libinput_device_v1_error where

  showsPrec = CEnum.shows

instance Read River_libinput_device_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_device_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_device_v1_error "unwrap" where

  type CFieldType River_libinput_device_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| invalid enum value or similar

__C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_ERROR_INVALID_ARG@

__defined at:__ @river-libinput-config-v1-client-protocol.h 313:2@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_ERROR_INVALID_ARG :: River_libinput_device_v1_error
pattern RIVER_LIBINPUT_DEVICE_V1_ERROR_INVALID_ARG = River_libinput_device_v1_error 0

{-| __C declaration:__ @enum river_libinput_device_v1_send_events_modes@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 319:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_device_v1_send_events_modes = River_libinput_device_v1_send_events_modes
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_device_v1_send_events_modes where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_device_v1_send_events_modes where

  readRaw =
    \ptr0 ->
          pure River_libinput_device_v1_send_events_modes
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_device_v1_send_events_modes where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_device_v1_send_events_modes unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_device_v1_send_events_modes instance RIP.Storable River_libinput_device_v1_send_events_modes

deriving via RIP.CUInt instance RIP.Prim River_libinput_device_v1_send_events_modes

instance CEnum.CEnum River_libinput_device_v1_send_events_modes where

  type CEnumZ River_libinput_device_v1_send_events_modes =
    RIP.CUInt

  toCEnum = River_libinput_device_v1_send_events_modes

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_MODES_ENABLED")
                                   , (1, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_MODES_DISABLED")
                                   , ( 2
                                     , RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_MODES_DISABLED_ON_EXTERNAL_MOUSE"
                                     )
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_device_v1_send_events_modes"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_device_v1_send_events_modes"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_libinput_device_v1_send_events_modes where

  minDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_MODES_ENABLED

  maxDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_MODES_DISABLED_ON_EXTERNAL_MOUSE

instance Show River_libinput_device_v1_send_events_modes where

  showsPrec = CEnum.shows

instance Read River_libinput_device_v1_send_events_modes where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_device_v1_send_events_modes) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_device_v1_send_events_modes "unwrap" where

  type CFieldType River_libinput_device_v1_send_events_modes "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_MODES_ENABLED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 320:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_MODES_ENABLED :: River_libinput_device_v1_send_events_modes
pattern RIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_MODES_ENABLED = River_libinput_device_v1_send_events_modes 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_MODES_DISABLED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 321:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_MODES_DISABLED :: River_libinput_device_v1_send_events_modes
pattern RIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_MODES_DISABLED = River_libinput_device_v1_send_events_modes 1

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_MODES_DISABLED_ON_EXTERNAL_MOUSE@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 322:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_MODES_DISABLED_ON_EXTERNAL_MOUSE :: River_libinput_device_v1_send_events_modes
pattern RIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_MODES_DISABLED_ON_EXTERNAL_MOUSE = River_libinput_device_v1_send_events_modes 2

{-| __C declaration:__ @enum river_libinput_device_v1_tap_state@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 328:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_device_v1_tap_state = River_libinput_device_v1_tap_state
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_device_v1_tap_state where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_device_v1_tap_state where

  readRaw =
    \ptr0 ->
          pure River_libinput_device_v1_tap_state
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_device_v1_tap_state where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_device_v1_tap_state unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_device_v1_tap_state instance RIP.Storable River_libinput_device_v1_tap_state

deriving via RIP.CUInt instance RIP.Prim River_libinput_device_v1_tap_state

instance CEnum.CEnum River_libinput_device_v1_tap_state where

  type CEnumZ River_libinput_device_v1_tap_state =
    RIP.CUInt

  toCEnum = River_libinput_device_v1_tap_state

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_TAP_STATE_DISABLED")
                                   , (1, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_TAP_STATE_ENABLED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_device_v1_tap_state"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_device_v1_tap_state"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_libinput_device_v1_tap_state where

  minDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_TAP_STATE_DISABLED

  maxDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_TAP_STATE_ENABLED

instance Show River_libinput_device_v1_tap_state where

  showsPrec = CEnum.shows

instance Read River_libinput_device_v1_tap_state where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_device_v1_tap_state) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_device_v1_tap_state "unwrap" where

  type CFieldType River_libinput_device_v1_tap_state "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_TAP_STATE_DISABLED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 329:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_TAP_STATE_DISABLED :: River_libinput_device_v1_tap_state
pattern RIVER_LIBINPUT_DEVICE_V1_TAP_STATE_DISABLED = River_libinput_device_v1_tap_state 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_TAP_STATE_ENABLED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 330:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_TAP_STATE_ENABLED :: River_libinput_device_v1_tap_state
pattern RIVER_LIBINPUT_DEVICE_V1_TAP_STATE_ENABLED = River_libinput_device_v1_tap_state 1

{-| __C declaration:__ @enum river_libinput_device_v1_tap_button_map@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 336:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_device_v1_tap_button_map = River_libinput_device_v1_tap_button_map
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_device_v1_tap_button_map where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_device_v1_tap_button_map where

  readRaw =
    \ptr0 ->
          pure River_libinput_device_v1_tap_button_map
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_device_v1_tap_button_map where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_device_v1_tap_button_map unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_device_v1_tap_button_map instance RIP.Storable River_libinput_device_v1_tap_button_map

deriving via RIP.CUInt instance RIP.Prim River_libinput_device_v1_tap_button_map

instance CEnum.CEnum River_libinput_device_v1_tap_button_map where

  type CEnumZ River_libinput_device_v1_tap_button_map =
    RIP.CUInt

  toCEnum = River_libinput_device_v1_tap_button_map

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_TAP_BUTTON_MAP_LRM")
                                   , (1, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_TAP_BUTTON_MAP_LMR")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_device_v1_tap_button_map"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_device_v1_tap_button_map"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_libinput_device_v1_tap_button_map where

  minDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_TAP_BUTTON_MAP_LRM

  maxDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_TAP_BUTTON_MAP_LMR

instance Show River_libinput_device_v1_tap_button_map where

  showsPrec = CEnum.shows

instance Read River_libinput_device_v1_tap_button_map where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_device_v1_tap_button_map) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_device_v1_tap_button_map "unwrap" where

  type CFieldType River_libinput_device_v1_tap_button_map "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| 1/2/3 finger tap maps to left/right/middle

__C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_TAP_BUTTON_MAP_LRM@

__defined at:__ @river-libinput-config-v1-client-protocol.h 340:2@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_TAP_BUTTON_MAP_LRM :: River_libinput_device_v1_tap_button_map
pattern RIVER_LIBINPUT_DEVICE_V1_TAP_BUTTON_MAP_LRM = River_libinput_device_v1_tap_button_map 0

{-| 1/2/3 finger tap maps to left/middle/right

__C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_TAP_BUTTON_MAP_LMR@

__defined at:__ @river-libinput-config-v1-client-protocol.h 344:2@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_TAP_BUTTON_MAP_LMR :: River_libinput_device_v1_tap_button_map
pattern RIVER_LIBINPUT_DEVICE_V1_TAP_BUTTON_MAP_LMR = River_libinput_device_v1_tap_button_map 1

{-| __C declaration:__ @enum river_libinput_device_v1_drag_state@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 350:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_device_v1_drag_state = River_libinput_device_v1_drag_state
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_device_v1_drag_state where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_device_v1_drag_state where

  readRaw =
    \ptr0 ->
          pure River_libinput_device_v1_drag_state
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_device_v1_drag_state where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_device_v1_drag_state unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_device_v1_drag_state instance RIP.Storable River_libinput_device_v1_drag_state

deriving via RIP.CUInt instance RIP.Prim River_libinput_device_v1_drag_state

instance CEnum.CEnum River_libinput_device_v1_drag_state where

  type CEnumZ River_libinput_device_v1_drag_state =
    RIP.CUInt

  toCEnum = River_libinput_device_v1_drag_state

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_DRAG_STATE_DISABLED")
                                   , (1, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_DRAG_STATE_ENABLED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_device_v1_drag_state"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_device_v1_drag_state"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_libinput_device_v1_drag_state where

  minDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_DRAG_STATE_DISABLED

  maxDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_DRAG_STATE_ENABLED

instance Show River_libinput_device_v1_drag_state where

  showsPrec = CEnum.shows

instance Read River_libinput_device_v1_drag_state where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_device_v1_drag_state) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_device_v1_drag_state "unwrap" where

  type CFieldType River_libinput_device_v1_drag_state "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_DRAG_STATE_DISABLED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 351:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_DRAG_STATE_DISABLED :: River_libinput_device_v1_drag_state
pattern RIVER_LIBINPUT_DEVICE_V1_DRAG_STATE_DISABLED = River_libinput_device_v1_drag_state 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_DRAG_STATE_ENABLED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 352:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_DRAG_STATE_ENABLED :: River_libinput_device_v1_drag_state
pattern RIVER_LIBINPUT_DEVICE_V1_DRAG_STATE_ENABLED = River_libinput_device_v1_drag_state 1

{-| __C declaration:__ @enum river_libinput_device_v1_drag_lock_state@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 358:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_device_v1_drag_lock_state = River_libinput_device_v1_drag_lock_state
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_device_v1_drag_lock_state where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_device_v1_drag_lock_state where

  readRaw =
    \ptr0 ->
          pure River_libinput_device_v1_drag_lock_state
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_device_v1_drag_lock_state where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_device_v1_drag_lock_state unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_device_v1_drag_lock_state instance RIP.Storable River_libinput_device_v1_drag_lock_state

deriving via RIP.CUInt instance RIP.Prim River_libinput_device_v1_drag_lock_state

instance CEnum.CEnum River_libinput_device_v1_drag_lock_state where

  type CEnumZ River_libinput_device_v1_drag_lock_state =
    RIP.CUInt

  toCEnum = River_libinput_device_v1_drag_lock_state

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_STATE_DISABLED")
                                   , (1, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_STATE_ENABLED_TIMEOUT")
                                   , (2, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_STATE_ENABLED_STICKY")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_device_v1_drag_lock_state"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_device_v1_drag_lock_state"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_libinput_device_v1_drag_lock_state where

  minDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_STATE_DISABLED

  maxDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_STATE_ENABLED_STICKY

instance Show River_libinput_device_v1_drag_lock_state where

  showsPrec = CEnum.shows

instance Read River_libinput_device_v1_drag_lock_state where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_device_v1_drag_lock_state) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_device_v1_drag_lock_state "unwrap" where

  type CFieldType River_libinput_device_v1_drag_lock_state "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_STATE_DISABLED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 359:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_STATE_DISABLED :: River_libinput_device_v1_drag_lock_state
pattern RIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_STATE_DISABLED = River_libinput_device_v1_drag_lock_state 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_STATE_ENABLED_TIMEOUT@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 360:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_STATE_ENABLED_TIMEOUT :: River_libinput_device_v1_drag_lock_state
pattern RIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_STATE_ENABLED_TIMEOUT = River_libinput_device_v1_drag_lock_state 1

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_STATE_ENABLED_STICKY@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 361:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_STATE_ENABLED_STICKY :: River_libinput_device_v1_drag_lock_state
pattern RIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_STATE_ENABLED_STICKY = River_libinput_device_v1_drag_lock_state 2

{-| __C declaration:__ @enum river_libinput_device_v1_three_finger_drag_state@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 367:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_device_v1_three_finger_drag_state = River_libinput_device_v1_three_finger_drag_state
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_device_v1_three_finger_drag_state where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_device_v1_three_finger_drag_state where

  readRaw =
    \ptr0 ->
          pure River_libinput_device_v1_three_finger_drag_state
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_device_v1_three_finger_drag_state where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_device_v1_three_finger_drag_state unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_device_v1_three_finger_drag_state instance RIP.Storable River_libinput_device_v1_three_finger_drag_state

deriving via RIP.CUInt instance RIP.Prim River_libinput_device_v1_three_finger_drag_state

instance CEnum.CEnum River_libinput_device_v1_three_finger_drag_state where

  type CEnumZ River_libinput_device_v1_three_finger_drag_state =
    RIP.CUInt

  toCEnum =
    River_libinput_device_v1_three_finger_drag_state

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_STATE_DISABLED")
                                   , ( 1
                                     , RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_STATE_ENABLED_3FG"
                                     )
                                   , ( 2
                                     , RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_STATE_ENABLED_4FG"
                                     )
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_device_v1_three_finger_drag_state"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_device_v1_three_finger_drag_state"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_libinput_device_v1_three_finger_drag_state where

  minDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_STATE_DISABLED

  maxDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_STATE_ENABLED_4FG

instance Show River_libinput_device_v1_three_finger_drag_state where

  showsPrec = CEnum.shows

instance Read River_libinput_device_v1_three_finger_drag_state where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_device_v1_three_finger_drag_state) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_device_v1_three_finger_drag_state "unwrap" where

  type CFieldType River_libinput_device_v1_three_finger_drag_state "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_STATE_DISABLED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 368:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_STATE_DISABLED :: River_libinput_device_v1_three_finger_drag_state
pattern RIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_STATE_DISABLED = River_libinput_device_v1_three_finger_drag_state 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_STATE_ENABLED_3FG@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 369:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_STATE_ENABLED_3FG :: River_libinput_device_v1_three_finger_drag_state
pattern RIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_STATE_ENABLED_3FG = River_libinput_device_v1_three_finger_drag_state 1

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_STATE_ENABLED_4FG@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 370:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_STATE_ENABLED_4FG :: River_libinput_device_v1_three_finger_drag_state
pattern RIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_STATE_ENABLED_4FG = River_libinput_device_v1_three_finger_drag_state 2

{-| __C declaration:__ @enum river_libinput_device_v1_accel_profile@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 376:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_device_v1_accel_profile = River_libinput_device_v1_accel_profile
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_device_v1_accel_profile where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_device_v1_accel_profile where

  readRaw =
    \ptr0 ->
          pure River_libinput_device_v1_accel_profile
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_device_v1_accel_profile where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_device_v1_accel_profile unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_device_v1_accel_profile instance RIP.Storable River_libinput_device_v1_accel_profile

deriving via RIP.CUInt instance RIP.Prim River_libinput_device_v1_accel_profile

instance CEnum.CEnum River_libinput_device_v1_accel_profile where

  type CEnumZ River_libinput_device_v1_accel_profile =
    RIP.CUInt

  toCEnum = River_libinput_device_v1_accel_profile

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_NONE")
                                   , (1, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_FLAT")
                                   , (2, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_ADAPTIVE")
                                   , (4, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_CUSTOM")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_device_v1_accel_profile"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_device_v1_accel_profile"

instance Show River_libinput_device_v1_accel_profile where

  showsPrec = CEnum.shows

instance Read River_libinput_device_v1_accel_profile where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_device_v1_accel_profile) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_device_v1_accel_profile "unwrap" where

  type CFieldType River_libinput_device_v1_accel_profile "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_NONE@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 377:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_NONE :: River_libinput_device_v1_accel_profile
pattern RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_NONE = River_libinput_device_v1_accel_profile 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_FLAT@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 378:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_FLAT :: River_libinput_device_v1_accel_profile
pattern RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_FLAT = River_libinput_device_v1_accel_profile 1

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_ADAPTIVE@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 379:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_ADAPTIVE :: River_libinput_device_v1_accel_profile
pattern RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_ADAPTIVE = River_libinput_device_v1_accel_profile 2

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_CUSTOM@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 380:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_CUSTOM :: River_libinput_device_v1_accel_profile
pattern RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_CUSTOM = River_libinput_device_v1_accel_profile 4

{-| __C declaration:__ @enum river_libinput_device_v1_accel_profiles@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 386:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_device_v1_accel_profiles = River_libinput_device_v1_accel_profiles
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_device_v1_accel_profiles where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_device_v1_accel_profiles where

  readRaw =
    \ptr0 ->
          pure River_libinput_device_v1_accel_profiles
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_device_v1_accel_profiles where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_device_v1_accel_profiles unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_device_v1_accel_profiles instance RIP.Storable River_libinput_device_v1_accel_profiles

deriving via RIP.CUInt instance RIP.Prim River_libinput_device_v1_accel_profiles

instance CEnum.CEnum River_libinput_device_v1_accel_profiles where

  type CEnumZ River_libinput_device_v1_accel_profiles =
    RIP.CUInt

  toCEnum = River_libinput_device_v1_accel_profiles

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_NONE")
                                   , (1, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_FLAT")
                                   , (2, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_ADAPTIVE")
                                   , (4, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_CUSTOM")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_device_v1_accel_profiles"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_device_v1_accel_profiles"

instance Show River_libinput_device_v1_accel_profiles where

  showsPrec = CEnum.shows

instance Read River_libinput_device_v1_accel_profiles where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_device_v1_accel_profiles) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_device_v1_accel_profiles "unwrap" where

  type CFieldType River_libinput_device_v1_accel_profiles "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_NONE@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 387:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_NONE :: River_libinput_device_v1_accel_profiles
pattern RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_NONE = River_libinput_device_v1_accel_profiles 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_FLAT@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 388:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_FLAT :: River_libinput_device_v1_accel_profiles
pattern RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_FLAT = River_libinput_device_v1_accel_profiles 1

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_ADAPTIVE@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 389:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_ADAPTIVE :: River_libinput_device_v1_accel_profiles
pattern RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_ADAPTIVE = River_libinput_device_v1_accel_profiles 2

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_CUSTOM@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 390:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_CUSTOM :: River_libinput_device_v1_accel_profiles
pattern RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_CUSTOM = River_libinput_device_v1_accel_profiles 4

{-| __C declaration:__ @enum river_libinput_device_v1_natural_scroll_state@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 396:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_device_v1_natural_scroll_state = River_libinput_device_v1_natural_scroll_state
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_device_v1_natural_scroll_state where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_device_v1_natural_scroll_state where

  readRaw =
    \ptr0 ->
          pure River_libinput_device_v1_natural_scroll_state
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_device_v1_natural_scroll_state where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_device_v1_natural_scroll_state unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_device_v1_natural_scroll_state instance RIP.Storable River_libinput_device_v1_natural_scroll_state

deriving via RIP.CUInt instance RIP.Prim River_libinput_device_v1_natural_scroll_state

instance CEnum.CEnum River_libinput_device_v1_natural_scroll_state where

  type CEnumZ River_libinput_device_v1_natural_scroll_state =
    RIP.CUInt

  toCEnum =
    River_libinput_device_v1_natural_scroll_state

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_STATE_DISABLED")
                                   , (1, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_STATE_ENABLED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_device_v1_natural_scroll_state"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_device_v1_natural_scroll_state"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_libinput_device_v1_natural_scroll_state where

  minDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_STATE_DISABLED

  maxDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_STATE_ENABLED

instance Show River_libinput_device_v1_natural_scroll_state where

  showsPrec = CEnum.shows

instance Read River_libinput_device_v1_natural_scroll_state where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_device_v1_natural_scroll_state) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_device_v1_natural_scroll_state "unwrap" where

  type CFieldType River_libinput_device_v1_natural_scroll_state "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_STATE_DISABLED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 397:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_STATE_DISABLED :: River_libinput_device_v1_natural_scroll_state
pattern RIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_STATE_DISABLED = River_libinput_device_v1_natural_scroll_state 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_STATE_ENABLED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 398:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_STATE_ENABLED :: River_libinput_device_v1_natural_scroll_state
pattern RIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_STATE_ENABLED = River_libinput_device_v1_natural_scroll_state 1

{-| __C declaration:__ @enum river_libinput_device_v1_left_handed_state@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 404:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_device_v1_left_handed_state = River_libinput_device_v1_left_handed_state
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_device_v1_left_handed_state where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_device_v1_left_handed_state where

  readRaw =
    \ptr0 ->
          pure River_libinput_device_v1_left_handed_state
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_device_v1_left_handed_state where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_device_v1_left_handed_state unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_device_v1_left_handed_state instance RIP.Storable River_libinput_device_v1_left_handed_state

deriving via RIP.CUInt instance RIP.Prim River_libinput_device_v1_left_handed_state

instance CEnum.CEnum River_libinput_device_v1_left_handed_state where

  type CEnumZ River_libinput_device_v1_left_handed_state =
    RIP.CUInt

  toCEnum = River_libinput_device_v1_left_handed_state

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_STATE_DISABLED")
                                   , (1, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_STATE_ENABLED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_device_v1_left_handed_state"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_device_v1_left_handed_state"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_libinput_device_v1_left_handed_state where

  minDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_STATE_DISABLED

  maxDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_STATE_ENABLED

instance Show River_libinput_device_v1_left_handed_state where

  showsPrec = CEnum.shows

instance Read River_libinput_device_v1_left_handed_state where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_device_v1_left_handed_state) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_device_v1_left_handed_state "unwrap" where

  type CFieldType River_libinput_device_v1_left_handed_state "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_STATE_DISABLED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 405:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_STATE_DISABLED :: River_libinput_device_v1_left_handed_state
pattern RIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_STATE_DISABLED = River_libinput_device_v1_left_handed_state 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_STATE_ENABLED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 406:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_STATE_ENABLED :: River_libinput_device_v1_left_handed_state
pattern RIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_STATE_ENABLED = River_libinput_device_v1_left_handed_state 1

{-| __C declaration:__ @enum river_libinput_device_v1_click_method@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 412:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_device_v1_click_method = River_libinput_device_v1_click_method
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_device_v1_click_method where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_device_v1_click_method where

  readRaw =
    \ptr0 ->
          pure River_libinput_device_v1_click_method
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_device_v1_click_method where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_device_v1_click_method unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_device_v1_click_method instance RIP.Storable River_libinput_device_v1_click_method

deriving via RIP.CUInt instance RIP.Prim River_libinput_device_v1_click_method

instance CEnum.CEnum River_libinput_device_v1_click_method where

  type CEnumZ River_libinput_device_v1_click_method =
    RIP.CUInt

  toCEnum = River_libinput_device_v1_click_method

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_NONE")
                                   , (1, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_BUTTON_AREAS")
                                   , (2, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_CLICKFINGER")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_device_v1_click_method"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_device_v1_click_method"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_libinput_device_v1_click_method where

  minDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_NONE

  maxDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_CLICKFINGER

instance Show River_libinput_device_v1_click_method where

  showsPrec = CEnum.shows

instance Read River_libinput_device_v1_click_method where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_device_v1_click_method) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_device_v1_click_method "unwrap" where

  type CFieldType River_libinput_device_v1_click_method "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_NONE@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 413:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_NONE :: River_libinput_device_v1_click_method
pattern RIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_NONE = River_libinput_device_v1_click_method 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_BUTTON_AREAS@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 414:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_BUTTON_AREAS :: River_libinput_device_v1_click_method
pattern RIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_BUTTON_AREAS = River_libinput_device_v1_click_method 1

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_CLICKFINGER@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 415:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_CLICKFINGER :: River_libinput_device_v1_click_method
pattern RIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_CLICKFINGER = River_libinput_device_v1_click_method 2

{-| __C declaration:__ @enum river_libinput_device_v1_click_methods@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 421:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_device_v1_click_methods = River_libinput_device_v1_click_methods
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_device_v1_click_methods where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_device_v1_click_methods where

  readRaw =
    \ptr0 ->
          pure River_libinput_device_v1_click_methods
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_device_v1_click_methods where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_device_v1_click_methods unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_device_v1_click_methods instance RIP.Storable River_libinput_device_v1_click_methods

deriving via RIP.CUInt instance RIP.Prim River_libinput_device_v1_click_methods

instance CEnum.CEnum River_libinput_device_v1_click_methods where

  type CEnumZ River_libinput_device_v1_click_methods =
    RIP.CUInt

  toCEnum = River_libinput_device_v1_click_methods

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_CLICK_METHODS_NONE")
                                   , (1, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_CLICK_METHODS_BUTTON_AREAS")
                                   , (2, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_CLICK_METHODS_CLICKFINGER")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_device_v1_click_methods"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_device_v1_click_methods"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_libinput_device_v1_click_methods where

  minDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_CLICK_METHODS_NONE

  maxDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_CLICK_METHODS_CLICKFINGER

instance Show River_libinput_device_v1_click_methods where

  showsPrec = CEnum.shows

instance Read River_libinput_device_v1_click_methods where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_device_v1_click_methods) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_device_v1_click_methods "unwrap" where

  type CFieldType River_libinput_device_v1_click_methods "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_CLICK_METHODS_NONE@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 422:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_CLICK_METHODS_NONE :: River_libinput_device_v1_click_methods
pattern RIVER_LIBINPUT_DEVICE_V1_CLICK_METHODS_NONE = River_libinput_device_v1_click_methods 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_CLICK_METHODS_BUTTON_AREAS@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 423:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_CLICK_METHODS_BUTTON_AREAS :: River_libinput_device_v1_click_methods
pattern RIVER_LIBINPUT_DEVICE_V1_CLICK_METHODS_BUTTON_AREAS = River_libinput_device_v1_click_methods 1

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_CLICK_METHODS_CLICKFINGER@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 424:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_CLICK_METHODS_CLICKFINGER :: River_libinput_device_v1_click_methods
pattern RIVER_LIBINPUT_DEVICE_V1_CLICK_METHODS_CLICKFINGER = River_libinput_device_v1_click_methods 2

{-| __C declaration:__ @enum river_libinput_device_v1_clickfinger_button_map@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 430:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_device_v1_clickfinger_button_map = River_libinput_device_v1_clickfinger_button_map
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_device_v1_clickfinger_button_map where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_device_v1_clickfinger_button_map where

  readRaw =
    \ptr0 ->
          pure River_libinput_device_v1_clickfinger_button_map
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_device_v1_clickfinger_button_map where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_device_v1_clickfinger_button_map unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_device_v1_clickfinger_button_map instance RIP.Storable River_libinput_device_v1_clickfinger_button_map

deriving via RIP.CUInt instance RIP.Prim River_libinput_device_v1_clickfinger_button_map

instance CEnum.CEnum River_libinput_device_v1_clickfinger_button_map where

  type CEnumZ River_libinput_device_v1_clickfinger_button_map =
    RIP.CUInt

  toCEnum =
    River_libinput_device_v1_clickfinger_button_map

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_CLICKFINGER_BUTTON_MAP_LRM")
                                   , (1, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_CLICKFINGER_BUTTON_MAP_LMR")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_device_v1_clickfinger_button_map"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_device_v1_clickfinger_button_map"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_libinput_device_v1_clickfinger_button_map where

  minDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_CLICKFINGER_BUTTON_MAP_LRM

  maxDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_CLICKFINGER_BUTTON_MAP_LMR

instance Show River_libinput_device_v1_clickfinger_button_map where

  showsPrec = CEnum.shows

instance Read River_libinput_device_v1_clickfinger_button_map where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_device_v1_clickfinger_button_map) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_device_v1_clickfinger_button_map "unwrap" where

  type CFieldType River_libinput_device_v1_clickfinger_button_map "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_CLICKFINGER_BUTTON_MAP_LRM@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 431:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_CLICKFINGER_BUTTON_MAP_LRM :: River_libinput_device_v1_clickfinger_button_map
pattern RIVER_LIBINPUT_DEVICE_V1_CLICKFINGER_BUTTON_MAP_LRM = River_libinput_device_v1_clickfinger_button_map 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_CLICKFINGER_BUTTON_MAP_LMR@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 432:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_CLICKFINGER_BUTTON_MAP_LMR :: River_libinput_device_v1_clickfinger_button_map
pattern RIVER_LIBINPUT_DEVICE_V1_CLICKFINGER_BUTTON_MAP_LMR = River_libinput_device_v1_clickfinger_button_map 1

{-| __C declaration:__ @enum river_libinput_device_v1_middle_emulation_state@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 438:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_device_v1_middle_emulation_state = River_libinput_device_v1_middle_emulation_state
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_device_v1_middle_emulation_state where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_device_v1_middle_emulation_state where

  readRaw =
    \ptr0 ->
          pure River_libinput_device_v1_middle_emulation_state
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_device_v1_middle_emulation_state where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_device_v1_middle_emulation_state unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_device_v1_middle_emulation_state instance RIP.Storable River_libinput_device_v1_middle_emulation_state

deriving via RIP.CUInt instance RIP.Prim River_libinput_device_v1_middle_emulation_state

instance CEnum.CEnum River_libinput_device_v1_middle_emulation_state where

  type CEnumZ River_libinput_device_v1_middle_emulation_state =
    RIP.CUInt

  toCEnum =
    River_libinput_device_v1_middle_emulation_state

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_STATE_DISABLED")
                                   , (1, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_STATE_ENABLED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_device_v1_middle_emulation_state"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_device_v1_middle_emulation_state"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_libinput_device_v1_middle_emulation_state where

  minDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_STATE_DISABLED

  maxDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_STATE_ENABLED

instance Show River_libinput_device_v1_middle_emulation_state where

  showsPrec = CEnum.shows

instance Read River_libinput_device_v1_middle_emulation_state where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_device_v1_middle_emulation_state) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_device_v1_middle_emulation_state "unwrap" where

  type CFieldType River_libinput_device_v1_middle_emulation_state "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_STATE_DISABLED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 439:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_STATE_DISABLED :: River_libinput_device_v1_middle_emulation_state
pattern RIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_STATE_DISABLED = River_libinput_device_v1_middle_emulation_state 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_STATE_ENABLED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 440:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_STATE_ENABLED :: River_libinput_device_v1_middle_emulation_state
pattern RIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_STATE_ENABLED = River_libinput_device_v1_middle_emulation_state 1

{-| __C declaration:__ @enum river_libinput_device_v1_scroll_method@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 446:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_device_v1_scroll_method = River_libinput_device_v1_scroll_method
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_device_v1_scroll_method where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_device_v1_scroll_method where

  readRaw =
    \ptr0 ->
          pure River_libinput_device_v1_scroll_method
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_device_v1_scroll_method where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_device_v1_scroll_method unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_device_v1_scroll_method instance RIP.Storable River_libinput_device_v1_scroll_method

deriving via RIP.CUInt instance RIP.Prim River_libinput_device_v1_scroll_method

instance CEnum.CEnum River_libinput_device_v1_scroll_method where

  type CEnumZ River_libinput_device_v1_scroll_method =
    RIP.CUInt

  toCEnum = River_libinput_device_v1_scroll_method

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_NO_SCROLL")
                                   , (1, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_TWO_FINGER")
                                   , (2, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_EDGE")
                                   , (4, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_ON_BUTTON_DOWN")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_device_v1_scroll_method"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_device_v1_scroll_method"

instance Show River_libinput_device_v1_scroll_method where

  showsPrec = CEnum.shows

instance Read River_libinput_device_v1_scroll_method where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_device_v1_scroll_method) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_device_v1_scroll_method "unwrap" where

  type CFieldType River_libinput_device_v1_scroll_method "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_NO_SCROLL@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 447:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_NO_SCROLL :: River_libinput_device_v1_scroll_method
pattern RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_NO_SCROLL = River_libinput_device_v1_scroll_method 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_TWO_FINGER@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 448:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_TWO_FINGER :: River_libinput_device_v1_scroll_method
pattern RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_TWO_FINGER = River_libinput_device_v1_scroll_method 1

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_EDGE@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 449:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_EDGE :: River_libinput_device_v1_scroll_method
pattern RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_EDGE = River_libinput_device_v1_scroll_method 2

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_ON_BUTTON_DOWN@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 450:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_ON_BUTTON_DOWN :: River_libinput_device_v1_scroll_method
pattern RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_ON_BUTTON_DOWN = River_libinput_device_v1_scroll_method 4

{-| __C declaration:__ @enum river_libinput_device_v1_scroll_methods@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 456:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_device_v1_scroll_methods = River_libinput_device_v1_scroll_methods
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_device_v1_scroll_methods where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_device_v1_scroll_methods where

  readRaw =
    \ptr0 ->
          pure River_libinput_device_v1_scroll_methods
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_device_v1_scroll_methods where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_device_v1_scroll_methods unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_device_v1_scroll_methods instance RIP.Storable River_libinput_device_v1_scroll_methods

deriving via RIP.CUInt instance RIP.Prim River_libinput_device_v1_scroll_methods

instance CEnum.CEnum River_libinput_device_v1_scroll_methods where

  type CEnumZ River_libinput_device_v1_scroll_methods =
    RIP.CUInt

  toCEnum = River_libinput_device_v1_scroll_methods

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHODS_NO_SCROLL")
                                   , (1, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHODS_TWO_FINGER")
                                   , (2, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHODS_EDGE")
                                   , (4, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHODS_ON_BUTTON_DOWN")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_device_v1_scroll_methods"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_device_v1_scroll_methods"

instance Show River_libinput_device_v1_scroll_methods where

  showsPrec = CEnum.shows

instance Read River_libinput_device_v1_scroll_methods where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_device_v1_scroll_methods) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_device_v1_scroll_methods "unwrap" where

  type CFieldType River_libinput_device_v1_scroll_methods "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHODS_NO_SCROLL@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 457:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHODS_NO_SCROLL :: River_libinput_device_v1_scroll_methods
pattern RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHODS_NO_SCROLL = River_libinput_device_v1_scroll_methods 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHODS_TWO_FINGER@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 458:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHODS_TWO_FINGER :: River_libinput_device_v1_scroll_methods
pattern RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHODS_TWO_FINGER = River_libinput_device_v1_scroll_methods 1

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHODS_EDGE@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 459:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHODS_EDGE :: River_libinput_device_v1_scroll_methods
pattern RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHODS_EDGE = River_libinput_device_v1_scroll_methods 2

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHODS_ON_BUTTON_DOWN@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 460:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHODS_ON_BUTTON_DOWN :: River_libinput_device_v1_scroll_methods
pattern RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHODS_ON_BUTTON_DOWN = River_libinput_device_v1_scroll_methods 4

{-| __C declaration:__ @enum river_libinput_device_v1_scroll_button_lock_state@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 466:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_device_v1_scroll_button_lock_state = River_libinput_device_v1_scroll_button_lock_state
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_device_v1_scroll_button_lock_state where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_device_v1_scroll_button_lock_state where

  readRaw =
    \ptr0 ->
          pure River_libinput_device_v1_scroll_button_lock_state
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_device_v1_scroll_button_lock_state where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_device_v1_scroll_button_lock_state unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_device_v1_scroll_button_lock_state instance RIP.Storable River_libinput_device_v1_scroll_button_lock_state

deriving via RIP.CUInt instance RIP.Prim River_libinput_device_v1_scroll_button_lock_state

instance CEnum.CEnum River_libinput_device_v1_scroll_button_lock_state where

  type CEnumZ River_libinput_device_v1_scroll_button_lock_state =
    RIP.CUInt

  toCEnum =
    River_libinput_device_v1_scroll_button_lock_state

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_LOCK_STATE_DISABLED")
                                   , (1, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_LOCK_STATE_ENABLED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_device_v1_scroll_button_lock_state"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_device_v1_scroll_button_lock_state"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_libinput_device_v1_scroll_button_lock_state where

  minDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_LOCK_STATE_DISABLED

  maxDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_LOCK_STATE_ENABLED

instance Show River_libinput_device_v1_scroll_button_lock_state where

  showsPrec = CEnum.shows

instance Read River_libinput_device_v1_scroll_button_lock_state where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_device_v1_scroll_button_lock_state) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_device_v1_scroll_button_lock_state "unwrap" where

  type CFieldType River_libinput_device_v1_scroll_button_lock_state "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_LOCK_STATE_DISABLED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 467:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_LOCK_STATE_DISABLED :: River_libinput_device_v1_scroll_button_lock_state
pattern RIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_LOCK_STATE_DISABLED = River_libinput_device_v1_scroll_button_lock_state 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_LOCK_STATE_ENABLED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 468:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_LOCK_STATE_ENABLED :: River_libinput_device_v1_scroll_button_lock_state
pattern RIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_LOCK_STATE_ENABLED = River_libinput_device_v1_scroll_button_lock_state 1

{-| __C declaration:__ @enum river_libinput_device_v1_dwt_state@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 474:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_device_v1_dwt_state = River_libinput_device_v1_dwt_state
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_device_v1_dwt_state where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_device_v1_dwt_state where

  readRaw =
    \ptr0 ->
          pure River_libinput_device_v1_dwt_state
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_device_v1_dwt_state where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_device_v1_dwt_state unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_device_v1_dwt_state instance RIP.Storable River_libinput_device_v1_dwt_state

deriving via RIP.CUInt instance RIP.Prim River_libinput_device_v1_dwt_state

instance CEnum.CEnum River_libinput_device_v1_dwt_state where

  type CEnumZ River_libinput_device_v1_dwt_state =
    RIP.CUInt

  toCEnum = River_libinput_device_v1_dwt_state

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_DWT_STATE_DISABLED")
                                   , (1, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_DWT_STATE_ENABLED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_device_v1_dwt_state"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_device_v1_dwt_state"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_libinput_device_v1_dwt_state where

  minDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_DWT_STATE_DISABLED

  maxDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_DWT_STATE_ENABLED

instance Show River_libinput_device_v1_dwt_state where

  showsPrec = CEnum.shows

instance Read River_libinput_device_v1_dwt_state where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_device_v1_dwt_state) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_device_v1_dwt_state "unwrap" where

  type CFieldType River_libinput_device_v1_dwt_state "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_DWT_STATE_DISABLED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 475:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_DWT_STATE_DISABLED :: River_libinput_device_v1_dwt_state
pattern RIVER_LIBINPUT_DEVICE_V1_DWT_STATE_DISABLED = River_libinput_device_v1_dwt_state 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_DWT_STATE_ENABLED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 476:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_DWT_STATE_ENABLED :: River_libinput_device_v1_dwt_state
pattern RIVER_LIBINPUT_DEVICE_V1_DWT_STATE_ENABLED = River_libinput_device_v1_dwt_state 1

{-| __C declaration:__ @enum river_libinput_device_v1_dwtp_state@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 482:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_device_v1_dwtp_state = River_libinput_device_v1_dwtp_state
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_device_v1_dwtp_state where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_device_v1_dwtp_state where

  readRaw =
    \ptr0 ->
          pure River_libinput_device_v1_dwtp_state
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_device_v1_dwtp_state where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_device_v1_dwtp_state unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_device_v1_dwtp_state instance RIP.Storable River_libinput_device_v1_dwtp_state

deriving via RIP.CUInt instance RIP.Prim River_libinput_device_v1_dwtp_state

instance CEnum.CEnum River_libinput_device_v1_dwtp_state where

  type CEnumZ River_libinput_device_v1_dwtp_state =
    RIP.CUInt

  toCEnum = River_libinput_device_v1_dwtp_state

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_DWTP_STATE_DISABLED")
                                   , (1, RIP.singleton "RIVER_LIBINPUT_DEVICE_V1_DWTP_STATE_ENABLED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_device_v1_dwtp_state"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_device_v1_dwtp_state"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_libinput_device_v1_dwtp_state where

  minDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_DWTP_STATE_DISABLED

  maxDeclaredValue =
    RIVER_LIBINPUT_DEVICE_V1_DWTP_STATE_ENABLED

instance Show River_libinput_device_v1_dwtp_state where

  showsPrec = CEnum.shows

instance Read River_libinput_device_v1_dwtp_state where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_device_v1_dwtp_state) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_device_v1_dwtp_state "unwrap" where

  type CFieldType River_libinput_device_v1_dwtp_state "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_DWTP_STATE_DISABLED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 483:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_DWTP_STATE_DISABLED :: River_libinput_device_v1_dwtp_state
pattern RIVER_LIBINPUT_DEVICE_V1_DWTP_STATE_DISABLED = River_libinput_device_v1_dwtp_state 0

{-| __C declaration:__ @RIVER_LIBINPUT_DEVICE_V1_DWTP_STATE_ENABLED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 484:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_DEVICE_V1_DWTP_STATE_ENABLED :: River_libinput_device_v1_dwtp_state
pattern RIVER_LIBINPUT_DEVICE_V1_DWTP_STATE_ENABLED = River_libinput_device_v1_dwtp_state 1

{-|

  > iface_river_libinput_device_v1

  > river_libinput_device_v1_listener

__C declaration:__ @struct river_libinput_device_v1_listener@

__defined at:__ @river-libinput-config-v1-client-protocol.h 492:8@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
data River_libinput_device_v1_listener = River_libinput_device_v1_listener
  { removed :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> IO ())
    {- ^ the libinput device is removed

       This event indicates that the libinput device has been removed.

       The server will send no further events on this object and ignore any request (other than river_libinput_device_v1.destroy) made after this event is sent. The client should destroy this object with the river_libinput_device_v1.destroy request to free up resources.

    __C declaration:__ @removed@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 505:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , input_device :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr River_input_device_v1) -> IO ())
    {- ^ corresponding river input device

       The river_input_device_v1 corresponding to this libinput device. This event will always be the first event sent on the river_libinput_device_v1 object, and it will be sent exactly once.

    __C declaration:__ @input_device@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 515:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , send_events_support :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ supported send events modes

       Supported send events modes.

    __C declaration:__ @send_events_support@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 523:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , send_events_default :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ default send events mode

       Default send events mode.

    __C declaration:__ @send_events_default@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 531:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , send_events_current :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ current send events mode

       Current send events mode.

    __C declaration:__ @send_events_current@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 539:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , tap_support :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ tap-to-click/drag support

       The number of fingers supported for tap-to-click/drag. If finger_count is 0, tap-to-click and drag are unsupported.

    __C declaration:__ @tap_support@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 548:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , tap_default :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ default tap-to-click state

       Default tap-to-click state.

    __C declaration:__ @tap_default@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 556:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , tap_current :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ current tap-to-click state

       Current tap-to-click state.

    __C declaration:__ @tap_current@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 564:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , tap_button_map_default :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ default tap-to-click button map

       Default tap-to-click button map.

    __C declaration:__ @tap_button_map_default@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 572:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , tap_button_map_current :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ current tap-to-click button map

       Current tap-to-click button map.

    __C declaration:__ @tap_button_map_current@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 580:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , drag_default :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ default tap-and-drag state

       Default tap-and-drag state.

    __C declaration:__ @drag_default@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 588:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , drag_current :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ current tap-and-drag state

       Current tap-and-drag state.

    __C declaration:__ @drag_current@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 596:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , drag_lock_default :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ default drag lock state

       Default drag lock state.

    __C declaration:__ @drag_lock_default@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 604:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , drag_lock_current :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ current drag lock state

       Current drag lock state.

    __C declaration:__ @drag_lock_current@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 612:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , three_finger_drag_support :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ three finger drag support

       The number of fingers supported for three/four finger drag. If finger_count is less than 3, three finger drag is unsupported.

    __C declaration:__ @three_finger_drag_support@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 621:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , three_finger_drag_default :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ default three finger drag state

       Default three finger drag state.

    __C declaration:__ @three_finger_drag_default@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 629:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , three_finger_drag_current :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ current three finger drag state

       Current three finger drag state.

    __C declaration:__ @three_finger_drag_current@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 637:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , calibration_matrix_support :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ support for a calibration matrix

       A calibration matrix is supported if the supported argument is non-zero.

       [__@supported@ /(input)/__]: boolean

    __C declaration:__ @calibration_matrix_support@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 647:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , calibration_matrix_default :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Generated.Wayland.Util.WlArray) -> IO ())
    {- ^ default calibration matrix

       Default calibration matrix.

       [__@matrix@ /(input)/__]: array of 6 floats

    __C declaration:__ @calibration_matrix_default@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 656:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , calibration_matrix_current :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Generated.Wayland.Util.WlArray) -> IO ())
    {- ^ current calibration matrix

       Current calibration matrix.

       [__@matrix@ /(input)/__]: array of 6 floats

    __C declaration:__ @calibration_matrix_current@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 665:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , accel_profiles_support :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ supported acceleration profiles

       Supported acceleration profiles.

    __C declaration:__ @accel_profiles_support@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 673:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , accel_profile_default :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ default acceleration profile

       Default acceleration profile.

    __C declaration:__ @accel_profile_default@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 681:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , accel_profile_current :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ current send events mode

       Current acceleration profile.

    __C declaration:__ @accel_profile_current@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 689:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , accel_speed_default :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Generated.Wayland.Util.WlArray) -> IO ())
    {- ^ default acceleration speed

       Default acceleration speed.

       [__@speed@ /(input)/__]: double

    __C declaration:__ @accel_speed_default@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 698:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , accel_speed_current :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Generated.Wayland.Util.WlArray) -> IO ())
    {- ^ current acceleration speed

       Current acceleration speed.

       [__@speed@ /(input)/__]: double

    __C declaration:__ @accel_speed_current@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 707:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , natural_scroll_support :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ support for natural scroll

       Natural scroll is supported if the supported argument is non-zero.

       [__@supported@ /(input)/__]: boolean

    __C declaration:__ @natural_scroll_support@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 717:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , natural_scroll_default :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ default natural scroll

       Default natural scroll.

    __C declaration:__ @natural_scroll_default@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 725:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , natural_scroll_current :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ current natural scroll state

       Current natural scroll.

    __C declaration:__ @natural_scroll_current@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 733:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , left_handed_support :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ support for left-handed mode

       Left-handed mode is supported if the supported argument is non-zero.

       [__@supported@ /(input)/__]: boolean

    __C declaration:__ @left_handed_support@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 743:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , left_handed_default :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ default left-handed mode

       Default left-handed mode.

    __C declaration:__ @left_handed_default@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 751:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , left_handed_current :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ current left-handed mode state

       Current left-handed mode.

    __C declaration:__ @left_handed_current@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 759:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , click_method_support :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ supported click methods

       The click methods supported by the device.

    __C declaration:__ @click_method_support@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 767:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , click_method_default :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ default click method

       Default click method.

    __C declaration:__ @click_method_default@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 775:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , click_method_current :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ current click method

       Current click method.

    __C declaration:__ @click_method_current@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 783:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , clickfinger_button_map_default :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ default clickfinger button map

       Default clickfinger button map. Supported if click_methods.clickfinger is supported.

    __C declaration:__ @clickfinger_button_map_default@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 792:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , clickfinger_button_map_current :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ current clickfinger button map

       Current clickfinger button map. Supported if click_methods.clickfinger is supported.

    __C declaration:__ @clickfinger_button_map_current@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 801:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , middle_emulation_support :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ support for middle mouse button emulation

       Middle mouse button emulation is supported if the supported argument is non-zero.

       [__@supported@ /(input)/__]: boolean

    __C declaration:__ @middle_emulation_support@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 811:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , middle_emulation_default :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ default middle mouse button emulation

       Default middle mouse button emulation.

    __C declaration:__ @middle_emulation_default@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 819:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , middle_emulation_current :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ current middle mouse button emulation state

       Current middle mouse button emulation.

    __C declaration:__ @middle_emulation_current@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 827:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , scroll_method_support :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ supported scroll methods

       The scroll methods supported by the device.

    __C declaration:__ @scroll_method_support@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 835:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , scroll_method_default :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ default scroll method

       Default scroll method.

    __C declaration:__ @scroll_method_default@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 843:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , scroll_method_current :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ current scroll method

       Current scroll method.

    __C declaration:__ @scroll_method_current@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 851:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , scroll_button_default :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ default scroll button

       Default scroll button. Supported if scroll_methods.on_button_down is supported.

    __C declaration:__ @scroll_button_default@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 860:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , scroll_button_current :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ current scroll button

       Current scroll button. Supported if scroll_methods.on_button_down is supported.

    __C declaration:__ @scroll_button_current@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 869:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , scroll_button_lock_default :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ default scroll button lock state

       Default scroll button lock state. Supported if scroll_methods.on_button_down is supported.

    __C declaration:__ @scroll_button_lock_default@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 878:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , scroll_button_lock_current :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ current scroll button lock state

       Current scroll button lock state. Supported if scroll_methods.on_button_down is supported.

    __C declaration:__ @scroll_button_lock_current@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 887:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , dwt_support :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ support for disable-while-typing

       Disable-while-typing is supported if the supported argument is non-zero.

       [__@supported@ /(input)/__]: boolean

    __C declaration:__ @dwt_support@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 897:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , dwt_default :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ default disable-while-typing state

       Default disable-while-typing state.

    __C declaration:__ @dwt_default@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 905:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , dwt_current :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ current disable-while-typing state

       Current disable-while-typing state.

    __C declaration:__ @dwt_current@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 913:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , dwtp_support :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ support for disable-while-trackpointing

       Disable-while-trackpointing is supported if the supported argument is non-zero.

       [__@supported@ /(input)/__]: boolean

    __C declaration:__ @dwtp_support@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 923:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , dwtp_default :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ default disable-while-trackpointing state

       Default disable-while-trackpointing state.

    __C declaration:__ @dwtp_default@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 931:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , dwtp_current :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ current disable-while-trackpointing state

       Current disable-while-trackpointing state.

    __C declaration:__ @dwtp_current@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 939:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , rotation_support :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ support for rotation

       Rotation is supported if the supported argument is non-zero.

       [__@supported@ /(input)/__]: boolean

    __C declaration:__ @rotation_support@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 948:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , rotation_default :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ default rotation angle

       Default rotation angle.

    __C declaration:__ @rotation_default@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 956:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , rotation_current :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ current rotation angle

       Current rotation angle.

    __C declaration:__ @rotation_current@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 964:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize River_libinput_device_v1_listener where

  staticSizeOf = \_ -> (440 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw River_libinput_device_v1_listener where

  readRaw =
    \ptr0 ->
          pure River_libinput_device_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"removed") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"input_device") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"send_events_support") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"send_events_default") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"send_events_current") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"tap_support") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"tap_default") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"tap_current") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"tap_button_map_default") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"tap_button_map_current") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"drag_default") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"drag_current") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"drag_lock_default") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"drag_lock_current") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"three_finger_drag_support") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"three_finger_drag_default") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"three_finger_drag_current") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"calibration_matrix_support") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"calibration_matrix_default") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"calibration_matrix_current") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"accel_profiles_support") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"accel_profile_default") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"accel_profile_current") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"accel_speed_default") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"accel_speed_current") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"natural_scroll_support") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"natural_scroll_default") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"natural_scroll_current") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"left_handed_support") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"left_handed_default") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"left_handed_current") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"click_method_support") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"click_method_default") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"click_method_current") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"clickfinger_button_map_default") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"clickfinger_button_map_current") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"middle_emulation_support") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"middle_emulation_default") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"middle_emulation_current") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"scroll_method_support") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"scroll_method_default") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"scroll_method_current") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"scroll_button_default") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"scroll_button_current") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"scroll_button_lock_default") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"scroll_button_lock_current") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"dwt_support") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"dwt_default") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"dwt_current") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"dwtp_support") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"dwtp_default") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"dwtp_current") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"rotation_support") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"rotation_default") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"rotation_current") ptr0

instance Marshal.WriteRaw River_libinput_device_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_device_v1_listener
            removed2
            input_device3
            send_events_support4
            send_events_default5
            send_events_current6
            tap_support7
            tap_default8
            tap_current9
            tap_button_map_default10
            tap_button_map_current11
            drag_default12
            drag_current13
            drag_lock_default14
            drag_lock_current15
            three_finger_drag_support16
            three_finger_drag_default17
            three_finger_drag_current18
            calibration_matrix_support19
            calibration_matrix_default20
            calibration_matrix_current21
            accel_profiles_support22
            accel_profile_default23
            accel_profile_current24
            accel_speed_default25
            accel_speed_current26
            natural_scroll_support27
            natural_scroll_default28
            natural_scroll_current29
            left_handed_support30
            left_handed_default31
            left_handed_current32
            click_method_support33
            click_method_default34
            click_method_current35
            clickfinger_button_map_default36
            clickfinger_button_map_current37
            middle_emulation_support38
            middle_emulation_default39
            middle_emulation_current40
            scroll_method_support41
            scroll_method_default42
            scroll_method_current43
            scroll_button_default44
            scroll_button_current45
            scroll_button_lock_default46
            scroll_button_lock_current47
            dwt_support48
            dwt_default49
            dwt_current50
            dwtp_support51
            dwtp_default52
            dwtp_current53
            rotation_support54
            rotation_default55
            rotation_current56 ->
                 HasCField.writeRaw (RIP.Proxy @"removed") ptr0 removed2
              >> HasCField.writeRaw (RIP.Proxy @"input_device") ptr0 input_device3
              >> HasCField.writeRaw (RIP.Proxy @"send_events_support") ptr0 send_events_support4
              >> HasCField.writeRaw (RIP.Proxy @"send_events_default") ptr0 send_events_default5
              >> HasCField.writeRaw (RIP.Proxy @"send_events_current") ptr0 send_events_current6
              >> HasCField.writeRaw (RIP.Proxy @"tap_support") ptr0 tap_support7
              >> HasCField.writeRaw (RIP.Proxy @"tap_default") ptr0 tap_default8
              >> HasCField.writeRaw (RIP.Proxy @"tap_current") ptr0 tap_current9
              >> HasCField.writeRaw (RIP.Proxy @"tap_button_map_default") ptr0 tap_button_map_default10
              >> HasCField.writeRaw (RIP.Proxy @"tap_button_map_current") ptr0 tap_button_map_current11
              >> HasCField.writeRaw (RIP.Proxy @"drag_default") ptr0 drag_default12
              >> HasCField.writeRaw (RIP.Proxy @"drag_current") ptr0 drag_current13
              >> HasCField.writeRaw (RIP.Proxy @"drag_lock_default") ptr0 drag_lock_default14
              >> HasCField.writeRaw (RIP.Proxy @"drag_lock_current") ptr0 drag_lock_current15
              >> HasCField.writeRaw (RIP.Proxy @"three_finger_drag_support") ptr0 three_finger_drag_support16
              >> HasCField.writeRaw (RIP.Proxy @"three_finger_drag_default") ptr0 three_finger_drag_default17
              >> HasCField.writeRaw (RIP.Proxy @"three_finger_drag_current") ptr0 three_finger_drag_current18
              >> HasCField.writeRaw (RIP.Proxy @"calibration_matrix_support") ptr0 calibration_matrix_support19
              >> HasCField.writeRaw (RIP.Proxy @"calibration_matrix_default") ptr0 calibration_matrix_default20
              >> HasCField.writeRaw (RIP.Proxy @"calibration_matrix_current") ptr0 calibration_matrix_current21
              >> HasCField.writeRaw (RIP.Proxy @"accel_profiles_support") ptr0 accel_profiles_support22
              >> HasCField.writeRaw (RIP.Proxy @"accel_profile_default") ptr0 accel_profile_default23
              >> HasCField.writeRaw (RIP.Proxy @"accel_profile_current") ptr0 accel_profile_current24
              >> HasCField.writeRaw (RIP.Proxy @"accel_speed_default") ptr0 accel_speed_default25
              >> HasCField.writeRaw (RIP.Proxy @"accel_speed_current") ptr0 accel_speed_current26
              >> HasCField.writeRaw (RIP.Proxy @"natural_scroll_support") ptr0 natural_scroll_support27
              >> HasCField.writeRaw (RIP.Proxy @"natural_scroll_default") ptr0 natural_scroll_default28
              >> HasCField.writeRaw (RIP.Proxy @"natural_scroll_current") ptr0 natural_scroll_current29
              >> HasCField.writeRaw (RIP.Proxy @"left_handed_support") ptr0 left_handed_support30
              >> HasCField.writeRaw (RIP.Proxy @"left_handed_default") ptr0 left_handed_default31
              >> HasCField.writeRaw (RIP.Proxy @"left_handed_current") ptr0 left_handed_current32
              >> HasCField.writeRaw (RIP.Proxy @"click_method_support") ptr0 click_method_support33
              >> HasCField.writeRaw (RIP.Proxy @"click_method_default") ptr0 click_method_default34
              >> HasCField.writeRaw (RIP.Proxy @"click_method_current") ptr0 click_method_current35
              >> HasCField.writeRaw (RIP.Proxy @"clickfinger_button_map_default") ptr0 clickfinger_button_map_default36
              >> HasCField.writeRaw (RIP.Proxy @"clickfinger_button_map_current") ptr0 clickfinger_button_map_current37
              >> HasCField.writeRaw (RIP.Proxy @"middle_emulation_support") ptr0 middle_emulation_support38
              >> HasCField.writeRaw (RIP.Proxy @"middle_emulation_default") ptr0 middle_emulation_default39
              >> HasCField.writeRaw (RIP.Proxy @"middle_emulation_current") ptr0 middle_emulation_current40
              >> HasCField.writeRaw (RIP.Proxy @"scroll_method_support") ptr0 scroll_method_support41
              >> HasCField.writeRaw (RIP.Proxy @"scroll_method_default") ptr0 scroll_method_default42
              >> HasCField.writeRaw (RIP.Proxy @"scroll_method_current") ptr0 scroll_method_current43
              >> HasCField.writeRaw (RIP.Proxy @"scroll_button_default") ptr0 scroll_button_default44
              >> HasCField.writeRaw (RIP.Proxy @"scroll_button_current") ptr0 scroll_button_current45
              >> HasCField.writeRaw (RIP.Proxy @"scroll_button_lock_default") ptr0 scroll_button_lock_default46
              >> HasCField.writeRaw (RIP.Proxy @"scroll_button_lock_current") ptr0 scroll_button_lock_current47
              >> HasCField.writeRaw (RIP.Proxy @"dwt_support") ptr0 dwt_support48
              >> HasCField.writeRaw (RIP.Proxy @"dwt_default") ptr0 dwt_default49
              >> HasCField.writeRaw (RIP.Proxy @"dwt_current") ptr0 dwt_current50
              >> HasCField.writeRaw (RIP.Proxy @"dwtp_support") ptr0 dwtp_support51
              >> HasCField.writeRaw (RIP.Proxy @"dwtp_default") ptr0 dwtp_default52
              >> HasCField.writeRaw (RIP.Proxy @"dwtp_current") ptr0 dwtp_current53
              >> HasCField.writeRaw (RIP.Proxy @"rotation_support") ptr0 rotation_support54
              >> HasCField.writeRaw (RIP.Proxy @"rotation_default") ptr0 rotation_default55
              >> HasCField.writeRaw (RIP.Proxy @"rotation_current") ptr0 rotation_current56

deriving via Marshal.EquivStorable River_libinput_device_v1_listener instance RIP.Storable River_libinput_device_v1_listener

instance HasCField.HasCField River_libinput_device_v1_listener "removed" where

  type CFieldType River_libinput_device_v1_listener "removed" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> IO ()))
         ) => RIP.HasField "removed" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"removed")

instance HasCField.HasCField River_libinput_device_v1_listener "input_device" where

  type CFieldType River_libinput_device_v1_listener "input_device" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr River_input_device_v1) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr River_input_device_v1) -> IO ()))
         ) => RIP.HasField "input_device" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"input_device")

instance HasCField.HasCField River_libinput_device_v1_listener "send_events_support" where

  type CFieldType River_libinput_device_v1_listener "send_events_support" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "send_events_support" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"send_events_support")

instance HasCField.HasCField River_libinput_device_v1_listener "send_events_default" where

  type CFieldType River_libinput_device_v1_listener "send_events_default" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "send_events_default" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"send_events_default")

instance HasCField.HasCField River_libinput_device_v1_listener "send_events_current" where

  type CFieldType River_libinput_device_v1_listener "send_events_current" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "send_events_current" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"send_events_current")

instance HasCField.HasCField River_libinput_device_v1_listener "tap_support" where

  type CFieldType River_libinput_device_v1_listener "tap_support" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 40

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "tap_support" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"tap_support")

instance HasCField.HasCField River_libinput_device_v1_listener "tap_default" where

  type CFieldType River_libinput_device_v1_listener "tap_default" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 48

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "tap_default" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"tap_default")

instance HasCField.HasCField River_libinput_device_v1_listener "tap_current" where

  type CFieldType River_libinput_device_v1_listener "tap_current" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 56

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "tap_current" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"tap_current")

instance HasCField.HasCField River_libinput_device_v1_listener "tap_button_map_default" where

  type CFieldType River_libinput_device_v1_listener "tap_button_map_default" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 64

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "tap_button_map_default" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"tap_button_map_default")

instance HasCField.HasCField River_libinput_device_v1_listener "tap_button_map_current" where

  type CFieldType River_libinput_device_v1_listener "tap_button_map_current" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 72

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "tap_button_map_current" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"tap_button_map_current")

instance HasCField.HasCField River_libinput_device_v1_listener "drag_default" where

  type CFieldType River_libinput_device_v1_listener "drag_default" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 80

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "drag_default" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"drag_default")

instance HasCField.HasCField River_libinput_device_v1_listener "drag_current" where

  type CFieldType River_libinput_device_v1_listener "drag_current" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 88

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "drag_current" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"drag_current")

instance HasCField.HasCField River_libinput_device_v1_listener "drag_lock_default" where

  type CFieldType River_libinput_device_v1_listener "drag_lock_default" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 96

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "drag_lock_default" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"drag_lock_default")

instance HasCField.HasCField River_libinput_device_v1_listener "drag_lock_current" where

  type CFieldType River_libinput_device_v1_listener "drag_lock_current" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 104

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "drag_lock_current" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"drag_lock_current")

instance HasCField.HasCField River_libinput_device_v1_listener "three_finger_drag_support" where

  type CFieldType River_libinput_device_v1_listener "three_finger_drag_support" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 112

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "three_finger_drag_support" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"three_finger_drag_support")

instance HasCField.HasCField River_libinput_device_v1_listener "three_finger_drag_default" where

  type CFieldType River_libinput_device_v1_listener "three_finger_drag_default" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 120

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "three_finger_drag_default" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"three_finger_drag_default")

instance HasCField.HasCField River_libinput_device_v1_listener "three_finger_drag_current" where

  type CFieldType River_libinput_device_v1_listener "three_finger_drag_current" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 128

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "three_finger_drag_current" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"three_finger_drag_current")

instance HasCField.HasCField River_libinput_device_v1_listener "calibration_matrix_support" where

  type CFieldType River_libinput_device_v1_listener "calibration_matrix_support" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 136

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "calibration_matrix_support" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"calibration_matrix_support")

instance HasCField.HasCField River_libinput_device_v1_listener "calibration_matrix_default" where

  type CFieldType River_libinput_device_v1_listener "calibration_matrix_default" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Generated.Wayland.Util.WlArray) -> IO ())

  offset# = \_ -> \_ -> 144

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Generated.Wayland.Util.WlArray) -> IO ()))
         ) => RIP.HasField "calibration_matrix_default" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"calibration_matrix_default")

instance HasCField.HasCField River_libinput_device_v1_listener "calibration_matrix_current" where

  type CFieldType River_libinput_device_v1_listener "calibration_matrix_current" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Generated.Wayland.Util.WlArray) -> IO ())

  offset# = \_ -> \_ -> 152

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Generated.Wayland.Util.WlArray) -> IO ()))
         ) => RIP.HasField "calibration_matrix_current" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"calibration_matrix_current")

instance HasCField.HasCField River_libinput_device_v1_listener "accel_profiles_support" where

  type CFieldType River_libinput_device_v1_listener "accel_profiles_support" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 160

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "accel_profiles_support" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"accel_profiles_support")

instance HasCField.HasCField River_libinput_device_v1_listener "accel_profile_default" where

  type CFieldType River_libinput_device_v1_listener "accel_profile_default" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 168

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "accel_profile_default" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"accel_profile_default")

instance HasCField.HasCField River_libinput_device_v1_listener "accel_profile_current" where

  type CFieldType River_libinput_device_v1_listener "accel_profile_current" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 176

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "accel_profile_current" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"accel_profile_current")

instance HasCField.HasCField River_libinput_device_v1_listener "accel_speed_default" where

  type CFieldType River_libinput_device_v1_listener "accel_speed_default" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Generated.Wayland.Util.WlArray) -> IO ())

  offset# = \_ -> \_ -> 184

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Generated.Wayland.Util.WlArray) -> IO ()))
         ) => RIP.HasField "accel_speed_default" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"accel_speed_default")

instance HasCField.HasCField River_libinput_device_v1_listener "accel_speed_current" where

  type CFieldType River_libinput_device_v1_listener "accel_speed_current" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Generated.Wayland.Util.WlArray) -> IO ())

  offset# = \_ -> \_ -> 192

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Generated.Wayland.Util.WlArray) -> IO ()))
         ) => RIP.HasField "accel_speed_current" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"accel_speed_current")

instance HasCField.HasCField River_libinput_device_v1_listener "natural_scroll_support" where

  type CFieldType River_libinput_device_v1_listener "natural_scroll_support" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 200

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "natural_scroll_support" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"natural_scroll_support")

instance HasCField.HasCField River_libinput_device_v1_listener "natural_scroll_default" where

  type CFieldType River_libinput_device_v1_listener "natural_scroll_default" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 208

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "natural_scroll_default" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"natural_scroll_default")

instance HasCField.HasCField River_libinput_device_v1_listener "natural_scroll_current" where

  type CFieldType River_libinput_device_v1_listener "natural_scroll_current" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 216

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "natural_scroll_current" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"natural_scroll_current")

instance HasCField.HasCField River_libinput_device_v1_listener "left_handed_support" where

  type CFieldType River_libinput_device_v1_listener "left_handed_support" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 224

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "left_handed_support" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"left_handed_support")

instance HasCField.HasCField River_libinput_device_v1_listener "left_handed_default" where

  type CFieldType River_libinput_device_v1_listener "left_handed_default" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 232

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "left_handed_default" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"left_handed_default")

instance HasCField.HasCField River_libinput_device_v1_listener "left_handed_current" where

  type CFieldType River_libinput_device_v1_listener "left_handed_current" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 240

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "left_handed_current" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"left_handed_current")

instance HasCField.HasCField River_libinput_device_v1_listener "click_method_support" where

  type CFieldType River_libinput_device_v1_listener "click_method_support" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 248

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "click_method_support" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"click_method_support")

instance HasCField.HasCField River_libinput_device_v1_listener "click_method_default" where

  type CFieldType River_libinput_device_v1_listener "click_method_default" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 256

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "click_method_default" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"click_method_default")

instance HasCField.HasCField River_libinput_device_v1_listener "click_method_current" where

  type CFieldType River_libinput_device_v1_listener "click_method_current" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 264

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "click_method_current" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"click_method_current")

instance HasCField.HasCField River_libinput_device_v1_listener "clickfinger_button_map_default" where

  type CFieldType River_libinput_device_v1_listener "clickfinger_button_map_default" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 272

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "clickfinger_button_map_default" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"clickfinger_button_map_default")

instance HasCField.HasCField River_libinput_device_v1_listener "clickfinger_button_map_current" where

  type CFieldType River_libinput_device_v1_listener "clickfinger_button_map_current" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 280

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "clickfinger_button_map_current" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"clickfinger_button_map_current")

instance HasCField.HasCField River_libinput_device_v1_listener "middle_emulation_support" where

  type CFieldType River_libinput_device_v1_listener "middle_emulation_support" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 288

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "middle_emulation_support" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"middle_emulation_support")

instance HasCField.HasCField River_libinput_device_v1_listener "middle_emulation_default" where

  type CFieldType River_libinput_device_v1_listener "middle_emulation_default" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 296

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "middle_emulation_default" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"middle_emulation_default")

instance HasCField.HasCField River_libinput_device_v1_listener "middle_emulation_current" where

  type CFieldType River_libinput_device_v1_listener "middle_emulation_current" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 304

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "middle_emulation_current" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"middle_emulation_current")

instance HasCField.HasCField River_libinput_device_v1_listener "scroll_method_support" where

  type CFieldType River_libinput_device_v1_listener "scroll_method_support" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 312

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "scroll_method_support" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"scroll_method_support")

instance HasCField.HasCField River_libinput_device_v1_listener "scroll_method_default" where

  type CFieldType River_libinput_device_v1_listener "scroll_method_default" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 320

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "scroll_method_default" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"scroll_method_default")

instance HasCField.HasCField River_libinput_device_v1_listener "scroll_method_current" where

  type CFieldType River_libinput_device_v1_listener "scroll_method_current" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 328

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "scroll_method_current" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"scroll_method_current")

instance HasCField.HasCField River_libinput_device_v1_listener "scroll_button_default" where

  type CFieldType River_libinput_device_v1_listener "scroll_button_default" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 336

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "scroll_button_default" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"scroll_button_default")

instance HasCField.HasCField River_libinput_device_v1_listener "scroll_button_current" where

  type CFieldType River_libinput_device_v1_listener "scroll_button_current" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 344

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "scroll_button_current" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"scroll_button_current")

instance HasCField.HasCField River_libinput_device_v1_listener "scroll_button_lock_default" where

  type CFieldType River_libinput_device_v1_listener "scroll_button_lock_default" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 352

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "scroll_button_lock_default" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"scroll_button_lock_default")

instance HasCField.HasCField River_libinput_device_v1_listener "scroll_button_lock_current" where

  type CFieldType River_libinput_device_v1_listener "scroll_button_lock_current" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 360

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "scroll_button_lock_current" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"scroll_button_lock_current")

instance HasCField.HasCField River_libinput_device_v1_listener "dwt_support" where

  type CFieldType River_libinput_device_v1_listener "dwt_support" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 368

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "dwt_support" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"dwt_support")

instance HasCField.HasCField River_libinput_device_v1_listener "dwt_default" where

  type CFieldType River_libinput_device_v1_listener "dwt_default" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 376

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "dwt_default" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"dwt_default")

instance HasCField.HasCField River_libinput_device_v1_listener "dwt_current" where

  type CFieldType River_libinput_device_v1_listener "dwt_current" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 384

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "dwt_current" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"dwt_current")

instance HasCField.HasCField River_libinput_device_v1_listener "dwtp_support" where

  type CFieldType River_libinput_device_v1_listener "dwtp_support" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 392

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "dwtp_support" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"dwtp_support")

instance HasCField.HasCField River_libinput_device_v1_listener "dwtp_default" where

  type CFieldType River_libinput_device_v1_listener "dwtp_default" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 400

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "dwtp_default" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"dwtp_default")

instance HasCField.HasCField River_libinput_device_v1_listener "dwtp_current" where

  type CFieldType River_libinput_device_v1_listener "dwtp_current" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 408

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "dwtp_current" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"dwtp_current")

instance HasCField.HasCField River_libinput_device_v1_listener "rotation_support" where

  type CFieldType River_libinput_device_v1_listener "rotation_support" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 416

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "rotation_support" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"rotation_support")

instance HasCField.HasCField River_libinput_device_v1_listener "rotation_default" where

  type CFieldType River_libinput_device_v1_listener "rotation_default" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 424

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "rotation_default" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"rotation_default")

instance HasCField.HasCField River_libinput_device_v1_listener "rotation_current" where

  type CFieldType River_libinput_device_v1_listener "rotation_current" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 432

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "rotation_current" (RIP.Ptr River_libinput_device_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"rotation_current")

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_DESTROY@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 980:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_DESTROY :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_SEND_EVENTS@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 981:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_SEND_EVENTS :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_SEND_EVENTS =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_TAP@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 982:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_TAP :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_TAP = (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_TAP_BUTTON_MAP@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 983:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_TAP_BUTTON_MAP :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_TAP_BUTTON_MAP =
  (3 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_DRAG@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 984:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_DRAG :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_DRAG = (4 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_DRAG_LOCK@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 985:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_DRAG_LOCK :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_DRAG_LOCK =
  (5 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_THREE_FINGER_DRAG@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 986:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_THREE_FINGER_DRAG :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_THREE_FINGER_DRAG =
  (6 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_CALIBRATION_MATRIX@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 987:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_CALIBRATION_MATRIX :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_CALIBRATION_MATRIX =
  (7 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_ACCEL_PROFILE@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 988:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_ACCEL_PROFILE :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_ACCEL_PROFILE =
  (8 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_ACCEL_SPEED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 989:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_ACCEL_SPEED :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_ACCEL_SPEED =
  (9 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_APPLY_ACCEL_CONFIG@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 990:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_APPLY_ACCEL_CONFIG :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_APPLY_ACCEL_CONFIG =
  (10 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_NATURAL_SCROLL@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 991:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_NATURAL_SCROLL :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_NATURAL_SCROLL =
  (11 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_LEFT_HANDED@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 992:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_LEFT_HANDED :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_LEFT_HANDED =
  (12 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_CLICK_METHOD@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 993:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_CLICK_METHOD :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_CLICK_METHOD =
  (13 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_CLICKFINGER_BUTTON_MAP@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 994:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_CLICKFINGER_BUTTON_MAP :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_CLICKFINGER_BUTTON_MAP =
  (14 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_MIDDLE_EMULATION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 995:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_MIDDLE_EMULATION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_MIDDLE_EMULATION =
  (15 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_METHOD@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 996:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_METHOD :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_METHOD =
  (16 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_BUTTON@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 997:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_BUTTON :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_BUTTON =
  (17 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_BUTTON_LOCK@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 998:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_BUTTON_LOCK :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_BUTTON_LOCK =
  (18 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_DWT@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 999:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_DWT :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_DWT = (19 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_DWTP@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1000:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_DWTP :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_DWTP = (20 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_ROTATION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1001:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_ROTATION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_ROTATION =
  (21 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_REMOVED_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1006:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_REMOVED_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_REMOVED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_INPUT_DEVICE_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1010:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_INPUT_DEVICE_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_INPUT_DEVICE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_SUPPORT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1014:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_SUPPORT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_SUPPORT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_DEFAULT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1018:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_DEFAULT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_DEFAULT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_CURRENT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1022:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_CURRENT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SEND_EVENTS_CURRENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_TAP_SUPPORT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1026:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_TAP_SUPPORT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_TAP_SUPPORT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_TAP_DEFAULT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1030:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_TAP_DEFAULT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_TAP_DEFAULT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_TAP_CURRENT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1034:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_TAP_CURRENT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_TAP_CURRENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_TAP_BUTTON_MAP_DEFAULT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1038:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_TAP_BUTTON_MAP_DEFAULT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_TAP_BUTTON_MAP_DEFAULT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_TAP_BUTTON_MAP_CURRENT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1042:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_TAP_BUTTON_MAP_CURRENT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_TAP_BUTTON_MAP_CURRENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_DRAG_DEFAULT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1046:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_DRAG_DEFAULT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_DRAG_DEFAULT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_DRAG_CURRENT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1050:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_DRAG_CURRENT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_DRAG_CURRENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_DEFAULT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1054:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_DEFAULT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_DEFAULT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_CURRENT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1058:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_CURRENT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_DRAG_LOCK_CURRENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_SUPPORT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1062:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_SUPPORT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_SUPPORT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_DEFAULT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1066:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_DEFAULT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_DEFAULT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_CURRENT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1070:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_CURRENT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_THREE_FINGER_DRAG_CURRENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_CALIBRATION_MATRIX_SUPPORT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1074:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_CALIBRATION_MATRIX_SUPPORT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_CALIBRATION_MATRIX_SUPPORT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_CALIBRATION_MATRIX_DEFAULT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1078:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_CALIBRATION_MATRIX_DEFAULT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_CALIBRATION_MATRIX_DEFAULT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_CALIBRATION_MATRIX_CURRENT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1082:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_CALIBRATION_MATRIX_CURRENT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_CALIBRATION_MATRIX_CURRENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_SUPPORT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1086:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_SUPPORT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILES_SUPPORT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_DEFAULT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1090:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_DEFAULT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_DEFAULT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_CURRENT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1094:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_CURRENT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_ACCEL_PROFILE_CURRENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_ACCEL_SPEED_DEFAULT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1098:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_ACCEL_SPEED_DEFAULT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_ACCEL_SPEED_DEFAULT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_ACCEL_SPEED_CURRENT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1102:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_ACCEL_SPEED_CURRENT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_ACCEL_SPEED_CURRENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_SUPPORT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1106:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_SUPPORT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_SUPPORT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_DEFAULT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1110:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_DEFAULT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_DEFAULT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_CURRENT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1114:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_CURRENT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_NATURAL_SCROLL_CURRENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_SUPPORT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1118:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_SUPPORT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_SUPPORT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_DEFAULT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1122:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_DEFAULT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_DEFAULT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_CURRENT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1126:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_CURRENT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_LEFT_HANDED_CURRENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_SUPPORT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1130:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_SUPPORT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_SUPPORT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_DEFAULT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1134:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_DEFAULT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_DEFAULT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_CURRENT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1138:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_CURRENT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_CLICK_METHOD_CURRENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_CLICKFINGER_BUTTON_MAP_DEFAULT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1142:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_CLICKFINGER_BUTTON_MAP_DEFAULT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_CLICKFINGER_BUTTON_MAP_DEFAULT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_CLICKFINGER_BUTTON_MAP_CURRENT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1146:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_CLICKFINGER_BUTTON_MAP_CURRENT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_CLICKFINGER_BUTTON_MAP_CURRENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_SUPPORT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1150:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_SUPPORT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_SUPPORT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_DEFAULT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1154:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_DEFAULT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_DEFAULT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_CURRENT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1158:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_CURRENT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_MIDDLE_EMULATION_CURRENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_SUPPORT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1162:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_SUPPORT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_SUPPORT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_DEFAULT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1166:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_DEFAULT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_DEFAULT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_CURRENT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1170:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_CURRENT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SCROLL_METHOD_CURRENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_DEFAULT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1174:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_DEFAULT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_DEFAULT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_CURRENT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1178:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_CURRENT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_CURRENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_LOCK_DEFAULT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1182:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_LOCK_DEFAULT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_LOCK_DEFAULT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_LOCK_CURRENT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1186:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_LOCK_CURRENT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SCROLL_BUTTON_LOCK_CURRENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_DWT_SUPPORT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1190:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_DWT_SUPPORT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_DWT_SUPPORT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_DWT_DEFAULT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1194:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_DWT_DEFAULT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_DWT_DEFAULT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_DWT_CURRENT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1198:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_DWT_CURRENT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_DWT_CURRENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_DWTP_SUPPORT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1202:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_DWTP_SUPPORT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_DWTP_SUPPORT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_DWTP_DEFAULT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1206:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_DWTP_DEFAULT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_DWTP_DEFAULT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_DWTP_CURRENT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1210:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_DWTP_CURRENT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_DWTP_CURRENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_ROTATION_SUPPORT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1214:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_ROTATION_SUPPORT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_ROTATION_SUPPORT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_ROTATION_DEFAULT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1218:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_ROTATION_DEFAULT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_ROTATION_DEFAULT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_ROTATION_CURRENT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1222:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_ROTATION_CURRENT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_ROTATION_CURRENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1227:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_SEND_EVENTS_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1231:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_SEND_EVENTS_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_SEND_EVENTS_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_TAP_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1235:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_TAP_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_TAP_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_TAP_BUTTON_MAP_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1239:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_TAP_BUTTON_MAP_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_TAP_BUTTON_MAP_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_DRAG_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1243:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_DRAG_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_DRAG_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_DRAG_LOCK_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1247:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_DRAG_LOCK_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_DRAG_LOCK_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_THREE_FINGER_DRAG_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1251:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_THREE_FINGER_DRAG_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_THREE_FINGER_DRAG_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_CALIBRATION_MATRIX_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1255:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_CALIBRATION_MATRIX_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_CALIBRATION_MATRIX_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_ACCEL_PROFILE_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1259:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_ACCEL_PROFILE_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_ACCEL_PROFILE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_ACCEL_SPEED_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1263:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_ACCEL_SPEED_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_ACCEL_SPEED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_APPLY_ACCEL_CONFIG_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1267:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_APPLY_ACCEL_CONFIG_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_APPLY_ACCEL_CONFIG_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_NATURAL_SCROLL_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1271:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_NATURAL_SCROLL_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_NATURAL_SCROLL_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_LEFT_HANDED_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1275:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_LEFT_HANDED_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_LEFT_HANDED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_CLICK_METHOD_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1279:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_CLICK_METHOD_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_CLICK_METHOD_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_CLICKFINGER_BUTTON_MAP_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1283:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_CLICKFINGER_BUTTON_MAP_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_CLICKFINGER_BUTTON_MAP_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_MIDDLE_EMULATION_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1287:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_MIDDLE_EMULATION_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_MIDDLE_EMULATION_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_METHOD_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1291:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_METHOD_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_METHOD_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_BUTTON_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1295:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_BUTTON_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_BUTTON_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_BUTTON_LOCK_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1299:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_BUTTON_LOCK_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_SCROLL_BUTTON_LOCK_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_DWT_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1303:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_DWT_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_DWT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_DWTP_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1307:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_DWTP_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_DWTP_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_DEVICE_V1_SET_ROTATION_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1311:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_DEVICE_V1_SET_ROTATION_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_DEVICE_V1_SET_ROTATION_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @enum river_libinput_accel_config_v1_error@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1697:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_accel_config_v1_error = River_libinput_accel_config_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_accel_config_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_accel_config_v1_error where

  readRaw =
    \ptr0 ->
          pure River_libinput_accel_config_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_accel_config_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_accel_config_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_accel_config_v1_error instance RIP.Storable River_libinput_accel_config_v1_error

deriving via RIP.CUInt instance RIP.Prim River_libinput_accel_config_v1_error

instance CEnum.CEnum River_libinput_accel_config_v1_error where

  type CEnumZ River_libinput_accel_config_v1_error =
    RIP.CUInt

  toCEnum = River_libinput_accel_config_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(0, RIP.singleton "RIVER_LIBINPUT_ACCEL_CONFIG_V1_ERROR_INVALID_ARG")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_accel_config_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_accel_config_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_libinput_accel_config_v1_error where

  minDeclaredValue =
    RIVER_LIBINPUT_ACCEL_CONFIG_V1_ERROR_INVALID_ARG

  maxDeclaredValue =
    RIVER_LIBINPUT_ACCEL_CONFIG_V1_ERROR_INVALID_ARG

instance Show River_libinput_accel_config_v1_error where

  showsPrec = CEnum.shows

instance Read River_libinput_accel_config_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_accel_config_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_accel_config_v1_error "unwrap" where

  type CFieldType River_libinput_accel_config_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| invalid enum value or similar

__C declaration:__ @RIVER_LIBINPUT_ACCEL_CONFIG_V1_ERROR_INVALID_ARG@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1701:2@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_ACCEL_CONFIG_V1_ERROR_INVALID_ARG :: River_libinput_accel_config_v1_error
pattern RIVER_LIBINPUT_ACCEL_CONFIG_V1_ERROR_INVALID_ARG = River_libinput_accel_config_v1_error 0

{-| __C declaration:__ @enum river_libinput_accel_config_v1_accel_type@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1707:6@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
newtype River_libinput_accel_config_v1_accel_type = River_libinput_accel_config_v1_accel_type
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_libinput_accel_config_v1_accel_type where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_libinput_accel_config_v1_accel_type where

  readRaw =
    \ptr0 ->
          pure River_libinput_accel_config_v1_accel_type
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_libinput_accel_config_v1_accel_type where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_accel_config_v1_accel_type unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_libinput_accel_config_v1_accel_type instance RIP.Storable River_libinput_accel_config_v1_accel_type

deriving via RIP.CUInt instance RIP.Prim River_libinput_accel_config_v1_accel_type

instance CEnum.CEnum River_libinput_accel_config_v1_accel_type where

  type CEnumZ River_libinput_accel_config_v1_accel_type =
    RIP.CUInt

  toCEnum = River_libinput_accel_config_v1_accel_type

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_LIBINPUT_ACCEL_CONFIG_V1_ACCEL_TYPE_FALLBACK")
                                   , (1, RIP.singleton "RIVER_LIBINPUT_ACCEL_CONFIG_V1_ACCEL_TYPE_MOTION")
                                   , (2, RIP.singleton "RIVER_LIBINPUT_ACCEL_CONFIG_V1_ACCEL_TYPE_SCROLL")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_libinput_accel_config_v1_accel_type"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_libinput_accel_config_v1_accel_type"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_libinput_accel_config_v1_accel_type where

  minDeclaredValue =
    RIVER_LIBINPUT_ACCEL_CONFIG_V1_ACCEL_TYPE_FALLBACK

  maxDeclaredValue =
    RIVER_LIBINPUT_ACCEL_CONFIG_V1_ACCEL_TYPE_SCROLL

instance Show River_libinput_accel_config_v1_accel_type where

  showsPrec = CEnum.shows

instance Read River_libinput_accel_config_v1_accel_type where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_libinput_accel_config_v1_accel_type) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_libinput_accel_config_v1_accel_type "unwrap" where

  type CFieldType River_libinput_accel_config_v1_accel_type "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_LIBINPUT_ACCEL_CONFIG_V1_ACCEL_TYPE_FALLBACK@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1708:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_ACCEL_CONFIG_V1_ACCEL_TYPE_FALLBACK :: River_libinput_accel_config_v1_accel_type
pattern RIVER_LIBINPUT_ACCEL_CONFIG_V1_ACCEL_TYPE_FALLBACK = River_libinput_accel_config_v1_accel_type 0

{-| __C declaration:__ @RIVER_LIBINPUT_ACCEL_CONFIG_V1_ACCEL_TYPE_MOTION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1709:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_ACCEL_CONFIG_V1_ACCEL_TYPE_MOTION :: River_libinput_accel_config_v1_accel_type
pattern RIVER_LIBINPUT_ACCEL_CONFIG_V1_ACCEL_TYPE_MOTION = River_libinput_accel_config_v1_accel_type 1

{-| __C declaration:__ @RIVER_LIBINPUT_ACCEL_CONFIG_V1_ACCEL_TYPE_SCROLL@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1710:2@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
pattern RIVER_LIBINPUT_ACCEL_CONFIG_V1_ACCEL_TYPE_SCROLL :: River_libinput_accel_config_v1_accel_type
pattern RIVER_LIBINPUT_ACCEL_CONFIG_V1_ACCEL_TYPE_SCROLL = River_libinput_accel_config_v1_accel_type 2

{-| __C declaration:__ @macro RIVER_LIBINPUT_ACCEL_CONFIG_V1_DESTROY@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1714:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_ACCEL_CONFIG_V1_DESTROY :: RIP.CInt
rIVER_LIBINPUT_ACCEL_CONFIG_V1_DESTROY =
  (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_ACCEL_CONFIG_V1_SET_POINTS@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1715:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_ACCEL_CONFIG_V1_SET_POINTS :: RIP.CInt
rIVER_LIBINPUT_ACCEL_CONFIG_V1_SET_POINTS =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_ACCEL_CONFIG_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1721:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_ACCEL_CONFIG_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_ACCEL_CONFIG_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_ACCEL_CONFIG_V1_SET_POINTS_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1725:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_ACCEL_CONFIG_V1_SET_POINTS_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_ACCEL_CONFIG_V1_SET_POINTS_SINCE_VERSION =
  (1 :: RIP.CInt)

{-|

  > iface_river_libinput_result_v1

  > river_libinput_result_v1_listener

__C declaration:__ @struct river_libinput_result_v1_listener@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1781:8@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
data River_libinput_result_v1_listener = River_libinput_result_v1_listener
  { success :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_result_v1) -> IO ())
    {- ^ config success

       The configuration was successfully applied to the device.

    __C declaration:__ @success@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1787:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , unsupported :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_result_v1) -> IO ())
    {- ^ config unsupported

       The configuration is unsupported by the device and was ignored.

    __C declaration:__ @unsupported@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1795:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  , invalid :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_result_v1) -> IO ())
    {- ^ config invalid

       The configuration is invalid and was ignored.

    __C declaration:__ @invalid@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1802:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize River_libinput_result_v1_listener where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw River_libinput_result_v1_listener where

  readRaw =
    \ptr0 ->
          pure River_libinput_result_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"success") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"unsupported") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"invalid") ptr0

instance Marshal.WriteRaw River_libinput_result_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_libinput_result_v1_listener success2 unsupported3 invalid4 ->
               HasCField.writeRaw (RIP.Proxy @"success") ptr0 success2
            >> HasCField.writeRaw (RIP.Proxy @"unsupported") ptr0 unsupported3
            >> HasCField.writeRaw (RIP.Proxy @"invalid") ptr0 invalid4

deriving via Marshal.EquivStorable River_libinput_result_v1_listener instance RIP.Storable River_libinput_result_v1_listener

instance HasCField.HasCField River_libinput_result_v1_listener "success" where

  type CFieldType River_libinput_result_v1_listener "success" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_result_v1) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_result_v1) -> IO ()))
         ) => RIP.HasField "success" (RIP.Ptr River_libinput_result_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"success")

instance HasCField.HasCField River_libinput_result_v1_listener "unsupported" where

  type CFieldType River_libinput_result_v1_listener "unsupported" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_result_v1) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_result_v1) -> IO ()))
         ) => RIP.HasField "unsupported" (RIP.Ptr River_libinput_result_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"unsupported")

instance HasCField.HasCField River_libinput_result_v1_listener "invalid" where

  type CFieldType River_libinput_result_v1_listener "invalid" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_result_v1) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_result_v1) -> IO ()))
         ) => RIP.HasField "invalid" (RIP.Ptr River_libinput_result_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"invalid")

{-| __C declaration:__ @macro RIVER_LIBINPUT_RESULT_V1_SUCCESS_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1820:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_RESULT_V1_SUCCESS_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_RESULT_V1_SUCCESS_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_RESULT_V1_UNSUPPORTED_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1824:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_RESULT_V1_UNSUPPORTED_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_RESULT_V1_UNSUPPORTED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LIBINPUT_RESULT_V1_INVALID_SINCE_VERSION@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1828:9@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
rIVER_LIBINPUT_RESULT_V1_INVALID_SINCE_VERSION :: RIP.CInt
rIVER_LIBINPUT_RESULT_V1_INVALID_SINCE_VERSION =
  (1 :: RIP.CInt)

foreign import ccall safe "wrapper" hs_bindgen_7355a54ca7140778_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> IO ())@
hs_bindgen_7355a54ca7140778 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> IO ()))
hs_bindgen_7355a54ca7140778 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_7355a54ca7140778_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_0666cd176c983c6b_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> IO ())@
hs_bindgen_0666cd176c983c6b ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> IO ()
hs_bindgen_0666cd176c983c6b =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_0666cd176c983c6b_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> IO ()) where

  toFunPtr = hs_bindgen_7355a54ca7140778

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_0666cd176c983c6b

foreign import ccall safe "wrapper" hs_bindgen_8866a871eb076178_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> (RIP.Ptr River_libinput_device_v1) -> IO ())@
hs_bindgen_8866a871eb076178 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> (RIP.Ptr River_libinput_device_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> (RIP.Ptr River_libinput_device_v1) -> IO ()))
hs_bindgen_8866a871eb076178 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_8866a871eb076178_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_73ce8ab7c62f314c_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> (RIP.Ptr River_libinput_device_v1) -> IO ())@
hs_bindgen_73ce8ab7c62f314c ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> (RIP.Ptr River_libinput_device_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> (RIP.Ptr River_libinput_device_v1) -> IO ()
hs_bindgen_73ce8ab7c62f314c =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_73ce8ab7c62f314c_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> (RIP.Ptr River_libinput_device_v1) -> IO ()) where

  toFunPtr = hs_bindgen_8866a871eb076178

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_config_v1) -> (RIP.Ptr River_libinput_device_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_73ce8ab7c62f314c

foreign import ccall safe "wrapper" hs_bindgen_da0dd34a11d523d2_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> IO ())@
hs_bindgen_da0dd34a11d523d2 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> IO ()))
hs_bindgen_da0dd34a11d523d2 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_da0dd34a11d523d2_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_6cf8ab7cabe77448_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> IO ())@
hs_bindgen_6cf8ab7cabe77448 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> IO ()
hs_bindgen_6cf8ab7cabe77448 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_6cf8ab7cabe77448_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> IO ()) where

  toFunPtr = hs_bindgen_da0dd34a11d523d2

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_6cf8ab7cabe77448

foreign import ccall safe "wrapper" hs_bindgen_dab2560949d50cf3_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr River_input_device_v1) -> IO ())@
hs_bindgen_dab2560949d50cf3 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr River_input_device_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr River_input_device_v1) -> IO ()))
hs_bindgen_dab2560949d50cf3 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_dab2560949d50cf3_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_0b10719c94e49123_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr River_input_device_v1) -> IO ())@
hs_bindgen_0b10719c94e49123 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr River_input_device_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr River_input_device_v1) -> IO ()
hs_bindgen_0b10719c94e49123 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_0b10719c94e49123_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr River_input_device_v1) -> IO ()) where

  toFunPtr = hs_bindgen_dab2560949d50cf3

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr River_input_device_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_0b10719c94e49123

foreign import ccall safe "wrapper" hs_bindgen_3d84129d231a978d_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Generated.Wayland.Util.WlArray) -> IO ())@
hs_bindgen_3d84129d231a978d ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Generated.Wayland.Util.WlArray) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Generated.Wayland.Util.WlArray) -> IO ()))
hs_bindgen_3d84129d231a978d =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_3d84129d231a978d_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_6dfde0d5a52b7d81_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Generated.Wayland.Util.WlArray) -> IO ())@
hs_bindgen_6dfde0d5a52b7d81 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Generated.Wayland.Util.WlArray) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Generated.Wayland.Util.WlArray) -> IO ()
hs_bindgen_6dfde0d5a52b7d81 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_6dfde0d5a52b7d81_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Generated.Wayland.Util.WlArray) -> IO ()) where

  toFunPtr = hs_bindgen_3d84129d231a978d

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Generated.Wayland.Util.WlArray) -> IO ()) where

  fromFunPtr = hs_bindgen_6dfde0d5a52b7d81

foreign import ccall safe "wrapper" hs_bindgen_18686de1898fdad6_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_18686de1898fdad6 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_18686de1898fdad6 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_18686de1898fdad6_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_d790e20cecd6ecde_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_d790e20cecd6ecde ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_d790e20cecd6ecde =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_d790e20cecd6ecde_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_18686de1898fdad6

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_d790e20cecd6ecde

foreign import ccall safe "wrapper" hs_bindgen_4cd1637b7baf0b00_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_4cd1637b7baf0b00 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_4cd1637b7baf0b00 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_4cd1637b7baf0b00_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_c1883285347d2068_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_c1883285347d2068 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_c1883285347d2068 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_c1883285347d2068_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_4cd1637b7baf0b00

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_c1883285347d2068

foreign import ccall safe "wrapper" hs_bindgen_462acd92a87f897c_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_result_v1) -> IO ())@
hs_bindgen_462acd92a87f897c ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_result_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_result_v1) -> IO ()))
hs_bindgen_462acd92a87f897c =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_462acd92a87f897c_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_5431b650fe4979d9_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_result_v1) -> IO ())@
hs_bindgen_5431b650fe4979d9 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_result_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_result_v1) -> IO ()
hs_bindgen_5431b650fe4979d9 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_5431b650fe4979d9_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_result_v1) -> IO ()) where

  toFunPtr = hs_bindgen_462acd92a87f897c

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_libinput_result_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_5431b650fe4979d9
