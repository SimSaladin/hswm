module River.XKB.Config.FFI

  -- * River XKB Config
  ( registryBindRiverXkbConfigV1
  , riverXkbConfigV1Stop
  , riverXkbConfigV1Destroy
  , riverXkbConfigV1CreateKeymap
  , riverXkbConfigV1AddListener
  , mkRiverXkbConfigV1Listener
  , RiverXkbConfigV1Event(..)

  -- * River XKB Keymap
  , riverXkbKeymapV1Destroy
  , riverXkbKeymapV1AddListener
  , mkRiverXkbKeymapV1Listener
  , RiverXkbKeymapV1Event(..)

  -- * River XKB Keyboard
  , riverXkbKeyboardV1Destroy
  , riverXkbKeyboardV1AddListener
  , riverXkbKeyboardV1SetKeymap
  , riverXkbKeyboardV1SetLayoutByIndex
  , riverXkbKeyboardV1SetLayoutByName
  , mkRiverXkbKeyboardV1Listener
  , RiverXkbKeyboardV1Event(..)

  -- * Objects
  , RiverInputDeviceV1
  , RiverXkbConfigV1
  , RiverXkbKeyboardV1
  , RiverXkbKeymapV1
  , RiverXkbConfigV1Listener
  , RiverXkbKeyboardV1Listener
  , RiverXkbKeymapV1Listener

  -- * Interfaces
  , river_xkb_config_v1_interface
  , river_xkb_keyboard_v1_interface
  , river_xkb_keymap_v1_interface

  -- * Errors & Exceptions
  , RiverXkbConfigV1Error(..)
  , RiverXkbConfigV1KeymapFormat(..)
  , RiverXkbKeyboardV1Error(..)
  , RiverXkbConfigException(..)
  ) where

import Foreign hiding (void)
import Foreign.C

import Wayland
import qualified Wayland.Client as WL

#include "river-xkb-config-v1-client-protocol.h"

-- * Types

data RiverXkbConfigException = RiverXkbConfigException String deriving Show
instance Exception RiverXkbConfigException

