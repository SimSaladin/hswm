{-# LANGUAGE NoFieldSelectors #-}

module Text.XkbCommon.FFI
  ( module Text.XkbCommon.FFI
  , Generic(Rep)
  , Exception
  ) where

import           Control.Exception
import           Control.Monad (when)
import           Data.Data
import           Data.Default
import qualified Data.List as L
import           Data.Maybe
import           Data.String
import           Foreign
import           Foreign.C
import           GHC.Generics

#include <xkbcommon/xkbcommon.h>

xkbThrowIfNull' :: Exception e => e -> Ptr a -> IO (Ptr a)
xkbThrowIfNull' ex res = do
  when (res == nullPtr) $ throwIO ex
  return res

-- | Context log level.
data LogLevel
  = LevelCritical
  | LevelError -- ^ The default
  | LevelWarning
  | LevelInfo
  | LevelDebug
  deriving (Eq, Ord, Show, Read, Generic, Data)

-- | Layout option.
data OptionSpec = OptionSpec { optionOption :: String }
  deriving (Eq, Ord, Show, Read, Generic, Data)

-- | A layout name, and possibly variant.
data LayoutSpec = LayoutSpec
  { layoutLayout  :: String
  , layoutVariant :: Maybe String
  , layoutOptions :: [OptionSpec] -- ^ Options for only this layout.
  } deriving (Eq, Ord, Show, Read, Generic, Data)

fromLogLevel :: LogLevel -> CUInt
fromLogLevel level =
  case level of
    LevelCritical -> #{const XKB_LOG_LEVEL_CRITICAL}
    LevelError    -> #{const XKB_LOG_LEVEL_ERROR}
    LevelWarning  -> #{const XKB_LOG_LEVEL_WARNING}
    LevelInfo     -> #{const XKB_LOG_LEVEL_INFO}
    LevelDebug    -> #{const XKB_LOG_LEVEL_DEBUG}

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
  deriving stock (Eq, Ord, Show, Read, Generic, Data)
  deriving anyclass (Default)

withXkbRuleNames :: XkbRuleNames -> (Ptr XkbRuleNames -> IO a) -> IO a
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
    layout = L.intercalate "," $ map (.layoutLayout) x.layouts
    variant = L.intercalate "," $ map (\l -> fromMaybe "" l.layoutVariant) x.layouts

    layoutOpts = [ o.optionOption ++ "!" ++ show i | (i, l) <- zip [(1::Int)..] x.layouts, o <- l.layoutOptions ]

    withOptions Nothing     [] = ($ nullPtr)
    withOptions Nothing     xs = withCString $ L.intercalate "," xs
    withOptions (Just opts) xs = withCString $ L.intercalate "," $ map (.optionOption) opts ++ xs

-- * Types

-- | A number used to represent the symbols generated from a key on a keyboard.
--
-- @xkb_keysym_t@
type KeySym = #{type xkb_keysym_t}

-- | A number used to represent a physical key on a keyboard.
--
-- @xkb_keycode_t@
type Keycode = #{type xkb_keycode_t}

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

-- | A mask of layout indices.
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

-- | Index of a LED (aka indicator).
type LedIndex = #{type xkb_led_index_t}

-- | Invalid keycode
pattern KeycodeInvalid :: Keycode
pattern KeycodeInvalid = #{const XKB_KEYCODE_INVALID}

-- | Invalid layout index
pattern LayoutIndexInvalid :: LayoutIndex
pattern LayoutIndexInvalid = #{const XKB_LAYOUT_INVALID}

-- | Invalid level index
pattern LevelIndexInvalid :: LevelIndex
pattern LevelIndexInvalid = #{const XKB_LEVEL_INVALID}

-- | Invalid modifier index
pattern ModIndexInvalid :: ModIndex
pattern ModIndexInvalid = #{const XKB_MOD_INVALID}

-- | Invalid LED index
pattern LedIndexInvalid :: LedIndex
pattern LedIndexInvalid = #{const XKB_LED_INVALID}

-- | Maximum 'KeySym' value.
keysymMax :: KeySym
keysymMax = #{const XKB_KEYSYM_MAX}

-- | Maximum 'Keycode' value.
keycodeMax :: Keycode
keycodeMax = #{const XKB_KEYCODE_MAX}

keysymNoSymbol :: KeySym
keysymNoSymbol = #{const XKB_KEY_NoSymbol}

keysymNoFlags :: CUInt
keysymNoFlags = #{const XKB_KEYSYM_NO_FLAGS}

keysymCaseInsensitive :: CUInt
keysymCaseInsensitive = #{const XKB_KEYSYM_CASE_INSENSITIVE}

-- | The possible keymap formats.
data XkbKeymapFormat
  = KeymapFormatTextV1
  -- ^ The classic XKB text format, as generated by `xkbcomp -xkb`.
  | KeymapFormatTextV2
  -- ^ Xkbcommon extensions of the classic XKB text format, **incompatible with X11**.
  deriving stock (Eq, Ord, Show, Read, Generic)

fromKeymapFormat :: XkbKeymapFormat -> CUInt
fromKeymapFormat KeymapFormatTextV1 = #{const XKB_KEYMAP_FORMAT_TEXT_V1}
fromKeymapFormat KeymapFormatTextV2 = #{const XKB_KEYMAP_FORMAT_TEXT_V2}

-- | Opaque top level library context object.
newtype XkbContext = XkbContext { unwrap :: ForeignPtr XkbContext }
  deriving newtype (Eq, Ord)
  deriving stock (Show, Generic, Data)

-- | Opaque keyboard state object.
newtype XkbState = XkbState { unwrap :: ForeignPtr XkbState }
  deriving newtype (Eq, Ord)
  deriving stock (Show, Generic, Data)

-- | Opaque compiled keymap object.
newtype XkbKeymap = XkbKeymap { unwrap :: ForeignPtr XkbKeymap }
  deriving newtype (Eq, Ord)
  deriving stock (Show, Generic, Data)

-- | It denotes the configuration values by which a user picks a keymap.
newtype XkbRmlvoBuilder = XkbRmlvoBuilder { unwrap :: ForeignPtr XkbRmlvoBuilder }
  deriving newtype (Eq, Ord)
  deriving stock (Show, Generic, Data)

rmlvoBuilderNoFlags :: CUInt
rmlvoBuilderNoFlags = #{const XKB_RMLVO_BUILDER_NO_FLAGS}

-- | Use 'Data.Default.def' to construct the default options.
data XkbContextOptions = XkbContextOptions
  { defaultIncludes :: !Bool
  -- ^ Whether to create the context with default include paths.
  --
  -- Useful to avoid e.g. permission issues when only retrieving a keymap from Wayland/X server.
  --
  -- Default: @True@
  , environmentNames :: !Bool
  -- ^ Take RMLVO names from the environment.
  --
  -- Default: @True@
  , secureGetEnv :: !Bool
  -- ^ Whether to enable the use of @secure_getenv@.
  --
  -- Default: @True@
  , contextLogLevel :: !(Maybe LogLevel)
  -- ^ Override the log level.
  --
  -- May also be set via environment variable @XKB_LOG_LEVEL@.
  --
  -- Default: @Nothing@
  , contextLogVerbosity :: !(Maybe Int)
  -- ^ Between 0 and 10, default verbosity is 0.
  --
  -- May also be set via environment variable @XKB_LOG_VERBOSITY@.
  --
  -- Default: @Nothing@
  } deriving (Eq, Ord, Show, Read, Generic, Data)

instance Default XkbContextOptions where
  def = XkbContextOptions True True True Nothing Nothing

optionsToFlags :: XkbContextOptions -> CUInt
optionsToFlags opts =
  #{const XKB_CONTEXT_NO_FLAGS}
  .|. f (not opts.defaultIncludes)  #{const XKB_CONTEXT_NO_DEFAULT_INCLUDES}
  .|. f (not opts.environmentNames) #{const XKB_CONTEXT_NO_ENVIRONMENT_NAMES}
  .|. f (not opts.secureGetEnv)     #{const XKB_CONTEXT_NO_SECURE_GETENV}
    where
      f True  x = x
      f False _ = 0

-- * Real modifiers names

-- | Real modifier names:
-- @Shift@
-- @Lock@
-- @Control@
-- @Mod1@
-- @Mod2@
-- @Mod3@
-- @Mod4@
-- @Mod5@
pattern
    ModNameShift
  , ModNameCaps
  , ModNameCtrl
  , ModNameMod1
  , ModNameMod2
  , ModNameMod3
  , ModNameMod4
  , ModNameMod5
  :: String
pattern ModNameShift = #{const_str XKB_MOD_NAME_SHIFT} -- "Shift"
pattern ModNameCaps  = #{const_str XKB_MOD_NAME_CAPS}  -- "Lock"
pattern ModNameCtrl  = #{const_str XKB_MOD_NAME_CTRL}  -- "Control"
pattern ModNameMod1  = #{const_str XKB_MOD_NAME_MOD1}  -- "Mod1"
pattern ModNameMod2  = #{const_str XKB_MOD_NAME_MOD2}  -- "Mod2"
pattern ModNameMod3  = #{const_str XKB_MOD_NAME_MOD3}  -- "Mod3"
pattern ModNameMod4  = #{const_str XKB_MOD_NAME_MOD4}  -- "Mod4"
pattern ModNameMod5  = #{const_str XKB_MOD_NAME_MOD5}  -- "Mod5"

-- * Virtual modifier names

-- | Virtual modifier names:
-- @Alt@
-- @Hyper@
-- @LevelThree@
-- @LevelFive@
-- @Meta@
-- @NumLock@
-- @ScrollLock@
-- @Super@
pattern
    ModNameAlt
  , ModNameHyper
  , ModNameLevel3
  , ModNameLevel5
  , ModNameMeta
  , ModNameNum
  , ModNameScroll
  , ModNameSuper
    :: String
pattern ModNameAlt     = #{const_str XKB_VMOD_NAME_ALT}     -- "Alt"
pattern ModNameHyper   = #{const_str XKB_VMOD_NAME_HYPER}   -- "Hyper"
pattern ModNameLevel3  = #{const_str XKB_VMOD_NAME_LEVEL3}  -- "LevelThree"
pattern ModNameLevel5  = #{const_str XKB_VMOD_NAME_LEVEL5}  -- "LevelFive"
pattern ModNameMeta    = #{const_str XKB_VMOD_NAME_META}    -- "Meta"
pattern ModNameNum     = #{const_str XKB_VMOD_NAME_NUM}     -- "NumLock"
pattern ModNameScroll  = #{const_str XKB_VMOD_NAME_SCROLL}  -- "ScrollLock"
pattern ModNameSuper   = #{const_str XKB_VMOD_NAME_SUPER}   -- "Super"

-- * LEDs names

-- | LED names:
-- @Num Lock@
-- @Caps Lock@
-- @Scroll Lock@
-- @Compose@
-- @Kana@
pattern
    LedNameNum
  , LedNameCaps
  , LedNameScroll
  , LedNameCompose
  , LedNameKana
    :: String
pattern LedNameNum     = #{const_str XKB_LED_NAME_NUM} -- "Num Lock"
pattern LedNameCaps    = #{const_str XKB_LED_NAME_CAPS} -- "Caps Lock"
pattern LedNameScroll  = #{const_str XKB_LED_NAME_SCROLL}  -- "Scroll Lock"
pattern LedNameCompose = #{const_str XKB_LED_NAME_COMPOSE} -- "Compose"
pattern LedNameKana    = #{const_str XKB_LED_NAME_KANA} -- "Kana"

-- * XkbStateComponent

-- | Modifier and layout types for state objects.
--
-- This enum is bitmaskable, e.g. @StateModsDepressed .|. StateModsLatched@
-- is valid to exclude locked modifiers.
newtype XkbStateComponent = XkbStateComponent { unwrap :: CUInt }
  deriving newtype (Eq, Ord, Storable, Num)
  deriving stock (Generic, Show)

pattern StateModsDepressed
  , StateModsLatched
  , StateModsLocked
  , StateModsEffective
  , StateLayoutDepressed
  , StateLayoutLatched
  , StateLayoutLocked
  , StateLayoutEffective
  , StateLeds
    :: XkbStateComponent

-- | Depressed modifiers, i.e. a key is physically holding them.
pattern StateModsDepressed    = #{const XKB_STATE_MODS_DEPRESSED}

-- | Latched modifiers, i.e. will be unset after the next non-modifier key press.
pattern StateModsLatched      = #{const XKB_STATE_MODS_LATCHED}

-- | Locked modifiers, i.e. will be unset after the key provoking the lock has been pressed again.
pattern StateModsLocked       = #{const XKB_STATE_MODS_LOCKED}

-- | Effective modifiers, i.e. currently active and affect key processing (derived from the other state components).
--
-- Use this unless you explicitly care how the state came about.
pattern StateModsEffective    = #{const XKB_STATE_MODS_EFFECTIVE}

-- | Depressed layout, i.e. a key is physically holding it.
pattern StateLayoutDepressed  = #{const XKB_STATE_LAYOUT_DEPRESSED}

-- | Latched layout, i.e. will be unset after the next non-modifier key press.
pattern StateLayoutLatched    = #{const XKB_STATE_LAYOUT_LATCHED}

-- | Locked layout, i.e. will be unset after the key provoking the lock has been pressed again.
pattern StateLayoutLocked     = #{const XKB_STATE_LAYOUT_LOCKED}

-- | Effective layout, i.e. currently active and affects key processing (derived from the other state components).
--
-- Use this unless you explicitly care how the state came about.
pattern StateLayoutEffective  = #{const XKB_STATE_LAYOUT_EFFECTIVE}

-- | LEDs (derived from the other state components).
pattern StateLeds             = #{const XKB_STATE_LEDS}
