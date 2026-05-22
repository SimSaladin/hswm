-- |
-- Description : Key symbol (KeySym) utilities
--
-- See also "Text.XkbCommon.KeySyms".
module Text.XkbCommon.KeySym
  -- * KeySym
  ( KeySym
  , keysymMax
  , keysymName

  -- * KeySym from name
  , keysymFromName
  , keysymFromNameCaseInsensitive
  -- ** Unsafe
  , keysymFromNameUnsafe
  , keysymNameUnsafe
  , KeySymException(..)

  -- * KeySym to upper/lower
  , keysymToUpper
  , keysymToLower

  -- * KeySym from/to UTF-32
  , keysymFromUtf32
  , keysymToUtf32

  -- * KeySym to UTF-8
  , keysymToUtf8

  -- * Real modifiers names
  , pattern ModNameShift
  , pattern ModNameCaps
  , pattern ModNameCtrl
  , pattern ModNameMod1
  , pattern ModNameMod2
  , pattern ModNameMod3
  , pattern ModNameMod4
  , pattern ModNameMod5

  -- * Virtual modifier names
  , pattern ModNameAlt
  , pattern ModNameHyper
  , pattern ModNameLevel3
  , pattern ModNameLevel5
  , pattern ModNameMeta
  , pattern ModNameNum
  , pattern ModNameScroll
  , pattern ModNameSuper
  ) where

import Foreign
import Foreign.C
import System.IO.Unsafe
import Control.Exception
import Data.Maybe

import Text.XkbCommon.FFI

pattern KeySymValid :: KeySym -> Maybe KeySym
pattern KeySymValid ksym <- Just ksym where
  KeySymValid x = if x == keysymNoSymbol then Nothing else Just x

-- | Get a keysym from its name.
keysymFromName :: String -> Maybe KeySym
keysymFromName name = unsafePerformIO $ withCString name $ \c_name ->
  return $! KeySymValid $ c_keysymFromName c_name keysymNoFlags

-- | Get a keysym from its name (case-insensitive).
keysymFromNameCaseInsensitive :: String -> Maybe KeySym
keysymFromNameCaseInsensitive name = unsafePerformIO $ withCString name $ \c_name ->
  return $! KeySymValid $ c_keysymFromName c_name keysymCaseInsensitive

-- | Get the name of a 'KeySym'.
keysymName :: KeySym -> Maybe String
keysymName k = unsafePerformIO $ go 64
  where
    go size = allocaBytes size $ \buf ->
      case c_keysymGetName k buf (fromIntegral size) of
        -1 -> return Nothing
        len
          | len >= fromIntegral size - 1 -> go (size * 2)
          | otherwise -> Just <$> peekCStringLen (buf, fromIntegral len)

-- |  Get the Unicode/UTF-8 representation of a 'KeySym'.
keysymToUtf8 :: KeySym -> Maybe String
keysymToUtf8 k = unsafePerformIO $ go 5
  where
    go size = allocaBytes size $ \buf ->
      case c_keysymToUtf8 k buf (fromIntegral size) of
        -1  -> go (size * 2) -- buffer too small
        0   -> return Nothing
        len -> Just <$> peekCStringLen (buf, min size (fromIntegral len) - 1)

-- | Map a KeySym into a UTF-32 codepoint.
keysymToUtf32 :: KeySym -> Maybe Word32
keysymToUtf32 sym = case c_keysymToUtf32 sym of
                      0 -> Nothing
                      r -> Just r

-- | Map UTF-32 codepoint into a keysym.
keysymFromUtf32 :: Word32 -> Maybe KeySym
keysymFromUtf32 x = KeySymValid $! c_keysymFromUtf32 x

-- | Exceptions thrown by unsafe keysym functions.
data KeySymException
  = NoSuchKeySym { kseKeysym :: !KeySym }
  | KeySymNotFound { kseName :: !String }
  deriving (Eq, Ord, Show, Read, Generic)

instance Exception KeySymException

-- | Like 'keysymFromName', but throws 'KeySymNotFound if the lookup fails.
keysymFromNameUnsafe :: String -> KeySym
keysymFromNameUnsafe name = fromMaybe err $! keysymFromName name where
  err = throw $ KeySymNotFound name

-- | Like 'keysymName', but throws "NoSuchKeySym" if the lookup fails.
keysymNameUnsafe :: KeySym -> String
keysymNameUnsafe k = fromMaybe err $! keysymName k where
  err = throw $ NoSuchKeySym k

foreign import ccall unsafe "xkb_keysym_from_name" c_keysymFromName :: CString -> CUInt -> KeySym

foreign import ccall unsafe "xkb_keysym_get_name" c_keysymGetName :: KeySym -> CString -> CSize -> CInt

foreign import ccall unsafe "xkb_keysym_to_utf8" c_keysymToUtf8 :: KeySym -> CString -> CSize -> CInt

foreign import ccall unsafe "xkb_utf32_to_keysym" c_keysymFromUtf32 :: Word32 -> KeySym

foreign import ccall unsafe "xkb_keysym_to_utf32" c_keysymToUtf32 :: KeySym -> Word32

-- | KeySym to uppercase.
foreign import ccall unsafe "xkb_keysym_to_upper" keysymToUpper :: KeySym -> KeySym

-- | KeySym to lowercase.
foreign import ccall unsafe "xkb_keysym_to_lower" keysymToLower :: KeySym -> KeySym
