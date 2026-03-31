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

module Generated.River.WindowManagementV1
    ( Generated.River.WindowManagementV1.River_decoration_v1
    , Generated.River.WindowManagementV1.River_node_v1
    , Generated.River.WindowManagementV1.River_output_v1
    , Generated.River.WindowManagementV1.River_pointer_binding_v1
    , Generated.River.WindowManagementV1.River_seat_v1
    , Generated.River.WindowManagementV1.River_shell_surface_v1
    , Generated.River.WindowManagementV1.River_window_manager_v1
    , Generated.River.WindowManagementV1.River_window_v1
    , Generated.River.WindowManagementV1.River_window_manager_v1_error(..)
    , pattern Generated.River.WindowManagementV1.RIVER_WINDOW_MANAGER_V1_ERROR_SEQUENCE_ORDER
    , pattern Generated.River.WindowManagementV1.RIVER_WINDOW_MANAGER_V1_ERROR_ROLE
    , pattern Generated.River.WindowManagementV1.RIVER_WINDOW_MANAGER_V1_ERROR_UNRESPONSIVE
    , Generated.River.WindowManagementV1.River_window_manager_v1_listener(..)
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_STOP
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_DESTROY
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_MANAGE_FINISH
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_MANAGE_DIRTY
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_RENDER_FINISH
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_GET_SHELL_SURFACE
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_EXIT_SESSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_UNAVAILABLE_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_FINISHED_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_MANAGE_START_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_RENDER_START_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_SESSION_LOCKED_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_SESSION_UNLOCKED_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_WINDOW_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_OUTPUT_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_SEAT_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_STOP_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_DESTROY_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_MANAGE_FINISH_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_MANAGE_DIRTY_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_RENDER_FINISH_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_GET_SHELL_SURFACE_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_MANAGER_V1_EXIT_SESSION_SINCE_VERSION
    , Generated.River.WindowManagementV1.River_window_v1_error(..)
    , pattern Generated.River.WindowManagementV1.RIVER_WINDOW_V1_ERROR_NODE_EXISTS
    , pattern Generated.River.WindowManagementV1.RIVER_WINDOW_V1_ERROR_INVALID_DIMENSIONS
    , pattern Generated.River.WindowManagementV1.RIVER_WINDOW_V1_ERROR_INVALID_BORDER
    , pattern Generated.River.WindowManagementV1.RIVER_WINDOW_V1_ERROR_INVALID_CLIP_BOX
    , Generated.River.WindowManagementV1.River_window_v1_decoration_hint(..)
    , pattern Generated.River.WindowManagementV1.RIVER_WINDOW_V1_DECORATION_HINT_ONLY_SUPPORTS_CSD
    , pattern Generated.River.WindowManagementV1.RIVER_WINDOW_V1_DECORATION_HINT_PREFERS_CSD
    , pattern Generated.River.WindowManagementV1.RIVER_WINDOW_V1_DECORATION_HINT_PREFERS_SSD
    , pattern Generated.River.WindowManagementV1.RIVER_WINDOW_V1_DECORATION_HINT_NO_PREFERENCE
    , Generated.River.WindowManagementV1.River_window_v1_edges(..)
    , pattern Generated.River.WindowManagementV1.RIVER_WINDOW_V1_EDGES_NONE
    , pattern Generated.River.WindowManagementV1.RIVER_WINDOW_V1_EDGES_TOP
    , pattern Generated.River.WindowManagementV1.RIVER_WINDOW_V1_EDGES_BOTTOM
    , pattern Generated.River.WindowManagementV1.RIVER_WINDOW_V1_EDGES_LEFT
    , pattern Generated.River.WindowManagementV1.RIVER_WINDOW_V1_EDGES_RIGHT
    , Generated.River.WindowManagementV1.River_window_v1_capabilities(..)
    , pattern Generated.River.WindowManagementV1.RIVER_WINDOW_V1_CAPABILITIES_WINDOW_MENU
    , pattern Generated.River.WindowManagementV1.RIVER_WINDOW_V1_CAPABILITIES_MAXIMIZE
    , pattern Generated.River.WindowManagementV1.RIVER_WINDOW_V1_CAPABILITIES_FULLSCREEN
    , pattern Generated.River.WindowManagementV1.RIVER_WINDOW_V1_CAPABILITIES_MINIMIZE
    , Generated.River.WindowManagementV1.River_window_v1_listener(..)
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_DESTROY
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_CLOSE
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_GET_NODE
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_PROPOSE_DIMENSIONS
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_HIDE
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_SHOW
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_USE_CSD
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_USE_SSD
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_SET_BORDERS
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_SET_TILED
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_GET_DECORATION_ABOVE
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_GET_DECORATION_BELOW
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_INFORM_RESIZE_START
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_INFORM_RESIZE_END
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_SET_CAPABILITIES
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_INFORM_MAXIMIZED
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_INFORM_UNMAXIMIZED
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_INFORM_FULLSCREEN
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_INFORM_NOT_FULLSCREEN
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_FULLSCREEN
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_EXIT_FULLSCREEN
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_SET_CLIP_BOX
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_SET_CONTENT_CLIP_BOX
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_SET_DIMENSION_BOUNDS
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_CLOSED_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_DIMENSIONS_HINT_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_DIMENSIONS_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_APP_ID_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_TITLE_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_PARENT_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_DECORATION_HINT_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_POINTER_MOVE_REQUESTED_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_POINTER_RESIZE_REQUESTED_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_SHOW_WINDOW_MENU_REQUESTED_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_MAXIMIZE_REQUESTED_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_UNMAXIMIZE_REQUESTED_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_FULLSCREEN_REQUESTED_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_EXIT_FULLSCREEN_REQUESTED_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_MINIMIZE_REQUESTED_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_UNRELIABLE_PID_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_PRESENTATION_HINT_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_IDENTIFIER_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_DESTROY_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_CLOSE_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_GET_NODE_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_PROPOSE_DIMENSIONS_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_HIDE_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_SHOW_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_USE_CSD_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_USE_SSD_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_SET_BORDERS_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_SET_TILED_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_GET_DECORATION_ABOVE_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_GET_DECORATION_BELOW_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_INFORM_RESIZE_START_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_INFORM_RESIZE_END_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_SET_CAPABILITIES_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_INFORM_MAXIMIZED_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_INFORM_UNMAXIMIZED_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_INFORM_FULLSCREEN_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_INFORM_NOT_FULLSCREEN_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_FULLSCREEN_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_EXIT_FULLSCREEN_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_SET_CLIP_BOX_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_SET_CONTENT_CLIP_BOX_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_WINDOW_V1_SET_DIMENSION_BOUNDS_SINCE_VERSION
    , Generated.River.WindowManagementV1.River_decoration_v1_error(..)
    , pattern Generated.River.WindowManagementV1.RIVER_DECORATION_V1_ERROR_NO_COMMIT
    , Generated.River.WindowManagementV1.rIVER_DECORATION_V1_DESTROY
    , Generated.River.WindowManagementV1.rIVER_DECORATION_V1_SET_OFFSET
    , Generated.River.WindowManagementV1.rIVER_DECORATION_V1_SYNC_NEXT_COMMIT
    , Generated.River.WindowManagementV1.rIVER_DECORATION_V1_DESTROY_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_DECORATION_V1_SET_OFFSET_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_DECORATION_V1_SYNC_NEXT_COMMIT_SINCE_VERSION
    , Generated.River.WindowManagementV1.River_shell_surface_v1_error(..)
    , pattern Generated.River.WindowManagementV1.RIVER_SHELL_SURFACE_V1_ERROR_NODE_EXISTS
    , pattern Generated.River.WindowManagementV1.RIVER_SHELL_SURFACE_V1_ERROR_NO_COMMIT
    , Generated.River.WindowManagementV1.rIVER_SHELL_SURFACE_V1_DESTROY
    , Generated.River.WindowManagementV1.rIVER_SHELL_SURFACE_V1_GET_NODE
    , Generated.River.WindowManagementV1.rIVER_SHELL_SURFACE_V1_SYNC_NEXT_COMMIT
    , Generated.River.WindowManagementV1.rIVER_SHELL_SURFACE_V1_DESTROY_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_SHELL_SURFACE_V1_GET_NODE_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_SHELL_SURFACE_V1_SYNC_NEXT_COMMIT_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_NODE_V1_DESTROY
    , Generated.River.WindowManagementV1.rIVER_NODE_V1_SET_POSITION
    , Generated.River.WindowManagementV1.rIVER_NODE_V1_PLACE_TOP
    , Generated.River.WindowManagementV1.rIVER_NODE_V1_PLACE_BOTTOM
    , Generated.River.WindowManagementV1.rIVER_NODE_V1_PLACE_ABOVE
    , Generated.River.WindowManagementV1.rIVER_NODE_V1_PLACE_BELOW
    , Generated.River.WindowManagementV1.rIVER_NODE_V1_DESTROY_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_NODE_V1_SET_POSITION_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_NODE_V1_PLACE_TOP_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_NODE_V1_PLACE_BOTTOM_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_NODE_V1_PLACE_ABOVE_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_NODE_V1_PLACE_BELOW_SINCE_VERSION
    , Generated.River.WindowManagementV1.River_output_v1_error(..)
    , pattern Generated.River.WindowManagementV1.RIVER_OUTPUT_V1_ERROR_INVALID_PRESENTATION_MODE
    , Generated.River.WindowManagementV1.rIVER_OUTPUT_V1_ERROR_INVALID_PRESENTATION_MODE_SINCE_VERSION
    , Generated.River.WindowManagementV1.River_output_v1_presentation_mode(..)
    , pattern Generated.River.WindowManagementV1.RIVER_OUTPUT_V1_PRESENTATION_MODE_VSYNC
    , pattern Generated.River.WindowManagementV1.RIVER_OUTPUT_V1_PRESENTATION_MODE_ASYNC
    , Generated.River.WindowManagementV1.River_output_v1_listener(..)
    , Generated.River.WindowManagementV1.rIVER_OUTPUT_V1_DESTROY
    , Generated.River.WindowManagementV1.rIVER_OUTPUT_V1_SET_PRESENTATION_MODE
    , Generated.River.WindowManagementV1.rIVER_OUTPUT_V1_REMOVED_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_OUTPUT_V1_WL_OUTPUT_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_OUTPUT_V1_POSITION_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_OUTPUT_V1_DIMENSIONS_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_OUTPUT_V1_DESTROY_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_OUTPUT_V1_SET_PRESENTATION_MODE_SINCE_VERSION
    , Generated.River.WindowManagementV1.River_seat_v1_modifiers(..)
    , pattern Generated.River.WindowManagementV1.RIVER_SEAT_V1_MODIFIERS_NONE
    , pattern Generated.River.WindowManagementV1.RIVER_SEAT_V1_MODIFIERS_SHIFT
    , pattern Generated.River.WindowManagementV1.RIVER_SEAT_V1_MODIFIERS_CTRL
    , pattern Generated.River.WindowManagementV1.RIVER_SEAT_V1_MODIFIERS_MOD1
    , pattern Generated.River.WindowManagementV1.RIVER_SEAT_V1_MODIFIERS_MOD3
    , pattern Generated.River.WindowManagementV1.RIVER_SEAT_V1_MODIFIERS_MOD4
    , pattern Generated.River.WindowManagementV1.RIVER_SEAT_V1_MODIFIERS_MOD5
    , Generated.River.WindowManagementV1.River_seat_v1_listener(..)
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_DESTROY
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_FOCUS_WINDOW
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_FOCUS_SHELL_SURFACE
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_CLEAR_FOCUS
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_OP_START_POINTER
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_OP_END
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_GET_POINTER_BINDING
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_SET_XCURSOR_THEME
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_POINTER_WARP
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_REMOVED_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_WL_SEAT_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_POINTER_ENTER_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_POINTER_LEAVE_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_WINDOW_INTERACTION_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_SHELL_SURFACE_INTERACTION_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_OP_DELTA_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_OP_RELEASE_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_POINTER_POSITION_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_DESTROY_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_FOCUS_WINDOW_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_FOCUS_SHELL_SURFACE_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_CLEAR_FOCUS_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_OP_START_POINTER_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_OP_END_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_GET_POINTER_BINDING_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_SET_XCURSOR_THEME_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_SEAT_V1_POINTER_WARP_SINCE_VERSION
    , Generated.River.WindowManagementV1.River_pointer_binding_v1_listener(..)
    , Generated.River.WindowManagementV1.rIVER_POINTER_BINDING_V1_DESTROY
    , Generated.River.WindowManagementV1.rIVER_POINTER_BINDING_V1_ENABLE
    , Generated.River.WindowManagementV1.rIVER_POINTER_BINDING_V1_DISABLE
    , Generated.River.WindowManagementV1.rIVER_POINTER_BINDING_V1_PRESSED_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_POINTER_BINDING_V1_RELEASED_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_POINTER_BINDING_V1_DESTROY_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_POINTER_BINDING_V1_ENABLE_SINCE_VERSION
    , Generated.River.WindowManagementV1.rIVER_POINTER_BINDING_V1_DISABLE_SINCE_VERSION
    )
  where

import qualified HsBindgen.Runtime.CEnum as CEnum
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.Marshal as Marshal
import qualified HsBindgen.Runtime.PtrConst as PtrConst

