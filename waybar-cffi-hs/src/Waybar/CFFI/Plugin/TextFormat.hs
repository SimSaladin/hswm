-- |
-- Module      : Waybar.CFFI.Plugin.TextFormat
-- Description : Text formatting helpers
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module Waybar.CFFI.Plugin.TextFormat where

import Control.Monad.IO.Class
import Data.Aeson qualified as A
import Data.List qualified as L
import Data.String (IsString (..))
import Data.Text (Text)
import Data.Text qualified as T
import Data.Text.Lazy qualified as TL
import Data.Text.Lazy.Builder qualified as TB
import Data.Text.Lazy.Builder.Int qualified as TB.Int
import Data.Text.Short (ShortText)
import Data.Text.Short qualified as TS
import GHC.Generics (Generic)
import GHC.TypeLits
import GI.GLib (markupEscapeText)
import Text.ParserCombinators.ReadP qualified as RP

markupEscape :: (MonadIO m) => Text -> m Text
markupEscape text = markupEscapeText (text <> "\0") (-1)

data TextFormat
  = TFMany [TextFormat]
  | TFLit !Text
  | TFInterp !SomeSymbol
  deriving (Eq, Ord, Show, Read, Generic)

instance IsString TextFormat where
  fromString s = case reverse $ RP.readP_to_S parseTextFormat s of
    (x, "") : _ -> x
    _ -> error $ "TextFormat: no parse: " ++ s

instance A.FromJSON TextFormat where
  parseJSON = A.withText "TextFormat" $ \x ->
    case reverse $ RP.readP_to_S parseTextFormat $ T.unpack x of
      (r, "") : _ -> return r
      _ -> fail $ "no parse: " ++ show x

instance A.ToJSON TextFormat where
  toJSON = A.String . ppTextFormat

ppTextFormat :: TextFormat -> Text
ppTextFormat = go
  where
    go (TFMany xs) = mconcat $! map go xs
    go (TFLit x) = x
    go (TFInterp (SomeSymbol p)) = "{" <> T.pack (symbolVal p) <> "}"

parseTextFormat :: RP.ReadP TextFormat
parseTextFormat = (TFMany <$> RP.many (lit RP.+++ interp)) <* RP.eof
  where
    lit = TFLit . T.pack <$> RP.munch1 (/= '{')
    interp = do
      s <- RP.between (RP.char '{') (RP.char '}') (RP.munch (/= '}'))
      return $ TFInterp $ someSymbolVal s

runTextFormatWith :: forall m. (Monad m) => TextFormat -> (String -> m TB.Builder) -> m Text
runTextFormatWith fmt fn = TL.toStrict . TB.toLazyText <$> go fmt
  where
    go (TFLit x) = pure (TB.fromText x)
    go (TFMany xs) = mconcat <$> mapM go xs
    go (TFInterp (SomeSymbol proxy)) = fn (symbolVal proxy)

runTextFormat :: forall m a. (Monad m, Formatted m a) => TextFormat -> [(String, m a)] -> m Text
runTextFormat fmt vals = runTextFormatWith fmt $ \s ->
  maybe (pure mempty) (>>= formatted) $ L.lookup s vals

class Formatted f a where
  formatted :: a -> f TB.Builder

instance (Applicative f) => Formatted f String where formatted = pure . TB.fromString
instance (Applicative f) => Formatted f Text where formatted = pure . TB.fromText
instance (Applicative f) => Formatted f TL.Text where formatted = pure . TB.fromLazyText
instance (Applicative f) => Formatted f ShortText where formatted = formatted . TS.toText
instance (Applicative f) => Formatted f Int where formatted = pure . TB.Int.decimal

instance (Applicative f, Formatted f a) => Formatted f (Maybe a) where
  formatted = maybe (pure mempty) formatted

instance Formatted f (f TB.Builder) where
  formatted = id

instance (Monad f, Formatted f a) => Formatted f (f a) where
  formatted ma = ma >>= formatted
