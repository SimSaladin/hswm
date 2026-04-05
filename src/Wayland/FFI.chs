module Wayland.FFI where

import Foreign hiding (void)
import Foreign.C

import qualified Wayland.Client as WL

#include <wayland-client.h>

-- * Types

type WlInterface = ConstPtr WL.Wl_interface
type Version     = Word32
type Flags       = {#type uint32_t#}

type WlSurface = WL.Surface
type WlRegistry = WL.Registry
type WlSeat = WL.Seat

{#pointer *wl_array             as WlArray            newtype #}
{#pointer *wl_keyboard          as WlKeyboard         newtype #}
{#pointer *wl_proxy             as WlProxy            newtype #}
{#pointer *wl_keyboard_listener as WlKeyboardListener newtype #}
{#pointer *wl_registry_listener as WlRegistryListener newtype #}

deriving instance Show WlArray
deriving instance Show WlKeyboard
deriving instance Show WlProxy
deriving instance Show WlKeyboardListener

-- | For writing C wrappers for callback functions.
type ListenerCallback f = f -> IO (FunPtr f)

-- * Constants

_WL_MARSHAL_FLAG_DESTROY :: Flags
_WL_MARSHAL_FLAG_DESTROY = 1 -- {#const WL_MARSHAL_FLAG_DESTROY#}

-- * wl_interface

getInterfaceName :: WlInterface -> IO String
getInterfaceName p = {#get wl_interface->name#} (unConstPtr p) >>= peekCString

emptyInterface :: WlInterface
emptyInterface = ConstPtr nullPtr

-- * wl_proxy

{#fun wl_proxy_get_version   `(IsWlProxy p)' => {toWlProxy `p'} -> `Version' fromIntegral#}

{#fun wl_proxy_get_user_data `(IsWlProxy p)' => {toWlProxy `p'} -> `Ptr ()'#}

{#fun wl_proxy_set_user_data `(IsWlProxy p)' => {toWlProxy `p', `Ptr ()'} -> `()'#}

{#fun wl_proxy_add_listener  `(IsWlProxy p)' =>
  { toWlProxy `p' , id `Ptr (FunPtr (IO ()))' , `Ptr ()' } -> `Int' #}

castUnConstPtr = castPtr . unConstPtr

{#fun wl_proxy_marshal_flags `(IsWlProxy p)' =>
  { toWlProxy    `p'
  ,              `CUInt'
  , castUnConstPtr      `WlInterface'
  , fromIntegral `Version'
  , fromIntegral `Flags'
  } -> `WlProxy' #}

{#fun wl_proxy_marshal_array_flags
  `(IsWlProxy p1, WlArgs args)' =>
  { toWlProxy     `p1' -- wl_proxy*
  ,               `CUInt' -- ^ opcode
  , castUnConstPtr       `WlInterface'
  , fromIntegral  `Version'
  , fromIntegral  `Flags'
  , allocaWlArgs* `args' -- Ptr () , union wl_argument * args)
  } -> `WlProxy' #}

-- | Looks up version for the given object.
wl_proxy_marshal_flags' :: (MonadIO m, IsWlProxy p) => (Ptr a -> b) -> p -> CUInt -> WlInterface -> Flags -> m b
wl_proxy_marshal_flags' outm p opcode iface flags = io $ do
  version <- wl_proxy_get_version p
  WlProxy ptr <- wl_proxy_marshal_flags p opcode iface version flags
  return $! outm (castPtr ptr)

-- | Looks up version for the given object.
wl_proxy_marshal_array_flags'
  :: (MonadIO m, IsWlProxy p, WlArgs args)
  => (Ptr a -> b) -> p -> CUInt -> WlInterface -> Flags -> args -> m b
wl_proxy_marshal_array_flags' outm p opcode iface flags args = io $ do
  version <- wl_proxy_get_version p
  WlProxy ptr <- wl_proxy_marshal_array_flags p opcode iface version flags args
  return $! outm (castPtr ptr)

-- | Types that can be casted to wl_proxy
class IsWlProxy a where
  toWlProxy :: a -> WlProxy

instance IsWlProxy (Ptr a)    where toWlProxy = WlProxy . castPtr

--instance IsWlProxy WlSeat     where toWlProxy (WlSeat p) = WlProxy $ castPtr p
instance IsWlProxy WlKeyboard where toWlProxy (WlKeyboard p) = WlProxy $ castPtr p

-- | see wl_argument
class WlArgument a where
  withWlArgument :: a -> Ptr p -> IO b -> IO b

instance WlArgument CUInt   where withWlArgument x p m = poke (castPtr p) x >> m
instance WlArgument Int32   where withWlArgument x p m = poke (castPtr p) x >> m
instance WlArgument Word32  where withWlArgument x p m = poke (castPtr p) x >> m
instance WlArgument (Ptr a) where withWlArgument x p m = poke (castPtr p) x >> m
instance WlArgument String  where withWlArgument x p m = withCString x $ \px -> poke (castPtr p) px >> m

instance WlArgument WL.Surface where withWlArgument (WL.Surface x) p m = withWlArgument x p m


-- | Arguments array marshalling for 'wl_proxy_marshal_array_flags'
class WlArgs a where
  allocaWlArgs :: a -> (Ptr () -> IO b) -> IO b

instance WlArgs ()      where allocaWlArgs _ f = f nullPtr
instance WlArgs Int32   where allocaWlArgs x f = allocaArray 1 $ \ptr -> poke ptr x >> f (castPtr ptr)
instance WlArgs Word32  where allocaWlArgs x f = allocaArray 1 $ \ptr -> poke ptr x >> f (castPtr ptr)
instance WlArgs CUInt   where allocaWlArgs x f = allocaArray 1 $ \ptr -> poke ptr x >> f (castPtr ptr)
instance WlArgs (Ptr a) where allocaWlArgs x f = allocaArray 1 $ \ptr -> poke ptr x >> f (castPtr ptr)
instance WlArgs String  where allocaWlArgs x f = allocaArray 1 $ \(ptr :: Ptr (Ptr ())) -> withWlArgument x ptr $ f (castPtr ptr)

instance (WlArgument a, WlArgument b) => WlArgs (a, b) where
  allocaWlArgs (a, b) f = allocaArray 2 $ \(ptr :: Ptr (Ptr ())) ->
    withWlArgument a ptr $
    withWlArgument b (advancePtr ptr 1) $
    f $ castPtr ptr

instance (WlArgument a, WlArgument b, WlArgument c) => WlArgs (a, b, c) where
  allocaWlArgs (a, b, c) f = allocaArray 3 $ \(ptr :: Ptr (Ptr ())) ->
    withWlArgument a ptr $
    withWlArgument b (advancePtr ptr 1) $
    withWlArgument c (advancePtr ptr 2) $
    f $ castPtr ptr

instance (WlArgument a, WlArgument b, WlArgument c, WlArgument d) => WlArgs (a, b, c, d) where
  allocaWlArgs (a, b, c, d) f = allocaArray 4 $ \(ptr :: Ptr (Ptr ())) ->
    withWlArgument a ptr $
    withWlArgument b (advancePtr ptr 1) $
    withWlArgument c (advancePtr ptr 2) $
    withWlArgument d (advancePtr ptr 3) $
    f $ castPtr ptr

instance (WlArgument a1, WlArgument a2, WlArgument a3, WlArgument a4, WlArgument a5) => WlArgs (a1, a2, a3, a4, a5) where
  allocaWlArgs (a1, a2, a3, a4, a5) f = allocaArray 5 $ \(ptr :: Ptr (Ptr ())) ->
    withWlArgument a1 ptr $
    withWlArgument a2 (advancePtr ptr 1) $
    withWlArgument a3 (advancePtr ptr 2) $
    withWlArgument a4 (advancePtr ptr 3) $
    withWlArgument a5 (advancePtr ptr 4) $
    f $ castPtr ptr

instance (WlArgument a1, WlArgument a2, WlArgument a3, WlArgument a4, WlArgument a5, WlArgument a6) => WlArgs (a1, a2, a3, a4, a5, a6) where
  allocaWlArgs (a1, a2, a3, a4, a5, a6) f = allocaArray 6 $ \(ptr :: Ptr (Ptr ())) ->
    withWlArgument a1 ptr $
    withWlArgument a2 (advancePtr ptr 1) $
    withWlArgument a3 (advancePtr ptr 2) $
    withWlArgument a4 (advancePtr ptr 3) $
    withWlArgument a5 (advancePtr ptr 4) $
    withWlArgument a6 (advancePtr ptr 5) $
    f $ castPtr ptr

-- ** Generic

wl_proxy_destroy :: (IsWlProxy a, MonadIO m) => a -> CUInt -> m ()
wl_proxy_destroy obj opcode = io $ do
    version <- wl_proxy_get_version obj
    void $ wl_proxy_marshal_flags obj opcode emptyInterface version _WL_MARSHAL_FLAG_DESTROY

-- ** wl_keyboard

wl_keyboard_add_listener :: WlKeyboard -> WlKeyboardListener -> Ptr a -> IO ()
wl_keyboard_add_listener kbd (WlKeyboardListener l) dt = do
  res <- wl_proxy_add_listener kbd (castPtr l) (castPtr dt)
  when (res < 0) $ throwIO $ WaylandException "wl_keyboard_add_listener"

mkKeyboardListener :: (WlKeyboardEvent a -> IO ()) -> IO WlKeyboardListener
mkKeyboardListener f = do
    p <- WlKeyboardListener <$> callocBytes {#sizeof wl_keyboard_listener#}
    {#set wl_keyboard_listener.keymap#} p      =<< wrap_wl_keyboard_listener_keymap     (\dt kbd fmt fd size    -> f $ KeyboardKeymap     (castPtr dt) kbd fmt fd size)
    {#set wl_keyboard_listener.enter#} p       =<< wrap_wl_keyboard_listener_Enter      (\dt kbd u1 p1 p2       -> f $ KeyboardEnter      (castPtr dt) kbd u1 (WL.Surface $ castPtr p1) p2)
    {#set wl_keyboard_listener.leave#} p       =<< wrap_wl_keyboard_listener_Leave      (\dt kbd u1 p1          -> f $ KeyboardLeave      (castPtr dt) kbd u1 (WL.Surface $ castPtr p1))
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
foreign import ccall "wrapper" wrap_wl_keyboard_listener_Enter      :: ListenerCallback (Ptr () -> WlKeyboard -> CUInt -> Ptr () -> WlArray -> IO ())
foreign import ccall "wrapper" wrap_wl_keyboard_listener_Leave      :: ListenerCallback (Ptr () -> WlKeyboard -> CUInt -> Ptr () -> IO ())
foreign import ccall "wrapper" wrap_wl_keyboard_listener_Key        :: ListenerCallback (Ptr () -> WlKeyboard -> CUInt -> CUInt -> CUInt -> CUInt -> IO ())
foreign import ccall "wrapper" wrap_wl_keyboard_listener_Modifiers  :: ListenerCallback (Ptr () -> WlKeyboard -> CUInt -> CUInt -> CUInt -> CUInt -> CUInt -> IO ())
foreign import ccall "wrapper" wrap_wl_keyboard_listener_RepeatInfo :: ListenerCallback (Ptr () -> WlKeyboard -> CInt -> CInt -> IO ())

-- * Exceptions

data WaylandException = WaylandException String deriving (Show)
instance Exception WaylandException
