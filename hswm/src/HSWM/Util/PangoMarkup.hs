-- |
-- Module      : HSWM.Util.PangoMarkup
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Util.PangoMarkup where

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

data Markup a
  = Raw a
  | Escaped a
  | Concat (Markup a) (Markup a)
  | Bold (Markup a)
  | Italic (Markup a)
  | Monospace (Markup a)
  | Markup a :<> [SpanAttr]
  deriving (Eq, Show, Generic)

data SpanAttr = Attr T.Text T.Text
  deriving (Eq, Show, Generic)

instance IsString (Markup T.Text) where
  fromString s = Escaped (toText s)

instance Semigroup (Markup a) where
  a <> b = Concat a b
instance Monoid (Markup T.Text) where
  mempty = Raw ""

render :: MonadIO m => Markup T.Text -> m T.Text
render = go
  where
    go (Raw x)       = pure x
    go (Concat a b)  = liftM2 (<>) (go a) (go b)
    go (Escaped x)   = escapeMarkup x (-1)
    go (Bold x)      = tag "b" [] $ go x
    go (Italic x)    = tag "i" [] $ go x
    go (Monospace x) = tag "tt" [] $ go x
    go (x :<> attrs) = tag "span" attrs $ go x

    tag label attrs inner = do
      inner' <- inner
      return $! "<" <> label <> T.concat (map prAttrs attrs) <> ">" <> inner' <> "</" <> label <> ">"

    prAttrs (Attr k v) = " " <> k <> "=\"" <> v <> "\""

fromShow :: Show a => a -> Markup T.Text
fromShow x = Escaped (toText $ show x)

class IsText a where
  getText :: a -> T.Text

instance IsText String where
  getText = T.pack

instance IsText T.Text where
  getText = id

text :: IsText a => a -> Markup T.Text
text = Escaped . getText
