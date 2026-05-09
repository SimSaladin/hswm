{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE LambdaCase #-}

module Text.XkbCommon.Keymap (
  -- * Create
  createKeymapFromNames,
  XkbRuleNames(..),
  createKeymapFromString,
  createKeymapFromFd,
  XkbKeymap(..),
  XkbKeymapFormat(..),
  keymapFormatTextV1,
  keymapFormatTextV2,
  fromKeymapFormat,
  LayoutSpec(..),
  OptionSpec(..),
  -- * Convert to String
  keymapAsString,
  withKeymapFd,
  keymapAsStringFd,
  -- * Modifiers
  ModMask,
  ModIndex,
  keymapNumMods,
  keymapModMask,
  keymapModName,
  -- * Layouts
  LayoutIndex,
  LayoutMask,
  keymapNumLayouts,
  keymapNumLayoutsForKey,
  keymapLayoutName,
  -- * Levels
  LevelIndex,
  keymapNumLevelsForKey,
  -- * Keys
  Keycode,
  keycodeMax,
  invalidKeycode,
  keymapKeyName,
  keymapKeyRepeats,
  -- * Leds
  LedIndex,
  keymapNumLeds,
  keymapLedName,
  -- * Internals
  wrapKeymap,
  refKeymap,
  ) where

import Foreign
import Foreign.C
import System.Posix (closeFd, fdWrite, Fd)
import Control.Exception

import Text.XkbCommon.FFI
import Text.XkbCommon.Internal

wrapKeymap :: Ptr XkbKeymap -> IO XkbKeymap
wrapKeymap = fmap XkbKeymap . newForeignPtr _xkbKeymapUnref

createKeymapFromString :: XkbContext -> String -> XkbKeymapFormat -> IO XkbKeymap
createKeymapFromString ctx s fmt =
  withCString s $ \cStr ->
    xkbKeymapNewFromCString ctx cStr fmt

-- | Returns A keymap compiled according to the [RMLVO] names.
createKeymapFromNames :: XkbContext -> XkbRuleNames -> XkbKeymapFormat -> IO XkbKeymap
createKeymapFromNames ctx rns fmt =
  withForeignPtr ctx.unwrap $ \ctxPtr ->
  withXkbRuleNames rns $ \p ->
    _xkbKeymapNewFromNames2 ctxPtr p (fromKeymapFormat fmt) 0
    >>= xkbThrowIfNull' (XkbKeymapCreationFailed $ show (rns, fmt))
    >>= wrapKeymap

createKeymapFromFd :: XkbContext -> Fd -> CSize -> Bool -> XkbKeymapFormat -> IO XkbKeymap
createKeymapFromFd ctx fd size private fmt =
  bracket mmap' (\ptr -> munmap ptr size) $ \ptr -> do
    keymap <- xkbKeymapNewFromCString ctx (castPtr ptr) fmt
    closeFd fd
    return keymap
    where
      mmap' = mmap nullPtr (fromIntegral size) protRead (if private then mapPrivate else mapShared) fd 0

xkbKeymapNewFromCString :: XkbContext -> CString -> XkbKeymapFormat -> IO XkbKeymap
xkbKeymapNewFromCString ctx s fmt =
  withForeignPtr ctx.unwrap $ \ctxPtr ->
    _xkbKeymapNewFromString ctxPtr s (fromKeymapFormat fmt) 0
    >>= xkbThrowIfNull' (XkbKeymapCreationFailed $ show fmt)
    >>= wrapKeymap

-- | Get the compiled keymap as a string.
keymapAsString :: XkbKeymap -> XkbKeymapFormat -> IO String
keymapAsString km fmt =
  withForeignPtr km.unwrap $ \kmPtr ->
    bracket (_xkbKeymapGetAsString kmPtr (fromKeymapFormat fmt) >>= xkbThrowIfNull' (XkbKeymapFromStringFailed $ show (km, fmt)))
      free peekCString

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
keymapModMask :: XkbKeymap -> String -> IO ModMask
keymapModMask km s =
  withForeignPtr km.unwrap $ \kmPtr ->
  withCString s $ \sC ->
    _xkbKeymapModGetMask kmPtr sC

-- | Get the number of modifiers in the keymap.
keymapNumMods :: XkbKeymap -> IO ModIndex
keymapNumMods km = withForeignPtr km.unwrap $ \kmPtr ->
  c_xkb_keymap_num_mods kmPtr

-- | Get the name of a modifier by index.
keymapModName :: XkbKeymap -> ModIndex -> IO String
keymapModName km a =
  withForeignPtr km.unwrap $ \kmPtr -> do
    r <- _xkbKeymapModGetName kmPtr a
    if r == nullPtr then return "" else peekCString r

-- | Find the name of key of a keycode.
keymapKeyName :: XkbKeymap -> Keycode -> IO (Maybe String)
keymapKeyName km kcode =
  withForeignPtr km.unwrap $ \kmPtr -> do
    r <- _xkbKeymapKeyGetName kmPtr kcode
    if r == nullPtr then return Nothing else Just <$> peekCString r

keymapLayoutName :: XkbKeymap -> LayoutIndex -> IO (Maybe String)
keymapLayoutName km idx =
  withForeignPtr km.unwrap $ \kmPtr -> do
    r <- _xkbKeymapLayoutGetName kmPtr idx
    if r == nullPtr then return Nothing else Just <$> peekCString r

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

keymapNumLeds :: XkbKeymap -> IO LedIndex
keymapNumLeds km =
  withForeignPtr km.unwrap $ \kmPtr ->
    _xkbKeymapNumLeds kmPtr

keymapLedName :: XkbKeymap -> LedIndex -> IO (Maybe String)
keymapLedName km idx =
  withForeignPtr km.unwrap $ \kmPtr -> do
    r <- _xkbKeymapLedGetName kmPtr idx
    if r == nullPtr then return Nothing else Just <$> peekCString r

-- | Get the number of shift levels for a specific key and layout.
keymapNumLevelsForKey :: XkbKeymap -> Keycode -> LayoutIndex -> IO LevelIndex
keymapNumLevelsForKey km kc li =
  withForeignPtr km.unwrap $ \kmPtr ->
    c_xkb_keymap_num_levels_for_key kmPtr kc li

-- * Internals

foreign import ccall unsafe "&xkb_keymap_unref"
  _xkbKeymapUnref :: FunPtr (Ptr XkbKeymap -> IO ())

foreign import ccall unsafe "xkb_keymap_ref"
  refKeymap :: Ptr XkbKeymap -> IO (Ptr XkbKeymap)

foreign import ccall unsafe "xkb_keymap_mod_get_mask"
  _xkbKeymapModGetMask :: Ptr XkbKeymap -> CString -> IO ModMask

foreign import ccall unsafe "xkb_keymap_mod_get_name"
  _xkbKeymapModGetName :: Ptr XkbKeymap -> ModIndex -> IO CString

foreign import ccall unsafe "xkb_keymap_new_from_string"
  _xkbKeymapNewFromString :: Ptr XkbContext -> CString -> CUInt -> CUInt -> IO (Ptr XkbKeymap)

foreign import ccall unsafe "xkb_keymap_new_from_names2"
  _xkbKeymapNewFromNames2 :: Ptr XkbContext -> Ptr XkbRuleNames -> CUInt -> CUInt -> IO (Ptr XkbKeymap)

foreign import ccall unsafe "xkb_keymap_get_as_string"
  _xkbKeymapGetAsString :: Ptr XkbKeymap -> CUInt -> IO CString

foreign import ccall unsafe "xkb_keymap_key_get_name"
  _xkbKeymapKeyGetName :: Ptr XkbKeymap -> Keycode -> IO CString

foreign import ccall unsafe "xkb_keymap_layout_get_name"
  _xkbKeymapLayoutGetName :: Ptr XkbKeymap -> LayoutIndex -> IO CString

foreign import ccall unsafe "xkb_keymap_num_layouts"
  _xkbKeymapNumLayouts :: Ptr XkbKeymap -> IO LayoutIndex

foreign import ccall unsafe "xkb_keymap_num_layouts_for_key"
  c_xkb_keymap_num_layouts_for_key :: Ptr XkbKeymap -> Keycode -> IO LayoutIndex

foreign import ccall unsafe "xkb_keymap_num_levels_for_key"
  c_xkb_keymap_num_levels_for_key :: Ptr XkbKeymap -> Keycode -> LayoutIndex -> IO LevelIndex

foreign import ccall unsafe "xkb_keymap_key_repeats"
  _xkbKeymapKeyRepeats :: Ptr XkbKeymap -> Keycode -> IO CInt

foreign import ccall unsafe "xkb_keymap_num_leds"
  _xkbKeymapNumLeds :: Ptr XkbKeymap -> IO LedIndex

foreign import ccall unsafe "xkb_keymap_led_get_name"
  _xkbKeymapLedGetName :: Ptr XkbKeymap -> LedIndex -> IO CString

foreign import ccall unsafe "xkb_keymap_num_mods"
  c_xkb_keymap_num_mods :: Ptr XkbKeymap -> IO ModIndex
