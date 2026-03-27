module River.XKB.Config.FFI where

import Foreign hiding (void)
import Foreign.C

import Wayland

#include "river-xkb-config-v1-client-protocol.h"

-- * Types

data RiverXkbConfigException = RiverXkbConfigException String deriving Show
instance Exception RiverXkbConfigException

{#pointer *river_input_device_v1 as ^ newtype #}
{#pointer *river_xkb_config_v1 as ^ newtype #}
{#pointer *river_xkb_keyboard_v1 as ^ newtype #}
{#pointer *river_xkb_keymap_v1 as ^ newtype #}
{#pointer *river_xkb_config_v1_listener as ^ newtype #}
{#pointer *river_xkb_keyboard_v1_listener as ^ newtype #}
{#pointer *river_xkb_keymap_v1_listener as ^ newtype #}

deriving instance Show RiverInputDeviceV1
deriving instance Show RiverXkbConfigV1
deriving instance Show RiverXkbKeyboardV1
deriving instance Show RiverXkbKeymapV1

instance IsWlProxy RiverXkbConfigV1 where toWlProxy (RiverXkbConfigV1 p) = WlProxy $ castPtr p
instance IsWlProxy RiverXkbKeyboardV1 where toWlProxy (RiverXkbKeyboardV1 p) = WlProxy $ castPtr p

-- ** Enums

{#enum river_xkb_config_v1_error as ^ {} deriving (Show, Eq) #}
{#enum river_xkb_config_v1_keymap_format as ^ {} deriving (Show, Eq) #}
{#enum river_xkb_keyboard_v1_error as ^ {} deriving (Show, Eq) #}

-- * Interfaces

foreign import ccall "&river_xkb_config_v1_interface"   river_xkb_config_v1_interface :: WlInterface
foreign import ccall "&river_xkb_keymap_v1_interface"   river_xkb_keymap_v1_interface   :: WlInterface
foreign import ccall "&river_xkb_keyboard_v1_interface" river_xkb_keyboard_v1_interface :: WlInterface

-- foreign import ccall "&river_input_device_v1_interface" river_input_device_v1_interface :: WlInterface

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

riverXkbConfigV1Stop :: MonadIO m => RiverXkbConfigV1 -> m ()
riverXkbConfigV1Stop river_xkb_config_v1 = wl_proxy_marshal_array_flags' (const ()) river_xkb_config_v1
    {#const RIVER_XKB_CONFIG_V1_STOP#} emptyInterface 0 ()

river_xkb_config_v1_destroy :: MonadIO m => RiverXkbConfigV1 -> m ()
river_xkb_config_v1_destroy river_xkb_config_v1 = wl_proxy_marshal_array_flags' (const ()) river_xkb_config_v1
    {#const RIVER_XKB_CONFIG_V1_DESTROY#} emptyInterface _WL_MARSHAL_FLAG_DESTROY ()

-- * River XKB Keymap

-- ** Create

river_xkb_config_v1_create_keymap :: MonadIO m
    => RiverXkbConfigV1 -- (struct river_xkb_config_v1 *river_xkb_config_v1
    -> Int32            -- ^ fd (int32_t)
    -> Word32           -- ^ format (uint32_t)
    -> m RiverXkbKeymapV1
river_xkb_config_v1_create_keymap river_xkb_config_v1 fd format = wl_proxy_marshal_array_flags'
   RiverXkbKeymapV1 river_xkb_config_v1 {#const RIVER_XKB_CONFIG_V1_CREATE_KEYMAP #}
   river_xkb_keymap_v1_interface 0 (nullPtr, fd, format)

{- TODO
river_xkb_keymap_v1_destroy(struct river_xkb_keymap_v1 *river_xkb_keymap_v1)
-}

-- ** Listener

data RiverXkbKeymapV1Event
  = KeymapSuccess (Ptr ()) RiverXkbKeymapV1
  | KeymapFailure (Ptr ()) RiverXkbKeymapV1 String
  deriving Show

{- TODO
struct river_xkb_keymap_v1_listener {
	/**
	 * keymap creation succeeded
	 *
	 * The keymap object was successfully created and may be used
	 * with the river_xkb_keyboard_v1.set_keymap request.
	 */
	void (*success)(void *data,
			struct river_xkb_keymap_v1 *river_xkb_keymap_v1);
	/**
	 * keymap creation failed
	 *
	 * The compositor failed to create a keymap from the given
	 * parameters.
	 *
	 * It is a protocol error to use this keymap object with
	 * river_xkb_keyboard_v1.set_keymap.
	 */
	void (*failure)(void *data,
			struct river_xkb_keymap_v1 *river_xkb_keymap_v1,
			const char *error_msg);
};
static inline int
river_xkb_keymap_v1_add_listener(struct river_xkb_keymap_v1 *river_xkb_keymap_v1,
				 const struct river_xkb_keymap_v1_listener *listener, void *data)
{
	return wl_proxy_add_listener((struct wl_proxy *) river_xkb_keymap_v1,
				     (void (**)(void)) listener, data);
}
-}

-- * River XKB Keyboard

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

riverXkbKeyboardV1AddListener :: RiverXkbKeyboardV1 -> RiverXkbKeyboardV1Listener -> Ptr () -> IO ()
riverXkbKeyboardV1AddListener kbd (RiverXkbKeyboardV1Listener listener) userdata = do
  res <- wl_proxy_add_listener kbd (castPtr listener) userdata
  when (res < 0) $ throwIO $ RiverXkbConfigException "riverXkbKeyboardV1AddListener"

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

{- TODO
/**
 * This request indicates that the client will no longer use the keyboard
 * object and that it may be safely destroyed.
 */
static inline void
river_xkb_keyboard_v1_destroy(struct river_xkb_keyboard_v1 *river_xkb_keyboard_v1)
{
	wl_proxy_marshal_flags((struct wl_proxy *) river_xkb_keyboard_v1,
			 RIVER_XKB_KEYBOARD_V1_DESTROY, NULL, wl_proxy_get_version((struct wl_proxy *) river_xkb_keyboard_v1), WL_MARSHAL_FLAG_DESTROY);
}
-}

-- |
-- Set the keymap for the keyboard.
--
-- It is a protocol error to pass a keymap object for which the
-- river_xkb_keymap_v1.success event was not received.
river_xkb_keyboard_v1_set_keymap :: MonadIO m => RiverXkbKeyboardV1 -> RiverXkbKeymapV1 -> m ()
river_xkb_keyboard_v1_set_keymap kbd (RiverXkbKeymapV1 kmap) = wl_proxy_marshal_array_flags' (const ())
    kbd {#const RIVER_XKB_KEYBOARD_V1_SET_KEYMAP#} emptyInterface 0 kmap

-- | Set the active layout for the keyboard's keymap. Has no effect if the
-- layout index is out of bounds for the current keymap.
river_xkb_keyboard_v1_set_layout_by_index :: MonadIO m => RiverXkbKeyboardV1 -> Int32 -> m ()
river_xkb_keyboard_v1_set_layout_by_index keyboard i = wl_proxy_marshal_array_flags' (const ())
    keyboard {#const RIVER_XKB_KEYBOARD_V1_SET_LAYOUT_BY_INDEX#} emptyInterface 0 i

-- | Set the active layout for the keyboard's keymap. Has no effect if there
-- is no layout with the give name for the keyboard's keymap.
river_xkb_keyboard_v1_set_layout_by_name :: MonadIO m => RiverXkbKeyboardV1 -> String -> m ()
river_xkb_keyboard_v1_set_layout_by_name keyboard name = wl_proxy_marshal_array_flags' (const ())
    keyboard {#const RIVER_XKB_KEYBOARD_V1_SET_LAYOUT_BY_NAME#} emptyInterface 0 name

{-

/**
 * Enable capslock for the keyboard.
 */
static inline void
river_xkb_keyboard_v1_capslock_enable(struct river_xkb_keyboard_v1 *river_xkb_keyboard_v1)
{
	wl_proxy_marshal_flags((struct wl_proxy *) river_xkb_keyboard_v1,
			 RIVER_XKB_KEYBOARD_V1_CAPSLOCK_ENABLE, NULL, wl_proxy_get_version((struct wl_proxy *) river_xkb_keyboard_v1), 0);
}

/**
 * Disable capslock for the keyboard.
 */
static inline void
river_xkb_keyboard_v1_capslock_disable(struct river_xkb_keyboard_v1 *river_xkb_keyboard_v1)
{
	wl_proxy_marshal_flags((struct wl_proxy *) river_xkb_keyboard_v1,
			 RIVER_XKB_KEYBOARD_V1_CAPSLOCK_DISABLE, NULL, wl_proxy_get_version((struct wl_proxy *) river_xkb_keyboard_v1), 0);
}

/**
 * Enable numlock for the keyboard.
 */
static inline void
river_xkb_keyboard_v1_numlock_enable(struct river_xkb_keyboard_v1 *river_xkb_keyboard_v1)
{
	wl_proxy_marshal_flags((struct wl_proxy *) river_xkb_keyboard_v1,
			 RIVER_XKB_KEYBOARD_V1_NUMLOCK_ENABLE, NULL, wl_proxy_get_version((struct wl_proxy *) river_xkb_keyboard_v1), 0);
}

/**
 * Disable numlock for the keyboard.
 */
static inline void
river_xkb_keyboard_v1_numlock_disable(struct river_xkb_keyboard_v1 *river_xkb_keyboard_v1)
{
	wl_proxy_marshal_flags((struct wl_proxy *) river_xkb_keyboard_v1,
			 RIVER_XKB_KEYBOARD_V1_NUMLOCK_DISABLE, NULL, wl_proxy_get_version((struct wl_proxy *) river_xkb_keyboard_v1), 0);
}
-}
