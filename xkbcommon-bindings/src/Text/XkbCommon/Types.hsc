module Text.XkbCommon.Types
  ( module Text.XkbCommon.Types
  , Generic
  , Fd(..)
  , Default(..)
  ) where

import Foreign
import Foreign.C
import GHC.Generics
import Data.Data
import Control.Exception
import Data.String
import qualified Data.List as L
import Data.Default
import Data.Maybe
import System.Posix (Fd(..))

#include <xkbcommon/xkbcommon.h>

-- * Exceptions

data XkbCommonException = XkbOperationFailed { method :: String }
  deriving (Eq, Show)
instance Exception XkbCommonException

-- | A number used to represent a physical key on a keyboard.
--
-- @xkb_keycode_t@
type Keycode = #{type xkb_keycode_t}

-- | Maximum 'Keycode value.
keycodeMax :: Keycode
keycodeMax = #{const XKB_KEYCODE_MAX}

invalidKeycode :: Keycode
invalidKeycode = #{const XKB_KEYCODE_INVALID}

-- | A number used to represent the symbols generated from a key on a keyboard.
--
-- @xkb_keysym_t@
type KeySym = #{type xkb_keysym_t}

-- | Maximum 'KeySym' value.
keysymMax :: KeySym
keysymMax = #{const XKB_KEYSYM_MAX}

-- | Index of a modifier.
--
-- @xkb_mod_index_t@
type ModIndex = #{type xkb_mod_index_t}

-- | A mask of modifier indices.
--
-- @xkb_mod_mask_t@
type ModMask = #{type xkb_mod_mask_t}

-- | Index of a keyboard layout.
--
-- @xkb_layout_index_t@
type LayoutIndex = #{type xkb_layout_index_t}

type LayoutMask = #{type xkb_layout_mask_t}

type LedIndex = #{type xkb_led_index_t}

-- * Objects

newtype XkbContext = XkbContext { unwrap :: ForeignPtr XkbContext }
  deriving newtype (Eq, Ord)
  deriving stock (Generic, Show, Data)

newtype XkbRmlvoBuilder = XkbRmlvoBuilder { unwrap :: ForeignPtr XkbRmlvoBuilder }
  deriving newtype (Eq, Ord)
  deriving stock (Generic, Show, Data)

newtype XkbKeymap = XkbKeymap { unwrap :: ForeignPtr XkbKeymap }
  deriving newtype (Eq, Ord)
  deriving stock (Generic, Show, Data)

newtype XkbState = XkbState { unwrap :: ForeignPtr XkbState }
  deriving newtype (Eq, Ord)
  deriving stock (Generic, Show, Data)

-- ** XkbStateComponent

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

-- * XkbRuleNames

-- |
--
-- @struct xkb_rule_names@
data XkbRuleNames = XkbRuleNames
  { rules   :: !String
  -- ^ The rules file to use.
  , model   :: !String
  -- ^ Keyboard model by which to interpret keycodes and LEDs.
  , layouts :: ![Layout]
  -- ^ Layouts in this keymap (+ optionally variants).
  , options :: Maybe [LayoutOption]
  -- ^ Layout options.
  -- If 'Nothing', the default options are used.
  -- If 'Just []', no options are used.
  }
  deriving stock (Eq, Show, Read, Generic, Data)
  deriving anyclass (Default)

data Layout = Layout
  { layoutLayout  :: String
  , layoutVariant :: Maybe String
  } deriving stock (Eq, Show, Read, Generic, Data)

data LayoutOption = LayoutOption
  { optionGroup  :: String
  , optionOption :: String
  , optionLayout :: Maybe Int
  } deriving stock (Eq, Show, Read, Generic, Data)

-- |
-- @
-- "us"       == Layout "us" Nothing
-- "us(intl)" == Layout "us" (Just "intl")
-- @
instance IsString Layout where
  fromString s =
    case L.span (/= '(') s of
      (a, '(' : b) -> Layout a $ Just $ L.init b
      _ -> Layout s Nothing

-- |
-- @
-- "foo:bar" == LayoutOption "foo" "bar" Nothing
-- @
instance IsString LayoutOption where
  fromString s =
    case L.span (/= ':') s of
      (g, ':' : o) -> LayoutOption g o Nothing
      _ -> error $ "malformed layout option: " ++ s

withXkbRuleNames :: XkbRuleNames -> (Ptr XkbRuleNames -> IO b) -> IO b
withXkbRuleNames x m = allocaBytesAligned (#size struct xkb_rule_names) (#alignment struct xkb_rule_names) $ \p ->
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
    withOptions x.options $ \c_options -> do
      #{poke struct xkb_rule_names, rules} p c_rules
      #{poke struct xkb_rule_names, model} p c_model
      #{poke struct xkb_rule_names, layout} p c_layout
      #{poke struct xkb_rule_names, variant} p c_variant
      #{poke struct xkb_rule_names, options} p c_options
      m $ castPtr p
  where
    layout = L.intercalate "," $ map layoutLayout x.layouts
    variant = L.intercalate "," $ map (\l -> fromMaybe "" l.layoutVariant) x.layouts

    withOptions Nothing = \f -> f nullPtr
    withOptions (Just opts) = withCString (formatOptions opts)

    formatOptions = L.intercalate "," . map (\o -> o.optionGroup ++ ":" ++ o.optionOption ++ maybe "" (\i -> "!" ++ show i) o.optionLayout)
