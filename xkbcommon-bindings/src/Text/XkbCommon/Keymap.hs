{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE LambdaCase #-}

-- |
-- Description : Keymaps
module Text.XkbCommon.Keymap
  -- * XkbKeymap
  ( XkbKeymap
  , XkbKeymapFormat(..)

  -- * New
  -- ** from names
  , createKeymapFromNames
  , XkbRuleNames(..)
  , LayoutSpec(..)
  , OptionSpec(..)
  -- ** from string/fd
  , createKeymapFromString
  , createKeymapFromFd

  -- * Keymap as string
  , keymapAsString
  , withKeymapFd
  , keymapAsStringFd

  -- * Modifiers
  , ModMask
  , ModIndex
  , pattern ModIndexInvalid
  , keymapNumMods
  , keymapModName
  , keymapModIndex
  , keymapModMask
  , keymapModMaskByIndex

  -- * Layouts
  , LayoutMask
  , LayoutIndex
  , pattern LayoutIndexInvalid
  , keymapNumLayouts
  , keymapLayoutName
  , keymapLayoutIndex
  , keymapNumLayoutsForKey

  -- * Leds
  , LedIndex
  , pattern LedIndexInvalid
  , keymapNumLeds
  , keymapLedName
  , keymapLedIndex

  -- * Levels
  , LevelIndex
  , keymapNumLevelsForKey

  -- * Keys
  , Keycode
  , pattern KeycodeInvalid
  , keycodeMax
  , keymapMinKeycode
  , keymapMaxKeycode
  , keymapKeyName
  , keymapKeyByName
  , keymapKeyRepeats
  , keymapKeyModsForLevel
  , keymapKeySymsByLevel

  -- * Exceptions
  , KeymapException(..)

  -- * Internals
  , wrapKeymap
  , refKeymap
  ) where

import Foreign
import Foreign.C
import System.Posix (closeFd, fdWrite, Fd)
import Control.Exception

import Text.XkbCommon.FFI
import Text.XkbCommon.Internal

-- | Keymap exceptions.
data KeymapException
  = KeymapCreationFailed { keMsg :: String, keNames :: Maybe XkbRuleNames, keFormat :: !XkbKeymapFormat }
  | KeymapGetAsStringFailed { keKeymap :: !XkbKeymap, keFormat :: !XkbKeymapFormat }
  deriving (Eq, Ord, Show, Generic)

instance Exception KeymapException

-- | Turn 'Ptr' into a 't:XkbKeymap' 'ForeignPtr'
wrapKeymap :: Ptr XkbKeymap -> IO XkbKeymap
wrapKeymap = fmap XkbKeymap . newForeignPtr _xkbKeymapUnref

-- |
-- Throws "KeymapCreationFailed" on error.
createKeymapFromString :: XkbContext -> String -> XkbKeymapFormat -> IO XkbKeymap
createKeymapFromString ctx s fmt =
  withCString s $ \cStr ->
    xkbKeymapNewFromCString (take 42 s) ctx cStr fmt

-- | Returns A keymap compiled according to the [RMLVO] names.
--
-- Throws "KeymapCreationFailed" on error.
createKeymapFromNames :: XkbContext -> XkbRuleNames -> XkbKeymapFormat -> IO XkbKeymap
createKeymapFromNames ctx rns fmt =
  withForeignPtr ctx.unwrap $ \ctxPtr ->
  withXkbRuleNames rns $ \p ->
    _xkbKeymapNewFromNames2 ctxPtr p (fromKeymapFormat fmt) 0
    >>= xkbThrowIfNull' (KeymapCreationFailed "from names" (Just rns) fmt)
    >>= wrapKeymap

-- | Throws "KeymapCreationFailed" on error.
createKeymapFromFd :: XkbContext -> Fd -> CSize -> Bool -> XkbKeymapFormat -> IO XkbKeymap
createKeymapFromFd ctx fd size private fmt =
  bracket mmap' (\ptr -> munmap ptr size) $ \ptr -> do
    keymap <- xkbKeymapNewFromCString (show fd) ctx (castPtr ptr) fmt
    closeFd fd
    return keymap
    where
      mmap' = mmap nullPtr (fromIntegral size) protRead (if private then mapPrivate else mapShared) fd 0

xkbKeymapNewFromCString :: String -> XkbContext -> CString -> XkbKeymapFormat -> IO XkbKeymap
xkbKeymapNewFromCString loc ctx s fmt =
  withForeignPtr ctx.unwrap $ \ctxPtr ->
    _xkbKeymapNewFromString ctxPtr s (fromKeymapFormat fmt) 0
    >>= xkbThrowIfNull' (KeymapCreationFailed loc Nothing fmt)
    >>= wrapKeymap

-- | Get the compiled keymap as a string.
keymapAsString :: XkbKeymap -> XkbKeymapFormat -> IO String
keymapAsString km fmt =
  withForeignPtr km.unwrap $ \kmPtr ->
    bracket (get kmPtr) free peekCString
  where
    get ptr = _xkbKeymapGetAsString ptr (fromKeymapFormat fmt)
      >>= xkbThrowIfNull' (KeymapGetAsStringFailed km fmt)

-- | Get the keymap as a string pointed to by a FD.
keymapAsStringFd :: XkbKeymap -> XkbKeymapFormat -> IO Fd
keymapAsStringFd kmap fmt =
  bracketOnError (memfdCreate "xkbkeymap" (mfdCloExec <> mfdAllowSealing)) closeFd $ \fd -> do
    _ <- fdWrite fd =<< keymapAsString kmap fmt
    return fd

-- | Get the keymap as a string pointed to by a FD.
withKeymapFd :: XkbKeymap -> XkbKeymapFormat -> (Fd -> IO b) -> IO b
withKeymapFd kmap fmt = bracket (keymapAsStringFd kmap fmt) closeFd

-- | Get the encoding of a modifier by name.
keymapModMask :: XkbKeymap -> String -> IO (Maybe ModMask)
keymapModMask km s =
  withForeignPtr km.unwrap $ \kmPtr ->
  withCString s $ \sC -> do
    r <- _xkbKeymapModGetMask kmPtr sC
    return $! if r == 0 then Nothing else Just r

-- | Get the encoding of a modifier by index.
keymapModMaskByIndex :: XkbKeymap -> ModIndex -> IO (Maybe ModMask)
keymapModMaskByIndex km ix =
  withForeignPtr km.unwrap $ \kmPtr -> do
    r <- c_xkbKeymapModGetMask2 kmPtr ix
    return $! if r == 0 then Nothing else Just r

-- | Get the number of modifiers in the keymap.
keymapNumMods :: XkbKeymap -> IO ModIndex
keymapNumMods km = withForeignPtr km.unwrap $ \kmPtr ->
  c_xkb_keymap_num_mods kmPtr

-- | Get the name of a modifier by index.
--
-- Return @Nothing@ if the index is invalid.
keymapModName :: XkbKeymap -> ModIndex -> IO (Maybe String)
keymapModName km a =
  withForeignPtr km.unwrap $ \kmPtr -> do
    r <- _xkbKeymapModGetName kmPtr a
    if r == nullPtr then return Nothing else Just <$> peekCString r

-- | Get the index of a modifier by name.
--
-- If the modifier does not exist, the result is 'ModIndexInvalid'.
keymapModIndex :: XkbKeymap -> String -> IO ModIndex
keymapModIndex km str =
  withForeignPtr km.unwrap $ \kmPtr ->
    withCString str $ \c_str ->
      c_xkbKeymapModGetIndex kmPtr c_str

-- | Find the name of key of a keycode.
keymapKeyName :: XkbKeymap -> Keycode -> IO (Maybe String)
keymapKeyName km kcode =
  withForeignPtr km.unwrap $ \kmPtr -> do
    r <- c_xkbKeymapKeyGetName kmPtr kcode
    if r == nullPtr then return Nothing else Just <$> peekCString r

-- | Get Keycode by name.
--
-- Returns 'KeycodeInvalid' if the name does not exist.
keymapKeyByName :: XkbKeymap -> String -> IO Keycode
keymapKeyByName km str =
  withForeignPtr km.unwrap $ \kmPtr ->
    withCString str $ \c_str ->
      c_xkbKeymapKeyByName kmPtr c_str

-- | Get the name of a layout by index.
keymapLayoutName :: XkbKeymap -> LayoutIndex -> IO (Maybe String)
keymapLayoutName km idx =
  withForeignPtr km.unwrap $ \kmPtr -> do
    r <- _xkbKeymapLayoutGetName kmPtr idx
    if r == nullPtr then return Nothing else Just <$> peekCString r

-- | Get layout index by name.
--
-- If the layout does not exist returns 'LayoutIndexInvalid'.
keymapLayoutIndex :: XkbKeymap -> String -> IO LayoutIndex
keymapLayoutIndex km str =
  withForeignPtr km.unwrap $ \kmPtr ->
    withCString str $ \c_str ->
    c_xkbKeymapLayoutGetIndex kmPtr c_str

-- | Get the number of layouts in the keymap.
keymapNumLayouts :: XkbKeymap -> IO LayoutIndex
keymapNumLayouts km =
  withForeignPtr km.unwrap $ \kmPtr ->
    _xkbKeymapNumLayouts kmPtr

-- | Get the number of layouts for a specific key.
--
-- This number can be different from @xkb_keymap_num_layouts()@, but is always
-- smaller.  It is the appropriate value to use when iterating over the
-- layouts of a key.
keymapNumLayoutsForKey :: XkbKeymap -> Keycode -> IO LayoutIndex
keymapNumLayoutsForKey km kc =
  withForeignPtr km.unwrap $ \kmPtr ->
    c_xkb_keymap_num_layouts_for_key kmPtr kc

-- | Check whether a key repeats the keymap.
keymapKeyRepeats :: XkbKeymap -> Keycode -> IO Bool
keymapKeyRepeats km kc =
  withForeignPtr km.unwrap $ \kmPtr ->
    _xkbKeymapKeyRepeats kmPtr kc >>= \case
      1 -> return True
      _ -> return False

-- | Get the number of LED indices in the keymap.
keymapNumLeds :: XkbKeymap -> IO LedIndex
keymapNumLeds km =
  withForeignPtr km.unwrap $ \kmPtr ->
    _xkbKeymapNumLeds kmPtr

-- | Get the name of an LED at index.
keymapLedName :: XkbKeymap -> LedIndex -> IO (Maybe String)
keymapLedName km idx =
  withForeignPtr km.unwrap $ \kmPtr -> do
    r <- _xkbKeymapLedGetName kmPtr idx
    if r == nullPtr then return Nothing else Just <$> peekCString r

-- | Get LED index by name.
--
-- Returns 'LedIndexInvalid' if the LED does not exist.
keymapLedIndex :: XkbKeymap -> String -> IO LedIndex
keymapLedIndex km str =
  withForeignPtr km.unwrap $ \kmPtr ->
    withCString str $ \c_str ->
      c_xkbKeymapLedGetIndex kmPtr c_str

-- | Get the number of shift levels for a specific key and layout.
keymapNumLevelsForKey :: XkbKeymap -> Keycode -> LayoutIndex -> IO LevelIndex
keymapNumLevelsForKey km kc li =
  withForeignPtr km.unwrap $ \kmPtr ->
    c_xkb_keymap_num_levels_for_key kmPtr kc li

-- | Retrieves every possible modifier mask that produces the specified
-- shift level for a specific key and layout.
--
-- This API is useful for inverse key transformation; i.e. finding out
-- which modifiers need to be active in order to be able to type the
-- keysym(s) corresponding to the specific key code, layout and level.
keymapKeyModsForLevel :: XkbKeymap -> Keycode -> LayoutIndex -> LevelIndex -> IO [ModMask]
keymapKeyModsForLevel km kc lay lev =
  withForeignPtr km.unwrap $ \kmPtr ->
  allocaArray limit $ \arr -> do
    size <- c_xkbKeymapKeyGetModsForLevel kmPtr kc lay lev arr (fromIntegral limit)
    peekArray (fromIntegral size) arr
  where
    limit = 50

-- | Get the keysyms obtained from pressing a key in a given layout and
-- shift level.
--
-- This function is like `xkb_state::xkb_state_key_get_syms()`, only the layout
-- and shift level are not derived from the keyboard state but are instead
-- specified explicitly.
keymapKeySymsByLevel :: XkbKeymap -> Keycode -> LayoutIndex -> LevelIndex -> IO [KeySym]
keymapKeySymsByLevel km kc lay lev =
  withForeignPtr km.unwrap $ \kmPtr ->
  alloca $ \arr -> do
    size <- c_xkbKeymapKeyGetSymsByLevel kmPtr kc lay lev arr
    case size of
      0 -> return []
      _ -> do
        arr' <- peek arr
        peekArray size arr'

-- | Get the maximum keycode in the keymap.
keymapMaxKeycode :: XkbKeymap -> IO Keycode
keymapMaxKeycode km =
  withForeignPtr km.unwrap $ \kmPtr ->
  c_xkb_keymap_max_keycode kmPtr

-- | Get the minimum keycode in the keymap.
keymapMinKeycode :: XkbKeymap -> IO Keycode
keymapMinKeycode km =
  withForeignPtr km.unwrap $ \kmPtr ->
  c_xkb_keymap_min_keycode kmPtr

-- * Internals

foreign import ccall unsafe "&xkb_keymap_unref"
  _xkbKeymapUnref :: FunPtr (Ptr XkbKeymap -> IO ())

-- | Increase reference count of the keymap object.
foreign import ccall unsafe "xkb_keymap_ref"
  refKeymap :: Ptr XkbKeymap -> IO (Ptr XkbKeymap)

-- Mods

foreign import ccall unsafe "xkb_keymap_num_mods"
  c_xkb_keymap_num_mods :: Ptr XkbKeymap -> IO ModIndex

foreign import ccall unsafe "xkb_keymap_mod_get_name"
  _xkbKeymapModGetName :: Ptr XkbKeymap -> ModIndex -> IO CString

foreign import ccall unsafe "xkb_keymap_mod_get_index"
  c_xkbKeymapModGetIndex :: Ptr XkbKeymap -> CString -> IO ModIndex

foreign import ccall unsafe "xkb_keymap_mod_get_mask"
  _xkbKeymapModGetMask :: Ptr XkbKeymap -> CString -> IO ModMask

foreign import ccall unsafe "xkb_keymap_mod_get_mask2"
  c_xkbKeymapModGetMask2 :: Ptr XkbKeymap -> ModIndex -> IO ModMask

-- Layouts

foreign import ccall unsafe "xkb_keymap_num_layouts"
  _xkbKeymapNumLayouts :: Ptr XkbKeymap -> IO LayoutIndex

foreign import ccall unsafe "xkb_keymap_layout_get_name"
  _xkbKeymapLayoutGetName :: Ptr XkbKeymap -> LayoutIndex -> IO CString

foreign import ccall unsafe "xkb_keymap_layout_get_index"
  c_xkbKeymapLayoutGetIndex :: Ptr XkbKeymap -> CString -> IO LayoutIndex

foreign import ccall unsafe "xkb_keymap_num_layouts_for_key"
  c_xkb_keymap_num_layouts_for_key :: Ptr XkbKeymap -> Keycode -> IO LayoutIndex

foreign import ccall unsafe "xkb_keymap_num_levels_for_key"
  c_xkb_keymap_num_levels_for_key :: Ptr XkbKeymap -> Keycode -> LayoutIndex -> IO LevelIndex

-- LEDs

foreign import ccall unsafe "xkb_keymap_num_leds"
  _xkbKeymapNumLeds :: Ptr XkbKeymap -> IO LedIndex

foreign import ccall unsafe "xkb_keymap_led_get_name"
  _xkbKeymapLedGetName :: Ptr XkbKeymap -> LedIndex -> IO CString

foreign import ccall unsafe "xkb_keymap_led_get_index"
  c_xkbKeymapLedGetIndex :: Ptr XkbKeymap -> CString -> IO LedIndex

-- Keys

foreign import ccall unsafe "xkb_keymap_min_keycode"
  c_xkb_keymap_min_keycode :: Ptr XkbKeymap -> IO Keycode

foreign import ccall unsafe "xkb_keymap_max_keycode"
  c_xkb_keymap_max_keycode :: Ptr XkbKeymap -> IO Keycode

foreign import ccall unsafe "xkb_keymap_key_repeats"
  _xkbKeymapKeyRepeats :: Ptr XkbKeymap -> Keycode -> IO CInt

foreign import ccall unsafe "xkb_keymap_key_get_name"
  c_xkbKeymapKeyGetName :: Ptr XkbKeymap -> Keycode -> IO CString

foreign import ccall unsafe "xkb_keymap_key_by_name"
  c_xkbKeymapKeyByName :: Ptr XkbKeymap -> CString -> IO Keycode

foreign import ccall unsafe "xkb_keymap_key_get_mods_for_level"
  c_xkbKeymapKeyGetModsForLevel :: Ptr XkbKeymap -> Keycode -> LayoutIndex -> LevelIndex -> Ptr ModMask -> CSize -> IO CSize

foreign import ccall unsafe "xkb_keymap_key_get_syms_by_level"
  c_xkbKeymapKeyGetSymsByLevel :: Ptr XkbKeymap -> Keycode -> LayoutIndex -> LevelIndex -> Ptr (Ptr KeySym) -> IO Int

-- New

foreign import ccall unsafe "xkb_keymap_new_from_string"
  _xkbKeymapNewFromString :: Ptr XkbContext -> CString -> CUInt -> CUInt -> IO (Ptr XkbKeymap)

foreign import ccall unsafe "xkb_keymap_new_from_names2"
  _xkbKeymapNewFromNames2 :: Ptr XkbContext -> Ptr XkbRuleNames -> CUInt -> CUInt -> IO (Ptr XkbKeymap)

-- As string

foreign import ccall unsafe "xkb_keymap_get_as_string"
  _xkbKeymapGetAsString :: Ptr XkbKeymap -> CUInt -> IO CString
