module RiverWM.XKB where

import Control.Monad

-- import C2HS
import Foreign hiding (void)
import Foreign.C
import Control.Exception

{#import Wayland.Bindings #}
{#import RiverWM.Bindings #}

#include "river-xkb-bindings-v1-client-protocol.h"

foreign import ccall "&river_xkb_binding_v1_interface"
  river_xkb_binding_v1_interface :: WlInterface
foreign import ccall "&river_xkb_bindings_v1_interface"
  river_xkb_bindings_v1_interface :: WlInterface
foreign import ccall "&river_xkb_bindings_seat_v1_interface"
  river_xkb_bindings_seat_v1_interface :: WlInterface

{#pointer *river_xkb_bindings_v1 as RiverXkbBindings newtype#}

{#pointer *river_xkb_binding_v1 as XkbBinding newtype#}
{#pointer *river_xkb_binding_v1_listener as XkbBindingListener newtype#}

{#pointer *river_xkb_bindings_seat_v1 as XkbBindingsSeat newtype#}
{#pointer *river_xkb_bindings_seat_v1_listener as XkbBindingsSeatListener newtype#}

instance IsWlProxy RiverXkbBindings where toWlProxy (RiverXkbBindings p) = WlProxy $ castPtr p
instance IsWlProxy XkbBindingsSeat where toWlProxy (XkbBindingsSeat p) = WlProxy $ castPtr p
instance IsWlProxy XkbBinding where toWlProxy (XkbBinding p) = WlProxy $ castPtr p

instance IsRegistryObject RiverXkbBindings where
  peekRegistryObject p = return $ RiverXkbBindings $ castPtr p

type KeySym = CUInt
type Modifiers = CUInt

river_xkb_bindings_v1_get_xkb_binding :: RiverXkbBindings -> RiverSeat -> KeySym -> Modifiers -> IO XkbBinding
river_xkb_bindings_v1_get_xkb_binding binds seat keysym mods = do
  ver <- wl_proxy_get_version binds
  WlProxy res <- wl_proxy_marshal_flags__ppuu binds {#const RIVER_XKB_BINDINGS_V1_GET_XKB_BINDING#} river_xkb_binding_v1_interface ver
    0 seat nullPtr keysym mods
  return $ XkbBinding $ castPtr res

river_xkb_binding_v1_add_listener :: XkbBinding -> XkbBindingListener -> Data -> IO ()
river_xkb_binding_v1_add_listener bind (XkbBindingListener l) dt = do
  res <- wl_proxy_add_listener bind (castPtr l) dt
  when (res < 0) $ throwIO $ RiverWindowManagerException "river_xkb_binding_v1_add_listener"

river_xkb_binding_v1_destroy :: XkbBinding -> IO ()
river_xkb_binding_v1_destroy bind = do
  ver <- wl_proxy_get_version bind
  void $ wl_proxy_marshal_flags bind {#const RIVER_XKB_BINDING_V1_DESTROY#} emptyInterface ver _WL_MARSHAL_FLAG_DESTROY

river_xkb_binding_v1_set_layout_override :: XkbBinding -> CUInt -> IO ()
river_xkb_binding_v1_set_layout_override bind layout = do
  ver <- wl_proxy_get_version bind
  void $ wl_proxy_marshal_flags__u bind {#const RIVER_XKB_BINDING_V1_SET_LAYOUT_OVERRIDE#} emptyInterface ver 0 layout

river_xkb_binding_v1_enable :: XkbBinding -> IO ()
river_xkb_binding_v1_enable bind = do
  ver <- wl_proxy_get_version bind
  void $ wl_proxy_marshal_flags bind {#const RIVER_XKB_BINDING_V1_ENABLE#} emptyInterface ver 0

river_xkb_binding_v1_disable :: XkbBinding -> IO ()
river_xkb_binding_v1_disable bind = do
  ver <- wl_proxy_get_version bind
  void $ wl_proxy_marshal_flags bind {#const RIVER_XKB_BINDING_V1_DISABLE#} emptyInterface ver 0

--xkb_binding_create :: RiverXkbBindings -> RiverSeat -> KeySym -> Modifiers -> IO Binding

river_xkb_bindings_seat_v1_add_listener :: XkbBindingsSeat -> XkbBindingsSeatListener -> Data -> IO ()
river_xkb_bindings_seat_v1_add_listener binds (XkbBindingsSeatListener l) dt = do
  res <- wl_proxy_add_listener binds (castPtr l) dt
  when (res < 0) $ throwIO $ RiverWindowManagerException "river_xkb_bindings_seat_v1_add_listener"

