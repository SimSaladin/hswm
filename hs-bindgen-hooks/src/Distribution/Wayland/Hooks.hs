{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE QuasiQuotes #-}


-- |
-- Module      : Distribution.Wayland.Hooks
-- Description : Cabal hooks for generating wayland protocol bindings.
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Distribution.Wayland.Hooks
  ( module Distribution.Wayland.Hooks
  , module Distribution.HsBindgen.Types
  ) where

import           Distribution.HsBindgen.Types
import qualified Distribution.HsBindgen.Lens as I
import           Distribution.HsBindgen.Hooks
import           Distribution.HsBindgen.Utils
import           Distribution.Wayland.ProtocolXML

import           Distribution.Compat.Binary
import           Distribution.Compat.Lens (getting)
import           Distribution.ModuleName
import           Distribution.Pretty
import           Distribution.Simple.Program
import           Distribution.Simple.Setup
import           Distribution.Simple.SetupHooks
import           Distribution.Simple.Utils
import qualified Distribution.Types.BuildInfo.Lens as BI
import           Distribution.Types.LocalBuildConfig
import           Distribution.Types.LocalBuildInfo
import           Distribution.Utils.Path

import           Data.String.Interpolate
import           Control.Monad
import           Control.Monad.IO.Class
import           Data.Foldable
import           Data.Kind
import qualified Data.List as L
import qualified Data.Map.Strict as M
import           Data.Maybe
import           Data.Typeable
import           GHC.Fingerprint
import           GHC.Generics (Generic)
import           Lens.Micro
import           Lens.Micro.GHC ()
import qualified System.FilePath as FP
import qualified Data.List.NonEmpty as NE
import System.Directory (doesFileExist)

instance MkBindRules ProtocolSpec where

  preBindgenHooks xs = mempty
    { configureHooks = mempty
      { preConfPackageHook = Just preConfPackage
      , preConfComponentHook = Just $ preConfComponent xs
      }
    }

  bindTargets spec = M.elems spec.bindGens

  mkBindRules = scannerRules

-- * GENERATED INTERFACE

-- | Class of things that can be generated from a 'ProtocolSpec'.
class Generated (a :: (k :: Type)) where

  -- | Unique key of this sort of result. One key per type!
  -- Additional result (output) configurations can be added by creating additional types.
  toKey :: Typeable a => Proxy (a :: k) -> Fingerprint
  toKey _ = getFpr (Proxy :: Proxy a)

  -- | Calculates all (if any) haskell modules that the instance is expected to generate.
  -- They are added to autogen-modules and exposed (or other) modules during build configuration.
  generatedModuleNames :: Proxy (a :: k) -> ProtocolSpec -> [ModuleName]
  generatedModuleNames _ _ = []

  registerGenerateRules :: Proxy (a :: k) -> PreBuildComponentInputs -> ProtocolSpec -> RulesM [RuleId]
  registerGenerateRules _ _ _ = pure mempty

-- * HS MODULE WRAPPER

data WrapInterfaceModule

-- | Directory where to look for per-protocol configs
wrapModSettingsDirectory :: SymbolicPath from ('Dir to)
wrapModSettingsDirectory = makeSymbolicPath "src"

instance Generated (a :: WrapInterfaceModule) where
  generatedModuleNames _ spec = getAt @'ClientHeader Proxy ++ getAt @'ServerHeader Proxy
    where
      getAt :: forall (x :: HeaderResult). Typeable x => Proxy x -> [ModuleName]
      getAt p = case generatedModuleNames p spec of
                  mn : _ -> [ fromString $ L.intercalate "." $ init (components mn) ]
                  _      -> []

  -- Optional override settings from package files  ...
  --resolvedDependencies proxy spec = _

  registerGenerateRules _ pbci spec = liftM2 (++)
      (rulesWith @'ClientHeader Proxy)
      (rulesWith @'ServerHeader Proxy)
    where
    vflags  = buildingWhatVerbosity pbci.buildingWhat
    outDir  = autogenComponentModulesDir pbci.localBuildInfo (targetCLBI pbci.targetInfo)

    rulesWith :: Typeable x => Proxy (x :: HeaderResult) -> RulesM [RuleId]
    rulesWith proxy = do
      let bgen    = spec ^?! I.bindGens . ix (toKey proxy)

      let modName = fromString $ L.intercalate "." $ init (components bgen.moduleName)
          result  = Location outDir $ moduleNameSymbolicPath modName <.> "hs"
          fileIn  = wrapModSettingsDirectory </> moduleNameSymbolicPath modName <.> "hs.in"
          monitor = [ monitorFileHashed $ getSymbolicPath fileIn ]

          arg = GenWrapModArgs{ dst = interpretSymbolicPathCWD $ location result
                              , dstModule = modName
                              , bindgen = bgen
                              , inputFile = interpretSymbolicPathCWD fileIn
                              , ..}

      -- watch the config files for changes
      addRuleMonitors monitor

      rid <- registerRule (fromString $ "generate-wrapper-module::" <> prettyShow modName) $
        staticRule (generateWrapper arg) [] (result NE.:| [])
      return [rid]

generateWrapper :: GenWrapModArgs -> Command GenWrapModArgs (IO ())
generateWrapper = mkCommand (static Dict) (static generateWrapperModuleAction)

data GenWrapModArgs = GenWrapModArgs
  { vflags :: VerbosityFlags
  , dst :: FilePath      -- ^ Target file (i.e. autogendir)
  , dstModule :: ModuleName    -- ^ Target module name
  , spec :: ProtocolSpec  -- ^ The related protocol
  , bindgen :: HsBindGen     -- ^ The main client OR server bindgen rules
  , inputFile :: FilePath      -- ^ Input file (may not exist)
  } deriving (Eq, Show, Generic, Binary)

generateWrapperModuleAction :: GenWrapModArgs -> IO ()
generateWrapperModuleAction GenWrapModArgs{..} = do
  let infoMod  = generatedModuleNames @InfoModule Proxy spec ^?! _head
      enums    = spec ^?! I.bindGens . ix Enums
  let _INFO    = prettyShow infoMod
      _MODNAME = dstModule
      _BINDS   = prettyShow bindgen.moduleName
      _ENUMS   = prettyShow enums.moduleName

      deps :: [ModuleName]
      deps = [ fromString $ L.intercalate "." $ reverse res
             | BModule mn <- bindgen ^.. I.extBindingSpecs . each
             , x : xs <- [ reverse (components mn) ]
             , x `elem` ([ "Enums", "Generated" ] :: [String])
             , let res = [ x | x /= "Generated" ] ++ xs
             ]

  override <- doesFileExist inputFile
  contents <- if override
                 then do
                   notice v $ "Picked up custom template for " ++ prettyShow dstModule ++ " (" ++ inputFile ++ ")"
                   withFileContents inputFile $ \x -> length x `seq` return x
                 else pure "clientFromProtocolXML' commonSettings protoXml"

  createDirectoryIfMissingVerbose v True (FP.takeDirectory dst)
  rewriteFileEx v dst [__i'L|
        #{pragmas}
        {-\# OPTIONS_GHC -Wno-unused-imports \#-}
        module #{prettyShow _MODNAME} where

        import           WL.Internals.TH
        import           #{_ENUMS}
        import           #{_BINDS}
        import           #{_BINDS}.Global
        import qualified #{_BINDS}.Safe   as Safe
        import qualified #{_BINDS}.Unsafe as Unsafe
        import           #{_INFO}
        #{mconcat $ map impq deps}

        #{contents}|]
  where
    v = verbosityFromFlags vflags
    impq nm = [i|import qualified #{prettyShow nm}|] ++ "\n"

    pragmas :: String
    pragmas = ""

-- * MISC.

data InfoModule

data ProtoResult (a :: ResultKind)
  = RHeader  HeaderResult Location
  | RCSource Location
  | RInfoMod ModuleName Location

deriving instance Eq (ProtoResult a)
deriving instance Ord (ProtoResult a)
deriving instance Show (ProtoResult a)
deriving instance Generic (ProtoResult a)
deriving instance Binary (ProtoResult a)

data ResultKind = ProtoHeader | PrivateCode | InfoMod
  deriving (Eq, Ord, Enum, Bounded, Show, Read, Generic, Binary)

data HeaderResult = EnumHeader | ClientHeader | ServerHeader
  deriving (Eq, Ord, Enum, Bounded, Show, Read, Generic, Binary)

pattern Enums, ClientBindings, ServerBindings :: Fingerprint

pattern ClientBindings <- ((== getFpr (Proxy @'ClientHeader)) -> True) where
        ClientBindings =       getFpr (Proxy @'ClientHeader)

pattern ServerBindings <- ((== getFpr (Proxy @'ServerHeader)) -> True) where
        ServerBindings =       getFpr (Proxy @'ServerHeader)

pattern Enums          <- ((== getFpr (Proxy @'EnumHeader)) -> True) where
        Enums          =       getFpr (Proxy @'EnumHeader)

instance Generated (a :: InfoModule) where
  generatedModuleNames _ spec = [ fromString $ "Path_" ++ map fixchar spec.fullName ]
    where
      fixchar '-' = '_'
      fixchar   c = c

instance Typeable a => Generated (a :: HeaderResult) where
  generatedModuleNames (proxy :: Proxy a) spec = [ bgen.moduleName ]
    where
      bgen = spec ^?! I.bindGens . ix (toKey proxy)

-- * PreConfigure

preConfPackage :: PreConfPackageInputs -> IO PreConfPackageOutputs
preConfPackage inp@PreConfPackageInputs{configFlags=flags, localBuildConfig=lbc} = do
  configured <- configurePrograms v progs lbc.withPrograms
  infoNoWrap v $ "Wayland package pre-conf done"
  return (noPreConfPackageOutputs inp) { extraConfiguredProgs = configured }
  where
      vflags = fromFlag $ setupVerbosity $ configCommonFlags flags
      v = verbosityFromFlags vflags
      progs = [ "wayland-scanner" ]

preConfComponent :: [ProtocolSpec] -> PreConfComponentInputs -> IO PreConfComponentOutputs
preConfComponent specs pci@PreConfComponentInputs{localBuildConfig=lbc, packageBuildDescr=pbd}
  | CLib{} <- pci.component
  = do
    infoNoWrap v "Attempting to locate wayland-protocols with pkg-config"
    mdir <- getPkgConfDataDir v lbc.withPrograms "wayland-protocols"
    forM_ mods $ notice v . show
    debugNoWrap v $ "Modules expected: " ++ show mods
    debugNoWrap v $ "C sources expected:  " ++ show csources
    return $ (noPreConfComponentOutputs pci)
      { componentDiff = buildInfoComponentDiff (componentName pci.component) $ mempty
          & BI.customFieldsBI   .~ [("datadir-wayland-protocols", getAbsolutePath d) | Just d <- [mdir] ]
          & BI.otherModules     .~ mods
          & BI.autogenModules   .~ mods
          & BI.cSources         .~ map relativeSymbolicPath csources
      }

  | otherwise = return (noPreConfComponentOutputs pci)

  where
    v        = verbosityFromFlags vflags
    vflags   = fromFlag $ setupVerbosity $ configCommonFlags pbd.configFlags
    mods     = mconcat $ map protoAutogenModules specs
    csources = [ p | s <- specs, p <- getProtoCSources s ]

protoAutogenModules :: ProtocolSpec -> [ModuleName]
protoAutogenModules spec =
  generatedModuleNames @InfoModule Proxy spec ++
  generatedModuleNames @WrapInterfaceModule Proxy spec

getProtoCSources :: ProtocolSpec -> [RelativePath Pkg 'File]
getProtoCSources spec = [ makeRelativePathEx $ "cbits" </> spec.fullName ++ "-protocol-private.c" ]

getProtoHeader :: ProtocolSpec -> HeaderResult -> RelativePath from 'File
getProtoHeader spec = \case
  EnumHeader   -> makeRelativePathEx $ spec.fullName ++ "-enums.h"
  ClientHeader -> makeRelativePathEx $ spec.fullName ++ "-client-protocol.h"
  ServerHeader -> makeRelativePathEx $ spec.fullName ++ "-server-protocol.h"

-- * File generation

scannerRules :: Traversable t => PreBuildComponentInputs -> t ProtocolSpec -> RulesM [(HsBindGen, [Dependency])]
scannerRules pbci specs = do
  liftIO $ info v "Started scanner rules processing"
  (scanner, _) <- liftIO $ requireProgram v (simpleProgram "wayland-scanner") pbci.localBuildInfo.localBuildConfig.withPrograms

  results <- forM (toList specs) $ \spec -> do
    xml' <- liftIO $ findFileEx v (spec.protocolDirs ++ datadirWL) spec.protocolXML
    let xml = interpretSymbolicPathCWD xml'
    proto <- liftIO $ protocolFromFile xml
    let ifaceNames = [ x.name | x <- proto.interfaces ]
        ifaceDeps  = getProtocolInterfaceDeps proto
    liftIO $ notice v $ "Protocol: " ++ proto.name
    liftIO $ noticeNoWrap v $ "Provides: " ++ unwords ifaceNames
    liftIO $ noticeNoWrap v $ "Depends on: " ++ unwords ifaceDeps
    liftIO $ infoNoWrap v $ "Using protocol XML file " ++ xml  ++ " for " ++ spec.fullName ++ " (" ++ getSymbolicPath spec.protocolXML ++ ")"

    let register :: Typeable a => String -> [Dependency] -> ProtoResult a -> RulesM RuleId
        register ident deps res =
          registerRule (fromString $ "wl::" ++ spec.fullName ++ "::" ++ ident) $
            mkRule vflags scanner xml xml' res deps

    -- c-source generation
    rulesC <- forM (getProtoCSources spec) $ \res ->
      register "private-code" [] $ RCSource @PrivateCode $ Location sameDirectory res

    -- client/server/common headers generation
    rids <- forM [EnumHeader, ClientHeader, ServerHeader] $ \restype -> do
      let res = Location autogen $ getProtoHeader spec restype
      rid <- register (show restype) [] $ RHeader @ProtoHeader restype res
      return (restype, rid, res)

    -- internal info hs module generation
    (_hsRules :: [RuleId]) <-
      case generatedModuleNames @InfoModule Proxy spec of
        [ infomod ] -> fmap pure $ register "info-module" [ RuleDependency $ RuleOutput x 0 | x <- rulesC ] $
            RInfoMod @InfoMod infomod $ Location autogen $ makeRelativePathEx $ toFilePath infomod <.> "hs"
        [] -> return mempty
        _ -> liftIO $ die' v $ "unexpected: more than 1 info module!"

    -- gen wrapper module
    _ <- registerGenerateRules @WrapInterfaceModule Proxy pbci spec

    -- return a few important rules for dependencies
    return $ do
      bgen <- bindTargets spec
      return (bgen, [ RuleDependency $ RuleOutput rid 0 | (_, rid, Location _ res) <- rids
        , getSymbolicPath res `elem` map getSymbolicPath bgen.headers ])

  return $ mconcat results

  where
    vflags    = buildingWhatVerbosity pbci.buildingWhat
    v         = verbosityFromFlags vflags
    lbi       = pbci.localBuildInfo
    clbi      = targetCLBI pbci.targetInfo
    component = targetComponent pbci.targetInfo
    autogen   = autogenComponentModulesDir lbi clbi
    datadirWL = component ^. BI.customFieldsBI . getting (map makeSymbolicPath . maybeToList . L.lookup "datadir-wayland-protocols")

type ScannerArgs k = (VerbosityFlags, ConfiguredProgram, SymbolicPath Pkg File, ProtoResult k)

mkRule :: forall k. (Typeable k) => VerbosityFlags -> ConfiguredProgram -> FilePath -> SymbolicPath Pkg File -> ProtoResult k -> [Dependency] -> Rule
mkRule vflags scanner xml xml' res deps =
  staticRule (mkCommand (static Dict) (static scannerAction) arg) dependencies [resultLocation res]
  where
    arg = (vflags, scanner, xml', res)
    dependencies =
      [FileDependency $ Location (takeDirectorySymbolicPath xml') (makeRelativePathEx $ FP.takeFileName xml)] ++
        deps
    resultLocation = \case
      RCSource loc -> loc
      RHeader _ loc -> loc
      RInfoMod _ dst -> dst

scannerAction :: ScannerArgs k -> IO ()
scannerAction (vflags, scanner, protoXml, res) = do
  case res of
    RHeader hdr dst -> do
      createDirectoryIfMissingVerbose v True (FP.takeDirectory $ froml dst)
      case hdr of
        EnumHeader   -> runProgram v scanner ["--include-core-only", "--strict", "enum-header",   xml, froml dst]
        ClientHeader -> runProgram v scanner ["--include-core-only", "--strict", "client-header", xml, froml dst]
        ServerHeader -> runProgram v scanner ["--include-core-only", "--strict", "server-header", xml, froml dst]
    RCSource dst -> do
      createDirectoryIfMissingVerbose v True (FP.takeDirectory $ froml dst)
      runProgram v scanner ["--include-core-only", "--strict", "private-code",  xml, froml dst]
    RInfoMod modname dst -> do
      createDirectoryIfMissingVerbose v True (FP.takeDirectory $ froml dst)
      withFileContents xml $ \content ->
        rewriteFileEx v (froml dst)
          [__i'L|
          {-\# LANGUAGE MultilineStrings \#-}
          module #{prettyShow modname} where
          protoXml :: String
          protoXml =
            """
            #{content}
            """
          |]
 where
   v   = verbosityFromFlags vflags
   xml = interpretSymbolicPathCWD protoXml
   froml = interpretSymbolicPathCWD . location

-- * ProtocolSpec

makeHeader :: FilePath -> SymbolicPath Include 'File
makeHeader = makeSymbolicPath

-- | Makes the first protocol a requirement for the second. References to the first in the second are resolved to the
-- the dependent protocol's bindings. Without this it is likely that guest mentions get duplicate bindings.
addDependent :: ProtocolSpec -> ProtocolSpec -> ProtocolSpec
addDependent dep target = target
   & I.bindGens . ix ClientBindings . I.extBindingSpecs <>~ [ enums, dep ^?! I.bindGens . ix ClientBindings . I.moduleName . to BModule ]
   & I.bindGens . ix ClientBindings . I.headers %~ inject clientH
   & I.bindGens . ix ClientBindings . I.excludeHeaders <>~ clientH
   & I.bindGens . ix ServerBindings . I.extBindingSpecs <>~ [ enums, dep ^?! I.bindGens . ix ServerBindings . I.moduleName . to BModule ]
   & I.bindGens . ix ServerBindings . I.headers %~ inject serverH
   & I.bindGens . ix ServerBindings . I.excludeHeaders <>~ serverH
  where
    enums   = dep ^?! I.bindGens . ix Enums . I.moduleName . to BModule
    clientH = [ relativeSymbolicPath $ getProtoHeader dep ClientHeader ]
    serverH = [ relativeSymbolicPath $ getProtoHeader dep ServerHeader ]
    inject xs dst = take 2 dst ++ xs ++ drop 2 dst

getFpr :: forall {k} (a :: k). Typeable a => Proxy a -> Fingerprint
getFpr _ = typeRepFingerprint (typeRep (undefined :: proxy (a :: k)))
