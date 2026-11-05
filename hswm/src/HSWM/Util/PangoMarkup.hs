-- |
-- Module      : HSWM.Util.PangoMarkup
-- Description : Definitions for working with pango markup
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Util.PangoMarkup (
  -- * Markup
  Markup,

  -- ** ToMarkup
  ToMarkup (..),
  (~++),

  -- ** Text
  text,
  raw,
  escape,
  fromShow,
  IsText (..),

  -- ** tag
  (:</>) (..),
  (:=) (..),
  Attrs,
  bold,
  italic,
  monospace,
  HSWM.Util.PangoMarkup.span,

  -- ** Render
  render,
  renderTextBuilder,
  renderText,
  renderStrictText,
  renderByteString,
  FromText (..),

  -- * Utils
  escapeStrings,
  escapeMarkupAuto,
  escapeMarkupPure,
) where

import Data.Text qualified as T
import Data.Text.Lazy qualified as TL
import Data.Text.Lazy.Builder qualified as TB
import Data.Text.Lazy.Encoding qualified as TLE
import Data.Text.Short qualified as TS
import GI.GLib.Functions (markupEscapeText)
import System.IO.Unsafe

-- * FromText

-- | Values that can be constructed from Text(s)
class FromText a where
  fromTextStrict :: StrictText -> a
  fromTextStrict = fromTextLazy . TL.fromStrict

  fromTextLazy :: LazyText -> a
  fromTextLazy = fromTextStrict . TL.toStrict

  fromTextUnlines :: [StrictText] -> a
  fromTextUnlines = fromTextLazy . TL.unlines . map TL.fromStrict

instance FromText ShortText where
  fromTextStrict = TS.fromText

instance FromText StrictText where
  fromTextStrict = id

instance FromText LazyText where
  fromTextLazy = id

instance FromText LazyByteString where
  fromTextStrict = TLE.encodeUtf8 . TL.fromStrict
  fromTextLazy = TLE.encodeUtf8

instance FromText String where
  fromTextStrict = T.unpack
  fromTextLazy = TL.unpack

-- * IsText

class IsText a where
  getText :: a -> T.Text
  getText = TL.toStrict . getLazyText

  getLazyText :: a -> LazyText
  getLazyText = TL.fromStrict . getText

instance IsText String where
  getText = T.pack
instance IsText Text where
  getText = id
instance IsText LazyText where
  getLazyText = id
instance IsText StrictByteString where
  getText = decodeUtf8Lenient
instance IsText LazyByteString where
  getLazyText = TLE.decodeUtf8
instance IsText ShortText where
  getText = TS.toText

-- * Markup

data Markup
  = -- | zero-length document.
    MNUL
  | -- | Simple document concatenation
    Concat !Markup !Markup
  | -- | <TAG [ATTRS]>BODY</TAG>
    !(ShortText :</> (ShortText := LazyText)) :*>> !Markup
  | -- | Direct Text builder
    DirectBuilder !TB.Builder
  | -- | direct text include, no escaping, can contain markup tags!
    RawText !Text
  | -- | Direct lazy text
    RawTextLazy !LazyText
  | -- | text, markup tags automatically escaped.
    Escaped !Text
  | -- | Text to be escaped
    EscapedLazy !LazyText
  deriving (Eq, Show, Generic)

instance Semigroup Markup where
  MNUL <> b = b
  a <> MNUL = a
  DirectBuilder x <> DirectBuilder y = DirectBuilder (x <> y)
  RawText x <> RawText y = RawText (x <> y)
  RawTextLazy x <> RawTextLazy y = RawTextLazy (x <> y)
  Escaped x <> Escaped y = Escaped (x <> y)
  EscapedLazy x <> EscapedLazy y = EscapedLazy (x <> y)
  a <> b = Concat a b
instance Monoid Markup where
  mempty = MNUL
instance Default Markup where
  def = mempty

-- | Always escaped.
instance IsString Markup where
  fromString = EscapedLazy . getLazyText

-- ** ToMarkup

class ToMarkup a where
  toMarkup :: a -> Markup
instance ToMarkup Markup where
  toMarkup = id

