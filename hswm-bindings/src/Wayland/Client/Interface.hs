{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- |
-- Global Wayland interfaces you can bind listeners onto.
--
-- See also 'Generated.Wayland.Client.Global'.
module Wayland.Client.Interface

  -- * Misc. Constants
  ( U.wL_MAX_MESSAGE_SIZE, C.wL_MARSHAL_FLAG_DESTROY

  -- * Wayland Interface

  -- ** Const pointers
  , toConstPtr

  -- TODO

  -- ** Plain values
  , wl_display_interface
  , wl_registry_interface
  , wl_callback_interface
  , wl_compositor_interface
  , wl_shm_pool_interface
  , wl_shm_interface
  , wl_buffer_interface
  , wl_data_offer_interface
  , wl_data_source_interface
  , wl_data_device_interface
  , wl_data_device_manager_interface
  , wl_shell_interface
  , wl_shell_surface_interface
  , wl_surface_interface
  , wl_seat_interface
  , wl_pointer_interface
  , wl_keyboard_interface
  , wl_touch_interface
  , wl_output_interface
  , wl_region_interface
  , wl_subcompositor_interface
  , wl_subsurface_interface
  , wl_fixes_interface

  -- * Object types
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

  -- * Event listeners
  , C.Wl_display_listener(..)
  , C.Wl_registry_listener(..)
  , C.Wl_callback_listener(..)
  , C.Wl_shm_listener(..)
  , C.Wl_buffer_listener(..)
  , C.Wl_data_offer_listener(..)
  , C.Wl_data_source_listener(..)
  , C.Wl_data_device_listener(..)

   -- * What's this?
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
  , C.Wl_shm_format(..)

  -- * Errors

  -- * Display Error
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

  -- , pattern C.WL_SHM_FORMAT_ARGB8888
  -- , pattern C.WL_SHM_FORMAT_XRGB8888
  -- , pattern C.WL_SHM_FORMAT_C8
  -- , pattern C.WL_SHM_FORMAT_RGB332
  -- , pattern C.WL_SHM_FORMAT_BGR233
  -- , pattern C.WL_SHM_FORMAT_XRGB4444
  -- , pattern C.WL_SHM_FORMAT_XBGR4444
  -- , pattern C.WL_SHM_FORMAT_RGBX4444
  -- , pattern C.WL_SHM_FORMAT_BGRX4444
  -- , pattern C.WL_SHM_FORMAT_ARGB4444
  -- , pattern C.WL_SHM_FORMAT_ABGR4444
  -- , pattern C.WL_SHM_FORMAT_RGBA4444
  -- , pattern C.WL_SHM_FORMAT_BGRA4444
  -- , pattern C.WL_SHM_FORMAT_XRGB1555
  -- , pattern C.WL_SHM_FORMAT_XBGR1555
  -- , pattern C.WL_SHM_FORMAT_RGBX5551
  -- , pattern C.WL_SHM_FORMAT_BGRX5551
  -- , pattern C.WL_SHM_FORMAT_ARGB1555
  -- , pattern C.WL_SHM_FORMAT_ABGR1555
  -- , pattern C.WL_SHM_FORMAT_RGBA5551
  -- , pattern C.WL_SHM_FORMAT_BGRA5551
  -- , pattern C.WL_SHM_FORMAT_RGB565
  -- , pattern C.WL_SHM_FORMAT_BGR565
  -- , pattern C.WL_SHM_FORMAT_RGB888
  -- , pattern C.WL_SHM_FORMAT_BGR888
  -- , pattern C.WL_SHM_FORMAT_XBGR8888
  -- , pattern C.WL_SHM_FORMAT_RGBX8888
  -- , pattern C.WL_SHM_FORMAT_BGRX8888
  -- , pattern C.WL_SHM_FORMAT_ABGR8888
  -- , pattern C.WL_SHM_FORMAT_RGBA8888
  -- , pattern C.WL_SHM_FORMAT_BGRA8888
  -- , pattern C.WL_SHM_FORMAT_XRGB2101010
  -- , pattern C.WL_SHM_FORMAT_XBGR2101010
  -- , pattern C.WL_SHM_FORMAT_RGBX1010102
  -- , pattern C.WL_SHM_FORMAT_BGRX1010102
  -- , pattern C.WL_SHM_FORMAT_ARGB2101010
  -- , pattern C.WL_SHM_FORMAT_ABGR2101010
  -- , pattern C.WL_SHM_FORMAT_RGBA1010102
  -- , pattern C.WL_SHM_FORMAT_BGRA1010102
  -- , pattern C.WL_SHM_FORMAT_YUYV
  -- , pattern C.WL_SHM_FORMAT_YVYU
  -- , pattern C.WL_SHM_FORMAT_UYVY
  -- , pattern C.WL_SHM_FORMAT_VYUY
  -- , pattern C.WL_SHM_FORMAT_AYUV
  -- , pattern C.WL_SHM_FORMAT_NV12
  -- , pattern C.WL_SHM_FORMAT_NV21
  -- , pattern C.WL_SHM_FORMAT_NV16
  -- , pattern C.WL_SHM_FORMAT_NV61
  -- , pattern C.WL_SHM_FORMAT_YUV410
  -- , pattern C.WL_SHM_FORMAT_YVU410
  -- , pattern C.WL_SHM_FORMAT_YUV411
  -- , pattern C.WL_SHM_FORMAT_YVU411
  -- , pattern C.WL_SHM_FORMAT_YUV420
  -- , pattern C.WL_SHM_FORMAT_YVU420
  -- , pattern C.WL_SHM_FORMAT_YUV422
  -- , pattern C.WL_SHM_FORMAT_YVU422
  -- , pattern C.WL_SHM_FORMAT_YUV444
  -- , pattern C.WL_SHM_FORMAT_YVU444
  -- , pattern C.WL_SHM_FORMAT_R8
  -- , pattern C.WL_SHM_FORMAT_R16
  -- , pattern C.WL_SHM_FORMAT_RG88
  -- , pattern C.WL_SHM_FORMAT_GR88
  -- , pattern C.WL_SHM_FORMAT_RG1616
  -- , pattern C.WL_SHM_FORMAT_GR1616
  -- , pattern C.WL_SHM_FORMAT_XRGB16161616F
  -- , pattern C.WL_SHM_FORMAT_XBGR16161616F
  -- , pattern C.WL_SHM_FORMAT_ARGB16161616F
  -- , pattern C.WL_SHM_FORMAT_ABGR16161616F
  -- , pattern C.WL_SHM_FORMAT_XYUV8888
  -- , pattern C.WL_SHM_FORMAT_VUY888
  -- , pattern C.WL_SHM_FORMAT_VUY101010
  -- , pattern C.WL_SHM_FORMAT_Y210
  -- , pattern C.WL_SHM_FORMAT_Y212
  -- , pattern C.WL_SHM_FORMAT_Y216
  -- , pattern C.WL_SHM_FORMAT_Y410
  -- , pattern C.WL_SHM_FORMAT_Y412
  -- , pattern C.WL_SHM_FORMAT_Y416
  -- , pattern C.WL_SHM_FORMAT_XVYU2101010
  -- , pattern C.WL_SHM_FORMAT_XVYU12_16161616
  -- , pattern C.WL_SHM_FORMAT_XVYU16161616
  -- , pattern C.WL_SHM_FORMAT_Y0L0
  -- , pattern C.WL_SHM_FORMAT_X0L0
  -- , pattern C.WL_SHM_FORMAT_Y0L2
  -- , pattern C.WL_SHM_FORMAT_X0L2
  -- , pattern C.WL_SHM_FORMAT_YUV420_8BIT
  -- , pattern C.WL_SHM_FORMAT_YUV420_10BIT
  -- , pattern C.WL_SHM_FORMAT_XRGB8888_A8
  -- , pattern C.WL_SHM_FORMAT_XBGR8888_A8
  -- , pattern C.WL_SHM_FORMAT_RGBX8888_A8
  -- , pattern C.WL_SHM_FORMAT_BGRX8888_A8
  -- , pattern C.WL_SHM_FORMAT_RGB888_A8
  -- , pattern C.WL_SHM_FORMAT_BGR888_A8
  -- , pattern C.WL_SHM_FORMAT_RGB565_A8
  -- , pattern C.WL_SHM_FORMAT_BGR565_A8
  -- , pattern C.WL_SHM_FORMAT_NV24
  -- , pattern C.WL_SHM_FORMAT_NV42
  -- , pattern C.WL_SHM_FORMAT_P210
  -- , pattern C.WL_SHM_FORMAT_P010
  -- , pattern C.WL_SHM_FORMAT_P012
  -- , pattern C.WL_SHM_FORMAT_P016
  -- , pattern C.WL_SHM_FORMAT_AXBXGXRX106106106106
  -- , pattern C.WL_SHM_FORMAT_NV15
  -- , pattern C.WL_SHM_FORMAT_Q410
  -- , pattern C.WL_SHM_FORMAT_Q401
  -- , pattern C.WL_SHM_FORMAT_XRGB16161616
  -- , pattern C.WL_SHM_FORMAT_XBGR16161616
  -- , pattern C.WL_SHM_FORMAT_ARGB16161616
  -- , pattern C.WL_SHM_FORMAT_ABGR16161616
  -- , pattern C.WL_SHM_FORMAT_C1
  -- , pattern C.WL_SHM_FORMAT_C2
  -- , pattern C.WL_SHM_FORMAT_C4
  -- , pattern C.WL_SHM_FORMAT_D1
  -- , pattern C.WL_SHM_FORMAT_D2
  -- , pattern C.WL_SHM_FORMAT_D4
  -- , pattern C.WL_SHM_FORMAT_D8
  -- , pattern C.WL_SHM_FORMAT_R1
  -- , pattern C.WL_SHM_FORMAT_R2
  -- , pattern C.WL_SHM_FORMAT_R4
  -- , pattern C.WL_SHM_FORMAT_R10
  -- , pattern C.WL_SHM_FORMAT_R12
  -- , pattern C.WL_SHM_FORMAT_AVUY8888
  -- , pattern C.WL_SHM_FORMAT_XVUY8888
  -- , pattern C.WL_SHM_FORMAT_P030
  ) where

import qualified Generated.Wayland.Client as C
import           Generated.Wayland.Client.Global
import qualified Generated.Wayland.Util as U
import           Generated.Wayland.Util (Wl_interface)
--import qualified HsBindgen.Runtime.PtrConst as PtrConst

import Foreign
import Foreign.C.ConstPtr

-- | The generator hides the ConstPtr values... But we can re-create them here.
toConstPtr :: Wl_interface -> IO (ConstPtr Wl_interface)
toConstPtr x = alloca $ \p -> do poke p x
                                 pure (ConstPtr p)
