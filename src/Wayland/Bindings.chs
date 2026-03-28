{-# LANGUAGE RecordWildCards #-}
module Wayland.Bindings
  ( module Wayland.Bindings
  , module Wayland.FFI
  ) where

import Foreign
import Foreign.C

{#import Wayland.FFI#}

#include <wayland-client-core.h>
#include <wayland-client-protocol.h>

-- XXX WlMarshal
class WlMarshal a where
  wlMarshal :: a -> Ptr ()

instance WlMarshal (Ptr a) where wlMarshal = castPtr
instance WlMarshal WlSurface where wlMarshal (WlSurface p) = castPtr p

-- * wl_proxy

-- wl_proxy_marshal_flags[]
-- [p]
{#fun variadic wl_proxy_marshal_flags[void *] as wl_proxy_marshal_flags__p
  `(IsWlProxy p, WlMarshal a)' => {toWlProxy `p', `CUInt', `WlInterface', fromIntegral `Version', fromIntegral `Flags'
  ,wlMarshal `a'} -> `WlProxy'#}

-- [u]
{#fun variadic wl_proxy_marshal_flags[uint32_t] as wl_proxy_marshal_flags__u
  `(IsWlProxy p)' => {toWlProxy `p', `CUInt', `WlInterface', fromIntegral `Version', fromIntegral `Flags'
  ,`CUInt' } -> `WlProxy'#}

-- [uu]
{#fun variadic wl_proxy_marshal_flags[uint32_t, uint32_t] as wl_proxy_marshal_flags__uu
  `(IsWlProxy p)' => {toWlProxy `p', `CUInt', `WlInterface', fromIntegral `Version', fromIntegral `Flags'
  ,`CUInt', `CUInt'} -> `WlProxy'#}

-- [ii]
{#fun variadic wl_proxy_marshal_flags[int32_t, int32_t] as wl_proxy_marshal_flags__ii
  `(IsWlProxy p)' => {toWlProxy `p', `CUInt', `WlInterface', fromIntegral `Version', fromIntegral `Flags'
  ,`Int', `Int'} -> `WlProxy'#}

-- [pp]
{#fun variadic wl_proxy_marshal_flags[void *, void *] as wl_proxy_marshal_flags__pp
  `(IsWlProxy p, WlMarshal a1, WlMarshal a2)' => {toWlProxy `p', `CUInt', `WlInterface', fromIntegral `Version', fromIntegral `Flags'
  ,wlMarshal `a1', wlMarshal `a2'} -> `WlProxy'#}

-- [pu]
{#fun variadic wl_proxy_marshal_flags[void *, uint32_t] as wl_proxy_marshal_flags__pu
  `(IsWlProxy p, WlMarshal a1)' => {toWlProxy `p', `CUInt', `WlInterface', fromIntegral `Version', fromIntegral `Flags'
  ,wlMarshal `a1', `CUInt'} -> `WlProxy'#}

-- [ppuu]
{#fun variadic wl_proxy_marshal_flags[void *, void *, uint32_t, uint32_t] as wl_proxy_marshal_flags__ppuu
  `(IsWlProxy p, WlMarshal a, WlMarshal a2)' => {toWlProxy `p', `CUInt', `WlInterface', fromIntegral `Version', fromIntegral `Flags'
  ,wlMarshal `a', wlMarshal `a2', `CUInt', `CUInt'} -> `WlProxy'#}

-- [iiii]
{#fun variadic wl_proxy_marshal_flags[int32_t, int32_t, int32_t, int32_t] as wl_proxy_marshal_flags__iiii
  `(IsWlProxy p)' => {toWlProxy `p', `CUInt', `WlInterface', fromIntegral `Version', fromIntegral `Flags'
  ,`Int', `Int', `Int', `Int'} -> `WlProxy'#}

-- [uiuuuu]
{#fun variadic wl_proxy_marshal_flags[uint32_t, int32_t, uint32_t, uint32_t, uint32_t, uint32_t] as wl_proxy_marshal_flags__uiuuuu
  `(IsWlProxy p)' => {toWlProxy `p', `CUInt', `WlInterface', fromIntegral `Version', fromIntegral `Flags'
  ,`CUInt', `Int', `CUInt', `CUInt', `CUInt', `CUInt' } -> `WlProxy'#}

coerceWlProxy :: String -> (Ptr a -> IO b) -> WlProxy -> IO b
coerceWlProxy desc f (WlProxy p) = do
  when (p == nullPtr) $ debug' $ "warning: " <> toText desc <> " returned NULL"
  f $ castPtr p

coerceWlProxy_ :: String -> WlProxy -> IO ()
coerceWlProxy_ s = coerceWlProxy s (\_ -> return ())

-- * wl_keyboard

-- ** Listener

wl_keyboard_add_listener :: WlKeyboard -> WlKeyboardListener -> Ptr a -> IO ()
wl_keyboard_add_listener kbd (WlKeyboardListener l) dt = do
  res <- wl_proxy_add_listener kbd (castPtr l) (castPtr dt)
  when (res < 0) $ throwIO $ WaylandException "wl_keyboard_add_listener"

mkKeyboardListener :: (WlKeyboardEvent a -> IO ()) -> IO WlKeyboardListener
mkKeyboardListener f = do
    p <- WlKeyboardListener <$> callocBytes {#sizeof wl_keyboard_listener#}
    {#set wl_keyboard_listener.keymap#} p      =<< wrap_wl_keyboard_listener_keymap     (\dt kbd fmt fd size    -> f $ KeyboardKeymap     (castPtr dt) kbd fmt fd size)
    {#set wl_keyboard_listener.enter#} p       =<< wrap_wl_keyboard_listener_Enter      (\dt kbd u1 p1 p2       -> f $ KeyboardEnter      (castPtr dt) kbd u1 p1 p2)
    {#set wl_keyboard_listener.leave#} p       =<< wrap_wl_keyboard_listener_Leave      (\dt kbd u1 p1          -> f $ KeyboardLeave      (castPtr dt) kbd u1 p1)
    {#set wl_keyboard_listener.key#} p         =<< wrap_wl_keyboard_listener_Key        (\dt kbd u1 u2 u3 u4    -> f $ KeyboardKey        (castPtr dt) kbd u1 u2 u3 u4)
    {#set wl_keyboard_listener.modifiers#} p   =<< wrap_wl_keyboard_listener_Modifiers  (\dt kbd u1 u2 u3 u4 u5 -> f $ KeyboardModifiers  (castPtr dt) kbd u1 u2 u3 u4 u5)
    {#set wl_keyboard_listener.repeat_info#} p =<< wrap_wl_keyboard_listener_RepeatInfo (\dt kbd rate delay     -> f $ KeyboardRepeatInfo (castPtr dt) kbd rate delay)
    return p

data WlKeyboardEvent a
  = KeyboardKeymap     !(Ptr a) !WlKeyboard !CUInt {-fmt-} !CInt {-fd-} !CUInt {-size-}
  | KeyboardEnter      !(Ptr a) !WlKeyboard !CUInt !WlSurface !WlArray
  | KeyboardLeave      !(Ptr a) !WlKeyboard !CUInt !WlSurface
  | KeyboardKey        !(Ptr a) !WlKeyboard !CUInt !CUInt !CUInt !CUInt
  | KeyboardModifiers  !(Ptr a) !WlKeyboard !CUInt !CUInt !CUInt !CUInt !CUInt
  | KeyboardRepeatInfo !(Ptr a) !WlKeyboard !CInt !CInt
  deriving Show

foreign import ccall "wrapper" wrap_wl_keyboard_listener_keymap     :: ListenerCallback (Ptr () -> WlKeyboard -> CUInt {-fmt-} -> CInt{-fd-} -> CUInt{-size-} -> IO ())
foreign import ccall "wrapper" wrap_wl_keyboard_listener_Enter      :: ListenerCallback (Ptr () -> WlKeyboard -> CUInt -> WlSurface -> WlArray -> IO ())
foreign import ccall "wrapper" wrap_wl_keyboard_listener_Leave      :: ListenerCallback (Ptr () -> WlKeyboard -> CUInt -> WlSurface -> IO ())
foreign import ccall "wrapper" wrap_wl_keyboard_listener_Key        :: ListenerCallback (Ptr () -> WlKeyboard -> CUInt -> CUInt -> CUInt -> CUInt -> IO ())
foreign import ccall "wrapper" wrap_wl_keyboard_listener_Modifiers  :: ListenerCallback (Ptr () -> WlKeyboard -> CUInt -> CUInt -> CUInt -> CUInt -> CUInt -> IO ())
foreign import ccall "wrapper" wrap_wl_keyboard_listener_RepeatInfo :: ListenerCallback (Ptr () -> WlKeyboard -> CInt -> CInt -> IO ())
