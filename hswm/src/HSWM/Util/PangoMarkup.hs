-- |
-- Module      : HSWM.Util.PangoMarkup
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Util.PangoMarkup where

import Data.Text qualified as T
import GI.GLib.Functions (markupEscapeText)
import System.IO.Unsafe

-- * IsText

class IsText a where
  getText :: a -> T.Text

instance IsText String where
  getText = T.pack

instance IsText Text where
  getText = id

-- * Markup

data Markup
  = -- | zero-length document.
    MNUL
  | -- | Simple document concatenation
    Concat Markup Markup
  | -- | text, markup tags automatically escaped.
    Escaped Text
  | -- | direct text include, no escaping, can contain markup tags!
    Raw Text
  | -- | <TAG [ATTRS]>BODY</TAG>
    Markup :<< (Text, [Attr])
  deriving (Eq, Show, Generic, Data)

instance Semigroup Markup where
  MNUL <> b = b
  a <> MNUL = a
  a <> b = Concat a b

instance Monoid Markup where
  mempty = MNUL

instance Default Markup where
  def = mempty

instance IsString Markup where
  fromString s = Escaped (toText s)

-- ** ToMarkup

class ToMarkup a where
  toMarkup :: a -> Markup

instance ToMarkup Markup where
  toMarkup = id

instance ToMarkup T.Text where
  toMarkup = Escaped

instance ToMarkup String where
  toMarkup = toMarkup . T.pack

-- ** Attributes

data Attr = Attr !Text !Text
  deriving (Eq, Show, Generic, Data)

-- ** Rendering

render :: Markup -> Text
render = go
  where
    go MNUL = ""
    go (Concat a b) = (<>) (go a) (go b)
    go (Raw x) = x
    go (Escaped x) = escapeLineBreaks $ escapeMarkupPure x (-1)
    go (x :<< (t, as)) = tag t as (go x)

    tag label attrs inner' =
      "<" <> label <> T.concat (map prAttrs attrs) <> ">" <> inner' <> "</" <> label <> ">"
    prAttrs (Attr k v) = " " <> k <> "=\"" <> v <> "\""

-- ** Building Markup

span :: (ToMarkup a) => [Attr] -> a -> Markup
span attrs = (:<< ("span", attrs)) . toMarkup

bold :: (ToMarkup a) => a -> Markup
bold = (:<< ("b", [])) . toMarkup

italic :: (ToMarkup a) => a -> Markup
italic = (:<< ("i", [])) . toMarkup

monospace :: (ToMarkup a) => a -> Markup
monospace = (:<< ("tt", [])) . toMarkup

text :: (IsText a) => a -> Markup
text = Escaped . getText

escape :: (IsText a) => a -> Markup
escape = Raw . escapeLineBreaks . flip escapeMarkupPure (-1) . getText

fromShow :: (Show a) => a -> Markup
fromShow x = Escaped (toText $ show x)

(~++) :: (ToMarkup a) => Markup -> a -> Markup
(~++) a b = Concat a (toMarkup b)

-- * Escape markup/newlines

escapeMarkup :: (MonadIO m) => Text -> Int64 -> m Text
escapeMarkup x len
  | len < 1 = markupEscapeText (x <> "\0") (-1)
  | otherwise = markupEscapeText x len

escapeMarkupPure :: Text -> Int64 -> Text
escapeMarkupPure x len = unsafePerformIO (escapeMarkup x len)

escapeLineBreaks :: Text -> Text
escapeLineBreaks = T.replace "\n" "\\n" . T.replace "\r" "\\r"