{-|

  > page_river_window_management_v1 The river_window_management_v1 protocol

  frame-perfect window management

  > page_desc_river_window_management_v1 Description

  This protocol allows a single "window manager" client to determine the window management policy of the compositor. State is globally double-buffered allowing for frame perfect state changes involving multiple windows.

  The key words "must", "must not", "required", "shall", "shall not", "should", "should not", "recommended", "may", and "optional" in this document are to be interpreted as described in IETF RFC 2119.

  > page_ifaces_river_window_management_v1 Interfaces

  -

  > page_iface_river_window_manager_v1 - window manager global interface

  -

  > page_iface_river_window_v1 - a logical window

  -

  > page_iface_river_decoration_v1 - a window decoration

  -

  > page_iface_river_shell_surface_v1 - a surface for window manager UI

  -

  > page_iface_river_node_v1 - a node in the render list

  -

  > page_iface_river_output_v1 - a logical output

  -

  > page_iface_river_seat_v1 - a window management seat

  -

  > page_iface_river_pointer_binding_v1 - configure a pointer binding, receive trigger events

  > page_copyright_river_window_management_v1 Copyright

  SPDX-FileCopyrightText: © 2024 Isaac Freund SPDX-License-Identifier: MIT

  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

__C declaration:__ @struct river_decoration_v1@

__defined at:__ @river-window-management-v1-client-protocol.h 63:8@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
data River_decoration_v1

{-| __C declaration:__ @struct river_node_v1@

    __defined at:__ @river-window-management-v1-client-protocol.h 64:8@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
data River_node_v1

{-| __C declaration:__ @struct river_output_v1@

    __defined at:__ @river-window-management-v1-client-protocol.h 65:8@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
data River_output_v1

{-| __C declaration:__ @struct river_pointer_binding_v1@

    __defined at:__ @river-window-management-v1-client-protocol.h 66:8@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
data River_pointer_binding_v1

{-| __C declaration:__ @struct river_seat_v1@

    __defined at:__ @river-window-management-v1-client-protocol.h 67:8@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
data River_seat_v1

{-| __C declaration:__ @struct river_shell_surface_v1@

    __defined at:__ @river-window-management-v1-client-protocol.h 68:8@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
data River_shell_surface_v1

{-| __C declaration:__ @struct river_window_manager_v1@

    __defined at:__ @river-window-management-v1-client-protocol.h 69:8@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
data River_window_manager_v1

{-| __C declaration:__ @struct river_window_v1@

    __defined at:__ @river-window-management-v1-client-protocol.h 70:8@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
data River_window_v1

{-| __C declaration:__ @enum river_window_manager_v1_error@

    __defined at:__ @river-window-management-v1-client-protocol.h 466:6@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
newtype River_window_manager_v1_error = River_window_manager_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_window_manager_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_window_manager_v1_error where

  readRaw =
    \ptr0 ->
          pure River_window_manager_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_window_manager_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_window_manager_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_window_manager_v1_error instance RIP.Storable River_window_manager_v1_error

deriving via RIP.CUInt instance RIP.Prim River_window_manager_v1_error

instance CEnum.CEnum River_window_manager_v1_error where

  type CEnumZ River_window_manager_v1_error = RIP.CUInt

  toCEnum = River_window_manager_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_WINDOW_MANAGER_V1_ERROR_SEQUENCE_ORDER")
                                   , (1, RIP.singleton "RIVER_WINDOW_MANAGER_V1_ERROR_ROLE")
                                   , (2, RIP.singleton "RIVER_WINDOW_MANAGER_V1_ERROR_UNRESPONSIVE")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_window_manager_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_window_manager_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_window_manager_v1_error where

  minDeclaredValue =
    RIVER_WINDOW_MANAGER_V1_ERROR_SEQUENCE_ORDER

  maxDeclaredValue =
    RIVER_WINDOW_MANAGER_V1_ERROR_UNRESPONSIVE

instance Show River_window_manager_v1_error where

  showsPrec = CEnum.shows

instance Read River_window_manager_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_window_manager_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_window_manager_v1_error "unwrap" where

  type CFieldType River_window_manager_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| request violates manage/render sequence ordering

__C declaration:__ @RIVER_WINDOW_MANAGER_V1_ERROR_SEQUENCE_ORDER@

__defined at:__ @river-window-management-v1-client-protocol.h 470:2@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_WINDOW_MANAGER_V1_ERROR_SEQUENCE_ORDER :: River_window_manager_v1_error
pattern RIVER_WINDOW_MANAGER_V1_ERROR_SEQUENCE_ORDER = River_window_manager_v1_error 0

{-| given wl_surface already has a role

__C declaration:__ @RIVER_WINDOW_MANAGER_V1_ERROR_ROLE@

__defined at:__ @river-window-management-v1-client-protocol.h 474:2@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_WINDOW_MANAGER_V1_ERROR_ROLE :: River_window_manager_v1_error
pattern RIVER_WINDOW_MANAGER_V1_ERROR_ROLE = River_window_manager_v1_error 1

{-| window manager unresponsive

__C declaration:__ @RIVER_WINDOW_MANAGER_V1_ERROR_UNRESPONSIVE@

__defined at:__ @river-window-management-v1-client-protocol.h 478:2@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_WINDOW_MANAGER_V1_ERROR_UNRESPONSIVE :: River_window_manager_v1_error
pattern RIVER_WINDOW_MANAGER_V1_ERROR_UNRESPONSIVE = River_window_manager_v1_error 2

{-|

  > iface_river_window_manager_v1

  > river_window_manager_v1_listener

__C declaration:__ @struct river_window_manager_v1_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 486:8@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
data River_window_manager_v1_listener = River_window_manager_v1_listener
  { unavailable :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ())
    {- ^ window management unavailable

       This event indicates that window management is not available to the client, perhaps due to another window management client already running. The circumstances causing this event to be sent are compositor policy.

       If sent, this event is guaranteed to be the first and only event sent by the server.

       The server will send no further events on this object. The client should destroy this object and all objects created through this interface.

    __C declaration:__ @unavailable@

    __defined at:__ @river-window-management-v1-client-protocol.h 502:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , finished :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ())
    {- ^ the server has finished with the window manager

       This event indicates that the server will send no further events on this object. The client should destroy the object. See river_window_manager_v1.destroy for more information.

    __C declaration:__ @finished@

    __defined at:__ @river-window-management-v1-client-protocol.h 511:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , manage_start :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ())
    {- ^ start a manage sequence

       This event indicates that the server has sent events indicating all state changes since the last manage sequence.

       In response to this event, the client should make requests modifying window management state as it chooses. Then, the client must make the manage_finish request.

       See the description of the river_window_manager_v1 interface for a complete overview of the manage/render sequence loop.

    __C declaration:__ @manage_start@

    __defined at:__ @river-window-management-v1-client-protocol.h 526:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , render_start :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ())
    {- ^ start a render sequence

       This event indicates that the server has sent all river_node_v1.position and river_window_v1.dimensions events necessary.

       In response to this event, the client should make requests modifying rendering state as it chooses. Then, the client must make the render_finish request.

       See the description of the river_window_manager_v1 interface for a complete overview of the manage/render sequence loop.

    __C declaration:__ @render_start@

    __defined at:__ @river-window-management-v1-client-protocol.h 542:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , session_locked :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ())
    {- ^ the session has been locked

       This event indicates that the session has been locked.

       The window manager may wish to restrict which key bindings are available while locked or otherwise use this information.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

    __C declaration:__ @session_locked@

    __defined at:__ @river-window-management-v1-client-protocol.h 555:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , session_unlocked :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ())
    {- ^ the session has been unlocked

       This event indicates that the session has been unlocked.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

    __C declaration:__ @session_unlocked@

    __defined at:__ @river-window-management-v1-client-protocol.h 565:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , window :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_window_v1) -> IO ())
    {- ^ new window

       A new window has been created.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       [__@id@ /(input)/__]: new window

    __C declaration:__ @window@

    __defined at:__ @river-window-management-v1-client-protocol.h 576:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , output :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_output_v1) -> IO ())
    {- ^ new output

       A new logical output has been created, perhaps due to a new physical monitor being plugged in or perhaps due to a change in configuration.

       This event will be followed by river_output_v1.position and dimensions events as well as a manage_start event after all other new state has been sent by the server.

       [__@id@ /(input)/__]: new output

    __C declaration:__ @output@

    __defined at:__ @river-window-management-v1-client-protocol.h 591:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , seat :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_seat_v1) -> IO ())
    {- ^ new seat

       A new seat has been created.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       [__@id@ /(input)/__]: new seat

    __C declaration:__ @seat@

    __defined at:__ @river-window-management-v1-client-protocol.h 603:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize River_window_manager_v1_listener where

  staticSizeOf = \_ -> (72 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw River_window_manager_v1_listener where

  readRaw =
    \ptr0 ->
          pure River_window_manager_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"unavailable") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"finished") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"manage_start") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"render_start") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"session_locked") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"session_unlocked") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"window") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"output") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"seat") ptr0

instance Marshal.WriteRaw River_window_manager_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_window_manager_v1_listener
            unavailable2
            finished3
            manage_start4
            render_start5
            session_locked6
            session_unlocked7
            window8
            output9
            seat10 ->
                 HasCField.writeRaw (RIP.Proxy @"unavailable") ptr0 unavailable2
              >> HasCField.writeRaw (RIP.Proxy @"finished") ptr0 finished3
              >> HasCField.writeRaw (RIP.Proxy @"manage_start") ptr0 manage_start4
              >> HasCField.writeRaw (RIP.Proxy @"render_start") ptr0 render_start5
              >> HasCField.writeRaw (RIP.Proxy @"session_locked") ptr0 session_locked6
              >> HasCField.writeRaw (RIP.Proxy @"session_unlocked") ptr0 session_unlocked7
              >> HasCField.writeRaw (RIP.Proxy @"window") ptr0 window8
              >> HasCField.writeRaw (RIP.Proxy @"output") ptr0 output9
              >> HasCField.writeRaw (RIP.Proxy @"seat") ptr0 seat10

deriving via Marshal.EquivStorable River_window_manager_v1_listener instance RIP.Storable River_window_manager_v1_listener

instance HasCField.HasCField River_window_manager_v1_listener "unavailable" where

  type CFieldType River_window_manager_v1_listener "unavailable" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ()))
         ) => RIP.HasField "unavailable" (RIP.Ptr River_window_manager_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"unavailable")

instance HasCField.HasCField River_window_manager_v1_listener "finished" where

  type CFieldType River_window_manager_v1_listener "finished" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ()))
         ) => RIP.HasField "finished" (RIP.Ptr River_window_manager_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"finished")

instance HasCField.HasCField River_window_manager_v1_listener "manage_start" where

  type CFieldType River_window_manager_v1_listener "manage_start" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ()))
         ) => RIP.HasField "manage_start" (RIP.Ptr River_window_manager_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"manage_start")

instance HasCField.HasCField River_window_manager_v1_listener "render_start" where

  type CFieldType River_window_manager_v1_listener "render_start" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ()))
         ) => RIP.HasField "render_start" (RIP.Ptr River_window_manager_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"render_start")

instance HasCField.HasCField River_window_manager_v1_listener "session_locked" where

  type CFieldType River_window_manager_v1_listener "session_locked" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ())

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ()))
         ) => RIP.HasField "session_locked" (RIP.Ptr River_window_manager_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"session_locked")

instance HasCField.HasCField River_window_manager_v1_listener "session_unlocked" where

  type CFieldType River_window_manager_v1_listener "session_unlocked" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ())

  offset# = \_ -> \_ -> 40

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ()))
         ) => RIP.HasField "session_unlocked" (RIP.Ptr River_window_manager_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"session_unlocked")

instance HasCField.HasCField River_window_manager_v1_listener "window" where

  type CFieldType River_window_manager_v1_listener "window" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_window_v1) -> IO ())

  offset# = \_ -> \_ -> 48

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_window_v1) -> IO ()))
         ) => RIP.HasField "window" (RIP.Ptr River_window_manager_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"window")

instance HasCField.HasCField River_window_manager_v1_listener "output" where

  type CFieldType River_window_manager_v1_listener "output" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_output_v1) -> IO ())

  offset# = \_ -> \_ -> 56

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_output_v1) -> IO ()))
         ) => RIP.HasField "output" (RIP.Ptr River_window_manager_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"output")

