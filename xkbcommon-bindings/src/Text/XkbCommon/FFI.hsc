{-# LANGUAGE PatternSynonyms #-}

module Text.XkbCommon.FFI where

import Foreign
import Foreign.C
import Control.Exception
import GHC.Generics
import Data.Data
import Control.Monad (when)
import Data.String
import qualified Data.List as L
import Data.Default
import Data.Maybe

#include <xkbcommon/xkbcommon.h>

-- * Exceptions

xkbThrowIfNull' :: Exception e => e -> Ptr a -> IO (Ptr a)
xkbThrowIfNull' ex res = do
  when (res == nullPtr) $ throwIO ex
  return res


data XkbCommonException
  = XkbContextCreationFailed
  | XkbContextIncludePathFailed FilePath
  | XkbKeymapCreationFailed String
  | XkbKeymapFromStringFailed String
  | KeySymNotFound KeySym
  | KeySymNameNotFound String
  | XkbStateCreationFailed
  | RmlvoBuilderCompilationFailed
  | RmlvoBuilderLayoutFailed LayoutSpec
  | RmlvoBuilderOptionFailed OptionSpec
  | RmlvoBuilderFailed
  deriving (Eq, Ord, Show, Generic)

instance Exception XkbCommonException

-- * Layout/options

-- | A layout name + possibly variant.
data LayoutSpec = LayoutSpec
  { layoutLayout  :: String
  , layoutVariant :: Maybe String
  , layoutOptions :: [OptionSpec] -- ^ Options for only this layout.
  } deriving stock (Eq, Ord, Show, Read, Generic, Data)

-- |
-- @
-- "us"       == LayoutSpec "us" Nothing []
-- "us(intl)" == LayoutSpec "us" (Just "intl") []
-- @
instance IsString LayoutSpec where
  fromString s =
    case L.span (/= '(') s of
      (a, '(' : b) -> LayoutSpec a (Just $ L.init b) []
      _ -> LayoutSpec s Nothing []

data OptionSpec = OptionSpec { optionOption :: String }
  deriving stock (Eq, Ord, Show, Read, Generic, Data)

-- |
-- @
-- "foo:bar" == OptionSpec "foo:bar"
-- @
instance IsString OptionSpec where
  fromString s =
    case L.span (/= '!') s of
      (x, _) -> OptionSpec x

-- | @struct xkb_rule_names@
data XkbRuleNames = XkbRuleNames
  { rules   :: !String
  -- ^ The rules file to use.
  , model   :: !String
  -- ^ Keyboard model by which to interpret keycodes and LEDs.
  , layouts :: ![LayoutSpec]
  -- ^ Layouts in this keymap (+ optionally variants).
  , options :: Maybe [OptionSpec]
  -- ^ Layout options.
  -- If 'Nothing', the default options are used.
  -- If 'Just []', no options are used.
  }
  deriving stock (Eq, Show, Read, Generic, Data)
  deriving anyclass (Default)

withXkbRuleNames :: XkbRuleNames -> (Ptr XkbRuleNames -> IO b) -> IO b
withXkbRuleNames x f = allocaBytesAligned (#size struct xkb_rule_names) (#alignment struct xkb_rule_names) $ \p ->
    withCString x.rules $ \c_rules ->
    withCString x.model $ \c_model ->
    -- Comma-separated list of layouts (languages) to include in the keymap.
    withCString layout $ \c_layout ->
    -- Comma-separated list of variants, one per layout.
    -- Should either be empty or have the same number of values as the number of
    -- layouts.
    withCString variant $ \c_variant ->
    -- Comma-separated list of options; "ns:option!2"
    -- If NULL, a default value is used.
    -- If empty string "", no options are used.
    withOptions x.options layoutOpts $ \c_options -> do
      #{poke struct xkb_rule_names, rules} p c_rules
      #{poke struct xkb_rule_names, model} p c_model
      #{poke struct xkb_rule_names, layout} p c_layout
      #{poke struct xkb_rule_names, variant} p c_variant
      #{poke struct xkb_rule_names, options} p c_options
      f $ castPtr p
  where
    layout = L.intercalate "," $ map layoutLayout x.layouts
    variant = L.intercalate "," $ map (\l -> fromMaybe "" l.layoutVariant) x.layouts

    layoutOpts = [ o.optionOption ++ "!" ++ show i | (i, l) <- zip [(1::Int)..] x.layouts, o <- l.layoutOptions ]

    withOptions Nothing     [] = ($ nullPtr)
    withOptions Nothing     xs = withCString $ L.intercalate "," xs
    withOptions (Just opts) xs = withCString $ L.intercalate "," $ map optionOption opts ++ xs

-- * Types

-- | A number used to represent the symbols generated from a key on a keyboard.
--
-- @xkb_keysym_t@
type KeySym = #{type xkb_keysym_t}

-- | Maximum 'KeySym' value.
keysymMax :: KeySym
keysymMax = #{const XKB_KEYSYM_MAX}

keysymNoSymbol :: KeySym
keysymNoSymbol = #{const XKB_KEY_NoSymbol}

pattern KeySymValid :: KeySym -> Maybe KeySym
pattern KeySymValid ksym <- Just ksym where
  KeySymValid x = if x == keysymNoSymbol then Nothing else Just x

keysymNoFlags :: CUInt
keysymNoFlags = #{const XKB_KEYSYM_NO_FLAGS}
keysymCaseInsensitive :: CUInt
keysymCaseInsensitive = #{const XKB_KEYSYM_CASE_INSENSITIVE}

-- | A number used to represent a physical key on a keyboard.
--
-- @xkb_keycode_t@
type Keycode = #{type xkb_keycode_t}

-- | Maximum 'Keycode' value.
keycodeMax :: Keycode
keycodeMax = #{const XKB_KEYCODE_MAX}

invalidKeycode :: Keycode
invalidKeycode = #{const XKB_KEYCODE_INVALID}

-- | A mask of modifier indices.
--
-- @xkb_mod_mask_t@
type ModMask = #{type xkb_mod_mask_t}

-- | Index of a modifier.
--
-- @xkb_mod_index_t@
type ModIndex = #{type xkb_mod_index_t}

-- | Index of a keyboard layout.
--
-- @xkb_layout_index_t@
type LayoutIndex = #{type xkb_layout_index_t}

layoutInvalid :: LayoutIndex
layoutInvalid = #{const XKB_LAYOUT_INVALID}

type LayoutMask = #{type xkb_layout_mask_t}

-- | Index of a shift level.
--
-- Any key, in any layout, can have several __shift levels__.  Each
-- shift level can assign different keysyms to the key.  The shift level
-- to use is chosen according to the current keyboard state; for example,
-- if no keys are pressed, the first level may be used; if the Left Shift
-- key is pressed, the second; if Num Lock is pressed, the third; and
-- many such combinations are possible (see "ModIndex").
--
-- Level indices are consecutive.  The first level has index 0.
type LevelIndex = #{type xkb_level_index_t}

levelInvalid :: LevelIndex
levelInvalid = #{const XKB_LEVEL_INVALID}

type LedIndex = #{type xkb_led_index_t}

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

newtype XkbContext = XkbContext { unwrap :: ForeignPtr XkbContext }
  deriving newtype (Eq, Ord)
  deriving stock (Generic, Show, Data)

newtype XkbState = XkbState { unwrap :: ForeignPtr XkbState }
  deriving newtype (Eq, Ord)
  deriving stock (Generic, Show, Data)

newtype XkbKeymap = XkbKeymap { unwrap :: ForeignPtr XkbKeymap }
  deriving newtype (Eq, Ord)
  deriving stock (Generic, Show, Data)

newtype XkbRmlvoBuilder = XkbRmlvoBuilder { unwrap :: ForeignPtr XkbRmlvoBuilder }
  deriving newtype (Eq, Ord)
  deriving stock (Show, Generic, Data)

rmlvoBuilderNoFlags :: CUInt
rmlvoBuilderNoFlags = #{const XKB_RMLVO_BUILDER_NO_FLAGS}

-- | Use "def" to construct the defaults.
data XkbContextOptions = XkbContextOptions
  { defaultIncludes  :: !Bool
  -- ^ If False, the context is created without default include paths.
  --
  -- Useful to avoid e.g. permission issues when only retrieving a keymap from Wayland/X server.
  , environmentNames :: !Bool
  -- ^ Do not take RMLVO names from the environment.
  , secureGetEnv     :: !Bool
  -- ^ Disable the use of @secure_getenv@.
  , contextLogLevel  :: !(Maybe LogLevel)
  -- ^ May also be set via environment variable @XKB_LOG_LEVEL@.
  , contextLogVerbosity :: !(Maybe Int)
  -- ^ Between 0 and 10, default verbosity is 0.
  --
  -- May also be set via environment variable @XKB_LOG_VERBOSITY@.
  } deriving (Eq, Show, Read)

instance Default XkbContextOptions where
  def = XkbContextOptions True True True Nothing Nothing

optionsToFlags :: XkbContextOptions -> CUInt
optionsToFlags opts =
  #{const XKB_CONTEXT_NO_FLAGS} .|.
  f (not opts.defaultIncludes)  #{const XKB_CONTEXT_NO_DEFAULT_INCLUDES} .|.
  f (not opts.environmentNames) #{const XKB_CONTEXT_NO_ENVIRONMENT_NAMES} .|.
  f (not opts.secureGetEnv)     #{const XKB_CONTEXT_NO_SECURE_GETENV}
    where
      f True  x = x
      f False _ = 0

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

-- * XkbStateComponent

newtype XkbStateComponent = XkbStateComponent { unwrap :: CUInt }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show)

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

-- * LogLevel

data LogLevel = LevelCritical
              | LevelError -- ^ The default
              | LevelWarning
              | LevelInfo
              | LevelDebug
  deriving (Eq, Ord, Show, Read)

fromLogLevel :: LogLevel -> CUInt
fromLogLevel level =
  case level of
    LevelCritical -> #{const XKB_LOG_LEVEL_CRITICAL}
    LevelError    -> #{const XKB_LOG_LEVEL_ERROR}
    LevelWarning  -> #{const XKB_LOG_LEVEL_WARNING}
    LevelInfo     -> #{const XKB_LOG_LEVEL_INFO}
    LevelDebug    -> #{const XKB_LOG_LEVEL_DEBUG}