{#pointer *river_input_device_v1 as ^ newtype #}
{#pointer *river_xkb_config_v1   as ^ newtype #}
{#pointer *river_xkb_keyboard_v1 as ^ newtype #}
{#pointer *river_xkb_keymap_v1   as ^ newtype #}
{#pointer *river_xkb_config_v1_listener   as ^ newtype #}
{#pointer *river_xkb_keyboard_v1_listener as ^ newtype #}
{#pointer *river_xkb_keymap_v1_listener   as ^ newtype #}

deriving instance Show RiverInputDeviceV1
deriving instance Show RiverXkbConfigV1
deriving instance Show RiverXkbKeyboardV1
deriving instance Show RiverXkbKeymapV1

instance IsWlProxy RiverXkbConfigV1   where toWlProxy (RiverXkbConfigV1 p) = WlProxy $ castPtr p
instance IsWlProxy RiverXkbKeyboardV1 where toWlProxy (RiverXkbKeyboardV1 p) = WlProxy $ castPtr p
instance IsWlProxy RiverXkbKeymapV1   where toWlProxy (RiverXkbKeymapV1 p) = WlProxy $ castPtr p

-- ** Enums

{#enum river_xkb_config_v1_error         as ^ {underscoreToCase} deriving (Show, Eq) #}
{#enum river_xkb_config_v1_keymap_format as ^ {underscoreToCase} deriving (Show, Eq) #}
{#enum river_xkb_keyboard_v1_error       as ^ {underscoreToCase} deriving (Show, Eq) #}

-- * Interfaces

foreign import ccall "&river_xkb_config_v1_interface"   river_xkb_config_v1_interface :: WlInterface
foreign import ccall "&river_xkb_keymap_v1_interface"   river_xkb_keymap_v1_interface   :: WlInterface
foreign import ccall "&river_xkb_keyboard_v1_interface" river_xkb_keyboard_v1_interface :: WlInterface

registryBindRiverXkbConfigV1 :: WlRegistry -> Word32 -> Version -> IO RiverXkbConfigV1
registryBindRiverXkbConfigV1 registry name version =
  RiverXkbConfigV1 <$> WL.registryBind registry name river_xkb_config_v1_interface version

-- * River XKB Config

data RiverXkbConfigV1Event
  = XkbConfigFinished    { userdata :: !(Ptr ()), xkbConfig :: !RiverXkbConfigV1 }
  | XkbConfigXkbKeyboard { userdata :: !(Ptr ()), xkbConfig :: !RiverXkbConfigV1, xkbKeyboard :: RiverXkbKeyboardV1 }
  deriving Show

foreign import ccall "wrapper" mkListenerCB  :: ListenerCallback (Ptr () -> RiverXkbConfigV1 -> IO ())
foreign import ccall "wrapper" mkListenerCB2 :: ListenerCallback (Ptr () -> RiverXkbConfigV1 -> RiverXkbKeyboardV1 -> IO ())

mkRiverXkbConfigV1Listener :: (RiverXkbConfigV1Event -> IO ()) -> IO RiverXkbConfigV1Listener
mkRiverXkbConfigV1Listener h = do
    p <- RiverXkbConfigV1Listener <$> mallocBytes {#sizeof river_xkb_config_v1_listener#}
    {#set river_xkb_config_v1_listener.finished#} p     =<< (mkListenerCB  $ \dt x   -> h $ XkbConfigFinished dt x)
    {#set river_xkb_config_v1_listener.xkb_keyboard#} p =<< (mkListenerCB2 $ \dt x a -> h $ XkbConfigXkbKeyboard dt x a)
    return p

riverXkbConfigV1AddListener :: RiverXkbConfigV1 -> RiverXkbConfigV1Listener -> Ptr () -> IO ()
riverXkbConfigV1AddListener xkbconf (RiverXkbConfigV1Listener listener) userdata = do
   res <- wl_proxy_add_listener xkbconf (castPtr listener) userdata
   when (res < 0) $ throwIO $ RiverXkbConfigException "riverXkbConfigV1AddListener"

-- **Requests

riverXkbConfigV1Stop :: MonadIO m => RiverXkbConfigV1 -> m ()
riverXkbConfigV1Stop river_xkb_config_v1 = wl_proxy_marshal_array_flags' (const ()) river_xkb_config_v1
    {#const RIVER_XKB_CONFIG_V1_STOP#} emptyInterface 0 ()

riverXkbConfigV1CreateKeymap :: MonadIO m
                             => RiverXkbConfigV1
                             -> Int32            -- ^ fd (int32_t)
                             -> RiverXkbConfigV1KeymapFormat -- (uint32_t)
                             -> m RiverXkbKeymapV1
riverXkbConfigV1CreateKeymap river_xkb_config_v1 fd format = wl_proxy_marshal_array_flags'
   RiverXkbKeymapV1 river_xkb_config_v1 {#const RIVER_XKB_CONFIG_V1_CREATE_KEYMAP #}
   river_xkb_keymap_v1_interface 0 (nullPtr, fd, fi $ fromEnum format :: Word32)

riverXkbConfigV1Destroy :: MonadIO m => RiverXkbConfigV1 -> m ()
riverXkbConfigV1Destroy river_xkb_config_v1 = wl_proxy_marshal_array_flags' (const ()) river_xkb_config_v1
    {#const RIVER_XKB_CONFIG_V1_DESTROY#} emptyInterface _WL_MARSHAL_FLAG_DESTROY ()

-- * River XKB Keymap

-- ** Requests

riverXkbKeymapV1Destroy :: MonadIO m => RiverXkbKeymapV1 -> m ()
riverXkbKeymapV1Destroy km = wl_proxy_destroy km {#const RIVER_XKB_KEYMAP_V1_DESTROY#}

riverXkbKeymapV1AddListener :: RiverXkbKeymapV1 -> RiverXkbKeymapV1Listener -> Ptr () -> IO ()
riverXkbKeymapV1AddListener km (RiverXkbKeymapV1Listener listener) userdata = do
  res <- wl_proxy_add_listener km (castPtr listener) userdata
  when (res < 0) $ throwIO $ RiverXkbConfigException "riverXkbKeymapV1AddListener"

-- ** Listener

mkRiverXkbKeymapV1Listener :: (RiverXkbKeymapV1Event -> IO ()) -> IO RiverXkbKeymapV1Listener
mkRiverXkbKeymapV1Listener h = do
    p <- RiverXkbKeymapV1Listener <$> mallocBytes {#sizeof river_xkb_keymap_v1_listener#}
    {#set river_xkb_keymap_v1_listener.success#} p =<< (mkKeymapListenerCB $ \dt x -> h $ KeymapSuccess dt x)
    {#set river_xkb_keymap_v1_listener.failure#} p =<< (mkKeymapListenerCB2 $ \dt x s -> peekCString s >>= \s' -> h $ KeymapFailure dt x s')
    return p

data RiverXkbKeymapV1Event
  = KeymapSuccess { userdata :: !(Ptr ()), keymap :: !RiverXkbKeymapV1 }
    -- ^ keymap creation succeeded
    --
    -- The keymap object was successfully created and may be used
    -- with the river_xkb_keyboard_v1.set_keymap request.
  | KeymapFailure { userdata :: !(Ptr ()), keymap :: !RiverXkbKeymapV1, error_msg :: String }
    -- ^ keymap creation failed
    --
    -- The compositor failed to create a keymap from the given
    -- parameters.
    --
    -- It is a protocol error to use this keymap object with
    -- river_xkb_keyboard_v1.set_keymap.
  deriving Show

foreign import ccall "wrapper" mkKeymapListenerCB  :: ListenerCallback (Ptr () -> RiverXkbKeymapV1 -> IO ())
foreign import ccall "wrapper" mkKeymapListenerCB2 :: ListenerCallback (Ptr () -> RiverXkbKeymapV1 -> CString -> IO ())

-- * River XKB Keyboard

-- ** Requests

riverXkbKeyboardV1Destroy :: MonadIO m => RiverXkbKeyboardV1 -> m ()
riverXkbKeyboardV1Destroy x = wl_proxy_destroy x {#const RIVER_XKB_KEYBOARD_V1_DESTROY#}

riverXkbKeyboardV1AddListener :: RiverXkbKeyboardV1 -> RiverXkbKeyboardV1Listener -> Ptr () -> IO ()
riverXkbKeyboardV1AddListener kbd (RiverXkbKeyboardV1Listener listener) userdata = do
  res <- wl_proxy_add_listener kbd (castPtr listener) userdata
  when (res < 0) $ throwIO $ RiverXkbConfigException "riverXkbKeyboardV1AddListener"

-- ** Listener

mkRiverXkbKeyboardV1Listener :: (RiverXkbKeyboardV1Event -> IO ()) -> IO RiverXkbKeyboardV1Listener
mkRiverXkbKeyboardV1Listener h = do
    p <- RiverXkbKeyboardV1Listener <$> mallocBytes {#sizeof river_xkb_keyboard_v1_listener#}
    {#set river_xkb_keyboard_v1_listener.removed#}           p =<< (mkKeyboardListenerCB $ \dt x -> h $ KeyboardRemoved dt x)
    {#set river_xkb_keyboard_v1_listener.input_device#}      p =<< (mkKeyboardListenerCB2 $ \dt x a -> h $ KeyboardInputDevice dt x a)
    {#set river_xkb_keyboard_v1_listener.layout#}            p =<< (mkKeyboardListenerCB3 $ \dt x a s -> peekCString s >>= \s' -> h $ KeyboardLayout dt x (fi a) s')
    {#set river_xkb_keyboard_v1_listener.capslock_enabled#}  p =<< (mkKeyboardListenerCB $ \dt x -> h $ KeyboardCapslockEnabled dt x)
    {#set river_xkb_keyboard_v1_listener.capslock_disabled#} p =<< (mkKeyboardListenerCB $ \dt x -> h $ KeyboardCapslockDisabled dt x)
    {#set river_xkb_keyboard_v1_listener.numlock_enabled#}   p =<< (mkKeyboardListenerCB $ \dt x -> h $ KeyboardNumlockEnabled dt x)
    {#set river_xkb_keyboard_v1_listener.numlock_disabled#}  p =<< (mkKeyboardListenerCB $ \dt x -> h $ KeyboardNumlockDisabled dt x)
    return p

data RiverXkbKeyboardV1Event
  = KeyboardRemoved          { userdata :: !(Ptr ()), xkbKeyboard :: !RiverXkbKeyboardV1 }
  | KeyboardInputDevice      { userdata :: !(Ptr ()), xkbKeyboard :: !RiverXkbKeyboardV1, inputDevice :: !RiverInputDeviceV1 }
  | KeyboardLayout           { userdata :: !(Ptr ()), xkbKeyboard :: !RiverXkbKeyboardV1, layoutIndex :: !Word32, layoutName :: !String }
  | KeyboardCapslockEnabled  { userdata :: !(Ptr ()), xkbKeyboard :: !RiverXkbKeyboardV1 }
  | KeyboardCapslockDisabled { userdata :: !(Ptr ()), xkbKeyboard :: !RiverXkbKeyboardV1 }
  | KeyboardNumlockEnabled   { userdata :: !(Ptr ()), xkbKeyboard :: !RiverXkbKeyboardV1 }
  | KeyboardNumlockDisabled  { userdata :: !(Ptr ()), xkbKeyboard :: !RiverXkbKeyboardV1 }
  deriving Show

foreign import ccall "wrapper" mkKeyboardListenerCB  :: ListenerCallback (Ptr () -> RiverXkbKeyboardV1 -> IO ())
foreign import ccall "wrapper" mkKeyboardListenerCB2 :: ListenerCallback (Ptr () -> RiverXkbKeyboardV1 -> RiverInputDeviceV1 -> IO ())
foreign import ccall "wrapper" mkKeyboardListenerCB3 :: ListenerCallback (Ptr () -> RiverXkbKeyboardV1 -> CUInt -> CString -> IO ())

-- ** Requests

-- |
-- Set the keymap for the keyboard.
--
-- It is a protocol error to pass a keymap object for which the
-- river_xkb_keymap_v1.success event was not received.
riverXkbKeyboardV1SetKeymap :: MonadIO m => RiverXkbKeyboardV1 -> RiverXkbKeymapV1 -> m ()
riverXkbKeyboardV1SetKeymap kbd (RiverXkbKeymapV1 kmap) = wl_proxy_marshal_array_flags' (const ())
    kbd {#const RIVER_XKB_KEYBOARD_V1_SET_KEYMAP#} emptyInterface 0 kmap

-- | Set the active layout for the keyboard's keymap. Has no effect if the
-- layout index is out of bounds for the current keymap.
riverXkbKeyboardV1SetLayoutByIndex :: MonadIO m => RiverXkbKeyboardV1 -> Int32 -> m ()
riverXkbKeyboardV1SetLayoutByIndex keyboard i = wl_proxy_marshal_array_flags' (const ())
    keyboard {#const RIVER_XKB_KEYBOARD_V1_SET_LAYOUT_BY_INDEX#} emptyInterface 0 i

-- | Set the active layout for the keyboard's keymap. Has no effect if there
-- is no layout with the give name for the keyboard's keymap.
riverXkbKeyboardV1SetLayoutByName :: MonadIO m => RiverXkbKeyboardV1 -> String -> m ()
riverXkbKeyboardV1SetLayoutByName keyboard name = wl_proxy_marshal_array_flags' (const ())
    keyboard {#const RIVER_XKB_KEYBOARD_V1_SET_LAYOUT_BY_NAME#} emptyInterface 0 name
