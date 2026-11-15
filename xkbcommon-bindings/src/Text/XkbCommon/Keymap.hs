{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE LambdaCase #-}

-- |
-- Module      : Text.XkbCommon.Keymap
-- Description : Keymaps
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module Text.XkbCommon.Keymap (
  -- * New keymap
  XkbKeymap,
  KeymapFormat (..),

  -- ** From names
  keymapFromNames,
  XkbRuleNames (..),
  Layout (..),
  LayoutOption (..),

  -- ** From String or Fd
  keymapFromString,
  keymapFromFd,

  -- ** Builder
  module Text.XkbCommon.Keymap.RmlvoBuilder,

  -- * Serialize as String or Fd
  keymapToString,
  withKeymapFd,
  keymapToFd,

  -- * Modifiers
  keymapModCount,
  keymapModName,
  keymapModIndex,
  keymapModMask,
  keymapModMaskByIndex,
  ModIndex,
  ModMask,
  pattern ModInvalid,

  -- * Layouts
  keymapLayoutCount,
  keymapLayoutName,
  keymapLayoutIndex,
  keymapNumLayoutsForKey,
  LayoutIndex,
  LayoutMask,
  pattern LayoutInvalid,

  -- * LEDs
  keymapLedCount,
  keymapLedName,
  keymapLedIndex,
  LedIndex,
  pattern LedInvalid,

  -- ** Known LED Names
  pattern LedNumLock,
  pattern LedCapsLock,
  pattern LedScrollLock,
  pattern LedCompose,
  pattern LedKana,

  -- * Keys
  keymapKeyMin,
  keymapKeyMax,
  keymapKeyName,
  keymapKeyRepeats,
  keymapKeyModsForLevel,
  keymapKeySymsForLevel,
  keymapKeyLevelCount,
  Keycode,
  keycodeMax,
  LevelIndex,
  pattern KeycodeInvalid,

  -- ** Key lookup
  keymapKeyByName,

  -- * Internals
  keymapIncreaseRefCount,
) where

import Control.Exception
import Foreign
import Foreign.C
import Foreign.C.ConstPtr
import GHC.Stack
import System.Posix (Fd, closeFd, fdWrite)

import Text.XkbCommon.FFI
import Text.XkbCommon.Internal
import Text.XkbCommon.Keymap.RmlvoBuilder

-- |
-- Throws "KeymapCreationFailed" on error.
keymapFromString :: (HasCallStack) => XkbContext -> KeymapFormat -> String -> IO XkbKeymap
keymapFromString ctx fmt s =
  withCString s $ \cStr ->
    keymapFromCString (take 42 s) ctx cStr fmt

-- | Returns A keymap compiled according to the [RMLVO] names.
--
-- Throws "KeymapCreationFailed" on error.
keymapFromNames :: (HasCallStack) => XkbContext -> KeymapFormat -> XkbRuleNames -> IO XkbKeymap
keymapFromNames ctx fmt rns =
  withForeignPtr ctx.unwrap $ \ctxPtr ->
    withXkbRuleNames rns $ \p ->
      c_xkb_keymap_new_from_names2 ctxPtr p (fromKeymapFormat fmt) 0
        >>= throwIfNullEx (KeymapCreationFailed "from names" (Just rns) fmt)
        >>= keymapFromPtr

-- | Throws "KeymapCreationFailed" on error.
keymapFromFd :: (HasCallStack) => XkbContext -> KeymapFormat -> Fd -> CSize -> Bool -> IO XkbKeymap
keymapFromFd ctx fmt fd size private =
  bracket mmap' (`munmap` size) $ \ptr -> do
    keymap <- keymapFromCString (show fd) ctx (castPtr ptr) fmt
    closeFd fd
    return keymap
  where
    mmap' = mmap nullPtr size protRead (if private then mapPrivate else mapShared) fd 0

keymapFromCString :: (HasCallStack) => String -> XkbContext -> CString -> KeymapFormat -> IO XkbKeymap
keymapFromCString loc ctx s fmt =
  withForeignPtr ctx.unwrap $ \ctxPtr ->
    c_xkb_keymap_new_from_string ctxPtr s (fromKeymapFormat fmt) 0
      >>= throwIfNullEx (KeymapCreationFailed loc Nothing fmt)
      >>= keymapFromPtr

-- | Get the compiled keymap as a string.
keymapToString :: (HasCallStack) => XkbKeymap -> KeymapFormat -> IO String
keymapToString km fmt = bracket get free peekCString
  where
    get =
      withForeignPtr km.unwrap (\ptr -> c_xkb_keymap_get_as_string ptr (fromKeymapFormat fmt))
        >>= throwIfNullEx (KeymapGetAsStringFailed km fmt)

-- | Get the keymap as a string pointed to by a FD.
keymapToFd :: XkbKeymap -> KeymapFormat -> IO Fd
keymapToFd kmap fmt =
  bracketOnError (memfdCreate "xkbkeymap" (mfdCloExec <> mfdAllowSealing)) closeFd $ \fd -> do
    _ <- fdWrite fd =<< keymapToString kmap fmt
    return fd

-- | Get the keymap as a string pointed to by a FD.
withKeymapFd :: XkbKeymap -> KeymapFormat -> (Fd -> IO b) -> IO b
withKeymapFd kmap fmt = bracket (keymapToFd kmap fmt) closeFd

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
keymapModCount :: XkbKeymap -> IO ModIndex
keymapModCount km = withForeignPtr km.unwrap c_xkb_keymap_num_mods

-- | Get the name of a modifier by index.
--
-- Return @Nothing@ if the index is invalid.
keymapModName :: XkbKeymap -> ModIndex -> IO (Maybe String)
keymapModName km a =
  withForeignPtr km.unwrap $ \kmPtr -> do
    ConstPtr r <- _xkbKeymapModGetName kmPtr a
    if r == nullPtr then return Nothing else Just <$> peekCString r

-- | Get the index of a modifier by name.
--
-- If the modifier does not exist, the result is 'ModInvalid'.
keymapModIndex :: XkbKeymap -> String -> IO ModIndex
keymapModIndex km str = withForeignPtr km.unwrap $ withCString str . c_xkbKeymapModGetIndex

-- | Find the name of key of a keycode.
keymapKeyName :: XkbKeymap -> Keycode -> IO (Maybe String)
keymapKeyName km kcode =
  withForeignPtr km.unwrap $ \kmPtr -> do
    ConstPtr r <- c_xkbKeymapKeyGetName kmPtr kcode
    if r == nullPtr then return Nothing else Just <$> peekCString r

-- | Get Keycode by name.
--
-- Returns 'KeycodeInvalid' if the name does not exist.
keymapKeyByName :: XkbKeymap -> String -> IO Keycode
keymapKeyByName km str = withForeignPtr km.unwrap $ withCString str . c_xkbKeymapKeyByName

-- | Get the name of a layout by index.
keymapLayoutName :: XkbKeymap -> LayoutIndex -> IO (Maybe String)
keymapLayoutName km idx =
  withForeignPtr km.unwrap $ \kmPtr -> do
    ConstPtr r <- _xkbKeymapLayoutGetName kmPtr idx
    if r == nullPtr then return Nothing else Just <$> peekCString r

-- | Get layout index by name.
--
-- If the layout does not exist returns 'LayoutInvalid'.
keymapLayoutIndex :: XkbKeymap -> String -> IO LayoutIndex
keymapLayoutIndex km str = withForeignPtr km.unwrap $ withCString str . c_xkbKeymapLayoutGetIndex

-- | Get the number of layouts in the keymap.
keymapLayoutCount :: XkbKeymap -> IO LayoutIndex
keymapLayoutCount km = withForeignPtr km.unwrap _xkbKeymapNumLayouts

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
keymapLedCount :: XkbKeymap -> IO LedIndex
keymapLedCount km = withForeignPtr km.unwrap _xkbKeymapNumLeds

-- | Get the name of an LED at index.
keymapLedName :: XkbKeymap -> LedIndex -> IO (Maybe String)
keymapLedName km idx =
  withForeignPtr km.unwrap $ \kmPtr -> do
    ConstPtr r <- _xkbKeymapLedGetName kmPtr idx
    if r == nullPtr then return Nothing else Just <$> peekCString r

-- | Get LED index by name.
--
-- Returns 'LedInvalid' if the LED does not exist.
keymapLedIndex :: XkbKeymap -> String -> IO LedIndex
keymapLedIndex km str = withForeignPtr km.unwrap $ withCString str . c_xkbKeymapLedGetIndex

-- | Get the number of shift levels for a specific key and layout.
keymapKeyLevelCount :: XkbKeymap -> Keycode -> LayoutIndex -> IO LevelIndex
keymapKeyLevelCount km kc li =
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
keymapKeySymsForLevel :: XkbKeymap -> Keycode -> LayoutIndex -> LevelIndex -> IO [KeySym]
keymapKeySymsForLevel km kc lay lev =
  withForeignPtr km.unwrap $ \kmPtr ->
    alloca $ \arr -> do
      size <- c_xkbKeymapKeyGetSymsByLevel kmPtr kc lay lev arr
      if size == 0 then return [] else peek arr >>= peekArray size . unConstPtr

-- | Get the maximum keycode in the keymap.
keymapKeyMax :: XkbKeymap -> IO Keycode
keymapKeyMax km = withForeignPtr km.unwrap c_xkb_keymap_max_keycode

-- | Get the minimum keycode in the keymap.
keymapKeyMin :: XkbKeymap -> IO Keycode
keymapKeyMin km = withForeignPtr km.unwrap c_xkb_keymap_min_keycode

-- * Internals

-- | Increase reference count of the keymap object.
foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_ref"
  keymapIncreaseRefCount :: Ptr XkbKeymap -> IO (Ptr XkbKeymap)

-- Mods

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_num_mods"
  c_xkb_keymap_num_mods :: Ptr XkbKeymap -> IO ModIndex

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_mod_get_name"
  _xkbKeymapModGetName :: Ptr XkbKeymap -> ModIndex -> IO (ConstPtr CChar)

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_mod_get_index"
  c_xkbKeymapModGetIndex :: Ptr XkbKeymap -> CString -> IO ModIndex

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_mod_get_mask"
  _xkbKeymapModGetMask :: Ptr XkbKeymap -> CString -> IO ModMask

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_mod_get_mask2"
  c_xkbKeymapModGetMask2 :: Ptr XkbKeymap -> ModIndex -> IO ModMask

-- Layouts

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_num_layouts"
  _xkbKeymapNumLayouts :: Ptr XkbKeymap -> IO LayoutIndex

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_layout_get_name"
  _xkbKeymapLayoutGetName :: Ptr XkbKeymap -> LayoutIndex -> IO (ConstPtr CChar)

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_layout_get_index"
  c_xkbKeymapLayoutGetIndex :: Ptr XkbKeymap -> CString -> IO LayoutIndex

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_num_layouts_for_key"
  c_xkb_keymap_num_layouts_for_key :: Ptr XkbKeymap -> Keycode -> IO LayoutIndex

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_num_levels_for_key"
  c_xkb_keymap_num_levels_for_key :: Ptr XkbKeymap -> Keycode -> LayoutIndex -> IO LevelIndex

-- LEDs

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_num_leds"
  _xkbKeymapNumLeds :: Ptr XkbKeymap -> IO LedIndex

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_led_get_name"
  _xkbKeymapLedGetName :: Ptr XkbKeymap -> LedIndex -> IO (ConstPtr CChar)

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_led_get_index"
  c_xkbKeymapLedGetIndex :: Ptr XkbKeymap -> CString -> IO LedIndex

-- Keys

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_min_keycode"
  c_xkb_keymap_min_keycode :: Ptr XkbKeymap -> IO Keycode

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_max_keycode"
  c_xkb_keymap_max_keycode :: Ptr XkbKeymap -> IO Keycode

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_key_repeats"
  _xkbKeymapKeyRepeats :: Ptr XkbKeymap -> Keycode -> IO CInt

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_key_get_name"
  c_xkbKeymapKeyGetName :: Ptr XkbKeymap -> Keycode -> IO (ConstPtr CChar)

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_key_by_name"
  c_xkbKeymapKeyByName :: Ptr XkbKeymap -> CString -> IO Keycode

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_key_get_mods_for_level"
  c_xkbKeymapKeyGetModsForLevel :: Ptr XkbKeymap -> Keycode -> LayoutIndex -> LevelIndex -> Ptr ModMask -> CSize -> IO CSize

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_key_get_syms_by_level"
  c_xkbKeymapKeyGetSymsByLevel :: Ptr XkbKeymap -> Keycode -> LayoutIndex -> LevelIndex -> Ptr (ConstPtr KeySym) -> IO Int

-- New

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_new_from_string"
  c_xkb_keymap_new_from_string :: Ptr XkbContext -> CString -> CUInt -> CUInt -> IO (Ptr XkbKeymap)

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_new_from_names2"
  c_xkb_keymap_new_from_names2 :: Ptr XkbContext -> Ptr XkbRuleNames -> CUInt -> CUInt -> IO (Ptr XkbKeymap)

-- As string

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_get_as_string"
  c_xkb_keymap_get_as_string :: Ptr XkbKeymap -> CUInt -> IO CString
