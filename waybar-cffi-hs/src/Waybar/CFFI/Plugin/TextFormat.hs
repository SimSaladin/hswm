-- |
-- Module      : Waybar.CFFI.Plugin.TextFormat
-- Description : Text formatting helpers
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Waybar.CFFI.Plugin.TextFormat where

import qualified Data.Text as T
import           Data.Text (Text)
import           Data.Maybe
import qualified Data.Aeson as A
import qualified Data.List as L
import qualified Text.ParserCombinators.ReadP as RP
import           GHC.TypeLits
import           GHC.Generics (Generic)
import           Data.String (IsString(..))

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
ppTextFormat = go where
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

runTextFormat :: forall m. (Monad m) => TextFormat -> [(String, m Text)] -> m Text
runTextFormat fmt vals = go fmt
  where
    go (TFLit x) = pure x
    go (TFMany xs) = mconcat <$> mapM go xs
    go (TFInterp ss) = f ss

    f (SomeSymbol proxy) = fromMaybe (pure "") $ L.lookup (symbolVal proxy) vals
