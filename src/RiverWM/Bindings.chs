{-# LANGUAGE RecordWildCards #-}
module RiverWM.Bindings where

import Control.Monad

-- import C2HS
import Foreign hiding (void)
import Foreign.C
import Data.Default
import GHC.Generics (Generic)
import Control.Exception
import Text.Printf

{#import Wayland.Bindings #}

#include "river-window-management-v1-client-protocol.h"

type Data = Ptr ()

data RiverWindowManagerException = RiverWindowManagerException String deriving (Show)
instance Exception RiverWindowManagerException

foreign import ccall "&river_window_manager_v1_interface" river_window_manager_v1_interface :: WlInterface
foreign import ccall "&river_window_v1_interface" river_window_v1_interface :: WlInterface
foreign import ccall "&river_decoration_v1_interface" river_decoration_v1_interface :: WlInterface
foreign import ccall "&river_shell_surface_v1_interface" river_shell_surface_v1_interface :: WlInterface
foreign import ccall "&river_node_v1_interface" river_node_v1_interface :: WlInterface
foreign import ccall "&river_output_v1_interface" river_output_v1_interface :: WlInterface
foreign import ccall "&river_seat_v1_interface" river_seat_v1_interface :: WlInterface
foreign import ccall "&river_pointer_binding_v1_interface" river_pointer_binding_v1_interface :: WlInterface

{#pointer *river_decoration_v1 as RiverDecoration newtype#}
{#pointer *river_node_v1 as RiverNode newtype#}
{#pointer *river_output_v1 as RiverOutput newtype#}
{#pointer *river_pointer_binding_v1 as RiverPointerBinding newtype#}
{#pointer *river_seat_v1 as RiverSeat newtype#}
{#pointer *river_shell_surface_v1 as RiverShellSurface newtype#}
{#pointer *river_window_manager_v1 as RiverWindowManager newtype#}
{#pointer *river_window_v1 as RiverWindow newtype#}

instance Eq RiverOutput where RiverOutput a == RiverOutput b = a == b
instance Eq RiverSeat where RiverSeat a == RiverSeat b = a == b
instance Eq RiverWindow where RiverWindow a == RiverWindow b = a == b

instance IsWlProxy RiverWindowManager where toWlProxy (RiverWindowManager p) = WlProxy (castPtr p)
instance IsWlProxy RiverDecoration where toWlProxy (RiverDecoration p) = WlProxy (castPtr p)
instance IsWlProxy RiverWindow where toWlProxy (RiverWindow p) = WlProxy (castPtr p)
instance IsWlProxy RiverOutput where toWlProxy (RiverOutput p) = WlProxy (castPtr p)
instance IsWlProxy RiverSeat where toWlProxy (RiverSeat p) = WlProxy (castPtr p)
instance IsWlProxy RiverNode where toWlProxy (RiverNode p) = WlProxy (castPtr p)

instance IsRegistryObject RiverWindowManager where peekRegistryObject p = return $ RiverWindowManager $ castPtr p

instance WlMarshal RiverOutput where wlMarshal (RiverOutput p) = castPtr p
instance WlMarshal RiverSeat where wlMarshal (RiverSeat p) = castPtr p
instance WlMarshal RiverWindow where wlMarshal (RiverWindow p) = castPtr p
instance WlMarshal RiverNode where wlMarshal (RiverNode p) = castPtr p

-- * IFACE river_window_manager_v1

{#enum river_window_manager_v1_error as RiverWindowManagerError {underscoreToCase} #}

river_window_manager_v1_get_version :: RiverWindowManager -> IO Version
river_window_manager_v1_get_version wm = wl_proxy_get_version wm

river_window_manager_v1_set_user_data :: RiverWindowManager -> Data -> IO ()
river_window_manager_v1_set_user_data wm udata = wl_proxy_set_user_data wm udata

river_window_manager_v1_get_user_data :: RiverWindowManager -> IO Data
river_window_manager_v1_get_user_data wm = wl_proxy_get_user_data wm

-- ** Requests

wmStop :: RiverWindowManager -> IO ()
wmStop wm = do
  river_window_manager_v1_request_ wm {#const RIVER_WINDOW_MANAGER_V1_STOP#} 0

wmDestroy :: RiverWindowManager -> IO ()
wmDestroy wm = do
  river_window_manager_v1_request_ wm {#const RIVER_WINDOW_MANAGER_V1_DESTROY#} _WL_MARSHAL_FLAG_DESTROY

wmManageFinish :: RiverWindowManager -> IO ()
wmManageFinish wm = do
  ver <- wl_proxy_get_version wm
  void $ wl_proxy_marshal_flags wm {#const RIVER_WINDOW_MANAGER_V1_MANAGE_FINISH#} emptyInterface ver 0

wmManageDirty :: RiverWindowManager -> IO ()
wmManageDirty wm = do
  river_window_manager_v1_request_ wm {#const RIVER_WINDOW_MANAGER_V1_MANAGE_DIRTY#} 0

wmRenderFinish :: RiverWindowManager -> IO ()
wmRenderFinish wm = do
  ver <- wl_proxy_get_version wm
  void $ wl_proxy_marshal_flags wm {#const RIVER_WINDOW_MANAGER_V1_RENDER_FINISH#} emptyInterface ver 0

wmGetShellSurface :: RiverWindowManager -> WlSurface -> IO RiverShellSurface
wmGetShellSurface wm surface = do
  ver <- wl_proxy_get_version wm
  wl_proxy_marshal_flags__pp wm {#const RIVER_WINDOW_MANAGER_V1_GET_SHELL_SURFACE#} river_shell_surface_v1_interface ver 0 nullPtr surface
    >>= coerceWlProxy "wmGetShellSurface" (return . RiverShellSurface)

wmExitSession :: RiverWindowManager -> IO ()
wmExitSession wm = river_window_manager_v1_request_ wm {#const RIVER_WINDOW_MANAGER_V1_EXIT_SESSION#} 0

river_window_manager_v1_request_ :: RiverWindowManager -> CUInt -> Flags -> IO ()
river_window_manager_v1_request_ wm req flags = do
  ver <- wl_proxy_get_version wm
  wl_proxy_marshal_flags wm req emptyInterface ver flags >>= coerceWlProxy_ ("river_window_manager_v1_request_:" ++ show req)

type ListenerCb = Ptr () -> RiverWindowManager -> IO ()
type ListenerWindowCb = Ptr () -> RiverWindowManager -> RiverWindow -> IO ()
type ListenerOutputCb = Ptr () -> RiverWindowManager -> RiverOutput -> IO ()
type ListenerSeatCb = Ptr () -> RiverWindowManager -> RiverSeat -> IO ()

foreign import ccall "wrapper" wrapListenerCb :: ListenerCb -> IO (FunPtr ListenerCb)
foreign import ccall "wrapper" wrapListenerWindowCb :: ListenerWindowCb -> IO (FunPtr ListenerWindowCb)
foreign import ccall "wrapper" wrapListenerSeatCb :: ListenerSeatCb -> IO (FunPtr ListenerSeatCb)
foreign import ccall "wrapper" wrapListenerOutputCb :: ListenerOutputCb -> IO (FunPtr ListenerOutputCb)

data WindowManagerEvent
  = WindowManagerUnavailable      { e_data :: Data, e_wm :: RiverWindowManager }
  | WindowManagerFinished         { e_data :: Data, e_wm :: RiverWindowManager }
  | WindowManagerManageStart      { e_data :: Data, e_wm :: RiverWindowManager }
  | WindowManagerRenderStart      { e_data :: Data, e_wm :: RiverWindowManager }
  | WindowManagerSessionLocked    { e_data :: Data, e_wm :: RiverWindowManager }
  | WindowManagerSessionUnlocked  { e_data :: Data, e_wm :: RiverWindowManager }
  | WindowManagerWindow           { e_data :: Data, e_wm :: RiverWindowManager, e_window :: RiverWindow }
  | WindowManagerOutput           { e_data :: Data, e_wm :: RiverWindowManager, e_output :: RiverOutput }
  | WindowManagerSeat             { e_data :: Data, e_wm :: RiverWindowManager, e_seat :: RiverSeat }

_debugManagerEvent :: WindowManagerEvent -> String
_debugManagerEvent e = case e of
  WindowManagerUnavailable      {} -> "WindowManagerUnavailable    "
  WindowManagerFinished         {} -> "WindowManagerFinished       "
  WindowManagerManageStart      {} -> "WindowManagerManageStart    "
  WindowManagerRenderStart      {} -> "WindowManagerRenderStart    "
  WindowManagerSessionLocked    {} -> "WindowManagerSessionLocked  "
  WindowManagerSessionUnlocked  {} -> "WindowManagerSessionUnlocked"
  WindowManagerWindow           {} -> "WindowManagerWindow"
  WindowManagerOutput           {} -> "WindowManagerOutput"
  WindowManagerSeat             {} -> "WindowManagerSeat"

{#pointer *river_window_manager_v1_listener as RiverWindowManagerListener newtype#}

mkWindowManagerListener :: (WindowManagerEvent -> IO ()) -> IO RiverWindowManagerListener
mkWindowManagerListener h = do
    p <- RiverWindowManagerListener <$> mallocBytes {#sizeof river_window_manager_v1_listener#}
    {#set river_window_manager_v1_listener.unavailable#} p      =<< (wrapListenerCb $ \dt wm -> h $ WindowManagerUnavailable dt wm)
    {#set river_window_manager_v1_listener.finished#} p         =<< (wrapListenerCb $ \dt wm -> h $ WindowManagerFinished dt wm)
    {#set river_window_manager_v1_listener.manage_start#} p     =<< (wrapListenerCb $ \dt wm -> h $ WindowManagerManageStart dt wm)
    {#set river_window_manager_v1_listener.render_start#} p     =<< (wrapListenerCb $ \dt wm -> h $ WindowManagerRenderStart dt wm)
    {#set river_window_manager_v1_listener.session_locked#} p   =<< (wrapListenerCb $ \dt wm -> h $ WindowManagerSessionLocked dt wm)
    {#set river_window_manager_v1_listener.session_unlocked#} p =<< (wrapListenerCb $ \dt wm -> h $ WindowManagerSessionUnlocked dt wm)
    {#set river_window_manager_v1_listener.window#} p           =<< (wrapListenerWindowCb $ \dt wm a -> h $ WindowManagerWindow dt wm a)
    {#set river_window_manager_v1_listener.output#} p           =<< (wrapListenerOutputCb $ \dt wm a -> h $ WindowManagerOutput dt wm a)
    {#set river_window_manager_v1_listener.seat#} p             =<< (wrapListenerSeatCb $ \dt wm a -> h $ WindowManagerSeat dt wm a)
    return p

river_window_manager_v1_add_listener :: RiverWindowManager -> RiverWindowManagerListener -> Ptr () -> IO ()
river_window_manager_v1_add_listener wm (RiverWindowManagerListener l) dt = do
  res <- wl_proxy_add_listener wm (castPtr l) dt
  when (res < 0) $ throwIO $ RiverWindowManagerException "river_window_manager_v1_add_listener"

-- * IFACE river_window_v1

type WindowCaps = {#type uint32_t#}

type ClipBox = (Int, Int, Int, Int)

data WindowBorders = WindowBorders
  { wb_edges, wb_r, wb_g, wb_b, wb_a :: CUInt
  , wb_width :: Int
  } deriving (Eq, Ord, Show)

{#enum river_window_v1_error as RiverWindowError {underscoreToCase} #}
{#enum river_window_v1_decoration_hint as RiverWindowDecorationHint {underscoreToCase} #}
{#enum river_window_v1_edges as RiverWindowEdges {underscoreToCase} #}
{#enum river_window_v1_capabilities as RiverWindowCapabilities {underscoreToCase} #}
{#pointer *river_window_v1_listener as WindowListener newtype#}

invalidWindow :: RiverWindow
invalidWindow = RiverWindow $ castPtr $ nullPtr

invalidSeat :: RiverSeat
invalidSeat = RiverSeat $ castPtr $ nullPtr

data WindowEvent
  = WindowClosed { we_data :: Data, we_window :: RiverWindow }
  | WindowDimensionsHint { we_data :: Data, we_window :: RiverWindow, we_min_width, we_min_height, we_max_width, we_max_height :: CInt }
  | WindowDimensions { we_data :: Data, we_window :: RiverWindow, we_width, we_height :: CInt }
  | WindowAppId { we_data :: Data, we_window :: RiverWindow, we_app_id :: String }
  | WindowTitle { we_data :: Data, we_window :: RiverWindow, we_title :: String }
  | WindowParent { we_data :: Data, we_window :: RiverWindow, we_parent :: RiverWindow }
  | WindowDecorationHint { we_data :: Data, we_window :: RiverWindow, we_hint :: CUInt }
  | WindowPointerMoveRequested { we_data :: Data, we_window :: RiverWindow, we_seat :: RiverSeat }
  | WindowPointerResizeRequested { we_data :: Data, we_window :: RiverWindow, we_seat :: RiverSeat, we_edges :: CUInt }
  | WindowShowWindowMenuRequested { we_data :: Data, we_window :: RiverWindow, we_x, we_y :: CInt }
  | WindowMaximizeRequested { we_data :: Data, we_window :: RiverWindow }
  | WindowUnmaximizeRequested { we_data :: Data, we_window :: RiverWindow }
  | WindowFullscreenRequested { we_data :: Data, we_window :: RiverWindow, we_output :: RiverOutput }
  | WindowExitFullscreenRequested { we_data :: Data, we_window :: RiverWindow }
  | WindowMinimizeRequested { we_data :: Data, we_window :: RiverWindow }
  | WindowUnreliablePID { we_data :: Data, we_window :: RiverWindow, we_unreliable_pid :: CInt }
  | WindowPresentationHint { we_data :: Data, we_window :: RiverWindow, we_hint :: CUInt }
  | WindowIdentifier { we_data :: Data, we_window :: RiverWindow, we_identifier :: String }

instance Show WindowEvent where
  show WindowClosed{}                  = "WindowClosed{}                 "
  show WindowDimensionsHint{}          = "WindowDimensionsHint{}         "
  show WindowDimensions{}              = "WindowDimensions{}             "
  show WindowAppId{}                   = "WindowAppId{}                  "
  show WindowTitle{}                   = "WindowTitle{}                  "
  show WindowParent{}                  = "WindowParent{}                 "
  show WindowDecorationHint{}          = "WindowDecorationHint{}         "
  show WindowPointerMoveRequested{}    = "WindowPointerMoveRequested{}   "
  show WindowPointerResizeRequested{}  = "WindowPointerResizeRequested{} "
  show WindowShowWindowMenuRequested{} = "WindowShowWindowMenuRequested{}"
  show WindowMaximizeRequested{}       = "WindowMaximizeRequested{}      "
  show WindowUnmaximizeRequested{}     = "WindowUnmaximizeRequested{}    "
  show WindowFullscreenRequested{}     = "WindowFullscreenRequested{}    "
  show WindowExitFullscreenRequested{} = "WindowExitFullscreenRequested{}"
  show WindowMinimizeRequested{}       = "WindowMinimizeRequested{}      "
  show WindowUnreliablePID{}           = "WindowUnreliablePID{}          "
  show WindowPresentationHint{}        = "WindowPresentationHint{}       "
  show WindowIdentifier{}              = "WindowIdentifier{}             "

foreign import ccall "wrapper" mk_window_handler :: (Data -> RiverWindow -> IO ()) -> IO (FunPtr ((Data -> RiverWindow -> IO ())))
foreign import ccall "wrapper" mk_window_handler_s :: (Data -> RiverWindow -> CString -> IO ()) -> IO (FunPtr ((Data -> RiverWindow -> CString -> IO ())))
foreign import ccall "wrapper" mk_window_handler_w :: (Data -> RiverWindow -> RiverWindow -> IO ()) -> IO (FunPtr ((Data -> RiverWindow -> RiverWindow -> IO ())))
foreign import ccall "wrapper" mk_window_handler_u :: (Data -> RiverWindow -> CUInt -> IO ()) -> IO (FunPtr ((Data -> RiverWindow -> CUInt -> IO ())))
foreign import ccall "wrapper" mk_window_handler_i :: (Data -> RiverWindow -> CInt -> IO ()) -> IO (FunPtr ((Data -> RiverWindow -> CInt -> IO ())))
foreign import ccall "wrapper" mk_window_handler_ii :: (Data -> RiverWindow -> CInt -> CInt -> IO ()) -> IO (FunPtr ((Data -> RiverWindow -> CInt -> CInt -> IO ())))
foreign import ccall "wrapper" mk_window_handler_iiii :: (Data -> RiverWindow -> CInt -> CInt -> CInt -> CInt ->IO ()) -> IO (FunPtr ((Data -> RiverWindow -> CInt -> CInt ->CInt -> CInt -> IO ())))
foreign import ccall "wrapper" mk_window_handler_output :: (Data -> RiverWindow -> RiverOutput -> IO ()) -> IO (FunPtr ((Data -> RiverWindow -> RiverOutput -> IO ())))
foreign import ccall "wrapper" mk_window_handler_seat :: (Data -> RiverWindow -> RiverSeat -> IO ()) -> IO (FunPtr ((Data -> RiverWindow -> RiverSeat -> IO ())))
foreign import ccall "wrapper" mk_window_handler_seat_u :: (Data -> RiverWindow -> RiverSeat -> CUInt -> IO ()) -> IO (FunPtr ((Data -> RiverWindow -> RiverSeat -> CUInt -> IO ())))

mkWindowListener :: (WindowEvent -> IO ()) -> IO WindowListener
mkWindowListener f = do
  p <- WindowListener <$> mallocBytes {#sizeof river_window_v1_listener#}
  {#set river_window_v1_listener.closed#} p          =<< mk_window_handler (\dt w -> f $ WindowClosed dt w)
  {#set river_window_v1_listener.dimensions_hint#} p =<< mk_window_handler_iiii (\dt w a b c d -> f $ WindowDimensionsHint dt w a b c d)
  {#set river_window_v1_listener.dimensions#} p      =<< mk_window_handler_ii (\dt w a b -> f $ WindowDimensions dt w a b)
  {#set river_window_v1_listener.app_id#} p      =<< mk_window_handler_s (\dt w a -> f . WindowAppId dt w =<< peekCString a)
  {#set river_window_v1_listener.title#} p      =<< mk_window_handler_s (\dt w a -> f . WindowTitle dt w =<< peekCString a)
  {#set river_window_v1_listener.parent#} p      =<< mk_window_handler_w (\dt w a -> f $ WindowParent dt w a)
  {#set river_window_v1_listener.decoration_hint#} p      =<< mk_window_handler_u (\dt w a -> f $ WindowDecorationHint dt w a)
  {#set river_window_v1_listener.pointer_move_requested#} p     =<< mk_window_handler_seat (\dt w a -> f $ WindowPointerMoveRequested dt w a)
  {#set river_window_v1_listener.pointer_resize_requested#} p   =<< mk_window_handler_seat_u (\dt w a b -> f $ WindowPointerResizeRequested dt w a b)
  {#set river_window_v1_listener.show_window_menu_requested#} p =<< mk_window_handler_ii (\dt w a b -> f $ WindowShowWindowMenuRequested dt w a b)
  {#set river_window_v1_listener.maximize_requested#} p         =<< mk_window_handler (\dt w -> f $ WindowMaximizeRequested dt w)
  {#set river_window_v1_listener.unmaximize_requested#} p       =<< mk_window_handler (\dt w -> f $ WindowUnmaximizeRequested dt w)
  {#set river_window_v1_listener.fullscreen_requested#} p       =<< mk_window_handler_output (\dt w a -> f $ WindowFullscreenRequested dt w a)
  {#set river_window_v1_listener.exit_fullscreen_requested#} p  =<< mk_window_handler (\dt w -> f $ WindowExitFullscreenRequested dt w)
  {#set river_window_v1_listener.minimize_requested#} p         =<< mk_window_handler (\dt w -> f $ WindowMinimizeRequested dt w)
  {#set river_window_v1_listener.unreliable_pid#} p             =<< mk_window_handler_i (\dt w a -> f $ WindowUnreliablePID dt w a)
  {#set river_window_v1_listener.presentation_hint#} p          =<< mk_window_handler_u (\dt w a -> f $ WindowPresentationHint dt w a)
  {#set river_window_v1_listener.identifier#} p                 =<< mk_window_handler_s (\dt w a -> f . WindowIdentifier dt w =<< peekCString a)
  return p

river_window_v1_add_listener :: RiverWindow -> WindowListener -> Ptr () -> IO ()
river_window_v1_add_listener w (WindowListener p) dt = do
  res <- wl_proxy_add_listener w (castPtr p) dt
  when (res < 0) $ throwIO $ RiverWindowManagerException "river_window_v1_add_listener"

river_window_v1_get_version :: RiverWindow -> IO Version
river_window_v1_get_version wm = wl_proxy_get_version wm

river_window_v1_set_user_data :: RiverWindow -> Data -> IO ()
river_window_v1_set_user_data wm udata = wl_proxy_set_user_data wm udata

river_window_v1_get_user_data :: RiverWindow -> IO Data
river_window_v1_get_user_data wm = wl_proxy_get_user_data wm

-- ** REQUESTS

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

river_window_v1_set_borders :: RiverWindow -> WindowBorders -> IO ()
river_window_v1_set_borders w WindowBorders{..} = do
  ver <- wl_proxy_get_version w
  wl_proxy_marshal_flags__uiuuuu w {#const RIVER_WINDOW_V1_SET_BORDERS#} emptyInterface ver 0 wb_edges wb_width wb_r wb_g wb_b wb_a
    >>= coerceWlProxy_ "river_window_v1_set_borders"

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

-- * IFACE river_decoration_v1

river_decoration_v1_get_version :: RiverDecoration -> IO Version
river_decoration_v1_get_version wm = wl_proxy_get_version wm

river_decoration_v1_set_user_data :: RiverDecoration -> Ptr () -> IO ()
river_decoration_v1_set_user_data wm udata = wl_proxy_set_user_data wm udata

river_decoration_v1_get_user_data :: RiverDecoration -> IO (Ptr ())
river_decoration_v1_get_user_data wm = wl_proxy_get_user_data wm

-- * IFACE river_shell_surface_v1

-- * IFACE river_node_v1

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
--     >>= coerceWlProxy_ ("river_node_v1_set_position(" ++ show x ++ "+" ++ show y ++ ")")

-- * IFACE river_output_v1

data OutputEvent
  = OutputHandlerRemoved { _data :: Data, oh'output :: RiverOutput }
  | OutputHandlerWlOutput { _data :: Data, oh'output :: RiverOutput, wl_output_name :: CUInt }
  | OutputHandlerPosition { _data :: Data, oh'output :: RiverOutput, x, y :: CInt }
  | OutputHandlerDimensions { _data :: Data, oh'output :: RiverOutput, width, height :: CInt }
  deriving (Generic)

instance Show OutputEvent where
  show OutputHandlerRemoved{}    = "Removed"
  show OutputHandlerDimensions{..} = printf "Dimensions{width=%i,height=%i}" (fromIntegral @_ @Int width) (fromIntegral @_ @Int height)
  show OutputHandlerPosition{..}   = printf "Position{x=%i,y=%i}" (fromIntegral @_ @Int x) (fromIntegral @_ @Int y)
  show OutputHandlerWlOutput{..}     = printf "WlOutput{%i}" (fromIntegral @_ @Int wl_output_name)

foreign import ccall "wrapper" mk_output_removed_handler :: (Data -> RiverOutput -> IO ()) -> IO (FunPtr ((Data -> RiverOutput -> IO ())))
foreign import ccall "wrapper" mk_output_wl_output_handler :: (Data -> RiverOutput -> CUInt -> IO ()) -> IO (FunPtr ((Data -> RiverOutput -> CUInt -> IO ())))
foreign import ccall "wrapper" mk_output_position_handler :: (Data -> RiverOutput -> CInt -> CInt -> IO ()) -> IO (FunPtr ((Data -> RiverOutput -> CInt -> CInt -> IO ())))
foreign import ccall "wrapper" mk_output_dimensions_handler :: (Data -> RiverOutput -> CInt -> CInt -> IO ()) -> IO (FunPtr ((Data -> RiverOutput -> CInt -> CInt -> IO ())))

{#pointer *river_output_v1_listener as RiverOutputListener newtype #}

newOutputListener :: (OutputEvent -> IO ()) -> IO RiverOutputListener
newOutputListener f = newOutputListener'
  (\dt o -> f $ OutputHandlerRemoved dt o)
  (\dt o nm -> f $ OutputHandlerWlOutput dt o nm)
  (\dt o x y -> f $ OutputHandlerPosition dt o x y)
  (\dt o w h -> f $ OutputHandlerDimensions dt o w h)

newOutputListener' :: (Data -> RiverOutput -> IO ())
                   -> (Data -> RiverOutput -> CUInt -> IO ())
                   -> (Data -> RiverOutput -> CInt -> CInt -> IO ())
                   -> (Data -> RiverOutput -> CInt -> CInt -> IO ())
                   -> IO RiverOutputListener
newOutputListener' removed wloutput position dimensions = do
  p <- RiverOutputListener <$> mallocBytes {#sizeof river_output_v1_listener#}
  {#set river_output_v1_listener.removed#} p =<< mk_output_removed_handler removed
  {#set river_output_v1_listener.wl_output#} p =<< mk_output_wl_output_handler wloutput
  {#set river_output_v1_listener.position#} p =<< mk_output_position_handler position
  {#set river_output_v1_listener.dimensions#} p =<< mk_output_dimensions_handler dimensions
  return p

river_output_v1_add_listener :: RiverOutput -> RiverOutputListener -> Ptr () -> IO ()
river_output_v1_add_listener output (RiverOutputListener l) dt = do
  res <- wl_proxy_add_listener output (castPtr l) dt
  when (res < 0) $ throwIO $ RiverWindowManagerException "river_output_v1_add_listener"

river_output_v1_destroy :: RiverOutput -> IO ()
river_output_v1_destroy output = do
  ver <- wl_proxy_get_version output
  wl_proxy_marshal_flags output {#const RIVER_OUTPUT_V1_DESTROY#} emptyInterface ver _WL_MARSHAL_FLAG_DESTROY
    >>= coerceWlProxy_ "river_output_v1_destroy"

-- * IFACE river_seat_v1

{#pointer *river_seat_v1_listener as RiverSeatListener newtype #}

river_seat_v1_add_listener :: RiverSeat -> RiverSeatListener -> Data -> IO ()
river_seat_v1_add_listener seat (RiverSeatListener p) dt = do
  res <- wl_proxy_add_listener seat (castPtr p) dt
  when (res < 0) $ throwIO $ RiverWindowManagerException "river_seat_v1_add_listener"

data SeatEvent
  = SeatRemoved                      { seat_event_data :: Data, seat_event_seat :: RiverSeat }
  | SeatWlSeat                       { seat_event_data :: Data, seat_event_seat :: RiverSeat, seat_event_name :: CUInt }
  | SeatEventPointerEnter            { seat_event_data :: Data, seat_event_seat :: RiverSeat, seat_event_window :: RiverWindow }
  | SeatEventPointerLeave            { seat_event_data :: Data, seat_event_seat :: RiverSeat }
  | SeatEventWindowInteraction       { seat_event_data :: Data, seat_event_seat :: RiverSeat, seat_event_window :: RiverWindow }
  | SeatEventShellSurfaceInteraction { seat_event_data :: Data, seat_event_seat :: RiverSeat, seat_event_shell_surface :: RiverShellSurface }
  | SeatEventOpDelta                 { seat_event_data :: Data, seat_event_seat :: RiverSeat, seat_event_dx, seat_event_dy :: CInt }
  | SeatEventOpRelease               { seat_event_data :: Data, seat_event_seat :: RiverSeat }
  | SeatEventPointerPosition         { seat_event_data :: Data, seat_event_seat :: RiverSeat, seat_event_x, seat_event_y :: CInt }

instance Show SeatEvent where
  show SeatRemoved                      {} = "SeatRemoved"
  show SeatWlSeat                       {..} = printf "SeatWlSeat{name=%i}" (fromIntegral @_ @Int seat_event_name)
  show SeatEventPointerEnter            {} = "SeatEventPointerEnter"
  show SeatEventPointerLeave            {} = "SeatEventPointerLeave"
  show SeatEventWindowInteraction       {} = "SeatEventWindowInteraction"
  show SeatEventShellSurfaceInteraction {} = "SeatEventShellSurfaceInteraction"
  show SeatEventOpDelta                 {..} = "SeatEventOpDelta{dx=" ++ show seat_event_dx ++ ",dy=" ++ show seat_event_dy ++ "}"
  show SeatEventOpRelease               {} = "SeatEventOpRelease"
  show SeatEventPointerPosition         {..} = "SeatEventPointerPosition{x=" ++ show seat_event_x ++ ",y=" ++ show seat_event_y ++ "}"

foreign import ccall "wrapper" mk_seat_handler :: (Data -> RiverSeat -> IO ()) -> IO (FunPtr ((Data -> RiverSeat -> IO ())))
foreign import ccall "wrapper" mk_seat_handler_window :: (Data -> RiverSeat -> RiverWindow -> IO ()) -> IO (FunPtr ((Data -> RiverSeat -> RiverWindow -> IO ())))
foreign import ccall "wrapper" mk_seat_handler_u :: (Data -> RiverSeat -> CUInt -> IO ()) -> IO (FunPtr ((Data -> RiverSeat -> CUInt -> IO ())))
foreign import ccall "wrapper" mk_seat_handler_ss :: (Data -> RiverSeat -> RiverShellSurface -> IO ()) -> IO (FunPtr ((Data -> RiverSeat -> RiverShellSurface -> IO ())))
foreign import ccall "wrapper" mk_seat_handler_ii :: (Data -> RiverSeat -> CInt -> CInt -> IO ()) -> IO (FunPtr ((Data -> RiverSeat -> CInt -> CInt -> IO ())))

mkSeatListener :: (SeatEvent -> IO ()) -> IO RiverSeatListener
mkSeatListener f = do
  p <- RiverSeatListener <$> mallocBytes {#sizeof river_seat_v1_listener#}
  {#set river_seat_v1_listener.removed#} p                   =<< mk_seat_handler (\dt s -> f $ SeatRemoved dt s)
  {#set river_seat_v1_listener.wl_seat#} p                   =<< mk_seat_handler_u (\dt s u -> f $ SeatWlSeat dt s u)
  {#set river_seat_v1_listener.pointer_enter#} p             =<< mk_seat_handler_window (\dt s w -> f $ SeatEventPointerEnter dt s w)
  {#set river_seat_v1_listener.pointer_leave#} p             =<< mk_seat_handler (\dt s -> f $ SeatEventPointerLeave dt s)
  {#set river_seat_v1_listener.window_interaction#} p        =<< mk_seat_handler_window (\dt s w -> f $ SeatEventWindowInteraction dt s w)
  {#set river_seat_v1_listener.shell_surface_interaction#} p =<< mk_seat_handler_ss (\dt s ss -> f $ SeatEventShellSurfaceInteraction dt s ss)
  {#set river_seat_v1_listener.op_delta#} p                  =<< mk_seat_handler_ii (\dt s x y -> f $ SeatEventOpDelta dt s x y)
  {#set river_seat_v1_listener.op_release#} p                =<< mk_seat_handler (\dt s -> f $ SeatEventOpRelease dt s)
  {#set river_seat_v1_listener.pointer_position#} p          =<< mk_seat_handler_ii (\dt s x y -> f $ SeatEventPointerPosition dt s x y)
  return p

river_seat_v1_destroy :: RiverSeat -> IO ()
river_seat_v1_destroy s = do
  ver <- wl_proxy_get_version s
  void $ wl_proxy_marshal_flags s {#const RIVER_SEAT_V1_DESTROY#} emptyInterface ver _WL_MARSHAL_FLAG_DESTROY

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

-- river_seat_v1_focus_shell_surface
-- river_seat_v1_get_pointer_binding
-- river_seat_v1_get_xcursor_theme
-- river_seat_v1_pointer_warp

-- * IFACE river_pointer_binding_v1
