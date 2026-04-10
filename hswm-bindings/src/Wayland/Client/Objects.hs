{-# LANGUAGE DuplicateRecordFields #-}

-- {-# OPTIONS_GHC -ddump-splices -fenable-th-splice-warnings #-}

------------------------------------------------------------------------------
-- |
-- Module      : Wayland.Client.Objects
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
------------------------------------------------------------------------------
module Wayland.Client.Objects where

import           Generated.Wayland.Client as C
import           Generated.Wayland.Client.Global as G
import           Generated.Wayland.Client.Safe as Safe

import qualified Generated.Wayland.Util as U

import           Foreign.C
import           Foreign.C.ConstPtr
import           Foreign.Ptr
import           Language.Haskell.TH
import           Wayland.Client.Internal.TH

-- * Array
mkWlObject $ (wlobj ''U.Wl_array [])
  { objHasDestructor = False
  , objListener = Nothing
  , objInterface = Nothing
  , objIsWlObject = False
  }

-- * Callback
mkWlObject $ (wlobj ''C.Wl_callback [])
  { objHasDestructor = True
  , objEventFieldNames = [("done", ["callback", "callback_data"])]
  }

-- * Buffer
mkWlObject $ (wlobj ''C.Wl_buffer [])
  { objHasDestructor = True }

-- * EventQueue
mkWlObject $ (wlobj ''C.Wl_event_queue
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
$(mkWlObject $ (wlobj ''C.Wl_registry
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
mkWlObject $ (wlobj ''C.Wl_fixes
  [ "destroy_registry"
  ])
  { objListener = Nothing
  , objIsWlObject = False
  , objHasDestructor = True
  }

-- * Region
mkWlObject $ (wlobj ''C.Wl_region ["add", "subtract"])
  { objListener = Nothing
  , objHasDestructor = True }

-- * Surface
mkWlObject $ (wlobj ''C.Wl_surface
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
mkWlObject $ (wlobj ''C.Wl_compositor
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
mkWlObject $ (wlobj ''C.Wl_shm_pool
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
mkWlObject $ (wlobj ''C.Wl_shm
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
mkWlObject $ (wlobj ''C.Wl_shell_surface
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
mkWlObject $ (wlobj ''C.Wl_shell
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
mkWlObject $ (wlobj ''C.Wl_subsurface
  [ "place_above" { of_arguments = [ "subsurface", mkPtrArg "surface" ''Surface 'Surface ] }
  , "place_below" { of_arguments = [ "subsurface", mkPtrArg "surface" ''Surface 'Surface ] }
  , "set_desync"
  , "set_sync"
  ])
  { objHasDestructor = True
  , objListener = Nothing }


-- * Subcompositor
mkWlObject $ (wlobj ''C.Wl_subcompositor
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
mkWlObject $ (wlobj ''C.Wl_output
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
mkWlObject $ (wlobj ''C.Wl_data_offer
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
mkWlObject $ (wlobj ''C.Wl_data_source
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
mkWlObject $ (wlobj ''C.Wl_data_device
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
mkWlObject $ (wlobj ''C.Wl_data_device_manager
  [ "create_data_source"
  , "get_data_device"
  ])
  { objListener = Nothing, objHasDestructor = True }

-- * Pointer
mkWlObject $ (wlobj ''C.Wl_pointer
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
mkWlObject $ (wlobj ''C.Wl_keyboard
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
mkWlObject $ (wlobj ''C.Wl_touch
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
mkWlObject $ (wlobj ''C.Wl_seat
  [ "get_keyboard"
  , "get_pointer"
  , "get_touch"
  , "release"
  ])
  { objHasDestructor = True
  , objAutoMarshall = objAutoMarshall (riverObj ''C.Wl_seat [])
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
