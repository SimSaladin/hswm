{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.WindowManagementV1.Global
    ( Generated.River.WindowManagementV1.Global.river_window_manager_v1_interface
    , Generated.River.WindowManagementV1.Global.river_window_v1_interface
    , Generated.River.WindowManagementV1.Global.river_decoration_v1_interface
    , Generated.River.WindowManagementV1.Global.river_shell_surface_v1_interface
    , Generated.River.WindowManagementV1.Global.river_node_v1_interface
    , Generated.River.WindowManagementV1.Global.river_output_v1_interface
    , Generated.River.WindowManagementV1.Global.river_seat_v1_interface
    , Generated.River.WindowManagementV1.Global.river_pointer_binding_v1_interface
    )
  where

import qualified Generated.Wayland.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-window-management-v1-client-protocol.h>"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_b6d7c456c8c13e37 (void)"
  , "{"
  , "  return &river_window_manager_v1_interface;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_787effb2370ddbc5 (void)"
  , "{"
  , "  return &river_window_v1_interface;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_decoration_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_018ed14d788ed3b4 (void)"
  , "{"
  , "  return &river_decoration_v1_interface;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_shell_surface_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_f94c66bb801406a5 (void)"
  , "{"
  , "  return &river_shell_surface_v1_interface;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_f281705af45ce84a (void)"
  , "{"
  , "  return &river_node_v1_interface;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_output_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_4493397455644085 (void)"
  , "{"
  , "  return &river_output_v1_interface;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_16a01a61f0e2be20 (void)"
  , "{"
  , "  return &river_seat_v1_interface;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_d0ee47d14d4d6dd0 (void)"
  , "{"
  , "  return &river_pointer_binding_v1_interface;"
  , "}"
  ]))

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_interface@
foreign import ccall unsafe "hs_bindgen_b6d7c456c8c13e37" hs_bindgen_b6d7c456c8c13e37_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_interface@
hs_bindgen_b6d7c456c8c13e37 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_b6d7c456c8c13e37 =
  RIP.fromFFIType hs_bindgen_b6d7c456c8c13e37_base

