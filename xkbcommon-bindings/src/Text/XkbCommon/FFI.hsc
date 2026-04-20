{-# LANGUAGE DataKinds, TypeApplications, FlexibleContexts #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DerivingStrategies, DeriveAnyClass, DeriveGeneric, DeriveDataTypeable #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}


module Text.XkbCommon.FFI where

#define _GNU_SOURCE

#include <unistd.h>
#include <sys/mman.h>
#include <xkbcommon/xkbcommon.h>

import RIO
import Foreign
import Foreign.C
import System.Posix (Fd(..), closeFd, fdWrite)
import System.IO.Unsafe
import GHC.Records
import Data.Default

-- * Types

type KeySym       = CUInt
type Modifiers    = #{type uint32_t}
type ModMask      = #{type xkb_mod_index_t}
type ModIndex     = #{type xkb_mod_index_t}
type LayoutIndex  = #{type xkb_layout_index_t}
type XkbKeycode   = #{type xkb_keycode_t}

-- ** Exceptions

data XkbCommonException
  = XkbKeysymNotFound { method :: String, argument :: String }
  | XkbOperationFailed { method :: String }
  deriving (Eq, Show)

instance Exception XkbCommonException

-- * KeySym queries

xkbKeysymFromName :: XkbKeysymFlags -> String -> Maybe KeySym
xkbKeysymFromName flags name = unsafePerformIO $ withCString name $ \c_name ->
  return $! case _xkbKeysymFromName c_name flags of
    0 -> Nothing
    r -> Just r

xkbKeysymGetName :: KeySym -> Maybe String
xkbKeysymGetName k = unsafePerformIO $ allocaBytes 64 $ \buf ->
    case _xkbKeysymGetName k buf 64 of
      -1 -> return Nothing
      len -> Just <$> peekCStringLen (buf, fromIntegral len)

-- ** Unsafe (partial)

-- | Throws 'XkbKeysymNotFound' if the lookup fails.
xkbKeysymFromNameUnsafe :: XkbKeysymFlags -> String -> KeySym
xkbKeysymFromNameUnsafe flags name = fromMaybe err $ xkbKeysymFromName flags name where
  err = impureThrow $ XkbKeysymNotFound "xkbKeysymFromNameUnsafe" name

-- | Throws 'XkbKeysymNotFound' if the lookup fails.
xkbKeysymGetNameUnsafe :: KeySym -> String
xkbKeysymGetNameUnsafe k = fromMaybe err $ xkbKeysymGetName k where
  err = impureThrow $ XkbKeysymNotFound "xkbKeysymGetNameUnsafe" (show k)

-- ** XkbKeysymFlags

#{enum XkbKeysymFlags, XkbKeysymFlags, XKB_KEYSYM_NO_FLAGS, XKB_KEYSYM_CASE_INSENSITIVE}

newtype XkbKeysymFlags = XkbKeysymFlags { unwrap :: CUInt }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show)

instance Semigroup XkbKeysymFlags where
  XkbKeysymFlags a <> XkbKeysymFlags b = XkbKeysymFlags (a .|. b)

instance Monoid XkbKeysymFlags where
  mempty = xkbKeysymNoFlags

-- ** Internals

foreign import ccall unsafe "xkb_keysym_from_name"
  _xkbKeysymFromName :: CString -> XkbKeysymFlags -> KeySym

foreign import ccall unsafe "xkb_keysym_get_name"
  _xkbKeysymGetName :: KeySym -> CString -> CSize -> CInt

-- * XkbContext

newtype XkbContext = XkbContext { unwrap :: Ptr XkbContext }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

withXkbContext :: XkbContextFlags -> (XkbContext -> IO a) -> IO a
withXkbContext a1 f = bracket (xkbContextNew a1) xkbContextUnref f

xkbContextNew :: XkbContextFlags -> IO XkbContext
xkbContextNew = _xkbContextNew >=> xkbThrowIfNull (XkbOperationFailed "xkbContextNew")

foreign import ccall "xkb_context_new"
  _xkbContextNew :: XkbContextFlags -> IO XkbContext

foreign import ccall unsafe "xkb_context_unref"
  xkbContextUnref :: XkbContext -> IO ()

-- ** XkbContextFlags

#{enum XkbContextFlags, XkbContextFlags,
    XKB_CONTEXT_NO_FLAGS,
    XKB_CONTEXT_NO_DEFAULT_INCLUDES,
    XKB_CONTEXT_NO_ENVIRONMENT_NAMES,
    XKB_CONTEXT_NO_SECURE_GETENV}

