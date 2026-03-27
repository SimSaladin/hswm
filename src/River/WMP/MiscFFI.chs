module River.WMP.MiscFFI where

import Foreign hiding (void)
import Foreign.C
import GHC.Generics (Generic)

import Wayland

{#import River.WMP.FFI #}

#include "river-window-management-v1-client-protocol.h"

-- * Types

type WindowCaps = {#type uint32_t#}

type ClipBox = (Int, Int, Int, Int)

data WindowBorders = WindowBorders
  { wb_edges               :: !Word32 -- ^ Edges on which to draw borders
  , wb_width               :: !Int    -- ^ Width of border
  , wb_r, wb_g, wb_b, wb_a :: !Word32 -- ^ RGBA 32-bit
  } deriving (Eq, Ord, Show)

invalidWindow :: RiverWindow
invalidWindow = RiverWindow $ castPtr $ nullPtr

invalidSeat :: RiverSeat
invalidSeat = RiverSeat $ castPtr $ nullPtr

type Data = Ptr () -- TODO

instance IsWlProxy RiverWindowManager where toWlProxy (RiverWindowManager p) = WlProxy (castPtr p)
instance IsWlProxy RiverDecoration where toWlProxy (RiverDecoration p) = WlProxy (castPtr p)
instance IsWlProxy RiverWindow where toWlProxy (RiverWindow p) = WlProxy (castPtr p)
instance IsWlProxy RiverOutput where toWlProxy (RiverOutput p) = WlProxy (castPtr p)
instance IsWlProxy RiverSeat where toWlProxy (RiverSeat p) = WlProxy (castPtr p)
instance IsWlProxy RiverNode where toWlProxy (RiverNode p) = WlProxy (castPtr p)
instance IsWlProxy RiverPointerBinding where toWlProxy (RiverPointerBinding p) = WlProxy (castPtr p)

instance WlMarshal RiverOutput where wlMarshal (RiverOutput p) = castPtr p
instance WlMarshal RiverSeat where wlMarshal (RiverSeat p) = castPtr p
instance WlMarshal RiverWindow where wlMarshal (RiverWindow p) = castPtr p
instance WlMarshal RiverNode where wlMarshal (RiverNode p) = castPtr p
instance WlMarshal RiverShellSurface where wlMarshal (RiverShellSurface p) = castPtr p

-- * river_window_manager_v1

-- ** Requests

wmStop :: RiverWindowManager -> IO ()
wmStop wm = do
  ver <- wl_proxy_get_version wm
  void $ wl_proxy_marshal_flags wm {#const RIVER_WINDOW_MANAGER_V1_STOP#} emptyInterface ver 0

wmDestroy :: RiverWindowManager -> IO ()
wmDestroy wm = do
  ver <- wl_proxy_get_version wm
  void $ wl_proxy_marshal_flags wm {#const RIVER_WINDOW_MANAGER_V1_DESTROY#} emptyInterface ver _WL_MARSHAL_FLAG_DESTROY

wmManageDirty :: RiverWindowManager -> IO ()
wmManageDirty wm = do
  ver <- wl_proxy_get_version wm
  void $ wl_proxy_marshal_flags wm {#const RIVER_WINDOW_MANAGER_V1_MANAGE_DIRTY#} emptyInterface ver 0

wmExitSession :: RiverWindowManager -> IO ()
wmExitSession wm = do
  ver <- wl_proxy_get_version wm
  void $ wl_proxy_marshal_flags wm {#const RIVER_WINDOW_MANAGER_V1_EXIT_SESSION#} emptyInterface ver 0

wmManageFinish :: RiverWindowManager -> IO ()
wmManageFinish wm = do
  ver <- wl_proxy_get_version wm
  void $ wl_proxy_marshal_flags wm {#const RIVER_WINDOW_MANAGER_V1_MANAGE_FINISH#} emptyInterface ver 0

wmRenderFinish :: RiverWindowManager -> IO ()
wmRenderFinish wm = do
  ver <- wl_proxy_get_version wm
  void $ wl_proxy_marshal_flags wm {#const RIVER_WINDOW_MANAGER_V1_RENDER_FINISH#} emptyInterface ver 0

wmGetShellSurface :: RiverWindowManager -> WlSurface -> IO RiverShellSurface
wmGetShellSurface wm surface = do
  ver <- wl_proxy_get_version wm
  wl_proxy_marshal_flags__pp wm {#const RIVER_WINDOW_MANAGER_V1_GET_SHELL_SURFACE#} river_shell_surface_v1_interface ver 0 nullPtr surface
    >>= coerceWlProxy "wmGetShellSurface" (return . RiverShellSurface)

-- ** Listener

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

-----------------------------------------
-- * river_window_v1

-- ** Requests

river_window_v1_destroy :: RiverWindow -> IO ()
river_window_v1_destroy w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_DESTROY#} emptyInterface ver _WL_MARSHAL_FLAG_DESTROY
    >>= coerceWlProxy_ "river_window_v1_destroy"

river_window_v1_close :: RiverWindow -> IO ()
river_window_v1_close w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_CLOSE#} emptyInterface ver 0
    >>= coerceWlProxy_ "river_window_v1_close"

river_window_v1_get_node :: RiverWindow -> IO RiverNode
river_window_v1_get_node w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags__p w {#const RIVER_WINDOW_V1_GET_NODE#} river_node_v1_interface ver 0 nullPtr
    >>= coerceWlProxy "river_window_v1_get_node" (return . RiverNode)

river_window_v1_propose_dimensions :: RiverWindow -> Int -> Int -> IO ()
river_window_v1_propose_dimensions w width height = do
  ver <- wl_proxy_get_version w
  void $ wl_proxy_marshal_flags__ii w {#const RIVER_WINDOW_V1_PROPOSE_DIMENSIONS#} emptyInterface ver 0 width height
    -- >>= coerceWlProxy_ "river_window_v1_propose_dimensions"

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

river_window_v1_use_csd :: RiverWindow -> IO ()
river_window_v1_use_csd w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_USE_CSD#} emptyInterface ver 0
    >>= coerceWlProxy_ "river_window_v1_use_csd"

river_window_v1_use_ssd :: RiverWindow -> IO ()
river_window_v1_use_ssd w = do
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
river_window_v1_set_borders :: RiverWindow -> WindowBorders -> IO ()
river_window_v1_set_borders w WindowBorders{..} = do
  ver <- wl_proxy_get_version w
  void $ wl_proxy_marshal_flags__uiuuuu w {#const RIVER_WINDOW_V1_SET_BORDERS#} emptyInterface ver 0
    (fi wb_edges) wb_width (fi wb_r) (fi wb_g) (fi wb_b) (fi wb_a)

river_window_v1_set_tiled :: RiverWindow -> CUInt -> IO ()
river_window_v1_set_tiled w edges = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags__u w {#const RIVER_WINDOW_V1_SET_TILED#} emptyInterface ver 0 edges
    >>= coerceWlProxy_ "river_window_v1_set_tiled"

river_window_v1_get_decoration_above :: RiverWindow -> WlSurface -> IO RiverDecoration
river_window_v1_get_decoration_above w surface = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags__pp w {#const RIVER_WINDOW_V1_GET_DECORATION_ABOVE#} river_decoration_v1_interface ver 0 nullPtr surface
    >>= coerceWlProxy "river_window_v1_get_decoration_above" (return . RiverDecoration)

river_window_v1_get_decoration_below :: RiverWindow -> WlSurface -> IO RiverDecoration
river_window_v1_get_decoration_below w surface = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags__pp w {#const RIVER_WINDOW_V1_GET_DECORATION_BELOW#} river_decoration_v1_interface ver 0 nullPtr surface
    >>= coerceWlProxy "river_window_v1_get_decoration_below" (return . RiverDecoration)

river_window_v1_inform_resize_start :: RiverWindow -> IO ()
river_window_v1_inform_resize_start w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_INFORM_RESIZE_START#} emptyInterface ver 0
    >>= coerceWlProxy_ "river_window_v1_inform_resize_start"

river_window_v1_inform_resize_end :: RiverWindow -> IO ()
river_window_v1_inform_resize_end w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_INFORM_RESIZE_END#} emptyInterface ver 0
    >>= coerceWlProxy_ "river_window_v1_inform_resize_end"

river_window_v1_set_capabilities :: RiverWindow -> WindowCaps -> IO ()
river_window_v1_set_capabilities w caps = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags__u w {#const RIVER_WINDOW_V1_SET_CAPABILITIES#} emptyInterface ver 0 caps
    >>= coerceWlProxy_ "river_window_v1_set_capabilities"

river_window_v1_inform_maximized :: RiverWindow -> IO ()
river_window_v1_inform_maximized w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_INFORM_MAXIMIZED#} emptyInterface ver 0
    >>= coerceWlProxy_ "river_window_v1_inform_maximized"

river_window_v1_inform_unmaximized :: RiverWindow -> IO ()
river_window_v1_inform_unmaximized w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_INFORM_UNMAXIMIZED#} emptyInterface ver 0
    >>= coerceWlProxy_ "river_window_v1_inform_unmaximized"

river_window_v1_inform_fullscreen :: RiverWindow -> IO ()
river_window_v1_inform_fullscreen w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_INFORM_FULLSCREEN#} emptyInterface ver 0
    >>= coerceWlProxy_ "river_window_v1_inform_fullscreen"

river_window_v1_inform_not_fullscreen :: RiverWindow -> IO ()
river_window_v1_inform_not_fullscreen w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_INFORM_NOT_FULLSCREEN#} emptyInterface ver 0
    >>= coerceWlProxy_ "river_window_v1_inform_not_fullscreen"

river_window_v1_fullscreen :: RiverWindow -> RiverOutput -> IO ()
river_window_v1_fullscreen w output = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags__p w {#const RIVER_WINDOW_V1_FULLSCREEN#} emptyInterface ver 0 output
    >>= coerceWlProxy_ "river_window_v1_fullscreen"

river_window_v1_exit_fullscreen :: RiverWindow -> IO ()
river_window_v1_exit_fullscreen w = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags w {#const RIVER_WINDOW_V1_EXIT_FULLSCREEN#} emptyInterface ver 0
    >>= coerceWlProxy_ "river_window_v1_exit_fullscreen"

river_window_v1_set_clip_box :: RiverWindow -> ClipBox -> IO ()
river_window_v1_set_clip_box w (x, y, width, height) = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags__iiii w {#const RIVER_WINDOW_V1_SET_CLIP_BOX#} emptyInterface ver 0 x y width height
    >>= coerceWlProxy_ "river_window_v1_set_clip_box"

river_window_v1_set_content_clip_box :: RiverWindow -> ClipBox -> IO ()
river_window_v1_set_content_clip_box w (x, y, width, height) = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags__iiii w {#const RIVER_WINDOW_V1_SET_CONTENT_CLIP_BOX#} emptyInterface ver 0 x y width height
    >>= coerceWlProxy_ "river_window_v1_set_content_clip_box"

river_window_v1_set_dimension_bounds :: RiverWindow -> Int -> Int -> IO ()
river_window_v1_set_dimension_bounds w maxWidth maxHeight = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags__ii w {#const RIVER_WINDOW_V1_SET_DIMENSION_BOUNDS#} emptyInterface ver 0 maxWidth maxHeight
    >>= coerceWlProxy_ "river_window_v1_set_dimension_bounds"

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

-- TODO

-- * river_node_v1

-- ** Requests

river_node_v1_place_top :: RiverNode -> IO ()
river_node_v1_place_top nd = do
  ver <- wl_proxy_get_version nd
  void $ wl_proxy_marshal_flags nd {#const RIVER_NODE_V1_PLACE_TOP#} emptyInterface ver 0

river_node_v1_place_bottom :: RiverNode -> IO ()
river_node_v1_place_bottom nd = do
  ver <- wl_proxy_get_version nd
  void $ wl_proxy_marshal_flags nd {#const RIVER_NODE_V1_PLACE_BOTTOM#} emptyInterface ver 0

river_node_v1_place_above :: RiverNode -> RiverNode -> IO ()
river_node_v1_place_above nd nd' = do
  ver <- wl_proxy_get_version nd
  void $ wl_proxy_marshal_flags__p nd {#const RIVER_NODE_V1_PLACE_ABOVE#} emptyInterface ver 0 nd'

river_node_v1_place_below :: RiverNode -> RiverNode -> IO ()
river_node_v1_place_below nd nd' = do
  ver <- wl_proxy_get_version nd
  void $ wl_proxy_marshal_flags__p nd {#const RIVER_NODE_V1_PLACE_BELOW#} emptyInterface ver 0 nd'

river_node_v1_set_position :: RiverNode -> Int -> Int -> IO ()
river_node_v1_set_position nd x y = do
  ver <- wl_proxy_get_version nd
  void $ wl_proxy_marshal_flags__ii nd {#const RIVER_NODE_V1_SET_POSITION#} emptyInterface ver 0 x y

-- * river_output_v1

-- ** Destroy

river_output_v1_destroy :: RiverOutput -> IO ()
river_output_v1_destroy output = do
  ver <- wl_proxy_get_version output
  wl_proxy_marshal_flags output {#const RIVER_OUTPUT_V1_DESTROY#} emptyInterface ver _WL_MARSHAL_FLAG_DESTROY
    >>= coerceWlProxy_ "river_output_v1_destroy"

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
river_seat_v1_focus_window s w = do
  ver <- wl_proxy_get_version s
  void $ wl_proxy_marshal_flags__p s {#const RIVER_SEAT_V1_FOCUS_WINDOW#} emptyInterface ver 0 w

river_seat_v1_op_start_pointer :: RiverSeat -> IO ()
river_seat_v1_op_start_pointer s = do
  ver <- wl_proxy_get_version s
  void $ wl_proxy_marshal_flags s {#const RIVER_SEAT_V1_OP_START_POINTER#} emptyInterface ver 0

river_seat_v1_pointer_warp :: RiverSeat -> Int -> Int -> IO ()
river_seat_v1_pointer_warp s x y = do
  ver <- wl_proxy_get_version s
  void $ wl_proxy_marshal_flags__ii s {#const RIVER_SEAT_V1_POINTER_WARP#} emptyInterface ver 0 x y

river_seat_v1_set_xcursor_theme :: RiverSeat -> String -> CUInt -> IO ()
river_seat_v1_set_xcursor_theme s name size = withCString name $ \c_name -> do
  ver <- wl_proxy_get_version s
  void $ wl_proxy_marshal_flags__pu s {#const RIVER_SEAT_V1_SET_XCURSOR_THEME#} emptyInterface ver 0 c_name size

river_seat_v1_get_pointer_binding :: RiverSeat -> CUInt {-Button-} -> CUInt {-Modifiers-} -> IO RiverPointerBinding
river_seat_v1_get_pointer_binding s btn mods = do
  ver <- wl_proxy_get_version s
  wl_proxy_marshal_flags__uu s {#const RIVER_SEAT_V1_GET_POINTER_BINDING#} river_pointer_binding_v1_interface ver 0 btn mods
    >>= coerceWlProxy "river_seat_v1_get_pointer_binding" (return . RiverPointerBinding)

river_seat_v1_focus_shell_surface :: RiverSeat -> RiverShellSurface -> IO ()
river_seat_v1_focus_shell_surface s ss = do
  ver <- wl_proxy_get_version s
  void $ wl_proxy_marshal_flags__p s {#const RIVER_SEAT_V1_FOCUS_SHELL_SURFACE#} emptyInterface ver 0 ss

-- ** Destroy

river_seat_v1_destroy :: RiverSeat -> IO ()
river_seat_v1_destroy s = do
  ver <- wl_proxy_get_version s
  void $ wl_proxy_marshal_flags s {#const RIVER_SEAT_V1_DESTROY#} emptyInterface ver _WL_MARSHAL_FLAG_DESTROY

-- ** Listener

river_seat_v1_add_listener :: RiverSeat -> RiverSeatListener -> Data -> IO ()
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
