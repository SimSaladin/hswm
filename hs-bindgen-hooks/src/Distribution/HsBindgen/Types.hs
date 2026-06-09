{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE NoFieldSelectors       #-}
{-# LANGUAGE PatternSynonyms        #-}
{-# LANGUAGE TemplateHaskell        #-}
{-# LANGUAGE TypeData               #-}
{-# LANGUAGE ViewPatterns           #-}

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

import           Distribution.HsBindgen.Hooks (ExtBindingSpec, HsBindGen, PCRE)
import           Distribution.HsBindgen.Lens (HasExcludeByDeclName, HasExtBindingSpecs)
import qualified Distribution.HsBindgen.Lens as I
import           Distribution.ModuleName (ModuleName)
import           Distribution.Simple.SetupHooks (Location)

import           Control.Applicative
import           Data.Char
import           Data.Default
import           Data.Functor
import qualified Data.List as L
import qualified Data.Map.Strict as M
import           Data.Monoid
import           Data.Proxy
import           Data.Set (Set)
import           Data.String
import           Data.Typeable
import           Distribution.Compat.Binary
import qualified Distribution.Compat.CharParsing as P
import           Distribution.Parsec
import           Distribution.Pretty
import           Distribution.Utils.Generic
import           Distribution.Utils.Path
import           GHC.Fingerprint
import           GHC.Generics (Generic)
import           Language.Haskell.TH
import           Lens.Micro
import           Lens.Micro.GHC ()
import           Lens.Micro.TH
import qualified Text.PrettyPrint as PP
import Data.Maybe
import Data.Coerce

-- * Stability

data Stability = Unknown | Unstable | Staging | Stable
  deriving (Eq, Ord, Show, Generic, Binary)

instance Default Stability where
  def = Unknown

-- * Components (Fingerprint)

getFpr :: forall {k} (a :: k). Typeable a => Proxy a -> Fingerprint
getFpr _ = typeRepFingerprint (typeRep (undefined :: proxy (a :: k)))

-- * Build targes

type data ProtocolResult where
  InfoModule    :: ProtocolResult
  WrapInterface :: ClientOrServer -> ProtocolResult
  ScannerOutput :: ClientOrServer -> ScannerResult -> ProtocolResult

type data ClientOrServer = Client | Server

type data ScannerResult where
  EnumBindings   :: ScannerResult
  PrivateSource  :: ScannerResult
  ClientBindings :: ScannerResult
  ServerBindings :: ScannerResult

type ProtoComponent = Fingerprint

allComponents, bindgenComponents :: [ProtoComponent]
allComponents = [ InfoModule, WrapClient, WrapServer, EnumBindings, ClientBindings, ServerBindings ]
bindgenComponents = [ EnumBindings, ClientBindings, ServerBindings ]

pattern EnumBindings, ClientBindings, ServerBindings, InfoModule, WrapClient, WrapServer :: ProtoComponent
pattern InfoModule     <- ((== getFpr (Proxy @InfoModule)) -> True) where
        InfoModule     =       getFpr (Proxy @InfoModule)
pattern WrapClient     <- ((== getFpr (Proxy @(WrapInterface Client))) -> True) where
        WrapClient     =       getFpr (Proxy @(WrapInterface Client))
pattern WrapServer     <- ((== getFpr (Proxy @(WrapInterface Server))) -> True) where
        WrapServer     =       getFpr (Proxy @(WrapInterface Server))
pattern EnumBindings   <- ((== getFpr (Proxy @EnumBindings)) -> True) where
        EnumBindings   =       getFpr (Proxy @EnumBindings)
pattern ClientBindings <- ((== getFpr (Proxy @ClientBindings)) -> True) where
        ClientBindings =       getFpr (Proxy @ClientBindings)
pattern ServerBindings <- ((== getFpr (Proxy @ServerBindings)) -> True) where
        ServerBindings =       getFpr (Proxy @ServerBindings)

-- * ProtocolID, ProtocolSpec

newtype ProtocolVersion = ProtocolVersion { unwrap :: Int }
  deriving stock (Generic)
  deriving newtype (Eq, Ord, Show, Binary)

data ProtocolId = ProtocolId
  { name      :: String
  , stability :: Stability
  , version   :: ProtocolVersion
  } deriving (Eq, Ord, Show, Generic, Binary)

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
  , qualifiedImports    :: Set (ModuleName, String)
  } deriving (Eq, Show, Generic, Binary)

type ProtocolConfig = ProtocolSpecX BindConfig

type ProtocolSpec = ProtocolSpecX HsBindGen

-- * BindConfig

data BindConfig = BindConfig
  { bcMainHeaders     :: [Location]
  , bcDepends         :: [String] -- name
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

-- * ProtocolScannerOptions

data ProtocolScannerOptions = ProtocolScannerOptions
  { optionProtocolDirs     :: [SymbolicPath Pkg ('Dir DataDir)] -- ^ Additional paths in which to look for the the 'protocolXML' file.
  , optionDisabled         :: Set ProtoComponent
  , optionModuleName       :: ProtocolSpec -> ProtoComponent -> ModuleName
  , optionCustom           :: Endo ProtocolSpec
  } deriving (Generic)

-- * Lenses

concat <$> mapM (makeLensesWith (classyRules & lensClass .~ const Nothing & lensField .~ (\_ _ n ->
  case nameBase n of
    b@(x : xs) -> [MethodName (mkName $ "Has" ++ toUpper x : xs) (mkName b)]
    _ -> error "empty")))
    [ ''BindConfig
    , ''ProtocolSpecX
    , ''ProtocolScannerOptions
    , ''Stability
    -- , ''ProtocolId
    ]

concat <$> mapM (makeLensesWith (classyRules & lensClass .~ const Nothing & lensField .~ (\_ _ n ->
  case nameBase n of
    b@(x : xs) -> [MethodName (mkName $ "Has" ++ toUpper x : xs) (mkName b)]
    _ -> error "empty")))
    [ ''ProtocolId
    ]

instance Pretty ProtocolSpec where
  pretty c = ("Proto: " <> PP.text c.fullName) PP.$+$
    PP.nest 2 (PP.vcat $ PP.punctuate "\n"
    [ "Module:" PP.<+> pretty m PP.$+$ pretty bgen
      | (k, m) <- M.toList c.computedModuleNames, Just bgen <- [c ^? bindGens . ix k]
    ]) PP.<> "\n"

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
      (dirs, (parts, (mstability, ver, suffix))) <- parse
      let spec = ProtocolSpec
            { fullName = L.intercalate "-" parts ++ maybe "" stability' mstability ++ maybe "" version' ver
            , baseName = L.intercalate "-" (drop 1 parts)
            , category = L.intercalate "-" (take 1 parts)
            , version = ver
            , stability = maybe Unknown id mstability
            , protocolXML = normaliseSymbolicPath $
                if take 1 dirs /= [""]
                   then makeRelativePathEx (L.intercalate "/" dirs) </> makeRelativePathEx (spec.fullName ++ suffix)
                   else makeRelativePathEx (spec.fullName ++ suffix)
            , bindGens = M.fromList [ (k, def) | k <- bindgenComponents ]
            , disabled = mempty
            , protocolDirs = [ normaliseSymbolicPath $ makeSymbolicPath (L.intercalate "/" dirs) | take 1 dirs == [""] ]
            , computedModuleNames = mempty
            , computedComponents = mempty
            , qualifiedImports = mempty
            }
      return spec
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

parseWaylandProtosPath str = case explicitEitherParsec parseWaylandProtosPathP str of
                               Right k@(s, n, v) -> (ProtocolId n s v, (fromString $ "wayland-" ++ n ++ ".xml")
                                 { stability = s
                                 , category = "wayland"
                                 , baseName = n
                                 , version = Just $ coerce v
                                 , protocolXML = makeRelativePathEx str
                                 , protocolDirs = []
                                 })
                               Left e -> error e

-- | To parse "stable/name/name-vN.xml"
parseWaylandProtosPathP :: forall m. CabalParsing m => m (Stability, String, ProtocolVersion)
parseWaylandProtosPathP = do
  stab <- pStability <* P.munch1 (== '/')
  name <- pName <* P.munch1 (== '/')
  _ <- P.string name
  _ <- P.optional (P.try $ P.optional (P.try $ P.char '-') *> pStability)
  mver <- P.optional (P.try $ P.optional (P.try $ P.char '-') *> pVersion)
  _ <- P.string ".xml"
  return (stab, name, fromMaybe (ProtocolVersion 1) mver)

  where
      -- "v1", "v2", etc.
      pVersion :: m ProtocolVersion
      pVersion = P.char 'v' *> fmap ProtocolVersion P.integral P.<?> "Version"

      -- "stable", "unstable", etc.
      pStability :: m Stability
      pStability = P.choice [ P.try $ P.string s $> v | (v, s) <- zip [ Stable, Unstable, Staging ] [ "stable", "unstable", "staging" ] ]
        P.<?> "Stability"

      pName :: m String
      pName = P.munch1 (/= '/') P.<?> "Name part"
