{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE ExtendedDefaultRules #-}
{-# LANGUAGE NamedDefaults #-}

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

import Control.Applicative ((<|>))
import Control.Arrow (first)
import Control.Monad.IO.Class
import Data.Aeson qualified as A
import Data.Char qualified as C
import Data.Functor
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
  = Concat TextFormat TextFormat
  | VarI !SomeSymbol
  | BuilderL !TB.Builder
  | CharL !Char
  | NL
  | NIL
  deriving (Eq, Ord, Generic)

instance Monoid TextFormat where
  mempty = NIL

instance Read TextFormat where
  readsPrec p inp =
    let res = readsPrec p inp :: [(String, String)]
     in map (first fromString) res

instance Show TextFormat where
  show = T.unpack . ppTextFormat

instance IsString TextFormat where
  fromString s = case parseTextFormat s of
    Right x -> x
    Left err -> error err

instance Semigroup TextFormat where
  NIL <> a = a
  a <> NIL = a
  a <> b = Concat a b

instance A.FromJSON TextFormat where
  parseJSON = A.withText "TextFormat" $ \x ->
    case parseTextFormat $ T.unpack x of
      Right r -> return r
      Left err -> fail err

instance A.ToJSON TextFormat where
  toJSON = A.String . ppTextFormat

ppTextFormat :: TextFormat -> Text
ppTextFormat = TL.toStrict . TB.toLazyText . (<> "|]") . ("[|" <>) . go
  where
    go (VarI (SomeSymbol p)) = "{" <> fromString (symbolVal p) <> "}"
    go (Concat a b) = go a <> go b
    go (BuilderL x) = x
    go (CharL c) = fromString ['\\', c]
    go NL = fromString "\n"
    go NIL = mempty

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
textFormatP = go
  where
    go = (Concat <$> oneP <*> go) RP.+++ (RP.eof $> NIL)
    oneP = escP RP.+++ newlineP RP.+++ litP RP.+++ interpP
    escP = CharL <$> (RP.char '\\' *> RP.get)
    newlineP = NL <$ (RP.char '\n' <|> RP.char '\n')
    litP = BuilderL . fromString <$> RP.munch1 (\c -> c /= '{' && c /= '\\')
    interpP = do
      s <- RP.between (RP.char '{') (RP.char '}') (RP.munch isFmt)
      return $ VarI $ someSymbolVal s

    isFmt = (||) <$> C.isAlphaNum <*> (`elem` ("_-:<>" :: String))

-- | Evaluate a format string.
runTextFormat :: forall f a. (Applicative f, Formatted f a) => TextFormat -> [(String, a)] -> f Text
runTextFormat fmt vals = runTextFormatWith fmt $ \s ->
  maybe (pure mempty) formatted $ L.lookup s vals

-- | Evaluate a format string.
runTextFormatWith ::
  forall f.
  (Applicative f) =>
  TextFormat
  -> (String -> f TB.Builder)
  -> f Text
runTextFormatWith fmt fn = TL.toStrict . TB.toLazyText <$> runTextFormatWith' fmt fn

runTextFormatWith' ::
  forall f.
  (Applicative f) =>
  TextFormat
  -> (String -> f TB.Builder)
  -> f TB.Builder
runTextFormatWith' fmt fn = go fmt
  where
    go (VarI (SomeSymbol proxy)) = fn (symbolVal proxy)
    go (Concat a b) = liftA2 (<>) (go a) (go b)
    go (BuilderL x) = pure x
    go (CharL c) = pure (fromString [c])
    go NL = pure (fromString ['\r'])
    go NIL = pure mempty

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
instance {-# OVERLAPPABLE #-} (Applicative f, Formatted f a) => Formatted f (Maybe a) where
  formatted = maybe (pure mempty) formatted

-- | If the context is a 'Monad' this instance is possible.
instance {-# OVERLAPPABLE #-} (Monad f, Formatted f a) => Formatted f (f a) where
  formatted ma = ma >>= formatted

instance {-# OVERLAPPABLE #-} (MonadIO f, Formatted IO a) => Formatted f (IO a) where
  formatted ma = liftIO $ ma >>= formatted

-- | Trivial text output
instance (Applicative f) => Formatted f TB.Builder where formatted = pure

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
