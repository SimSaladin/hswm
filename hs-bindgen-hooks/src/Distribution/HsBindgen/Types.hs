{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE UnboxedTuples #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE TypeFamilies           #-}
{-# LANGUAGE DerivingVia            #-}
{-# LANGUAGE NoFieldSelectors       #-}
{-# LANGUAGE PatternSynonyms        #-}
{-# LANGUAGE TemplateHaskell        #-}
{-# LANGUAGE TypeData               #-}
{-# LANGUAGE ViewPatterns           #-}
{-# OPTIONS_GHC -Wno-orphans #-}


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
import           Distribution.Simple.SetupHooks
  (Location(..), location, LocalBuildConfig, PackageBuildDescr, Dependency(..), RuleOutput(..))
import           Distribution.Simple.SetupHooks.Rule (RuleId(..))
import           Distribution.Simple.Flag
import           Distribution.Utils.Generic
import           Distribution.Utils.Path
import           Distribution.Utils.ShortText

import           Control.Applicative
import qualified Data.Aeson as A
import           Data.Char
import           Data.Coerce
import           Data.Default
import           Data.Foldable
import           Data.Functor
import qualified Data.List as L
import qualified Data.Map.Strict as M
import           Data.Maybe
import           Data.Monoid
import           Data.Proxy
import           Data.Set (Set)
import           Data.String
import           Data.Typeable
import           Foreign (Storable)
import qualified GHC.Exts as GHC (IsList(..))
import           GHC.Fingerprint
import           GHC.Generics (Generic, Generic1(..), Generically(..))
import           GHC.Read
import           Lens.Micro
import           Lens.Micro.GHC ()
import           Numeric
import qualified Text.PrettyPrint as PP
import           Text.Printf (printf)

-- orphan instances

deriving anyclass instance A.FromJSON (SymbolicPathX a b c)
deriving anyclass instance A.ToJSON (SymbolicPathX a b c)

deriving anyclass instance A.FromJSON ModuleName
deriving anyclass instance A.ToJSON ModuleName

instance A.FromJSON Location where
  parseJSON v = do
    (base, file) <- A.parseJSON v
    return $! Location base file
instance A.ToJSON Location where
  toJSON (Location base file) = A.toJSON (base, file)

-- * BindingSpec

-- | External binding spec (file or module reference)
data ExtBindingSpec
  = BFile !(RelativePath Build File) -- ^ File reference (static)
  | BFileLocation !Location
  | BModule !ModuleName !(Maybe (SymbolicPath Pkg (Dir Source)))  -- ^ Produced by another hs-bindgen-cli instance
  deriving (Eq, Ord, Show, Generic, Binary)
  deriving anyclass (A.FromJSON, A.ToJSON)

-- | Prescriptive or generated binding spec for the current module?
data BSpec
  = GenerateBSpec !(Maybe Location) -- ^ Generate the spec on build and write it to the given location (or use the default if empty)
  | PrescriptiveBSpec !Location -- ^ Prescriptive spec from a file (must exist). No spec generation.
  deriving (Eq, Ord, Show, Generic, Binary)
  deriving anyclass (A.FromJSON, A.ToJSON)

instance Default BSpec where
  def = GenerateBSpec Nothing

-- | Settings for a hs-bindgen-cli invocation.
data HsBindGen = HsBindGen
  { headers                        :: [Location] -- ^ Header files
  , moduleName                     :: Flag ModuleName -- ^ Output module name
  , uniqueId                       :: Flag String
  , omitFieldPrefixes              :: Flag Bool
  , programSlicing                 :: Flag Bool
  , cStandard                      :: Flag String
  , extBindingSpecs                :: [ExtBindingSpec]
  , bindingSpec                    :: Flag BSpec
  , selectDeprecated               :: Flag Bool
  , selectFromMainHeaderDirs       :: Flag Bool
  , includeDirs                    :: [SymbolicPath Pkg ('Dir Include)] -- ^ Include search directories (@-I@)
  , genGlobal                      :: Flag Bool
  , hasPointer, hasSafe, hasUnsafe :: Flag Bool
  , excludeByDeclName              :: PCRE -- ^ PCRE
  , excludeHeaders                 :: PCRE -- [SymbolicPath Include 'File]
  , extraArgs                      :: [String]  -- ^ Arbitrary additional arguments for @hs-bindgen-cli@
  }
  deriving stock (Eq, Ord, Show, Generic)
  deriving anyclass (Binary, Default, A.FromJSON, A.ToJSON)
  deriving (Semigroup, Monoid) via Generically HsBindGen

-- * PCRE

newtype PCRE = PCRE String
  deriving stock (Eq, Ord, Show, Generic)
  deriving newtype (Binary, Default, A.FromJSON, A.ToJSON)

instance Semigroup PCRE where
  p1@(PCRE a) <> p2@(PCRE b)
    | p1 == mempty = p2
    | p2 == mempty = p1
    | otherwise    = PCRE $ a ++ "|" ++ b

instance Monoid PCRE where
  mempty = PCRE ""

instance IsString PCRE where
  fromString = PCRE -- TODO FIXME

instance GHC.IsList PCRE where
  type Item PCRE = PCRE
  fromList = fold
  toList = pure

-- * ToPCRE

class ToPCRE a where
  toPCRE :: a -> PCRE
instance ToPCRE PCRE where
  toPCRE = id
instance {-# OVERLAPS #-} (ToPCRE a, Foldable t) => ToPCRE (t a) where
  toPCRE = foldMap toPCRE
instance ToPCRE String where
  toPCRE = PCRE
instance ToPCRE (SymbolicPathX abs from to) where
  toPCRE = PCRE . interpretSymbolicPathCWD . normaliseSymbolicPath
instance ToPCRE Location where
  toPCRE = toPCRE . location

-- * Stability

data Stability = Unknown | Unstable | Staging | Stable
  deriving (Eq, Ord, Show, Read, Generic, Binary)
  deriving anyclass (A.FromJSON, A.ToJSON)

instance Default Stability where
  def = Unknown

-- * Version

newtype ProtocolVersion = ProtocolVersion { unwrap :: Int }
  deriving stock (Generic)
  deriving newtype (Eq, Ord, Show, Read, Binary)
  deriving newtype (A.FromJSON, A.ToJSON)

-- * ProtocolId

data ProtocolId = ProtocolId
  { name      :: String
  , stability :: Stability
  , version   :: ProtocolVersion
  } deriving (Eq, Ord, Show, Read, Generic, Binary)
  deriving anyclass (A.FromJSON, A.ToJSON)

-- * Components (Fingerprint)

getFpr :: forall {k} (a :: k). Typeable a => Proxy a -> ProtoComponent
getFpr _ = ProtoComponent $ typeRepFingerprint (typeRep (undefined :: proxy (a :: k)))

getFpr' :: forall {k} (a :: k). Typeable a => Proxy a -> Fingerprint
getFpr' _ = typeRepFingerprint (typeRep (undefined :: proxy (a :: k)))

-- * Build targes

newtype ProtoComponent = ProtoComponent Fingerprint
  deriving stock (Eq, Ord, Generic)
  deriving newtype (Binary, Storable)
  deriving anyclass (A.FromJSONKey, A.ToJSONKey)

type data ProtocolResult where
  InfoModule    :: ProtocolResult
  ScannerOutput :: ScannerResult -> ProtocolResult
  WrapInterface :: ClientOrServer -> ProtocolResult

type data ClientOrServer = Client | Server

type data ScannerResult = EnumBindings | PrivateSource | ClientBindings | ServerBindings

pattern EnumBindings, ClientBindings, ServerBindings, InfoModule, WrapClient, WrapServer :: ProtoComponent
pattern InfoModule     <- ((== getFpr (Proxy @InfoModule)) -> True) where
        InfoModule     =       getFpr (Proxy @InfoModule)
pattern EnumBindings   <- ((== getFpr (Proxy @(ScannerOutput EnumBindings))) -> True) where
        EnumBindings   =       getFpr (Proxy @(ScannerOutput EnumBindings))
pattern ClientBindings <- ((== getFpr (Proxy @(ScannerOutput ClientBindings))) -> True) where
        ClientBindings =       getFpr (Proxy @(ScannerOutput ClientBindings))
pattern ServerBindings <- ((== getFpr (Proxy @(ScannerOutput ServerBindings))) -> True) where
        ServerBindings =       getFpr (Proxy @(ScannerOutput ServerBindings))
pattern WrapClient     <- ((== getFpr (Proxy @(WrapInterface Client))) -> True) where
        WrapClient     =       getFpr (Proxy @(WrapInterface Client))
pattern WrapServer     <- ((== getFpr (Proxy @(WrapInterface Server))) -> True) where
        WrapServer     =       getFpr (Proxy @(WrapInterface Server))

instance A.ToJSON ProtoComponent where
  toJSON (ProtoComponent (Fingerprint a b)) = A.toJSON (printf "%016x%016x" a b :: String)

instance A.FromJSON ProtoComponent where
  parseJSON v = do
    str <- A.parseJSON v
    return $! phex (take 16 str) (drop 16 str)
   where
     phex a b = coerce (Fingerprint (read1 a) (read1 b))
     read1 x = case readHex x of
                  [(num, "")] -> num
                  _ -> error $ "ProtoComponent: " ++ show v ++ ": " ++ show x

instance Show ProtoComponent where
  show (ProtoComponent (Fingerprint a b)) = show $ encode (a, b)

instance Read ProtoComponent where
  readPrec = do
    (a, b) <- readPrec
    return $ coerce (Fingerprint a b)

allComponents :: [ProtoComponent]
allComponents = [ InfoModule, WrapClient, WrapServer ] ++ bindgenComponents

bindgenComponents :: [ProtoComponent]
bindgenComponents = [ EnumBindings, ClientBindings, ServerBindings ]

-- * ProtocolSpec

type ProtocolSpec = ProtocolSpecX HsBindGen

type ProtocolConfig = ProtocolSpecX BindConfig

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
  , dependsOn           :: [(String, ProtocolSpec)]
  , coreOnly            :: Bool
  }
  deriving stock (Eq, Ord, Show, Generic, Generic1)
  deriving anyclass (A.FromJSON1, A.ToJSON1, Binary)
  deriving anyclass (A.FromJSON, A.ToJSON)

data ProtocolRef = ProtocolRef
  { headers      :: M.Map ProtoComponent [Location]
  , bindingSpecs :: M.Map ProtoComponent [ExtBindingSpec]
  } deriving (Eq, Ord, Show, Generic, Binary)

-- * BindConfig

data BindConfig = BindConfig
  { bcMainHeaders     :: [Location]
  , extBindingSpecs   :: [ExtBindingSpec]
  , excludeByDeclName :: PCRE
  , bcDepends         :: [String] -- name
  , bcCustom          :: Endo HsBindGen
  } deriving (Generic, Default)

-- * ProtocolScannerOptions

data ProtocolScannerOptions = ProtocolScannerOptions
  { optionProtocolDirs     :: [SymbolicPath Pkg ('Dir DataDir)] -- ^ Additional paths in which to look for the the 'protocolXML' file.
  , optionDisabled         :: Set ProtoComponent
  , optionModuleName       :: ProtocolSpec -> ProtoComponent -> ModuleName
  , optionCustom           :: Endo ProtocolConfig
  , knownProtocols         :: M.Map String ProtocolRef
  , knownProtocolSpecs     :: M.Map String ProtocolSpec
  , interfaceProtocols     :: [(String, ProtocolSpec)]
  } deriving (Generic)

data SetupInfo = SetupInfo
  { localBC :: LocalBuildConfig
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

instance Show BindConfig where
  show x = "BindConfig{" ++
    show x.bcMainHeaders ++ ", " ++
    show x.bcDepends ++ ", " ++
    -- show x.bcCustom ++ ", " ++
    show x.extBindingSpecs ++ ", " ++
    show x.excludeByDeclName ++ "}"

instance IsString ProtocolConfig where
  fromString str = case eitherParsec str of
                     Right x -> x
                     Left err -> error $ "while parsing \"" ++ str ++ "\": " ++ err

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

instance Pretty Dependency where
  pretty (RuleDependency (RuleOutput rid index)) = "RuleDependency: " <> pretty rid <> " ix=" <> PP.text (show index)
  pretty (FileDependency loc) = "FileDependency:" <> pretty (location loc)

instance Pretty RuleId where
  pretty (RuleId _ns nm) = PP.text (fromShortText nm)

instance Default ProtocolScannerOptions where
  def = ProtocolScannerOptions
    { optionProtocolDirs = mempty
    , optionCustom       = Endo id
    , optionDisabled     = mempty
    , knownProtocols     = mempty
    , knownProtocolSpecs = mempty
    , interfaceProtocols = mempty
    , optionModuleName   =
      \spec ->
        let base = getRoot spec
            nameFor c = case c of
              InfoModule     -> base ++ pure "Internal"
              WrapClient     -> base ++ pure "Client"
              WrapServer     -> base ++ pure "Server"
              EnumBindings   -> base ++ pure "Enums"
              ClientBindings -> nameFor WrapClient ++ pure "Generated"
              ServerBindings -> nameFor WrapServer ++ pure "Generated"
              _              -> error $ "unknown component: " ++ show c
         in fromString . L.intercalate "." . nameFor
    } where
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

------------------------------
-- * Parsers

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
            , stability = fromMaybe Unknown mstability
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
            , dependsOn = mempty
            , coreOnly = True
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

parseWaylandProtosPath
  :: IsString (ProtocolSpecX bindgen)
  => String
  -> (ProtocolId, ProtocolSpecX bindgen)
parseWaylandProtosPath str =
  case explicitEitherParsec parseWaylandProtosPathP str of
    Right (s, n, v) -> (ProtocolId n s v, (fromString $ "wayland-" ++ n ++ ".xml")
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
  nm   <- pName <* P.munch1 (== '/')
  _    <- P.string nm
  _    <- P.optional (P.try $ P.optional (P.try $ P.char '-') *> pStability)
  mver <- P.optional (P.try $ P.optional (P.try $ P.char '-') *> pVersion)
  _    <- P.string ".xml"
  return (stab, nm, fromMaybe (ProtocolVersion 1) mver)

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
