{-# OPTIONS_HADDOCK hide, not-home #-}
{-# LANGUAGE NoFieldSelectors #-}
{-# LANGUAGE LambdaCase #-}

-- |
-- FFI bindings to @xkbcommon.h@ via hsc2hs
module Text.XkbCommon.FFI
  ( module Text.XkbCommon.FFI
  , Generic(Rep)
  , Exception
  ) where

import           Control.Monad
import           Control.Exception
import           Data.Data
import           Data.Default
import qualified Data.List as L
import           Data.Maybe
import           Data.String
import qualified Data.Char as C
import           Foreign
import           Foreign.C
import           GHC.Generics
import           Text.Read
import qualified Text.ParserCombinators.ReadPrec as R
import qualified Text.ParserCombinators.ReadP as R hiding (pfail)

#include <xkbcommon/xkbcommon.h>

-- | Context log level.
data LogLevel
  = LevelCritical
  | LevelError -- ^ The default
  | LevelWarning
  | LevelInfo
  | LevelDebug
  deriving (Eq, Ord, Show, Read, Generic, Data)

instance Enum LogLevel where
  toEnum #{const XKB_LOG_LEVEL_CRITICAL}  = LevelCritical
  toEnum #{const XKB_LOG_LEVEL_ERROR}     = LevelError
  toEnum #{const XKB_LOG_LEVEL_WARNING}   = LevelWarning
  toEnum #{const XKB_LOG_LEVEL_INFO}      = LevelInfo
  toEnum #{const XKB_LOG_LEVEL_DEBUG}     = LevelDebug
  toEnum _                                = LevelInfo
  fromEnum LevelCritical = #{const XKB_LOG_LEVEL_CRITICAL}
  fromEnum LevelError    = #{const XKB_LOG_LEVEL_ERROR}
  fromEnum LevelWarning  = #{const XKB_LOG_LEVEL_WARNING}
  fromEnum LevelInfo     = #{const XKB_LOG_LEVEL_INFO}
  fromEnum LevelDebug    = #{const XKB_LOG_LEVEL_DEBUG}

fromLogLevel :: LogLevel -> CUInt
fromLogLevel = fromIntegral . fromEnum

-- | A layout name, and possibly variant.
--
-- @
-- "us(intl)" { options = [ "lv5:ralt_switch" ] } :: Layout
-- @
data Layout = Layout
  { baseLayout :: String -- ^ Name of the base layout.
  , variant :: Maybe String
  , options :: [LayoutOption] -- ^ Options for only this layout.
  } deriving (Eq, Ord, Show, Generic, Data)

fromLayout :: Layout -> String
fromLayout l = l.baseLayout ++ maybe "" (\v -> "(" ++ v ++ ")") l.variant

-- | Layout option.
data LayoutOption = LayoutOption
  { prefix :: String
  , name :: String
  }
  deriving (Eq, Ord, Show, Generic, Data)

fromOption :: LayoutOption -> String
fromOption (LayoutOption pre n) = pre ++ ':' : n

-- |
-- @
-- "us"       == Layout "us" Nothing []
-- "us(intl)" == Layout "us" (Just "intl") []
-- @
instance Read Layout where
  readPrec = parens $ R.step $ do
    bl <- R.lift $ R.munch1 isName <* R.skipSpaces
    v <- R.lift $ R.option Nothing $ Just <$> R.between (R.char '(') (R.char ')') (R.skipSpaces *> R.munch1 isName <* R.skipSpaces)
    let os = []
    return $ Layout bl v os
      where
        isName = liftA2 (||) C.isAlphaNum (`elem` "-_+")

instance IsString Layout where
  fromString s = fromMaybe (error err) $ readMaybe s
    where err = "Layout: no parse: " ++ s

-- |
-- @
-- "foo:bar" == LayoutOption "foo:bar"
-- "foo:bar!2" == LayoutOption "foo:bar" (layout-specificity ignored)
-- @
instance Read LayoutOption where
  readPrec = parens $ R.step $ do
    pre <- lexIdent
    lexP >>= guard . (== Symbol ":")
    opt <- R.lift $ R.munch1 isName
    R.lift $ R.optional $ R.char '!' *> R.munch1 C.isNumber
    return $ LayoutOption pre opt
      where
        lexIdent = lexP >>= \case
          Ident x -> pure x
          _ -> R.pfail
        isName = liftA2 (||) C.isAlphaNum (`elem` "-_+")

instance IsString LayoutOption where
  fromString s = fromMaybe (error err) $ readMaybe s
    where err = "LayoutOption: no parse: " ++ s

-- | Use "def" to initialize a new empty instance of this structure.
-- At least one layout is required.
--
-- C: @struct xkb_rule_names@
data XkbRuleNames = XkbRuleNames
  { rules :: !String
  -- ^ The rules file to use. For defaults use @""@.

  , model :: !String
  -- ^ Keyboard model by which to interpret keycodes and LEDs. For default use @""@.

  , layouts :: ![Layout]
  -- ^ Layouts in this keymap (+ optionally variants).

  , options :: Maybe [LayoutOption]
  -- ^ Layout options.
  --
  -- If 'Nothing', the default options are used.
  --
  -- If 'Just []', no options are used.
  --
  -- Note that there can in addition also be layout-specific options defined per each layout.
  }
  deriving stock (Eq, Ord, Show, Read, Generic, Data)
  deriving anyclass (Default)

withXkbRuleNames :: XkbRuleNames -> (Ptr XkbRuleNames -> IO a) -> IO a
withXkbRuleNames x f = allocaBytesAligned (#size struct xkb_rule_names) (#alignment struct xkb_rule_names) $ \p ->
    withCString x.rules $ \c_rules ->
    withCString x.model $ \c_model ->
    -- Comma-separated list of layouts (languages) to include in the keymap.
    withCString bls $ \c_layout ->
    -- Comma-separated list of variants, one per layout.
    -- Should either be empty or have the same number of values as the number of
    -- layouts.
    withCString vs $ \c_variant ->
    -- Comma-separated list of options; "ns:option!2"
    -- If NULL, a default value is used.
    -- If empty string "", no options are used.
    withOptions x.options $ \c_options -> do
      #{poke struct xkb_rule_names, rules} p c_rules
      #{poke struct xkb_rule_names, model} p c_model
      #{poke struct xkb_rule_names, layout} p c_layout
      #{poke struct xkb_rule_names, variant} p c_variant
      #{poke struct xkb_rule_names, options} p c_options
      f $ castPtr p
  where
    bls = L.intercalate "," $ map (.baseLayout) x.layouts
    vs = L.intercalate "," $ map (fromMaybe "" . (.variant)) x.layouts
    lopts = [ fromOption o ++ '!' : show i | (i, l) <- zip [(1::Int)..] x.layouts, o <- l.options ]

    withOptions Nothing | null lopts = ($ nullPtr)
    withOptions opts = withCString $ L.intercalate "," $ maybe [] (map fromOption) opts ++ lopts

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
pattern LayoutInvalid :: LayoutIndex
pattern LayoutInvalid = #{const XKB_LAYOUT_INVALID}

-- | Invalid level index
pattern LevelInvalid :: LevelIndex
pattern LevelInvalid = #{const XKB_LEVEL_INVALID}

-- | Invalid modifier index
pattern ModInvalid :: ModIndex
pattern ModInvalid = #{const XKB_MOD_INVALID}

-- | Invalid LED index
pattern LedInvalid :: LedIndex
pattern LedInvalid = #{const XKB_LED_INVALID}

-- | Maximum 'KeySym' value.
keysymMax :: KeySym
keysymMax = #{const XKB_KEYSYM_MAX}

-- | Maximum 'Keycode' value.
keycodeMax :: Keycode
keycodeMax = #{const XKB_KEYCODE_MAX}

keysymNoSymbol :: KeySym
keysymNoSymbol = #{const XKB_KEY_NoSymbol}

-- | For @xkb_keysym_from_name@
keysymNoFlags :: CUInt
keysymNoFlags = #{const XKB_KEYSYM_NO_FLAGS}

-- | For @xkb_keysym_from_name@
keysymCaseInsensitive :: CUInt
keysymCaseInsensitive = #{const XKB_KEYSYM_CASE_INSENSITIVE}

-- | The possible keymap formats.
data KeymapFormat
  = TextV1
  -- ^ The classic XKB text format, as generated by `xkbcomp -xkb`.
  | TextV2
  -- ^ Xkbcommon extensions of the classic XKB text format, **incompatible with X11**.
  deriving stock (Eq, Ord, Show, Read, Enum, Bounded, Generic)

instance Default KeymapFormat where
  def = TextV1

fromKeymapFormat :: KeymapFormat -> CUInt
fromKeymapFormat TextV1 = #{const XKB_KEYMAP_FORMAT_TEXT_V1}
fromKeymapFormat TextV2 = #{const XKB_KEYMAP_FORMAT_TEXT_V2}

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

rmlvoBuilderNoFlags :: CUInt
rmlvoBuilderNoFlags = #{const XKB_RMLVO_BUILDER_NO_FLAGS}

-- * Real modifiers names

-- | Real modifier names: @Shift@ @Lock@ @Control@ @Mod1@ @Mod2@ @Mod3@ @Mod4@ @Mod5@
pattern ModShift , ModCaps , ModCtrl , ModMod1 , ModMod2 , ModMod3 , ModMod4 , ModMod5 :: String
pattern ModShift = #{const_str XKB_MOD_NAME_SHIFT} -- "Shift"
pattern ModCaps  = #{const_str XKB_MOD_NAME_CAPS}  -- "Lock"
pattern ModCtrl  = #{const_str XKB_MOD_NAME_CTRL}  -- "Control"
pattern ModMod1  = #{const_str XKB_MOD_NAME_MOD1}  -- "Mod1"
pattern ModMod2  = #{const_str XKB_MOD_NAME_MOD2}  -- "Mod2"
pattern ModMod3  = #{const_str XKB_MOD_NAME_MOD3}  -- "Mod3"
pattern ModMod4  = #{const_str XKB_MOD_NAME_MOD4}  -- "Mod4"
pattern ModMod5  = #{const_str XKB_MOD_NAME_MOD5}  -- "Mod5"

-- * Virtual modifier names

-- | Virtual modifier names: @Alt@ @Hyper@ @LevelThree@ @LevelFive@ @Meta@ @NumLock@ @ScrollLock@ @Super@
pattern ModAlt , ModHyper , ModLevel3 , ModLevel5 , ModMeta , ModNum , ModScroll , ModSuper :: String
pattern ModAlt     = #{const_str XKB_VMOD_NAME_ALT}     -- "Alt"
pattern ModHyper   = #{const_str XKB_VMOD_NAME_HYPER}   -- "Hyper"
pattern ModLevel3  = #{const_str XKB_VMOD_NAME_LEVEL3}  -- "LevelThree"
pattern ModLevel5  = #{const_str XKB_VMOD_NAME_LEVEL5}  -- "LevelFive"
pattern ModMeta    = #{const_str XKB_VMOD_NAME_META}    -- "Meta"
pattern ModNum     = #{const_str XKB_VMOD_NAME_NUM}     -- "NumLock"
pattern ModScroll  = #{const_str XKB_VMOD_NAME_SCROLL}  -- "ScrollLock"
pattern ModSuper   = #{const_str XKB_VMOD_NAME_SUPER}   -- "Super"

-- * LEDs names

-- | LED names:
-- @Num Lock@
-- @Caps Lock@
-- @Scroll Lock@
-- @Compose@
-- @Kana@
pattern LedNumLock , LedCapsLock , LedScrollLock , LedCompose , LedKana :: String
pattern LedNumLock = #{const_str XKB_LED_NAME_NUM} -- "Num Lock"
pattern LedCapsLock = #{const_str XKB_LED_NAME_CAPS} -- "Caps Lock"
pattern LedScrollLock = #{const_str XKB_LED_NAME_SCROLL}  -- "Scroll Lock"
pattern LedCompose = #{const_str XKB_LED_NAME_COMPOSE} -- "Compose"
pattern LedKana    = #{const_str XKB_LED_NAME_KANA} -- "Kana"

-- * XkbStateComponent

-- | Modifier and layout types for state objects.
--
-- This enum is bitmaskable, e.g. @StateModsDepressed .|. StateModsLatched@
-- is valid to exclude locked modifiers.
newtype XkbStateComponent = XkbStateComponent { unwrap :: CUInt }
  deriving newtype (Eq, Ord, Storable, Num, Bits)
  deriving stock (Generic, Show)

pattern ModsDepressed , ModsLatched , ModsLocked , ModsEffective
  , LayoutDepressed , LayoutLatched , LayoutLocked , LayoutEffective
  , Leds :: XkbStateComponent

-- | Depressed modifiers, i.e. a key is physically holding them.
pattern ModsDepressed    = #{const XKB_STATE_MODS_DEPRESSED}

-- | Latched modifiers, i.e. will be unset after the next non-modifier key press.
pattern ModsLatched      = #{const XKB_STATE_MODS_LATCHED}

-- | Locked modifiers, i.e. will be unset after the key provoking the lock has been pressed again.
pattern ModsLocked       = #{const XKB_STATE_MODS_LOCKED}

-- | Effective modifiers, i.e. currently active and affect key processing (derived from the other state components).
--
-- Use this unless you explicitly care how the state came about.
pattern ModsEffective    = #{const XKB_STATE_MODS_EFFECTIVE}

-- | Depressed layout, i.e. a key is physically holding it.
pattern LayoutDepressed  = #{const XKB_STATE_LAYOUT_DEPRESSED}

-- | Latched layout, i.e. will be unset after the next non-modifier key press.
pattern LayoutLatched    = #{const XKB_STATE_LAYOUT_LATCHED}

-- | Locked layout, i.e. will be unset after the key provoking the lock has been pressed again.
pattern LayoutLocked     = #{const XKB_STATE_LAYOUT_LOCKED}

-- | Effective layout, i.e. currently active and affects key processing (derived from the other state components).
--
-- Use this unless you explicitly care how the state came about.
pattern LayoutEffective  = #{const XKB_STATE_LAYOUT_EFFECTIVE}

-- | LEDs (derived from the other state components).
pattern Leds             = #{const XKB_STATE_LEDS}
