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

import Graphics.Rendering.Pango (escapeMarkup)
import Data.Text qualified as T

escapePangoMarkup :: Text -> Text
escapePangoMarkup = escapeMarkup

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

render :: Markup T.Text -> T.Text
render = go
  where
    go (Concat a b) = go a <> go b
    go (Raw x) = x
    go (Escaped x) = escapePangoMarkup x
    go (Bold x) = "<b>" <> go x <> "</b>"
    go (Italic x) = "<i>" <> go x <> "</i>"
    go (Monospace x) = "<tt>" <> go x <> "</tt>"
    go (x :<> attrs) = "<span" <> T.concat (map prAttrs attrs) <> ">" <> go x <> "</span>"

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