-- | Value will be escaped.
instance ToMarkup String where
  toMarkup = fromString

-- | Value will be escaped.
instance ToMarkup Text where
  toMarkup = Escaped

-- | Value will be escaped.
instance ToMarkup LazyText where
  toMarkup = EscapedLazy

-- ** Tags and attributes

-- | Tag + attributes, e.g. @"span" :<?> [attrs]@
data tag :</> attrs = !tag :</> ![attrs]
  deriving (Eq, Show, Generic, Data)

-- | A single attribute, e.g.
--
-- @
-- font := 'Terminess'
-- @
data key := value = !key := !value
  deriving (Eq, Show, Generic, Data)

-- ** Rendering

renderTextBuilder :: Markup -> TB.Builder
renderTextBuilder = go
  where
    go = \case
      MNUL -> mempty
      DirectBuilder x -> x
      Concat a b -> go a <> go b
      RawText x -> TB.fromText x
      RawTextLazy x -> TB.fromLazyText x
      Escaped x -> TB.fromText $ escapeMarkupAuto $ escapeLineBreaks x
      EscapedLazy x -> TB.fromText $ escapeMarkupAuto $ TL.toStrict $ escapeLineBreaksLazy x
      tag :*>> x -> ptag tag (go x)

    ptag (l :</> as) i =
      "<"
        <> TB.fromText (TS.toText l)
        <> mconcat (map pattr as)
        <> ">"
        <> i
        <> "</"
        <> TB.fromText (TS.toText l)
        <> ">"
    pattr (k := v) =
      " "
        <> TB.fromText (TS.toText k)
        <> "=\""
        <> TB.fromLazyText (escapeStrings [("\"", "\\\"")] v)
        <> "\""

-- | Same as "renderStrictText"
render :: Markup -> Text
render = renderStrictText

renderText :: Markup -> LazyText
renderText = TB.toLazyText . renderTextBuilder

renderStrictText :: Markup -> Text
renderStrictText = TL.toStrict . renderText

renderByteString :: Markup -> LazyByteString
renderByteString = TLE.encodeUtf8 . renderText

-- ** Building Markup

type Attrs = [ShortText := LazyText]

span :: (ToMarkup a) => Attrs -> a -> Markup
span = ntag "span"

bold :: (ToMarkup a) => a -> Markup
bold = ntag "b" []

italic :: (ToMarkup a) => a -> Markup
italic = ntag "i" []

monospace :: (ToMarkup a) => a -> Markup
monospace = ntag "tt" []

ntag :: (ToMarkup a) => ShortText -> Attrs -> a -> Markup
ntag l as x = (l :</> as) :*>> toMarkup x

-- | No escaping of markup characters
raw :: (IsText a) => a -> Markup
raw = RawText . getText

text :: (IsText a) => a -> Markup
text = Escaped . getText

escape :: (IsText a) => a -> Markup
escape = Escaped . getText

-- | Text via @Show@
fromShow :: (Show a) => a -> Markup
fromShow = Escaped . toText . show

-- | Concatenate with type conversion
(~++) :: (ToMarkup a) => Markup -> a -> Markup
(~++) a b = Concat a (toMarkup b)

-- * Escape markup/newlines

escapeMarkup :: (MonadIO m) => Text -> Int64 -> m Text
escapeMarkup x len
  | len < 1 = markupEscapeText (x <> "\0") (-1)
  | otherwise = markupEscapeText x len

escapeMarkupAuto :: Text -> Text
escapeMarkupAuto x = escapeMarkupPure x (-1)

escapeMarkupPure :: Text -> Int64 -> Text
escapeMarkupPure x len = unsafePerformIO (escapeMarkup x len)

escapeLineBreaks :: Text -> Text
escapeLineBreaks = T.replace "\n" "\\n" . T.replace "\r" "\\r"

escapeLineBreaksLazy :: LazyText -> LazyText
escapeLineBreaksLazy = escapeStrings [("\n", "\\n"), ("\r", "\\r")]

escapeStrings :: [(LazyText, LazyText)] -> LazyText -> LazyText
escapeStrings = flip $ foldr (uncurry TL.replace)
