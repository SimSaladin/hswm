module Wayland.FFI where

import Foreign hiding (void)
import Foreign.C

#include <wayland-client.h>

-- * Types

type Version = {#type uint32_t#}
type Flags   = {#type uint32_t#}

{#pointer *wl_surface   as WlSurface   newtype #}
{#pointer *wl_array     as WlArray     newtype #}
{#pointer *wl_seat      as WlSeat      newtype #}
{#pointer *wl_keyboard  as WlKeyboard  newtype #}
{#pointer *wl_display   as WlDisplay   newtype #}
{#pointer *wl_registry  as WlRegistry  newtype #}
{#pointer *wl_interface as WlInterface newtype #}
{#pointer *wl_proxy     as WlProxy     newtype #}
{#pointer *wl_keyboard_listener as WlKeyboardListener newtype#}
{#pointer *wl_registry_listener as WlRegistryListener newtype#}

deriving instance Show WlSurface
deriving instance Show WlArray
deriving instance Show WlSeat
deriving instance Show WlKeyboard
deriving instance Show WlDisplay
deriving instance Show WlRegistry
deriving instance Show WlInterface
deriving instance Show WlProxy
deriving instance Show WlKeyboardListener

-- | For writing C wrappers for callback functions.
type ListenerCallback f = f -> IO (FunPtr f)

-- * External interfaces

foreign import ccall "&wl_registry_interface" wl_registry_interface :: WlInterface
foreign import ccall "&wl_seat_interface"     wl_seat_interface     :: WlInterface
foreign import ccall "&wl_keyboard_interface" wl_keyboard_interface :: WlInterface

-- * Constants

_WL_MARSHAL_FLAG_DESTROY :: Flags
_WL_MARSHAL_FLAG_DESTROY = 1 -- {#const WL_MARSHAL_FLAG_DESTROY#}

-- * wl_display

{#fun wl_display_connect   {`CString'}   -> `WlDisplay' #}
{#fun wl_display_roundtrip {`WlDisplay'} -> `Int' #}
{#fun wl_display_dispatch  {`WlDisplay'} -> `Int' #}

wl_display_get_registry :: WlDisplay -> IO WlRegistry
wl_display_get_registry display = do
  ver <- wl_proxy_get_version display
  WlProxy res <- wl_proxy_marshal_array_flags display {#const WL_DISPLAY_GET_REGISTRY#} wl_registry_interface ver 0 nullPtr
  return $ WlRegistry $ castPtr res

-- * wl_interface

getInterfaceName :: WlInterface -> IO String
getInterfaceName p = {#get wl_interface->name#} p >>= peekCString

emptyInterface :: WlInterface
emptyInterface = WlInterface nullPtr

-- * wl_seat

wl_seat_get_keyboard :: WlSeat -> IO WlKeyboard
wl_seat_get_keyboard seat = do
  ver <- wl_proxy_get_version seat
  WlProxy res <- wl_proxy_marshal_array_flags seat {#const WL_SEAT_GET_KEYBOARD#} wl_keyboard_interface ver 0 nullPtr
  return $ WlKeyboard $ castPtr res

-- * wl_registry

wl_registry_bind :: WlRegistry -> CUInt -> WlInterface -> Version -> IO (Ptr a)
wl_registry_bind reg name iface ver = do
  ifaceName <- {#get wl_interface->name#} iface
  WlProxy res <- wl_proxy_marshal_array_flags reg {#const WL_REGISTRY_BIND#} iface ver 0 (name, ifaceName, ver, nullPtr)
  when (res == nullPtr) $ throwIO $ WaylandException "wl_registry_bind (NULL)"
  return $! castPtr res

wl_registry_add_listener
  :: WlRegistry
  -> WlRegistryListener
  -> Ptr () -- ^ userdata
  -> IO ()
wl_registry_add_listener reg (WlRegistryListener l) dt = do
  res <- wl_proxy_add_listener reg (castPtr l) dt
  when (res < 0) $ throwIO $ WaylandException $ "wl_registry_add_listener: " ++ show res

data RegistryEvent
   = RegistryGlobal       !(Ptr ()) !WlRegistry !CUInt !String !CUInt
   | RegistryGlobalRemove !(Ptr ()) !WlRegistry !CUInt
   deriving Show

type WlRegistryListenerGlobal       = Ptr () -> WlRegistry -> CUInt -> CString -> CUInt -> IO ()
type WlRegistryListenerGlobalRemove = Ptr () -> WlRegistry -> CUInt -> IO ()

foreign import ccall "wrapper" wrap_global :: WlRegistryListenerGlobal -> IO (FunPtr WlRegistryListenerGlobal)
foreign import ccall "wrapper" wrap_global_remove :: WlRegistryListenerGlobalRemove -> IO (FunPtr WlRegistryListenerGlobalRemove)

mkRegistryListener :: (RegistryEvent -> IO ()) -> IO WlRegistryListener
mkRegistryListener h = do
  log' $ "allocating bytes: " <> tshow ({#sizeof wl_registry_listener#})
  p <- WlRegistryListener <$> mallocBytes {#sizeof wl_registry_listener#}
  log' "allocated"
  {#set wl_registry_listener.global#}        p =<< wrap_global (\a b c d e -> peekCString d >>= \d' -> h $ RegistryGlobal a b c d' e)
  {#set wl_registry_listener.global_remove#} p =<< wrap_global_remove (\a b c -> h $ RegistryGlobalRemove a b c)
  return p

-- * wl_proxy

{#fun wl_proxy_get_version   `(IsWlProxy p)' => {toWlProxy `p'} -> `Version' fromIntegral#}

{#fun wl_proxy_get_user_data `(IsWlProxy p)' => {toWlProxy `p'} -> `Ptr ()'#}

{#fun wl_proxy_set_user_data `(IsWlProxy p)' => {toWlProxy `p', `Ptr ()'} -> `()'#}

{#fun wl_proxy_add_listener  `(IsWlProxy p)' =>
  { toWlProxy `p' , id `Ptr (FunPtr (IO ()))' , `Ptr ()' } -> `Int' #}

{#fun wl_proxy_marshal_flags `(IsWlProxy p)' =>
  { toWlProxy    `p'
  ,              `CUInt'
  ,              `WlInterface'
  , fromIntegral `Version'
  , fromIntegral `Flags'
  } -> `WlProxy' #}

{#fun wl_proxy_marshal_array_flags
  `(IsWlProxy p1, WlArgs args)' =>
  { toWlProxy     `p1' -- wl_proxy*
  ,               `CUInt' -- ^ opcode
  ,               `WlInterface'
  , fromIntegral  `Version'
  , fromIntegral  `Flags'
  , allocaWlArgs* `args' -- Ptr () , union wl_argument * args)
  } -> `WlProxy' #}

-- | Looks up version for the given object.
wl_proxy_marshal_flags' :: (MonadIO m, IsWlProxy p) => (Ptr a -> a) -> p -> CUInt -> WlInterface -> Flags -> m a
wl_proxy_marshal_flags' outm p opcode iface flags = io $ do
  version <- wl_proxy_get_version p
  WlProxy ptr <- wl_proxy_marshal_flags p opcode iface version flags
  return $! outm (castPtr ptr)

-- | Looks up version for the given object.
wl_proxy_marshal_array_flags' :: (MonadIO m, IsWlProxy p, WlArgs args) => (Ptr a -> a) -> p -> CUInt -> WlInterface -> Flags -> args -> m a
wl_proxy_marshal_array_flags' outm p opcode iface flags args = io $ do
  version <- wl_proxy_get_version p
  WlProxy ptr <- wl_proxy_marshal_array_flags p opcode iface version flags args
  return $! outm (castPtr ptr)

-- | Types that can be casted to wl_proxy
class IsWlProxy a where
  toWlProxy :: a -> WlProxy

instance IsWlProxy (Ptr a) where toWlProxy = WlProxy . castPtr
instance IsWlProxy WlSeat where toWlProxy (WlSeat p) = WlProxy $ castPtr p
instance IsWlProxy WlKeyboard where toWlProxy (WlKeyboard p) = WlProxy $ castPtr p
instance IsWlProxy WlDisplay where toWlProxy (WlDisplay p) = WlProxy $ castPtr p
instance IsWlProxy WlRegistry where toWlProxy (WlRegistry p) = WlProxy $ castPtr p

-- | see wl_argument
class WlArgument a where
  withWlArgument :: a -> Ptr p -> IO b -> IO b

instance WlArgument CUInt   where withWlArgument x p m = poke (castPtr p) x >> m
instance WlArgument Int32   where withWlArgument x p m = poke (castPtr p) x >> m
instance WlArgument Word32  where withWlArgument x p m = poke (castPtr p) x >> m
instance WlArgument (Ptr a) where withWlArgument x p m = poke (castPtr p) x >> m
instance WlArgument String  where withWlArgument x p m = withCString x $ \px -> poke (castPtr p) px >> m


-- | Arguments array marshalling for 'wl_proxy_marshal_array_flags'
class WlArgs a where
  allocaWlArgs :: a -> (Ptr () -> IO b) -> IO b

instance WlArgs ()      where allocaWlArgs _ f = f nullPtr
instance WlArgs Int     where allocaWlArgs x f = allocaArray 1 $ \ptr -> poke ptr x >> f (castPtr ptr)
instance WlArgs Int32   where allocaWlArgs x f = allocaArray 1 $ \ptr -> poke ptr x >> f (castPtr ptr)
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

-- * Exceptions

data WaylandDisplayException = WaylandDisplayConnectFailed deriving Show
instance Exception WaylandDisplayException

data WaylandException = WaylandException String deriving (Show)
instance Exception WaylandException
