{-# LANGUAGE OverloadedLabels    #-}
{-# LANGUAGE OverloadedLists     #-}
{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE PatternSynonyms     #-}
{-# LANGUAGE QuasiQuotes         #-}
{-# LANGUAGE RecursiveDo         #-}
{-# LANGUAGE TypeFamilies        #-}
{-# LANGUAGE ViewPatterns        #-}
{-# LANGUAGE CPP                 #-}
{-# OPTIONS_GHC -Wno-ambiguous-fields #-}

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
import           Distribution.ModuleName
import           Distribution.Pretty
#if !MIN_VERSION_Cabal(3,17,0)
import           Distribution.Compat.Binary (Binary)
#endif
import           Distribution.Simple.LocalBuildInfo
import           Distribution.Simple.Program
import           Distribution.Simple.Setup
import           Distribution.Simple.SetupHooks hiding (includeDirs)
import           Distribution.Simple.SetupHooks.Rule
import           Distribution.Simple.Utils
import qualified Distribution.Types.BuildInfo.Lens as BI
import           Distribution.Types.Library (explicitLibModules)
import qualified Distribution.Types.Library.Lens as Lib
import           Distribution.Types.LocalBuildConfig
import           Distribution.Types.LocalBuildInfo
import           Distribution.Types.GivenComponent (givenComponentId)
import           Distribution.Utils.Path
import           Distribution.Utils.Structured
import           Distribution.Simple.Glob
import qualified Distribution.Types.InstalledPackageInfo as PI
import qualified Distribution.Package as P
import           Distribution.Simple.Configure (getInstalledPackages)
import           Distribution.Simple.PackageIndex (dependencyClosure, reverseTopologicalOrder)

import           Control.Monad
import           Control.Monad.Fix (MonadFix)
import           Control.Monad.IO.Class
import           Control.Monad.Reader.Class
import           Control.Monad.State.Class
import           Control.Monad.Trans (MonadTrans(..))
import qualified Control.Monad.Trans.Reader as Reader
import qualified Control.Monad.Trans.State as State
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

-- XXX: refactor out these classes

class Typeable a => IsProtoResult (a :: k) where

  protoResultPC :: proxy a -> ProtoComponent

class Typeable a => HasScannerResult (a :: ScannerResult) where

  scannerCommand            :: Proxy (ScannerOutput a) -> String

  scannerResultRelativePath :: Proxy (ScannerOutput a) -> ProtocolSpec -> RelativePath from 'File

instance IsProtoResult InfoModule                     where protoResultPC _ = InfoModule
instance IsProtoResult (ScannerOutput EnumBindings)   where protoResultPC _ = EnumBindings
instance IsProtoResult (ScannerOutput ClientBindings) where protoResultPC _ = ClientBindings
instance IsProtoResult (ScannerOutput ServerBindings) where protoResultPC _ = ServerBindings
instance IsProtoResult (WrapInterface Client)         where protoResultPC _ = WrapClient
instance IsProtoResult (WrapInterface Server)         where protoResultPC _ = WrapServer

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

-- * ScannerT

-- | A monad transformer to be used as the context in setup scripts.
newtype ScannerT m a = ScannerT { runScannerT :: Reader.ReaderT SetupInfo (State.StateT State m) a }
  deriving newtype (Functor, Applicative, Monad, MonadIO, MonadFix, MonadFail,
                    MonadReader SetupInfo, MonadState State)

instance MonadTrans ScannerT where
  lift = ScannerT . lift . lift

type DynamicSetup = ScannerT IO

type ScannerM = ScannerT IO

-- | Information available in 'ScannerM'
type SetupInfo = PostConfPackageInputs

data State = State
  { protocolConfigs :: M.Map ProtocolId ProtocolConfig
  , scannerOptions  :: ProtocolScannerOptions
  , otherBindGen    :: [HsBindGen]
  } deriving stock (Generic)

-- * Setup hooks for Cabal

waylandProtocolHooks :: ScannerM () -> SetupHooks
waylandProtocolHooks cfg = mempty
  { configureHooks = mempty { preConfPackageHook = Just preConfPackage
                            , postConfPackageHook = Just $ postConf cfg
                            , preConfComponentHook = Just preConfComponent
                            }
  , buildHooks     = mempty { preBuildComponentRules = Just preBuildComponent
                            , postBuildComponentHook = Just postBuildComponent
                            }
  , installHooks   = mempty { installComponentHook   = Just installHook }
  }
  <> mempty { configureHooks = mempty { preConfPackageHook = Just bindgenPreConfPackageHook } }

postConf :: ScannerM () -> PostConfPackageHook
postConf cfg inputs = void $ writeProtocolInfo inputs cfg

preBuildComponent :: PreBuildComponentRules
preBuildComponent = rules (static ()) preBuildComponent'

preBuildComponent' :: PreBuildComponentInputs -> RulesM ()
preBuildComponent' inputs
  | CLib{} <- inputs.targetInfo.targetComponent = do
      specs <- waylandProtocolRules inputs
      mkBindGenRules' specs inputs
  | otherwise = return ()

postBuildComponent :: PostBuildComponentHook
postBuildComponent inputs
  | CLib{} <- inputs.targetInfo.targetComponent = do
    pinfo <- readProtocolInfo v (flagToMaybe $ setupWorkingDir flags) (fromFlag $ setupDistPref flags)
    let infoFile = buildDir inputs.localBuildInfo </> makeRelativePathEx "wayland-protocol-bindings.json"
    writeFileAtomic (interpretSymbolicPathLBI inputs.localBuildInfo infoFile) $ A.encode pinfo.infoFound
  | otherwise = return ()
  where
    v = verbosityFromFlags $ fromFlag $ setupVerbosity inputs.buildFlags.buildCommonFlags
    flags = inputs.buildFlags.buildCommonFlags

waylandProtocolRules :: PreBuildComponentInputs -> RulesM [(HsBindGen, [Dependency])]
waylandProtocolRules pbci = do
  pinfo <- liftIO $ readProtocolInfo v (buildingWhatWorkingDir pbci.buildingWhat) (buildingWhatDistPref pbci.buildingWhat)
  xs <- protoRules pinfo
  return $ [ (x, []) | x <- pinfo.infoExtras ] <> xs
  where
    v = verbosityFromFlags $ buildingWhatVerbosity pbci.buildingWhat

    protoRules pinfo = do
      bgens <- forM pinfo.infoFound $ protocolRules pbci pinfo
      return $ mconcat bgens

-- ** ProtocolInfo file

data ProtocolInfo = ProtocolInfo
  { infoFound     :: [ProtoFound]
  , infoDeps      :: ProtocolScannerDependencies
  , infoExtras    :: [HsBindGen]
  , infoProtoRefs :: M.Map String ProtocolRef
  }
  deriving stock (Generic)
  deriving anyclass (Binary, Structured)

type ProtoFound = (ProtocolSpec, FilePath, SymbolicPath Pkg File, Protocol)

localProtocolInfoFile :: SymbolicPath Pkg (Dir Dist) -> SymbolicPath Pkg File
localProtocolInfoFile dist = dist </> makeRelativePathEx "bindgen-info.data"

writeProtocolInfo :: HasCallStack => SetupInfo -> ScannerM () -> IO ProtocolInfo
writeProtocolInfo setup cfg = do
  (opts, protos, extraBindgen) <- dynamicProtocols setup cfg
  found <- locateProtocols v mbWorkDir [] protos -- TODO add common dirs
  let ifdeps = map (\(xs, s) -> (xs, s.fullName)) opts.interfaceProtocols ++
               map (\(s,_,_,p) -> (map (.name) p.interfaces, s.fullName)) found
  info v $ "interface deps: " ++ show ifdeps
  let protoInfo = ProtocolInfo
        { infoFound = map (\(s,a,b,p) -> (s & dependsOn .~ getDeps ifdeps s p,a,b,p)) found
        , infoExtras = extraBindgen
        , infoDeps = opts.interfaceProtocols
        , infoProtoRefs = opts.knownProtocols
        }
  createDirectoryIfMissingVerbose v False (interp distPref)
  writeFileAtomic (interp $ localProtocolInfoFile distPref) $
    structuredEncode protoInfo
  return protoInfo
  where
    v = verbosityFromFlags $ fromFlag flags.setupVerbosity
    flags = setup.packageBuildDescr.configFlags.configCommonFlags
    mbWorkDir = flagToMaybe $ setupWorkingDir flags
    distPref = fromFlag $ setupDistPref flags
    interp :: SymbolicPath Pkg to -> FilePath
    interp = interpretSymbolicPath mbWorkDir
    getDeps ifdeps spec proto
      | missing@(_:_) <- [x | (x,[]) <- zip ifs deps] = error $ "missing interfaces in " ++ proto.name ++ ": " ++ show missing ++ "\n  deps: " ++ show ifdeps
      | otherwise = L.nub $ concat deps
      where
        ifs  = spec.dependsOn ++ getProtocolInterfaceDeps proto
        deps = map (\x -> [ s | (xs, s) <- ifdeps, x `elem` xs ]) ifs

readProtocolInfo
  :: HasCallStack
  => Verbosity
  -> Maybe (SymbolicPath CWD (Dir Pkg)) -- ^ WorkDir
  -> SymbolicPath Pkg (Dir Dist) -- ^ The dist directory
  -> IO ProtocolInfo
readProtocolInfo v mbWorkDir distPref = do
  let filename = interpretSymbolicPath mbWorkDir (localProtocolInfoFile distPref)
  res <- structuredDecodeFileOrFail filename
  case res of
    Right x -> return x
    Left err -> die' v $ "reading protocol info: " ++ err

-- ** Individual hooks

-- | Require the @wayland-scanner@ program.
preConfPackage :: PreConfPackageHook
preConfPackage inputs@PreConfPackageInputs{configFlags=flags, localBuildConfig=lbc} = do
  configured <- configurePrograms v [ "wayland-scanner" ] lbc.withPrograms
  return (noPreConfPackageOutputs inputs) { extraConfiguredProgs = configured }
  where
    v = verbosityFromFlags $ fromFlag $ setupVerbosity $ configCommonFlags flags

preConfComponent :: HasCallStack => PreConfComponentHook
preConfComponent inputs
  | CLib lib <- inputs.component = do
      pinfo <- readProtocolInfo verb workDir distPref
      let specs        = pinfo.infoFound & map (^._1)
      let bindgenSpecs = pinfo.infoExtras ++ concatMap (\s -> M.elems s.bindGens) specs
      outputs <- bindgenPreConfComponentHook bindgenSpecs inputs
      return $ (noPreConfComponentOutputs inputs)
        { componentDiff = ComponentDiff (doLib lib specs) <> outputs.componentDiff }
  | otherwise = return (noPreConfComponentOutputs inputs)
  where
    flags    = inputs.packageBuildDescr.configFlags.configCommonFlags
    verb     = verbosityFromFlags $ fromFlag flags.setupVerbosity
    autogen  = buildDirPBD inputs.packageBuildDescr </> makeRelativePathEx "autogen"
    distPref = fromFlagOrDefault defaultDistPref flags.setupDistPref
    workDir  = flagToMaybe flags.setupWorkingDir

    doLib lib specs = CLib $ mempty
      & Lib.exposedModules  <>~ map snd (filter fst mods)
      & BI.otherModules     <>~ map snd (filter (not . fst) mods)
      & BI.autogenModules   <>~ map snd mods
      & BI.autogenIncludes  <>~ includes
      & BI.installIncludes  <>~ includes
      & BI.includeDirs      <>~ [coerceSymbolicPath autogen]
      -- ^ NOTE this is to include the headers generated by wayland-scanner
      where
        declared = explicitLibModules lib
        mods     = concatMap (filter ((`notElem` declared) . snd) . protoAutogenModules) specs
        includes = [ scannerResultRelativePath @EnumBindings    Proxy s | s <- specs ] ++
                   [ scannerResultRelativePath @ClientBindings  Proxy s | s <- specs ] ++
                   [ scannerResultRelativePath @ServerBindings  Proxy s | s <- specs ]

installHook :: InstallComponentHook
installHook inputs@InstallComponentInputs{localBuildInfo=lbi} = do
  -- binding specs (generated)
  copy (Just srcdir, makeSymbolicPath installDirs.libdir) (makeRelativePathEx "binding-specs/*.yaml")
  copy (Just srcdir, makeSymbolicPath installDirs.libdir) (makeRelativePathEx "wayland-protocol-bindings.json")
  where
    v = verbosityFromFlags $ fromFlag $ setupVerbosity inputs.copyFlags.copyCommonFlags
    copy = installFileGlob v CabalSpecV3_0 (mbWorkDirLBI lbi)
    srcdir = maybe (unsafeCoerceSymbolicPath from) (coerceSymbolicPath .  (workDir </>)) (symbolicPathRelative_maybe from)
    from = buildDir lbi
    workDir = fromMaybe sameDirectory (mbWorkDirLBI lbi)
    installDirs = absoluteComponentInstallDirs
      lbi.localBuildDescr.packageBuildDescr.localPkgDescr lbi
      inputs.targetInfo.targetCLBI.componentUnitId (fromFlag inputs.copyFlags.copyDest)

-- * Utils

locateProtocols
  :: Verbosity
  -> Maybe (SymbolicPath CWD (Dir Pkg)) -- ^ WorkDir
  -> [SymbolicPath Pkg ('Dir DataDir)] -- ^ Common search directories
  -> [ProtocolSpec]
  -> IO [ProtoFound]
locateProtocols v mbWorkDir dirs = mapM $ \spec -> do
  xml' <- findFileCwd v mbWorkDir (searchDirs spec) spec.protocolXML
  let xmlFP = interpretSymbolicPath mbWorkDir xml'
  proto <- protocolFromFile xmlFP
  return (spec, xmlFP, xml', proto)
  where
    searchDirs spec = spec.protocolDirs ++ dirs

protocolRules
  :: HasCallStack
  => PreBuildComponentInputs
  -> ProtocolInfo
  -> ProtoFound -- ^ Target protocol
  -> RulesM [(HsBindGen, [Dependency])] -- ^ [bindgen + deps]
protocolRules inputs@PreBuildComponentInputs{buildingWhat=what, localBuildInfo=lbi} pinfo found@(spec, xmlFP, _, proto) = do
    addRuleMonitors $ monitorFileHashedSearchPath [] xmlFP

    let resolvedDeps = do
          x <- getProtocolInterfaceDeps proto ++ spec.dependsOn
          let as = [ s | (s, _, _, p) <- pinfo.infoFound, x `elem` [ y.name | y <- p.interfaces ] ]
              bs = [ s | (xs, s) <- pinfo.infoDeps, x `elem` xs ]
          case (as, bs) of
            (r:_,_) -> [(x, r)]
            (_,r:_) -> [(x, r)]
            _ -> [] -- error $ "unresolved: " ++ x

    liftIO $ infoNoWrap v $ unlines
        [ "Protocol " ++ proto.name
        , "  interfaces: " ++ unwords [ x.name | x <- proto.interfaces ]
        , "  depends:    " ++ unwords spec.dependsOn
        , "  file:       " ++ xmlFP
        ]

    -- c-source/headers generation
    headerRules <- sequence
      [ waylandScannerRule @EnumBindings   inputs found Proxy
      , waylandScannerRule @ClientBindings inputs found Proxy
      , waylandScannerRule @ServerBindings inputs found Proxy
      ]
    (csourceRule, csourceLoc) <- waylandScannerRule @PrivateSource inputs found Proxy

    -- internal info hs module generation
    _ <- infoModuleRule inputs found (location csourceLoc) [ RuleDependency csourceRule ]
    -- gen wrapper module
    _ <- genWrapperRule @Client inputs spec resolvedDeps Proxy
    _ <- genWrapperRule @Server inputs spec resolvedDeps Proxy

    return
      [ (resolveDeps pinfo spec comp <> bgen, ruleDeps)
        | (comp, bgen) <- spec ^. bindGens . to M.toList
        , let ruleDeps = [ RuleDependency dep | (dep, loc) <- headerRules, any (checkLocation loc) bgen.headers ]
      ]
  where
    v          = verbosityFromFlags $ makeVerbose $ buildingWhatVerbosity what
    autogen    = autogenComponentModulesDir lbi (targetCLBI inputs.targetInfo)
    checkLocation (Location b1 f1) (Location b2 f2) = getSymbolicPath f1 == getSymbolicPath f2
      && (b1 == coerceSymbolicPath b2 || b1 == coerceSymbolicPath autogen)

protoAutogenModules :: ProtocolSpec -> [(Bool, ModuleName)] -- bool true if export the module
protoAutogenModules spec =
  [ (exposed, mn)
    | (exposed, k) <- (False, InfoModule) : map (True,) [ WrapClient, WrapServer ]
    , not $ spec & has (disabled . ix k)
    , Just mn <- [ spec ^? computedModuleNames . ix k ]
  ]

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
waylandScannerRule inputs (spec, _, xml, _) label = do
  (scanner, _) <- liftIO $ requireProgram v (simpleProgram "wayland-scanner") inputs.localBuildInfo.localBuildConfig.withPrograms
  let args = ScannerArgs
          (buildingWhatVerbosity inputs.buildingWhat)
          (buildingWhatWorkingDir inputs.buildingWhat)
          scanner (scannerCommand label) xml result spec.coreOnly
  rid <- registerProtocolRule v spec label $
    staticRule (waylandScannerCommand args) [FileDependency (makeLocation xml)] [result]
  return (RuleOutput rid 0, result)
  where
    v          = verbosityFromFlags $ buildingWhatVerbosity inputs.buildingWhat
    autogen    = autogenComponentModulesDir inputs.localBuildInfo (targetCLBI inputs.targetInfo)
    result     = Location autogen $ scannerResultRelativePath label spec

data ScannerArgs = ScannerArgs
  { sVerbosity     :: VerbosityFlags -- verbosity
  , sWorkdir       :: Maybe (SymbolicPath CWD ('Dir Pkg)) -- workdir
  , scannerProgram :: ConfiguredProgram -- ^ wayland-scanner
  , scannerCmd     :: String
  , sProtoXML      :: SymbolicPath Pkg 'File -- ^ Path to the @protocol.xml@ file
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
  -> SymbolicPath Pkg File -- ^ C source location
  -> [Dependency] -- ^ Additional dependencies
  -> RulesM RuleId
infoModuleRule inputs (spec, xmlFP, _, _) csource extraDeps =
  registerProtocolRule (verbosityFromFlags verbosity) spec (Proxy @InfoModule) $
    staticRule (infoModCommand args) deps [result]
  where
    verbosity     = buildingWhatVerbosity inputs.buildingWhat
    args          = InfoModuleArgs{..}
    deps          = L.sort $ FileDependency (makeLocation (makeSymbolicPath args.xmlFP :: SymbolicPath Pkg File)) : extraDeps
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
  createDirectoryIfMissingVerbose v True (FP.takeDirectory dstFP)
  withFileContents (interpretSymbolicPath mbWorkdir csource) $ \csource' ->
    withFileContents xmlFP $ \protoXML ->
    rewriteFileEx v dstFP
      [__i'L|
      {-\# LANGUAGE MultilineStrings \#-}
      {-\# LANGUAGE QuasiQuotes \#-}
      module #{prettyShow outModuleName} where

      import           Distribution.HsBindgen.Types
      import           Distribution.HsBindgen.Utils (Value, aesonQQ, fromJSON, Result(..))
      import           Distribution.Wayland.ProtocolXML (Protocol, protocolFromString)
      import qualified Language.Haskell.TH.Syntax as TH

      protocol :: Protocol
      protocol = protocolFromString protocolXmlString

      protocolSpec :: ProtocolSpec
      protocolSpec = case fromJSON protocolSpecJSON of
        Success r -> r
        Error e -> error e

      protocolSpecJSON :: Value
      protocolSpecJSON = #{protoJSON}

      protocolXmlString :: String
      protocolXmlString = """#{protoXML}"""

      addCSource :: TH.Q [a]
      addCSource = TH.addForeignSource TH.LangC cSource >> return []

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
  -> [(String, ProtocolSpec)] -- ^ Dependant protocols
  -> Proxy (WrapInterface a)
  -> RulesM [RuleId]
genWrapperRule pbci spec deps label
  | spec & has (disabled . ix wcomp) = return []
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
        , verbosityFlags = buildingWhatVerbosity pbci.buildingWhat
        , .. }
  rid <- registerProtocolRule v spec label $ staticRule (genWrapperCommand arg)
    (L.sort [FileDependency $ makeLocation f | f <- maybeToList fileIn]) (result NE.:| [])
  return [rid]
  where
    v = verbosityFromFlags $ buildingWhatVerbosity pbci.buildingWhat
    wcomp = protoResultPC label
    component = case wcomp of
          WrapClient -> ClientBindings
          WrapServer -> ServerBindings
          _ -> error "genwrapper"
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
    module #{_MODNAME} (module #{_MODNAME}, module #{_ENUMS}) where

    #{importBinds bindgen}

    #{contents}

    #{if component == ClientBindings then "$(addCSource)" else "" :: String}
    |]
  where
    v = verbosityFromFlags verbosityFlags
    infoMod  = spec ^?! computedModuleNames . ix InfoModule
    enums    = spec ^?! bindGens . ix EnumBindings
    _INFO    = prettyShow infoMod
    _MODNAME = prettyShow wrapperModule
    _BINDS   = prettyShow $ fromFlag bindgen.moduleName
    _ENUMS   = prettyShow $ fromFlag enums.moduleName
    importBinds bg = unlines $ map renderImport $
      [ (False, "WL.Internals.TH", "") ] ++
      [ (True,  "WL.Internals.TH.Server", "TH") | component == ServerBindings ] ++
      [ (False, _INFO, "") ] ++
      [ (False, _ENUMS, "") ] ++
      [ (False, _BINDS, "") ] ++
      [ (False, _BINDS ++ ".Global", "") | fromFlagOrDefault True bg.genGlobal ] ++
      [ (True,  _BINDS ++ ".Safe", "Safe") | fromFlagOrDefault True bg.hasSafe ] ++
      [ (True,  _BINDS ++ ".Unsafe", "Unsafe") | fromFlagOrDefault True bg.hasUnsafe ] ++
      [ (True,  _BINDS ++ ".FunPtr", "FunPtr") | fromFlagOrDefault True bg.hasPointer ] ++
      [ (True, prettyShow mo, ifn) | (ifn, mods) <- protoDeps, mo <- mods ]

    renderImport (qual, na, as) = "import " ++ (if qual then "qualified " else "") ++ na ++ " as " ++ (if as == "" then na else as)
      -- ppDep (ifname, mods) = unlines [ [iii|import qualified #{prettyShow mo} as #{ifname}|] | mo <- mods ]

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
makeProtocol cfg = optionalProtocol Nothing cfg >>= either error return

-- | Register a protocol if it's new or newer than any existing ones.
optionalProtocol :: Monad m => Maybe ProtocolId -> ProtocolConfig -> ScannerT m (Either String ProtocolId)
optionalProtocol mkey cfg = do
  st <- get
  let existing = M.keys $ M.filterWithKey (conflicts key) st.protocolConfigs
  case M.lookup key st.protocolConfigs of
    Nothing
      | all (key >) existing -> doReplace existing
      | otherwise -> return $ Left $ "A newer protocol already loaded: " <> show existing
    Just _ -> return $ Left $ "Duplicate protocol: " ++ show key
  where
    key = fromMaybe (deriveProtocolId cfg) mkey
    conflicts k1 k2 _ = k1.name == k2.name
    doReplace xs = do
      modify $ \s -> s { protocolConfigs = M.insert key cfg . (`M.withoutKeys` Set.fromList xs) $ s.protocolConfigs }
      return $ Right key

registerProtocolsFileGlob
  :: Bool -- ^ Allow multiple instances of the same protocol? Latest/stable is selected.
  -> SymbolicPath Pkg (Dir DataDir) -- ^ Root directory to start the glob search
  -> FilePath -- ^ File glob, i.e. @"**/*.xml"@
  -> (ProtocolId -> ProtocolConfig -> Maybe ProtocolConfig)
      -- ^ Can be used to select only certain protocol files; also possible transformation to apply on the detected protocols.
  -> ScannerT IO ()
registerProtocolsFileGlob lax dir pat f = do
  setup <- ask
  let v = verbosityFromFlags $ fromFlag setup.packageBuildDescr.configFlags.configCommonFlags.setupVerbosity
      mbWorkDir = flagToMaybe setup.packageBuildDescr.configFlags.configCommonFlags.setupWorkingDir
      workDir = maybe (unsafeCoerceSymbolicPath dir) (fromMaybe sameDirectory mbWorkDir </>) $ symbolicPathRelative_maybe dir
  matched <- liftIO $ do
    notice v $ "looking for protocols matching " ++ pat ++ " in " ++ prettyShow workDir
    matchDirFileGlob v CabalSpecV3_0 (Just workDir) (makeSymbolicPath pat)
  forM_ matched $ \xmlFP -> do
    let (protoId, protoConf) = parseWaylandProtosPath (getSymbolicPath xmlFP)
    case f protoId protoConf of
      Nothing -> liftIO . info v $ "Skipped protocol " ++ prettyShow protoId
      Just newConf -> do
        res <- optionalProtocol (Just protoId) $ newConf & protocolDirs <>~ [dir]
        case res of
          Right{} -> liftIO . infoNoWrap v $ "Included protocol " ++ prettyShow protoId ++ " (" ++ prettyShow xmlFP ++ ")"
          Left err -> unless lax $ liftIO $ die' v err

-- | Register some 'HsBindGen'.
registerBindGen :: Monad m => HsBindGen -> ScannerT m ()
registerBindGen bgen = do
  modify $ \s -> s { otherBindGen = s.otherBindGen <> [bgen] }
  let mo = bgen ^. moduleName . to fromFlag
      bs = BModule mo (bgen ^. bindingSpec . to getSpec')
      ref = ProtocolRef (M.fromList [(x, bgen.headers) | x <- bindgenComponents ])
                        (M.fromList [(x, [bs]) | x <- bindgenComponents ])
  modifyOptions $ knownProtocols <>~ [(prettyShow mo, ref)]
  where
    getSpec' x = case x of
      Flag (GenerateBSpec (Just loc)) -> Just $ takeDirectorySymbolicPath $ location loc
      _                               -> Nothing

withLBC :: (m ~ ScannerT n, Monad n) => (LocalBuildConfig -> m r) -> m r
withLBC f = do
  st <- ask
  f st.localBuildConfig

-- * ProtocolConfig -> ProtocolSpec

dynamicProtocols
  :: HasCallStack
  => MonadFix m
  => SetupInfo
  -> ScannerT m ()
  -> m (ProtocolScannerOptions, [ProtocolSpec], [HsBindGen])
dynamicProtocols st scanM = mdo
  ((), finalState) <- run scanM
  let cfgs = finalState.protocolConfigs
      opts = finalState.scannerOptions
      specs = M.map (interpretProtocolConfig opts) cfgs
  return (opts, specs ^.. each, finalState.otherBindGen)
  where
    initialState = State mempty def []
    run = flip State.runStateT initialState . flip Reader.runReaderT st . runScannerT

interpretProtocolConfig :: HasCallStack => ProtocolScannerOptions -> ProtocolConfig -> ProtocolSpec
interpretProtocolConfig o c' = spec
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
      & doDependsOn k bc.bcBindGen.dependsOn
      & flip (foldl (&)) [ solveDep k nm | nm <- bc ^. bcDepends ]
      & (<> bc.bcBindGen)
      & perComp k
      & extBindingSpecs %~ L.sort . L.nub
      where
        bc = c ^? bindGens . ix k & fromMaybe def

    doDependsOn :: ProtoComponent -> [ModuleName] -> HsBindGen -> HsBindGen
    doDependsOn k refs x = foldl (&) x [ solveDep k (prettyShow ref) | ref <- refs ]

    solveDep :: HasCallStack => ProtoComponent -> String -> (HsBindGen -> HsBindGen)
    solveDep k x
      | Just r <- o.knownProtocols ^? ix x = addProtoRef k r
      | otherwise = id

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

resolveDeps :: ProtocolInfo -> ProtocolSpec -> ProtoComponent -> HsBindGen
resolveDeps pinfo spec k = mconcat [ solveDep d | d <- spec.dependsOn ]
  where
    solveDep :: HasCallStack => String -> HsBindGen
    solveDep x
      | r : _ <- [ s | (s,_,_,_) <- pinfo.infoFound, x == s.fullName ] = protoAddDependent r k mempty
      | (_, r) : _ <- pinfo.infoDeps, r.fullName == x = protoAddDependent r k mempty
      | otherwise = error $ "Could not resolve: " ++ show x ++ " for " ++ spec.fullName

-- | Makes the first protocol a requirement for the second. References to the first in the second are resolved to the
-- the dependent protocol's bindings. Without this it is likely that guest mentions get duplicate bindings.
protoAddDependent :: HasCallStack
                  => ProtocolSpec
                  -> ProtoComponent
                  -> HsBindGen
                  -> HsBindGen
protoAddDependent dep comp = \x -> x
    & headers %~ L.nub . (<> hdrs comp)
    & excludeHeaders <>~ toPCRE (hdrs comp)
    & extBindingSpecs <>~ [ mo | mo@BModule{} <- dep ^.. bindGens . ix comp . extBindingSpecs . folded ]
    & extBindingSpecs <>~ [ getSpec dep comp ]
    & extBindingSpecs %~ L.nub
  where
    hdrs k = dep ^.. bindGens . ix k . headers . folded
    getSpec x k = BModule
        (x ^?! bindGens . ix k . moduleName . to fromFlag)
        (x ^?! bindGens . ix k . bindingSpec . to getSpec')
    getSpec' x = case x of
      Flag (GenerateBSpec (Just loc)) -> Just $ takeDirectorySymbolicPath $ location loc
      _                               -> Nothing

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

importPackageProtocols :: PI.InstalledPackageInfo -> ScannerT IO ()
importPackageProtocols pkg = do
  let pdir : _ = pkg.importDirs
  let specdir = makeSymbolicPath @Pkg @(Dir Source) (pdir </> "binding-specs")
  let infojson = pdir </> "wayland-protocol-bindings.json"
  Just (res :: [ProtoFound]) <- liftIO $ A.decodeFileStrict infojson
  let protocols = [(map (.name) proto.interfaces, setBindgenDir specdir spec)
          | (spec, _, _, proto) <- res ]
  modifyOptions $ interfaceProtocols <>~ protocols
  -- Inject include dirs
  let incdirs = map makeSymbolicPath pkg.includeDirs
  modifyOptions $ optionCustom <>~ Endo (bindGens . each . bcBindGen . includeDirs <>~ incdirs)

getDependencies :: [P.PackageName] -> DynamicSetup [PI.InstalledPackageInfo]
getDependencies required = do
  setup <- ask
  let v = verbosityFromFlags $ fromFlag setup.packageBuildDescr.configFlags.configCommonFlags.setupVerbosity
  index <- liftIO $ getInstalledPackages v setup.packageBuildDescr.compiler Nothing setup.packageBuildDescr.withPackageDB setup.localBuildConfig.withPrograms
  let index'   = either id (error "index not found") $ dependencyClosure index $ map (P.newSimpleUnitId . givenComponentId) setup.packageBuildDescr.configFlags.configDependencies
      result   = filter selector $ reverseTopologicalOrder index'
      notFound = [ k | k <- required, notElem k $ map P.packageName result ]
  when (notFound /= []) $
    liftIO $ die' v $ "could not find requested packages: " ++ show notFound
  return result
  where
    selector pkg = P.packageName pkg `elem` required