newtype XkbContextFlags = XkbContextFlags { unwrap :: CUInt }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show)

instance Semigroup XkbContextFlags where
  XkbContextFlags a <> XkbContextFlags b = XkbContextFlags (a .|. b)

instance Monoid XkbContextFlags where
  mempty = xkbContextNoFlags

-- * XkbRmlvoBuilder

newtype XkbRmlvoBuilder = XkbRmlvoBuilder { unwrap :: Ptr XkbRmlvoBuilder }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

xkbRmlvoBuilderNew :: XkbContext
                   -> String -- ^ layout
                   -> String -- ^ variant
                   -> XkbRmlvoBuilderFlags
                   -> IO XkbRmlvoBuilder
xkbRmlvoBuilderNew ctx ls vs flag =
  withCString ls $ \layoutC ->
  withCString vs $ \variantC ->
    _xkbRmlvoBuilderNew ctx layoutC variantC flag
      >>= xkbThrowIfNull (XkbOperationFailed "xkbRmlvoBuilderNew")

-- | Append a layout to the builder.
xkbRmlvoBuilderAppendLayout :: XkbRmlvoBuilder
                            -> String -- ^ Layout
                            -> String -- ^ Variant
                            -> [String] -- ^ Layout options
                            -> IO Bool
xkbRmlvoBuilderAppendLayout rmlvo la va opts =
  withCString la $ \laC ->
  withCString va $ \vaC ->
  withMany withCString opts $ \optsS ->
    withArray optsS $ \optsArr ->
      _xkbRmlvoBuilderAppendLayout rmlvo laC vaC optsArr (length opts)

xkbRmlvoBuilderAppendOption :: XkbRmlvoBuilder -> String -> IO Bool
xkbRmlvoBuilderAppendOption rmlvo opt =
  withCString opt $ \optS ->
    _xkbRmlvoBuilderAppendOption rmlvo optS

foreign import ccall "xkb_rmlvo_builder_new"
  _xkbRmlvoBuilderNew :: XkbContext
                      -> CString -- ^ layout
                      -> CString -- ^ variant
                      -> XkbRmlvoBuilderFlags
                      -> IO XkbRmlvoBuilder

foreign import ccall unsafe "xkb_rmlvo_builder_unref"
  xkbRmlvoBuilderUnref :: XkbRmlvoBuilder -> IO ()

foreign import ccall "xkb_rmlvo_builder_append_layout"
  _xkbRmlvoBuilderAppendLayout :: XkbRmlvoBuilder -> CString -> CString -> Ptr CString -> Int -> IO Bool

foreign import ccall "xkb_rmlvo_builder_append_option"
  _xkbRmlvoBuilderAppendOption :: XkbRmlvoBuilder -> CString -> IO Bool

-- * XkbRmlvoBuilderFlags

newtype XkbRmlvoBuilderFlags = XkbRmlvoBuilderFlags { unwrap :: CUInt }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show)

xkbRmlvoBuilderNoFlags :: XkbRmlvoBuilderFlags
xkbRmlvoBuilderNoFlags = XkbRmlvoBuilderFlags #{const XKB_RMLVO_BUILDER_NO_FLAGS}

instance Semigroup XkbRmlvoBuilderFlags where
  XkbRmlvoBuilderFlags a <> XkbRmlvoBuilderFlags b = XkbRmlvoBuilderFlags (a .|. b)

instance Monoid XkbRmlvoBuilderFlags where
  mempty = xkbRmlvoBuilderNoFlags

-- * XkbKeymap

newtype XkbKeymap = XkbKeymap { unwrap :: Ptr XkbKeymap }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

xkbKeymapNewFromString :: XkbContext -> CString -> XkbKeymapFormat -> XkbKeymapCompileFlags -> IO XkbKeymap
xkbKeymapNewFromString ctx s fmt flags =
  _xkbKeymapNewFromString ctx s fmt flags >>= xkbThrowIfNull (XkbOperationFailed "xkbKeymapNewFromString")

-- | Returns A keymap compiled according to the [RMLVO] names, or `NULL` if
-- the compilation failed.
xkbKeymapNewFromNames2 :: XkbContext -> XkbRuleNames -> XkbKeymapFormat -> XkbKeymapCompileFlags -> IO XkbKeymap
xkbKeymapNewFromNames2 ctx rns fmt flags =
  withXkbRuleNames rns $ \p ->
    _xkbKeymapNewFromNames2 ctx p fmt flags >>= xkbThrowIfNull (XkbOperationFailed "xkbKeymapNewFromNames2")

