{-# LANGUAGE DerivingVia            #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MagicHash              #-}
{-# LANGUAGE NoFieldSelectors       #-}
{-# LANGUAGE PatternSynonyms        #-}
{-# LANGUAGE TemplateHaskell        #-}
{-# LANGUAGE TypeData               #-}
{-# LANGUAGE TypeFamilies           #-}
{-# LANGUAGE UnboxedTuples          #-}
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

import           Distribution.HsBindgen.Utils

import           Distribution.Compat.Binary
import qualified Distribution.Compat.CharParsing as P
import           Distribution.ModuleName (ModuleName)
import           Distribution.Parsec
import           Distribution.Pretty
import           Distribution.Simple.Flag
import           Distribution.Simple.SetupHooks (LocalBuildConfig, Location(..),
                                                 PackageBuildDescr, location)
import           Distribution.Utils.Generic
import           Distribution.Utils.Path

import           Control.Applicative
import qualified Data.Aeson as A
import           Data.Char
import           Data.Default
import           Data.Foldable
import           Data.Functor
import qualified Data.List as L
import qualified Data.Map.Strict as M
import           Data.Maybe
import           Data.Monoid
import           Data.Set (Set)
import           Data.String
import qualified GHC.Exts as GHC (IsList(..))
import           GHC.Generics (Generic, Generic1(..), Generically(..))
import           GHC.Stack
import qualified Text.PrettyPrint as PP

-- | Settings for a hs-bindgen-cli invocation.
data HsBindGen = HsBindGen
  { headers                        :: [Location] -- ^ Header files
  , includeDirs                    :: [SymbolicPath Pkg ('Dir Include)] -- ^ Include search directories (@-I@)
  , defineMacros                   :: M.Map String String -- ^ -D k=v
  , extBindingSpecs                :: [ExtBindingSpec]
  , moduleName                     :: Flag ModuleName -- ^ Output module name
  , uniqueId                       :: Flag String
  , omitFieldPrefixes              :: Flag Bool
  , programSlicing                 :: Flag Bool
  , cStandard                      :: Flag String
  , bindingSpec                    :: Flag BSpec
  , selectDeprecated               :: Flag Bool
  , selectFromMainHeaderDirs       :: Flag Bool
  , genGlobal                      :: Flag Bool
  , hasPointer, hasSafe, hasUnsafe :: Flag Bool
  , createOutputDirs               :: Flag Bool
  , overwriteFiles                 :: Flag Bool
  , disableStdlib                  :: Flag Bool
  , builtinIncludeDir              :: Flag BuiltinIncludeDir
  , selectHeaders, excludeHeaders  :: PCRE -- [SymbolicPath Include 'File]
  , selectDecls, excludeDecls      :: PCRE -- ^ PCRE
  , extraArgs                      :: [String]  -- ^ Arbitrary additional arguments for @hs-bindgen-cli@
  }
  deriving stock (Eq, Ord, Show, Generic)
  deriving anyclass (Binary, Default, A.FromJSON, A.ToJSON)
  deriving (Semigroup, Monoid) via Generically HsBindGen

-- | E.g. clang or disable
newtype BuiltinIncludeDir = BuiltinIncludeDir { unwrap :: String }
  deriving stock (Eq, Ord, Generic)
  deriving newtype (Show, Binary, A.ToJSON, A.FromJSON)

instance Default BuiltinIncludeDir where
  def = BuiltinIncludeDir "clang"

instance IsString BuiltinIncludeDir where
  fromString = BuiltinIncludeDir

data BindConfig = BindConfig
  { bcBindGen :: HsBindGen
  , bcDepends :: [String] -- name
  }
  deriving stock (Eq, Ord, Show, Generic)
  deriving anyclass (Binary, Default)
  deriving (Semigroup, Monoid) via Generically BindConfig

-- | Value for headers
makeHeader :: FilePath -> Location
makeHeader = makeLocation . makeSymbolicPath @Pkg @File

-- * BindingSpec

-- | External binding spec (file or module reference)
data ExtBindingSpec
  = BFile !(RelativePath Build File)
  -- ^ File reference (static). Relative to package root.
  | BFileLocation !Location
  -- ^ File reference (static).
  | BModule !ModuleName !(Maybe (SymbolicPath Pkg (Dir Source)))
  -- ^ Produced by another hs-bindgen-cli instance
  deriving stock (Eq, Ord, Show, Generic)
  deriving anyclass (Binary, A.FromJSON, A.ToJSON)

-- | Prescriptive or generated binding spec for the current module?
data BSpec
  = GenerateBSpec !(Maybe Location)
  -- ^ Generate the spec on build and write it to the given location (or use the default if empty)
  | PrescriptiveBSpec !Location
  -- ^ Prescriptive spec from a file (must exist). No spec generation.
  deriving stock (Eq, Ord, Show, Generic)
  deriving anyclass (Binary, A.FromJSON, A.ToJSON)

instance Default BSpec where
  def = GenerateBSpec Nothing

-- * PCRE

-- | Regex
newtype PCRE = PCRE { unwrap :: String }
  deriving stock (Eq, Ord, Show, Generic)
  deriving newtype (Binary, Default, A.FromJSON, A.ToJSON)

pcreValue :: PCRE -> String
pcreValue (PCRE x) = x

escapePCRE :: String -> PCRE
escapePCRE = PCRE . concatMap f
  where
    f x | x `elem` ("|()[]{}.?*\\" :: String) = [ '\\', x ]
        | otherwise = [ x ]

instance Semigroup PCRE where
  p1@(PCRE a) <> p2@(PCRE b)
    | p1 == mempty = p2
    | p2 == mempty = p1
    | otherwise    = PCRE $ a ++ "|" ++ b

instance Monoid PCRE where
  mempty = PCRE ""

instance IsString PCRE where
  fromString = PCRE

instance GHC.IsList PCRE where
  type Item PCRE = PCRE
  fromList = fold
  toList   = pure

class ToPCRE a where
  toPCRE :: a -> PCRE

instance ToPCRE PCRE where
  toPCRE = id
instance ToPCRE String where
  toPCRE = PCRE
instance ToPCRE (SymbolicPathX abs from to) where
  toPCRE = escapePCRE . interpretSymbolicPathCWD . normaliseSymbolicPath
instance ToPCRE Location where
  toPCRE = toPCRE . location
instance {-# OVERLAPS #-} (ToPCRE a, Foldable t) => ToPCRE (t a) where
  toPCRE = foldMap toPCRE

-- * Protocol properties

data Stability = Unknown | Unstable | Staging | Stable
  deriving stock (Eq, Ord, Show, Read, Generic, Bounded, Enum)
  deriving anyclass (Binary, A.FromJSON, A.ToJSON)

instance Default Stability where
  def = Unknown

newtype ProtocolVersion = ProtocolVersion { unwrap :: Int }
  deriving stock (Eq, Ord, Generic)
  deriving newtype (Show, Read, Binary, A.FromJSON, A.ToJSON, Enum)

-- * ProtocolId

-- | Structured protocol keys
data ProtocolId = ProtocolId
  { name      :: !String
  , stability :: !Stability
  , version   :: !ProtocolVersion
  }
  deriving stock (Eq, Ord, Show, Read, Generic)
  deriving anyclass (Binary, A.FromJSON, A.ToJSON)

deriveProtocolId :: ProtocolSpecX a -> ProtocolId
deriveProtocolId c = ProtocolId
  { name      = c.category ++ "-" ++ c.baseName
  , stability = c.stability
  , version   = fromMaybe (ProtocolVersion 1) c.version
  }

-- * Build targes

type data ProtocolResult where
  -- | Metadata module (@Foo/Internal.hs@)
  InfoModule :: ProtocolResult
  -- | @wayland-scanner@ output artifact (@.c@, @.h@)
  ScannerOutput :: ScannerResult -> ProtocolResult
  -- | Interface wrapper (TH) module (@Foo.{Client,Server}@)
  WrapInterface :: ClientOrServer -> ProtocolResult

type data ScannerResult = EnumBindings | ClientBindings | ServerBindings | PrivateSource

type data ClientOrServer = Client | Server

data ProtoComponent
  = InfoModule
  | EnumBindings | ClientBindings | ServerBindings
  | WrapClient | WrapServer
  deriving stock (Eq, Ord, Enum, Bounded, Show, Read, Generic)
  deriving anyclass (Binary, A.FromJSONKey, A.ToJSONKey)

instance A.ToJSON ProtoComponent where
  toJSON = A.toJSON . show

instance A.FromJSON ProtoComponent where
  parseJSON v = read <$> A.parseJSON v

allComponents :: [ProtoComponent]
allComponents = [ minBound .. maxBound ]

bindgenComponents :: [ProtoComponent]
bindgenComponents = [ EnumBindings .. ServerBindings ]

-- * ProtocolSpec

-- | Protocol spec with incomplete bindgen specs.
type ProtocolConfig = ProtocolSpecX BindConfig

-- | Protocol spec with bindgen specs ready.
type ProtocolSpec = ProtocolSpecX HsBindGen

data ProtocolSpecX bindgen = ProtocolSpec
  { fullName            :: String -- ^ @river-window-management-v1@
  , baseName            :: String -- ^ @window-management@
  , category            :: String -- ^ @wayland@, @river@, etc.
  , version             :: Maybe ProtocolVersion -- ^ Possible @-v<n>@ suffix
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
  , dependsOn           :: [(String, ProtocolSpec)]
  , coreOnly            :: Bool
  }
  deriving stock (Eq, Ord, Show, Generic, Generic1)
  deriving anyclass (Binary, A.FromJSON1, A.ToJSON1, A.FromJSON, A.ToJSON)

-- | @defaultProtocolSpec xmlfile@
defaultProtocolSpec :: Default a => RelativePath DataDir File -> ProtocolSpecX a
defaultProtocolSpec xml = ProtocolSpec
  { fullName     = ""
  , category     = ""
  , baseName     = ""
  , version      = Nothing
  , stability    = Unknown
  , protocolDirs = []
  , protocolXML  = normaliseSymbolicPath xml
  , disabled     = mempty
  , qualifiedImports = mempty
  , dependsOn = mempty
  , coreOnly = True
  , bindGens = M.fromList [ (k, def) | k <- bindgenComponents ]
  , computedModuleNames = mempty
  , computedComponents  = mempty
  }

data ProtocolRef = ProtocolRef
  { headers      :: M.Map ProtoComponent [Location]
  , bindingSpecs :: M.Map ProtoComponent [ExtBindingSpec]
  } deriving (Eq, Ord, Show, Generic, Binary)

-- * ProtocolScannerOptions

data ProtocolScannerOptions = ProtocolScannerOptions
  { optionProtocolDirs     :: [SymbolicPath Pkg ('Dir DataDir)]
  -- ^ Additional paths in which to look for the the 'protocolXML' file.
  , optionDisabled         :: Set ProtoComponent
  -- ^ Components to be disabled always.
  , knownProtocols         :: M.Map String ProtocolRef
  -- ^ Protocol references for dependency resolution.
  , knownProtocolSpecs     :: M.Map String ProtocolSpec
  -- ^ Protocol references for dependency resolution.
  , interfaceProtocols     :: [(String, ProtocolSpec)]
  , optionModuleName       :: ComponentModuleNameFunction
  --- ^ construct module name for spec + component
  , optionCustom           :: Endo ProtocolConfig
  }
  deriving stock (Generic)
  deriving anyclass (Default)

newtype ComponentModuleNameFunction = ComponentModuleNameFunction
  { unwrap :: forall a. ProtocolSpecX a -> ProtoComponent -> ModuleName }

instance Default ComponentModuleNameFunction where
  def = ComponentModuleNameFunction $ \spec ->
    let base = getRoot spec
        nameFor = \case
          InfoModule     -> base ++ pure "Internal"
          WrapClient     -> base ++ pure "Client"
          WrapServer     -> base ++ pure "Server"
          EnumBindings   -> base ++ pure "Enums"
          ClientBindings -> nameFor WrapClient ++ pure "Generated"
          ServerBindings -> nameFor WrapServer ++ pure "Generated"
     in fromString . L.intercalate "." . nameFor
    where
      getRoot spec =
        let subMod =
              case (spec.stability, spec.version) of
                (Stable,   Nothing) -> []
                (Unknown,  Nothing) -> []
                (Stable,    Just v) -> [ 'V' : show v ]
                (Staging,  Nothing) -> [ "Staging" ]
                (Staging,   Just v) -> [ "Staging", 'V' : show v ]
                (Unknown,   Just v) -> [ "Staging", 'V' : show v ]
                (Unstable, Nothing) -> [ "Unstable" ]
                (Unstable,  Just v) -> [ "Unstable", 'V' : show v ]
         in map (_head %~ toUpper) $
              (spec.category & getCat) ++ (spec.baseName & getName) ++ subMod

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

data SetupInfo = SetupInfo
  { localBC   :: LocalBuildConfig
  , packageBD :: PackageBuildDescr
  }

-- * Lenses

makeLenses' ''Stability
makeLenses' ''HsBindGen
makeLenses' ''BindConfig
makeLenses' ''ProtocolSpecX
makeLenses' ''ProtocolScannerOptions
makeLenses' ''ProtocolId
makeLenses' ''ProtocolRef

---------------------
-- inst Pretty

instance Pretty ExtBindingSpec where
  pretty (BFile l) = "file:" <> pretty l
  pretty (BFileLocation l) = "file:" <> pretty (location l)
  pretty (BModule m Nothing) = "mod:" <> pretty m
  pretty (BModule m (Just l)) = "mod:" <> pretty m <> " " <> pretty l

instance Pretty HsBindGen where
  pretty c = PP.vcat
    [ PP.text (l ++ ":") PP.<+> doc
      | (l, doc) <-
        [ ("headers", commaSpaceSep $ map location c.headers)
        , ("exclude-headers", pretty c.excludeHeaders)
        , ("ext-binding-specs", commaSpaceSep c.extBindingSpecs)
        ]
    ]

instance Pretty PCRE where
  pretty (PCRE x) = "r" <> PP.doubleQuotes (PP.text x)

instance Pretty ProtocolSpec where
  pretty c = ("Proto: " <> PP.text c.fullName) PP.$+$
    PP.nest 2 (PP.vcat $ PP.punctuate "\n"
    [ "Module:" PP.<+> pretty m PP.$+$ pretty bgen
      | (k, m) <- M.toList c.computedModuleNames, Just bgen <- [c ^? bindGens . ix k]
    ]) PP.<> "\n"


------------------------------
-- * Parsers

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
      dirs <- pDirectories
      (parts, mstability, ver, suffix) <- pFileName
      let spec = (defaultProtocolSpec
                (if take 1 dirs /= [""]
                   then makeRelativePathEx (L.intercalate "/" dirs) </> makeRelativePathEx (spec.fullName ++ suffix)
                   else makeRelativePathEx (spec.fullName ++ suffix)
                ))
            { fullName     = L.intercalate "-" parts ++ maybe "" stability' mstability ++ maybe "" version' ver
            , category     = L.intercalate "-" (take 1 parts)
            , baseName     = L.intercalate "-" (drop 1 parts)
            , version      = ver
            , stability    = fromMaybe Unknown mstability
            , protocolDirs = [ normaliseSymbolicPath $ makeSymbolicPath (L.intercalate "/" dirs) | take 1 dirs == [""] ]
            }
      return spec
    where
      pFileName = let go ps = P.try (pFileNameSuffix ps) <|> (pFileNamePart >>= \p -> go (ps ++ [p]))
                   in go []

      -- "[[:alnum:]]+-?"
      pFileNamePart :: m String
      pFileNamePart = P.munch1 isAsciiAlphaNum <* P.optional (P.try (P.char '-')) P.<?> "Filename part"

      -- "[-STABILITY][-VERSION][.xml]"
      pFileNameSuffix :: [String] -> m ([String], Maybe Stability, Maybe ProtocolVersion, String)
      pFileNameSuffix parts = (parts,,,)
        <$> P.optional (P.try $ P.optional (P.try $ P.char '-') *> pStability)
        <*> P.optional (P.try $ P.optional (P.try $ P.char '-') *> pVersion)
        <*> P.string ".xml"

      stability' x = '-' : map toLower (show x)
      version'   x = '-' : 'v' : show x

-- | To parse "stable/name/name-vN.xml"
parseWaylandProtosPathP :: forall m. CabalParsing m => m ProtocolId
parseWaylandProtosPathP = do
    sta  <- pStability <* P.munch1 (== '/')
    nm   <- pName
    _    <- P.string nm
    _    <- P.optional (P.try $ P.optional (P.try $ P.char '-') *> pStability)
    mver <- P.optional (P.try $ P.optional (P.try $ P.char '-') *> pVersion)
    _    <- P.string ".xml"
    return $ ProtocolId nm sta $ fromMaybe (ProtocolVersion 1) mver
  where
    pName :: m String
    pName = P.munch1 (/= '/') <* P.munch1 (== '/') P.<?> "Name part"

instance Parsec ProtocolVersion where
  parsec = pVersion

instance Parsec Stability where
  parsec = pStability

-- | "stable", "unstable", etc.
pStability :: P.CharParsing m => m Stability
pStability = P.choice
  [ P.try $ P.string s $> v
    | (v, s) <- zip [ Stable, Unstable, Staging ] [ "stable", "unstable", "staging" ]
  ] P.<?> "Stability"

-- "v1", "v2", etc.
pVersion :: P.CharParsing m => m ProtocolVersion
pVersion = P.char 'v' *> fmap ProtocolVersion P.integral P.<?> "ProtocolVersion"

-- "foo/"
pDirectory :: P.CharParsing m => m FilePath
pDirectory = P.munch (/= '/') <* P.munch1 (== '/') P.<?> "Directory"

-- "[foo/[bar/[...]]]"
pDirectories :: P.CharParsing m => m [FilePath]
pDirectories = P.many (P.try pDirectory)

parseWaylandProtosPath :: HasCallStack => IsString (ProtocolSpecX bindgen) => String -> (ProtocolId, ProtocolSpecX bindgen)
parseWaylandProtosPath str = case explicitEitherParsec parseWaylandProtosPathP str of
  Right pid@(ProtocolId nm sta ver) -> (pid, (fromString $ "wayland-" ++ nm ++ ".xml")
     { stability    = sta
     , baseName     = nm
     , version      = Just ver
     , protocolXML  = makeRelativePathEx str
     , protocolDirs = []
     })
  Left e -> error $ "while parsing '" ++ str ++ "': " ++ e
