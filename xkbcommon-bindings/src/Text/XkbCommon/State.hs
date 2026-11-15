-- |
-- Module      : Text.XkbCommon.State
-- Description : XKbState
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module Text.XkbCommon.State (
  -- * Create
  XkbState,
  newState,

  -- * Update
  updateMask,
  XkbStateComponent (
    ModsDepressed,
    ModsLatched,
    ModsLocked,
    ModsEffective,
    LayoutDepressed,
    LayoutLatched,
    LayoutLocked,
    LayoutEffective,
    Leds
  ),

  -- * Query
  keyGetOneSym,
  keyGetSyms,
  keyGetUtf8,
  keyGetUtf32,
  keyGetLayout,
  keyGetLevel,
  getStateKeymap,
) where

import Control.Monad
import Foreign
import Foreign.C
import Foreign.C.ConstPtr

import Text.XkbCommon.FFI
import Text.XkbCommon.Internal
import Text.XkbCommon.Keymap

-- | Create a new "XkbState" object for the given keymap.
--
-- Throws "XkbStateCreationFailed" on failure.
newState :: XkbKeymap -> IO XkbState
newState km = withForeignPtr km.unwrap $ \kmPtr ->
  c_xkb_state_new kmPtr
    >>= throwIfNullEx (XkbStateCreationFailed km)
    >>= fmap XkbState . newForeignPtr c_xkb_state_unref

-- | Get the keymap that was used to construct this state.
getStateKeymap :: XkbState -> IO XkbKeymap
getStateKeymap xst = withForeignPtr xst.unwrap $ \xstPtr ->
  c_xkb_state_get_keymap xstPtr >>= keymapIncreaseRefCount >>= keymapFromPtr

-- | Update a keyboard state from a set of explicit masks.
updateMask ::
  XkbState
  -> ModMask
  -- ^ Depressed modifiers
  -> ModMask
  -- ^ Latched modifiers
  -> ModMask
  -- ^ Locked modifiers
  -> LayoutIndex
  -- ^ Depressed layout
  -> LayoutIndex
  -- ^ Latched layout
  -> LayoutIndex
  -- ^ Locked layout
  -> IO XkbStateComponent
  -- ^ Bitmask of the changed properties
updateMask xst m1 m2 m3 l1 l2 l3 = withForeignPtr xst.unwrap $ \xstPtr ->
  c_xkb_state_update_mask xstPtr m1 m2 m3 l1 l2 l3

-- | Get the single keysym obtained from pressing a particular key in a
-- given keyboard state.
keyGetOneSym :: XkbState -> Keycode -> IO KeySym
keyGetOneSym xst kc = withForeignPtr xst.unwrap $ \xstPtr ->
  c_xkb_state_key_get_one_sym xstPtr kc

-- | Get the keysyms obtained from pressing a particular key in a given
-- keyboard state.
keyGetSyms :: XkbState -> Keycode -> IO [KeySym]
keyGetSyms xst kc = withForeignPtr xst.unwrap $ \xstPtr ->
  alloca $ \keyPtr -> do
    n <- c_xkb_state_key_get_syms xstPtr kc keyPtr
    case n of
      0 -> return []
      _ -> peekArray (fromIntegral n) . unConstPtr =<< peek keyPtr

-- | Get the Unicode/UTF-8 string obtained from pressing a particular key
-- in a given keyboard state.
keyGetUtf8 :: XkbState -> Keycode -> IO String
keyGetUtf8 xst kc = withForeignPtr xst.unwrap $ \xstPtr -> do
  len <- c_xkb_state_key_get_utf8 xstPtr kc nullPtr 0
  allocaArray (len + 1) $ \buf -> do
    _ <- c_xkb_state_key_get_utf8 xstPtr kc buf (fromIntegral len + 1)
    peekCString buf

-- | Get the Unicode/UTF-32 codepoint obtained from pressing a particular
-- key in a a given keyboard state.
--
-- Returns the UTF-32 representation for the key, if it consists of only
-- a single codepoint.  Otherwise, returns 0.
keyGetUtf32 :: XkbState -> Keycode -> IO Word32
keyGetUtf32 xst kc = withForeignPtr xst.unwrap $ \xstPtr ->
  c_xkb_state_key_get_utf32 xstPtr kc

-- | Get the effective layout index for a key in a given keyboard state.
keyGetLayout :: XkbState -> Keycode -> IO (Maybe LayoutIndex)
keyGetLayout xst kc = withForeignPtr xst.unwrap $ \xstPtr -> do
  r <- c_xkb_state_key_get_layout xstPtr kc
  return $! do
    guard $ r /= LayoutInvalid
    return r

-- | Get the effective shift level for a key in a given keyboard state and layout.
--
-- See also: xkb_keymap_num_levels_for_key
keyGetLevel :: XkbState -> Keycode -> LayoutIndex -> IO (Maybe LevelIndex)
keyGetLevel xst kc li = withForeignPtr xst.unwrap $ \xstPtr -> do
  r <- c_xkb_state_key_get_level xstPtr kc li
  return $! do
    guard $ r /= LevelInvalid
    return r

-- * Internals

foreign import capi unsafe "xkbcommon/xkbcommon.h &xkb_state_unref"
  c_xkb_state_unref :: FunPtr (Ptr XkbState -> IO ())

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_state_new"
  c_xkb_state_new :: Ptr XkbKeymap -> IO (Ptr XkbState)

-- | Note: the lifetime of the keymap is tied to the state by default!
foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_state_get_keymap"
  c_xkb_state_get_keymap :: Ptr XkbState -> IO (Ptr XkbKeymap)

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_state_update_mask"
  c_xkb_state_update_mask ::
    Ptr XkbState
    -> ModMask
    -> ModMask
    -> ModMask
    -> LayoutIndex
    -> LayoutIndex
    -> LayoutIndex
    -> IO XkbStateComponent

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_state_key_get_one_sym"
  c_xkb_state_key_get_one_sym :: Ptr XkbState -> Keycode -> IO KeySym

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_state_key_get_syms"
  c_xkb_state_key_get_syms :: Ptr XkbState -> Keycode -> Ptr (ConstPtr KeySym) -> IO CInt

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_state_key_get_utf8"
  c_xkb_state_key_get_utf8 :: Ptr XkbState -> Keycode -> CString -> CSize -> IO Int

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_state_key_get_utf32"
  c_xkb_state_key_get_utf32 :: Ptr XkbState -> Keycode -> IO Word32

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_state_key_get_layout"
  c_xkb_state_key_get_layout :: Ptr XkbState -> Keycode -> IO LayoutIndex

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_state_key_get_level"
  c_xkb_state_key_get_level :: Ptr XkbState -> Keycode -> LayoutIndex -> IO LevelIndex
