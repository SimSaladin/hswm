module RiverWM.XKB where

-- import C2HS
import Foreign hiding (void)
import Foreign.C

{#import HSWM.Types.XKB #}
{#import Wayland.Bindings #}
{#import RiverWM.Bindings #}

#include "river-xkb-bindings-v1-client-protocol.h"

-- * Types

{#pointer *river_xkb_bindings_v1 as RiverXkbBindings newtype#}
{#pointer *river_xkb_bindings_seat_v1 as XkbBindingsSeat newtype#}
{#pointer *river_xkb_bindings_seat_v1_listener as XkbBindingsSeatListener newtype#}
{#pointer *river_xkb_binding_v1 as RiverXkbBinding newtype#}
{#pointer *river_xkb_binding_v1_listener as XkbBindingListener newtype#}

instance IsWlProxy RiverXkbBindings where toWlProxy (RiverXkbBindings p) = WlProxy $ castPtr p
instance IsWlProxy XkbBindingsSeat where toWlProxy (XkbBindingsSeat p) = WlProxy $ castPtr p
instance IsWlProxy RiverXkbBinding where toWlProxy (RiverXkbBinding p) = WlProxy $ castPtr p

instance IsRegistryObject RiverXkbBindings where peekRegistryObject p = return $ RiverXkbBindings $ castPtr p

deriving instance Storable RiverXkbBinding

-- * Interfaces

foreign import ccall "&river_xkb_binding_v1_interface"       river_xkb_binding_v1_interface :: WlInterface
foreign import ccall "&river_xkb_bindings_v1_interface"      river_xkb_bindings_v1_interface :: WlInterface
foreign import ccall "&river_xkb_bindings_seat_v1_interface" river_xkb_bindings_seat_v1_interface :: WlInterface

-- * river_xkb_bindings_v1

-- TODO enum river_xkb_bindings_v1_error

river_xkb_bindings_v1_destroy :: RiverXkbBindings -> IO ()
river_xkb_bindings_v1_destroy binds = do
  ver <- wl_proxy_get_version binds
  void $ wl_proxy_marshal_flags binds {#const RIVER_XKB_BINDINGS_V1_DESTROY#} emptyInterface ver _WL_MARSHAL_FLAG_DESTROY

river_xkb_bindings_v1_get_xkb_binding :: RiverXkbBindings -> RiverSeat -> KeySym -> Modifiers -> IO RiverXkbBinding
river_xkb_bindings_v1_get_xkb_binding binds seat keysym mods = do
  ver <- wl_proxy_get_version binds
  WlProxy res <- wl_proxy_marshal_flags__ppuu binds {#const RIVER_XKB_BINDINGS_V1_GET_XKB_BINDING#} river_xkb_binding_v1_interface ver
    0 seat nullPtr keysym mods
  when (res == nullPtr) $ throwIO $ RiverWindowManagerException "river_xkb_bindings_v1_get_xkb_bindng"
  return $ RiverXkbBinding $ castPtr res

river_xkb_bindings_v1_get_seat :: RiverXkbBindings -> RiverSeat -> IO XkbBindingsSeat
river_xkb_bindings_v1_get_seat binds seat = do
  ver <- wl_proxy_get_version binds
  wl_proxy_marshal_flags__pp binds {#const RIVER_XKB_BINDINGS_V1_GET_SEAT#} river_xkb_bindings_seat_v1_interface ver 0 nullPtr seat
    >>= coerceWlProxy "river_xkb_bindings_v1_get_seat" (return . XkbBindingsSeat)

-- * river_xkb_binding_v1

data XkbEvent
  = XkbKeyPressed Data RiverXkbBinding
  | XkbKeyReleased Data RiverXkbBinding
  | XkbStopRepeat Data RiverXkbBinding

instance Show XkbEvent where
  show XkbKeyPressed{} = "KeyPressed"
  show XkbKeyReleased{} = "KeyReleased"
  show XkbStopRepeat{} = "StopRepeat"

foreign import ccall "wrapper" mk_xkb_listener_cb :: (Data -> RiverXkbBinding -> IO ()) -> IO (FunPtr ((Data -> RiverXkbBinding -> IO ())))

mkXkbBindingListener :: (XkbEvent -> IO ()) -> IO XkbBindingListener
mkXkbBindingListener f = do
  p <- XkbBindingListener <$> mallocBytes {#sizeof river_xkb_binding_v1_listener#}
  {#set river_xkb_binding_v1_listener.pressed#} p      =<< mk_xkb_listener_cb (\dt x -> f $ XkbKeyPressed dt x)
  {#set river_xkb_binding_v1_listener.released#} p     =<< mk_xkb_listener_cb (\dt x -> f $ XkbKeyReleased dt x)
  {#set river_xkb_binding_v1_listener.stop_repeat#} p  =<< mk_xkb_listener_cb (\dt x -> f $ XkbStopRepeat dt x)
  return p

river_xkb_binding_v1_add_listener :: Storable x => RiverXkbBinding -> XkbBindingListener -> x -> IO (Ptr x)
river_xkb_binding_v1_add_listener bind (XkbBindingListener l) val = do
  dt <- calloc
  poke dt val
  res <- wl_proxy_add_listener bind (castPtr l) (castPtr dt)
  when (res < 0) $ throwIO $ RiverWindowManagerException "river_xkb_binding_v1_add_listener"
  return dt

river_xkb_binding_v1_destroy :: RiverXkbBinding -> IO ()
river_xkb_binding_v1_destroy bind = do
  ver <- wl_proxy_get_version bind
  void $ wl_proxy_marshal_flags bind {#const RIVER_XKB_BINDING_V1_DESTROY#} emptyInterface ver _WL_MARSHAL_FLAG_DESTROY

river_xkb_binding_v1_set_layout_override :: RiverXkbBinding -> CUInt -> IO ()
river_xkb_binding_v1_set_layout_override bind layout = do
  ver <- wl_proxy_get_version bind
  void $ wl_proxy_marshal_flags__u bind {#const RIVER_XKB_BINDING_V1_SET_LAYOUT_OVERRIDE#} emptyInterface ver 0 layout

river_xkb_binding_v1_enable :: RiverXkbBinding -> IO ()
river_xkb_binding_v1_enable bind = do
  ver <- wl_proxy_get_version bind
  void $ wl_proxy_marshal_flags bind {#const RIVER_XKB_BINDING_V1_ENABLE#} emptyInterface ver 0

river_xkb_binding_v1_disable :: RiverXkbBinding -> IO ()
river_xkb_binding_v1_disable bind = do
  ver <- wl_proxy_get_version bind
  void $ wl_proxy_marshal_flags bind {#const RIVER_XKB_BINDING_V1_DISABLE#} emptyInterface ver 0

--xkb_binding_create :: RiverXkbBindings -> RiverSeat -> KeySym -> Modifiers -> IO Binding

-- * river_xkb_bindings_seat_v1

river_xkb_bindings_seat_v1_add_listener :: XkbBindingsSeat -> XkbBindingsSeatListener -> Data -> IO ()
river_xkb_bindings_seat_v1_add_listener binds (XkbBindingsSeatListener l) dt = do
  res <- wl_proxy_add_listener binds (castPtr l) dt
  when (res < 0) $ throwIO $ RiverWindowManagerException "river_xkb_bindings_seat_v1_add_listener"

