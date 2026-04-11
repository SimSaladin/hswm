{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE PatternSynonyms       #-}
{-# LANGUAGE TypeFamilies #-}
-- |
-- Module      : Bindings.Wayland.Client
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- $topdoc
------------------------------------------------------------------------------
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

import           Foreign.C
import           Foreign.C.ConstPtr
import           Foreign.Ptr
import           Language.Haskell.TH
import           Bindings.Wayland.Internal.TH

-- * Callback
mkWlObject $ (wlobj ''Wl_callback [])
  { objHasDestructor = True
  , objEventFieldNames = [("done", ["callback", "callback_data"])]
  }

-- * Buffer
mkWlObject $ (wlobj ''Wl_buffer [])
  { objHasDestructor = True }

-- * EventQueue
mkWlObject $ (wlobj ''Wl_event_queue
  [ "get_name" { of_arguments =
    [ "eventQueue"
    , "name"
      { fa_val_out = Just [|peekCString . unConstPtr|]
      , fa_type = \_ -> AppT (ConT ''IO) (ConT ''String)
      }
    ] }
  ])
  { objListener = Nothing
  , objHasDestructor = True
  , objIsWlObject = False
  , objInterface = Nothing
  }

-- * Registry
$(mkWlObject $ (wlobj ''Wl_registry
  ["bind" { of_arguments =
    [ "registry"
    , "name"
    , "interface"
    , "version"
    , "The new client-created object"
      { fa_type = \_ -> AppT (ConT ''IO) (AppT (ConT ''Ptr) (VarT (mkName "a")))
      , fa_val_out = Just [|return . castPtr|]
      }
    ] }
  ])
  { objHasDestructor = True
  , objEventFieldNames = [ ("global", ["registry", "name", "iface", "version"])
                         , ("global_remove", ["registry", "name"])
                         ]
  }
 )

-- * Fixes
mkWlObject $ (wlobj ''Wl_fixes
  [ "destroy_registry"
  ])
  { objListener = Nothing
  , objIsWlObject = False
  , objHasDestructor = True
  }

-- * Region
mkWlObject $ (wlobj ''Wl_region ["add", "subtract"])
  { objListener = Nothing
  , objHasDestructor = True }

-- * Surface
mkWlObject $ (wlobj ''Wl_surface
  [ "attach"
    { of_arguments = [ "surface", mkPtrArg "buffer" ''Buffer 'Buffer ] }
  , "commit"
  , "damage"
  , "damage_buffer"
  , "frame"
  , "offset"
  , "set_buffer_scale"
  , "set_buffer_transform"
  , "set_input_region"
    { of_arguments = [ "surface", mkPtrArg "region" ''Region 'Region ] }
  , "set_opaque_region"
    { of_arguments = [ "surface", mkPtrArg "region" ''Region 'Region ] }
  ])
  { objHasDestructor = True
  , objEventFieldNames = [ ("enter", ["surface", "output"] )
                         , ("leave", ["surface", "output"] )
                         , ("preferred_buffer_scale", ["surface", "factor"] )
                         , ("preferred_buffer_transform", ["surface", "transform"] )
                         ]
  }

-- * Compositor
mkWlObject $ (wlobj ''Wl_compositor
  [ "create_surface"
      { of_arguments =
        [ "compositor"
        , "surface" { fa_type = \_ -> AppT (ConT ''IO) (ConT ''Surface)
                    , fa_val_out = Just [|return . Surface|]
                    }
        ] }
  , "create_region"
      { of_arguments =
        [ "compositor"
        , "region" { fa_type = \_ -> AppT (ConT ''IO) (ConT ''Region)
                   , fa_val_out = Just [|return . Region|] }
        ] }
  ])
  { objListener = Nothing
  , objHasDestructor = True }

aIOBuffer :: ObjectFnA
aIOBuffer = "buffer"
  { fa_type = \_ -> AppT (ConT ''IO) (ConT ''Buffer)
  , fa_val_out = Just [|return . Buffer|] }

-- * ShmPool
mkWlObject $ (wlobj ''Wl_shm_pool
  [ "create_buffer" { of_arguments =
    [ "pool"
    , "offset"
    , "width"
    , "height"
    , "stride"
    , "format"
    , mkIOPtrArg "buffer" ''Buffer 'Buffer
    ] }
  , "resize"
  ])
  { objListener = Nothing
  , objHasDestructor = True }

-- * Shm
mkWlObject $ (wlobj ''Wl_shm
    [ "release"
    , "create_pool" { of_arguments =
      [ "shm"
      , "fd"
      , "Size"
      , mkIOPtrArg "pool" ''ShmPool 'ShmPool
      ] }
    ])
  { objHasDestructor = True
  , objEventFieldNames = [ ("format", ["shm", "format"] ) ]
  }

-- * ShellSurface
mkWlObject $ (wlobj ''Wl_shell_surface
  ["move"
    , "pong"
    , "resize"
    , "set_class"
    , "set_fullscreen"
    , "set_maximized"
    , "set_popup"
    , "set_title"
    , "set_toplevel"
    , "set_transient"
  ])
  { objHasDestructor = True
  , objEventFieldNames = [ ("ping", ["shellSurface", "serial"] )
                         , ("configure", ["shellSurface", "edges", "width", "height" ] )
                         ]
  }

-- * Shell
mkWlObject $ (wlobj ''Wl_shell
  [ "get_shell_surface"
    { of_arguments =
      [ "shell"
      , mkPtrArg "surface" ''Surface 'Surface
      , mkIOPtrArg "shellSurface" ''ShellSurface 'ShellSurface
      ]
    }
  ])
  { objHasDestructor = True
  , objListener = Nothing }

-- * Subsurface
mkWlObject $ (wlobj ''Wl_subsurface
  [ "place_above" { of_arguments = [ "subsurface", mkPtrArg "surface" ''Surface 'Surface ] }
  , "place_below" { of_arguments = [ "subsurface", mkPtrArg "surface" ''Surface 'Surface ] }
  , "set_desync"
  , "set_sync"
  ])
  { objHasDestructor = True
  , objListener = Nothing }


-- * Subcompositor
mkWlObject $ (wlobj ''Wl_subcompositor
  [ "get_subsurface"
    { of_arguments =
      [ "subcompositor"
      , mkPtrArg "surface" ''Surface 'Surface
      , mkPtrArg "surface" ''Surface 'Surface
      , mkIOPtrArg "subsurface" ''Subsurface 'Subsurface
      ]
    }
  ])
  { objHasDestructor = True
  , objListener = Nothing }

-- * Output
mkWlObject $ (wlobj ''Wl_output
  [ "release" ])
  { objHasDestructor = True
  , objEventFieldNames = [ ("geometry", ["output", "x", "y"
                                        , "physical_width", "physical_height"
                                        , "subpixel", "make", "model", "transform"
                                        ] )
                         , ("mode", ["output", "flags", "width", "height", "refresh"] )
                         , ("scale", ["output", "factor"] )
                         , ("name", ["output", "name"] )
                         , ("description", ["output", "description"] )
                         ]
  }

-- * DataOffer
mkWlObject $ (wlobj ''Wl_data_offer
  [ "accept"
  , "finish"
  , "receive"
  , "set_actions"
  ])
  { objHasDestructor = True
  , objEventFieldNames = [ ("offer", ["dataOffer", "mime_type"] )
                         , ("source_actions", ["dataOffer", "sourceActions"] )
                         , ("action", ["dataOffer", "dndAction"] )
                         ]
  }

-- * DataSource
mkWlObject $ (wlobj ''Wl_data_source
  [ "offer"
  , "set_actions"
  ])
  { objHasDestructor = True
  , objEventFieldNames = [ ("target", ["dataSource", "mime_type"] )
                         , ("send", ["dataSource", "mime_type", "fd"] )
                         , ("action", ["dataSource", "dnd_action"] )
                         ]
  }

-- * DataDevice
mkWlObject $ (wlobj ''Wl_data_device
  [ "release"
  , "set_selection"
  , "start_drag"
  ])
  { objHasDestructor = True
  , objEventFieldNames = [ ("data_offer", ["dataDevice", "dataOffer"] )
                         , ("enter", ["dataDevice", "serial", "surface", "x", "y", "dataOffer"] )
                         , ("motion", ["dataDevice", "time", "x", "y"] )
                         , ("selection", ["dataDevice", "dataOffer"] )
                         ]
  }

-- * DataDeviceManager
mkWlObject $ (wlobj ''Wl_data_device_manager
  [ "create_data_source"
  , "get_data_device"
  ])
  { objListener = Nothing, objHasDestructor = True }

-- * Pointer
mkWlObject $ (wlobj ''Wl_pointer
  [ "release"
  , "set_cursor" { of_arguments = [ "pointer", "w", mkPtrArg "surface" ''Surface 'Surface ] }
  ])
  { objHasDestructor = True
  , objEventFieldNames = [ ("enter", ["pointer", "serial", "surface", "surface_x", "surface_y"] )
                         , ("leave", ["pointer", "serial", "surface"] )
                         , ("motion", ["pointer", "time", "surface_x", "surface_y" ] )
                         , ("button", ["pointer", "serial", "time", "button", "state"] )
                         , ("axis", ["pointer", "time", "axis", "value"] )
                         , ("axis_source", ["pointer", "axis_source"] )
                         , ("axis_stop", ["pointer", "time", "axis"] )
                         , ("axis_discrete", ["pointer", "axis", "discrete"] )
                         , ("axis_value120", ["pointer", "axis", "value120"] )
                         , ("axis_relative_direction", ["pointer", "axis", "direction"] )
                         ]
  }

-- * Keyboard
mkWlObject $ (wlobj ''Wl_keyboard
  [ "release"
  ])
  { objHasDestructor = True
  , objEventFieldNames = [ ("keymap", ["keyboard", "format", "fd", "size"] )
                         , ("enter", ["keyboard", "serial", "surface", "keys"] )
                         , ("leave", ["keyboard", "serial", "surface"] )
                         , ("key", ["keyboard", "serial", "time", "key", "state"] )
                         , ("modifiers", ["keyboard", "serial", "modsDepressed", "modsLatched", "modsLocked", "group"] )
                         , ("repeat_info", ["keyboard", "rate", "delay"] )
                         ]
  }

-- * Touch
mkWlObject $ (wlobj ''Wl_touch
  [ "release"
  ])
  { objHasDestructor = True
  , objEventFieldNames = [ ("down", ["touch", "serial", "time", "surface", "id", "x", "y"] )
                         , ("up", ["touch", "serial", "time", "id"] )
                         , ("motion", ["touch", "time", "id", "x", "y"] )
                         , ("shape", ["touch", "id", "major", "minor"] )
                         , ("orientation", ["touch", "id", "orientation"] )
                         ]
  }

-- * Seat
mkWlObject $ (wlobj ''Wl_seat
  [ "get_keyboard"
  , "get_pointer"
  , "get_touch"
  , "release"
  ])
  { objHasDestructor = True
  , objAutoMarshall = objAutoMarshall (riverObj ''Wl_seat [])
  , objEventFieldNames = [ ("capabilities", ["seat", "capabilities"] )
                         , ("name", ["seat", "name"] )
                         ]
  }

-- * Display
mkWlObject $
  (wlobj ''Wl_display
  [ "connect"
    { of_nullCheck = True, of_getErrno = True }
  , "connect_to_fd"
    { of_nullCheck = True, of_getErrno = True }
  , "cancel_read"
    { of_arguments = [ "display" ] }
  , "create_queue"
    { of_nullCheck = True
    , of_arguments = [ "display" , mkIOPtrArg "eventQueue" ''EventQueue 'EventQueue ] }
  , "create_queue_with_name"
    { of_arguments = [ "display" , "name" , mkIOPtrArg "eventQueue" ''EventQueue 'EventQueue ] }
  , "disconnect"
    { of_arguments = [ "display" ] }
  , "dispatch"
    { of_throwIfMinus1 = True
    , of_getErrno      = True
    }
  , "dispatch_pending"
    { of_throwIfMinus1 = True
    , of_getErrno      = True
    }
  , "dispatch_queue"
    { of_throwIfMinus1 = True
    , of_getErrno      = True
    , of_arguments = [ "display", mkPtrArg "eventQueue" ''EventQueue 'EventQueue ]
    }
  , "dispatch_queue_pending"
    { of_throwIfMinus1 = True
    , of_getErrno      = True
    , of_arguments     = [ "display", mkPtrArg "eventQueue" ''EventQueue 'EventQueue ]
    }
  , "dispatch_queue_timeout"
    { of_arguments = [ "display", mkPtrArg "eventQueue" ''EventQueue 'EventQueue, "timespec" ]
    }
  , "dispatch_timeout"
    { of_arguments = [ "display", "timespec" ]
    }
  , "flush"
    { of_throwIfMinus1 = True
    , of_getErrno      = True
    }
  , "get_error"
  , "get_fd"
  , "get_protocol_error"
  , "get_registry"
    { of_arguments = [ "display", mkIOPtrArg "registry" ''Registry 'Registry ] }
  , "prepare_read"
    { of_throwIfMinus1 = True
    , of_getErrno      = True
    }
  , "prepare_read_queue"
    { of_throwIfMinus1 = True
    , of_arguments = [ "display", mkPtrArg "eventQueue" ''EventQueue 'EventQueue ] }
  , "read_events"
    { of_throwIfMinus1 = True
    , of_getErrno      = True
    }
  , "roundtrip"
    { of_throwIfMinus1 = True }
  , "roundtrip_queue"
    { of_throwIfMinus1 = True
    , of_arguments = [ "display", mkPtrArg "eventQueue" ''EventQueue 'EventQueue ] }
  , "set_max_buffer_size"
  , "sync"
    { of_arguments = [ "display", mkIOPtrArg "callback" ''Callback 'Callback ] }
  ])
    {
    objEventFieldNames = [("error", ["display", "object_id", "code", "message"]), ("delete_id", ["display", "delete_id"])]
    }

-- $wlproxy
--
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

-- |
-- $topdoc
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