newXkbKeymapFromNames :: XkbRuleNames -> IO XkbKeymap
newXkbKeymapFromNames opts = withXkbContext mempty $ \ctx ->
  xkbKeymapNewFromNames2 ctx opts xkbKeymapFormatTextV1 xkbKeymapCompileNoFlags

xkbKeymapNewFromRmlvo :: XkbRmlvoBuilder -> XkbKeymapFormat -> XkbKeymapCompileFlags -> IO XkbKeymap
xkbKeymapNewFromRmlvo builder fmt flags =
  _xkbKeymapNewFromRmlvo builder fmt flags >>= xkbThrowIfNull (XkbOperationFailed "xkbKeymapNewFromRmlvo")

foreign import ccall unsafe "xkb_keymap_unref"
  xkbKeymapUnref :: XkbKeymap -> IO ()

-- ** Functions

-- | Get the compiled keymap as a string.
xkbKeymapGetAsString :: XkbKeymap -> XkbKeymapFormat -> IO String
xkbKeymapGetAsString km fmt = do
  r <- _xkbKeymapGetAsString km fmt >>= xkbThrowIfNull' (XkbOperationFailed "xkbKeymapGetAsString")
  peekCString r

-- | Get the encoding of a modifier by name.
xkbKeymapModGetMask :: XkbKeymap -> String -> IO ModMask
xkbKeymapModGetMask km s = withCString s $ \sC ->
  _xkbKeymapModGetMask km sC

-- | Get the name of a modifier by index.
xkbKeymapModGetName :: XkbKeymap -> ModIndex -> IO String
xkbKeymapModGetName km a = do
  r <- _xkbKeymapModGetName km a
  if r == nullPtr then return "" else peekCString r

-- | Find the name of key of a keycode.
xkbKeymapKeyGetName :: XkbKeymap -> XkbKeycode -> IO (Maybe String)
xkbKeymapKeyGetName km kcode = do
  r <- _xkbKeymapKeyGetName km kcode
  if r == nullPtr then return Nothing else Just <$> peekCString r

foreign import ccall "xkb_keymap_num_layouts"
  xkbKeymapNumLayouts :: XkbKeymap -> IO Int

xkbKeymapLayoutGetName :: XkbKeymap -> Int -> IO (Maybe String)
xkbKeymapLayoutGetName km idx = do
  r <- _xkbKeymapLayoutGetName km idx
  if r == nullPtr then return Nothing else Just <$> peekCString r

foreign import ccall "xkb_keymap_layout_get_name"
  _xkbKeymapLayoutGetName :: XkbKeymap -> Int -> IO CString

-- ** Serialize/send via Fd

withXkbKeymapFd :: XkbKeymap -> (Fd -> IO b) -> IO b
withXkbKeymapFd kmap f = bracket (createXkbKeymapFd kmap) closeFd f

