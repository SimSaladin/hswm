-- |
-- Module      : Text.XkbCommon.XkbState
-- Description : XKbState
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Text.XkbCommon.XkbState (
  XkbState,
  createXkbState,
  xkbStateKeymap,
  xkbStateUpdateMask,
  xkbStateKeySym,
  xkbStateKeySyms,
  ) where

import Foreign
import Foreign.C

import Text.XkbCommon.Types
import Text.XkbCommon.Internal
import Text.XkbCommon.XkbKeymap

#include <xkbcommon/xkbcommon.h>

createXkbState :: XkbKeymap -> IO XkbState
createXkbState km = withForeignPtr km.unwrap $ \kmPtr ->
  _xkbStateNew kmPtr
  >>= xkbThrowIfNull' (XkbOperationFailed "xkbStateNew")
  >>= fmap XkbState . newForeignPtr _xkbStateUnref

-- | Get the keymap that was used to construct this state.
xkbStateKeymap :: XkbState -> IO XkbKeymap
xkbStateKeymap xst = withForeignPtr xst.unwrap $ \xstPtr ->
  _xkbStateGetKeymap xstPtr >>= refKeymap >>= wrapKeymap

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

xkbStateKeySyms :: XkbState -> Keycode -> IO [KeySym]
xkbStateKeySyms xst kc = withForeignPtr xst.unwrap $ \xstPtr ->
  alloca $ \keyPtr -> do
    n <- _xkbStateKeyGetSyms xstPtr kc keyPtr
    case n of
      0 -> return []
      _ -> peekArray (fromIntegral n) =<< peek keyPtr

-- * Internals

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

foreign import ccall unsafe "&xkb_state_unref"
  _xkbStateUnref :: FunPtr (Ptr XkbState -> IO ())

foreign import ccall unsafe "xkb_state_new"
  _xkbStateNew :: Ptr XkbKeymap -> IO (Ptr XkbState)