instance HasCField.HasCField River_window_manager_v1_listener "seat" where

  type CFieldType River_window_manager_v1_listener "seat" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_seat_v1) -> IO ())

  offset# = \_ -> \_ -> 64

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_seat_v1) -> IO ()))
         ) => RIP.HasField "seat" (RIP.Ptr River_window_manager_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"seat")

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_STOP@

    __defined at:__ @river-window-management-v1-client-protocol.h 619:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_STOP :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_STOP = (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_DESTROY@

    __defined at:__ @river-window-management-v1-client-protocol.h 620:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_DESTROY :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_DESTROY = (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_MANAGE_FINISH@

    __defined at:__ @river-window-management-v1-client-protocol.h 621:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_MANAGE_FINISH :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_MANAGE_FINISH =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_MANAGE_DIRTY@

    __defined at:__ @river-window-management-v1-client-protocol.h 622:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_MANAGE_DIRTY :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_MANAGE_DIRTY =
  (3 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_RENDER_FINISH@

    __defined at:__ @river-window-management-v1-client-protocol.h 623:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_RENDER_FINISH :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_RENDER_FINISH =
  (4 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_GET_SHELL_SURFACE@

    __defined at:__ @river-window-management-v1-client-protocol.h 624:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_GET_SHELL_SURFACE :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_GET_SHELL_SURFACE =
  (5 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_EXIT_SESSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 625:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_EXIT_SESSION :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_EXIT_SESSION =
  (6 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_UNAVAILABLE_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 630:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_UNAVAILABLE_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_UNAVAILABLE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_FINISHED_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 634:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_FINISHED_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_FINISHED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_MANAGE_START_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 638:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_MANAGE_START_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_MANAGE_START_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_RENDER_START_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 642:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_RENDER_START_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_RENDER_START_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_SESSION_LOCKED_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 646:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_SESSION_LOCKED_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_SESSION_LOCKED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_SESSION_UNLOCKED_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 650:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_SESSION_UNLOCKED_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_SESSION_UNLOCKED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_WINDOW_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 654:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_WINDOW_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_WINDOW_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_OUTPUT_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 658:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_OUTPUT_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_OUTPUT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_SEAT_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 662:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_SEAT_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_SEAT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_STOP_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 667:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_STOP_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_STOP_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 671:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_MANAGE_FINISH_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 675:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_MANAGE_FINISH_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_MANAGE_FINISH_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_MANAGE_DIRTY_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 679:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_MANAGE_DIRTY_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_MANAGE_DIRTY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_RENDER_FINISH_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 683:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_RENDER_FINISH_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_RENDER_FINISH_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_GET_SHELL_SURFACE_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 687:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_GET_SHELL_SURFACE_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_GET_SHELL_SURFACE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_MANAGER_V1_EXIT_SESSION_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 691:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_MANAGER_V1_EXIT_SESSION_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_MANAGER_V1_EXIT_SESSION_SINCE_VERSION =
  (4 :: RIP.CInt)

{-| __C declaration:__ @enum river_window_v1_error@

    __defined at:__ @river-window-management-v1-client-protocol.h 853:6@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
newtype River_window_v1_error = River_window_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_window_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_window_v1_error where

  readRaw =
    \ptr0 ->
          pure River_window_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_window_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_window_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_window_v1_error instance RIP.Storable River_window_v1_error

deriving via RIP.CUInt instance RIP.Prim River_window_v1_error

instance CEnum.CEnum River_window_v1_error where

  type CEnumZ River_window_v1_error = RIP.CUInt

  toCEnum = River_window_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_WINDOW_V1_ERROR_NODE_EXISTS")
                                   , (1, RIP.singleton "RIVER_WINDOW_V1_ERROR_INVALID_DIMENSIONS")
                                   , (2, RIP.singleton "RIVER_WINDOW_V1_ERROR_INVALID_BORDER")
                                   , (3, RIP.singleton "RIVER_WINDOW_V1_ERROR_INVALID_CLIP_BOX")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_window_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_window_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_window_v1_error where

  minDeclaredValue = RIVER_WINDOW_V1_ERROR_NODE_EXISTS

  maxDeclaredValue =
    RIVER_WINDOW_V1_ERROR_INVALID_CLIP_BOX

instance Show River_window_v1_error where

  showsPrec = CEnum.shows

instance Read River_window_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_window_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_window_v1_error "unwrap" where

  type CFieldType River_window_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| window already has a node object

__C declaration:__ @RIVER_WINDOW_V1_ERROR_NODE_EXISTS@

__defined at:__ @river-window-management-v1-client-protocol.h 857:2@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_WINDOW_V1_ERROR_NODE_EXISTS :: River_window_v1_error
pattern RIVER_WINDOW_V1_ERROR_NODE_EXISTS = River_window_v1_error 0

{-| proposed dimensions out of bounds

__C declaration:__ @RIVER_WINDOW_V1_ERROR_INVALID_DIMENSIONS@

__defined at:__ @river-window-management-v1-client-protocol.h 861:2@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_WINDOW_V1_ERROR_INVALID_DIMENSIONS :: River_window_v1_error
pattern RIVER_WINDOW_V1_ERROR_INVALID_DIMENSIONS = River_window_v1_error 1

{-| invalid arg to set_borders

__C declaration:__ @RIVER_WINDOW_V1_ERROR_INVALID_BORDER@

__defined at:__ @river-window-management-v1-client-protocol.h 865:2@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_WINDOW_V1_ERROR_INVALID_BORDER :: River_window_v1_error
pattern RIVER_WINDOW_V1_ERROR_INVALID_BORDER = River_window_v1_error 2

{-| invalid arg to set_clip_box

__C declaration:__ @RIVER_WINDOW_V1_ERROR_INVALID_CLIP_BOX@

__defined at:__ @river-window-management-v1-client-protocol.h 869:2@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_WINDOW_V1_ERROR_INVALID_CLIP_BOX :: River_window_v1_error
pattern RIVER_WINDOW_V1_ERROR_INVALID_CLIP_BOX = River_window_v1_error 3

{-| __C declaration:__ @enum river_window_v1_decoration_hint@

    __defined at:__ @river-window-management-v1-client-protocol.h 875:6@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
newtype River_window_v1_decoration_hint = River_window_v1_decoration_hint
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_window_v1_decoration_hint where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_window_v1_decoration_hint where

  readRaw =
    \ptr0 ->
          pure River_window_v1_decoration_hint
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_window_v1_decoration_hint where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_window_v1_decoration_hint unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_window_v1_decoration_hint instance RIP.Storable River_window_v1_decoration_hint

deriving via RIP.CUInt instance RIP.Prim River_window_v1_decoration_hint

instance CEnum.CEnum River_window_v1_decoration_hint where

  type CEnumZ River_window_v1_decoration_hint =
    RIP.CUInt

  toCEnum = River_window_v1_decoration_hint

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_WINDOW_V1_DECORATION_HINT_ONLY_SUPPORTS_CSD")
                                   , (1, RIP.singleton "RIVER_WINDOW_V1_DECORATION_HINT_PREFERS_CSD")
                                   , (2, RIP.singleton "RIVER_WINDOW_V1_DECORATION_HINT_PREFERS_SSD")
                                   , (3, RIP.singleton "RIVER_WINDOW_V1_DECORATION_HINT_NO_PREFERENCE")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_window_v1_decoration_hint"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_window_v1_decoration_hint"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_window_v1_decoration_hint where

  minDeclaredValue =
    RIVER_WINDOW_V1_DECORATION_HINT_ONLY_SUPPORTS_CSD

  maxDeclaredValue =
    RIVER_WINDOW_V1_DECORATION_HINT_NO_PREFERENCE

instance Show River_window_v1_decoration_hint where

  showsPrec = CEnum.shows

instance Read River_window_v1_decoration_hint where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_window_v1_decoration_hint) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_window_v1_decoration_hint "unwrap" where

  type CFieldType River_window_v1_decoration_hint "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| only supports client side decoration

__C declaration:__ @RIVER_WINDOW_V1_DECORATION_HINT_ONLY_SUPPORTS_CSD@

__defined at:__ @river-window-management-v1-client-protocol.h 879:2@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_WINDOW_V1_DECORATION_HINT_ONLY_SUPPORTS_CSD :: River_window_v1_decoration_hint
pattern RIVER_WINDOW_V1_DECORATION_HINT_ONLY_SUPPORTS_CSD = River_window_v1_decoration_hint 0

{-| client side decoration preferred, both CSD and SSD supported

__C declaration:__ @RIVER_WINDOW_V1_DECORATION_HINT_PREFERS_CSD@

__defined at:__ @river-window-management-v1-client-protocol.h 883:2@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_WINDOW_V1_DECORATION_HINT_PREFERS_CSD :: River_window_v1_decoration_hint
pattern RIVER_WINDOW_V1_DECORATION_HINT_PREFERS_CSD = River_window_v1_decoration_hint 1

{-| server side decoration preferred, both CSD and SSD supported

__C declaration:__ @RIVER_WINDOW_V1_DECORATION_HINT_PREFERS_SSD@

__defined at:__ @river-window-management-v1-client-protocol.h 887:2@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_WINDOW_V1_DECORATION_HINT_PREFERS_SSD :: River_window_v1_decoration_hint
pattern RIVER_WINDOW_V1_DECORATION_HINT_PREFERS_SSD = River_window_v1_decoration_hint 2

{-| no preference, both CSD and SSD supported

__C declaration:__ @RIVER_WINDOW_V1_DECORATION_HINT_NO_PREFERENCE@

__defined at:__ @river-window-management-v1-client-protocol.h 891:2@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_WINDOW_V1_DECORATION_HINT_NO_PREFERENCE :: River_window_v1_decoration_hint
pattern RIVER_WINDOW_V1_DECORATION_HINT_NO_PREFERENCE = River_window_v1_decoration_hint 3

{-| __C declaration:__ @enum river_window_v1_edges@

    __defined at:__ @river-window-management-v1-client-protocol.h 897:6@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
newtype River_window_v1_edges = River_window_v1_edges
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_window_v1_edges where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_window_v1_edges where

  readRaw =
    \ptr0 ->
          pure River_window_v1_edges
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_window_v1_edges where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_window_v1_edges unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_window_v1_edges instance RIP.Storable River_window_v1_edges

deriving via RIP.CUInt instance RIP.Prim River_window_v1_edges

instance CEnum.CEnum River_window_v1_edges where

  type CEnumZ River_window_v1_edges = RIP.CUInt

  toCEnum = River_window_v1_edges

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_WINDOW_V1_EDGES_NONE")
                                   , (1, RIP.singleton "RIVER_WINDOW_V1_EDGES_TOP")
                                   , (2, RIP.singleton "RIVER_WINDOW_V1_EDGES_BOTTOM")
                                   , (4, RIP.singleton "RIVER_WINDOW_V1_EDGES_LEFT")
                                   , (8, RIP.singleton "RIVER_WINDOW_V1_EDGES_RIGHT")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_window_v1_edges"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_window_v1_edges"

instance Show River_window_v1_edges where

  showsPrec = CEnum.shows

instance Read River_window_v1_edges where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_window_v1_edges) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_window_v1_edges "unwrap" where

  type CFieldType River_window_v1_edges "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_WINDOW_V1_EDGES_NONE@

    __defined at:__ @river-window-management-v1-client-protocol.h 898:2@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_WINDOW_V1_EDGES_NONE :: River_window_v1_edges
pattern RIVER_WINDOW_V1_EDGES_NONE = River_window_v1_edges 0

{-| __C declaration:__ @RIVER_WINDOW_V1_EDGES_TOP@

    __defined at:__ @river-window-management-v1-client-protocol.h 899:2@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_WINDOW_V1_EDGES_TOP :: River_window_v1_edges
pattern RIVER_WINDOW_V1_EDGES_TOP = River_window_v1_edges 1

{-| __C declaration:__ @RIVER_WINDOW_V1_EDGES_BOTTOM@

    __defined at:__ @river-window-management-v1-client-protocol.h 900:2@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_WINDOW_V1_EDGES_BOTTOM :: River_window_v1_edges
pattern RIVER_WINDOW_V1_EDGES_BOTTOM = River_window_v1_edges 2

{-| __C declaration:__ @RIVER_WINDOW_V1_EDGES_LEFT@

    __defined at:__ @river-window-management-v1-client-protocol.h 901:2@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_WINDOW_V1_EDGES_LEFT :: River_window_v1_edges
pattern RIVER_WINDOW_V1_EDGES_LEFT = River_window_v1_edges 4

{-| __C declaration:__ @RIVER_WINDOW_V1_EDGES_RIGHT@

    __defined at:__ @river-window-management-v1-client-protocol.h 902:2@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_WINDOW_V1_EDGES_RIGHT :: River_window_v1_edges
pattern RIVER_WINDOW_V1_EDGES_RIGHT = River_window_v1_edges 8

{-| __C declaration:__ @enum river_window_v1_capabilities@

    __defined at:__ @river-window-management-v1-client-protocol.h 908:6@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
newtype River_window_v1_capabilities = River_window_v1_capabilities
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_window_v1_capabilities where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_window_v1_capabilities where

  readRaw =
    \ptr0 ->
          pure River_window_v1_capabilities
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_window_v1_capabilities where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_window_v1_capabilities unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_window_v1_capabilities instance RIP.Storable River_window_v1_capabilities

deriving via RIP.CUInt instance RIP.Prim River_window_v1_capabilities

instance CEnum.CEnum River_window_v1_capabilities where

  type CEnumZ River_window_v1_capabilities = RIP.CUInt

  toCEnum = River_window_v1_capabilities

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (1, RIP.singleton "RIVER_WINDOW_V1_CAPABILITIES_WINDOW_MENU")
                                   , (2, RIP.singleton "RIVER_WINDOW_V1_CAPABILITIES_MAXIMIZE")
                                   , (4, RIP.singleton "RIVER_WINDOW_V1_CAPABILITIES_FULLSCREEN")
                                   , (8, RIP.singleton "RIVER_WINDOW_V1_CAPABILITIES_MINIMIZE")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_window_v1_capabilities"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_window_v1_capabilities"

instance Show River_window_v1_capabilities where

  showsPrec = CEnum.shows

instance Read River_window_v1_capabilities where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_window_v1_capabilities) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_window_v1_capabilities "unwrap" where

  type CFieldType River_window_v1_capabilities "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_WINDOW_V1_CAPABILITIES_WINDOW_MENU@

    __defined at:__ @river-window-management-v1-client-protocol.h 909:2@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_WINDOW_V1_CAPABILITIES_WINDOW_MENU :: River_window_v1_capabilities
pattern RIVER_WINDOW_V1_CAPABILITIES_WINDOW_MENU = River_window_v1_capabilities 1

{-| __C declaration:__ @RIVER_WINDOW_V1_CAPABILITIES_MAXIMIZE@

    __defined at:__ @river-window-management-v1-client-protocol.h 910:2@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_WINDOW_V1_CAPABILITIES_MAXIMIZE :: River_window_v1_capabilities
pattern RIVER_WINDOW_V1_CAPABILITIES_MAXIMIZE = River_window_v1_capabilities 2

{-| __C declaration:__ @RIVER_WINDOW_V1_CAPABILITIES_FULLSCREEN@

    __defined at:__ @river-window-management-v1-client-protocol.h 911:2@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_WINDOW_V1_CAPABILITIES_FULLSCREEN :: River_window_v1_capabilities
pattern RIVER_WINDOW_V1_CAPABILITIES_FULLSCREEN = River_window_v1_capabilities 4

{-| __C declaration:__ @RIVER_WINDOW_V1_CAPABILITIES_MINIMIZE@

    __defined at:__ @river-window-management-v1-client-protocol.h 912:2@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_WINDOW_V1_CAPABILITIES_MINIMIZE :: River_window_v1_capabilities
pattern RIVER_WINDOW_V1_CAPABILITIES_MINIMIZE = River_window_v1_capabilities 8

{-|

  > iface_river_window_v1

  > river_window_v1_listener

__C declaration:__ @struct river_window_v1_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 920:8@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
data River_window_v1_listener = River_window_v1_listener
  { closed :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ())
    {- ^ the window has been closed

       The window has been closed by the server, perhaps due to an xdg_toplevel.close request or similar.

       The server will send no further events on this object and ignore any request other than river_window_v1.destroy made after this event is sent. The client should destroy this object with the river_window_v1.destroy request to free up resources.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

    __C declaration:__ @closed@

    __defined at:__ @river-window-management-v1-client-protocol.h 935:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , dimensions_hint :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ the window's preferred min/max dimensions

       This event informs the window manager of the window's preferred min/max dimensions. These preferences are a hint, and the window manager is free to propose dimensions outside of these bounds.

       All min/max width/height values must be strictly greater than or equal to 0. A value of 0 indicates that the window has no preference for that value.

       The min_width/min_height must be strictly less than or equal to the max_width/max_height.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       [__@min_width@ /(input)/__]: minimum width

       [__@min_height@ /(input)/__]: minimum height

       [__@max_width@ /(input)/__]: maximum width

       [__@max_height@ /(input)/__]: maximum height

    __C declaration:__ @dimensions_hint@

    __defined at:__ @river-window-management-v1-client-protocol.h 959:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , dimensions :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ window dimensions

       This event indicates the dimensions of the window in the compositor's logical coordinate space. The width and height must be strictly greater than zero.

       Note that the dimensions of a river_window_v1 refer to the dimensions of the window content and are unaffected by the presence of borders or decoration surfaces.

       This event is sent as part of a render sequence before the render_start event.

       It may be sent due to a propose_dimensions or fullscreen request in a previous manage sequence or because a window independently decides to change its dimensions.

       The window will not be displayed until the first dimensions event is received and the render sequence is finished.

       [__@width@ /(input)/__]: window content width

       [__@height@ /(input)/__]: window content height

    __C declaration:__ @dimensions@

    __defined at:__ @river-window-management-v1-client-protocol.h 988:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , app_id :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ the window set an application ID

       The window set an application ID.

       The app_id argument will be null if the window has never set an application ID or if the window cleared its application ID. (Xwayland windows may do this for example, though xdg-toplevels may not.)

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       [__@app_id@ /(input)/__]: window application ID

    __C declaration:__ @app_id@

    __defined at:__ @river-window-management-v1-client-protocol.h 1006:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , title :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ the window set a title

       The window set a title.

       The title argument will be null if the window has never set a title or if the window cleared its title. (Xwayland windows may do this for example, though xdg-toplevels may not.)

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       [__@title@ /(input)/__]: window title

    __C declaration:__ @title@

    __defined at:__ @river-window-management-v1-client-protocol.h 1022:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , parent :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_window_v1) -> IO ())
    {- ^ the window set a parent

       The window set a parent window. If this event is never received or if the parent argument is null then the window has no parent.

       A surface with a parent set might be a dialog, file picker, or similar for the parent window.

       Child windows should generally be rendered directly above their parent.

       The compositor must guarantee that there are no loops in the window tree: a parent must not be the descendant of one of its children.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       [__@parent@ /(input)/__]: parent window, if any

    __C declaration:__ @parent@

    __defined at:__ @river-window-management-v1-client-protocol.h 1046:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , decoration_hint :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ supported/preferred decoration style

       Information from the window about the supported and preferred client side/server side decoration options.

       This event may be sent multiple times over the lifetime of the window if the window changes its preferences.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       [__@hint@ /(input)/__]: decoration hint

    __C declaration:__ @decoration_hint@

    __defined at:__ @river-window-management-v1-client-protocol.h 1062:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , pointer_move_requested :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> IO ())
    {- ^ window requested interactive pointer move

       This event informs the window manager that the window has requested to be interactively moved using the pointer. The seat argument indicates the seat for the move.

       The xdg-shell protocol for example allows windows to request that an interactive move be started, perhaps when a client-side rendered titlebar is dragged.

       The window manager may use the river_seat_v1.op_start_pointer request to interactively move the window or ignore this event entirely.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       [__@seat@ /(input)/__]: requested seat

    __C declaration:__ @pointer_move_requested@

    __defined at:__ @river-window-management-v1-client-protocol.h 1084:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , pointer_resize_requested :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ window requested interactive pointer resize

       This event informs the window manager that the window has requested to be interactively resized using the pointer. The seat argument indicates the seat for the resize.

       The edges argument indicates which edges the window has requested to be resized from. The edges argument will never be none and will never have both top and bottom or both left and right edges set.

       The xdg-shell protocol for example allows windows to request that an interactive resize be started, perhaps when the corner of client-side rendered decorations is dragged.

       The window manager may use the river_seat_v1.op_start_pointer request to interactively resize the window or ignore this event entirely.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       [__@seat@ /(input)/__]: requested seat

       [__@edges@ /(input)/__]: requested edges

    __C declaration:__ @pointer_resize_requested@

    __defined at:__ @river-window-management-v1-client-protocol.h 1112:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , show_window_menu_requested :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ window requested that the window menu be shown

       The xdg-shell protocol for example allows windows to request that a window menu be shown, for example when the user right clicks on client side window decorations.

       A window menu might include options to maximize or minimize the window.

       The window manager is free to ignore this request and decide what the window menu contains if it does choose to show one.

       The x and y arguments indicate where the window requested that the window menu be shown.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       [__@x@ /(input)/__]: x offset from top left corner

       [__@y@ /(input)/__]: y offset from top left corner

    __C declaration:__ @show_window_menu_requested@

    __defined at:__ @river-window-management-v1-client-protocol.h 1137:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , maximize_requested :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ())
    {- ^ the window requested to be maximized

       The xdg-shell protocol for example allows windows to request to be maximized.

       The window manager is free to honor this request using river_window_v1.inform_maximize or ignore it.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

    __C declaration:__ @maximize_requested@

    __defined at:__ @river-window-management-v1-client-protocol.h 1153:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , unmaximize_requested :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ())
    {- ^ the window requested to be unmaximized

       The xdg-shell protocol for example allows windows to request to be unmaximized.

       The window manager is free to honor this request using river_window_v1.inform_unmaximized or ignore it.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

    __C declaration:__ @unmaximize_requested@

    __defined at:__ @river-window-management-v1-client-protocol.h 1167:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , fullscreen_requested :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_output_v1) -> IO ())
    {- ^ the window requested to be fullscreen

       The xdg-shell protocol for example allows windows to request that they be made fullscreen and allows them to provide an optional output hint.

       If the output argument is null, the window has no preference and the window manager should choose an output.

       The window manager is free to honor this request using river_window_v1.fullscreen or ignore it.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       [__@output@ /(input)/__]: fullscreen output requested

    __C declaration:__ @fullscreen_requested@

    __defined at:__ @river-window-management-v1-client-protocol.h 1186:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , exit_fullscreen_requested :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ())
    {- ^ the window requested to exit fullscreen

       The xdg-shell protocol for example allows windows to request to exit fullscreen.

       The window manager is free to honor this request using river_window_v1.exit_fullscreen or ignore it.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

    __C declaration:__ @exit_fullscreen_requested@

    __defined at:__ @river-window-management-v1-client-protocol.h 1201:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , minimize_requested :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ())
    {- ^ the window requested to be minimized

       The xdg-shell protocol for example allows windows to request to be minimized.

       The window manager is free to ignore this request, hide the window, or do whatever else it chooses.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

    __C declaration:__ @minimize_requested@

    __defined at:__ @river-window-management-v1-client-protocol.h 1215:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , unreliable_pid :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ unreliable PID of the window's creator

       This event gives an unreliable PID of the process that created the window. Obtaining this information is inherently racy due to PID reuse. Therefore, this PID must not be used for anything security sensitive.

       Note also that a single process may create multiple windows, so there is not necessarily a 1-to-1 mapping from PID to window. Multiple windows may have the same PID.

       This event is sent once when the river_window_v1 is created and never sent again.

       [__@unreliable_pid@ /(input)/__]: unreliable PID

       @since:  2

    __C declaration:__ @unreliable_pid@

    __defined at:__ @river-window-management-v1-client-protocol.h 1234:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , presentation_hint :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ presentation hint set by the window

       This event communicates the window's preferred presentation mode.

       This event will be followed by a render_start event after all other new state has been sent by the server.

       [__@hint@ /(input)/__]: presentation hint

       @since:  4

    __C declaration:__ @presentation_hint@

    __defined at:__ @river-window-management-v1-client-protocol.h 1248:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , identifier :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ unique window identifier

       The identifier is a string that contains up to 32 printable ASCII bytes. The identifier must not be an empty string.

       It is compositor policy how the identifier is generated, but the following properties must be upheld:

       1. The identifier must uniquely identify the window. Two windows must not share the same identifier.

       2. The identifier must not be reused. This avoids races around window creation/destruction when identifiers are used in out-of-band IPC.

       If the compositor implements the ext-foreign-toplevel-list-v1 protocol, the river_window_v1.identifier event must match the corresponding ext_foreign_toplevel_handle_v1.identifier event.

       This event is sent once when the river_window_v1 is created and never sent again.

       [__@identifier@ /(input)/__]: unique identifier

       @since:  4

    __C declaration:__ @identifier@

    __defined at:__ @river-window-management-v1-client-protocol.h 1276:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize River_window_v1_listener where

  staticSizeOf = \_ -> (144 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw River_window_v1_listener where

  readRaw =
    \ptr0 ->
          pure River_window_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"closed") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"dimensions_hint") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"dimensions") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"app_id") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"title") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"parent") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"decoration_hint") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"pointer_move_requested") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"pointer_resize_requested") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"show_window_menu_requested") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"maximize_requested") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"unmaximize_requested") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"fullscreen_requested") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"exit_fullscreen_requested") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"minimize_requested") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"unreliable_pid") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"presentation_hint") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"identifier") ptr0

instance Marshal.WriteRaw River_window_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_window_v1_listener
            closed2
            dimensions_hint3
            dimensions4
            app_id5
            title6
            parent7
            decoration_hint8
            pointer_move_requested9
            pointer_resize_requested10
            show_window_menu_requested11
            maximize_requested12
            unmaximize_requested13
            fullscreen_requested14
            exit_fullscreen_requested15
            minimize_requested16
            unreliable_pid17
            presentation_hint18
            identifier19 ->
                 HasCField.writeRaw (RIP.Proxy @"closed") ptr0 closed2
              >> HasCField.writeRaw (RIP.Proxy @"dimensions_hint") ptr0 dimensions_hint3
              >> HasCField.writeRaw (RIP.Proxy @"dimensions") ptr0 dimensions4
              >> HasCField.writeRaw (RIP.Proxy @"app_id") ptr0 app_id5
              >> HasCField.writeRaw (RIP.Proxy @"title") ptr0 title6
              >> HasCField.writeRaw (RIP.Proxy @"parent") ptr0 parent7
              >> HasCField.writeRaw (RIP.Proxy @"decoration_hint") ptr0 decoration_hint8
              >> HasCField.writeRaw (RIP.Proxy @"pointer_move_requested") ptr0 pointer_move_requested9
              >> HasCField.writeRaw (RIP.Proxy @"pointer_resize_requested") ptr0 pointer_resize_requested10
              >> HasCField.writeRaw (RIP.Proxy @"show_window_menu_requested") ptr0 show_window_menu_requested11
              >> HasCField.writeRaw (RIP.Proxy @"maximize_requested") ptr0 maximize_requested12
              >> HasCField.writeRaw (RIP.Proxy @"unmaximize_requested") ptr0 unmaximize_requested13
              >> HasCField.writeRaw (RIP.Proxy @"fullscreen_requested") ptr0 fullscreen_requested14
              >> HasCField.writeRaw (RIP.Proxy @"exit_fullscreen_requested") ptr0 exit_fullscreen_requested15
              >> HasCField.writeRaw (RIP.Proxy @"minimize_requested") ptr0 minimize_requested16
              >> HasCField.writeRaw (RIP.Proxy @"unreliable_pid") ptr0 unreliable_pid17
              >> HasCField.writeRaw (RIP.Proxy @"presentation_hint") ptr0 presentation_hint18
              >> HasCField.writeRaw (RIP.Proxy @"identifier") ptr0 identifier19

deriving via Marshal.EquivStorable River_window_v1_listener instance RIP.Storable River_window_v1_listener

instance HasCField.HasCField River_window_v1_listener "closed" where

  type CFieldType River_window_v1_listener "closed" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ()))
         ) => RIP.HasField "closed" (RIP.Ptr River_window_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"closed")

