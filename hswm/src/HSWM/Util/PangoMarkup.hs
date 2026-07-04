-- |
-- Module      : HSWM.Util.PangoMarkup
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Util.PangoMarkup
  (Markup(..), Attr(..), IsText(..), render,
  escape, bold, italic,
  text,
  fromShow,
  -- * Escape
  escapeLineBreaks, escapeMarkupPure, escapeMarkup
  ) where

import GI.GLib.Functions (markupEscapeText)
import Data.Text qualified as T
import System.IO.Unsafe

escapeMarkup :: MonadIO m => Text -> Int64 -> m Text
escapeMarkup x len
  | len < 1   = markupEscapeText (x <> "\0") (-1)
  | otherwise = markupEscapeText x len

escapeMarkupPure :: Text -> Int64 -> Text
escapeMarkupPure x len = unsafePerformIO (escapeMarkup x len)

escapeLineBreaks :: Text -> Text
escapeLineBreaks = T.replace "\n" "\\n" . T.replace "\r" "\\r"

data Markup
  = Raw Text
  | Escaped Text
  | MEmpty
  | Concat Markup Markup
  | Bold Markup
  | Italic Markup
  | Monospace Markup
  | Markup :<> [Attr]
  deriving (Eq, Show, Generic)

data Attr = Attr Text Text
  deriving (Eq, Show, Generic)

instance Semigroup Markup where
  MEmpty <> b = b
  a <> MEmpty = a
  a <> b = Concat a b

instance Monoid Markup where
  mempty = MEmpty

instance IsString Markup where
  fromString s = Escaped (toText s)

render :: Markup -> Text
render = go
  where
    go MEmpty        = ""
    go (Raw x)       = x
    go (Concat a b)  = (<>) (go a) (go b)
    go (Escaped x)   = escapeMarkupPure x (-1)
    go (Bold x)      = tag "b" [] $ go x
    go (Italic x)    = tag "i" [] $ go x
    go (Monospace x) = tag "tt" [] $ go x
    go (x :<> attrs) = tag "span" attrs $ go x

    tag label attrs inner' =
      "<" <> label <> T.concat (map prAttrs attrs) <> ">" <> inner' <> "</" <> label <> ">"

    prAttrs (Attr k v) = " " <> k <> "=\"" <> v <> "\""

fromShow :: Show a => a -> Markup
fromShow x = Escaped (toText $ show x)

class IsText a where
  getText :: a -> T.Text

instance IsText String where
  getText = T.pack

instance IsText Text where
  getText = id

text :: IsText a => a -> Markup
text = Escaped . getText

escape :: IsText a => a -> Markup
escape = Raw . escapeLineBreaks . flip escapeMarkupPure (-1) . getText

bold :: Markup -> Markup
bold = Bold

italic :: Markup -> Markup
italic = Italic
