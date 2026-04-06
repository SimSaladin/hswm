module Wayland.Client.Display where

import Generated.Wayland.Client
import Generated.Wayland.Client.Global
import Generated.Wayland.Client.Safe as Safe

import Wayland.Client.Objects
import Wayland.Client.Internal.TH

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
    { of_throwIfMinus1 = True }
  , "dispatch_pending"
    { of_throwIfMinus1 = True }
  , "dispatch_queue"
    { of_throwIfMinus1 = True
    , of_getErrno = True
    , of_arguments = [ "display", mkPtrArg "eventQueue" ''EventQueue 'EventQueue ]
    }
  , "dispatch_queue_pending"
    { of_throwIfMinus1 = True
    , of_getErrno = True
    , of_arguments = [ "display", mkPtrArg "eventQueue" ''EventQueue 'EventQueue ]
    }
  , "dispatch_queue_timeout"
    { of_arguments = [ "display", mkPtrArg "eventQueue" ''EventQueue 'EventQueue, "timespec" ]
    }
  , "dispatch_timeout"
    { of_arguments = [ "display", "timespec" ]
    }
  , "flush"
    { of_throwIfMinus1 = True
    , of_getErrno = True
    }
  , "get_error"
  , "get_fd"
  , "get_protocol_error"
  , "get_registry"
    { of_arguments = [ "display", mkIOPtrArg "registry" ''Registry 'Registry ] }
  , "prepare_read"
    { of_throwIfMinus1 = True }
  , "prepare_read_queue"
    { of_throwIfMinus1 = True
    , of_arguments = [ "display", mkPtrArg "eventQueue" ''EventQueue 'EventQueue ] }
  , "read_events"
    { of_throwIfMinus1 = True
    , of_getErrno = True }
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

--
-- Wl_display_error
-- WL_DISPLAY_ERROR_*