instance HasCField.HasCField River_window_v1_listener "dimensions_hint" where

  type CFieldType River_window_v1_listener "dimensions_hint" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "dimensions_hint" (RIP.Ptr River_window_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"dimensions_hint")

instance HasCField.HasCField River_window_v1_listener "dimensions" where

  type CFieldType River_window_v1_listener "dimensions" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "dimensions" (RIP.Ptr River_window_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"dimensions")

instance HasCField.HasCField River_window_v1_listener "app_id" where

  type CFieldType River_window_v1_listener "app_id" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "app_id" (RIP.Ptr River_window_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"app_id")

instance HasCField.HasCField River_window_v1_listener "title" where

  type CFieldType River_window_v1_listener "title" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "title" (RIP.Ptr River_window_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"title")

instance HasCField.HasCField River_window_v1_listener "parent" where

  type CFieldType River_window_v1_listener "parent" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_window_v1) -> IO ())

  offset# = \_ -> \_ -> 40

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_window_v1) -> IO ()))
         ) => RIP.HasField "parent" (RIP.Ptr River_window_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"parent")

instance HasCField.HasCField River_window_v1_listener "decoration_hint" where

  type CFieldType River_window_v1_listener "decoration_hint" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 48

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "decoration_hint" (RIP.Ptr River_window_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"decoration_hint")

instance HasCField.HasCField River_window_v1_listener "pointer_move_requested" where

  type CFieldType River_window_v1_listener "pointer_move_requested" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> IO ())

  offset# = \_ -> \_ -> 56

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> IO ()))
         ) => RIP.HasField "pointer_move_requested" (RIP.Ptr River_window_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"pointer_move_requested")

instance HasCField.HasCField River_window_v1_listener "pointer_resize_requested" where

  type CFieldType River_window_v1_listener "pointer_resize_requested" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 64

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "pointer_resize_requested" (RIP.Ptr River_window_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"pointer_resize_requested")

instance HasCField.HasCField River_window_v1_listener "show_window_menu_requested" where

  type CFieldType River_window_v1_listener "show_window_menu_requested" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 72

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "show_window_menu_requested" (RIP.Ptr River_window_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"show_window_menu_requested")

instance HasCField.HasCField River_window_v1_listener "maximize_requested" where

  type CFieldType River_window_v1_listener "maximize_requested" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ())

  offset# = \_ -> \_ -> 80

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ()))
         ) => RIP.HasField "maximize_requested" (RIP.Ptr River_window_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"maximize_requested")

instance HasCField.HasCField River_window_v1_listener "unmaximize_requested" where

  type CFieldType River_window_v1_listener "unmaximize_requested" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ())

  offset# = \_ -> \_ -> 88

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ()))
         ) => RIP.HasField "unmaximize_requested" (RIP.Ptr River_window_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"unmaximize_requested")

instance HasCField.HasCField River_window_v1_listener "fullscreen_requested" where

  type CFieldType River_window_v1_listener "fullscreen_requested" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_output_v1) -> IO ())

  offset# = \_ -> \_ -> 96

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_output_v1) -> IO ()))
         ) => RIP.HasField "fullscreen_requested" (RIP.Ptr River_window_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"fullscreen_requested")

instance HasCField.HasCField River_window_v1_listener "exit_fullscreen_requested" where

  type CFieldType River_window_v1_listener "exit_fullscreen_requested" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ())

  offset# = \_ -> \_ -> 104

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ()))
         ) => RIP.HasField "exit_fullscreen_requested" (RIP.Ptr River_window_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"exit_fullscreen_requested")

instance HasCField.HasCField River_window_v1_listener "minimize_requested" where

  type CFieldType River_window_v1_listener "minimize_requested" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ())

  offset# = \_ -> \_ -> 112

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ()))
         ) => RIP.HasField "minimize_requested" (RIP.Ptr River_window_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"minimize_requested")

instance HasCField.HasCField River_window_v1_listener "unreliable_pid" where

  type CFieldType River_window_v1_listener "unreliable_pid" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 120

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "unreliable_pid" (RIP.Ptr River_window_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"unreliable_pid")

instance HasCField.HasCField River_window_v1_listener "presentation_hint" where

  type CFieldType River_window_v1_listener "presentation_hint" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 128

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "presentation_hint" (RIP.Ptr River_window_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"presentation_hint")

instance HasCField.HasCField River_window_v1_listener "identifier" where

  type CFieldType River_window_v1_listener "identifier" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 136

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "identifier" (RIP.Ptr River_window_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"identifier")