{-# NOINLINE hs_bindgen_8fc8cfe58441010f #-}
{-|

  > page_iface_river_window_manager_v1 river_window_manager_v1

  > page_iface_river_window_manager_v1_desc Description

  This global interface should only be advertised to the window manager process. Only one window management client may be active at a time. The compositor should use the unavailable event if necessary to enforce this.

  There are two disjoint categories of state managed by this protocol:

  Window management state influences the communication between the server and individual window clients (e.g. xdg_toplevels). Window management state includes window dimensions, fullscreen state, keyboard focus, keyboard bindings, and more.

  Rendering state only affects the rendered output of the compositor and does not influence communication between the server and individual window clients. Rendering state includes the position and rendering order of windows, shell surfaces, decoration surfaces, borders, and more.

  Window management state may only be modified by the window manager as part of a manage sequence. A manage sequence is started with the manage_start event and ended with the manage_finish request. It is a protocol error to modify window management state outside of a manage sequence.

  A manage sequence is always followed by at least one render sequence. A render sequence is started with the render_start event and ended with the render_finish request.

  Rendering state may be modified by the window manager during a manage sequence or a render sequence. Regardless of when the rendering state is modified, it is applied with the next render_finish request. It is a protocol error to modify rendering state outside of a manage or render sequence.

  The server will start a manage sequence by sending new state and the manage_start event as soon as possible whenever there is a change in state that must be communicated with the window manager.

  If the window manager client needs to ensure a manage sequence is started due to a state change the compositor is not aware of, it may send the manage_dirty request.

  The server will start a render sequence by sending new state and the render_start event as soon as possible whenever there is a change in window dimensions that must be communicated with the window manager. Multiple render sequences may be made consecutively without a manage sequence in between, for example if a window independently changes its own dimensions.

  To summarize, the main loop of this protocol is as follows:

  1. The server sends events indicating all changes since the last manage sequence followed by the manage_start event.

  2. The client sends requests modifying window management state or rendering state (as defined above) followed by the manage_finish request.

  3. The server sends new state to windows and waits for responses.

  4. The server sends new window dimensions to the client followed by the render_start event.

  5. The client sends requests modifying rendering state (as defined above) followed by the render_finish request.

  6. If window dimensions change, loop back to step 4. If state that requires a manage sequence changes or if the client makes a manage_dirty request, loop back to step 1.

  For the purposes of frame perfection, the server may delay rendering new state committed by the windows in step 3 until after step 5 is finished.

  It is a protocol error for the client to make a manage_finish or render_finish request that violates this ordering.

  > page_iface_river_window_manager_v1_api API

  See @iface_river_window_manager_v1@ .

  > iface_river_window_manager_v1 The river_window_manager_v1 interface

  This global interface should only be advertised to the window manager process. Only one window management client may be active at a time. The compositor should use the unavailable event if necessary to enforce this.

  There are two disjoint categories of state managed by this protocol:

  Window management state influences the communication between the server and individual window clients (e.g. xdg_toplevels). Window management state includes window dimensions, fullscreen state, keyboard focus, keyboard bindings, and more.

  Rendering state only affects the rendered output of the compositor and does not influence communication between the server and individual window clients. Rendering state includes the position and rendering order of windows, shell surfaces, decoration surfaces, borders, and more.

  Window management state may only be modified by the window manager as part of a manage sequence. A manage sequence is started with the manage_start event and ended with the manage_finish request. It is a protocol error to modify window management state outside of a manage sequence.

  A manage sequence is always followed by at least one render sequence. A render sequence is started with the render_start event and ended with the render_finish request.

  Rendering state may be modified by the window manager during a manage sequence or a render sequence. Regardless of when the rendering state is modified, it is applied with the next render_finish request. It is a protocol error to modify rendering state outside of a manage or render sequence.

  The server will start a manage sequence by sending new state and the manage_start event as soon as possible whenever there is a change in state that must be communicated with the window manager.

  If the window manager client needs to ensure a manage sequence is started due to a state change the compositor is not aware of, it may send the manage_dirty request.

  The server will start a render sequence by sending new state and the render_start event as soon as possible whenever there is a change in window dimensions that must be communicated with the window manager. Multiple render sequences may be made consecutively without a manage sequence in between, for example if a window independently changes its own dimensions.

  To summarize, the main loop of this protocol is as follows:

  1. The server sends events indicating all changes since the last manage sequence followed by the manage_start event.

  2. The client sends requests modifying window management state or rendering state (as defined above) followed by the manage_finish request.

  3. The server sends new state to windows and waits for responses.

  4. The server sends new window dimensions to the client followed by the render_start event.

  5. The client sends requests modifying rendering state (as defined above) followed by the render_finish request.

  6. If window dimensions change, loop back to step 4. If state that requires a manage sequence changes or if the client makes a manage_dirty request, loop back to step 1.

  For the purposes of frame perfection, the server may delay rendering new state committed by the windows in step 3 until after step 5 is finished.

  It is a protocol error for the client to make a manage_finish or render_finish request that violates this ordering.

__C declaration:__ @river_window_manager_v1_interface@

__defined at:__ @river-window-management-v1-client-protocol.h 230:34@

__exported by:__ @river-window-management-v1-client-protocol.h@

__unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_river_window_manager_v1_interface@
-}
hs_bindgen_8fc8cfe58441010f :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_8fc8cfe58441010f =
  RIP.unsafePerformIO hs_bindgen_b6d7c456c8c13e37

{-# NOINLINE river_window_manager_v1_interface #-}
river_window_manager_v1_interface :: Generated.Wayland.Util.Wl_interface
river_window_manager_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_8fc8cfe58441010f)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_interface@
foreign import ccall unsafe "hs_bindgen_787effb2370ddbc5" hs_bindgen_787effb2370ddbc5_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_interface@
hs_bindgen_787effb2370ddbc5 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_787effb2370ddbc5 =
  RIP.fromFFIType hs_bindgen_787effb2370ddbc5_base

{-# NOINLINE hs_bindgen_b61d3e198059e3e6 #-}
{-|

  > page_iface_river_window_v1 river_window_v1

  > page_iface_river_window_v1_desc Description

  This represents a logical window. For example, a window may correspond to an xdg_toplevel or Xwayland window.

  A newly created window will not be displayed until the window manager makes a propose_dimensions or fullscreen request as part of a manage sequence, the server replies with a dimensions event as part of a render sequence, and that render sequence is finished.

  > page_iface_river_window_v1_api API

  See @iface_river_window_v1@ .

  > iface_river_window_v1 The river_window_v1 interface

  This represents a logical window. For example, a window may correspond to an xdg_toplevel or Xwayland window.

  A newly created window will not be displayed until the window manager makes a propose_dimensions or fullscreen request as part of a manage sequence, the server replies with a dimensions event as part of a render sequence, and that render sequence is finished.

__C declaration:__ @river_window_v1_interface@

__defined at:__ @river-window-management-v1-client-protocol.h 259:34@

__exported by:__ @river-window-management-v1-client-protocol.h@

__unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_river_window_v1_interface@
-}
hs_bindgen_b61d3e198059e3e6 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_b61d3e198059e3e6 =
  RIP.unsafePerformIO hs_bindgen_787effb2370ddbc5

{-# NOINLINE river_window_v1_interface #-}
river_window_v1_interface :: Generated.Wayland.Util.Wl_interface
river_window_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_b61d3e198059e3e6)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_decoration_v1_interface@
foreign import ccall unsafe "hs_bindgen_018ed14d788ed3b4" hs_bindgen_018ed14d788ed3b4_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_decoration_v1_interface@
hs_bindgen_018ed14d788ed3b4 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_018ed14d788ed3b4 =
  RIP.fromFFIType hs_bindgen_018ed14d788ed3b4_base

{-# NOINLINE hs_bindgen_b96d53816c26ffbf #-}
{-|

  > page_iface_river_decoration_v1 river_decoration_v1

  > page_iface_river_decoration_v1_desc Description

  The rendering order of windows with decorations is follows:

  1. Decorations created with get_decoration_below at the bottom

  2. Window content

  3. Borders configured with river_window_v1.set_borders

  4. Decorations created with get_decoration_above at the top

  The relative ordering of decoration surfaces above/below a window is undefined by this protocol and left up to the compositor.

  > page_iface_river_decoration_v1_api API

  See @iface_river_decoration_v1@ .

  > iface_river_decoration_v1 The river_decoration_v1 interface

  The rendering order of windows with decorations is follows:

  1. Decorations created with get_decoration_below at the bottom

  2. Window content

  3. Borders configured with river_window_v1.set_borders

  4. Decorations created with get_decoration_above at the top

  The relative ordering of decoration surfaces above/below a window is undefined by this protocol and left up to the compositor.

__C declaration:__ @river_decoration_v1_interface@

__defined at:__ @river-window-management-v1-client-protocol.h 292:34@

__exported by:__ @river-window-management-v1-client-protocol.h@

__unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_river_decoration_v1_interface@
-}
hs_bindgen_b96d53816c26ffbf :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_b96d53816c26ffbf =
  RIP.unsafePerformIO hs_bindgen_018ed14d788ed3b4

{-# NOINLINE river_decoration_v1_interface #-}
river_decoration_v1_interface :: Generated.Wayland.Util.Wl_interface
river_decoration_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_b96d53816c26ffbf)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_shell_surface_v1_interface@
foreign import ccall unsafe "hs_bindgen_f94c66bb801406a5" hs_bindgen_f94c66bb801406a5_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_shell_surface_v1_interface@
hs_bindgen_f94c66bb801406a5 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_f94c66bb801406a5 =
  RIP.fromFFIType hs_bindgen_f94c66bb801406a5_base

{-# NOINLINE hs_bindgen_ae90c6f99ffd7e06 #-}
{-|

  > page_iface_river_shell_surface_v1 river_shell_surface_v1

  > page_iface_river_shell_surface_v1_desc Description

  The window manager might use a shell surface to display a status bar, background image, desktop notifications, launcher, desktop menu, or whatever else it wants.

  > page_iface_river_shell_surface_v1_api API

  See @iface_river_shell_surface_v1@ .

  > iface_river_shell_surface_v1 The river_shell_surface_v1 interface

  The window manager might use a shell surface to display a status bar, background image, desktop notifications, launcher, desktop menu, or whatever else it wants.

__C declaration:__ @river_shell_surface_v1_interface@

__defined at:__ @river-window-management-v1-client-protocol.h 313:34@

__exported by:__ @river-window-management-v1-client-protocol.h@

__unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_river_shell_surface_v1_interface@
-}
hs_bindgen_ae90c6f99ffd7e06 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_ae90c6f99ffd7e06 =
  RIP.unsafePerformIO hs_bindgen_f94c66bb801406a5

{-# NOINLINE river_shell_surface_v1_interface #-}
river_shell_surface_v1_interface :: Generated.Wayland.Util.Wl_interface
river_shell_surface_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_ae90c6f99ffd7e06)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_interface@
foreign import ccall unsafe "hs_bindgen_f281705af45ce84a" hs_bindgen_f281705af45ce84a_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_interface@
hs_bindgen_f281705af45ce84a :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_f281705af45ce84a =
  RIP.fromFFIType hs_bindgen_f281705af45ce84a_base

{-# NOINLINE hs_bindgen_67ae7b3bf139a23d #-}
{-|

  > page_iface_river_node_v1 river_node_v1

  > page_iface_river_node_v1_desc Description

  The render list is a list of nodes that determines the rendering order of the compositor. Nodes may correspond to windows or shell surfaces. The relative ordering of nodes may be changed with the place_above and place_below requests, changing the rendering order.

  The initial position of a node in the render list is undefined, the window manager client must use the place_above or place_below request to guarantee a specific rendering order.

  > page_iface_river_node_v1_api API

  See @iface_river_node_v1@ .

  > iface_river_node_v1 The river_node_v1 interface

  The render list is a list of nodes that determines the rendering order of the compositor. Nodes may correspond to windows or shell surfaces. The relative ordering of nodes may be changed with the place_above and place_below requests, changing the rendering order.

  The initial position of a node in the render list is undefined, the window manager client must use the place_above or place_below request to guarantee a specific rendering order.

__C declaration:__ @river_node_v1_interface@

__defined at:__ @river-window-management-v1-client-protocol.h 344:34@

__exported by:__ @river-window-management-v1-client-protocol.h@

__unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_river_node_v1_interface@
-}
hs_bindgen_67ae7b3bf139a23d :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_67ae7b3bf139a23d =
  RIP.unsafePerformIO hs_bindgen_f281705af45ce84a

{-# NOINLINE river_node_v1_interface #-}
river_node_v1_interface :: Generated.Wayland.Util.Wl_interface
river_node_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_67ae7b3bf139a23d)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_output_v1_interface@
foreign import ccall unsafe "hs_bindgen_4493397455644085" hs_bindgen_4493397455644085_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_output_v1_interface@
hs_bindgen_4493397455644085 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_4493397455644085 =
  RIP.fromFFIType hs_bindgen_4493397455644085_base

{-# NOINLINE hs_bindgen_d5879885d1e06131 #-}
{-|

  > page_iface_river_output_v1 river_output_v1

  > page_iface_river_output_v1_desc Description

  An area in the compositor's logical coordinate space that should be treated as a single output for window management purposes. This area may correspond to a single physical output or multiple physical outputs in the case of mirroring or tiled monitors depending on the hardware and compositor configuration.

  > page_iface_river_output_v1_api API

  See @iface_river_output_v1@ .

  > iface_river_output_v1 The river_output_v1 interface

  An area in the compositor's logical coordinate space that should be treated as a single output for window management purposes. This area may correspond to a single physical output or multiple physical outputs in the case of mirroring or tiled monitors depending on the hardware and compositor configuration.

__C declaration:__ @river_output_v1_interface@

__defined at:__ @river-window-management-v1-client-protocol.h 369:34@

__exported by:__ @river-window-management-v1-client-protocol.h@

__unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_river_output_v1_interface@
-}
hs_bindgen_d5879885d1e06131 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_d5879885d1e06131 =
  RIP.unsafePerformIO hs_bindgen_4493397455644085

{-# NOINLINE river_output_v1_interface #-}
river_output_v1_interface :: Generated.Wayland.Util.Wl_interface
river_output_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_d5879885d1e06131)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_interface@
foreign import ccall unsafe "hs_bindgen_16a01a61f0e2be20" hs_bindgen_16a01a61f0e2be20_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_interface@
hs_bindgen_16a01a61f0e2be20 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_16a01a61f0e2be20 =
  RIP.fromFFIType hs_bindgen_16a01a61f0e2be20_base

{-# NOINLINE hs_bindgen_5fed1c2ea6e6c5f8 #-}
{-|

  > page_iface_river_seat_v1 river_seat_v1

  > page_iface_river_seat_v1_desc Description

  This object represents a single user's collection of input devices. It allows the window manager to route keyboard input to windows, get high-level information about pointer input, define pointer bindings, etc.

  For keyboard bindings, see the river-xkb-bindings-v1 protocol.

  Since version 4: The cursor surface/shape set by the window manager on the wl_pointer of this seat is used when no client has pointer focus, for example during a pointer operation. Since the window manager is allowed to set cursor surface/shape even when it does not have pointer focus, the compositor must ignore the serial argument of wl_pointer.set_cursor and wp_cursor_shape_device_v1.set_shape requests made by the window manager.

  The most recent cursor surface/shape set by the window manager is remembered by the compositor and restored whenever no client has pointer focus. If the window manager never sets a cursor surface/shape, the "default" shape is used.

  > page_iface_river_seat_v1_api API

  See @iface_river_seat_v1@ .

  > iface_river_seat_v1 The river_seat_v1 interface

  This object represents a single user's collection of input devices. It allows the window manager to route keyboard input to windows, get high-level information about pointer input, define pointer bindings, etc.

  For keyboard bindings, see the river-xkb-bindings-v1 protocol.

  Since version 4: The cursor surface/shape set by the window manager on the wl_pointer of this seat is used when no client has pointer focus, for example during a pointer operation. Since the window manager is allowed to set cursor surface/shape even when it does not have pointer focus, the compositor must ignore the serial argument of wl_pointer.set_cursor and wp_cursor_shape_device_v1.set_shape requests made by the window manager.

  The most recent cursor surface/shape set by the window manager is remembered by the compositor and restored whenever no client has pointer focus. If the window manager never sets a cursor surface/shape, the "default" shape is used.

__C declaration:__ @river_seat_v1_interface@

__defined at:__ @river-window-management-v1-client-protocol.h 418:34@

__exported by:__ @river-window-management-v1-client-protocol.h@

__unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_river_seat_v1_interface@
-}
hs_bindgen_5fed1c2ea6e6c5f8 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_5fed1c2ea6e6c5f8 =
  RIP.unsafePerformIO hs_bindgen_16a01a61f0e2be20

{-# NOINLINE river_seat_v1_interface #-}
river_seat_v1_interface :: Generated.Wayland.Util.Wl_interface
river_seat_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_5fed1c2ea6e6c5f8)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_interface@
foreign import ccall unsafe "hs_bindgen_d0ee47d14d4d6dd0" hs_bindgen_d0ee47d14d4d6dd0_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_interface@
hs_bindgen_d0ee47d14d4d6dd0 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_d0ee47d14d4d6dd0 =
  RIP.fromFFIType hs_bindgen_d0ee47d14d4d6dd0_base

{-# NOINLINE hs_bindgen_b32b3bb538cc39a0 #-}
{-|

  > page_iface_river_pointer_binding_v1 river_pointer_binding_v1

  > page_iface_river_pointer_binding_v1_desc Description

  This object allows the window manager to configure a pointer binding and receive events when the binding is triggered.

  The new pointer binding is not enabled until the enable request is made during a manage sequence.

  Normally, all pointer button events are sent to the surface with pointer focus by the compositor. Pointer button events that trigger a pointer binding are not sent to the surface with pointer focus.

  If multiple pointer bindings would be triggered by a single physical pointer event on the compositor side, it is compositor policy which pointer binding(s) will receive press/release events or if all of the matched pointer bindings receive press/release events.

  > page_iface_river_pointer_binding_v1_api API

  See @iface_river_pointer_binding_v1@ .

  > iface_river_pointer_binding_v1 The river_pointer_binding_v1 interface

  This object allows the window manager to configure a pointer binding and receive events when the binding is triggered.

  The new pointer binding is not enabled until the enable request is made during a manage sequence.

  Normally, all pointer button events are sent to the surface with pointer focus by the compositor. Pointer button events that trigger a pointer binding are not sent to the surface with pointer focus.

  If multiple pointer bindings would be triggered by a single physical pointer event on the compositor side, it is compositor policy which pointer binding(s) will receive press/release events or if all of the matched pointer bindings receive press/release events.

__C declaration:__ @river_pointer_binding_v1_interface@

__defined at:__ @river-window-management-v1-client-protocol.h 461:34@

__exported by:__ @river-window-management-v1-client-protocol.h@

__unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_river_pointer_binding_v1_interface@
-}
hs_bindgen_b32b3bb538cc39a0 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_b32b3bb538cc39a0 =
  RIP.unsafePerformIO hs_bindgen_d0ee47d14d4d6dd0

{-# NOINLINE river_pointer_binding_v1_interface #-}
river_pointer_binding_v1_interface :: Generated.Wayland.Util.Wl_interface
river_pointer_binding_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_b32b3bb538cc39a0)
