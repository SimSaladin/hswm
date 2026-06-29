-- {-# OPTIONS_GHC -ddump-splices #-}

-- |
-- Module      : WL.Core.Server
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- See also:
--
--  - "WL.Util"
--  - "WL.Core.Server.Generated.Safe"
--  - "WL.Core.Client"
module WL.Core.Server where

import           WL.Core.Server.Generated
import           WL.Core.Server.Generated.Global
import           WL.Core.Server.Generated.Safe   as Safe
import qualified WL.Core.Server.Generated.Unsafe as Unsafe

import           WL.Internals.TH.Server
import           WL.Internals.TH (commonSettings)
import           WL.Internals.Types
import           WL.Internals.Utils
import           WL.Core.Internal
import           WL.Core.Enums
import           WL.Util
import Foreign.C.ConstPtr

import Data.Word
import System.Posix (UserID, GroupID, ProcessID, Fd(..))

import Lens.Micro

-- * Types

makeWrappedNT commonSettings ''Wl_event_loop
makeWrappedNT commonSettings ''Wl_event_source
makeWrappedNT commonSettings ''Wl_listener
makeWrappedNT commonSettings ''Wl_client
makeWrappedNT commonSettings ''Wl_global
makeWrappedNT commonSettings ''Wl_resource
makeWrappedNT commonSettings ''Wl_signal
makeWrappedNT commonSettings ''Wl_shm_buffer
makeWrappedNT commonSettings ''Wl_interface

-- ** Protocol

serverFromProtocolXML commonSettings protoXml

-- * Display

makeMethodWrappers commonSettings ''Wl_display "wl_display_"
    [ "create"
          & checkNotNull
    , "add_socket_auto"
          & checkNotNull'
          & argument ("display" & describe "Wayland display to which the socket should be added.")
    , "add_socket"
          & usage "Add a socket to display for the clients to connect."
          & argument ("display" & describe "Wayland display to which the socket should be added.")
          & argument ("name" & describe "Name of the Unix socket"
                             & stringInput
                     )
          & throwIfMinus1_
    , "add_socket_fd"
          & argument ("display" & describe "Wayland display to which the socket should be added.")
          & argument ("sock_fd" & coercedAs [t|Fd|])
          & throwIfMinus1_
    , "get_event_loop"
    , "terminate"
    , "run"
    , "flush_clients"
    , "destroy_clients"
    , "set_default_max_buffer_size"
    , "get_serial"
    , "next_serial"
    , "add_destroy_listener"
    , "add_client_created_listener"
    , "get_destroy_listener"
    , "set_global_filter"
    , "get_client_list"
    , "init_shm"
    , "add_shm_format"
    , "destroy"
    -- , "add_protocol_logger" -- varargs
    ]

-- * EventLoop

makeMethodWrappers commonSettings ''Wl_event_loop "wl_event_loop_"
   [ "create"
   , "destroy"
   , "add_fd"
   , "add_timer"
   , "add_signal"
   , "dispatch"
   , "dispatch_idle"
   , "add_idle"
   , "get_fd"
   , "add_destroy_listener"
   , "get_destroy_listener"
   ]

-- * EventSource

makeMethodWrappers commonSettings ''Wl_event_source "wl_event_source_"
    [ "fd_update"
    , "timer_update"
    , "remove"
    ]

-- * Global

makeMethodWrappers commonSettings ''Wl_global "wl_global_"
   [ "create"
   , "remove"
   , "destroy"
   , "get_name"
   , "get_version"
   , "get_display"
   , "get_user_data"
   , "set_user_data"
   ]

-- * Client

makeMethodWrappers commonSettings ''Wl_client "wl_client_"
  [ "create"
  , "get_link"
  , "from_link"
  -- , "for_each" -- macro actually
  , "destroy"
  , "flush"
  , "get_credentials"
  , "get_fd"
  , "add_destroy_listener"
  , "get_destroy_listener"
  , "add_destroy_late_listener"
  , "get_destroy_late_listener"
  , "get_object"
  , "post_no_memory"
  -- , "post_implementation_error" -- varargs
  , "add_resource_created_listener"
  , "for_each_resource"
  , "set_user_data"
  , "get_user_data"
  , "set_max_buffer_size"
  , "get_display"
  ]

-- * Signal

makeMethodWrappers commonSettings ''Wl_signal "wl_signal_"
  [ "add"
  , "get"
  , "emit"
  , "emit_mutable"
  ]

-- * Resource

makeMethodWrappers commonSettings ''Wl_resource "wl_resource_"
  -- "post_event_array" -- no bind?
  -- post_event -- no bind?
  -- post_error -- no bind?
  -- queue_event -- no bind?
  -- queue_event_array -- no bind?
  [ "post_no_memory"
  , "create"
  , "set_implementation"
  , "set_dispatcher"
  , "destroy"
  , "get_id"
  , "get_link"
  , "from_link"
  , "find_for_client"
  , "get_client"
  , "set_user_data"
  , "get_user_data"
  , "get_version"
  , "set_destructor"
  , "instance_of"
  , "get_class"
  , "get_interface"
  , "add_destroy_listener"
  , "get_destroy_listener"
  ]

-- * ShmBuffer/Pool

makeMethodWrappers commonSettings ''Wl_shm_buffer "wl_shm_buffer_"
 [ "get"
 , "begin_access"
 , "end_access"
 , "get_data"
 , "get_stride"
 , "get_format"
 , "get_width"
 , "get_height"
 , "ref"
 , "unref"
 , "ref_pool"
 ]

makeMethodWrappers commonSettings ''Wl_shm_pool "wl_shm_pool_"
 [ "unref"
 ]
