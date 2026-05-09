-- |
-- See also "Text.XkbCommon.KeySyms"
module Text.XkbCommon.KeySym (
  -- * KeySym
  KeySym,
  keysymMax,
  keysymFromName,
  keysymFromNameCaseInsensitive,
  keysymName,
  keysymToUpper,
  keysymToLower,
  -- ** UTF-8/UTF-32
  keysymFromUtf32,
  keysymToUtf32,
  keysymToUtf8,
  -- ** Unsafe
  keysymFromNameUnsafe,
  keysymNameUnsafe,
  -- * Modifiers
  modNameSHIFT,
  modNameCAPS,
  modNameCTRL,
  modNameMOD1,
  modNameMOD2,
  modNameMOD3,
  modNameMOD4,
  modNameMOD5,
  -- ** Common virtual modifiers
  modNameALT,
  modNameHYPER,
  modNameLEVEL3,
  modNameLEVEL5,
  modNameMETA,
  modNameNUM,
  modNameSCROLL,
  modNameSUPER,
  ) where

import Foreign
import Foreign.C
import System.IO.Unsafe
import Control.Exception
import Data.Maybe

import Text.XkbCommon.FFI

-- | Get a keysym from its name.
keysymFromName :: String -> Maybe KeySym
keysymFromName name = unsafePerformIO $ withCString name $ \c_name ->
  return $! KeySymValid $ _xkbKeysymFromName c_name keysymNoFlags

-- | Get a keysym from its name (case-insensitive).
keysymFromNameCaseInsensitive :: String -> Maybe KeySym
keysymFromNameCaseInsensitive name = unsafePerformIO $ withCString name $ \c_name ->
  return $! KeySymValid $ _xkbKeysymFromName c_name keysymCaseInsensitive

-- | Get the name of a 'KeySym'.
keysymName :: KeySym -> Maybe String
keysymName k = unsafePerformIO $ go 64
  where
    go size = allocaBytes size $ \buf ->
      case _xkbKeysymGetName k buf (fromIntegral size) of
        -1 -> return Nothing
        len
          | len >= fromIntegral size - 1 -> go (size * 2)
          | otherwise -> Just <$> peekCStringLen (buf, fromIntegral len)

-- |  Get the Unicode/UTF-8 representation of a 'KeySym'.
keysymToUtf8 :: KeySym -> Maybe String
keysymToUtf8 k = unsafePerformIO $ go 2
  where
    go size = allocaBytes size $ \buf ->
      case _xkbKeysymToUtf8 k buf (fromIntegral size) of
        -1  -> go (size * 2) -- buffer too small
        0   -> return Nothing
        len -> Just <$> peekCStringLen (buf, min size (fromIntegral len) - 1)

-- | Throws 'KeySymNotFoundException' if the lookup fails.
keysymFromNameUnsafe :: String -> KeySym
keysymFromNameUnsafe name = fromMaybe err $ keysymFromName name where
  err = throw $ KeySymNameNotFound name

-- | Throws 'KeySymNotFoundException' if the lookup fails.
keysymNameUnsafe :: KeySym -> String
keysymNameUnsafe k = fromMaybe err $ keysymName k where
  err = throw $ KeySymNotFound k

foreign import ccall unsafe "xkb_keysym_from_name" _xkbKeysymFromName :: CString -> CUInt -> KeySym

foreign import ccall unsafe "xkb_keysym_get_name" _xkbKeysymGetName :: KeySym -> CString -> CSize -> CInt

foreign import ccall unsafe "xkb_keysym_to_utf8" _xkbKeysymToUtf8 :: KeySym -> CString -> CSize -> CInt

foreign import ccall unsafe "xkb_utf32_to_keysym" keysymFromUtf32 :: Word32 -> KeySym

foreign import ccall unsafe "xkb_keysym_to_utf32" keysymToUtf32 :: KeySym -> Word32

foreign import ccall unsafe "xkb_keysym_to_upper" keysymToUpper :: KeySym -> KeySym

foreign import ccall unsafe "xkb_keysym_to_lower" keysymToLower :: KeySym -> KeySym
