{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE NoFieldSelectors #-}
{-# LANGUAGE TypeData #-}


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

import           Distribution.Simple.SetupHooks (Location)
import           Distribution.HsBindgen.Hooks (HsBindGen, ExtBindingSpec, PCRE)
import           Distribution.HsBindgen.Lens (HasExtBindingSpecs, HasExcludeByDeclName)
import qualified Distribution.HsBindgen.Lens as I
import           Distribution.ModuleName (ModuleName, components)

import           Control.Applicative
import           Data.Char
import           Data.Functor
import qualified Data.List as L
import qualified Data.Map.Strict as M
import           Data.Set (Set)
import           Data.String
import           Distribution.Compat.Binary
import qualified Distribution.Compat.CharParsing as P
import           Distribution.Parsec
import           Distribution.Utils.Generic
import Distribution.Pretty
import qualified Text.PrettyPrint as PP
import           Distribution.Utils.Path
import           GHC.Fingerprint
import           GHC.Generics (Generic)
import Data.Default
import Data.Typeable
import Data.Proxy
import           Lens.Micro
import           Lens.Micro.GHC ()
import Lens.Micro.TH
import Language.Haskell.TH
import Data.Monoid

getFpr :: forall {k} (a :: k). Typeable a => Proxy a -> Fingerprint
getFpr _ = typeRepFingerprint (typeRep (undefined :: proxy (a :: k)))

data Stability = Unstable | Staging | Stable | Unknown
  deriving (Eq, Ord, Show, Generic, Binary)

instance Default Stability where
  def = Unknown

type data ScannerResult where
  EnumBindings   :: ScannerResult
  PrivateSource  :: ScannerResult
  ClientBindings :: ScannerResult
  ServerBindings :: ScannerResult

type data ProtocolResult where
  InfoModule    :: ProtocolResult
  WrapInterface :: ClientOrServer -> ProtocolResult
  ScannerOutput :: ClientOrServer -> ScannerResult -> ProtocolResult

type data ClientOrServer = Client | Server

type ProtoComponent = Fingerprint

pattern EnumBindings, ClientBindings, ServerBindings, InfoModule :: ProtoComponent

pattern ClientBindings <- ((== getFpr (Proxy @ClientBindings)) -> True) where
        ClientBindings =       getFpr (Proxy @ClientBindings)

pattern ServerBindings <- ((== getFpr (Proxy @ServerBindings)) -> True) where
        ServerBindings =       getFpr (Proxy @ServerBindings)

pattern EnumBindings   <- ((== getFpr (Proxy @EnumBindings)) -> True) where
        EnumBindings   =       getFpr (Proxy @EnumBindings)

pattern InfoModule   <- ((== getFpr (Proxy @InfoModule)) -> True) where
        InfoModule   =       getFpr (Proxy @InfoModule)

pattern WrapClient, WrapServer :: ProtoComponent
pattern WrapClient   <- ((== getFpr (Proxy @(WrapInterface Client))) -> True) where
        WrapClient   =       getFpr (Proxy @(WrapInterface Client))
pattern WrapServer   <- ((== getFpr (Proxy @(WrapInterface Server))) -> True) where
        WrapServer   =       getFpr (Proxy @(WrapInterface Server))

type ProtocolId = String

data ProtocolSpecX bindgen = ProtocolSpec
  { fullName            :: String -- ^ @river-window-management-v1@
  , baseName            :: String -- ^ @window-management@
  , category            :: String -- ^ @wayland@, @river@, etc.
  , version             :: Maybe Int -- ^ Possible @-v<n>@ suffix
  , stability           :: Stability
  , protocolXML         :: RelativePath DataDir 'File
  -- ^ Relative path of the protocol specification file (.xml)
  , protocolDirs        :: [SymbolicPath Pkg ('Dir DataDir)]
  -- ^ Additional paths in which to look for the the 'protocolXML' file.
  , disabled            :: Set ProtoComponent
  , bindGens            :: M.Map ProtoComponent bindgen
  , computedModuleNames :: M.Map ProtoComponent ModuleName
  , computedComponents  :: Set ProtoComponent
  } deriving (Eq, Show, Generic, Binary)

type ProtocolSpec = ProtocolSpecX HsBindGen

type ProtocolConfig = ProtocolSpecX BindConfig

data BindConfig = BindConfig
  { bcMainHeaders     :: [Location]
  , bcDepends         :: [ProtocolId]
  , bcCustom          :: Endo HsBindGen
  , extBindingSpecs   :: [ExtBindingSpec]
  , excludeByDeclName :: PCRE
  } deriving (Generic, Default)

instance Show BindConfig where
  show x = "BindConfig{" ++
    show x.bcMainHeaders ++ ", " ++
    show x.bcDepends ++ ", " ++
    -- show x.bcCustom ++ ", " ++
    show x.extBindingSpecs ++ ", " ++
    show x.excludeByDeclName
    ++ "}"

data ProtocolScannerOptions = ProtocolScannerOptions
  { optionProtocolDirs     :: [SymbolicPath Pkg ('Dir DataDir)] -- ^ Additional paths in which to look for the the 'protocolXML' file.
  , optionDisabled         :: Set ProtoComponent
  , optionModuleName       :: ProtocolSpec -> ProtoComponent -> ModuleName
  , optionCustom           :: Endo ProtocolSpec
  } deriving (Generic)


concat <$> mapM (makeLensesWith (classyRules & lensClass .~ const Nothing & lensField .~ (\_ _ n ->
  case nameBase n of
    b@(x : xs) -> [MethodName (mkName $ "Has" ++ toUpper x : xs) (mkName b)]
    _ -> error "empty")))
    [ ''BindConfig
    , ''ProtocolSpecX
    , ''ProtocolScannerOptions
    ]

instance Pretty ProtocolSpec where
  pretty c = ("Proto: " <> PP.text c.fullName) PP.$+$
    PP.nest 2 (PP.vcat $ PP.punctuate "\n"
    [ "Module:" PP.<+> pretty m PP.$+$ pretty bgen
      | (k, m) <- M.toList c.computedModuleNames, Just bgen <- [c ^? bindGens . ix k]
    ]) PP.<> "\n"

allComponents = [ InfoModule, WrapClient, WrapServer, EnumBindings, ClientBindings, ServerBindings ]
bindgenComponents = [ EnumBindings, ClientBindings, ServerBindings ]

instance Default ProtocolScannerOptions where
  def = ProtocolScannerOptions
    { optionProtocolDirs = mempty
    , optionCustom       = Endo id
    , optionDisabled     = mempty
    , optionModuleName   =
      \spec ->
        let base = getRoot spec
            nameFor c = case c of
              InfoModule     -> [ "Path_" ++ map fixchar spec.fullName ]
              WrapClient     -> base ++ pure "Client"
              WrapServer     -> base ++ pure "Server"
              EnumBindings   -> base ++ pure "Enums"
              ClientBindings -> nameFor WrapClient ++ pure "Generated"
              ServerBindings -> nameFor WrapServer ++ pure "Generated"
              _              -> error $ "unknown component: " ++ show c
         in fromString . L.intercalate "." . nameFor
    } where
      fixchar '-' = '_'
      fixchar   c = c
      getRoot spec =
        let subMod =
              case (spec ^. stability, spec ^. version) of
                (Stable,   Nothing) -> []
                (Unknown,  Nothing) -> []
                (Stable,    Just v) -> [ 'V' : show v ]
                (Staging,  Nothing) -> [ "Staging" ]
                (Staging,   Just v) -> [ "Staging", 'V' : show v ]
                (Unknown,   Just v) -> [ "Staging", 'V' : show v ]
                (Unstable, Nothing) -> [ "Unstable" ]
                (Unstable,  Just v) -> [ "Unstable", 'V' : show v ]
         in
           map (_head %~ toUpper) $
              (spec ^. category . to getCat) ++ (spec ^. baseName . to getName) ++ subMod

      getCat "wayland" = [ "WL" ]
      getCat   "river" = [ "River" ]
      getCat       foo = [ "WL", foo ]

      getName :: String -> [String]
      getName       [] = []
      getName (a : as) = [ toUpper a : go as ]
        where
          go ('-' : x : xs) = toUpper x : go xs
          go       (x : xs) = x : go xs
          go             [] = []

instance IsString ProtocolConfig where
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
instance Parsec ProtocolConfig where
  parsec :: forall m. CabalParsing m => m ProtocolConfig
  parsec = do
      P.spaces
      (dirs, (parts, (mstability, version, suffix))) <- parse
      let fullName = L.intercalate "-" parts ++ maybe "" stability' mstability ++ maybe "" version' version
          category = L.intercalate "-" (take 1 parts)
          baseName = L.intercalate "-" (drop 1 parts)
      return ProtocolSpec
        { fullName
        , baseName
        , category
        , version
        , stability = maybe Unknown id mstability
        , protocolXML = normaliseSymbolicPath $
            if take 1 dirs /= [""]
               then makeRelativePathEx (L.intercalate "/" dirs) </> makeRelativePathEx (fullName ++ suffix)
               else makeRelativePathEx (fullName ++ suffix)
        , bindGens = M.fromList [ (k, def) | k <- bindgenComponents ]
        , disabled = mempty
        , protocolDirs = [ normaliseSymbolicPath $ makeSymbolicPath (L.intercalate "/" dirs) | take 1 dirs == [""] ]
        , computedModuleNames = mempty
        , computedComponents = mempty
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
      pStability = P.choice [ P.string s $> v | (v, s) <- zip [ Stable, Unstable, Staging ] [ "stable", "unstable", "staging" ] ]
        P.<?> "Stability"

      -- "v1", "v2", etc.
      pVersion :: m Int
      pVersion = P.char 'v' *> P.integral P.<?> "Version"

      stability' x = '-' : map toLower (show x)
      version'   x = '-' : 'v' : show x