{-| __C declaration:__ @macro RIVER_WINDOW_V1_DESTROY@

    __defined at:__ @river-window-management-v1-client-protocol.h 1292:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_DESTROY :: RIP.CInt
rIVER_WINDOW_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_CLOSE@

    __defined at:__ @river-window-management-v1-client-protocol.h 1293:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_CLOSE :: RIP.CInt
rIVER_WINDOW_V1_CLOSE = (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_GET_NODE@

    __defined at:__ @river-window-management-v1-client-protocol.h 1294:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_GET_NODE :: RIP.CInt
rIVER_WINDOW_V1_GET_NODE = (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_PROPOSE_DIMENSIONS@

    __defined at:__ @river-window-management-v1-client-protocol.h 1295:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_PROPOSE_DIMENSIONS :: RIP.CInt
rIVER_WINDOW_V1_PROPOSE_DIMENSIONS = (3 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_HIDE@

    __defined at:__ @river-window-management-v1-client-protocol.h 1296:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_HIDE :: RIP.CInt
rIVER_WINDOW_V1_HIDE = (4 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_SHOW@

    __defined at:__ @river-window-management-v1-client-protocol.h 1297:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_SHOW :: RIP.CInt
rIVER_WINDOW_V1_SHOW = (5 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_USE_CSD@

    __defined at:__ @river-window-management-v1-client-protocol.h 1298:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_USE_CSD :: RIP.CInt
rIVER_WINDOW_V1_USE_CSD = (6 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_USE_SSD@

    __defined at:__ @river-window-management-v1-client-protocol.h 1299:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_USE_SSD :: RIP.CInt
rIVER_WINDOW_V1_USE_SSD = (7 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_SET_BORDERS@

    __defined at:__ @river-window-management-v1-client-protocol.h 1300:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_SET_BORDERS :: RIP.CInt
rIVER_WINDOW_V1_SET_BORDERS = (8 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_SET_TILED@

    __defined at:__ @river-window-management-v1-client-protocol.h 1301:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_SET_TILED :: RIP.CInt
rIVER_WINDOW_V1_SET_TILED = (9 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_GET_DECORATION_ABOVE@

    __defined at:__ @river-window-management-v1-client-protocol.h 1302:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_GET_DECORATION_ABOVE :: RIP.CInt
rIVER_WINDOW_V1_GET_DECORATION_ABOVE =
  (10 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_GET_DECORATION_BELOW@

    __defined at:__ @river-window-management-v1-client-protocol.h 1303:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_GET_DECORATION_BELOW :: RIP.CInt
rIVER_WINDOW_V1_GET_DECORATION_BELOW =
  (11 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_INFORM_RESIZE_START@

    __defined at:__ @river-window-management-v1-client-protocol.h 1304:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_INFORM_RESIZE_START :: RIP.CInt
rIVER_WINDOW_V1_INFORM_RESIZE_START =
  (12 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_INFORM_RESIZE_END@

    __defined at:__ @river-window-management-v1-client-protocol.h 1305:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_INFORM_RESIZE_END :: RIP.CInt
rIVER_WINDOW_V1_INFORM_RESIZE_END = (13 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_SET_CAPABILITIES@

    __defined at:__ @river-window-management-v1-client-protocol.h 1306:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_SET_CAPABILITIES :: RIP.CInt
rIVER_WINDOW_V1_SET_CAPABILITIES = (14 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_INFORM_MAXIMIZED@

    __defined at:__ @river-window-management-v1-client-protocol.h 1307:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_INFORM_MAXIMIZED :: RIP.CInt
rIVER_WINDOW_V1_INFORM_MAXIMIZED = (15 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_INFORM_UNMAXIMIZED@

    __defined at:__ @river-window-management-v1-client-protocol.h 1308:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_INFORM_UNMAXIMIZED :: RIP.CInt
rIVER_WINDOW_V1_INFORM_UNMAXIMIZED = (16 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_INFORM_FULLSCREEN@

    __defined at:__ @river-window-management-v1-client-protocol.h 1309:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_INFORM_FULLSCREEN :: RIP.CInt
rIVER_WINDOW_V1_INFORM_FULLSCREEN = (17 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_INFORM_NOT_FULLSCREEN@

    __defined at:__ @river-window-management-v1-client-protocol.h 1310:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_INFORM_NOT_FULLSCREEN :: RIP.CInt
rIVER_WINDOW_V1_INFORM_NOT_FULLSCREEN =
  (18 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_FULLSCREEN@

    __defined at:__ @river-window-management-v1-client-protocol.h 1311:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_FULLSCREEN :: RIP.CInt
rIVER_WINDOW_V1_FULLSCREEN = (19 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_EXIT_FULLSCREEN@

    __defined at:__ @river-window-management-v1-client-protocol.h 1312:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_EXIT_FULLSCREEN :: RIP.CInt
rIVER_WINDOW_V1_EXIT_FULLSCREEN = (20 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_SET_CLIP_BOX@

    __defined at:__ @river-window-management-v1-client-protocol.h 1313:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_SET_CLIP_BOX :: RIP.CInt
rIVER_WINDOW_V1_SET_CLIP_BOX = (21 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_SET_CONTENT_CLIP_BOX@

    __defined at:__ @river-window-management-v1-client-protocol.h 1314:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_SET_CONTENT_CLIP_BOX :: RIP.CInt
rIVER_WINDOW_V1_SET_CONTENT_CLIP_BOX =
  (22 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_SET_DIMENSION_BOUNDS@

    __defined at:__ @river-window-management-v1-client-protocol.h 1315:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_SET_DIMENSION_BOUNDS :: RIP.CInt
rIVER_WINDOW_V1_SET_DIMENSION_BOUNDS =
  (23 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_CLOSED_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1320:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_CLOSED_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_CLOSED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_DIMENSIONS_HINT_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1324:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_DIMENSIONS_HINT_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_DIMENSIONS_HINT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_DIMENSIONS_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1328:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_DIMENSIONS_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_DIMENSIONS_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_APP_ID_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1332:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_APP_ID_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_APP_ID_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_TITLE_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1336:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_TITLE_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_TITLE_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_PARENT_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1340:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_PARENT_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_PARENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_DECORATION_HINT_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1344:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_DECORATION_HINT_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_DECORATION_HINT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_POINTER_MOVE_REQUESTED_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1348:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_POINTER_MOVE_REQUESTED_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_POINTER_MOVE_REQUESTED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_POINTER_RESIZE_REQUESTED_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1352:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_POINTER_RESIZE_REQUESTED_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_POINTER_RESIZE_REQUESTED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_SHOW_WINDOW_MENU_REQUESTED_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1356:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_SHOW_WINDOW_MENU_REQUESTED_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_SHOW_WINDOW_MENU_REQUESTED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_MAXIMIZE_REQUESTED_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1360:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_MAXIMIZE_REQUESTED_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_MAXIMIZE_REQUESTED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_UNMAXIMIZE_REQUESTED_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1364:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_UNMAXIMIZE_REQUESTED_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_UNMAXIMIZE_REQUESTED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_FULLSCREEN_REQUESTED_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1368:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_FULLSCREEN_REQUESTED_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_FULLSCREEN_REQUESTED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_EXIT_FULLSCREEN_REQUESTED_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1372:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_EXIT_FULLSCREEN_REQUESTED_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_EXIT_FULLSCREEN_REQUESTED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_MINIMIZE_REQUESTED_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1376:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_MINIMIZE_REQUESTED_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_MINIMIZE_REQUESTED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_UNRELIABLE_PID_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1380:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_UNRELIABLE_PID_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_UNRELIABLE_PID_SINCE_VERSION =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_PRESENTATION_HINT_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1384:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_PRESENTATION_HINT_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_PRESENTATION_HINT_SINCE_VERSION =
  (4 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_IDENTIFIER_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1388:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_IDENTIFIER_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_IDENTIFIER_SINCE_VERSION =
  (4 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1393:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_CLOSE_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1397:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_CLOSE_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_CLOSE_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_GET_NODE_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1401:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_GET_NODE_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_GET_NODE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_PROPOSE_DIMENSIONS_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1405:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_PROPOSE_DIMENSIONS_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_PROPOSE_DIMENSIONS_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_HIDE_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1409:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_HIDE_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_HIDE_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_SHOW_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1413:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_SHOW_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_SHOW_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_USE_CSD_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1417:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_USE_CSD_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_USE_CSD_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_USE_SSD_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1421:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_USE_SSD_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_USE_SSD_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_SET_BORDERS_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1425:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_SET_BORDERS_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_SET_BORDERS_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_SET_TILED_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1429:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_SET_TILED_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_SET_TILED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_GET_DECORATION_ABOVE_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1433:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_GET_DECORATION_ABOVE_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_GET_DECORATION_ABOVE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_GET_DECORATION_BELOW_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1437:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_GET_DECORATION_BELOW_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_GET_DECORATION_BELOW_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_INFORM_RESIZE_START_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1441:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_INFORM_RESIZE_START_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_INFORM_RESIZE_START_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_INFORM_RESIZE_END_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1445:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_INFORM_RESIZE_END_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_INFORM_RESIZE_END_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_SET_CAPABILITIES_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1449:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_SET_CAPABILITIES_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_SET_CAPABILITIES_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_INFORM_MAXIMIZED_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1453:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_INFORM_MAXIMIZED_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_INFORM_MAXIMIZED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_INFORM_UNMAXIMIZED_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1457:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_INFORM_UNMAXIMIZED_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_INFORM_UNMAXIMIZED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_INFORM_FULLSCREEN_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1461:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_INFORM_FULLSCREEN_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_INFORM_FULLSCREEN_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_INFORM_NOT_FULLSCREEN_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1465:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_INFORM_NOT_FULLSCREEN_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_INFORM_NOT_FULLSCREEN_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_FULLSCREEN_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1469:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_FULLSCREEN_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_FULLSCREEN_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_EXIT_FULLSCREEN_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1473:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_EXIT_FULLSCREEN_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_EXIT_FULLSCREEN_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_SET_CLIP_BOX_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1477:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_SET_CLIP_BOX_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_SET_CLIP_BOX_SINCE_VERSION =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_SET_CONTENT_CLIP_BOX_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1481:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_SET_CONTENT_CLIP_BOX_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_SET_CONTENT_CLIP_BOX_SINCE_VERSION =
  (3 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_WINDOW_V1_SET_DIMENSION_BOUNDS_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 1485:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_WINDOW_V1_SET_DIMENSION_BOUNDS_SINCE_VERSION :: RIP.CInt
rIVER_WINDOW_V1_SET_DIMENSION_BOUNDS_SINCE_VERSION =
  (4 :: RIP.CInt)

{-| __C declaration:__ @enum river_decoration_v1_error@

    __defined at:__ @river-window-management-v1-client-protocol.h 2071:6@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
newtype River_decoration_v1_error = River_decoration_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_decoration_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_decoration_v1_error where

  readRaw =
    \ptr0 ->
          pure River_decoration_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_decoration_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_decoration_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_decoration_v1_error instance RIP.Storable River_decoration_v1_error

deriving via RIP.CUInt instance RIP.Prim River_decoration_v1_error

instance CEnum.CEnum River_decoration_v1_error where

  type CEnumZ River_decoration_v1_error = RIP.CUInt

  toCEnum = River_decoration_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(0, RIP.singleton "RIVER_DECORATION_V1_ERROR_NO_COMMIT")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_decoration_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_decoration_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_decoration_v1_error where

  minDeclaredValue =
    RIVER_DECORATION_V1_ERROR_NO_COMMIT

  maxDeclaredValue =
    RIVER_DECORATION_V1_ERROR_NO_COMMIT

instance Show River_decoration_v1_error where

  showsPrec = CEnum.shows

instance Read River_decoration_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_decoration_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_decoration_v1_error "unwrap" where

  type CFieldType River_decoration_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| failed to commit the surface before the window manager commit

__C declaration:__ @RIVER_DECORATION_V1_ERROR_NO_COMMIT@

__defined at:__ @river-window-management-v1-client-protocol.h 2075:2@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_DECORATION_V1_ERROR_NO_COMMIT :: River_decoration_v1_error
pattern RIVER_DECORATION_V1_ERROR_NO_COMMIT = River_decoration_v1_error 0

{-| __C declaration:__ @macro RIVER_DECORATION_V1_DESTROY@

    __defined at:__ @river-window-management-v1-client-protocol.h 2079:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_DECORATION_V1_DESTROY :: RIP.CInt
rIVER_DECORATION_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_DECORATION_V1_SET_OFFSET@

    __defined at:__ @river-window-management-v1-client-protocol.h 2080:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_DECORATION_V1_SET_OFFSET :: RIP.CInt
rIVER_DECORATION_V1_SET_OFFSET = (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_DECORATION_V1_SYNC_NEXT_COMMIT@

    __defined at:__ @river-window-management-v1-client-protocol.h 2081:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_DECORATION_V1_SYNC_NEXT_COMMIT :: RIP.CInt
rIVER_DECORATION_V1_SYNC_NEXT_COMMIT =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_DECORATION_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2087:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_DECORATION_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_DECORATION_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_DECORATION_V1_SET_OFFSET_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2091:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_DECORATION_V1_SET_OFFSET_SINCE_VERSION :: RIP.CInt
rIVER_DECORATION_V1_SET_OFFSET_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_DECORATION_V1_SYNC_NEXT_COMMIT_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2095:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_DECORATION_V1_SYNC_NEXT_COMMIT_SINCE_VERSION :: RIP.CInt
rIVER_DECORATION_V1_SYNC_NEXT_COMMIT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @enum river_shell_surface_v1_error@

    __defined at:__ @river-window-management-v1-client-protocol.h 2172:6@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
newtype River_shell_surface_v1_error = River_shell_surface_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_shell_surface_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_shell_surface_v1_error where

  readRaw =
    \ptr0 ->
          pure River_shell_surface_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_shell_surface_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_shell_surface_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_shell_surface_v1_error instance RIP.Storable River_shell_surface_v1_error

deriving via RIP.CUInt instance RIP.Prim River_shell_surface_v1_error

instance CEnum.CEnum River_shell_surface_v1_error where

  type CEnumZ River_shell_surface_v1_error = RIP.CUInt

  toCEnum = River_shell_surface_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_SHELL_SURFACE_V1_ERROR_NODE_EXISTS")
                                   , (1, RIP.singleton "RIVER_SHELL_SURFACE_V1_ERROR_NO_COMMIT")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_shell_surface_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_shell_surface_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_shell_surface_v1_error where

  minDeclaredValue =
    RIVER_SHELL_SURFACE_V1_ERROR_NODE_EXISTS

  maxDeclaredValue =
    RIVER_SHELL_SURFACE_V1_ERROR_NO_COMMIT

instance Show River_shell_surface_v1_error where

  showsPrec = CEnum.shows

instance Read River_shell_surface_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_shell_surface_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_shell_surface_v1_error "unwrap" where

  type CFieldType River_shell_surface_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| shell surface already has a node object

__C declaration:__ @RIVER_SHELL_SURFACE_V1_ERROR_NODE_EXISTS@

__defined at:__ @river-window-management-v1-client-protocol.h 2176:2@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_SHELL_SURFACE_V1_ERROR_NODE_EXISTS :: River_shell_surface_v1_error
pattern RIVER_SHELL_SURFACE_V1_ERROR_NODE_EXISTS = River_shell_surface_v1_error 0

{-| failed to commit the surface before the window manager commit

__C declaration:__ @RIVER_SHELL_SURFACE_V1_ERROR_NO_COMMIT@

__defined at:__ @river-window-management-v1-client-protocol.h 2180:2@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_SHELL_SURFACE_V1_ERROR_NO_COMMIT :: River_shell_surface_v1_error
pattern RIVER_SHELL_SURFACE_V1_ERROR_NO_COMMIT = River_shell_surface_v1_error 1

{-| __C declaration:__ @macro RIVER_SHELL_SURFACE_V1_DESTROY@

    __defined at:__ @river-window-management-v1-client-protocol.h 2184:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SHELL_SURFACE_V1_DESTROY :: RIP.CInt
rIVER_SHELL_SURFACE_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SHELL_SURFACE_V1_GET_NODE@

    __defined at:__ @river-window-management-v1-client-protocol.h 2185:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SHELL_SURFACE_V1_GET_NODE :: RIP.CInt
rIVER_SHELL_SURFACE_V1_GET_NODE = (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SHELL_SURFACE_V1_SYNC_NEXT_COMMIT@

    __defined at:__ @river-window-management-v1-client-protocol.h 2186:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SHELL_SURFACE_V1_SYNC_NEXT_COMMIT :: RIP.CInt
rIVER_SHELL_SURFACE_V1_SYNC_NEXT_COMMIT =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SHELL_SURFACE_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2192:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SHELL_SURFACE_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_SHELL_SURFACE_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SHELL_SURFACE_V1_GET_NODE_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2196:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SHELL_SURFACE_V1_GET_NODE_SINCE_VERSION :: RIP.CInt
rIVER_SHELL_SURFACE_V1_GET_NODE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SHELL_SURFACE_V1_SYNC_NEXT_COMMIT_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2200:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SHELL_SURFACE_V1_SYNC_NEXT_COMMIT_SINCE_VERSION :: RIP.CInt
rIVER_SHELL_SURFACE_V1_SYNC_NEXT_COMMIT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_NODE_V1_DESTROY@

    __defined at:__ @river-window-management-v1-client-protocol.h 2275:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_NODE_V1_DESTROY :: RIP.CInt
rIVER_NODE_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_NODE_V1_SET_POSITION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2276:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_NODE_V1_SET_POSITION :: RIP.CInt
rIVER_NODE_V1_SET_POSITION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_NODE_V1_PLACE_TOP@

    __defined at:__ @river-window-management-v1-client-protocol.h 2277:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_NODE_V1_PLACE_TOP :: RIP.CInt
rIVER_NODE_V1_PLACE_TOP = (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_NODE_V1_PLACE_BOTTOM@

    __defined at:__ @river-window-management-v1-client-protocol.h 2278:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_NODE_V1_PLACE_BOTTOM :: RIP.CInt
rIVER_NODE_V1_PLACE_BOTTOM = (3 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_NODE_V1_PLACE_ABOVE@

    __defined at:__ @river-window-management-v1-client-protocol.h 2279:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_NODE_V1_PLACE_ABOVE :: RIP.CInt
rIVER_NODE_V1_PLACE_ABOVE = (4 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_NODE_V1_PLACE_BELOW@

    __defined at:__ @river-window-management-v1-client-protocol.h 2280:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_NODE_V1_PLACE_BELOW :: RIP.CInt
rIVER_NODE_V1_PLACE_BELOW = (5 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_NODE_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2286:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_NODE_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_NODE_V1_DESTROY_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_NODE_V1_SET_POSITION_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2290:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_NODE_V1_SET_POSITION_SINCE_VERSION :: RIP.CInt
rIVER_NODE_V1_SET_POSITION_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_NODE_V1_PLACE_TOP_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2294:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_NODE_V1_PLACE_TOP_SINCE_VERSION :: RIP.CInt
rIVER_NODE_V1_PLACE_TOP_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_NODE_V1_PLACE_BOTTOM_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2298:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_NODE_V1_PLACE_BOTTOM_SINCE_VERSION :: RIP.CInt
rIVER_NODE_V1_PLACE_BOTTOM_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_NODE_V1_PLACE_ABOVE_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2302:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_NODE_V1_PLACE_ABOVE_SINCE_VERSION :: RIP.CInt
rIVER_NODE_V1_PLACE_ABOVE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_NODE_V1_PLACE_BELOW_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2306:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_NODE_V1_PLACE_BELOW_SINCE_VERSION :: RIP.CInt
rIVER_NODE_V1_PLACE_BELOW_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @enum river_output_v1_error@

    __defined at:__ @river-window-management-v1-client-protocol.h 2434:6@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
newtype River_output_v1_error = River_output_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_output_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_output_v1_error where

  readRaw =
    \ptr0 ->
          pure River_output_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_output_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_output_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_output_v1_error instance RIP.Storable River_output_v1_error

deriving via RIP.CUInt instance RIP.Prim River_output_v1_error

instance CEnum.CEnum River_output_v1_error where

  type CEnumZ River_output_v1_error = RIP.CUInt

  toCEnum = River_output_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(0, RIP.singleton "RIVER_OUTPUT_V1_ERROR_INVALID_PRESENTATION_MODE")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_output_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_output_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_output_v1_error where

  minDeclaredValue =
    RIVER_OUTPUT_V1_ERROR_INVALID_PRESENTATION_MODE

  maxDeclaredValue =
    RIVER_OUTPUT_V1_ERROR_INVALID_PRESENTATION_MODE

instance Show River_output_v1_error where

  showsPrec = CEnum.shows

instance Read River_output_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_output_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_output_v1_error "unwrap" where

  type CFieldType River_output_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| invalid presentation mode enum value

  @since:  4

__C declaration:__ @RIVER_OUTPUT_V1_ERROR_INVALID_PRESENTATION_MODE@

__defined at:__ @river-window-management-v1-client-protocol.h 2439:2@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_OUTPUT_V1_ERROR_INVALID_PRESENTATION_MODE :: River_output_v1_error
pattern RIVER_OUTPUT_V1_ERROR_INVALID_PRESENTATION_MODE = River_output_v1_error 0

{-| __C declaration:__ @macro RIVER_OUTPUT_V1_ERROR_INVALID_PRESENTATION_MODE_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2444:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_OUTPUT_V1_ERROR_INVALID_PRESENTATION_MODE_SINCE_VERSION :: RIP.CInt
rIVER_OUTPUT_V1_ERROR_INVALID_PRESENTATION_MODE_SINCE_VERSION =
  (4 :: RIP.CInt)

{-| __C declaration:__ @enum river_output_v1_presentation_mode@

    __defined at:__ @river-window-management-v1-client-protocol.h 2449:6@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
newtype River_output_v1_presentation_mode = River_output_v1_presentation_mode
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_output_v1_presentation_mode where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_output_v1_presentation_mode where

  readRaw =
    \ptr0 ->
          pure River_output_v1_presentation_mode
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_output_v1_presentation_mode where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_output_v1_presentation_mode unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_output_v1_presentation_mode instance RIP.Storable River_output_v1_presentation_mode

deriving via RIP.CUInt instance RIP.Prim River_output_v1_presentation_mode

instance CEnum.CEnum River_output_v1_presentation_mode where

  type CEnumZ River_output_v1_presentation_mode =
    RIP.CUInt

  toCEnum = River_output_v1_presentation_mode

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_OUTPUT_V1_PRESENTATION_MODE_VSYNC")
                                   , (1, RIP.singleton "RIVER_OUTPUT_V1_PRESENTATION_MODE_ASYNC")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_output_v1_presentation_mode"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_output_v1_presentation_mode"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_output_v1_presentation_mode where

  minDeclaredValue =
    RIVER_OUTPUT_V1_PRESENTATION_MODE_VSYNC

  maxDeclaredValue =
    RIVER_OUTPUT_V1_PRESENTATION_MODE_ASYNC

instance Show River_output_v1_presentation_mode where

  showsPrec = CEnum.shows

instance Read River_output_v1_presentation_mode where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_output_v1_presentation_mode) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_output_v1_presentation_mode "unwrap" where

  type CFieldType River_output_v1_presentation_mode "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| tearing-free presentation

  Output page-flips should be synchronized to the vertical blanking period, eliminating tearing. This is the default presentation mode.

__C declaration:__ @RIVER_OUTPUT_V1_PRESENTATION_MODE_VSYNC@

__defined at:__ @river-window-management-v1-client-protocol.h 2457:2@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_OUTPUT_V1_PRESENTATION_MODE_VSYNC :: River_output_v1_presentation_mode
pattern RIVER_OUTPUT_V1_PRESENTATION_MODE_VSYNC = River_output_v1_presentation_mode 0

{-| asynchronous presentation

  Output page-flips should not be synchronized to the vertical blanking period, visual screen tearing may occur.

__C declaration:__ @RIVER_OUTPUT_V1_PRESENTATION_MODE_ASYNC@

__defined at:__ @river-window-management-v1-client-protocol.h 2464:2@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_OUTPUT_V1_PRESENTATION_MODE_ASYNC :: River_output_v1_presentation_mode
pattern RIVER_OUTPUT_V1_PRESENTATION_MODE_ASYNC = River_output_v1_presentation_mode 1

{-|

  > iface_river_output_v1

  > river_output_v1_listener

__C declaration:__ @struct river_output_v1_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 2472:8@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
data River_output_v1_listener = River_output_v1_listener
  { removed :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> IO ())
    {- ^ the output is removed

       This event indicates that the logical output is no longer conceptually part of window management space.

       The server will send no further events on this object and ignore any request (other than river_output_v1.destroy) made after this event is sent. The client should destroy this object with the river_output_v1.destroy request to free up resources.

       This event may be sent because a corresponding physical output has been physically unplugged or because some output configuration has changed.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

    __C declaration:__ @removed@

    __defined at:__ @river-window-management-v1-client-protocol.h 2491:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , wl_output :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ corresponding wl_output

       The wl_output object corresponding to the river_output_v1. The argument is the global name of the wl_output advertised with wl_registry.global.

       It is guaranteed that the corresponding wl_output is advertised before this event is sent.

       This event is sent exactly once. The wl_output associated with a river_output_v1 cannot change. It is guaranteed that there is a 1-to-1 mapping between wl_output and river_output_v1 objects.

       The global_remove event for the corresponding wl_output may be sent before the river_output_v1.remove event. This is due to the fact that river_output_v1 state changes are synced to the river window management manage sequence while changes to globals are not.

       Rationale: The window manager may need information provided by the wl_output interface such as the name/description. It also may need the wl_output object to start screencopy for example.

       [__@name@ /(input)/__]: name of the wl_output global

    __C declaration:__ @wl_output@

    __defined at:__ @river-window-management-v1-client-protocol.h 2518:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , position :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ output position

       This event indicates the position of the output in the compositor's logical coordinate space. The x and y coordinates may be positive or negative.

       This event is sent once when the river_output_v1 is created and again whenever the position changes.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       The server must guarantee that the position and dimensions events do not cause the areas of multiple logical outputs to overlap when the corresponding manage_start event is received.

       [__@x@ /(input)/__]: global x coordinate

       [__@y@ /(input)/__]: global y coordinate

    __C declaration:__ @position@

    __defined at:__ @river-window-management-v1-client-protocol.h 2540:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , dimensions :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ output dimensions

       This event indicates the dimensions of the output in the compositor's logical coordinate space. The width and height will always be strictly greater than zero.

       This event is sent once when the river_output_v1 is created and again whenever the dimensions change.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       The server must guarantee that the position and dimensions events do not cause the areas of multiple logical outputs to overlap when the corresponding manage_start event is received.

       [__@width@ /(input)/__]: output width

       [__@height@ /(input)/__]: output height

    __C declaration:__ @dimensions@

    __defined at:__ @river-window-management-v1-client-protocol.h 2563:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize River_output_v1_listener where

  staticSizeOf = \_ -> (32 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw River_output_v1_listener where

  readRaw =
    \ptr0 ->
          pure River_output_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"removed") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"wl_output") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"position") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"dimensions") ptr0

instance Marshal.WriteRaw River_output_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_output_v1_listener removed2 wl_output3 position4 dimensions5 ->
               HasCField.writeRaw (RIP.Proxy @"removed") ptr0 removed2
            >> HasCField.writeRaw (RIP.Proxy @"wl_output") ptr0 wl_output3
            >> HasCField.writeRaw (RIP.Proxy @"position") ptr0 position4
            >> HasCField.writeRaw (RIP.Proxy @"dimensions") ptr0 dimensions5

deriving via Marshal.EquivStorable River_output_v1_listener instance RIP.Storable River_output_v1_listener

instance HasCField.HasCField River_output_v1_listener "removed" where

  type CFieldType River_output_v1_listener "removed" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> IO ()))
         ) => RIP.HasField "removed" (RIP.Ptr River_output_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"removed")

instance HasCField.HasCField River_output_v1_listener "wl_output" where

  type CFieldType River_output_v1_listener "wl_output" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "wl_output" (RIP.Ptr River_output_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"wl_output")

instance HasCField.HasCField River_output_v1_listener "position" where

  type CFieldType River_output_v1_listener "position" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "position" (RIP.Ptr River_output_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"position")

instance HasCField.HasCField River_output_v1_listener "dimensions" where

  type CFieldType River_output_v1_listener "dimensions" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "dimensions" (RIP.Ptr River_output_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"dimensions")

{-| __C declaration:__ @macro RIVER_OUTPUT_V1_DESTROY@

    __defined at:__ @river-window-management-v1-client-protocol.h 2580:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_OUTPUT_V1_DESTROY :: RIP.CInt
rIVER_OUTPUT_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_OUTPUT_V1_SET_PRESENTATION_MODE@

    __defined at:__ @river-window-management-v1-client-protocol.h 2581:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_OUTPUT_V1_SET_PRESENTATION_MODE :: RIP.CInt
rIVER_OUTPUT_V1_SET_PRESENTATION_MODE =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_OUTPUT_V1_REMOVED_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2586:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_OUTPUT_V1_REMOVED_SINCE_VERSION :: RIP.CInt
rIVER_OUTPUT_V1_REMOVED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_OUTPUT_V1_WL_OUTPUT_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2590:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_OUTPUT_V1_WL_OUTPUT_SINCE_VERSION :: RIP.CInt
rIVER_OUTPUT_V1_WL_OUTPUT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_OUTPUT_V1_POSITION_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2594:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_OUTPUT_V1_POSITION_SINCE_VERSION :: RIP.CInt
rIVER_OUTPUT_V1_POSITION_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_OUTPUT_V1_DIMENSIONS_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2598:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_OUTPUT_V1_DIMENSIONS_SINCE_VERSION :: RIP.CInt
rIVER_OUTPUT_V1_DIMENSIONS_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_OUTPUT_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2603:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_OUTPUT_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_OUTPUT_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_OUTPUT_V1_SET_PRESENTATION_MODE_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2607:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_OUTPUT_V1_SET_PRESENTATION_MODE_SINCE_VERSION :: RIP.CInt
rIVER_OUTPUT_V1_SET_PRESENTATION_MODE_SINCE_VERSION =
  (4 :: RIP.CInt)

{-|

  > iface_river_seat_v1

  a set of keyboard modifiers

  This enum is used to describe the keyboard modifiers that must be held down to trigger a key binding or pointer binding.

  Note that river and wlroots use the values 2 and 16 for capslock and numlock internally. It doesn't make sense to use locked modifiers for bindings however so these values are not included in this enum.

__C declaration:__ @enum river_seat_v1_modifiers@

__defined at:__ @river-window-management-v1-client-protocol.h 2675:6@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
newtype River_seat_v1_modifiers = River_seat_v1_modifiers
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_seat_v1_modifiers where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_seat_v1_modifiers where

  readRaw =
    \ptr0 ->
          pure River_seat_v1_modifiers
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_seat_v1_modifiers where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_seat_v1_modifiers unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_seat_v1_modifiers instance RIP.Storable River_seat_v1_modifiers

deriving via RIP.CUInt instance RIP.Prim River_seat_v1_modifiers

instance CEnum.CEnum River_seat_v1_modifiers where

  type CEnumZ River_seat_v1_modifiers = RIP.CUInt

  toCEnum = River_seat_v1_modifiers

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_SEAT_V1_MODIFIERS_NONE")
                                   , (1, RIP.singleton "RIVER_SEAT_V1_MODIFIERS_SHIFT")
                                   , (4, RIP.singleton "RIVER_SEAT_V1_MODIFIERS_CTRL")
                                   , (8, RIP.singleton "RIVER_SEAT_V1_MODIFIERS_MOD1")
                                   , (32, RIP.singleton "RIVER_SEAT_V1_MODIFIERS_MOD3")
                                   , (64, RIP.singleton "RIVER_SEAT_V1_MODIFIERS_MOD4")
                                   , (128, RIP.singleton "RIVER_SEAT_V1_MODIFIERS_MOD5")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_seat_v1_modifiers"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_seat_v1_modifiers"

instance Show River_seat_v1_modifiers where

  showsPrec = CEnum.shows

instance Read River_seat_v1_modifiers where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_seat_v1_modifiers) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_seat_v1_modifiers "unwrap" where

  type CFieldType River_seat_v1_modifiers "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_SEAT_V1_MODIFIERS_NONE@

    __defined at:__ @river-window-management-v1-client-protocol.h 2676:2@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_SEAT_V1_MODIFIERS_NONE :: River_seat_v1_modifiers
pattern RIVER_SEAT_V1_MODIFIERS_NONE = River_seat_v1_modifiers 0

{-| __C declaration:__ @RIVER_SEAT_V1_MODIFIERS_SHIFT@

    __defined at:__ @river-window-management-v1-client-protocol.h 2677:2@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_SEAT_V1_MODIFIERS_SHIFT :: River_seat_v1_modifiers
pattern RIVER_SEAT_V1_MODIFIERS_SHIFT = River_seat_v1_modifiers 1

{-| __C declaration:__ @RIVER_SEAT_V1_MODIFIERS_CTRL@

    __defined at:__ @river-window-management-v1-client-protocol.h 2678:2@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_SEAT_V1_MODIFIERS_CTRL :: River_seat_v1_modifiers
pattern RIVER_SEAT_V1_MODIFIERS_CTRL = River_seat_v1_modifiers 4

{-| commonly called alt

__C declaration:__ @RIVER_SEAT_V1_MODIFIERS_MOD1@

__defined at:__ @river-window-management-v1-client-protocol.h 2682:2@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_SEAT_V1_MODIFIERS_MOD1 :: River_seat_v1_modifiers
pattern RIVER_SEAT_V1_MODIFIERS_MOD1 = River_seat_v1_modifiers 8

{-| commonly called alt

__C declaration:__ @RIVER_SEAT_V1_MODIFIERS_MOD3@

__defined at:__ @river-window-management-v1-client-protocol.h 2683:2@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_SEAT_V1_MODIFIERS_MOD3 :: River_seat_v1_modifiers
pattern RIVER_SEAT_V1_MODIFIERS_MOD3 = River_seat_v1_modifiers 32

{-| commonly called super or logo

__C declaration:__ @RIVER_SEAT_V1_MODIFIERS_MOD4@

__defined at:__ @river-window-management-v1-client-protocol.h 2687:2@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_SEAT_V1_MODIFIERS_MOD4 :: River_seat_v1_modifiers
pattern RIVER_SEAT_V1_MODIFIERS_MOD4 = River_seat_v1_modifiers 64

{-| commonly called super or logo

__C declaration:__ @RIVER_SEAT_V1_MODIFIERS_MOD5@

__defined at:__ @river-window-management-v1-client-protocol.h 2688:2@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
pattern RIVER_SEAT_V1_MODIFIERS_MOD5 :: River_seat_v1_modifiers
pattern RIVER_SEAT_V1_MODIFIERS_MOD5 = River_seat_v1_modifiers 128

{-|

  > iface_river_seat_v1

  > river_seat_v1_listener

__C declaration:__ @struct river_seat_v1_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 2696:8@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
data River_seat_v1_listener = River_seat_v1_listener
  { removed :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> IO ())
    {- ^ the seat is removed

       This event indicates that seat is no longer in use and should be destroyed.

       The server will send no further events on this object and ignore any request (other than river_seat_v1.destroy) made after this event is sent. The client should destroy this object with the river_seat_v1.destroy request to free up resources.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

    __C declaration:__ @removed@

    __defined at:__ @river-window-management-v1-client-protocol.h 2711:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , wl_seat :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ corresponding wl_seat

       The wl_seat object corresponding to the river_seat_v1. The argument is the global name of the wl_seat advertised with wl_registry.global.

       It is guaranteed that the corresponding wl_seat is advertised before this event is sent.

       This event is sent exactly once. The wl_seat associated with a river_seat_v1 cannot change. It is guaranteed that there is a 1-to-1 mapping between wl_seat and river_seat_v1 objects.

       The global_remove event for the corresponding wl_seat may be sent before the river_seat_v1.remove event. This is due to the fact that river_seat_v1 state changes are synced to the river window management manage sequence while changes to globals are not.

       Rationale: The window manager may want to trigger window management state changes based on normal input events received by its shell surfaces for example.

       [__@name@ /(input)/__]: name of the wl_seat global

    __C declaration:__ @wl_seat@

    __defined at:__ @river-window-management-v1-client-protocol.h 2738:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , pointer_enter :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_window_v1) -> IO ())
    {- ^ pointer entered a window

       The seat's pointer entered the given window's area.

       The area of a window is defined to include the area defined by the window dimensions, borders configured using river_window_v1.set_borders, and the input regions of decoration surfaces. In particular, it does not include input regions of surfaces belonging to the window that extend outside the window dimensions.

       The pointer of a seat may only enter a single window at a time. When the pointer moves between windows, the pointer_leave event for the old window must be sent before the pointer_enter event for the new window.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       [__@window@ /(input)/__]: window entered

    __C declaration:__ @pointer_enter@

    __defined at:__ @river-window-management-v1-client-protocol.h 2762:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , pointer_leave :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> IO ())
    {- ^ pointer left the entered window

       The seat's pointer left the window for which pointer_enter was most recently sent. See pointer_enter for details.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

    __C declaration:__ @pointer_leave@

    __defined at:__ @river-window-management-v1-client-protocol.h 2774:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , window_interaction :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_window_v1) -> IO ())
    {- ^ a window has been interacted with

       A window has been interacted with beyond the pointer merely passing over it. This event might be sent due to a pointer button press or due to a touch/tablet tool interaction with the window.

       There are no guarantees regarding how this event is sent in relation to the pointer_enter and pointer_leave events as the interaction may use touch or tablet tool input.

       Rationale: this event gives window managers necessary information to determine when to send keyboard focus, raise a window that already has keyboard focus, etc. Rather than expose all pointer, touch, and tablet events to window managers, a policy over mechanism approach is taken.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       [__@window@ /(input)/__]: window interacted with

    __C declaration:__ @window_interaction@

    __defined at:__ @river-window-management-v1-client-protocol.h 2798:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , shell_surface_interaction :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_shell_surface_v1) -> IO ())
    {- ^ a shell surface has been interacted with

       A shell surface has been interacted with beyond the pointer merely passing over it. This event might be sent due to a pointer button press or due to a touch/tablet tool interaction with the shell_surface.

       There are no guarantees regarding how this event is sent in relation to the pointer_enter and pointer_leave events as the interaction may use touch or tablet tool input.

       Rationale: While the shell surface does receive all wl_pointer, wl_touch, etc. input events for the surface directly, these events do not necessarily trigger a manage sequence and therefore do not allow the window manager to update focus or perform other actions in response to the input in a race-free way.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       [__@shell_surface@ /(input)/__]: shell surface interacted with

    __C declaration:__ @shell_surface_interaction@

    __defined at:__ @river-window-management-v1-client-protocol.h 2824:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , op_delta :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ total cumulative motion since op start

       This event indicates the total change in position since the start of the operation of the pointer/touch point/etc.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       [__@dx@ /(input)/__]: total change in x

       [__@dy@ /(input)/__]: total change in y

    __C declaration:__ @op_delta@

    __defined at:__ @river-window-management-v1-client-protocol.h 2838:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , op_release :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> IO ())
    {- ^ operation input has been released

       The input driving the current interactive operation has been released. For a pointer op for example, all pointer buttons have been released.

       Depending on the op type, op_delta events may continue to be sent until the op is ended with the op_end request.

       This event is sent at most once during an interactive operation.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

    __C declaration:__ @op_release@

    __defined at:__ @river-window-management-v1-client-protocol.h 2857:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , pointer_position :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ The current position of the pointer

       The current position of the pointer in the compositor's logical coordinate space.

       This state is special in that a change in pointer position alone must not cause the compositor to start a manage sequence.

       Assuming the seat has a pointer, this event must be sent in every manage sequence unless there is no change in x/y position since the last time this event was sent.

       [__@x@ /(input)/__]: global x coordinate

       [__@y@ /(input)/__]: global y coordinate

       @since:  2

    __C declaration:__ @pointer_position@

    __defined at:__ @river-window-management-v1-client-protocol.h 2875:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize River_seat_v1_listener where

  staticSizeOf = \_ -> (72 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw River_seat_v1_listener where

  readRaw =
    \ptr0 ->
          pure River_seat_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"removed") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"wl_seat") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"pointer_enter") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"pointer_leave") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"window_interaction") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"shell_surface_interaction") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"op_delta") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"op_release") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"pointer_position") ptr0

instance Marshal.WriteRaw River_seat_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_seat_v1_listener
            removed2
            wl_seat3
            pointer_enter4
            pointer_leave5
            window_interaction6
            shell_surface_interaction7
            op_delta8
            op_release9
            pointer_position10 ->
                 HasCField.writeRaw (RIP.Proxy @"removed") ptr0 removed2
              >> HasCField.writeRaw (RIP.Proxy @"wl_seat") ptr0 wl_seat3
              >> HasCField.writeRaw (RIP.Proxy @"pointer_enter") ptr0 pointer_enter4
              >> HasCField.writeRaw (RIP.Proxy @"pointer_leave") ptr0 pointer_leave5
              >> HasCField.writeRaw (RIP.Proxy @"window_interaction") ptr0 window_interaction6
              >> HasCField.writeRaw (RIP.Proxy @"shell_surface_interaction") ptr0 shell_surface_interaction7
              >> HasCField.writeRaw (RIP.Proxy @"op_delta") ptr0 op_delta8
              >> HasCField.writeRaw (RIP.Proxy @"op_release") ptr0 op_release9
              >> HasCField.writeRaw (RIP.Proxy @"pointer_position") ptr0 pointer_position10

deriving via Marshal.EquivStorable River_seat_v1_listener instance RIP.Storable River_seat_v1_listener

instance HasCField.HasCField River_seat_v1_listener "removed" where

  type CFieldType River_seat_v1_listener "removed" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> IO ()))
         ) => RIP.HasField "removed" (RIP.Ptr River_seat_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"removed")

instance HasCField.HasCField River_seat_v1_listener "wl_seat" where

  type CFieldType River_seat_v1_listener "wl_seat" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "wl_seat" (RIP.Ptr River_seat_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"wl_seat")

instance HasCField.HasCField River_seat_v1_listener "pointer_enter" where

  type CFieldType River_seat_v1_listener "pointer_enter" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_window_v1) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_window_v1) -> IO ()))
         ) => RIP.HasField "pointer_enter" (RIP.Ptr River_seat_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"pointer_enter")

instance HasCField.HasCField River_seat_v1_listener "pointer_leave" where

  type CFieldType River_seat_v1_listener "pointer_leave" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> IO ()))
         ) => RIP.HasField "pointer_leave" (RIP.Ptr River_seat_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"pointer_leave")

instance HasCField.HasCField River_seat_v1_listener "window_interaction" where

  type CFieldType River_seat_v1_listener "window_interaction" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_window_v1) -> IO ())

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_window_v1) -> IO ()))
         ) => RIP.HasField "window_interaction" (RIP.Ptr River_seat_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"window_interaction")

instance HasCField.HasCField River_seat_v1_listener "shell_surface_interaction" where

  type CFieldType River_seat_v1_listener "shell_surface_interaction" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_shell_surface_v1) -> IO ())

  offset# = \_ -> \_ -> 40

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_shell_surface_v1) -> IO ()))
         ) => RIP.HasField "shell_surface_interaction" (RIP.Ptr River_seat_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"shell_surface_interaction")

instance HasCField.HasCField River_seat_v1_listener "op_delta" where

  type CFieldType River_seat_v1_listener "op_delta" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 48

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "op_delta" (RIP.Ptr River_seat_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"op_delta")

instance HasCField.HasCField River_seat_v1_listener "op_release" where

  type CFieldType River_seat_v1_listener "op_release" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> IO ())

  offset# = \_ -> \_ -> 56

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> IO ()))
         ) => RIP.HasField "op_release" (RIP.Ptr River_seat_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"op_release")

instance HasCField.HasCField River_seat_v1_listener "pointer_position" where

  type CFieldType River_seat_v1_listener "pointer_position" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 64

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "pointer_position" (RIP.Ptr River_seat_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"pointer_position")

{-| __C declaration:__ @macro RIVER_SEAT_V1_DESTROY@

    __defined at:__ @river-window-management-v1-client-protocol.h 2892:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_DESTROY :: RIP.CInt
rIVER_SEAT_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_FOCUS_WINDOW@

    __defined at:__ @river-window-management-v1-client-protocol.h 2893:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_FOCUS_WINDOW :: RIP.CInt
rIVER_SEAT_V1_FOCUS_WINDOW = (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_FOCUS_SHELL_SURFACE@

    __defined at:__ @river-window-management-v1-client-protocol.h 2894:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_FOCUS_SHELL_SURFACE :: RIP.CInt
rIVER_SEAT_V1_FOCUS_SHELL_SURFACE = (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_CLEAR_FOCUS@

    __defined at:__ @river-window-management-v1-client-protocol.h 2895:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_CLEAR_FOCUS :: RIP.CInt
rIVER_SEAT_V1_CLEAR_FOCUS = (3 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_OP_START_POINTER@

    __defined at:__ @river-window-management-v1-client-protocol.h 2896:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_OP_START_POINTER :: RIP.CInt
rIVER_SEAT_V1_OP_START_POINTER = (4 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_OP_END@

    __defined at:__ @river-window-management-v1-client-protocol.h 2897:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_OP_END :: RIP.CInt
rIVER_SEAT_V1_OP_END = (5 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_GET_POINTER_BINDING@

    __defined at:__ @river-window-management-v1-client-protocol.h 2898:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_GET_POINTER_BINDING :: RIP.CInt
rIVER_SEAT_V1_GET_POINTER_BINDING = (6 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_SET_XCURSOR_THEME@

    __defined at:__ @river-window-management-v1-client-protocol.h 2899:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_SET_XCURSOR_THEME :: RIP.CInt
rIVER_SEAT_V1_SET_XCURSOR_THEME = (7 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_POINTER_WARP@

    __defined at:__ @river-window-management-v1-client-protocol.h 2900:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_POINTER_WARP :: RIP.CInt
rIVER_SEAT_V1_POINTER_WARP = (8 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_REMOVED_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2905:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_REMOVED_SINCE_VERSION :: RIP.CInt
rIVER_SEAT_V1_REMOVED_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_WL_SEAT_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2909:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_WL_SEAT_SINCE_VERSION :: RIP.CInt
rIVER_SEAT_V1_WL_SEAT_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_POINTER_ENTER_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2913:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_POINTER_ENTER_SINCE_VERSION :: RIP.CInt
rIVER_SEAT_V1_POINTER_ENTER_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_POINTER_LEAVE_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2917:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_POINTER_LEAVE_SINCE_VERSION :: RIP.CInt
rIVER_SEAT_V1_POINTER_LEAVE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_WINDOW_INTERACTION_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2921:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_WINDOW_INTERACTION_SINCE_VERSION :: RIP.CInt
rIVER_SEAT_V1_WINDOW_INTERACTION_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_SHELL_SURFACE_INTERACTION_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2925:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_SHELL_SURFACE_INTERACTION_SINCE_VERSION :: RIP.CInt
rIVER_SEAT_V1_SHELL_SURFACE_INTERACTION_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_OP_DELTA_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2929:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_OP_DELTA_SINCE_VERSION :: RIP.CInt
rIVER_SEAT_V1_OP_DELTA_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_OP_RELEASE_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2933:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_OP_RELEASE_SINCE_VERSION :: RIP.CInt
rIVER_SEAT_V1_OP_RELEASE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_POINTER_POSITION_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2937:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_POINTER_POSITION_SINCE_VERSION :: RIP.CInt
rIVER_SEAT_V1_POINTER_POSITION_SINCE_VERSION =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2942:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_SEAT_V1_DESTROY_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_FOCUS_WINDOW_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2946:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_FOCUS_WINDOW_SINCE_VERSION :: RIP.CInt
rIVER_SEAT_V1_FOCUS_WINDOW_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_FOCUS_SHELL_SURFACE_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2950:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_FOCUS_SHELL_SURFACE_SINCE_VERSION :: RIP.CInt
rIVER_SEAT_V1_FOCUS_SHELL_SURFACE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_CLEAR_FOCUS_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2954:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_CLEAR_FOCUS_SINCE_VERSION :: RIP.CInt
rIVER_SEAT_V1_CLEAR_FOCUS_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_OP_START_POINTER_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2958:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_OP_START_POINTER_SINCE_VERSION :: RIP.CInt
rIVER_SEAT_V1_OP_START_POINTER_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_OP_END_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2962:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_OP_END_SINCE_VERSION :: RIP.CInt
rIVER_SEAT_V1_OP_END_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_GET_POINTER_BINDING_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2966:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_GET_POINTER_BINDING_SINCE_VERSION :: RIP.CInt
rIVER_SEAT_V1_GET_POINTER_BINDING_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_SET_XCURSOR_THEME_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2970:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_SET_XCURSOR_THEME_SINCE_VERSION :: RIP.CInt
rIVER_SEAT_V1_SET_XCURSOR_THEME_SINCE_VERSION =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_SEAT_V1_POINTER_WARP_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 2974:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_SEAT_V1_POINTER_WARP_SINCE_VERSION :: RIP.CInt
rIVER_SEAT_V1_POINTER_WARP_SINCE_VERSION =
  (3 :: RIP.CInt)

{-|

  > iface_river_pointer_binding_v1

  > river_pointer_binding_v1_listener

__C declaration:__ @struct river_pointer_binding_v1_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 3170:8@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
data River_pointer_binding_v1_listener = River_pointer_binding_v1_listener
  { pressed :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_pointer_binding_v1) -> IO ())
    {- ^ the bound pointer button has been pressed

       This event indicates that the pointer button triggering the binding has been pressed.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       The compositor should wait for the manage sequence to complete before processing further input events. This allows the window manager client to, for example, modify key bindings and keyboard focus without racing against future input events. The window manager should of course respond as soon as possible as the capacity of the compositor to buffer incoming input events is finite.

    __C declaration:__ @pressed@

    __defined at:__ @river-window-management-v1-client-protocol.h 3188:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  , released :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_pointer_binding_v1) -> IO ())
    {- ^ the bound pointer button has been released

       This event indicates that the pointer button triggering the binding has been released.

       Releasing the modifiers for the binding without releasing the pointer button does not trigger the release event. This event is sent when the pointer button is released, even if the modifiers have changed since the pressed event.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       The compositor should wait for the manage sequence to complete before processing further input events. This allows the window manager client to, for example, modify key bindings and keyboard focus without racing against future input events. The window manager should of course respond as soon as possible as the capacity of the compositor to buffer incoming input events is finite.

    __C declaration:__ @released@

    __defined at:__ @river-window-management-v1-client-protocol.h 3212:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize River_pointer_binding_v1_listener where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw River_pointer_binding_v1_listener where

  readRaw =
    \ptr0 ->
          pure River_pointer_binding_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"pressed") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"released") ptr0

instance Marshal.WriteRaw River_pointer_binding_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_pointer_binding_v1_listener pressed2 released3 ->
               HasCField.writeRaw (RIP.Proxy @"pressed") ptr0 pressed2
            >> HasCField.writeRaw (RIP.Proxy @"released") ptr0 released3

deriving via Marshal.EquivStorable River_pointer_binding_v1_listener instance RIP.Storable River_pointer_binding_v1_listener

instance HasCField.HasCField River_pointer_binding_v1_listener "pressed" where

  type CFieldType River_pointer_binding_v1_listener "pressed" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_pointer_binding_v1) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_pointer_binding_v1) -> IO ()))
         ) => RIP.HasField "pressed" (RIP.Ptr River_pointer_binding_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"pressed")

instance HasCField.HasCField River_pointer_binding_v1_listener "released" where

  type CFieldType River_pointer_binding_v1_listener "released" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_pointer_binding_v1) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_pointer_binding_v1) -> IO ()))
         ) => RIP.HasField "released" (RIP.Ptr River_pointer_binding_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"released")

{-| __C declaration:__ @macro RIVER_POINTER_BINDING_V1_DESTROY@

    __defined at:__ @river-window-management-v1-client-protocol.h 3227:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_POINTER_BINDING_V1_DESTROY :: RIP.CInt
rIVER_POINTER_BINDING_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_POINTER_BINDING_V1_ENABLE@

    __defined at:__ @river-window-management-v1-client-protocol.h 3228:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_POINTER_BINDING_V1_ENABLE :: RIP.CInt
rIVER_POINTER_BINDING_V1_ENABLE = (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_POINTER_BINDING_V1_DISABLE@

    __defined at:__ @river-window-management-v1-client-protocol.h 3229:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_POINTER_BINDING_V1_DISABLE :: RIP.CInt
rIVER_POINTER_BINDING_V1_DISABLE = (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_POINTER_BINDING_V1_PRESSED_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 3234:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_POINTER_BINDING_V1_PRESSED_SINCE_VERSION :: RIP.CInt
rIVER_POINTER_BINDING_V1_PRESSED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_POINTER_BINDING_V1_RELEASED_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 3238:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_POINTER_BINDING_V1_RELEASED_SINCE_VERSION :: RIP.CInt
rIVER_POINTER_BINDING_V1_RELEASED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_POINTER_BINDING_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 3243:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_POINTER_BINDING_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_POINTER_BINDING_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_POINTER_BINDING_V1_ENABLE_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 3247:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_POINTER_BINDING_V1_ENABLE_SINCE_VERSION :: RIP.CInt
rIVER_POINTER_BINDING_V1_ENABLE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_POINTER_BINDING_V1_DISABLE_SINCE_VERSION@

    __defined at:__ @river-window-management-v1-client-protocol.h 3251:9@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
rIVER_POINTER_BINDING_V1_DISABLE_SINCE_VERSION :: RIP.CInt
rIVER_POINTER_BINDING_V1_DISABLE_SINCE_VERSION =
  (1 :: RIP.CInt)

foreign import ccall safe "wrapper" hs_bindgen_59f91b6cc1dfc8e8_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> IO ())@
hs_bindgen_59f91b6cc1dfc8e8 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> IO ()))
hs_bindgen_59f91b6cc1dfc8e8 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_59f91b6cc1dfc8e8_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_ac33449592e15548_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> IO ())@
hs_bindgen_ac33449592e15548 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> IO ()
hs_bindgen_ac33449592e15548 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_ac33449592e15548_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> IO ()) where

  toFunPtr = hs_bindgen_59f91b6cc1dfc8e8

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_ac33449592e15548

foreign import ccall safe "wrapper" hs_bindgen_e332ffcea9ef0d4e_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_e332ffcea9ef0d4e ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_e332ffcea9ef0d4e =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_e332ffcea9ef0d4e_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_6d04d7acb7000eec_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_6d04d7acb7000eec ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_6d04d7acb7000eec =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_6d04d7acb7000eec_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_e332ffcea9ef0d4e

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_6d04d7acb7000eec

foreign import ccall safe "wrapper" hs_bindgen_f387883367cc67c5_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_f387883367cc67c5 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_f387883367cc67c5 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_f387883367cc67c5_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_e30cbc52e5ea519f_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_e30cbc52e5ea519f ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_e30cbc52e5ea519f =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_e30cbc52e5ea519f_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_f387883367cc67c5

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_e30cbc52e5ea519f

foreign import ccall safe "wrapper" hs_bindgen_b4ef5fa4e25e217f_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_pointer_binding_v1) -> IO ())@
hs_bindgen_b4ef5fa4e25e217f ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_pointer_binding_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_pointer_binding_v1) -> IO ()))
hs_bindgen_b4ef5fa4e25e217f =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_b4ef5fa4e25e217f_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_34f187dc937bddb2_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_pointer_binding_v1) -> IO ())@
hs_bindgen_34f187dc937bddb2 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_pointer_binding_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_pointer_binding_v1) -> IO ()
hs_bindgen_34f187dc937bddb2 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_34f187dc937bddb2_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_pointer_binding_v1) -> IO ()) where

  toFunPtr = hs_bindgen_b4ef5fa4e25e217f

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_pointer_binding_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_34f187dc937bddb2