createXkbKeymapFd :: XkbKeymap -> IO Fd
createXkbKeymapFd kmap = withCString "hswm-xkb-keymap" $ \c_name -> do
  str <- xkbKeymapGetAsString kmap xkbKeymapFormatTextV1
  fd <- throwErrnoIfMinus1 "createXkbKeymapFd: memfd_create failed" $ _memfd_create c_name (#{const MFD_CLOEXEC} .|. #{const MFD_ALLOW_SEALING})
  _ <- fdWrite fd str
  return fd

createKeymapFromFd :: XkbContext -> Fd -> CSize -> Bool -> IO XkbKeymap
createKeymapFromFd ctx fd size private = do
  keymap <- bracket
     (throwErrnoIf (== wordPtrToPtr #{const MAP_FAILED}) "createKeymapFromFd: mmap failed" $ _mmap nullPtr (fromIntegral size) #{const PROT_READ} (if private then #{const MAP_PRIVATE} else #{const MAP_SHARED}) (fromIntegral fd) 0)
     (\ptr -> throwErrnoIfMinus1_ "createKeymapFromFd: munmap failed" $ _munmap ptr (fromIntegral size))
     (\ptr -> xkbKeymapNewFromString ctx (castPtr ptr) xkbKeymapFormatTextV1 xkbKeymapCompileNoFlags)
  closeFd fd
  return keymap

-- ** Internals

foreign import ccall "xkb_keymap_mod_get_mask"
  _xkbKeymapModGetMask :: XkbKeymap -> CString -> IO ModMask

foreign import ccall "xkb_keymap_mod_get_name"
  _xkbKeymapModGetName :: XkbKeymap -> ModIndex -> IO CString

foreign import ccall "xkb_keymap_new_from_string"
  _xkbKeymapNewFromString :: XkbContext -> CString -> XkbKeymapFormat -> XkbKeymapCompileFlags -> IO XkbKeymap

foreign import ccall "xkb_keymap_new_from_names2"
  _xkbKeymapNewFromNames2 :: XkbContext -> Ptr XkbRuleNames -> XkbKeymapFormat -> XkbKeymapCompileFlags -> IO XkbKeymap

foreign import ccall "xkb_keymap_new_from_rmlvo"
  _xkbKeymapNewFromRmlvo :: XkbRmlvoBuilder -> XkbKeymapFormat -> XkbKeymapCompileFlags -> IO XkbKeymap

foreign import ccall "xkb_keymap_get_as_string"
  _xkbKeymapGetAsString :: XkbKeymap -> XkbKeymapFormat -> IO CString

foreign import ccall "xkb_keymap_key_get_name"
  _xkbKeymapKeyGetName :: XkbKeymap -> XkbKeycode -> IO CString

-- ** XkbKeymapFormat

#{enum XkbKeymapFormat, XkbKeymapFormat, XKB_KEYMAP_FORMAT_TEXT_V1, XKB_KEYMAP_FORMAT_TEXT_V2}

newtype XkbKeymapFormat = XkbKeymapFormat { unwrap :: CUInt }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show)

-- ** XkbKeymapCompileFlags

#{enum XkbKeymapCompileFlags, XkbKeymapCompileFlags, XKB_KEYMAP_COMPILE_NO_FLAGS}

newtype XkbKeymapCompileFlags = XkbKeymapCompileFlags { unwrap :: CUInt }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show)

instance Semigroup XkbKeymapCompileFlags where
  XkbKeymapCompileFlags a <> XkbKeymapCompileFlags b = XkbKeymapCompileFlags (a .|. b)

instance Monoid XkbKeymapCompileFlags where
  mempty = xkbKeymapCompileNoFlags

-- * XKB state

newtype XkbState = XkbState { unwrap :: Ptr XkbState }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

xkbStateNew :: XkbKeymap -> IO XkbState
xkbStateNew km = _xkbStateNew km >>= xkbThrowIfNull (XkbOperationFailed "xkbStateNew")

foreign import ccall unsafe "xkb_state_unref"
  xkbStateUnref :: XkbState -> IO ()

-- | Note: the lifetime of the keymap is tied to the state by default!
foreign import ccall "xkb_state_get_keymap"
  xkbStateGetKeymap :: XkbState -> IO XkbKeymap

foreign import ccall "xkb_state_update_mask"
  xkbStateUpdateMask :: XkbState
                     -> ModMask -> ModMask -> ModMask
                     -> LayoutIndex -> LayoutIndex -> LayoutIndex
                     -> IO XkbStateComponent -- maybetoenum

foreign import ccall "xkb_state_key_get_one_sym"
  xkbStateKeyGetOneSym :: XkbState -> XkbKeycode -> IO KeySym

-- ** Internals

foreign import ccall "xkb_state_new"
  _xkbStateNew :: XkbKeymap -> IO XkbState

-- ** XkbStateComponent

#{enum XkbStateComponent, XkbStateComponent,
  XKB_STATE_MODS_DEPRESSED,
  XKB_STATE_MODS_LATCHED,
  XKB_STATE_MODS_LOCKED,
  XKB_STATE_MODS_EFFECTIVE,
  XKB_STATE_LAYOUT_DEPRESSED,
  XKB_STATE_LAYOUT_LATCHED,
  XKB_STATE_LAYOUT_LOCKED,
  XKB_STATE_LAYOUT_EFFECTIVE,
  XKB_STATE_LEDS }

newtype XkbStateComponent = XkbStateComponent { unwrap :: CUInt }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show)

-- * XkbRuleNames

-- | @ struct xkb_rule_names @
data XkbRuleNames = XkbRuleNames
  -- | The rules file to use.
  { rules :: !String
  -- | Keyboard model by which to interpret keycodes and LEDs.
  , model :: !String
  -- | Comma-separated list of layouts (languages) to include in the keymap.
  , layout :: !String
  -- | Comma-separated list of variants, one per layout.
  --
  -- Should either be empty or have the same number of values as the number of
  -- layouts.
  , variant :: !String
  -- | Comma-separated list of options (non-layout related preferences).
  , options :: !String
  }
  deriving stock (Eq, Show, Read, Generic, Data)
  deriving anyclass (Default)

