{-# LANGUAGE RecordWildCards #-}
module Wayland.Bindings where

import Foreign
import Foreign.C
import Control.Exception
import Control.Monad

#include <wayland-client-core.h>
#include <wayland-client-protocol.h>

data WaylandException = WaylandException String deriving (Show)
instance Exception WaylandException

type Version = {#type uint32_t#}
type Flags = {#type uint32_t#}

class IsRegistryObject o where
  peekRegistryObject :: Ptr () -> IO o

class IsOpCode a where
  toOpCode :: a -> CUInt

instance IsOpCode CUInt where
  toOpCode = id

class WlMarshal a where
  wlMarshal :: a -> Ptr ()
instance WlMarshal (Ptr a) where
  wlMarshal = castPtr


{#pointer *wl_surface as WlSurface newtype #}

instance WlMarshal WlSurface where
  wlMarshal (WlSurface p) = castPtr p

{#pointer *wl_seat as WlSeat newtype #}

-- * wl_display

{#pointer *wl_display as WlDisplay newtype #}

instance IsWlProxy WlDisplay where
  toWlProxy (WlDisplay p) = WlProxy $ castPtr p

-- * wl_registry

{#pointer *wl_registry as WlRegistry newtype #}

instance IsWlProxy WlRegistry where
  toWlProxy (WlRegistry p) = WlProxy $ castPtr p

-- * wl_interace

{#pointer *wl_interface as WlInterface newtype #}

foreign import ccall "&wl_registry_interface"
  wl_registry_interface :: WlInterface

emptyInterface :: WlInterface
emptyInterface = WlInterface nullPtr

getInterfaceName :: WlInterface -> IO String
getInterfaceName p = {#get wl_interface->name#} p >>= peekCString

-- * wl_proxy

{#pointer *wl_proxy as WlProxy newtype #}

class IsWlProxy a where
  toWlProxy :: a -> WlProxy

-- * Display

{#fun wl_display_connect {`CString'} -> `WlDisplay' #}

{#fun wl_display_roundtrip {`WlDisplay'} -> `Int' #}

{#fun wl_display_dispatch {`WlDisplay'} -> `Int' #}

-- * Constants

_WL_MARSHAL_FLAG_DESTROY :: CUInt
_WL_MARSHAL_FLAG_DESTROY = 1 -- {#const WL_MARSHAL_FLAG_DESTROY#}

type WlRegistryListenerGlobal = Ptr () -> WlRegistry -> CUInt -> CString -> CUInt -> IO ()

type WlRegistryListenerGlobalRemove = Ptr () -> WlRegistry -> CUInt -> IO ()

data WlRegistryListener = WlRegistryListener
  { wl_registry_listener_global :: WlRegistryListenerGlobal
  , wl_registry_listener_global_remove :: WlRegistryListenerGlobalRemove
  }

{#pointer *wl_registry_listener as WlRegistryListenerPtr -> WlRegistryListener#}

foreign import ccall "wrapper" wrap_global :: WlRegistryListenerGlobal -> IO (FunPtr WlRegistryListenerGlobal)
foreign import ccall "wrapper" wrap_global_remove :: WlRegistryListenerGlobalRemove -> IO (FunPtr WlRegistryListenerGlobalRemove)

-- instance Storable WlRegistryListener where
--   sizeOf _ = {#sizeof wl_registry_listener#}
--   alignment _ = {#alignof wl_registry_listener#}
--   -- peek p = WlRegistryListener
--   poke p WlRegistryListener{..} = do
--     {#set wl_registry_listener.global#} p =<< wrap_global wl_registry_listener_global
--     {#set wl_registry_listener.global_remove#} p =<< wrap_global_remove wl_registry_listener_global_remove

mkRegistryListener :: WlRegistryListener -> IO WlRegistryListenerPtr
mkRegistryListener WlRegistryListener{..} = do
    p <- mallocBytes {#sizeof wl_registry_listener#}
    {#set wl_registry_listener.global#} p =<< wrap_global wl_registry_listener_global
    {#set wl_registry_listener.global_remove#} p =<< wrap_global_remove wl_registry_listener_global_remove
    return p

wl_display_get_registry :: WlDisplay -> IO WlRegistry
wl_display_get_registry disp = do
  ver <- wl_proxy_get_version disp
  WlProxy res <- wl_proxy_marshal_flags__p disp {#const WL_DISPLAY_GET_REGISTRY#}
    wl_registry_interface ver 0 nullPtr
  return $ WlRegistry $ castPtr res

wl_registry_add_listener :: WlRegistry -> WlRegistryListenerPtr -> Ptr () -> IO ()
wl_registry_add_listener reg l dt = do
  res <- wl_proxy_add_listener reg (castPtr l) dt
  when (res < 0) $ throwIO $ WaylandException "river_window_manager_v1_add_listener"

{#fun wl_proxy_get_version `(IsWlProxy p)' => {toWlProxy `p'} -> `CUInt'#}

-- []
{#fun wl_proxy_marshal_flags `(IsWlProxy p)' =>
  {toWlProxy `p', `CUInt', `WlInterface', fromIntegral `Version', fromIntegral `Flags'
  } -> `WlProxy'#}

-- [p]
{#fun variadic wl_proxy_marshal_flags[void *] as wl_proxy_marshal_flags__p
  `(IsWlProxy p, WlMarshal a)' =>
  {toWlProxy `p', `CUInt', `WlInterface', fromIntegral `Version', fromIntegral `Flags'
  ,wlMarshal `a'} -> `WlProxy'#}

-- [pp]
{#fun variadic wl_proxy_marshal_flags[void *, void *] as wl_proxy_marshal_flags__pp
  `(IsWlProxy p, WlMarshal a1, WlMarshal a2)' =>
  {toWlProxy `p', `CUInt', `WlInterface', fromIntegral `Version', fromIntegral `Flags'
  ,wlMarshal `a1', wlMarshal `a2'} -> `WlProxy'#}

-- [puu]
{#fun variadic wl_proxy_marshal_flags[void *, uint32_t, uint32_t] as wl_proxy_marshal_flags__puu
  `(IsWlProxy p, WlMarshal a)' =>
  {toWlProxy `p', `CUInt', `WlInterface', fromIntegral `Version', fromIntegral `Flags'
  ,wlMarshal `a', `CUInt', `CUInt'} -> `WlProxy'#}

-- [upup]
{#fun variadic wl_proxy_marshal_flags[uint32_t, void *, uint32_t, void *] as wl_proxy_marshal_flags__upup
  `(IsWlProxy p, WlMarshal a, WlMarshal a2)' =>
  {toWlProxy `p', `CUInt', `WlInterface', fromIntegral `Version', fromIntegral `Flags'
  ,`CUInt', wlMarshal `a2', `CUInt', wlMarshal `a'} -> `WlProxy'#}

-- [ppuu]
{#fun variadic wl_proxy_marshal_flags[void *, void *, uint32_t, uint32_t] as wl_proxy_marshal_flags__ppuu
  `(IsWlProxy p, WlMarshal a, WlMarshal a2)' =>
  {toWlProxy `p', `CUInt', `WlInterface', fromIntegral `Version', fromIntegral `Flags'
  ,wlMarshal `a', wlMarshal `a2', `CUInt', `CUInt'} -> `WlProxy'#}

-- [u]
{#fun variadic wl_proxy_marshal_flags[uint32_t] as wl_proxy_marshal_flags__u
  `(IsWlProxy p)' =>
  {toWlProxy `p', `CUInt', `WlInterface', fromIntegral `Version', fromIntegral `Flags'
  ,`CUInt'
  } -> `WlProxy'#}

-- [uu]
{#fun variadic wl_proxy_marshal_flags[uint32_t, uint32_t] as wl_proxy_marshal_flags__uu
  `(IsWlProxy p)' =>
  {toWlProxy `p', `CUInt', `WlInterface', fromIntegral `Version', fromIntegral `Flags'
  ,`CUInt', `CUInt'} -> `WlProxy'#}

-- [ii]
{#fun variadic wl_proxy_marshal_flags[int32_t, int32_t] as wl_proxy_marshal_flags__ii
  `(IsWlProxy p)' =>
  {toWlProxy `p', `CUInt', `WlInterface', fromIntegral `Version', fromIntegral `Flags'
  ,`Int', `Int'} -> `WlProxy'#}

-- [iiii]
{#fun variadic wl_proxy_marshal_flags[int32_t, int32_t, int32_t, int32_t] as wl_proxy_marshal_flags__iiii
  `(IsWlProxy p)' =>
  {toWlProxy `p', `CUInt', `WlInterface', fromIntegral `Version', fromIntegral `Flags'
  ,`Int', `Int', `Int', `Int'} -> `WlProxy'#}

-- [uiuuuu]
{#fun variadic wl_proxy_marshal_flags[uint32_t, int32_t, uint32_t, uint32_t, uint32_t, uint32_t] as wl_proxy_marshal_flags__uiuuuu
  `(IsWlProxy p)' =>
  {toWlProxy `p', `CUInt', `WlInterface', fromIntegral `Version', fromIntegral `Flags'
  ,`CUInt', `Int', `CUInt', `CUInt', `CUInt', `CUInt'
  } -> `WlProxy'#}

{#fun wl_proxy_add_listener  `(IsWlProxy p)' => {toWlProxy `p', id `Ptr (FunPtr (IO ()))', `Ptr ()'} -> `Int' #}
{#fun wl_proxy_get_user_data `(IsWlProxy p)' => {toWlProxy `p'} -> `Ptr ()'#}
{#fun wl_proxy_set_user_data `(IsWlProxy p)' => {toWlProxy `p', `Ptr ()'} -> `()'#}

coerceWlProxy :: String -> (Ptr a -> IO b) -> WlProxy -> IO b
coerceWlProxy desc f (WlProxy p) = do
  when (p == nullPtr) $ throwIO $ WaylandException desc
  f $ castPtr p

coerceWlProxy_ :: String -> WlProxy -> IO ()
coerceWlProxy_ s = coerceWlProxy s (\_ -> return ())

wl_registry_bind :: IsRegistryObject a => WlRegistry -> CUInt -> WlInterface -> CUInt -> IO a
wl_registry_bind reg name iface ver = do
  ifaceName <- {#get wl_interface->name#} iface
  wl_proxy_marshal_flags__upup reg {#const WL_REGISTRY_BIND#} iface ver 0 name ifaceName ver nullPtr
     >>= coerceWlProxy "wl_registry_bind" peekRegistryObject