foreign import ccall safe "wrapper" hs_bindgen_840059a88042d0be_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> IO ())@
hs_bindgen_840059a88042d0be ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> IO ()))
hs_bindgen_840059a88042d0be =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_840059a88042d0be_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_54eeb9c4f8fb4709_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> IO ())@
hs_bindgen_54eeb9c4f8fb4709 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> IO ()
hs_bindgen_54eeb9c4f8fb4709 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_54eeb9c4f8fb4709_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> IO ()) where

  toFunPtr = hs_bindgen_840059a88042d0be

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_54eeb9c4f8fb4709

foreign import ccall safe "wrapper" hs_bindgen_58d2fac9bcc70d1c_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_shell_surface_v1) -> IO ())@
hs_bindgen_58d2fac9bcc70d1c ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_shell_surface_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_shell_surface_v1) -> IO ()))
hs_bindgen_58d2fac9bcc70d1c =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_58d2fac9bcc70d1c_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_4bd02460257bac7f_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_shell_surface_v1) -> IO ())@
hs_bindgen_4bd02460257bac7f ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_shell_surface_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_shell_surface_v1) -> IO ()
hs_bindgen_4bd02460257bac7f =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_4bd02460257bac7f_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_shell_surface_v1) -> IO ()) where

  toFunPtr = hs_bindgen_58d2fac9bcc70d1c

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_shell_surface_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_4bd02460257bac7f

