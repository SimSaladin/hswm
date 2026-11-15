-- |
-- Module      : Text.XkbCommon.KeySym
-- Description : Key symbol (KeySym) utilities
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- See also "Text.XkbCommon.KeySyms".
module Text.XkbCommon.KeySym (
  KeySym,

  -- * KeySym to\/from name
  keysymFromName,
  keysymFromNameCaseSensitive,
  keysymName,

  -- ** Partial variants
  keysymFromNameUnsafe,
  keysymNameUnsafe,
  KeySymException (..),

  -- * KeySym to\/from UTF-8\/32
  keysymToUTF8,
  keysymFromUTF32,
  keysymToUTF32,

  -- * Uppercase\/lowercase
  keysymToUpper,
  keysymToLower,
  -- Modifiers

  -- ** Real modifiers names
  pattern ModShift,
  pattern ModCaps,
  pattern ModCtrl,
  pattern ModMod1,
  pattern ModMod2,
  pattern ModMod3,
  pattern ModMod4,
  pattern ModMod5,

  -- ** Virtual modifier names
  pattern ModAlt,
  pattern ModHyper,
  pattern ModLevel3,
  pattern ModLevel5,
  pattern ModMeta,
  pattern ModNum,
  pattern ModScroll,
  pattern ModSuper,
) where

import Control.Applicative
import Control.Exception
import Data.Maybe
import Foreign
import Foreign.C
import System.IO.Unsafe

import Text.XkbCommon.FFI

pattern KeySymValid :: KeySym -> Maybe KeySym
pattern KeySymValid ksym <- Just ksym
  where
    KeySymValid x = if x > keysymMax || x == keysymNoSymbol then Nothing else Just x

-- | Get a keysym by name (case-insensitive).
keysymFromName :: String -> Maybe KeySym
keysymFromName name = unsafePerformIO $ withCString name $ \c_name ->
  return $!
    KeySymValid (c_keysym_from_name c_name keysymNoFlags)
      <|> KeySymValid (c_keysym_from_name c_name keysymCaseInsensitive)

-- | Get a keysym by name (case sensitive).
keysymFromNameCaseSensitive :: String -> Maybe KeySym
keysymFromNameCaseSensitive name = unsafePerformIO $ withCString name $ \c_name ->
  return $! KeySymValid $ c_keysym_from_name c_name keysymNoFlags

-- | Get the name of a 'KeySym'.
keysymName :: KeySym -> Maybe String
keysymName k = unsafePerformIO $ go 64
  where
    go size = allocaBytes size $ \buf ->
      case c_keysymGetName k buf (fromIntegral size) of
        len
          | len <= 0 -> return Nothing
          | len + 1 > fromIntegral size -> go (size * 2)
          | otherwise -> Just <$> peekCStringLen (buf, fromIntegral len)

-- |  Get the Unicode/UTF-8 representation of a 'KeySym'.
keysymToUTF8 :: KeySym -> Maybe String
keysymToUTF8 k = unsafePerformIO $ go 5
  where
    go size = allocaBytes size $ \buf ->
      case c_keysymToUtf8 k buf (fromIntegral size) of
        -1 -> go (size * 2) -- buffer too small
        0 -> return Nothing
        len -> Just <$> peekCStringLen (buf, min size (fromIntegral len) - 1)

-- | Map a KeySym into a UTF-32 codepoint.
keysymToUTF32 :: KeySym -> Maybe Word32
keysymToUTF32 sym = case c_keysymToUtf32 sym of
  0 -> Nothing
  r -> Just r

-- | Map UTF-32 codepoint into a keysym.
keysymFromUTF32 :: Word32 -> Maybe KeySym
keysymFromUTF32 x = KeySymValid $! c_keysymFromUtf32 x

-- | Exceptions thrown by unsafe keysym functions.
data KeySymException
  = NoSuchKeySym !KeySym
  | KeySymNotFound !String
  deriving (Eq, Ord, Show, Read, Generic)

instance Exception KeySymException

-- | Like 'keysymFromName', but throws 'KeySymNotFound if the lookup fails.
keysymFromNameUnsafe :: String -> KeySym
keysymFromNameUnsafe name = fromMaybe err $! keysymFromName name
  where
    err = throw $ KeySymNotFound name

-- | Like 'keysymName', but throws "NoSuchKeySym" if the lookup fails.
keysymNameUnsafe :: KeySym -> String
keysymNameUnsafe k = fromMaybe err $! keysymName k
  where
    err = throw $ NoSuchKeySym k

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keysym_from_name"
  c_keysym_from_name :: CString -> CUInt -> KeySym

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keysym_get_name"
  c_keysymGetName :: KeySym -> CString -> CSize -> CInt

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keysym_to_utf8"
  c_keysymToUtf8 :: KeySym -> CString -> CSize -> CInt

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_utf32_to_keysym"
  c_keysymFromUtf32 :: Word32 -> KeySym

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keysym_to_utf32"
  c_keysymToUtf32 :: KeySym -> Word32

-- | KeySym to uppercase.
foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keysym_to_upper"
  keysymToUpper :: KeySym -> KeySym

-- | KeySym to lowercase.
foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keysym_to_lower"
  keysymToLower :: KeySym -> KeySym
