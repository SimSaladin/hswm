{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE PatternSynonyms       #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE RecordWildCards #-}

module Bindings.Wayland.Client
  ( module Bindings.Wayland.Util
  , module Bindings.Wayland.Client
  , module Types
  , module Safe

  -- * Constants
  , wL_MARSHAL_FLAG_DESTROY

  -- * Objects

  , Wl_proxy
  , Wl_display
  , Wl_event_queue
  , Wl_buffer
  , Wl_callback
  , Wl_compositor
  , Wl_data_device
  , Wl_data_device_manager
  , Wl_data_offer
  , Wl_data_source
  , Wl_fixes
  , Wl_keyboard
  , Wl_output
  , Wl_pointer
  , Wl_region
  , Wl_registry
  , Wl_seat
  , Wl_shell
  , Wl_shell_surface
  , Wl_shm
  , Wl_shm_pool
  , Wl_subcompositor
  , Wl_subsurface
  , Wl_surface
  , Wl_touch

  -- * Data Device Manager

  , Wl_data_device_manager_dnd_action(..)
  , pattern WL_DATA_DEVICE_MANAGER_DND_ACTION_NONE
  , pattern WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY
  , pattern WL_DATA_DEVICE_MANAGER_DND_ACTION_MOVE
  , pattern WL_DATA_DEVICE_MANAGER_DND_ACTION_ASK

  -- * Shell Surfaces

  , Wl_shell_surface_resize(..)
  , pattern WL_SHELL_SURFACE_RESIZE_NONE
  , pattern WL_SHELL_SURFACE_RESIZE_TOP
  , pattern WL_SHELL_SURFACE_RESIZE_BOTTOM
  , pattern WL_SHELL_SURFACE_RESIZE_LEFT
  , pattern WL_SHELL_SURFACE_RESIZE_TOP_LEFT
  , pattern WL_SHELL_SURFACE_RESIZE_BOTTOM_LEFT
  , pattern WL_SHELL_SURFACE_RESIZE_RIGHT
  , pattern WL_SHELL_SURFACE_RESIZE_TOP_RIGHT
  , pattern WL_SHELL_SURFACE_RESIZE_BOTTOM_RIGHT
  , Wl_shell_surface_transient(..)
  , pattern WL_SHELL_SURFACE_TRANSIENT_INACTIVE
  , Wl_shell_surface_fullscreen_method(..)
  , pattern WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT
  , pattern WL_SHELL_SURFACE_FULLSCREEN_METHOD_SCALE
  , pattern WL_SHELL_SURFACE_FULLSCREEN_METHOD_DRIVER
  , pattern WL_SHELL_SURFACE_FULLSCREEN_METHOD_FILL

  -- * WL Surface

  , Wl_surface_error(..)
  , pattern WL_SURFACE_ERROR_INVALID_SCALE
  , pattern WL_SURFACE_ERROR_INVALID_TRANSFORM
  , pattern WL_SURFACE_ERROR_INVALID_SIZE
  , pattern WL_SURFACE_ERROR_INVALID_OFFSET
  , pattern WL_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT

   -- * Wl_Seat

  , Wl_seat_capability(..)
  , pattern WL_SEAT_CAPABILITY_POINTER
  , pattern WL_SEAT_CAPABILITY_KEYBOARD
  , pattern WL_SEAT_CAPABILITY_TOUCH
  , Wl_seat_error(..)
  , pattern WL_SEAT_ERROR_MISSING_CAPABILITY

  -- * Pointers

  , Wl_pointer_error(..)
  , pattern WL_POINTER_ERROR_ROLE
  , Wl_pointer_button_state(..)
  , pattern WL_POINTER_BUTTON_STATE_RELEASED
  , pattern WL_POINTER_BUTTON_STATE_PRESSED
  , Wl_pointer_axis(..)
  , pattern WL_POINTER_AXIS_VERTICAL_SCROLL
  , pattern WL_POINTER_AXIS_HORIZONTAL_SCROLL
  , Wl_pointer_axis_source(..)
  , pattern WL_POINTER_AXIS_SOURCE_WHEEL
  , pattern WL_POINTER_AXIS_SOURCE_FINGER
  , pattern WL_POINTER_AXIS_SOURCE_CONTINUOUS
  , pattern WL_POINTER_AXIS_SOURCE_WHEEL_TILT
  , Wl_pointer_axis_relative_direction(..)
  , pattern WL_POINTER_AXIS_RELATIVE_DIRECTION_IDENTICAL
  , pattern WL_POINTER_AXIS_RELATIVE_DIRECTION_INVERTED

  -- * Keyboards / Touch

  , Wl_keyboard_keymap_format(..)
  , pattern WL_KEYBOARD_KEYMAP_FORMAT_NO_KEYMAP
  , pattern WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1
  , Wl_keyboard_key_state(..)
  , pattern WL_KEYBOARD_KEY_STATE_RELEASED
  , pattern WL_KEYBOARD_KEY_STATE_PRESSED
  , pattern WL_KEYBOARD_KEY_STATE_REPEATED

  -- *  Outputs

  , Wl_output_subpixel(..)
  , pattern WL_OUTPUT_SUBPIXEL_UNKNOWN
  , pattern WL_OUTPUT_SUBPIXEL_NONE
  , pattern WL_OUTPUT_SUBPIXEL_HORIZONTAL_RGB
  , pattern WL_OUTPUT_SUBPIXEL_HORIZONTAL_BGR
  , pattern WL_OUTPUT_SUBPIXEL_VERTICAL_RGB
  , pattern WL_OUTPUT_SUBPIXEL_VERTICAL_BGR
  , Wl_output_transform(..)
  , pattern WL_OUTPUT_TRANSFORM_NORMAL
  , pattern WL_OUTPUT_TRANSFORM_90
  , pattern WL_OUTPUT_TRANSFORM_180
  , pattern WL_OUTPUT_TRANSFORM_270
  , pattern WL_OUTPUT_TRANSFORM_FLIPPED
  , pattern WL_OUTPUT_TRANSFORM_FLIPPED_90
  , pattern WL_OUTPUT_TRANSFORM_FLIPPED_180
  , pattern WL_OUTPUT_TRANSFORM_FLIPPED_270
  , Wl_output_mode(..)
  , pattern WL_OUTPUT_MODE_CURRENT
  , pattern WL_OUTPUT_MODE_PREFERRED

   -- * Subcompositor

  , Wl_subcompositor_error(..)
  , pattern WL_SUBCOMPOSITOR_ERROR_BAD_SURFACE
  , pattern WL_SUBCOMPOSITOR_ERROR_BAD_PARENT

  -- * Subsurface

  , Wl_subsurface_error(..)
  , pattern WL_SUBSURFACE_ERROR_BAD_SURFACE

  -- * SHM Format

  -- | All "pattern WL_SHM_FORMAT_????????"  omitted for brevity.
  -- They are exported from another module if you need them.
  , Wl_shm_format(..)

  -- * Errors

  -- ** Display Error

  , Wl_display_error(..)
  , pattern WL_DISPLAY_ERROR_INVALID_OBJECT
  , pattern WL_DISPLAY_ERROR_INVALID_METHOD
  , pattern WL_DISPLAY_ERROR_NO_MEMORY
  , pattern WL_DISPLAY_ERROR_IMPLEMENTATION

  -- ** Data Offer Error

  , Wl_data_offer_error(..)
  , pattern WL_DATA_OFFER_ERROR_INVALID_FINISH
  , pattern WL_DATA_OFFER_ERROR_INVALID_ACTION_MASK
  , pattern WL_DATA_OFFER_ERROR_INVALID_ACTION
  , pattern WL_DATA_OFFER_ERROR_INVALID_OFFER

  -- ** SHM Error

  , Wl_shm_error(..)
  , pattern WL_SHM_ERROR_INVALID_FORMAT
  , pattern WL_SHM_ERROR_INVALID_STRIDE
  , pattern WL_SHM_ERROR_INVALID_FD

  -- ** Data Source Error

  , Wl_data_source_error(..)
  , pattern WL_DATA_SOURCE_ERROR_INVALID_ACTION_MASK
  , pattern WL_DATA_SOURCE_ERROR_INVALID_SOURCE

  -- ** Shell error

  , Wl_shell_error(..)
  , pattern WL_SHELL_ERROR_ROLE

  -- ** Data Device Error

  , Wl_data_device_error(..)
  , pattern WL_DATA_DEVICE_ERROR_ROLE
  , pattern WL_DATA_DEVICE_ERROR_USED_SOURCE

  ) where

import           Bindings.Wayland.Util
import           Bindings.Wayland.Internal.Types as Types

import           Bindings.Wayland.Client.Generated
import           Bindings.Wayland.Client.Generated.Global as G
import           Bindings.Wayland.Client.Generated.Safe as Safe

import           Bindings.Wayland.Internal.TH

clientFromProtocolXML commonSettings
  { prEnumModule = \_ -> case () of
      _ | otherwise -> ""
  , prRequestOptions =
    [ ("wl_display", "connect", def { reqCheckNull = True, reqErrnoIfError = True })
    , ("wl_display", "connect_to_fd", def { reqCheckNull = True, reqErrnoIfError = True })
    , ("wl_display", "dispatch", def { reqCheckMinusOne = True, reqErrnoIfError = True })
    , ("wl_display", "dispatch_pending", def { reqCheckMinusOne = True, reqErrnoIfError = True })
    , ("wl_display", "dispatch_queue", def { reqCheckMinusOne = True, reqErrnoIfError = True })
    , ("wl_display", "dispatch_queue_pending", def { reqCheckMinusOne = True, reqErrnoIfError = True })
    , ("wl_display", "flush", def { reqCheckMinusOne = True, reqErrnoIfError = True })
    , ("wl_display", "prepare_read", def { reqCheckMinusOne = True, reqErrnoIfError = True })
    , ("wl_display", "prepare_read_queue", def { reqCheckMinusOne = True, reqErrnoIfError = True })
    , ("wl_display", "read_events", def { reqCheckMinusOne = True, reqErrnoIfError = True })
    , ("wl_display", "create_queue", def { reqCheckNull = True })
    , ("wl_display", "roundtrip", def { reqCheckMinusOne = True })
    , ("wl_display", "roundtrip_queue", def { reqCheckMinusOne = True })
    ]
  , prProtocolModifier = \proto ->
    let modifyInterface x@Interface{..}
          | interfaceName == "wl_display" = x { interfaceRequests = interfaceRequests ++ extraDisplayMethods }
          | otherwise = x
        extraDisplayMethods =
          [ IRequest "connect" ("","") Nothing [arg "name"]
          , IRequest "connect_to_fd" ("","") Nothing []
          , IRequest "cancel_read" ("","") Nothing []
          -- , IRequest "create_queue" ("","") Nothing []
          -- , IRequest "create_queue_with_name" ("","") Nothing []
          , IRequest "disconnect" ("","") Nothing []
          , IRequest "dispatch" ("","") Nothing []
          , IRequest "dispatch_pending" ("","") Nothing []
          -- , IRequest "dispatch_queue" ("","") Nothing []
          -- , IRequest "dispatch_queue_pending" ("","") Nothing []
          -- , IRequest "dispatch_queue_timeout" ("","") Nothing []
          , IRequest "dispatch_timeout" ("","") Nothing []
          , IRequest "flush" ("","") Nothing []
          , IRequest "get_error" ("","") Nothing []
          , IRequest "get_fd" ("","") Nothing []
          , IRequest "get_protocol_error" ("","") Nothing []
          , IRequest "prepare_read" ("","") Nothing []
          -- , IRequest "prepare_read_queue" ("","") Nothing []
          , IRequest "roundtrip" ("","") Nothing []
          -- , IRequest "roundtrip_queue" ("","") Nothing []
          , IRequest "set_max_buffer_size" ("","") Nothing []
          ]
        arg s = Arg s "string" Nothing Nothing ""
    in proto { protocolInterfaces = map modifyInterface $ protocolInterfaces proto }
  } "wayland.xml"


-- EventQueue
-- mkWlObject $ (wlobj ''Wl_event_queue
--   [ "get_name" { of_arguments =
--     [ "eventQueue"
--     , "name"
--       { fa_val_out = Just [|peekCString . unConstPtr|]
--       , fa_type = \_ -> AppT (ConT ''IO) (ConT ''String)
--       }
--     ] }
--   ])
--   { objListener = Nothing
--   , objHasDestructor = True
--   , objIsWlObject = False
--   , objInterface = Nothing
--   }