foreign import ccall safe "wrapper" hs_bindgen_2dec2c9185e84483_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_window_v1) -> IO ())@
hs_bindgen_2dec2c9185e84483 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_window_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_2dec2c9185e84483 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_2dec2c9185e84483_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_f5d537042fbf619c_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_window_v1) -> IO ())@
hs_bindgen_f5d537042fbf619c ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_window_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_window_v1) -> IO ()
hs_bindgen_f5d537042fbf619c =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_f5d537042fbf619c_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_window_v1) -> IO ()) where

  toFunPtr = hs_bindgen_2dec2c9185e84483

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> (RIP.Ptr River_window_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_f5d537042fbf619c

foreign import ccall safe "wrapper" hs_bindgen_afdaaf2cde9e43bd_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_afdaaf2cde9e43bd ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_afdaaf2cde9e43bd =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_afdaaf2cde9e43bd_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_14a98f315044eb9b_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_14a98f315044eb9b ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_14a98f315044eb9b =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_14a98f315044eb9b_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_afdaaf2cde9e43bd

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_14a98f315044eb9b

foreign import ccall safe "wrapper" hs_bindgen_43dff34b3cffdace_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_43dff34b3cffdace ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_43dff34b3cffdace =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_43dff34b3cffdace_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_bac23145968db2ff_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_bac23145968db2ff ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_bac23145968db2ff =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_bac23145968db2ff_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_43dff34b3cffdace

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_bac23145968db2ff

foreign import ccall safe "wrapper" hs_bindgen_c73e7b062c4641db_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ())@
hs_bindgen_c73e7b062c4641db ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ()))
hs_bindgen_c73e7b062c4641db =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_c73e7b062c4641db_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_d7a59e7d00e69f5e_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ())@
hs_bindgen_d7a59e7d00e69f5e ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ()
hs_bindgen_d7a59e7d00e69f5e =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_d7a59e7d00e69f5e_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ()) where

  toFunPtr = hs_bindgen_c73e7b062c4641db

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_d7a59e7d00e69f5e

