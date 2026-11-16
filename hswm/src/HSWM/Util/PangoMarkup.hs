{-# LANGUAGE DefaultSignatures #-}

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
  escapeTextsLazy,
  escapeMarkupAuto,
  escapeMarkupPure,
  actualLength,

  -- * Justify
  justifyColumn,
  MarkupJustify (..),
  justify,
  justifyLeft,
  justifyRight,
  justifyCenter,
) where

import Data.ByteString.Lazy qualified as BL
import Data.List qualified as L
import Data.Text qualified as T
import Data.Text.Encoding qualified as TE
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

  fromShortText :: ShortText -> a
  fromShortText = fromTextStrict . TS.toText

  fromTextUnlines :: [StrictText] -> a
  default fromTextUnlines :: (IsString a, Monoid a) => [StrictText] -> a
  fromTextUnlines = fold . L.intersperse "\n" . map fromTextStrict

  singleton :: Char -> a
  singleton = fromShortText . TS.singleton

instance FromText ShortText where
  fromTextStrict = TS.fromText
  singleton = TS.singleton

instance FromText StrictText where
  fromTextStrict = id
  singleton = T.singleton

instance FromText LazyText where
  fromTextLazy = id
  fromTextUnlines = TL.unlines . map TL.fromStrict
  singleton = TL.singleton

instance FromText String where
  fromTextStrict = T.unpack
  fromTextLazy = TL.unpack
  singleton = pure

instance FromText TB.Builder where
  fromTextStrict = TB.fromText
  fromTextLazy = TB.fromLazyText
  singleton = TB.singleton

instance FromText StrictByteString where
  fromTextStrict = TE.encodeUtf8

instance FromText LazyByteString where
  fromTextLazy = TLE.encodeUtf8

instance FromText Markup where
  fromTextStrict = RawT
  fromTextLazy = RawTL
  fromTextUnlines = fold . L.intersperse (RawTB $ TB.singleton '\n') . map fromTextStrict
  singleton = RawTB . singleton

-- * IsText

-- | Class for things that can be transformed into Text\/LazyText.
class IsText a where
  toStrictText :: a -> T.Text
  toStrictText = TL.toStrict . toLazyText

  toLazyText :: a -> LazyText
  toLazyText = TL.fromStrict . toStrictText

instance IsText Text where
  toStrictText = id
instance IsText LazyText where
  toLazyText = id
instance IsText ShortText where
  toStrictText = TS.toText
instance IsText String where
  toStrictText = T.pack
instance IsText StrictByteString where
  toStrictText = TE.decodeUtf8With lenientDecode
  toLazyText = toLazyText . BL.fromStrict
instance IsText LazyByteString where
  toLazyText = TLE.decodeUtf8With lenientDecode

-- * Markup

data Markup
  = -- | zero-length document.
    MNUL
  | -- | Simple document concatenation
    Concat !Markup !Markup
  | -- | Direct Text builder
    RawTB !TB.Builder
  | -- | direct text include, no escaping, can contain markup tags!
    RawT !Text
  | -- | Direct lazy text
    RawTL !LazyText
  | -- | text, markup tags automatically escaped.
    EscapeT !Text
  | -- | Text to be escaped
    EscapeTL !LazyText
  | -- | <TAG [ATTRS]>BODY</TAG>
    !TagAttrs :*>> !Markup
  deriving (Eq, Show, Generic)

type TagAttrs = ShortText :</> (ShortText := LazyText)

instance Semigroup Markup where
  RawTB x <> RawTB y = RawTB (x <> y)
  RawT x <> RawT y = RawT (x <> y)
  RawTL x <> RawTL y = RawTL (x <> y)
  EscapeT x <> EscapeT y = EscapeT (x <> y)
  EscapeTL x <> EscapeTL y = EscapeTL (x <> y)
  MNUL <> a = a
  a <> MNUL = a
  a <> b = Concat a b
instance Monoid Markup where
  mempty = MNUL
instance Default Markup where
  def = mempty

actualLength :: Markup -> Int64
actualLength = go
  where
    go MNUL = 0
    go (Concat a b) = go a + go b
    go (RawTB x) = TL.length (TB.toLazyText x)
    go (RawT x) = fromIntegral $ T.length x
    go (RawTL x) = TL.length x
    go (EscapeT x) = fromIntegral $ T.length x
    go (EscapeTL x) = TL.length x
    go (_ :*>> x) = go x

data MarkupJustify = JustifyL | JustifyR | JustifyC
  deriving (Eq, Ord, Show, Read)

