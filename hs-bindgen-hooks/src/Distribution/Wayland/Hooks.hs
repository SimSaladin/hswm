{-# LANGUAGE OverloadedLabels    #-}
{-# LANGUAGE OverloadedLists     #-}
{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE PatternSynonyms     #-}
{-# LANGUAGE QuasiQuotes         #-}
{-# LANGUAGE RecursiveDo         #-}
{-# LANGUAGE TypeFamilies        #-}
{-# LANGUAGE ViewPatterns        #-}
{-# OPTIONS_GHC -Wno-ambiguous-fields #-}
{-# OPTIONS_GHC -Wno-orphans #-}

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
  , liftIO
  , ask
  , Endo(..)
  , Set.Set
  ) where

import           Distribution.HsBindgen.Hooks
import           Distribution.HsBindgen.Types
import           Distribution.Wayland.ProtocolXML

import           Distribution.CabalSpecVersion
import           Distribution.Compat.Lens (getting)
import           Distribution.ModuleName
import           Distribution.Pretty
import           Distribution.Simple.Program
import           Distribution.Simple.Setup
import           Distribution.Simple.SetupHooks
import           Distribution.Simple.SetupHooks.Rule
import           Distribution.Simple.Utils
import qualified Distribution.Types.BuildInfo.Lens as BI
import           Distribution.Types.Library (explicitLibModules)
import qualified Distribution.Types.Library.Lens as Lib
import           Distribution.Types.LocalBuildConfig
import           Distribution.Types.LocalBuildInfo
import           Distribution.Simple.LocalBuildInfo
import           Distribution.Utils.Path
import           Distribution.Verbosity

import           Control.Monad
import           Control.Monad.Fix (MonadFix)
import           Control.Monad.IO.Class
import           Control.Monad.Reader.Class
import           Control.Monad.State.Class
import           Control.Monad.Writer.Class
import           Control.Monad.Trans (MonadTrans(..))
import qualified Control.Monad.Trans.Reader as Reader
import qualified Control.Monad.Trans.State as State
import qualified Control.Monad.Trans.Writer.Strict as Writer
import           Data.Foldable
import qualified Data.List as L
import qualified Data.List.NonEmpty as NE
import qualified Data.Map.Strict as M
import           Data.Maybe
import           Data.Monoid
import qualified Data.Set as Set
import           Data.Typeable
import           GHC.Generics (Generic)
import           GHC.Stack
import qualified System.FilePath as FP

import           Data.String.Interpolate
import qualified Data.Aeson as A

class Typeable a => IsProtoResult (a :: k) where
  protoResultPC :: proxy a -> ProtoComponent

instance IsProtoResult InfoModule where protoResultPC _ = InfoModule
instance IsProtoResult (ScannerOutput EnumBindings) where protoResultPC _ = EnumBindings
instance IsProtoResult (ScannerOutput ClientBindings) where protoResultPC _ = ClientBindings
instance IsProtoResult (ScannerOutput ServerBindings) where protoResultPC _ = ServerBindings
instance IsProtoResult (WrapInterface Client) where protoResultPC _ = WrapClient
instance IsProtoResult (WrapInterface Server) where protoResultPC _ = WrapServer

class Typeable a => HasScannerResult (a :: ScannerResult) where
  scannerCommand :: Proxy (ScannerOutput a) -> String
  scannerResultRelativePath :: Proxy (ScannerOutput a) -> ProtocolSpec -> RelativePath from 'File

instance HasScannerResult EnumBindings where
  scannerResultRelativePath _ spec = makeRelativePathEx $ spec.fullName ++ "-enums.h"
  scannerCommand _ = "enum-header"
instance HasScannerResult ClientBindings where
  scannerResultRelativePath _ spec = makeRelativePathEx $ spec.fullName ++ "-client-protocol.h"
  scannerCommand _ = "client-header"
instance HasScannerResult ServerBindings where
  scannerResultRelativePath _ spec = makeRelativePathEx $ spec.fullName ++ "-server-protocol.h"
  scannerCommand _ = "server-header"
instance HasScannerResult PrivateSource where
  scannerResultRelativePath _ spec = makeRelativePathEx $ spec.fullName ++ "-protocol-private.c"
  scannerCommand _ = "private-code"

type ProtoFound = (ProtocolSpec, FilePath, SymbolicPath Pkg File, Protocol)

-- * ScannerT

type ScannerM = ScannerT IO
type DynamicSetup = ScannerT IO

newtype ScannerT m a = ScannerT
  { runScannerT
    :: Reader.ReaderT SetupInfo
        (Writer.WriterT [HsBindGen]
          (State.StateT State m)) a
  } deriving newtype (Functor, Applicative, Monad, MonadIO, MonadFix, MonadFail
    , MonadReader SetupInfo, MonadState State, MonadWriter [HsBindGen])

instance MonadTrans ScannerT where
  lift = ScannerT . lift . lift . lift

data State = State
  { protocolConfigs :: M.Map ProtocolId ProtocolConfig
  , scannerOptions  :: ProtocolScannerOptions
  } deriving stock (Generic)

-- * Hooks

waylandProtocolHooks :: HasCallStack => ScannerM () -> SetupHooks
waylandProtocolHooks cfg =
  mempty { configureHooks = mempty { preConfPackageHook     = Just bindgenPreConfPackageHook } } <>
  mempty { configureHooks = mempty { preConfPackageHook     = Just preConfPackage } } <>
  mempty { configureHooks = mempty { preConfComponentHook   = Just $ preConfComponent cfg } } <>
  mempty { buildHooks     = mempty { preBuildComponentRules = Just $ bindgenPreBuildComponentRules cfg } } <>
  mempty { installHooks   = mempty { installComponentHook   = Just installHook } }

preConfPackage :: HasCallStack => PreConfPackageInputs -> IO PreConfPackageOutputs
preConfPackage inp@PreConfPackageInputs{configFlags=flags, localBuildConfig=lbc} = do
  configured <- configurePrograms v progs lbc.withPrograms
  return (noPreConfPackageOutputs inp) { extraConfiguredProgs = configured }
  where
      v     = verbosityFromFlags $ fromFlag $ setupVerbosity $ configCommonFlags flags
      progs = [ "wayland-scanner" ]

preConfComponent :: HasCallStack => ScannerM () -> PreConfComponentInputs -> IO PreConfComponentOutputs
preConfComponent cfg inputs
  | CLib lib <- inputs.component = do
      specs <- M.elems <$> resolveSet SetupInfo{..} cfg
      let diff = ComponentDiff (doLib lib specs)
      outputs <- bindgenPreConfComponentHook cfg inputs
      return $ (noPreConfComponentOutputs inputs)
        { componentDiff = diff <> outputs.componentDiff }
  | otherwise = return (noPreConfComponentOutputs inputs)

  where
    pbd       = inputs.packageBuildDescr
    localBC   = inputs.localBuildConfig
    packageBD = inputs.packageBuildDescr

    doLib lib specs = CLib $ mempty
      & Lib.exposedModules  <>~ map snd (filter fst mods)
      & BI.otherModules     <>~ map snd (filter (not . fst) mods)
      & BI.autogenModules   <>~ map snd mods
      & BI.autogenIncludes  <>~ includes
      & BI.installIncludes  <>~ includes
      & BI.includeDirs      <>~ [coerceSymbolicPath autogen]
      where
        declared = explicitLibModules lib
        mods     = concatMap (filter ((`notElem` declared) . snd) . protoAutogenModules) specs
        includes = [ scannerResultRelativePath @EnumBindings    Proxy s | s <- specs ] ++
                   [ scannerResultRelativePath @ClientBindings  Proxy s | s <- specs ] ++
                   [ scannerResultRelativePath @ServerBindings  Proxy s | s <- specs ]

    distpref = fromFlag $ setupDistPref $ configCommonFlags pbd.configFlags
    autogen  = distpref </> makeRelativePathEx "build" </> makeRelativePathEx "autogen"
    --autogen = autogenComponentModulesDir inputs.localBuildInfo (targetCLBI inputs.targetInfo)

installHook :: InstallComponentInputs -> IO ()
installHook inputs = do
  installFileGlob v CabalSpecV3_16 cwd (Just src, dest) (makeRelativePathEx "binding-specs/*.yaml")
  installFileGlob v CabalSpecV3_16 cwd (Just $ src </> makeRelativePathEx "autogen", dest) (makeRelativePathEx "*.json")
  where
    v           = verbosityFromFlags $ fromFlag $ setupVerbosity inputs.copyFlags.copyCommonFlags
    src         = makeSymbolicPath $ interpretSymbolicPathLBI lbi $ buildDir lbi
    dest        = makeSymbolicPath installDirs.libdir
    installDirs = absoluteComponentInstallDirs pd lbi cuid copyDest
    cuid        = inputs.targetInfo.targetCLBI.componentUnitId
    copyDest    = inputs.copyFlags.copyDest & fromFlag
    lbi         = inputs.localBuildInfo
    pd          = inputs.localBuildInfo.localBuildDescr.packageBuildDescr.localPkgDescr
    cwd         = mbWorkDirLBI inputs.localBuildInfo

instance MkBindRules (ScannerM ()) where
  bindTargets pci act = do
    let setup = SetupInfo pci.localBuildConfig pci.packageBuildDescr
    (_, specs, bgens) <- dynamicProtocols setup act
    return $ bgens <> concatMap (\s -> M.elems s.bindGens) specs

  mkBindRules pbci dict act = do
    let setup = SetupInfo pbci.localBuildInfo.localBuildConfig pbci.localBuildInfo.localBuildDescr.packageBuildDescr
    (opts, specs, bgens) <- liftIO $ dynamicProtocols setup act
    liftM2 (++) (mkBindRules pbci dict bgens) (protoRules opts specs)
      where
        protoRules opts specs = do
          found <- locateProtocols pbci specs
          bgens <- forM found $ protocolRules pbci opts found
          writeProtos [ (a, b) | (a,_,_,b) <- found ]
          return $ mconcat bgens

        writeProtos xs = do
          let dst = autogen </> makeRelativePathEx "wayland-protocol-bindings.json"
          liftIO $ noticeNoWrap v "writing .json"
          liftIO $ rewriteFileEx v (interpretSymbolicPathLBI pbci.localBuildInfo dst) [i|#{A.encode xs}|]

        autogen    = autogenComponentModulesDir pbci.localBuildInfo (targetCLBI pbci.targetInfo)
        v          = verbosityFromFlags verbosity
        verbosity  = buildingWhatVerbosity pbci.buildingWhat

-- * Utils

locateProtocols :: PreBuildComponentInputs -> [ProtocolSpec] -> RulesM [ProtoFound]
locateProtocols inputs protos = forM protos $ \spec -> do
  xml' <- liftIO $ findFileCwd v (buildingWhatWorkingDir inputs.buildingWhat) (searchDirs spec) spec.protocolXML
  let xmlFP = interpretSymbolicPathLBI inputs.localBuildInfo xml'
  addRuleMonitors $ monitorFileHashedSearchPath [] xmlFP
  proto <- liftIO $ protocolFromFile xmlFP
  return (spec, xmlFP, xml', proto)
  where
    verbosity  = buildingWhatVerbosity inputs.buildingWhat
    v          = verbosityFromFlags verbosity
    searchDirs spec = spec.protocolDirs ++ datadirWL
    datadirWL  = targetComponent inputs.targetInfo ^. BI.customFieldsBI . getting (map makeSymbolicPath . maybeToList . L.lookup "datadir-wayland-protocols")

protocolRules
  :: HasCallStack
  => PreBuildComponentInputs -- ^ hook inputs
  -> ProtocolScannerOptions
  -> [ProtoFound] -- ^ Known (processed) protocols
  -> ProtoFound -- ^ Target protocol
  -> RulesM [(HsBindGen, [Dependency])] -- ^ [bindgen + deps]
protocolRules inputs@PreBuildComponentInputs{buildingWhat=what, localBuildInfo=lbi} opts known found@(spec, xmlFP, _, proto) = do
  let ifDeps = getProtocolInterfaceDeps proto
      resolvedDeps = spec.dependsOn <>
        [ (x, p) | x <- ifDeps, (s, p) <- opts.interfaceProtocols, s == x ] <>
        [ (x, s) | x <- ifDeps, (s, _, _, p) <- known, x `elem` [ y.name | y <- p.interfaces ] ]
      missing = [ x | x <- ifDeps, all ((/= x) . fst) resolvedDeps ]

  liftIO $ infoNoWrap v $ unlines
      [ "Protocol: " ++ proto.name
      , "  Provides: " ++ unwords [ x.name | x <- proto.interfaces ]
      , "  Depends on: " ++ unwords ifDeps
      , "  Using protocol XML file " ++ xmlFP  ++ " for " ++ spec.fullName ++ " (" ++ getSymbolicPath spec.protocolXML ++ ")"
      ]

  when (missing /= []) $
    liftIO $ die' v $ "Missing dependencies: " ++ show missing

  -- c-source/headers generation
  headerRules <- sequence
    [ waylandScannerRule @EnumBindings   inputs found Proxy
    , waylandScannerRule @ClientBindings inputs found Proxy
    , waylandScannerRule @ServerBindings inputs found Proxy
    ]
  (csourceRule, csourceLoc) <- waylandScannerRule @PrivateSource  inputs found Proxy

  -- internal info hs module generation
  let csource = location csourceLoc
  _ <- infoModuleRule inputs found csource [ RuleDependency csourceRule ]

  -- gen wrapper module
  _ <- genWrapperRule @Client inputs spec resolvedDeps Proxy
  _ <- genWrapperRule @Server inputs spec resolvedDeps Proxy

  return
    [ (protoAddDependent "" (Just 1) (L.nub (map snd resolvedDeps)) comp bgen, ruleDeps)
      | (comp, bgen) <- spec ^. bindGens . to M.toList
      , let ruleDeps = [ RuleDependency dep | (dep, loc) <- headerRules, any (checkLocation loc) bgen.headers ]
    ]
  where
    verbosity  = makeVerbose $ buildingWhatVerbosity what
    v          = verbosityFromFlags verbosity
    autogen    = autogenComponentModulesDir lbi clbi
    clbi       = targetCLBI inputs.targetInfo

    checkLocation (Location b1 f1) (Location b2 f2) = getSymbolicPath f1 == getSymbolicPath f2
      && (b1 == coerceSymbolicPath b2 || b1 == coerceSymbolicPath autogen)

protoAutogenModules :: ProtocolSpec -> [(Bool, ModuleName)] -- bool true if export the module
protoAutogenModules spec =
  [ (True, mn)
    | k <- [ WrapClient, WrapServer, InfoModule ]
    , not $ spec & has (disabled . ix k)
    , Just mn <- [ spec ^? computedModuleNames . ix k ]
  ]

resolveSet :: (HasCallStack, MonadFix m) => SetupInfo -> ScannerT m () -> m (M.Map ProtocolId ProtocolSpec)
resolveSet st act = do
  (_, protos, _) <- dynamicProtocols st act
  return $ M.fromList [ (k, p) | p <- protos, let k = deriveProtocolId p ]

registerProtocolRule
  :: forall (a :: ProtocolResult). Typeable a
  => Verbosity -> ProtocolSpec -> Proxy a -> Rule -> RulesM RuleId
registerProtocolRule v spec label rule = do
  liftIO $ infoNoWrap v $ "[protocol-rule] " ++ spec.fullName ++ " (" ++ labelStr ++ ")\n"
    ++ unlines (map (("  dep: " ++) . prettyShow) rule.staticDependencies)
    ++ "  produces: " ++ show (NE.toList rule.results)
  registerRule (fromString rname) rule
    where
      rname = "wl::" ++ spec.fullName ++ "::" ++ labelStr
      labelStr = show $ typeRep label

-- * ScannerOutput

waylandScannerRule
  :: HasScannerResult a
  => PreBuildComponentInputs
  -> ProtoFound
  -> Proxy (ScannerOutput a)
  -> RulesM (RuleOutput, Location)
waylandScannerRule inputs (spec,_,xml,_) label = do
  (scanner, _) <- liftIO $ requireProgram v (simpleProgram "wayland-scanner") inputs.localBuildInfo.localBuildConfig.withPrograms
  let args = ScannerArgs
          (buildingWhatVerbosity inputs.buildingWhat)
          (buildingWhatWorkingDir inputs.buildingWhat)
          scanner (scannerCommand label) xml result spec.coreOnly
  rid <- registerProtocolRule v spec label $
    staticRule (waylandScannerCommand args) [FileDependency (makeLocation xml)] [result]
  return (RuleOutput rid 0, result)
  where
    v          = verbosityFromFlags verbosity
    verbosity  = makeVerbose $ buildingWhatVerbosity inputs.buildingWhat
    autogen    = autogenComponentModulesDir inputs.localBuildInfo (targetCLBI inputs.targetInfo)
    result     = Location autogen $ scannerResultRelativePath label spec

data ScannerArgs = ScannerArgs
  { sVerbosity     :: VerbosityFlags -- verbosity
  , sWorkdir       :: Maybe (SymbolicPath CWD ('Dir Pkg)) -- workdir
  , scannerProgram :: ConfiguredProgram -- wayland-scanner
  , scannerCmd     :: String
  , sProtoXML      :: SymbolicPath Pkg 'File -- proto.xml
  , sResult        :: Location -- result
  , sCoreOnly      :: Bool -- ^ @--include-core-only@
  } deriving (Eq, Show, Generic, Binary)

waylandScannerCommand :: ScannerArgs -> Command ScannerArgs (IO ())
waylandScannerCommand = mkCommand (static Dict) (static waylandScannerAction)

waylandScannerAction :: ScannerArgs -> IO ()
waylandScannerAction env = do
  createDirectoryIfMissingVerbose v True (FP.takeDirectory $ fromPath $ location env.sResult)
  runProgramCwd v env.sWorkdir env.scannerProgram $
    [ "--include-core-only" | env.sCoreOnly ] <>
    [ "--strict", env.scannerCmd, fromPath env.sProtoXML, fromPath $ location env.sResult]
 where
   v = verbosityFromFlags env.sVerbosity
   fromPath = interpretSymbolicPath env.sWorkdir

-- * InfoModule

infoModuleRule
  :: PreBuildComponentInputs
  -> ProtoFound
  -> SymbolicPath Pkg File
  -> [Dependency]
  -> RulesM RuleId
infoModuleRule inputs (spec, xmlFP, _, _) csource extraDeps =
  registerProtocolRule (verbosityFromFlags verbosity) spec (Proxy @InfoModule) $
    staticRule (infoModCommand args) deps [result]
  where
    args          = InfoModuleArgs{..}
    deps          = L.sort $ FileDependency (makeLocation (makeSymbolicPath args.xmlFP :: SymbolicPath Pkg File)) : extraDeps
    verbosity     = makeVerbose $ buildingWhatVerbosity inputs.buildingWhat
    mbWorkdir     = mbWorkDirLBI inputs.localBuildInfo
    outModuleName = args.spec ^?! computedModuleNames . ix InfoModule
    result        = Location autogen (makeRelativePathEx $ toFilePath outModuleName <.> "hs")
    autogen       = autogenComponentModulesDir inputs.localBuildInfo (targetCLBI inputs.targetInfo)

data InfoModuleArgs = InfoModuleArgs
   { verbosity     :: VerbosityFlags
   , mbWorkdir     :: Maybe (SymbolicPath CWD (Dir Pkg)) -- workdir
   , spec          :: ProtocolSpec
   , xmlFP         :: FilePath -- SymbolicPath Pkg File -- path to protocol.xml
   , outModuleName :: ModuleName -- output module name
   , result        :: Location -- output file
   , csource       :: SymbolicPath Pkg File
   } deriving (Eq, Show, Generic, Binary)

infoModCommand :: InfoModuleArgs -> Command InfoModuleArgs (IO ())
infoModCommand = mkCommand (static Dict) (static infoModAction)

infoModAction :: InfoModuleArgs -> IO ()
infoModAction InfoModuleArgs{..} = do
  withFileContents (getSymbolicPath csource) $ \csource' -> do
    createDirectoryIfMissingVerbose v True (FP.takeDirectory dstFP)
    withFileContents xmlFP $ \protoXML ->
      rewriteFileEx v dstFP
      [__i'L|
      {-\# LANGUAGE MultilineStrings \#-}
      {-\# LANGUAGE QuasiQuotes \#-}
      {-\# LANGUAGE TemplateHaskell \#-}
      module #{prettyShow outModuleName} where

      import Distribution.HsBindgen.Types
      import Distribution.HsBindgen.Utils
      import Distribution.Wayland.ProtocolXML (Protocol, protocolFromString)
      import Language.Haskell.TH.Syntax

      -- legacy...
      protoXml :: String
      protoXml = protocolXmlString

      protocolSpec :: ProtocolSpec
      protocolSpec = case fromJSON protocolJSON of
        Success r -> r
        Error e -> error e

      protocol :: Protocol
      protocol = protocolFromString protocolXmlString

      protocolJSON :: Value
      protocolJSON = #{protoJSON}

      protocolXmlString :: String
      protocolXmlString = """#{protoXML}"""

      addCSource :: Q [Dec]
      addCSource = addForeignSource LangC cSource >> return []

      cSource :: String
      cSource = """#{csource'}"""
      |]
    where
      v     = verbosityFromFlags verbosity
      dstFP = interpretSymbolicPath mbWorkdir $ location result
      protoJSON = "[aesonQQ|" <> A.encode spec <> "|]"

-- * WrapInterface

data GenWrapModArgs = GenWrapModArgs
  { verbosityFlags    :: VerbosityFlags
  , spec              :: ProtocolSpec  -- ^ The related protocol
  , bindgen           :: HsBindGen     -- ^ The main client OR server bindgen rules
  , component         :: ProtoComponent
  , wrapperModule     :: ModuleName    -- ^ Target module name
  , outputFile        :: FilePath      -- ^ Target file (i.e. autogendir)
  , inputFile         :: Maybe FilePath -- ^ Input file (may not exist)
  , protoDeps         :: [(String, [ModuleName])]
  , pragmas           :: [String]
  } deriving (Eq, Show, Generic, Binary)

genWrapperRule
  :: (Typeable a, IsProtoResult (WrapInterface a))
  => PreBuildComponentInputs
  -> ProtocolSpec
  -> [(String, ProtocolSpec)]
  -> Proxy (WrapInterface a)
  -> RulesM [RuleId]
genWrapperRule pbci spec deps label
  | spec & has (disabled . ix wcomp) = do
      liftIO $ putStrLn $ "!!! disabled: " ++ show wcomp
      return []
  | otherwise = do
  fileIn <- liftIO $ findFileCwdWithExtension (buildingWhatWorkingDir pbci.buildingWhat) ["hs.in"]
    (targetComponent pbci.targetInfo ^. BI.hsSourceDirs) (moduleNameSymbolicPath wrapperModule)
  -- watch the config files for changes
  addRuleMonitors [ monitorFileHashed $ getSymbolicPath f | f <- maybeToList fileIn ]

  let arg = GenWrapModArgs
        { outputFile = interpretSymbolicPathLBI pbci.localBuildInfo $ location result
        , inputFile = interpretSymbolicPathLBI pbci.localBuildInfo <$> fileIn
        , protoDeps = L.sort . L.nub $
          [ (prettyShow mo, [mo]) | BModule mo _ <- bindgen ^. extBindingSpecs ] ++
          [ ("IF_" ++ n,
            (s ^.. computedModuleNames . ix wcomp) ++
            (s ^.. bindGens . ix EnumBindings . moduleName . to fromFlag) ++
            (s ^.. bindGens . ix component . moduleName . to fromFlag)
            ) | (n, s) <- deps ] ++
          [ (prettyShow m, [m]) | (_, s) <- deps, m <- s ^.. computedModuleNames . ix wcomp] ++
          [ (prettyShow m, [m]) | (_, s) <- deps, m <- s ^.. bindGens . ix EnumBindings . moduleName . to fromFlag] ++
          [ (prettyShow m, [m]) | (_, s) <- deps, m <- s ^.. bindGens . ix component . moduleName . to fromFlag] ++
          [ (n, [m]) | (m, n) <- spec ^. qualifiedImports . to toList ]
        , .. }
  rid <- registerProtocolRule (verbosityFromFlags verbosityFlags) spec label $
    staticRule (genWrapperCommand arg) (L.sort [FileDependency $ makeLocation f | f <- maybeToList fileIn]) (result NE.:| [])
  return [rid]
  where
    wcomp = protoResultPC label
    component = case wcomp of
          WrapClient -> ClientBindings
          WrapServer -> ServerBindings
          _ -> error "genwrapper"
    verbosityFlags = makeVerbose $ buildingWhatVerbosity pbci.buildingWhat
    bindgen        = spec ^?! bindGens . ix component
    wrapperModule  = spec ^?! computedModuleNames . ix wcomp
    outDir         = autogenComponentModulesDir pbci.localBuildInfo (targetCLBI pbci.targetInfo)
    result         = Location outDir $ moduleNameSymbolicPath wrapperModule <.> "hs"
    pragmas        =
      [ "{-# OPTIONS_GHC -Wno-unused-imports #-}"
      , "{-# OPTIONS_GHC -Wno-dodgy-exports #-}"
      ] <> [ "{-# OPTIONS_GHC -ddump-splices #-}" | wrapperModule == "" ] -- debugging

genWrapperCommand :: GenWrapModArgs -> Command GenWrapModArgs (IO ())
genWrapperCommand = mkCommand (static Dict) (static genWrapperAction)

genWrapperAction :: HasCallStack => GenWrapModArgs -> IO ()
genWrapperAction env@GenWrapModArgs{..} = do
  let infoMod  = spec ^?! computedModuleNames . ix InfoModule
      enums    = spec ^?! bindGens . ix EnumBindings
      _INFO    = prettyShow infoMod
      _MODNAME = prettyShow wrapperModule
      _BINDS   = prettyShow $ fromFlag bindgen.moduleName
      _ENUMS   = prettyShow $ fromFlag enums.moduleName

  infoNoWrap v $ "Generating wrapper for " ++ _INFO ++ "..."
  contents <-
    case inputFile of
      Just f -> do
         debugNoWrap v $ "Picked up custom template for " ++ prettyShow wrapperModule ++ " (" ++ f ++ ")"
         withFileContents f $ \x -> length x `seq` return x
      Nothing -> pure $ wrapperContent env

  createDirectoryIfMissingVerbose v True (FP.takeDirectory outputFile)
  rewriteFileEx v outputFile [__i'L|
        #{unlines pragmas}

        module #{_MODNAME}
          ( module #{_MODNAME}
          , module #{_ENUMS}
          ) where

        import           WL.Internals.TH
        #{if component == ServerBindings then "import qualified WL.Internals.TH.Server as TH" else "" :: String}
        import           #{_INFO}
        #{mconcat $ map ppDep protoDeps}
        import           #{_ENUMS}
        import           #{_BINDS}
        import           #{_BINDS}.Global
        import qualified #{_BINDS}.Safe   as Safe
        import qualified #{_BINDS}.Unsafe as Unsafe

        #{contents}

        #{if component == ClientBindings then "$(addCSource)" else "" :: String}
        |]
  where
    v = verbosityFromFlags verbosityFlags
    ppDep (ifname, mods) = unlines [ [iii|import qualified #{prettyShow mo} as #{ifname}|] | mo <- mods ]

wrapperContent :: GenWrapModArgs -> String
wrapperContent env = case env.component of
    ClientBindings -> "clientFromProtocolXML' commonSettings protocolXmlString"
    ServerBindings -> [__i'L|TH.serverFromProtocolXML commonSettings protocolXmlString|]
    _ -> error "wrapperContent"

-- * ScannerT interface

-- | Update global scanner options.
modifyOptions :: Monad m => (ProtocolScannerOptions -> ProtocolScannerOptions) -> ScannerT m ()
modifyOptions f = modify $ \s -> s { scannerOptions = f s.scannerOptions }

-- | Register a new protocol. Fails if a protocol with same name is already registered.
makeProtocol :: Monad m => ProtocolConfig -> ScannerT m ProtocolId
makeProtocol cfg = do
  st <- get
  let key = deriveProtocolId cfg
  case M.lookup key st.protocolConfigs of
    Nothing -> do
      modify $ \s -> s
        { protocolConfigs = M.insert key cfg s.protocolConfigs }
      return key
    Just _ -> error $ "Duplicate protocol: " ++ show key

-- | Register a protocol if it's new or newer than any existing ones.
optionalProtocol :: Monad m => (ProtocolId, ProtocolConfig) -> ScannerT m (Either String ProtocolId)
optionalProtocol (key, cfg) = do
  st <- get
  case M.lookup key st.protocolConfigs of
    Nothing
      | xs@(_:_) <- M.keys $ M.filterWithKey (conflicts key) st.protocolConfigs -> do
        if all (key >) xs
           then doReplace xs
           else return $ Left $ "A newer protocol already loaded: " <> show xs
      | otherwise -> do
          modify $ \s -> s
            { protocolConfigs = M.insert key cfg s.protocolConfigs }
          return $ Right key
    Just _ -> return $ Left $ "Duplicate protocol: " ++ show key
  where
    conflicts k1 k2 _ = k1.name == k2.name
    doReplace xs = do
      modify $ \s -> s
        { protocolConfigs = M.insert key cfg . (`M.withoutKeys` Set.fromList xs) $ s.protocolConfigs }
      return $ Right key

-- | Register protocol from an external source.
addExternalProto :: Monad m => String -> ProtocolSpec -> ScannerT m ()
addExternalProto k v = modifyOptions $ knownProtocolSpecs <>~ [(k, v)]

-- | Register protocol without whole ProtocolSpec from an external source.
addExternal :: Monad m => String -> ProtocolRef -> ScannerT m ()
addExternal k v = modifyOptions $ knownProtocols <>~ [(k, v)]

-- | Register some 'HsBindGen'.
addExtraBindGen :: Monad m => HsBindGen -> ScannerT m ()
addExtraBindGen x = tell [x]

withLBC :: (m ~ ScannerT n, Monad n) => (LocalBuildConfig -> m r) -> m r
withLBC f = do
  st <- ask
  f st.localBC

-- * ProtocolConfig -> ProtocolSpec

dynamicProtocols
  :: HasCallStack
  => MonadFix m
  => SetupInfo
  -> ScannerT m ()
  -> m (ProtocolScannerOptions, [ProtocolSpec], [HsBindGen])
dynamicProtocols st scanM = mdo
  (((), bgen), finalState) <- run scanM
  let cfgs = finalState.protocolConfigs
      opts = finalState.scannerOptions
  specs <- fmap (M.mapKeys (.name)) $ flip M.traverseWithKey cfgs $ \k cfg -> do
    return (M.singleton k (interpretProtocolConfig opts specs cfg))
  return (opts, specs ^.. each . each, bgen)
  where
    initialState = State mempty def
    run = flip State.runStateT initialState . Writer.runWriterT . flip Reader.runReaderT st . runScannerT

interpretProtocolConfig
  :: HasCallStack
  => ProtocolScannerOptions
  -> M.Map String (M.Map ProtocolId ProtocolSpec)
  -> ProtocolConfig
  -> ProtocolSpec
interpretProtocolConfig o specs c' = spec
  where
    spec = c { bindGens = M.fromList [ (k, binds k) | k <- bindgenComponents, k `Set.member` c.computedComponents ] }
      & computedModuleNames <>~ M.fromList [ (k, getModName spec k) | k <- allComponents ]

    c = c'
      & protocolDirs <>~ o.optionProtocolDirs
      & disabled <>~ o.optionDisabled
      & computedComponents .~ (Set.fromList allComponents Set.\\ c.disabled)
      & appEndo o.optionCustom

    modOf k = spec ^?! computedModuleNames . ix k
    ComponentModuleNameFunction getModName = o.optionModuleName

    binds :: HasCallStack => ProtoComponent -> HsBindGen
    binds k = newHsBindGen (modOf k) []
      & flip (foldl (&)) [ solveDep k nm | nm <- bc ^. bcDepends ]
      & perComp k
      & (<> bc.bcBindGen)
      & extBindingSpecs %~ L.sort . L.nub
      where
        bc = c ^? bindGens . ix k & fromMaybe def

    solveDep :: HasCallStack => ProtoComponent -> String -> (HsBindGen -> HsBindGen)
    solveDep k x
      | r : _ <- specs ^.. ix x . folded       = protoAddDependent "" Nothing [r] k
      | Just r <- o.knownProtocolSpecs ^? ix x = protoAddDependent "" Nothing [r] k
      | Just r <- o.knownProtocols ^? ix x     = addProtoRef k r
      | otherwise                              = error $ "Could not resolve: " ++ show x

    addProtoRef k r x = x
        & headers <>~ (r.headers ^.. ix k . each)
        & excludeHeaders <>~ toPCRE (r.headers ^.. ix k . each)
        & extBindingSpecs <>~ (r.bindingSpecs ^.. ix k . each)

    perComp comp x = case comp of
      EnumBindings -> x
        & headers <>~ [ makeLocation $ scannerResultRelativePath @EnumBindings Proxy spec ]
        & hasPointer .~ toFlag False
        & hasSafe    .~ toFlag False
        & hasUnsafe  .~ toFlag False
        & genGlobal  .~ toFlag False
      ClientBindings -> x
        & headers <>~ [ makeLocation $ scannerResultRelativePath @EnumBindings   Proxy spec
                      , makeLocation $ scannerResultRelativePath @ClientBindings Proxy spec ]
        & extBindingSpecs <>~ [ BModule (modOf EnumBindings) Nothing ]
      ServerBindings -> x
        & headers <>~ [ makeLocation $ scannerResultRelativePath @EnumBindings   Proxy spec
                      , makeLocation $ scannerResultRelativePath @ServerBindings Proxy spec ]
        & extBindingSpecs <>~ [ BModule (modOf EnumBindings) Nothing ]
      _ -> x

-- | Makes the first protocol a requirement for the second. References to the first in the second are resolved to the
-- the dependent protocol's bindings. Without this it is likely that guest mentions get duplicate bindings.
protoAddDependent :: HasCallStack => String -> Maybe Int -> [ProtocolSpec] -> ProtoComponent -> HsBindGen -> HsBindGen
protoAddDependent msg _    []   _    = msg `seq` id
protoAddDependent _   mpos deps comp = \x -> x
    & headers %~ L.nub . maybe (flip (<>)) (\n bs as -> take n as ++ bs ++ drop n as) mpos (hdrs comp)
    & excludeHeaders <>~ toPCRE (hdrs comp)
    & extBindingSpecs <>~ [ getSpec dep k | dep <- deps, k <- L.nub [ EnumBindings, comp ] ]
  where
    getSpec :: ProtocolSpec -> ProtoComponent -> ExtBindingSpec
    getSpec dep k = BModule
        (dep ^?! bindGens . ix k . moduleName . to fromFlag)
        (dep ^?! bindGens . ix k . bindingSpec . to getSpec')

    getSpec' x = case x of
      Flag (GenerateBSpec (Just loc)) -> Just $ takeDirectorySymbolicPath $ location loc
      _                               -> Nothing

    hdrs EnumBindings = [ makeLocation $ scannerResultRelativePath @EnumBindings Proxy dep | dep <- deps ]
    hdrs ClientBindings = hdrs EnumBindings ++ [ makeLocation $ scannerResultRelativePath @ClientBindings Proxy dep  | dep <- deps]
    hdrs ServerBindings = hdrs EnumBindings ++ [ makeLocation $ scannerResultRelativePath @ServerBindings Proxy dep  | dep <- deps]
    hdrs _ = [ ]

setBindgenDir :: SymbolicPath Pkg (Dir Source) -> ProtocolSpec -> ProtocolSpec
setBindgenDir dir s = s
  & bindGens . each . extBindingSpecs . each %~ bspecsFrom
  & bindGens . each . bindingSpec %~ bspecIn
  where
    bspecsFrom x = case x of
       BModule m Nothing -> BModule m (Just dir)
       _ -> x
    bspecIn x = case x of
       Flag (GenerateBSpec Nothing) -> toFlag $ GenerateBSpec $ Just $ Location dir $ makeRelativePathEx @_ @File "file"
       NoFlag                       -> toFlag $ GenerateBSpec $ Just $ Location dir $ makeRelativePathEx @_ @File "file"
       _ -> x

-- * ProtocolConfig

onlyIf :: (ProtocolConfig -> Bool) -> (ProtocolConfig -> ProtocolConfig) -> Endo ProtocolConfig
onlyIf check f = Endo $ \s -> if check s then f s else s

onlyIfName :: String -> (ProtocolConfig -> ProtocolConfig) -> Endo ProtocolConfig
onlyIfName x = onlyIf $ \s -> s.baseName == x