foreign import ccall safe "wrapper" hs_bindgen_74894d0049211074_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_output_v1) -> IO ())@
hs_bindgen_74894d0049211074 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_output_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_output_v1) -> IO ()))
hs_bindgen_74894d0049211074 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_74894d0049211074_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_c798f0e103377bb8_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_output_v1) -> IO ())@
hs_bindgen_c798f0e103377bb8 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_output_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_output_v1) -> IO ()
hs_bindgen_c798f0e103377bb8 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_c798f0e103377bb8_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_output_v1) -> IO ()) where

  toFunPtr = hs_bindgen_74894d0049211074

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_output_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_c798f0e103377bb8

foreign import ccall safe "wrapper" hs_bindgen_64ea08fe88c8cf14_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_seat_v1) -> IO ())@
hs_bindgen_64ea08fe88c8cf14 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_seat_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_seat_v1) -> IO ()))
hs_bindgen_64ea08fe88c8cf14 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_64ea08fe88c8cf14_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_20a8a2e8430a6902_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_seat_v1) -> IO ())@
hs_bindgen_20a8a2e8430a6902 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_seat_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_seat_v1) -> IO ()
hs_bindgen_20a8a2e8430a6902 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_20a8a2e8430a6902_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_seat_v1) -> IO ()) where

  toFunPtr = hs_bindgen_64ea08fe88c8cf14

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_seat_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_20a8a2e8430a6902

foreign import ccall safe "wrapper" hs_bindgen_b94d0c64844c1884_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_window_v1) -> IO ())@
hs_bindgen_b94d0c64844c1884 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_window_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_b94d0c64844c1884 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_b94d0c64844c1884_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_ce04eba7a2d1987c_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_window_v1) -> IO ())@
hs_bindgen_ce04eba7a2d1987c ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_window_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_window_v1) -> IO ()
hs_bindgen_ce04eba7a2d1987c =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_ce04eba7a2d1987c_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_window_v1) -> IO ()) where

  toFunPtr = hs_bindgen_b94d0c64844c1884

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_manager_v1) -> (RIP.Ptr River_window_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_ce04eba7a2d1987c

foreign import ccall safe "wrapper" hs_bindgen_61c9ff455210d87b_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ())@
hs_bindgen_61c9ff455210d87b ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_61c9ff455210d87b =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_61c9ff455210d87b_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_b1bb3ea4bb70852b_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ())@
hs_bindgen_b1bb3ea4bb70852b ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ()
hs_bindgen_b1bb3ea4bb70852b =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_b1bb3ea4bb70852b_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ()) where

  toFunPtr = hs_bindgen_61c9ff455210d87b

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_b1bb3ea4bb70852b

foreign import ccall safe "wrapper" hs_bindgen_456d28a36160654a_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_output_v1) -> IO ())@
hs_bindgen_456d28a36160654a ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_output_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_output_v1) -> IO ()))
hs_bindgen_456d28a36160654a =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_456d28a36160654a_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_d05d999f892efebf_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_output_v1) -> IO ())@
hs_bindgen_d05d999f892efebf ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_output_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_output_v1) -> IO ()
hs_bindgen_d05d999f892efebf =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_d05d999f892efebf_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_output_v1) -> IO ()) where

  toFunPtr = hs_bindgen_456d28a36160654a

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_output_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_d05d999f892efebf

foreign import ccall safe "wrapper" hs_bindgen_c2d836f04e147683_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> IO ())@
hs_bindgen_c2d836f04e147683 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> IO ()))
hs_bindgen_c2d836f04e147683 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_c2d836f04e147683_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_e2d69df049f61779_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> IO ())@
hs_bindgen_e2d69df049f61779 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> IO ()
hs_bindgen_e2d69df049f61779 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_e2d69df049f61779_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> IO ()) where

  toFunPtr = hs_bindgen_c2d836f04e147683

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_e2d69df049f61779

foreign import ccall safe "wrapper" hs_bindgen_ae873c4a401722e4_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_ae873c4a401722e4 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_ae873c4a401722e4 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_ae873c4a401722e4_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_b8c3af5e78c9b479_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_b8c3af5e78c9b479 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_b8c3af5e78c9b479 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_b8c3af5e78c9b479_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_ae873c4a401722e4

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_b8c3af5e78c9b479

foreign import ccall safe "wrapper" hs_bindgen_0638ea536e5c819b_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_window_v1) -> IO ())@
hs_bindgen_0638ea536e5c819b ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_window_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_0638ea536e5c819b =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_0638ea536e5c819b_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_90029d8f7fa5c867_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_window_v1) -> IO ())@
hs_bindgen_90029d8f7fa5c867 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_window_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_window_v1) -> IO ()
hs_bindgen_90029d8f7fa5c867 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_90029d8f7fa5c867_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_window_v1) -> IO ()) where

  toFunPtr = hs_bindgen_0638ea536e5c819b

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (RIP.Ptr River_window_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_90029d8f7fa5c867

foreign import ccall safe "wrapper" hs_bindgen_385d9996c55e8574_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_385d9996c55e8574 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_385d9996c55e8574 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_385d9996c55e8574_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_719e57caf018e0b0_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_719e57caf018e0b0 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()
hs_bindgen_719e57caf018e0b0 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_719e57caf018e0b0_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  toFunPtr = hs_bindgen_385d9996c55e8574

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  fromFunPtr = hs_bindgen_719e57caf018e0b0

foreign import ccall safe "wrapper" hs_bindgen_2213b2856c219aff_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_2213b2856c219aff ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_2213b2856c219aff =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_2213b2856c219aff_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_8031d9e0e660d3f9_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_8031d9e0e660d3f9 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_8031d9e0e660d3f9 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_8031d9e0e660d3f9_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_2213b2856c219aff

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_8031d9e0e660d3f9

foreign import ccall safe "wrapper" hs_bindgen_1c4fa8f07142c9bd_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_1c4fa8f07142c9bd ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_1c4fa8f07142c9bd =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_1c4fa8f07142c9bd_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_3fc58390d1a70680_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_3fc58390d1a70680 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_3fc58390d1a70680 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_3fc58390d1a70680_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_1c4fa8f07142c9bd

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_3fc58390d1a70680

foreign import ccall safe "wrapper" hs_bindgen_366a03853a7d0011_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_366a03853a7d0011 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_366a03853a7d0011 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_366a03853a7d0011_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_eb227ab5b0639f04_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_eb227ab5b0639f04 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_eb227ab5b0639f04 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_eb227ab5b0639f04_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_366a03853a7d0011

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_eb227ab5b0639f04

foreign import ccall safe "wrapper" hs_bindgen_11c315a2e81161a4_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_11c315a2e81161a4 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_11c315a2e81161a4 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_11c315a2e81161a4_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_e36088b8a98e1866_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_e36088b8a98e1866 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_e36088b8a98e1866 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_e36088b8a98e1866_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_11c315a2e81161a4

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_e36088b8a98e1866
