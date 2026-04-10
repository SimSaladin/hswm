{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE PatternSynonyms       #-}
{-# LANGUAGE TypeFamilies #-}
-- |
-- Module      : Wayland.Client
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
-- This module re-exports the most important types, the global interface constants,
-- and the @safe@ versions of generated API request functions.
--
-- The @unsafe@ and @FunPtr@ functions can be found in their respective modules.
--
--    * "Generated.Wayland.Client.Safe",
--      "Generated.Wayland.Util.Safe"
--
--    * "Generated.Wayland.Client.Unsafe",
--      "Generated.Wayland.Util.Unsafe"
--
--    * "Generated.Wayland.Client.FunPtr",
--      "Generated.Wayland.Util.FunPtr"
--
-- This module also exports all the interface globals for binding registry listeners.
-- See also: "Wayland.Client.Interface".
--
-- Index of most important object types:
--
--    * 'Wl_event_queue'  ---  'wl_event_queue_destroy', 'wl_event_queue_get_name'
--
--    * 'Wl_proxy'  ---  'wl_proxy_marshal_array_flags'
--
--    * 'Wl_display'  ---  'wl_display_connect'
--
--    * 'Wl_registry'  ---  'wl_registry_add_listener'
--
--    * 'Wl_buffer'  ---  'wl_buffer_add_listener'
--
--    * 'Wl_callback'  ---  'wl_callback_add_listener'
--
--    * 'Wl_compositor'  ---  'wl_compositor_set_user_data'
--
--    * 'Wl_data_device'  ---  'wl_data_device_add_listener'
--
--    * 'Wl_data_device_manager'  ---  'wl_data_device_manager_set_user_data'
--
--    * 'Wl_data_offer'  ---  'wl_data_offer_add_listener'
--
--    * 'Wl_data_source'  ---  'wl_data_source_add_listener'
--
--    * 'Wl_fixes'  ---  'wl_fixes_set_user_data'
--
--    * 'Wl_keyboard'  ---  'wl_keyboard_add_listener'
--
--    * 'Wl_output'  ---  'wl_output_add_listener'
--
--    * 'Wl_pointer'  ---  'wl_pointer_add_listener'
--
--    * 'Wl_region'  ---  'wl_region_set_user_data'
--
--    * 'Wl_seat'  ---  'wl_seat_add_listener'
--
--    * 'Wl_shell'  ---  'wl_shell_set_user_data'
--
--    * 'Wl_shell_surface'  ---  'wl_shell_surface_add_listener'
--
--    * 'Wl_shm'  ---  'wl_shm_add_listener'
--
--    * 'Wl_shm_pool'  ---  'wl_shm_pool_set_user_data'
--
--    * 'Wl_subcompositor'  ---  'wl_subcompositor_set_user_data'
--
--    * 'Wl_subsurface'  ---  'wl_subsurface_set_user_data'
--
--    * 'Wl_surface'  ---  'wl_surface_add_listener'
--
--    * 'Wl_touch'  ---  'wl_touch_add_listener'
--
-- There are also the following generic object types (found mostly in the util header,
-- see "Generated.Wayland.Util"):
--
--    * 'Wl_object'
--
--    * 'Wl_message'
--
--    * 'Wl_interface'
--
--    * 'Wl_list'
--
--    * 'Wl_array'
--
--    * 'Wl_fixed_t'
--
--    * 'Wl_argument'
--
------------------------------------------------------------------------------
module Wayland.Client

  ( module Types
  , module Wayland.Client.Objects
  , module Safe

  -- * Constants
  , U.wL_MAX_MESSAGE_SIZE
  , C.wL_MARSHAL_FLAG_DESTROY

  -- * Objects

  , U.Wl_object
  , U.Wl_message
  , U.Wl_interface
  , U.Wl_list
  , U.Wl_array
  , U.Wl_fixed_t
  , U.Wl_argument
  , C.Wl_proxy
  , C.Wl_display
  , C.Wl_event_queue
  , C.Wl_buffer
  , C.Wl_callback
  , C.Wl_compositor
  , C.Wl_data_device
  , C.Wl_data_device_manager
  , C.Wl_data_offer
  , C.Wl_data_source
  , C.Wl_fixes
  , C.Wl_keyboard
  , C.Wl_output
  , C.Wl_pointer
  , C.Wl_region
  , C.Wl_registry
  , C.Wl_seat
  , C.Wl_shell
  , C.Wl_shell_surface
  , C.Wl_shm
  , C.Wl_shm_pool
  , C.Wl_subcompositor
  , C.Wl_subsurface
  , C.Wl_surface
  , C.Wl_touch

  -- ** Event listeners

  , C.Wl_display_listener(..)
  , C.Wl_registry_listener(..)
  , C.Wl_callback_listener(..)
  , C.Wl_shm_listener(..)
  , C.Wl_buffer_listener(..)
  , C.Wl_data_offer_listener(..)
  , C.Wl_data_source_listener(..)
  , C.Wl_data_device_listener(..)

   -- | XXX: What's this?
  , U.Wl_dispatcher_func_t(..)

  -- * Data Device Manager

  , C.Wl_data_device_manager_dnd_action(..)
  , pattern C.WL_DATA_DEVICE_MANAGER_DND_ACTION_NONE
  , pattern C.WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY
  , pattern C.WL_DATA_DEVICE_MANAGER_DND_ACTION_MOVE
  , pattern C.WL_DATA_DEVICE_MANAGER_DND_ACTION_ASK

  -- * Shell Surfaces

  , C.Wl_shell_surface_resize(..)
  , pattern C.WL_SHELL_SURFACE_RESIZE_NONE
  , pattern C.WL_SHELL_SURFACE_RESIZE_TOP
  , pattern C.WL_SHELL_SURFACE_RESIZE_BOTTOM
  , pattern C.WL_SHELL_SURFACE_RESIZE_LEFT
  , pattern C.WL_SHELL_SURFACE_RESIZE_TOP_LEFT
  , pattern C.WL_SHELL_SURFACE_RESIZE_BOTTOM_LEFT
  , pattern C.WL_SHELL_SURFACE_RESIZE_RIGHT
  , pattern C.WL_SHELL_SURFACE_RESIZE_TOP_RIGHT
  , pattern C.WL_SHELL_SURFACE_RESIZE_BOTTOM_RIGHT
  , C.Wl_shell_surface_transient(..)
  , pattern C.WL_SHELL_SURFACE_TRANSIENT_INACTIVE
  , C.Wl_shell_surface_fullscreen_method(..)
  , pattern C.WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT
  , pattern C.WL_SHELL_SURFACE_FULLSCREEN_METHOD_SCALE
  , pattern C.WL_SHELL_SURFACE_FULLSCREEN_METHOD_DRIVER
  , pattern C.WL_SHELL_SURFACE_FULLSCREEN_METHOD_FILL
  , C.Wl_shell_surface_listener(..)

  -- * WL Surface

  , C.Wl_surface_error(..)
  , pattern C.WL_SURFACE_ERROR_INVALID_SCALE
  , pattern C.WL_SURFACE_ERROR_INVALID_TRANSFORM
  , pattern C.WL_SURFACE_ERROR_INVALID_SIZE
  , pattern C.WL_SURFACE_ERROR_INVALID_OFFSET
  , pattern C.WL_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT
  , C.Wl_surface_listener(..)

   -- * Wl_Seat

  , C.Wl_seat_capability(..)
  , pattern C.WL_SEAT_CAPABILITY_POINTER
  , pattern C.WL_SEAT_CAPABILITY_KEYBOARD
  , pattern C.WL_SEAT_CAPABILITY_TOUCH
  , C.Wl_seat_error(..)
  , pattern C.WL_SEAT_ERROR_MISSING_CAPABILITY
  , C.Wl_seat_listener(..)

  -- * Pointers

  , C.Wl_pointer_error(..)
  , pattern C.WL_POINTER_ERROR_ROLE
  , C.Wl_pointer_button_state(..)
  , pattern C.WL_POINTER_BUTTON_STATE_RELEASED
  , pattern C.WL_POINTER_BUTTON_STATE_PRESSED
  , C.Wl_pointer_axis(..)
  , pattern C.WL_POINTER_AXIS_VERTICAL_SCROLL
  , pattern C.WL_POINTER_AXIS_HORIZONTAL_SCROLL
  , C.Wl_pointer_axis_source(..)
  , pattern C.WL_POINTER_AXIS_SOURCE_WHEEL
  , pattern C.WL_POINTER_AXIS_SOURCE_FINGER
  , pattern C.WL_POINTER_AXIS_SOURCE_CONTINUOUS
  , pattern C.WL_POINTER_AXIS_SOURCE_WHEEL_TILT
  , C.Wl_pointer_axis_relative_direction(..)
  , pattern C.WL_POINTER_AXIS_RELATIVE_DIRECTION_IDENTICAL
  , pattern C.WL_POINTER_AXIS_RELATIVE_DIRECTION_INVERTED
  , C.Wl_pointer_listener(..)

  -- * Keyboards / Touch

  , C.Wl_keyboard_keymap_format(..)
  , pattern C.WL_KEYBOARD_KEYMAP_FORMAT_NO_KEYMAP
  , pattern C.WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1
  , C.Wl_keyboard_key_state(..)
  , pattern C.WL_KEYBOARD_KEY_STATE_RELEASED
  , pattern C.WL_KEYBOARD_KEY_STATE_PRESSED
  , pattern C.WL_KEYBOARD_KEY_STATE_REPEATED
  , C.Wl_keyboard_listener(..)
  , C.Wl_touch_listener(..)

  -- *  Outputs

  , C.Wl_output_subpixel(..)
  , pattern C.WL_OUTPUT_SUBPIXEL_UNKNOWN
  , pattern C.WL_OUTPUT_SUBPIXEL_NONE
  , pattern C.WL_OUTPUT_SUBPIXEL_HORIZONTAL_RGB
  , pattern C.WL_OUTPUT_SUBPIXEL_HORIZONTAL_BGR
  , pattern C.WL_OUTPUT_SUBPIXEL_VERTICAL_RGB
  , pattern C.WL_OUTPUT_SUBPIXEL_VERTICAL_BGR
  , C.Wl_output_transform(..)
  , pattern C.WL_OUTPUT_TRANSFORM_NORMAL
  , pattern C.WL_OUTPUT_TRANSFORM_90
  , pattern C.WL_OUTPUT_TRANSFORM_180
  , pattern C.WL_OUTPUT_TRANSFORM_270
  , pattern C.WL_OUTPUT_TRANSFORM_FLIPPED
  , pattern C.WL_OUTPUT_TRANSFORM_FLIPPED_90
  , pattern C.WL_OUTPUT_TRANSFORM_FLIPPED_180
  , pattern C.WL_OUTPUT_TRANSFORM_FLIPPED_270
  , C.Wl_output_mode(..)
  , pattern C.WL_OUTPUT_MODE_CURRENT
  , pattern C.WL_OUTPUT_MODE_PREFERRED
  , C.Wl_output_listener(..)

   -- * Subcompositor

  , C.Wl_subcompositor_error(..)
  , pattern C.WL_SUBCOMPOSITOR_ERROR_BAD_SURFACE
  , pattern C.WL_SUBCOMPOSITOR_ERROR_BAD_PARENT

  -- * Subsurface

  , C.Wl_subsurface_error(..)
  , pattern C.WL_SUBSURFACE_ERROR_BAD_SURFACE

  -- * SHM Format

  -- | All "pattern C.WL_SHM_FORMAT_????????"  omitted for brevity.
  -- They are exported from another module if you need them.
  , C.Wl_shm_format(..)

  -- * Errors

  -- ** Display Error

  , C.Wl_display_error(..)
  , pattern C.WL_DISPLAY_ERROR_INVALID_OBJECT
  , pattern C.WL_DISPLAY_ERROR_INVALID_METHOD
  , pattern C.WL_DISPLAY_ERROR_NO_MEMORY
  , pattern C.WL_DISPLAY_ERROR_IMPLEMENTATION

  -- ** Data Offer Error

  , C.Wl_data_offer_error(..)
  , pattern C.WL_DATA_OFFER_ERROR_INVALID_FINISH
  , pattern C.WL_DATA_OFFER_ERROR_INVALID_ACTION_MASK
  , pattern C.WL_DATA_OFFER_ERROR_INVALID_ACTION
  , pattern C.WL_DATA_OFFER_ERROR_INVALID_OFFER

  -- ** SHM Error

  , C.Wl_shm_error(..)
  , pattern C.WL_SHM_ERROR_INVALID_FORMAT
  , pattern C.WL_SHM_ERROR_INVALID_STRIDE
  , pattern C.WL_SHM_ERROR_INVALID_FD

  -- ** Data Source Error

  , C.Wl_data_source_error(..)
  , pattern C.WL_DATA_SOURCE_ERROR_INVALID_ACTION_MASK
  , pattern C.WL_DATA_SOURCE_ERROR_INVALID_SOURCE

  -- ** Shell error

  , C.Wl_shell_error(..)
  , pattern C.WL_SHELL_ERROR_ROLE

  -- ** Data Device Error

  , C.Wl_data_device_error(..)
  , pattern C.WL_DATA_DEVICE_ERROR_ROLE
  , pattern C.WL_DATA_DEVICE_ERROR_USED_SOURCE

  ) where

  -- * Wl_proxy
  --
  -- ** @wl_proxy_marshal_*@
  --
  -- __NOTE:__ some (variadic) marshal variants are not here because @hs-bindgen@
  -- does not do variadic functions:
  --
  -- @
  --    struct wl_proxy * wl_proxy_marshal_flags                (struct wl_proxy *proxy, uint32_t opcode, const struct wl_interface *interface, uint32_t version, uint32_t flags, ...);
  --    void              wl_proxy_marshal                      (struct wl_proxy *p, uint32_t opcode, ...);
  --    struct wl_proxy * wl_proxy_marshal_constructor          (struct wl_proxy *proxy, uint32_t opcode, const struct wl_interface *interface, ...);
  --    struct wl_proxy * wl_proxy_marshal_constructor_versioned(struct wl_proxy *proxy, uint32_t opcode, const struct wl_interface *interface, uint32_t version, ...);
  -- @

import           Wayland.Client.Internal.Types as Types
import           Wayland.Client.Objects

import           Generated.Wayland.Client.Safe as Safe
import           Generated.Wayland.Util.Safe as Safe
import qualified Generated.Wayland.Client as C
import qualified Generated.Wayland.Util as U