withXkbRuleNames :: XkbRuleNames -> (Ptr XkbRuleNames -> IO b) -> IO b
withXkbRuleNames x m = allocaBytesAligned (#size struct xkb_rule_names) (#alignment struct xkb_rule_names) $ \p ->
    withCString x.rules $ \c_rules ->
    withCString x.model $ \c_model ->
    withCString x.layout $ \c_layout ->
    withCString x.variant $ \c_variant ->
    withCString x.options $ \c_options -> do
      #{poke struct xkb_rule_names, rules} p c_rules
      #{poke struct xkb_rule_names, model} p c_model
      #{poke struct xkb_rule_names, layout} p c_layout
      #{poke struct xkb_rule_names, variant} p c_variant
      #{poke struct xkb_rule_names, options} p c_options
      m $ castPtr p

-- * Internals

xkbThrowIfNull :: HasField "unwrap" a (Ptr b) => XkbCommonException -> a -> IO a
xkbThrowIfNull ex res = do
  when (getField @"unwrap" res == nullPtr) $ throwM ex
  return res

xkbThrowIfNull' :: XkbCommonException -> Ptr a -> IO (Ptr a)
xkbThrowIfNull' ex res = do
  when (res == nullPtr) $ throwM ex
  return res

foreign import ccall unsafe "mmap"
  _mmap :: Ptr Void -> CSize -> CUInt {- prot -} -> CUInt {- flags -} -> Fd {- fildes -} -> CSize {- offset -} -> IO (Ptr Void)

foreign import ccall unsafe "munmap"
  _munmap :: Ptr Void -> CSize -> IO CInt

foreign import ccall "memfd_create"
  _memfd_create :: CString -> CUInt -> IO Fd

-- * Real and virtual modifier names

_XKB_MOD_NAME_SHIFT, _XKB_MOD_NAME_CAPS, _XKB_MOD_NAME_CTRL, _XKB_MOD_NAME_MOD1, _XKB_MOD_NAME_MOD2, _XKB_MOD_NAME_MOD3, _XKB_MOD_NAME_MOD4, _XKB_MOD_NAME_MOD5 :: String
_XKB_MOD_NAME_SHIFT = #{const_str XKB_MOD_NAME_SHIFT} -- "Shift"
_XKB_MOD_NAME_CAPS  = #{const_str XKB_MOD_NAME_CAPS}  -- "Lock"
_XKB_MOD_NAME_CTRL  = #{const_str XKB_MOD_NAME_CTRL}  -- "Control"
_XKB_MOD_NAME_MOD1  = #{const_str XKB_MOD_NAME_MOD1}  -- "Mod1"
_XKB_MOD_NAME_MOD2  = #{const_str XKB_MOD_NAME_MOD2}  -- "Mod2"
_XKB_MOD_NAME_MOD3  = #{const_str XKB_MOD_NAME_MOD3}  -- "Mod3"
_XKB_MOD_NAME_MOD4  = #{const_str XKB_MOD_NAME_MOD4}  -- "Mod4"
_XKB_MOD_NAME_MOD5  = #{const_str XKB_MOD_NAME_MOD5}  -- "Mod5"

_XKB_VMOD_NAME_ALT, _XKB_VMOD_NAME_HYPER, _XKB_VMOD_NAME_LEVEL3, _XKB_VMOD_NAME_LEVEL5, _XKB_VMOD_NAME_META, _XKB_VMOD_NAME_NUM, _XKB_VMOD_NAME_SCROLL, _XKB_VMOD_NAME_SUPER :: String
_XKB_VMOD_NAME_ALT     = #{const_str XKB_VMOD_NAME_ALT}     -- "Alt"
_XKB_VMOD_NAME_HYPER   = #{const_str XKB_VMOD_NAME_HYPER}   -- "Hyper"
_XKB_VMOD_NAME_LEVEL3  = #{const_str XKB_VMOD_NAME_LEVEL3}  -- "LevelThree"
_XKB_VMOD_NAME_LEVEL5  = #{const_str XKB_VMOD_NAME_LEVEL5}  -- "LevelFive"
_XKB_VMOD_NAME_META    = #{const_str XKB_VMOD_NAME_META}    -- "Meta"
_XKB_VMOD_NAME_NUM     = #{const_str XKB_VMOD_NAME_NUM}     -- "NumLock"
_XKB_VMOD_NAME_SCROLL  = #{const_str XKB_VMOD_NAME_SCROLL}  -- "ScrollLock"
_XKB_VMOD_NAME_SUPER   = #{const_str XKB_VMOD_NAME_SUPER}   -- "Super"
