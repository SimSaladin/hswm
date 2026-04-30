{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE LambdaCase #-}

module Text.XkbCommon.XkbKeymap (
  XkbKeymap,
  XkbKeymapFormat(..),
  keymapFormatTextV1,
  keymapFormatTextV2,
  wrapKeymap,
  refKeymap,
  -- * Create
  createKeymapFromNames,
  createKeymapFromString,
  createKeymapFromBuilder,
  createKeymapFromFd,
  -- * Convert to String
  keymapAsString,
  keymapAsStringFd,
  withKeymapFd,
  -- * Modifiers
  keymapModMask,
  keymapModName,
  -- * Keys
  keymapKeyName,
  keymapKeyRepeats,
  -- * Layouts
  keymapNumLayouts,
  keymapLayoutName,
  -- * Leds
  keymapNumLeds,
  keymapLedName,
  ) where

import Foreign
import Foreign.C
import System.Posix (closeFd, fdWrite)
import Control.Exception

import Text.XkbCommon.Types
import Text.XkbCommon.Internal

#include <xkbcommon/xkbcommon.h>

data XkbKeymapFormat = KeymapFormatTextV1
                     | KeymapFormatTextV2
  deriving stock (Eq, Ord, Generic, Show)

-- backwards-compat
keymapFormatTextV1, keymapFormatTextV2 :: XkbKeymapFormat
keymapFormatTextV1 = KeymapFormatTextV1
keymapFormatTextV2 = KeymapFormatTextV2

fromKeymapFormat :: XkbKeymapFormat -> CUInt
fromKeymapFormat KeymapFormatTextV1 = #{const XKB_KEYMAP_FORMAT_TEXT_V1}
fromKeymapFormat KeymapFormatTextV2 = #{const XKB_KEYMAP_FORMAT_TEXT_V2}

{-
toKeymapFormat :: CUInt -> XkbKeymapFormat
toKeymapFormat #{const XKB_KEYMAP_FORMAT_TEXT_V1} = KeymapFormatTextV1
toKeymapFormat #{const XKB_KEYMAP_FORMAT_TEXT_V2} = KeymapFormatTextV2
toKeymapFormat x = error $ "toKeymapFormat: " ++ show x
-}

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
    >>= xkbThrowIfNull' (XkbOperationFailed "xkbKeymapNewFromNames2")
    >>= wrapXkbKeymap

createKeymapFromBuilder :: XkbRmlvoBuilder -> XkbKeymapFormat -> IO XkbKeymap
createKeymapFromBuilder builder fmt =
  withForeignPtr builder.unwrap $ \builderPtr ->
    _xkbKeymapNewFromRmlvo builderPtr (fromKeymapFormat fmt) 0
    >>= xkbThrowIfNull' (XkbOperationFailed "xkbKeymapNewFromRmlvo")
    >>= wrapXkbKeymap

createKeymapFromFd :: XkbContext -> Fd -> CSize -> Bool -> XkbKeymapFormat -> IO XkbKeymap
createKeymapFromFd ctx fd size private fmt =
  bracket mmap' (\ptr -> munmap ptr size) $ \ptr -> do
    keymap <- xkbKeymapNewFromCString ctx (castPtr ptr) fmt
    closeFd fd
    return keymap
    where
      mmap' = mmap nullPtr (fromIntegral size) pROT_READ (if private then mAP_PRIVATE else mAP_SHARED) fd 0

xkbKeymapNewFromCString :: XkbContext -> CString -> XkbKeymapFormat -> IO XkbKeymap
xkbKeymapNewFromCString ctx s fmt =
  withForeignPtr ctx.unwrap $ \ctxPtr ->
    _xkbKeymapNewFromString ctxPtr s (fromKeymapFormat fmt) 0
    >>= xkbThrowIfNull' (XkbOperationFailed "xkbKeymapNewFromString")
    >>= wrapXkbKeymap

-- | Get the compiled keymap as a string.
keymapAsString :: XkbKeymap -> XkbKeymapFormat -> IO String
keymapAsString km fmt =
  withForeignPtr km.unwrap $ \kmPtr ->
    bracket (_xkbKeymapGetAsString kmPtr (fromKeymapFormat fmt) >>= xkbThrowIfNull' (XkbOperationFailed "xkbKeymapGetAsString"))
      free peekCString

-- | Get the keymap as a string pointed to by a FD.
keymapAsStringFd :: XkbKeymap -> XkbKeymapFormat -> IO Fd
keymapAsStringFd kmap fmt =
  bracketOnError (memfdCreate "xkbkeymap" (mFD_CLOEXEC .|. mFD_ALLOW_SEALING)) closeFd $ \fd -> do
    _ <- fdWrite fd =<< keymapAsString kmap fmt
    return fd

withKeymapFd :: XkbKeymap -> XkbKeymapFormat -> (Fd -> IO b) -> IO b
withKeymapFd kmap fmt = bracket (keymapAsStringFd kmap fmt) closeFd

-- | Get the encoding of a modifier by name.
keymapModMask :: XkbKeymap -> String -> IO ModMask
keymapModMask km s =
  withForeignPtr km.unwrap $ \kmPtr ->
  withCString s $ \sC ->
    _xkbKeymapModGetMask kmPtr sC

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
keymapNumLayouts :: XkbKeymap -> IO Int
keymapNumLayouts km =
  withForeignPtr km.unwrap $ \kmPtr ->
    fromIntegral <$> _xkbKeymapNumLayouts kmPtr

-- | Check whether a key repeats the keymap.
keymapKeyRepeats :: XkbKeymap -> Keycode -> IO Bool
keymapKeyRepeats km kc =
  withForeignPtr km.unwrap $ \kmPtr ->
    _xkbKeymapKeyRepeats kmPtr kc >>= \case
      1 -> return True
      _ -> return False

keymapNumLeds :: XkbKeymap -> IO Int
keymapNumLeds km =
  withForeignPtr km.unwrap $ \kmPtr ->
    fromIntegral <$> _xkbKeymapNumLeds kmPtr

keymapLedName :: XkbKeymap -> LedIndex -> IO (Maybe String)
keymapLedName km idx =
  withForeignPtr km.unwrap $ \kmPtr -> do
    r <- _xkbKeymapLedGetName kmPtr idx
    if r == nullPtr then return Nothing else Just <$> peekCString r

-- * Internals

wrapXkbKeymap :: Ptr XkbKeymap -> IO XkbKeymap
wrapXkbKeymap ptr = XkbKeymap <$> newForeignPtr _xkbKeymapUnref ptr

type XkbKeymapCompileFlags = CUInt

foreign import ccall unsafe "&xkb_keymap_unref"
  _xkbKeymapUnref :: FunPtr (Ptr XkbKeymap -> IO ())

foreign import ccall unsafe "xkb_keymap_ref"
  refKeymap :: Ptr XkbKeymap -> IO (Ptr XkbKeymap)

foreign import ccall unsafe "xkb_keymap_mod_get_mask"
  _xkbKeymapModGetMask :: Ptr XkbKeymap -> CString -> IO ModMask

foreign import ccall unsafe "xkb_keymap_mod_get_name"
  _xkbKeymapModGetName :: Ptr XkbKeymap -> ModIndex -> IO CString

foreign import ccall unsafe "xkb_keymap_new_from_string"
  _xkbKeymapNewFromString :: Ptr XkbContext -> CString -> CUInt -> XkbKeymapCompileFlags -> IO (Ptr XkbKeymap)

foreign import ccall unsafe "xkb_keymap_new_from_names2"
  _xkbKeymapNewFromNames2 :: Ptr XkbContext -> Ptr XkbRuleNames -> CUInt -> XkbKeymapCompileFlags -> IO (Ptr XkbKeymap)

foreign import ccall unsafe "xkb_keymap_new_from_rmlvo"
  _xkbKeymapNewFromRmlvo :: Ptr XkbRmlvoBuilder -> CUInt -> XkbKeymapCompileFlags -> IO (Ptr XkbKeymap)

foreign import ccall unsafe "xkb_keymap_get_as_string"
  _xkbKeymapGetAsString :: Ptr XkbKeymap -> CUInt -> IO CString

foreign import ccall unsafe "xkb_keymap_key_get_name"
  _xkbKeymapKeyGetName :: Ptr XkbKeymap -> Keycode -> IO CString

foreign import ccall unsafe "xkb_keymap_layout_get_name"
  _xkbKeymapLayoutGetName :: Ptr XkbKeymap -> LayoutIndex -> IO CString

foreign import ccall unsafe "xkb_keymap_num_layouts"
  _xkbKeymapNumLayouts :: Ptr XkbKeymap -> IO CInt

foreign import ccall unsafe "xkb_keymap_key_repeats"
  _xkbKeymapKeyRepeats :: Ptr XkbKeymap -> Keycode -> IO CInt

foreign import ccall unsafe "xkb_keymap_num_leds"
  _xkbKeymapNumLeds :: Ptr XkbKeymap -> IO CInt

foreign import ccall unsafe "xkb_keymap_led_get_name"
  _xkbKeymapLedGetName :: Ptr XkbKeymap -> LedIndex -> IO CString
