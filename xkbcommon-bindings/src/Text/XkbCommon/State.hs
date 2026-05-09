-- |
-- Module      : Text.XkbCommon.XkbState
-- Description : XKbState
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Text.XkbCommon.State (
  -- * Create
  XkbState,
  createXkbState,
  -- * Functions
  xkbStateKeymap,
  xkbStateUpdateMask,
  xkbStateKeySym,
  xkbStateKeySyms,
  xkbStateKeyUtf8,
  xkbStateKeyUtf32,
  xkbStateKeyLayout,
  xkbStateKeyLevel,
  -- * XkbStateComponent
  XkbStateComponent,
  xkbStateModsDepressed,
  xkbStateModsLatched,
  xkbStateModsLocked,
  xkbStateModsEffective,
  xkbStateLayoutDepressed,
  xkbStateLayoutLatched,
  xkbStateLayoutLocked,
  xkbStateLayoutEffective,
  xkbStateLeds,
  ) where

import Foreign
import Foreign.C
import Control.Monad

import Text.XkbCommon.FFI
import Text.XkbCommon.Keymap

-- | Create a new "XkbState" object for the given keymap.
--
-- Throws "XkbStateCreationFailed" on failure.
createXkbState :: XkbKeymap -> IO XkbState
createXkbState km = withForeignPtr km.unwrap $ \kmPtr ->
  _xkbStateNew kmPtr
  >>= xkbThrowIfNull' XkbStateCreationFailed
  >>= fmap XkbState . newForeignPtr _xkbStateUnref

-- | Get the keymap that was used to construct this state.
xkbStateKeymap :: XkbState -> IO XkbKeymap
xkbStateKeymap xst = withForeignPtr xst.unwrap $ \xstPtr ->
  _xkbStateGetKeymap xstPtr >>= refKeymap >>= wrapKeymap

-- | Update a keyboard state from a set of explicit masks.
xkbStateUpdateMask :: XkbState
                   -> ModMask -- ^ Depressed modifiers
                   -> ModMask -- ^ Latched modifiers
                   -> ModMask -- ^ Locked modifiers
                   -> LayoutIndex -- ^ Depressed layout
                   -> LayoutIndex -- ^ Latched layout
                   -> LayoutIndex -- ^ Locked layout
                   -> IO XkbStateComponent
xkbStateUpdateMask xst m1 m2 m3 l1 l2 l3 = withForeignPtr xst.unwrap $ \xstPtr ->
  _xkbStateUpdateMask xstPtr m1 m2 m3 l1 l2 l3

-- | Get the single keysym obtained from pressing a particular key in a
-- given keyboard state.
xkbStateKeySym :: XkbState -> Keycode -> IO KeySym
xkbStateKeySym xst kc = withForeignPtr xst.unwrap $ \xstPtr ->
  _xkbStateKeyGetOneSym xstPtr kc

-- | Get the keysyms obtained from pressing a particular key in a given
-- keyboard state.
xkbStateKeySyms :: XkbState -> Keycode -> IO [KeySym]
xkbStateKeySyms xst kc = withForeignPtr xst.unwrap $ \xstPtr ->
  alloca $ \keyPtr -> do
    n <- _xkbStateKeyGetSyms xstPtr kc keyPtr
    case n of
      0 -> return []
      _ -> peekArray (fromIntegral n) =<< peek keyPtr

-- | Get the Unicode/UTF-8 string obtained from pressing a particular key
-- in a given keyboard state.
xkbStateKeyUtf8 :: XkbState -> Keycode -> IO String
xkbStateKeyUtf8 xst kc = withForeignPtr xst.unwrap $ \xstPtr -> do
  len <- c_xkb_state_key_get_utf8 xstPtr kc nullPtr 0
  allocaArray (len + 1) $ \buf -> do
    _ <- c_xkb_state_key_get_utf8 xstPtr kc buf (fromIntegral len + 1)
    peekCString buf

-- | Get the Unicode/UTF-32 codepoint obtained from pressing a particular
-- key in a a given keyboard state.
--
-- Returns the UTF-32 representation for the key, if it consists of only
-- a single codepoint.  Otherwise, returns 0.
xkbStateKeyUtf32 :: XkbState -> Keycode -> IO Word32
xkbStateKeyUtf32 xst kc = withForeignPtr xst.unwrap $ \xstPtr ->
  c_xkb_state_key_get_utf32 xstPtr kc

-- | Get the effective layout index for a key in a given keyboard state.
xkbStateKeyLayout :: XkbState -> Keycode -> IO (Maybe LayoutIndex)
xkbStateKeyLayout xst kc = withForeignPtr xst.unwrap $ \xstPtr -> do
  r <- c_xkb_state_key_get_layout xstPtr kc
  return $! do
    guard $ r /= layoutInvalid
    return r

-- | Get the effective shift level for a key in a given keyboard state and layout.
--
-- See also: xkb_keymap_num_levels_for_key
xkbStateKeyLevel :: XkbState -> Keycode -> LayoutIndex -> IO (Maybe LevelIndex)
xkbStateKeyLevel xst kc li = withForeignPtr xst.unwrap $ \xstPtr -> do
  r <- c_xkb_state_key_get_level xstPtr kc li
  return $! do
    guard $ r /= levelInvalid
    return r

-- * Internals

foreign import ccall unsafe "&xkb_state_unref"
  _xkbStateUnref :: FunPtr (Ptr XkbState -> IO ())

foreign import ccall unsafe "xkb_state_new"
  _xkbStateNew :: Ptr XkbKeymap -> IO (Ptr XkbState)

-- | Note: the lifetime of the keymap is tied to the state by default!
foreign import ccall unsafe "xkb_state_get_keymap"
  _xkbStateGetKeymap :: Ptr XkbState -> IO (Ptr XkbKeymap)

foreign import ccall unsafe "xkb_state_update_mask"
  _xkbStateUpdateMask :: Ptr XkbState
                     -> ModMask -> ModMask -> ModMask
                     -> LayoutIndex -> LayoutIndex -> LayoutIndex
                     -> IO XkbStateComponent

foreign import ccall unsafe "xkb_state_key_get_one_sym"
  _xkbStateKeyGetOneSym :: Ptr XkbState -> Keycode -> IO KeySym

foreign import ccall unsafe "xkb_state_key_get_syms"
  _xkbStateKeyGetSyms :: Ptr XkbState -> Keycode -> Ptr (Ptr KeySym) -> IO CInt

foreign import ccall unsafe "xkb_state_key_get_utf8"
  c_xkb_state_key_get_utf8 :: Ptr XkbState -> Keycode -> CString -> CSize -> IO Int

foreign import ccall unsafe "xkb_state_key_get_utf32"
  c_xkb_state_key_get_utf32 :: Ptr XkbState -> Keycode -> IO Word32

foreign import ccall unsafe "xkb_state_key_get_layout"
  c_xkb_state_key_get_layout :: Ptr XkbState -> Keycode -> IO LayoutIndex

foreign import ccall unsafe "xkb_state_key_get_level"
  c_xkb_state_key_get_level :: Ptr XkbState -> Keycode -> LayoutIndex -> IO LevelIndex
