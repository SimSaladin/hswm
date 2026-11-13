{-# LANGUAGE DefaultSignatures #-}

-- |
-- Module      : Waybar.CFFI.Plugin.TextFormat
-- Description : Text formatting helpers
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module Waybar.CFFI.Plugin.TextFormat where

import GI.GLib (markupEscapeText)

import Control.Applicative (asum, (<|>))
import Control.Arrow (first)
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
import Text.ParserCombinators.ReadP qualified as RP

markupEscape :: (MonadIO m) => Text -> m Text
markupEscape text = markupEscapeText (text <> "\0") (-1)

data TextFormat
  = TFMany [TextFormat]
  | TFLit !TB.Builder
  | TFInterp !SomeSymbol
  deriving (Eq, Ord, Show, Generic)

instance Read TextFormat where
  readsPrec p inp =
    let res = readsPrec p inp :: [(String, String)]
     in map (first fromString) res

instance IsString TextFormat where
  fromString s = case parseTextFormat s of
    Right x -> x
    Left err -> error err

instance A.FromJSON TextFormat where
  parseJSON = A.withText "TextFormat" $ \x ->
    case parseTextFormat $ T.unpack x of
      Right r -> return r
      Left err -> fail err

instance A.ToJSON TextFormat where
  toJSON = A.String . ppTextFormat

ppTextFormat :: TextFormat -> Text
ppTextFormat = TL.toStrict . TB.toLazyText . go
  where
    go (TFMany xs) = mconcat $! map go xs
    go (TFLit x) = x
    go (TFInterp (SomeSymbol p)) = "{" <> fromString (symbolVal p) <> "}"

parseTextFormat :: String -> Either String TextFormat
parseTextFormat s = case reverse $ RP.readP_to_S textFormatP s of
  (x, "") : _ -> Right x
  (_, l) : _ -> Left ("invalid format string: " ++ s ++ ". Unparseable: " ++ l)
  _ -> Left ("invalid format string: " ++ s)

-- | Parse a text format to its atoms.
--
-- Special character "{" starts an interpolation (until a "}").
-- Use "\{" to output literal "{".
textFormatP :: RP.ReadP TextFormat
textFormatP = (TFMany <$> RP.many (litP RP.+++ interpP)) <* RP.eof
  where
    litP = TFLit . fromString . mconcat <$> RP.many1 (RP.munch1 (\c -> c /= '{' && c /= '\\') <|> esclit)
    esclit = RP.char '\\' *> fmap pure RP.get
    interpP = do
      s <- RP.between (RP.char '{') (RP.char '}') (RP.munch (/= '}'))
      return $ TFInterp $ someSymbolVal s

-- | Evaluate a format string.
runTextFormatWith :: forall m. (Monad m) => TextFormat -> (String -> m TB.Builder) -> m Text
runTextFormatWith fmt fn = TL.toStrict . TB.toLazyText <$> go fmt
  where
    go (TFLit x) = pure x
    go (TFMany xs) = mconcat <$> mapM go xs
    go (TFInterp (SomeSymbol proxy)) = fn (symbolVal proxy)

-- | Evaluate a format string.
runTextFormat :: forall m a. (Monad m, Formatted m a) => TextFormat -> [(String, m a)] -> m Text
runTextFormat fmt vals = runTextFormatWith fmt $ \s ->
  maybe (pure mempty) (>>= formatted) $ L.lookup s vals

-- | Class of things that can be formatted as text in context 'f'.
class Formatted f a where
  formatted :: a -> f TB.Builder
  formattedList :: [a] -> f TB.Builder
  default formattedList :: (Applicative f) => [a] -> f TB.Builder
  formattedList = fmap (mconcat . L.intersperse "\r") . traverse formatted

-- | The simplest instance ('id').
instance (Applicative f) => Formatted f (f TB.Builder) where
  formatted = id
  formattedList = fmap mconcat . sequenceA

-- | 'Maybe' for nullable values (no output when empty).
instance (Applicative f, Formatted f a) => Formatted f (Maybe a) where
  formatted = maybe (pure mempty) formatted

-- | If the context is a 'Monad' this instance is possible.
instance (Monad f, Formatted f a) => Formatted f (f a) where
  formatted ma = ma >>= formatted

-- | Trivial text output
instance (Applicative f) => Formatted f String where formatted = pure . TB.fromString

-- | Trivial text output
instance (Applicative f) => Formatted f Text where formatted = pure . TB.fromText

-- | Trivial text output
instance (Applicative f) => Formatted f TL.Text where formatted = pure . TB.fromLazyText

-- | Trivial text output
instance (Applicative f) => Formatted f ShortText where formatted = formatted . TS.toText

--- | Integers are formatted decimal.
instance (Applicative f) => Formatted f Int where formatted = pure . TB.Int.decimal