-- | Justify a column indexed by a Lens in a list of values.
-- The maximum length is calculated over the column.
justifyColumn :: Lens' a Markup -> MarkupJustify -> Char -> [a] -> [a]
justifyColumn f dir c xs = xs & each . f %~ justify dir ind c
  where
    ind = fromIntegral $ L.maximum $ xs ^.. traversed . f . to actualLength

justify :: (ToMarkup a) => MarkupJustify -> Int -> Char -> a -> Markup
justify JustifyL = justifyLeft
justify JustifyR = justifyRight
justify JustifyC = justifyCenter

-- | @justifyLeft NUM CHAR TEXT@
justifyLeft :: (ToMarkup a) => Int -> Char -> a -> Markup
justifyLeft n c x = xm <> text (T.replicate (n - fromIntegral (actualLength xm)) (T.pack [c]))
  where
    xm = toMarkup x

justifyRight :: (ToMarkup a) => Int -> Char -> a -> Markup
justifyRight n c x = text (T.replicate (n - fromIntegral (actualLength xm)) (T.pack [c])) <> xm
  where
    xm = toMarkup x

justifyCenter :: (ToMarkup a) => Int -> Char -> a -> Markup
justifyCenter n c x = text (T.replicate (h + lef) (T.pack [c])) <> xm <> text (T.replicate h (T.pack [c]))
  where
    xm = toMarkup x
    num = n - fromIntegral (actualLength xm)
    (h, lef) = num `divMod` 2

-- | Always escaped.
instance IsString Markup where
  fromString = EscapeTL . toLazyText

-- ** ToMarkup

-- | Class of types that have canonical transformation into Pango Markup.
class ToMarkup a where
  toMarkup :: a -> Markup

instance ToMarkup Markup where
  toMarkup = id

-- | Value will be escaped.
instance ToMarkup String where
  toMarkup = fromString

-- | Value will be escaped.
instance ToMarkup Text where
  toMarkup = EscapeT

-- | Value will be escaped.
instance ToMarkup LazyText where
  toMarkup = EscapeTL

-- ** Tags and attributes

-- | Tag + attributes, e.g. @"span" :<?> [attrs]@
data tag :</> ap = !tag :</> ![ap]
  deriving (Eq, Show, Generic, Data)

type Attrs = [ShortText := LazyText]

-- | A single attribute, e.g.
--
-- @
-- font := 'Terminess'
-- @
data k := v = !k := !v
  deriving (Eq, Show, Generic, Data)

-- ** Rendering

renderTextBuilder :: Markup -> TB.Builder
renderTextBuilder = go
  where
    go = \case
      MNUL -> mempty
      RawTB x -> x
      Concat a b -> go a <> go b
      RawT x -> fromTextStrict x
      RawTL x -> fromTextLazy x
      EscapeT x -> fromTextStrict $ escapeMarkupAuto $ escapeLineBreaks x
      EscapeTL x -> fromTextStrict $ escapeMarkupAuto $ escapeLineBreaks x
      tagAp :*>> x -> ptag tagAp (go x)

    between a b x = a <> x <> b

    ptag (tag :</> ap) =
      between
        (between (singleton '<') (singleton '>') (fromShortText tag <> mconcat (map pattr ap)))
        (between "</" (singleton '>') (fromShortText tag))

    pattr (k := v) = singleton ' ' <> fromShortText k <> singleton '=' <> between (singleton '"') (singleton '"') (fromTextLazy (escapeTextsLazy [("\"", "\\\"")] v))

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
raw = RawTL . toLazyText

text :: (IsText a) => a -> Markup
text = EscapeTL . toLazyText

escape :: (IsText a) => a -> Markup
escape = EscapeTL . toLazyText

-- | Text via @Show@
fromShow :: (Show a) => a -> Markup
fromShow = EscapeT . toText . show

-- * Escape markup/newlines

escapeMarkup :: (MonadIO m) => Text -> Int64 -> m Text
escapeMarkup x len
  | len < 1 = markupEscapeText (x <> "\0") (-1)
  | otherwise = markupEscapeText x len

escapeMarkupAuto :: (IsText a) => a -> Text
escapeMarkupAuto x = escapeMarkupPure (toStrictText x) (-1)

escapeMarkupPure :: Text -> Int64 -> Text
escapeMarkupPure x len = unsafePerformIO (escapeMarkup x len)

escapeLineBreaks :: (IsText a) => a -> LazyText
escapeLineBreaks = escapeTextsLazy [("\n", "\\n"), ("\r", "\\r")]

escapeTextsLazy :: (IsText a) => [(LazyText, LazyText)] -> a -> LazyText
escapeTextsLazy xs s = foldr (uncurry TL.replace) (toLazyText s) xs
