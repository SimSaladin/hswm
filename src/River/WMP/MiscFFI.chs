module River.WMP.MiscFFI where

import Foreign hiding (void)
import Foreign.C
import GHC.Generics (Generic)

import Wayland

{#import River.WMP.FFI #}

#include "river-window-management-v1-client-protocol.h"

-- XXX: just warns in case the result is a nullpointer
coerceWlProxy_ :: String -> WlProxy -> IO ()
coerceWlProxy_ desc (WlProxy p) = when (p == nullPtr) $ debug' $ "warning: " <> toText desc <> " returned NULL"

type WindowCaps = {#type uint32_t#}

-- * river_window_manager_v1

-- ** Requests

riverWindowManagerStop :: RiverWindowManager -> IO ()
riverWindowManagerStop wm = wl_proxy_marshal_flags' (const ()) wm {#const RIVER_WINDOW_MANAGER_V1_STOP#} emptyInterface 0

riverWindowManagerManageDirty :: RiverWindowManager -> IO ()
riverWindowManagerManageDirty wm = wl_proxy_marshal_flags' (const ()) wm {#const RIVER_WINDOW_MANAGER_V1_MANAGE_DIRTY#} emptyInterface 0

riverWindowManagerExitSession :: RiverWindowManager -> IO ()
riverWindowManagerExitSession wm = wl_proxy_marshal_flags' (const ()) wm {#const RIVER_WINDOW_MANAGER_V1_EXIT_SESSION#} emptyInterface 0

riverWindowManagerManageFinish :: RiverWindowManager -> IO ()
riverWindowManagerManageFinish wm = wl_proxy_marshal_flags' (const ()) wm {#const RIVER_WINDOW_MANAGER_V1_MANAGE_FINISH#} emptyInterface 0

riverWindowManagerRenderFinish :: RiverWindowManager -> IO ()
riverWindowManagerRenderFinish wm = wl_proxy_marshal_flags' (const ()) wm {#const RIVER_WINDOW_MANAGER_V1_RENDER_FINISH#} emptyInterface 0

riverWindowManagerGetShellSurface :: RiverWindowManager -> WlSurface -> IO RiverShellSurface
riverWindowManagerGetShellSurface wm (WlSurface surface) = wl_proxy_marshal_array_flags' RiverShellSurface wm
  {#const RIVER_WINDOW_MANAGER_V1_GET_SHELL_SURFACE#} river_shell_surface_v1_interface 0 (nullPtr, surface)

riverWindowManagerDestroy :: RiverWindowManager -> IO ()
riverWindowManagerDestroy wm = wl_proxy_destroy wm {#const RIVER_WINDOW_MANAGER_V1_DESTROY#}

-- ** Listener

mkWindowManagerListener :: (WindowManagerEvent -> IO ()) -> IO RiverWindowManagerListener
mkWindowManagerListener h = do
    p <- RiverWindowManagerListener <$> mallocBytes {#sizeof river_window_manager_v1_listener#}
    {#set river_window_manager_v1_listener.unavailable#} p      =<< (wrapListenerCb       $ \dt wm -> h $ WindowManagerUnavailable dt wm)
    {#set river_window_manager_v1_listener.finished#} p         =<< (wrapListenerCb       $ \dt wm -> h $ WindowManagerFinished dt wm)
    {#set river_window_manager_v1_listener.manage_start#} p     =<< (wrapListenerCb       $ \dt wm -> h $ WindowManagerManageStart dt wm)
    {#set river_window_manager_v1_listener.render_start#} p     =<< (wrapListenerCb       $ \dt wm -> h $ WindowManagerRenderStart dt wm)
    {#set river_window_manager_v1_listener.session_locked#} p   =<< (wrapListenerCb       $ \dt wm -> h $ WindowManagerSessionLocked dt wm)
    {#set river_window_manager_v1_listener.session_unlocked#} p =<< (wrapListenerCb       $ \dt wm -> h $ WindowManagerSessionUnlocked dt wm)
    {#set river_window_manager_v1_listener.window#} p           =<< (wrapListenerWindowCb $ \dt wm a -> h $ WindowManagerWindow dt wm a)
    {#set river_window_manager_v1_listener.output#} p           =<< (wrapListenerOutputCb $ \dt wm a -> h $ WindowManagerOutput dt wm a)
    {#set river_window_manager_v1_listener.seat#} p             =<< (wrapListenerSeatCb   $ \dt wm a -> h $ WindowManagerSeat dt wm a)
    return p

river_window_manager_v1_add_listener :: RiverWindowManager -> RiverWindowManagerListener -> Ptr () -> IO ()
river_window_manager_v1_add_listener wm (RiverWindowManagerListener l) dt = do
  res <- wl_proxy_add_listener wm (castPtr l) dt
  when (res < 0) $ throwIO $ RiverWindowManagerException "river_window_manager_v1_add_listener"

data WindowManagerEvent
  = WindowManagerUnavailable      { userdata :: !(Ptr ()), windowManager :: !RiverWindowManager }
  | WindowManagerFinished         { userdata :: !(Ptr ()), windowManager :: !RiverWindowManager }
  | WindowManagerManageStart      { userdata :: !(Ptr ()), windowManager :: !RiverWindowManager }
  | WindowManagerRenderStart      { userdata :: !(Ptr ()), windowManager :: !RiverWindowManager }
  | WindowManagerSessionLocked    { userdata :: !(Ptr ()), windowManager :: !RiverWindowManager }
  | WindowManagerSessionUnlocked  { userdata :: !(Ptr ()), windowManager :: !RiverWindowManager }
  | WindowManagerWindow           { userdata :: !(Ptr ()), windowManager :: !RiverWindowManager, window :: !RiverWindow }
  | WindowManagerOutput           { userdata :: !(Ptr ()), windowManager :: !RiverWindowManager, output :: !RiverOutput }
  | WindowManagerSeat             { userdata :: !(Ptr ()), windowManager :: !RiverWindowManager, seat :: !RiverSeat }
  deriving (Show)

foreign import ccall "wrapper" wrapListenerCb       :: ListenerCallback (Ptr () -> RiverWindowManager -> IO ())
foreign import ccall "wrapper" wrapListenerWindowCb :: ListenerCallback (Ptr () -> RiverWindowManager -> RiverWindow -> IO ())
foreign import ccall "wrapper" wrapListenerOutputCb :: ListenerCallback (Ptr () -> RiverWindowManager -> RiverOutput -> IO ())
foreign import ccall "wrapper" wrapListenerSeatCb   :: ListenerCallback (Ptr () -> RiverWindowManager -> RiverSeat -> IO ())

-----------------------------------------
-- * river_window_v1

-- ** Requests

river_window_v1_destroy :: RiverWindow -> IO ()
river_window_v1_destroy w = wl_proxy_destroy w {#const RIVER_WINDOW_V1_DESTROY#}

river_window_v1_close :: RiverWindow -> IO ()
river_window_v1_close w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_CLOSE#} emptyInterface ver 0
    >>= coerceWlProxy_ "river_window_v1_close"

river_window_v1_get_node :: RiverWindow -> IO RiverNode
river_window_v1_get_node w = wl_proxy_marshal_array_flags' RiverNode w
    {#const RIVER_WINDOW_V1_GET_NODE#} river_node_v1_interface 0 nullPtr

river_window_v1_propose_dimensions :: RiverWindow -> Int32 -> Int32 -> IO ()
river_window_v1_propose_dimensions w width height = wl_proxy_marshal_array_flags' (const ()) w
    {#const RIVER_WINDOW_V1_PROPOSE_DIMENSIONS#} emptyInterface 0 (width, height)

river_window_v1_hide :: RiverWindow -> IO ()
river_window_v1_hide w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_HIDE#} emptyInterface ver 0
    >>= coerceWlProxy_ "river_window_v1_hide"

river_window_v1_show :: RiverWindow -> IO ()
river_window_v1_show w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_SHOW#} emptyInterface ver 0
    >>= coerceWlProxy_ "river_window_v1_show"

riverWindowV1UseCsd :: RiverWindow -> IO ()
riverWindowV1UseCsd w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_USE_CSD#} emptyInterface ver 0
    >>= coerceWlProxy_ "river_window_v1_use_csd"

riverWindowV1UseSsd :: RiverWindow -> IO ()
riverWindowV1UseSsd w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_USE_SSD#} emptyInterface ver 0
    >>= coerceWlProxy_ "river_window_v1_use_ssd"

-- |
-- This request decorates the window with borders drawn by the compositor
-- on the specified edges of the window. Borders are drawn above the window
-- content.
--
-- Corners are drawn only between borders on adjacent edges. If e.g. the
-- left edge has a border and the top edge does not, the border drawn on
-- the left edge will not extend vertically beyond the top edge of the
-- window.
--
-- Borders are not drawn while the window is fullscreen.
--
-- The color is defined by four 32-bit RGBA values. Unless specified in
-- another protocol extension, the RGBA values use pre-multiplied alpha.
--
-- Setting the edges to none or the width to 0 disables the borders.
-- Setting a negative width is a protocol error.
--
-- This request completely overrides all previous set_borders requests.
-- Only the most recent set_borders request has an effect.
--
-- Note that the position/dimensions of a river_window_v1 refer to the
-- position/dimensions of the window content and are unaffected by the
-- presence of borders or decoration surfaces.
--
-- This request modifies rendering state and may only be made as part of a
-- render sequence, see the river_window_manager_v1 description.
riverWindowV1SetBorders :: RiverWindow -> WindowBorders -> IO ()
riverWindowV1SetBorders w WindowBorders{..} = wl_proxy_marshal_array_flags' (const ()) w
    {#const RIVER_WINDOW_V1_SET_BORDERS#} emptyInterface 0
    (wb_edges, wb_width, wb_r, wb_g, wb_b, wb_a)

riverWindowV1SetTiled :: RiverWindow -> Word32 -> IO ()
riverWindowV1SetTiled w edges = wl_proxy_marshal_array_flags' (const ()) w
    {#const RIVER_WINDOW_V1_SET_TILED#} emptyInterface 0 edges

riverWindowV1GetDecorationAbove :: RiverWindow -> WlSurface -> IO RiverDecoration
riverWindowV1GetDecorationAbove w (WlSurface surface) = wl_proxy_marshal_array_flags' RiverDecoration w
    {#const RIVER_WINDOW_V1_GET_DECORATION_ABOVE#} river_decoration_v1_interface 0 (nullPtr, surface)

riverWindowV1GetDecorationBelow :: RiverWindow -> WlSurface -> IO RiverDecoration
riverWindowV1GetDecorationBelow w (WlSurface surface) = wl_proxy_marshal_array_flags' RiverDecoration w
    {#const RIVER_WINDOW_V1_GET_DECORATION_BELOW#} river_decoration_v1_interface 0 (nullPtr, surface)

riverWindowV1InformResizeStart :: RiverWindow -> IO ()
riverWindowV1InformResizeStart w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_INFORM_RESIZE_START#} emptyInterface ver 0
    >>= coerceWlProxy_ "river_window_v1_inform_resize_start"

riverWindowV1InformResizeEnd :: RiverWindow -> IO ()
riverWindowV1InformResizeEnd w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_INFORM_RESIZE_END#} emptyInterface ver 0
    >>= coerceWlProxy_ "river_window_v1_inform_resize_end"

riverWindowV1SetCapabilities :: RiverWindow -> WindowCaps -> IO ()
riverWindowV1SetCapabilities w caps = wl_proxy_marshal_array_flags' (const ()) w
    {#const RIVER_WINDOW_V1_SET_CAPABILITIES#} emptyInterface 0 caps

riverWindowV1InformMaximized :: RiverWindow -> IO ()
riverWindowV1InformMaximized w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_INFORM_MAXIMIZED#} emptyInterface ver 0
    >>= coerceWlProxy_ "river_window_v1_inform_maximized"

riverWindowV1InformUnmaximized :: RiverWindow -> IO ()
riverWindowV1InformUnmaximized w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_INFORM_UNMAXIMIZED#} emptyInterface ver 0
    >>= coerceWlProxy_ "river_window_v1_inform_unmaximized"

riverWindowV1InformFullscreen :: RiverWindow -> IO ()
riverWindowV1InformFullscreen w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_INFORM_FULLSCREEN#} emptyInterface ver 0
    >>= coerceWlProxy_ "river_window_v1_inform_fullscreen"

riverWindowV1InformNotFullscreen :: RiverWindow -> IO ()
riverWindowV1InformNotFullscreen w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_INFORM_NOT_FULLSCREEN#} emptyInterface ver 0
    >>= coerceWlProxy_ "river_window_v1_inform_not_fullscreen"

riverWindowV1Fullscreen :: RiverWindow -> RiverOutput -> IO ()
riverWindowV1Fullscreen w (RiverOutput output) = wl_proxy_marshal_array_flags' (const ()) w
    {#const RIVER_WINDOW_V1_FULLSCREEN#} emptyInterface 0 output

riverWindowV1ExitFullscreen :: RiverWindow -> IO ()
riverWindowV1ExitFullscreen w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_EXIT_FULLSCREEN#} emptyInterface ver 0
    >>= coerceWlProxy_ "river_window_v1_exit_fullscreen"

riverWindowV1SetClipBox :: RiverWindow -> ClipBox -> IO ()
riverWindowV1SetClipBox w (x, y, width, height) = wl_proxy_marshal_array_flags' (const ()) w
    {#const RIVER_WINDOW_V1_SET_CLIP_BOX#} emptyInterface 0 (x, y, width, height)

riverWindowV1SetContentClipBox :: RiverWindow -> ClipBox -> IO ()
riverWindowV1SetContentClipBox w (x, y, width, height) = wl_proxy_marshal_array_flags' (const ()) w
    {#const RIVER_WINDOW_V1_SET_CONTENT_CLIP_BOX#} emptyInterface 0 (x, y, width, height)

riverWindowV1SetDimensionBounds :: RiverWindow -> Int32 -> Int32 -> IO ()
riverWindowV1SetDimensionBounds w maxWidth maxHeight = wl_proxy_marshal_array_flags' (const ()) w
    {#const RIVER_WINDOW_V1_SET_DIMENSION_BOUNDS#} emptyInterface 0 (maxWidth, maxHeight)

-- ** Listener

data WindowEvent
  = WindowClosed                  { userdata :: !(Ptr ()), window :: !RiverWindow }
  | WindowDimensionsHint          { userdata :: !(Ptr ()), window :: !RiverWindow, we_min_width, we_min_height, we_max_width, we_max_height :: !Int }
  | WindowDimensions              { userdata :: !(Ptr ()), window :: !RiverWindow, we_width, we_height :: !Int }
  | WindowAppId                   { userdata :: !(Ptr ()), window :: !RiverWindow, we_app_id :: !String }
  | WindowTitle                   { userdata :: !(Ptr ()), window :: !RiverWindow, we_title :: !String }
  | WindowParent                  { userdata :: !(Ptr ()), window :: !RiverWindow, we_parent :: !RiverWindow }
  | WindowDecorationHint          { userdata :: !(Ptr ()), window :: !RiverWindow, we_hint :: !Word32 }
  | WindowPointerMoveRequested    { userdata :: !(Ptr ()), window :: !RiverWindow, seat :: !RiverSeat }
  | WindowPointerResizeRequested  { userdata :: !(Ptr ()), window :: !RiverWindow, seat :: !RiverSeat, we_edges :: CUInt } -- XXX CUInt?
  | WindowShowWindowMenuRequested { userdata :: !(Ptr ()), window :: !RiverWindow, x, y :: !Int }
  | WindowMaximizeRequested       { userdata :: !(Ptr ()), window :: !RiverWindow }
  | WindowUnmaximizeRequested     { userdata :: !(Ptr ()), window :: !RiverWindow }
  | WindowFullscreenRequested     { userdata :: !(Ptr ()), window :: !RiverWindow, output :: !RiverOutput }
  | WindowExitFullscreenRequested { userdata :: !(Ptr ()), window :: !RiverWindow }
  | WindowMinimizeRequested       { userdata :: !(Ptr ()), window :: !RiverWindow }
  | WindowUnreliablePID           { userdata :: !(Ptr ()), window :: !RiverWindow, we_unreliable_pid :: !Int }
  | WindowPresentationHint        { userdata :: !(Ptr ()), window :: !RiverWindow, we_hint :: !Word32 }
  | WindowIdentifier              { userdata :: !(Ptr ()), window :: !RiverWindow, we_identifier :: !String }
  deriving (Show)

foreign import ccall "wrapper" mk_window_handler        :: ListenerCallback (Ptr () -> RiverWindow -> IO ())
foreign import ccall "wrapper" mk_window_handler_s      :: ListenerCallback (Ptr () -> RiverWindow -> CString -> IO ())
foreign import ccall "wrapper" mk_window_handler_w      :: ListenerCallback (Ptr () -> RiverWindow -> RiverWindow -> IO ())
foreign import ccall "wrapper" mk_window_handler_u      :: ListenerCallback (Ptr () -> RiverWindow -> CUInt -> IO ())
foreign import ccall "wrapper" mk_window_handler_i      :: ListenerCallback (Ptr () -> RiverWindow -> CInt -> IO ())
foreign import ccall "wrapper" mk_window_handler_ii     :: ListenerCallback (Ptr () -> RiverWindow -> CInt -> CInt -> IO ())
foreign import ccall "wrapper" mk_window_handler_iiii   :: ListenerCallback (Ptr () -> RiverWindow -> CInt -> CInt -> CInt -> CInt ->IO ())
foreign import ccall "wrapper" mk_window_handler_output :: ListenerCallback (Ptr () -> RiverWindow -> RiverOutput -> IO ())
foreign import ccall "wrapper" mk_window_handler_seat   :: ListenerCallback (Ptr () -> RiverWindow -> RiverSeat -> IO ())
foreign import ccall "wrapper" mk_window_handler_seat_u :: ListenerCallback (Ptr () -> RiverWindow -> RiverSeat -> CUInt -> IO ())

mkWindowListener :: (WindowEvent -> IO ()) -> IO WindowListener
mkWindowListener f = do
  p <- WindowListener <$> mallocBytes {#sizeof river_window_v1_listener#}
  {#set river_window_v1_listener.closed#} p                     =<< mk_window_handler (\dt w -> f $ WindowClosed dt w)
  {#set river_window_v1_listener.dimensions_hint#} p            =<< mk_window_handler_iiii (\dt w a b c d -> f $ WindowDimensionsHint dt w (fi a) (fi b) (fi c) (fi d))
  {#set river_window_v1_listener.dimensions#} p                 =<< mk_window_handler_ii (\dt w a b -> f $ WindowDimensions dt w (fi a) (fi b))
  {#set river_window_v1_listener.app_id#} p                     =<< mk_window_handler_s (\dt w a -> f . WindowAppId dt w =<< peekCString a)
  {#set river_window_v1_listener.title#} p                      =<< mk_window_handler_s (\dt w a -> f . WindowTitle dt w =<< peekCString a)
  {#set river_window_v1_listener.parent#} p                     =<< mk_window_handler_w (\dt w a -> f $ WindowParent dt w a)
  {#set river_window_v1_listener.decoration_hint#} p            =<< mk_window_handler_u (\dt w a -> f $ WindowDecorationHint dt w (fi a))
  {#set river_window_v1_listener.pointer_move_requested#} p     =<< mk_window_handler_seat   (\dt w a   -> f $ WindowPointerMoveRequested   dt w a)
  {#set river_window_v1_listener.pointer_resize_requested#} p   =<< mk_window_handler_seat_u (\dt w a b -> f $ WindowPointerResizeRequested dt w a b) -- XXX CUInt?
  {#set river_window_v1_listener.show_window_menu_requested#} p =<< mk_window_handler_ii (\dt w a b -> f $ WindowShowWindowMenuRequested dt w (fi a) (fi b))
  {#set river_window_v1_listener.maximize_requested#} p         =<< mk_window_handler (\dt w -> f $ WindowMaximizeRequested dt w)
  {#set river_window_v1_listener.unmaximize_requested#} p       =<< mk_window_handler (\dt w -> f $ WindowUnmaximizeRequested dt w)
  {#set river_window_v1_listener.fullscreen_requested#} p       =<< mk_window_handler_output (\dt w a -> f $ WindowFullscreenRequested dt w a)
  {#set river_window_v1_listener.exit_fullscreen_requested#} p  =<< mk_window_handler (\dt w -> f $ WindowExitFullscreenRequested dt w)
  {#set river_window_v1_listener.minimize_requested#} p         =<< mk_window_handler (\dt w -> f $ WindowMinimizeRequested dt w)
  {#set river_window_v1_listener.unreliable_pid#} p             =<< mk_window_handler_i (\dt w a -> f $ WindowUnreliablePID dt w (fi a))
  {#set river_window_v1_listener.presentation_hint#} p          =<< mk_window_handler_u (\dt w a -> f $ WindowPresentationHint dt w (fi a))
  {#set river_window_v1_listener.identifier#} p                 =<< mk_window_handler_s (\dt w a -> f . WindowIdentifier dt w =<< peekCString a)
  return p

river_window_v1_add_listener :: RiverWindow -> WindowListener -> Ptr () -> IO ()
river_window_v1_add_listener w (WindowListener p) dt = do
  res <- wl_proxy_add_listener w (castPtr p) dt
  when (res < 0) $ throwIO $ RiverWindowManagerException "river_window_v1_add_listener"

-- * river_decoration_v1

-- * river_shell_surface_v1

riverShellSurfaceV1Destroy :: MonadIO m => RiverShellSurface -> m ()
riverShellSurfaceV1Destroy ss = wl_proxy_destroy ss {#const RIVER_SHELL_SURFACE_V1_DESTROY#}

riverShellSurfaceGetNode :: MonadIO m => RiverShellSurface -> m RiverNode
riverShellSurfaceGetNode ss = wl_proxy_marshal_flags' RiverNode ss
    {#const RIVER_SHELL_SURFACE_V1_GET_NODE#} emptyInterface 0

riverShellSurfaceSyncNextCommit :: MonadIO m => RiverShellSurface -> m ()
riverShellSurfaceSyncNextCommit ss = wl_proxy_marshal_flags' (const ()) ss
    {#const RIVER_SHELL_SURFACE_V1_SYNC_NEXT_COMMIT#} emptyInterface 0

-- * river_node_v1

-- ** Requests

river_node_v1_place_top :: RiverNode -> IO ()
river_node_v1_place_top nd = wl_proxy_marshal_flags' (const ()) nd {#const RIVER_NODE_V1_PLACE_TOP#} emptyInterface 0

river_node_v1_place_bottom :: RiverNode -> IO ()
river_node_v1_place_bottom nd = wl_proxy_marshal_flags' (const ()) nd {#const RIVER_NODE_V1_PLACE_BOTTOM#} emptyInterface 0

river_node_v1_place_above :: RiverNode -> RiverNode -> IO ()
river_node_v1_place_above nd (RiverNode nd') = wl_proxy_marshal_array_flags' (const ()) nd {#const RIVER_NODE_V1_PLACE_ABOVE#} emptyInterface 0 nd'

river_node_v1_place_below :: RiverNode -> RiverNode -> IO ()
river_node_v1_place_below nd (RiverNode nd') = wl_proxy_marshal_array_flags' (const ()) nd {#const RIVER_NODE_V1_PLACE_BELOW#} emptyInterface 0 nd'

river_node_v1_set_position :: RiverNode -> Int32 -> Int32 -> IO ()
river_node_v1_set_position nd x y = wl_proxy_marshal_array_flags' (const ()) nd {#const RIVER_NODE_V1_SET_POSITION#} emptyInterface 0 (x, y)

-- * river_output_v1

-- ** Destroy

river_output_v1_destroy :: RiverOutput -> IO ()
river_output_v1_destroy output = wl_proxy_destroy output {#const RIVER_OUTPUT_V1_DESTROY#}

-- ** Listener

data OutputEvent
  = OutputRemoved    { userdata :: !(Ptr ()), output :: !RiverOutput }
  | OutputWlOutput   { userdata :: !(Ptr ()), output :: !RiverOutput, name :: !Word32 }
  | OutputPosition   { userdata :: !(Ptr ()), output :: !RiverOutput, x, y :: !Int }
  | OutputDimensions { userdata :: !(Ptr ()), output :: !RiverOutput, width, height :: !Int }
  deriving (Generic, Show)

foreign import ccall "wrapper" mk_output_removed_handler    :: ListenerCallback (Ptr () -> RiverOutput -> IO ())
foreign import ccall "wrapper" mk_output_wl_output_handler  :: ListenerCallback (Ptr () -> RiverOutput -> CUInt -> IO ())
foreign import ccall "wrapper" mk_output_position_handler   :: ListenerCallback (Ptr () -> RiverOutput -> CInt -> CInt -> IO ())
foreign import ccall "wrapper" mk_output_dimensions_handler :: ListenerCallback (Ptr () -> RiverOutput -> CInt -> CInt -> IO ())

newOutputListener :: (OutputEvent -> IO ()) -> IO RiverOutputListener
newOutputListener f = do
  p <- RiverOutputListener <$> mallocBytes {#sizeof river_output_v1_listener#}
  {#set river_output_v1_listener.removed#}    p =<< mk_output_removed_handler    (\dt o     -> f $ OutputRemoved    dt o)
  {#set river_output_v1_listener.wl_output#}  p =<< mk_output_wl_output_handler  (\dt o nm  -> f $ OutputWlOutput   dt o (fi nm))
  {#set river_output_v1_listener.position#}   p =<< mk_output_position_handler   (\dt o x y -> f $ OutputPosition   dt o (fi x) (fi y))
  {#set river_output_v1_listener.dimensions#} p =<< mk_output_dimensions_handler (\dt o w h -> f $ OutputDimensions dt o (fi w) (fi h))
  return p

river_output_v1_add_listener :: RiverOutput -> RiverOutputListener -> Ptr () -> IO ()
river_output_v1_add_listener output (RiverOutputListener l) dt = do
  res <- wl_proxy_add_listener output (castPtr l) dt
  when (res < 0) $ throwIO $ RiverWindowManagerException "river_output_v1_add_listener"

-- * river_seat_v1

-- ** Requests

river_seat_v1_op_end :: RiverSeat -> IO ()
river_seat_v1_op_end s = do
  ver <- wl_proxy_get_version s
  void $ wl_proxy_marshal_flags s {#const RIVER_SEAT_V1_OP_END#} emptyInterface ver 0

river_seat_v1_clear_focus :: RiverSeat -> IO ()
river_seat_v1_clear_focus s = do
  ver <- wl_proxy_get_version s
  void $ wl_proxy_marshal_flags s {#const RIVER_SEAT_V1_CLEAR_FOCUS#} emptyInterface ver 0

river_seat_v1_focus_window :: RiverSeat -> RiverWindow -> IO ()
river_seat_v1_focus_window s (RiverWindow w) = wl_proxy_marshal_array_flags' (const ()) s
    {#const RIVER_SEAT_V1_FOCUS_WINDOW#} emptyInterface 0 w

river_seat_v1_op_start_pointer :: RiverSeat -> IO ()
river_seat_v1_op_start_pointer s = do
  ver <- wl_proxy_get_version s
  void $ wl_proxy_marshal_flags s {#const RIVER_SEAT_V1_OP_START_POINTER#} emptyInterface ver 0

river_seat_v1_pointer_warp :: RiverSeat -> Int32 -> Int32 -> IO ()
river_seat_v1_pointer_warp s x y = wl_proxy_marshal_array_flags' (const ()) s
    {#const RIVER_SEAT_V1_POINTER_WARP#} emptyInterface 0 (x, y)

riverSeatV1SetXcursorTheme :: RiverSeat -> String -> Word32 -> IO ()
riverSeatV1SetXcursorTheme s name size = wl_proxy_marshal_array_flags' (const ()) s
    {#const RIVER_SEAT_V1_SET_XCURSOR_THEME#} emptyInterface 0 (name, size)

river_seat_v1_get_pointer_binding :: RiverSeat -> Word32 {-Button-} -> Word32 {-Modifiers-} -> IO RiverPointerBinding
river_seat_v1_get_pointer_binding s btn mods = wl_proxy_marshal_array_flags' RiverPointerBinding s
    {#const RIVER_SEAT_V1_GET_POINTER_BINDING#} river_pointer_binding_v1_interface 0 (btn, mods)

riverSeatV1FocusShellSurface :: RiverSeat -> RiverShellSurface -> IO ()
riverSeatV1FocusShellSurface s (RiverShellSurface ss) = wl_proxy_marshal_array_flags' (const ()) s
    {#const RIVER_SEAT_V1_FOCUS_SHELL_SURFACE#} emptyInterface 0 ss

-- ** Destroy

river_seat_v1_destroy :: RiverSeat -> IO ()
river_seat_v1_destroy s = do
  ver <- wl_proxy_get_version s
  void $ wl_proxy_marshal_flags s {#const RIVER_SEAT_V1_DESTROY#} emptyInterface ver _WL_MARSHAL_FLAG_DESTROY

-- ** Listener

river_seat_v1_add_listener :: RiverSeat -> RiverSeatListener -> Ptr () -> IO ()
river_seat_v1_add_listener seat (RiverSeatListener p) dt = do
  res <- wl_proxy_add_listener seat (castPtr p) dt
  when (res < 0) $ throwIO $ RiverWindowManagerException "river_seat_v1_add_listener"

mkSeatListener :: (SeatEvent -> IO ()) -> IO RiverSeatListener
mkSeatListener f = do
  p <- RiverSeatListener <$> mallocBytes {#sizeof river_seat_v1_listener#}
  {#set river_seat_v1_listener.removed#} p                   =<< mk_seat_handler        (\dt s -> f $ SeatRemoved dt s)
  {#set river_seat_v1_listener.wl_seat#} p                   =<< mk_seat_handler_u      (\dt s u -> f $ SeatWlSeat dt s (fi u))
  {#set river_seat_v1_listener.pointer_enter#} p             =<< mk_seat_handler_window (\dt s w -> f $ SeatEventPointerEnter dt s w)
  {#set river_seat_v1_listener.pointer_leave#} p             =<< mk_seat_handler        (\dt s -> f $ SeatEventPointerLeave dt s)
  {#set river_seat_v1_listener.window_interaction#} p        =<< mk_seat_handler_window (\dt s w -> f $ SeatEventWindowInteraction dt s w)
  {#set river_seat_v1_listener.shell_surface_interaction#} p =<< mk_seat_handler_ss     (\dt s ss -> f $ SeatEventShellSurfaceInteraction dt s ss)
  {#set river_seat_v1_listener.op_delta#} p                  =<< mk_seat_handler_ii     (\dt s x y -> f $ SeatEventOpDelta dt s (fi x) (fi y))
  {#set river_seat_v1_listener.op_release#} p                =<< mk_seat_handler        (\dt s -> f $ SeatEventOpRelease dt s)
  {#set river_seat_v1_listener.pointer_position#} p          =<< mk_seat_handler_ii     (\dt s x y -> f $ SeatEventPointerPosition dt s (fi x) (fi y))
  return p

data SeatEvent
  = SeatRemoved                      { userdata :: !(Ptr ()), seat :: !RiverSeat }
  | SeatWlSeat                       { userdata :: !(Ptr ()), seat :: !RiverSeat, name :: !Word32 }
  | SeatEventPointerEnter            { userdata :: !(Ptr ()), seat :: !RiverSeat, window :: !RiverWindow }
  | SeatEventPointerLeave            { userdata :: !(Ptr ()), seat :: !RiverSeat }
  | SeatEventWindowInteraction       { userdata :: !(Ptr ()), seat :: !RiverSeat, window :: !RiverWindow }
  | SeatEventShellSurfaceInteraction { userdata :: !(Ptr ()), seat :: !RiverSeat, shellSurface :: !RiverShellSurface }
  | SeatEventOpDelta                 { userdata :: !(Ptr ()), seat :: !RiverSeat, dx, dy :: !Int }
  | SeatEventOpRelease               { userdata :: !(Ptr ()), seat :: !RiverSeat }
  | SeatEventPointerPosition         { userdata :: !(Ptr ()), seat :: !RiverSeat, x, y :: !Int }
  deriving Show

foreign import ccall "wrapper" mk_seat_handler        :: ListenerCallback (Ptr () -> RiverSeat -> IO ())
foreign import ccall "wrapper" mk_seat_handler_window :: ListenerCallback (Ptr () -> RiverSeat -> RiverWindow -> IO ())
foreign import ccall "wrapper" mk_seat_handler_u      :: ListenerCallback (Ptr () -> RiverSeat -> CUInt -> IO ())
foreign import ccall "wrapper" mk_seat_handler_ss     :: ListenerCallback (Ptr () -> RiverSeat -> RiverShellSurface -> IO ())
foreign import ccall "wrapper" mk_seat_handler_ii     :: ListenerCallback (Ptr () -> RiverSeat -> CInt -> CInt -> IO ())

-- * river_pointer_binding_v1

river_pointer_binding_v1_enable :: RiverPointerBinding -> IO ()
river_pointer_binding_v1_enable x = do
  ver <- wl_proxy_get_version x
  void $ wl_proxy_marshal_flags x {#const RIVER_POINTER_BINDING_V1_ENABLE#} emptyInterface ver 0

river_pointer_binding_v1_disable :: RiverPointerBinding -> IO ()
river_pointer_binding_v1_disable x = do
  ver <- wl_proxy_get_version x
  void $ wl_proxy_marshal_flags x {#const RIVER_POINTER_BINDING_V1_DISABLE#} emptyInterface ver 0

-- ** Destroy

river_pointer_binding_v1_destroy :: RiverPointerBinding -> IO ()
river_pointer_binding_v1_destroy x = do
  ver <- wl_proxy_get_version x
  void $ wl_proxy_marshal_flags x {#const RIVER_POINTER_BINDING_V1_DESTROY#} emptyInterface ver _WL_MARSHAL_FLAG_DESTROY

-- ** Listener

river_pointer_binding_v1_add_listener :: RiverPointerBinding -> PointerBindingListener -> Ptr () -> IO ()
river_pointer_binding_v1_add_listener target (PointerBindingListener l) dt = do
  res <- wl_proxy_add_listener target (castPtr l) dt
  when (res < 0) $ throwIO $ RiverWindowManagerException "river_pointer_binding_v1_add_listener"

mkPointerBindingListener :: (PointerEvent -> IO ()) -> IO PointerBindingListener
mkPointerBindingListener f = do
  p <- PointerBindingListener <$> mallocBytes {#sizeof river_pointer_binding_v1_listener#}
  {#set river_pointer_binding_v1_listener.pressed#}   p =<< mk_pointer_binding_listener_cb (\dt b -> f $ PointerPressed dt b)
  {#set river_pointer_binding_v1_listener.released#}  p =<< mk_pointer_binding_listener_cb (\dt b -> f $ PointerReleased dt b)
  return p

data PointerEvent = PointerPressed  { userdata :: !(Ptr ()), pointerBinding :: !RiverPointerBinding }
                  | PointerReleased { userdata :: !(Ptr ()), pointerBinding :: !RiverPointerBinding }
                  deriving Show

foreign import ccall "wrapper" mk_pointer_binding_listener_cb :: ListenerCallback (Ptr () -> RiverPointerBinding -> IO ())
