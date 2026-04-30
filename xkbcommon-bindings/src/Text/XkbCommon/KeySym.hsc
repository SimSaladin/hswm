module Text.XkbCommon.KeySym (
  KeySym,
  KeySymNotFoundException(..),
  xkbKeysymFromName,
  xkbKeysymFromNameCaseInsensitive,
  xkbKeysymName,
  xkbKeysymToUtf8,
  keysymToUpper,
  keysymToLower,
  keysymFromUtf32,
  keysymToUtf32,
  -- * unsafe
  xkbKeysymFromNameUnsafe,
  xkbKeysymNameUnsafe,
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

import Text.XkbCommon.Types

#include <xkbcommon/xkbcommon.h>

data KeySymNotFoundException = KeySymNotFoundException { method :: String, argument :: String }
  deriving (Eq, Show)

instance Exception KeySymNotFoundException

-- | Get a keysym from its name.
xkbKeysymFromName :: String -> Maybe KeySym
xkbKeysymFromName name = unsafePerformIO $ withCString name $ \c_name ->
  return $! case _xkbKeysymFromName c_name #{const XKB_KEYSYM_NO_FLAGS} of
    #{const XKB_KEY_NoSymbol} -> Nothing
    r -> Just r

-- | Get a keysym from its name (case-insensitive).
xkbKeysymFromNameCaseInsensitive :: String -> Maybe KeySym
xkbKeysymFromNameCaseInsensitive name = unsafePerformIO $ withCString name $ \c_name ->
  return $! case _xkbKeysymFromName c_name #{const XKB_KEYSYM_CASE_INSENSITIVE} of
    #{const XKB_KEY_NoSymbol} -> Nothing
    r -> Just r

-- | Get the name of a 'KeySym'.
xkbKeysymName :: KeySym -> Maybe String
xkbKeysymName k = unsafePerformIO $ go 64
  where
    go size = allocaBytes size $ \buf ->
      case _xkbKeysymGetName k buf (fromIntegral size) of
        -1 -> return Nothing
        len
          | len >= fromIntegral size - 1 -> go (size * 2)
          | otherwise -> Just <$> peekCStringLen (buf, fromIntegral len)

-- |  Get the Unicode/UTF-8 representation of a 'KeySym'.
xkbKeysymToUtf8 :: KeySym -> Maybe String
xkbKeysymToUtf8 k = unsafePerformIO $ go 5
  where
    go size = allocaBytes size $ \buf ->
      case _xkbKeysymToUtf8 k buf (fromIntegral size) of
        -1  -> go (size * 2) -- buffer too small
        0   -> return Nothing
        len -> Just <$> peekCStringLen (buf, (min size $ fromIntegral len) - 1)

-- | Throws 'KeySymNotFoundException' if the lookup fails.
xkbKeysymFromNameUnsafe :: String -> KeySym
xkbKeysymFromNameUnsafe name = fromMaybe err $ xkbKeysymFromName name where
  err = throw $ KeySymNotFoundException "xkbKeysymFromNameUnsafe" name

-- | Throws 'KeySymNotFoundException' if the lookup fails.
xkbKeysymNameUnsafe :: KeySym -> String
xkbKeysymNameUnsafe k = fromMaybe err $ xkbKeysymName k where
  err = throw $ KeySymNotFoundException "xkbKeysymNameUnsafe" (show k)

foreign import ccall unsafe "xkb_keysym_from_name"
  _xkbKeysymFromName :: CString -> CUInt -> KeySym

foreign import ccall unsafe "xkb_keysym_get_name"
  _xkbKeysymGetName :: KeySym -> CString -> CSize -> CInt

foreign import ccall unsafe "xkb_keysym_to_utf8"
  _xkbKeysymToUtf8 :: KeySym -> CString -> CSize -> CInt

foreign import ccall unsafe "xkb_utf32_to_keysym"
  keysymFromUtf32 :: Word32 -> KeySym

foreign import ccall unsafe "xkb_keysym_to_utf32"
  keysymToUtf32 :: KeySym -> Word32

foreign import ccall unsafe "xkb_keysym_to_upper"
  keysymToUpper :: KeySym -> KeySym

foreign import ccall unsafe "xkb_keysym_to_lower"
  keysymToLower :: KeySym -> KeySym

-- * Real and virtual modifier names

modNameSHIFT, modNameCAPS, modNameCTRL, modNameMOD1, modNameMOD2, modNameMOD3, modNameMOD4, modNameMOD5 :: String
modNameSHIFT = #{const_str XKB_MOD_NAME_SHIFT} -- "Shift"
modNameCAPS  = #{const_str XKB_MOD_NAME_CAPS}  -- "Lock"
modNameCTRL  = #{const_str XKB_MOD_NAME_CTRL}  -- "Control"
modNameMOD1  = #{const_str XKB_MOD_NAME_MOD1}  -- "Mod1"
modNameMOD2  = #{const_str XKB_MOD_NAME_MOD2}  -- "Mod2"
modNameMOD3  = #{const_str XKB_MOD_NAME_MOD3}  -- "Mod3"
modNameMOD4  = #{const_str XKB_MOD_NAME_MOD4}  -- "Mod4"
modNameMOD5  = #{const_str XKB_MOD_NAME_MOD5}  -- "Mod5"

modNameALT, modNameHYPER, modNameLEVEL3, modNameLEVEL5, modNameMETA, modNameNUM, modNameSCROLL, modNameSUPER :: String
modNameALT     = #{const_str XKB_VMOD_NAME_ALT}     -- "Alt"
modNameHYPER   = #{const_str XKB_VMOD_NAME_HYPER}   -- "Hyper"
modNameLEVEL3  = #{const_str XKB_VMOD_NAME_LEVEL3}  -- "LevelThree"
modNameLEVEL5  = #{const_str XKB_VMOD_NAME_LEVEL5}  -- "LevelFive"
modNameMETA    = #{const_str XKB_VMOD_NAME_META}    -- "Meta"
modNameNUM     = #{const_str XKB_VMOD_NAME_NUM}     -- "NumLock"
modNameSCROLL  = #{const_str XKB_VMOD_NAME_SCROLL}  -- "ScrollLock"
modNameSUPER   = #{const_str XKB_VMOD_NAME_SUPER}   -- "Super"
