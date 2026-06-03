-- |
-- Module      : Distribution.HsBindgen.Types
-- Description : Types
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Distribution.HsBindgen.Types where

import           Distribution.HsBindgen.Hooks (HsBindGen)

import           Control.Applicative
import           Data.Char
import           Data.Functor
import qualified Data.List as L
import qualified Data.Map.Strict as M
import           Data.String
import           Distribution.Compat.Binary
import qualified Distribution.Compat.CharParsing as P
import           Distribution.Parsec
import           Distribution.Utils.Generic
import           Distribution.Utils.Path
import           GHC.Fingerprint
import           GHC.Generics

data Stability = Unstable | Staging | Stable
  deriving (Eq, Ord, Show, Generic, Binary)

data ProtocolSpec = ProtocolSpec
  { fullName      :: String -- ^ @river-window-management-v1@
  , baseName      :: String -- ^ @window-management@
  , category      :: String -- ^ @wayland@, @river@, etc.
  , version       :: Maybe Int -- ^ Possible @-v<n>@ suffix
  , stability     :: Stability
  , protocolXML   :: RelativePath DataDir 'File
  -- ^ Relative path of the protocol specification file (.xml)
  , protocolDirs  :: [SymbolicPath Pkg ('Dir DataDir)]
  -- ^ Additional paths in which to look for the the 'protocolXML' file.
  , bindGens      :: M.Map Fingerprint HsBindGen
  } deriving (Eq, Show, Generic, Binary)

instance Semigroup ProtocolSpec where
  a <> b = ProtocolSpec
    { fullName     = if b.fullName == "" then a.fullName else b.fullName
    , baseName     = if b.baseName == "" then a.baseName else b.baseName
    , category     = if b.category == "" then a.category else b.category
    , version      = a.version
    , stability    = a.stability
    , protocolXML  = if b.protocolXML == makeRelativePathEx "" then a.protocolXML else b.protocolXML
    , protocolDirs = a.protocolDirs <> b.protocolDirs
    , bindGens     = a.bindGens <> b.bindGens
    }

instance Monoid ProtocolSpec where
  mempty = ProtocolSpec "" "" "" Nothing Unstable (makeRelativePathEx "") [] mempty

instance IsString ProtocolSpec where
  fromString str = case eitherParsec str of
                     Right x -> x
                     Left err -> error $ "while parsing \"" ++ str ++ "\": " ++ err

-- |
-- @
-- wayland-viewporter.xml
--
-- protocol/wlr-input-method-unstable-v2.xml
--    =>
--    fullName  : "wlr-input-method-unstable-v2.xml"
--    category  : "wlr"
--    baseName  : "input-method"
--    stability : Unstable
--    version   : Just 2
--    xmlPath   : "protocol/wlr-input-method-unstable-v2.xml"
-- @
instance Parsec ProtocolSpec where
  parsec :: forall m. CabalParsing m => m ProtocolSpec
  parsec = do
      P.spaces
      (dirs, (parts, (mstability, version, suffix))) <- parse
      let fullName = L.intercalate "-" parts ++ maybe "" stability' mstability ++ maybe "" version' version
          category = L.intercalate "-" (take 1 parts)
          baseName = L.intercalate "-" (drop 1 parts)
      return mempty
        { fullName
        , baseName
        , category
        , version
        , stability = maybe (if version == Nothing then Stable else Staging) id mstability
        , protocolXML = normaliseSymbolicPath $
            if take 1 dirs /= [""]
               then makeRelativePathEx (L.intercalate "/" dirs) </> makeRelativePathEx (fullName ++ suffix)
               else makeRelativePathEx (fullName ++ suffix)
        , protocolDirs = [ normaliseSymbolicPath $ makeSymbolicPath (L.intercalate "/" dirs) | take 1 dirs == [""] ]
        }
    where
      parse = do
          dirs <- pDirs
          r <- pFileBase
          pure (dirs, r)

      pFileBase = do
        let go xs = P.try ((xs,) <$> nameEnd) <|> ((pNamePart <* P.optional (P.try (P.char '-'))) >>= \x -> go (xs ++ [x]))
        go []

      -- "[-STABILITY][-VERSION].xml"
      nameEnd = (,,)
        <$> P.optional (P.try $ P.optional (P.try $ P.char '-') *> pStability)
        <*> P.optional (P.try $ P.optional (P.try $ P.char '-') *> pVersion)
        <*> P.string ".xml"

      -- "[foo/[bar/[...]]]"
      pDirs :: m [FilePath]
      pDirs = P.many (P.try pDirectory)

      -- "foo/"
      pDirectory :: m FilePath
      pDirectory = P.munch (/= '/') <* P.munch1 (== '/') P.<?> "Directory"

      -- "[[:alnum:]]+"
      pNamePart :: m String
      pNamePart = P.munch1 isAsciiAlphaNum P.<?> "Name part"

      -- "stable", "unstable", etc.
      pStability :: m Stability
      pStability = P.choice [ P.string s $> v | (v, s) <- zip [ Stable, Unstable, Staging ] [ "stable", "unstable", "staging" ] ] P.<?> "Protocol Stability"

      -- "v1", "v2", etc.
      pVersion :: m Int
      pVersion = P.char 'v' *> P.integral P.<?> "Protocol Version"

      stability' x = '-' : map toLower (show x)
      version'   x = '-' : 'v' : show x
