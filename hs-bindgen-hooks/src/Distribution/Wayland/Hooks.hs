{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE OverloadedLabels #-}
{-# LANGUAGE RecursiveDo #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE OverloadedRecordDot #-}
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
  , module I
  , Endo(..)
  , Set.Set
  , liftIO
  , ReaderClass.ask
  ) where

import           Distribution.HsBindgen.Hooks
import           Distribution.HsBindgen.Types as I
import           Distribution.HsBindgen.Utils
import           Distribution.Wayland.ProtocolXML

import           Distribution.CabalSpecVersion
import           Distribution.Compat.Binary
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
import qualified Control.Monad.Reader.Class as ReaderClass
import qualified Control.Monad.State.Class as StateClass
import           Control.Monad.Trans (MonadTrans(..))
import qualified Control.Monad.Trans.Reader as Reader
import qualified Control.Monad.Trans.State as State
import qualified Control.Monad.Trans.Writer.Strict as Writer
import qualified Data.Aeson as A
import           Data.Foldable
import           Data.Functor.Identity
import           Data.Kind
import qualified Data.List as L
import qualified Data.List.NonEmpty as NE
import qualified Data.Map.Strict as M
import           Data.Maybe
import           Data.Monoid
import qualified Data.Set as Set
import           Data.String.Interpolate
import           Data.Typeable
import           GHC.Generics (Generic)
import           GHC.Stack

import           Lens.Micro
import           Lens.Micro.GHC ()
import qualified System.FilePath as FP

type DynamicSetup = ScannerT IO

newtype ScannerT m a = ScannerT
  { runScannerT
    :: Reader.ReaderT SetupInfo (Writer.WriterT [HsBindGen]
        (State.StateT State m)) a
  } deriving newtype (Functor, Applicative, Monad, MonadIO, MonadFix, MonadFail
    , ReaderClass.MonadReader SetupInfo, StateClass.MonadState State)

type ScannerM a = ScannerT Identity a

instance MonadTrans ScannerT where
  lift = ScannerT . lift . lift . lift

data State = State
  { protocolConfigs :: M.Map ProtocolId ProtocolConfig
  , scannerOptions  :: ProtocolScannerOptions
  }

-- * Hooks

waylandProtocolHooks :: HasCallStack => DynamicSetup () -> SetupHooks
waylandProtocolHooks cfg =
  mempty { configureHooks = mempty { preConfPackageHook = Just bindgenPreConfPackageHook } } <>
  mempty { configureHooks = mempty { preConfPackageHook = Just preConfPackage } } <>
  mempty { configureHooks = mempty { preConfComponentHook = Just $ preConfComponent cfg } } <>
  mempty { buildHooks = mempty { preBuildComponentRules = Just preBuildComponent } } <>
  mempty { installHooks = mempty { installComponentHook = Just installHook } }
  where
    preBuildComponent = bindgenPreBuildComponentRules cfg

preConfPackage :: HasCallStack => PreConfPackageInputs -> IO PreConfPackageOutputs
preConfPackage inp@PreConfPackageInputs{configFlags=flags, localBuildConfig=lbc} = do
  configured <- configurePrograms v progs lbc.withPrograms
  return (noPreConfPackageOutputs inp) { extraConfiguredProgs = configured }
  where
      v     = verbosityFromFlags $ fromFlag $ setupVerbosity $ configCommonFlags flags
      progs = [ "wayland-scanner" ]

preConfComponent :: HasCallStack => DynamicSetup () -> PreConfComponentInputs -> IO PreConfComponentOutputs
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

    --v        = verbosityFromFlags $ fromFlag $ setupVerbosity $ configCommonFlags pbd.configFlags
    distpref = fromFlag $ setupDistPref $ configCommonFlags pbd.configFlags
    autogen  = distpref </> makeRelativePathEx "build" </> makeRelativePathEx "autogen"

installHook :: InstallComponentInputs -> IO ()
installHook inputs = do
  installFileGlob v CabalSpecV3_16 cwd (Just src, dest) (makeRelativePathEx "binding-specs/*.yaml")
  installFileGlob v CabalSpecV3_16 cwd (Just $ src </> makeRelativePathEx "autogen", dest) (makeRelativePathEx "*.json")
  where
    v           = verbosityFromFlags $ moreVerbose $ fromFlag $ setupVerbosity inputs.copyFlags.copyCommonFlags
    src         = makeSymbolicPath $ interpretSymbolicPathLBI lbi $ buildDir lbi
    dest        = makeSymbolicPath installDirs.libdir
    installDirs = absoluteComponentInstallDirs pd lbi cuid copyDest
    cuid        = inputs.targetInfo.targetCLBI.componentUnitId
    copyDest    = inputs.copyFlags.copyDest & fromFlag
    lbi         = inputs.localBuildInfo
    pd          = inputs.localBuildInfo.localBuildDescr.packageBuildDescr.localPkgDescr
    cwd         = mbWorkDirLBI inputs.localBuildInfo

instance MkBindRules (DynamicSetup ()) where
  bindTargets pci act = do
    let localBC   = pci.localBuildConfig
        packageBD = pci.packageBuildDescr
    (_, protos, bgens) <- dynamicProtocols SetupInfo{..} act
    pure (bgens <> concatMap (\s -> M.elems s.bindGens) protos)

  mkBindRules pbci dict act = do
    let localBC   = pbci.localBuildInfo.localBuildConfig
        packageBD = pbci.localBuildInfo.localBuildDescr.packageBuildDescr
    (opts, protos, bgens) <- liftIO $ dynamicProtocols SetupInfo{..} act
    liftM2 (++) (mkBindRules pbci dict bgens) (protoRules opts protos)
      where
        protoRules opts xs = do
          protos <- locateProtocols pbci xs
          bgens <- forM protos $ protocolRules pbci opts protos
          writeProtos protos
          return $ mconcat bgens

        writeProtos xs = do
          liftIO $ noticeNoWrap v "writing .json"
          liftIO $ rewriteFileEx v (interpretSymbolicPathLBI pbci.localBuildInfo dst)
            [i|#{A.encode xs}|]

        dst = autogen </> makeRelativePathEx "wayland-protocol-bindings.json"
        autogen    = autogenComponentModulesDir pbci.localBuildInfo (targetCLBI pbci.targetInfo)
        v          = verbosityFromFlags verbosity
        verbosity  = buildingWhatVerbosity pbci.buildingWhat

-- * Utils

locateProtocols
  :: PreBuildComponentInputs -> [ProtocolSpec] -> RulesM [(ProtocolSpec, Protocol)]
locateProtocols inputs protos = forM protos $ \spec -> do
  xml' <- liftIO $ findFileCwd v (buildingWhatWorkingDir inputs.buildingWhat) (searchDirs spec) spec.protocolXML
  let xmlFP = interpretSymbolicPathLBI inputs.localBuildInfo xml'
  addRuleMonitors $ monitorFileHashedSearchPath [] xmlFP
  proto <- liftIO $ protocolFromFile xmlFP
  return (spec, proto)
  where
    verbosity  = buildingWhatVerbosity inputs.buildingWhat
    v          = verbosityFromFlags verbosity
    searchDirs spec = spec.protocolDirs ++ datadirWL
    datadirWL  = targetComponent inputs.targetInfo ^. BI.customFieldsBI . getting (map makeSymbolicPath . maybeToList . L.lookup "datadir-wayland-protocols")

protocolRules
  :: HasCallStack
  => PreBuildComponentInputs -- ^ hook inputs
  -> ProtocolScannerOptions
  -> [(ProtocolSpec, Protocol)] -- ^ Known (processed) protocols
  -> (ProtocolSpec, Protocol) -- ^ Target protocol
  -> RulesM [(HsBindGen, [Dependency])] -- ^ [bindgen + deps]
protocolRules pbci@PreBuildComponentInputs{buildingWhat=what, localBuildInfo=lbi} opts known (spec, proto) = do

  xml' <- liftIO $ findFileCwd v (buildingWhatWorkingDir what) searchDirs spec.protocolXML
  let xmlFP = interpretSymbolicPathLBI lbi xml'

  let ifaceNames = [ x.name | x <- proto.interfaces ]
      ifaceDeps  = getProtocolInterfaceDeps proto
      resolvedDeps = spec.dependsOn <>
        [ (ifname, p) | ifname <- ifaceDeps, (s, p) <- opts.interfaceProtocols, s == ifname ] <>
        [ (ifname, s) | ifname <- ifaceDeps, (s, p) <- known, ifname `elem` [ x.name | x <- p.interfaces ]
        ]
      missing = [ iface | iface <- ifaceDeps, all ((/= iface) . fst) resolvedDeps ]
  when (missing /= []) $ do
    liftIO $ die' v $ "Missing dependencies: " ++ show missing


  liftIO $ infoNoWrap v $ unlines
      [ "Protocol: " ++ proto.name
      , "  Provides: " ++ unwords ifaceNames
      , "  Depends on: " ++ unwords ifaceDeps
      , "  Using protocol XML file " ++ xmlFP  ++ " for " ++ spec.fullName ++ " (" ++ getSymbolicPath spec.protocolXML ++ ")"
      ]

  (scanner, _) <- liftIO $ requireProgram v (simpleProgram "wayland-scanner") lbi.localBuildConfig.withPrograms

  let mkHeader :: forall (a :: ScannerResult). (HasScannerResult a, Show (Env (ScannerOutput a)))
          => Proxy a -> RulesM (RuleOutput, Location)
      mkHeader p1 = do
        let loc = Location autogen $ scannerResultRelativePath p1 spec
        rid <- registerProtocolRule spec (show $ typeRep p1) $
          mkScannerRule what scanner xml' p1 loc spec.coreOnly
        return (RuleOutput rid 0, loc)

  -- c-source/headers generation
  rids <- sequence
    [ mkHeader @EnumBindings   Proxy
    , mkHeader @ClientBindings Proxy
    , mkHeader @ServerBindings Proxy
    , mkHeader @PrivateSource  Proxy
    ]
  -- internal info hs module generation
  _ <- let mbWorkdir     = mbWorkDirLBI lbi
           outModuleName = spec ^?! computedModuleNames . ix InfoModule
           result        = Location autogen (makeRelativePathEx $ toFilePath outModuleName <.> "hs")
           (csourceRule, csourceFrom) = rids !! 3
           csource = csourceFrom
           extraDeps = [ RuleDependency csourceRule ]
        in registerInfoModule InfoModuleArgs{..} pbci

  -- gen wrapper module
  _ <- registerGenerateRulesIfEnabled (WEnv @Client ClientBindings resolvedDeps) pbci spec
  _ <- registerGenerateRulesIfEnabled (WEnv @Server ServerBindings resolvedDeps) pbci spec

  let targets = spec ^. bindGens . to M.toList
  let prereqs = sortNub (map snd resolvedDeps)
  let deps = [ (bgen, [ RuleDependency rout | (rout, loc) <- rids, any (checkLocation loc) bgen.headers ])
             | (comp, bgenIn) <- targets
             , let bgen = protoAddDependent "" (Just 2) prereqs comp bgenIn
             ]
  return deps
  where
    verbosity  = buildingWhatVerbosity what
    v          = verbosityFromFlags verbosity
    autogen    = autogenComponentModulesDir lbi clbi
    clbi       = targetCLBI pbci.targetInfo
    component  = targetComponent pbci.targetInfo
    datadirWL  = component ^. BI.customFieldsBI . getting (map makeSymbolicPath . maybeToList . L.lookup "datadir-wayland-protocols")
    searchDirs = spec.protocolDirs ++ datadirWL

    checkLocation (Location b1 f1) (Location b2 f2) =
      getSymbolicPath f1 == getSymbolicPath f2 && (b1 == coerceSymbolicPath b2 || b1 == coerceSymbolicPath autogen && b2 == sameDirectory)

protoAutogenModules :: ProtocolSpec -> [(Bool, ModuleName)] -- bool true if export the module
protoAutogenModules spec =
  [ (True, mn)
    | k <- [ WrapClient, WrapServer, InfoModule ]
    , not $ spec & has (disabled . ix k)
    , Just mn <- [ spec ^? computedModuleNames . ix k ]
  ]

resolveSet :: SetupInfo -> DynamicSetup () -> IO (M.Map ProtocolId ProtocolSpec)
resolveSet st act = do
  (_, protos, _) <- dynamicProtocols st act
  return $ M.fromList [ (k, p) | p <- protos, let k = getId p ]

registerProtocolRule :: ProtocolSpec -> String -> Rule -> RulesM RuleId
registerProtocolRule spec label rule = do
  liftIO $ infoNoWrap v $ "=== rule " ++ rname ++ "\n"
    ++ unlines (map (("  dep: " ++) . prettyShow) rule.staticDependencies)
    ++ "  produces: " ++ (show $ NE.toList rule.results)
  registerRule (fromString rname) rule
    where
      rname = "wl::" ++ spec.fullName ++ "::" ++ label
      v = verbosityFromFlags verbose

-- * GENERATED INTERFACE

-- | Class of things that can be generated from a 'ProtocolSpec'.
class Typeable a => Generated (a :: ProtocolResult) where

  data Env a :: Type

  registerGenerateRules :: Env a -> PreBuildComponentInputs -> ProtocolSpec -> RulesM [RuleId]
  registerGenerateRules _ _ _ = return []

registerGenerateRulesIfEnabled
  :: forall a. Generated a
  => Env a -> PreBuildComponentInputs -> ProtocolSpec -> RulesM [RuleId]
registerGenerateRulesIfEnabled env pbci spec
  | spec & has (disabled . ix (getFpr (Proxy :: Proxy a))) = do
      liftIO $ putStrLn "!!! disabled"
      return []
  | otherwise = registerGenerateRules env pbci spec

-- * ScannerOutput

instance (HasScannerResult r) => Generated (ScannerOutput (r :: ScannerResult)) where

  data Env (ScannerOutput r) = ScannerArgs
    { sVerbosity :: VerbosityFlags -- verbosity
    , sWorkdir   :: Maybe (SymbolicPath CWD ('Dir Pkg)) -- workdir
    , scannerProgram :: ConfiguredProgram -- wayland-scanner
    , scannerCmd :: String
    , sProtoXML  :: SymbolicPath Pkg 'File -- proto.xml
    , sResult    :: Location -- result
    , coreOnly   :: Bool
    } deriving (Eq, Show, Generic, Binary)

class Typeable a => HasScannerResult (a :: ScannerResult) where

  scannerResultRelativePath :: Proxy a -> ProtocolSpec -> RelativePath from 'File

  scannerCommand :: Proxy a -> String

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

mkScannerRule
  :: forall (res :: ScannerResult). (Typeable res, HasScannerResult res, Show (Env (ScannerOutput res)))
  => BuildingWhat
  -> ConfiguredProgram
  -> SymbolicPath Pkg 'File
  -> Proxy (res :: ScannerResult)
  -> Location
  -> Bool
  -> Rule
mkScannerRule what scanner xml p1 loc coreOnly' = staticRule (mkCommand (static Dict) (static scannerAction) args) deps [loc]
  where
    args :: Env (ScannerOutput res)
    args = ScannerArgs (buildingWhatVerbosity what) (buildingWhatWorkingDir what) scanner (scannerCommand p1)
      xml loc coreOnly'

    deps = [FileDependency (makeLocation xml)]

scannerAction :: Env (ScannerOutput r) -> IO ()
scannerAction env = do
  createDirectoryIfMissingVerbose v True (FP.takeDirectory $ froml env.sResult)
  runProgramCwd v env.sWorkdir env.scannerProgram $
    [ "--include-core-only" | env.coreOnly ]
    <> [ "--strict", env.scannerCmd, xml, froml env.sResult]
 where
   v     = verbosityFromFlags env.sVerbosity
   xml   = interpretSymbolicPath env.sWorkdir env.sProtoXML
   froml = interpretSymbolicPath env.sWorkdir . location

-- * InfoModule

data InfoModuleArgs = InfoModuleArgs
   { verbosity     :: VerbosityFlags
   , mbWorkdir     :: Maybe (SymbolicPath CWD (Dir Pkg)) -- workdir
   , spec          :: ProtocolSpec
   , xmlFP         :: FilePath -- SymbolicPath Pkg File -- path to protocol.xml
   , outModuleName :: ModuleName -- output module name
   , result        :: Location -- output file
   , csource       :: Location
   , extraDeps     :: [Dependency]
   } deriving (Eq, Show, Generic, Binary)

registerInfoModule :: InfoModuleArgs -> PreBuildComponentInputs -> RulesM ()
registerInfoModule InfoModuleArgs{..} pbci =
  case spec ^? computedModuleNames . ix InfoModule of
    Just infomod -> void $ registerProtocolRule spec (show $ typeRep (Proxy :: Proxy InfoModule)) $ infoModRule pbci spec xmlFP infomod csource extraDeps
    Nothing -> return ()

infoModRule :: PreBuildComponentInputs
            -> ProtocolSpec
            -> FilePath
            -> ModuleName
            -> Location
            -> [Dependency]
            -> Rule
infoModRule pbci spec xmlFP modname csource extraDeps =
  staticRule (mkCommand (static Dict) (static infoModAction) args) deps [out]
  where
    args = InfoModuleArgs (buildingWhatVerbosity pbci.buildingWhat) (buildingWhatWorkingDir pbci.buildingWhat) spec xmlFP modname out csource extraDeps
    deps = L.sort $ FileDependency (makeLocation (makeSymbolicPath xmlFP :: SymbolicPath Pkg File)) : extraDeps
    out  = Location autogen $ makeRelativePathEx $ toFilePath modname <.> "hs"
    autogen = autogenComponentModulesDir pbci.localBuildInfo (targetCLBI pbci.targetInfo)

infoModAction :: InfoModuleArgs -> IO ()
infoModAction InfoModuleArgs{..} = do
  withFileContents (getSymbolicPath $ location csource) $ \csource' -> do
    createDirectoryIfMissingVerbose v True (FP.takeDirectory dstFP)
    let value = "[aesonQQ|" <> A.encode spec <> "|]"
    withFileContents xmlFP $ \content ->
      rewriteFileEx v dstFP
      [__i'L|
      {-\# LANGUAGE MultilineStrings \#-}
      {-\# LANGUAGE QuasiQuotes \#-}
      {-\# LANGUAGE TemplateHaskell \#-}
      module #{prettyShow outModuleName} where

      import Distribution.HsBindgen.Types
      import Distribution.HsBindgen.Utils
      import Distribution.Wayland.ProtocolXML
      import Language.Haskell.TH.Syntax

      addCSource :: Q [Dec]
      addCSource = addForeignSource LangC csource >> return []

      csource :: String
      csource = """#{csource'}"""

      protocol :: ProtocolSpec
      protocol = case fromJSON val of
                   Success r -> r
                   Error e -> error e
        where val = #{value}

      proto :: Protocol
      proto = protocolFromString protoXml

      protoXml :: String
      protoXml = """#{content}"""
      |]
    where
      v     = verbosityFromFlags verbosity
      dstFP = interpretSymbolicPath mbWorkdir $ location result

-- * WrapInterface

instance Typeable a => Generated (WrapInterface (a :: ClientOrServer)) where

  data Env (WrapInterface a) = WEnv ProtoComponent [(String, ProtocolSpec)]

  registerGenerateRules (WEnv c deps) = wrapRulesWith @a Proxy c deps

data GenWrapModArgs = GenWrapModArgs
  { vflags    :: VerbosityFlags
  , dst       :: FilePath      -- ^ Target file (i.e. autogendir)
  , dstModule :: ModuleName    -- ^ Target module name
  , spec      :: ProtocolSpec  -- ^ The related protocol
  , bindgen   :: HsBindGen     -- ^ The main client OR server bindgen rules
  , component :: ProtoComponent
  , inputFile :: Maybe FilePath -- ^ Input file (may not exist)
  , protoDeps :: [(String, [ModuleName])]
  } deriving (Eq, Show, Generic, Binary)

wrapRulesWith :: forall a. HasCallStack
              => Typeable a
              => Proxy (WrapInterface (a :: ClientOrServer))
              -> ProtoComponent
              -> [(String, ProtocolSpec)]
              -> PreBuildComponentInputs
              -> ProtocolSpec
              -> RulesM [RuleId]
wrapRulesWith proxy bindc deps pbci spec = do
  fileIn <- liftIO $ findFileCwdWithExtension (buildingWhatWorkingDir pbci.buildingWhat) ["hs.in"]
    (targetComponent pbci.targetInfo ^. BI.hsSourceDirs) fileInName
  -- watch the config files for changes
  addRuleMonitors [ monitorFileHashed $ getSymbolicPath f | f <- maybeToList fileIn ]

  let arg = GenWrapModArgs{ dst = interpretSymbolicPathLBI pbci.localBuildInfo $ location result
                          , inputFile = interpretSymbolicPathLBI pbci.localBuildInfo <$> fileIn
                          , protoDeps = L.nub . L.sort $
                            [ (prettyShow mo, [mo]) | BModule mo _ <- bindgen ^. I.extBindingSpecs ] ++
                            [ ("IF_" ++ n,
                              (s ^.. computedModuleNames . ix comp) ++
                              (s ^.. bindGens . ix EnumBindings . I.moduleName . to fromFlag) ++
                              (s ^.. bindGens . ix bindc . I.moduleName . to fromFlag)
                              ) | (n, s) <- deps ] ++
                            [ (prettyShow m, [m]) | (_, s) <- deps, m <- s ^.. computedModuleNames . ix comp] ++
                            [ (prettyShow m, [m]) | (_, s) <- deps, m <- s ^.. bindGens . ix EnumBindings . I.moduleName . to fromFlag] ++
                            [ (prettyShow m, [m]) | (_, s) <- deps, m <- s ^.. bindGens . ix bindc . I.moduleName . to fromFlag] ++
                            [ (n, [m]) | (m, n) <- spec ^. qualifiedImports . to toList ]
                          , component = bindc
                          , .. }
  rid <- registerProtocolRule spec (show $ typeRep proxy) $
    staticRule (generateWrapper arg) (L.sort [FileDependency $ makeLocation f | f <- maybeToList fileIn]) (result NE.:| [])
  return [rid]
  where
    vflags  = buildingWhatVerbosity pbci.buildingWhat
    outDir  = autogenComponentModulesDir pbci.localBuildInfo (targetCLBI pbci.targetInfo)
    comp    = getFpr proxy
    bindgen    = spec ^?! bindGens . ix bindc
    dstModule = spec ^?! computedModuleNames . ix comp
    result  = Location outDir $ moduleNameSymbolicPath dstModule <.> "hs"
    fileInName  = moduleNameSymbolicPath dstModule

generateWrapper :: GenWrapModArgs -> Command GenWrapModArgs (IO ())
generateWrapper = mkCommand (static Dict) (static generateWrapperAction)

generateWrapperAction :: HasCallStack => GenWrapModArgs -> IO ()
generateWrapperAction GenWrapModArgs{..} = do
  let infoMod  = spec ^?! computedModuleNames . ix InfoModule
      enums    = spec ^?! bindGens . ix EnumBindings
      _INFO    = prettyShow infoMod
      _MODNAME = prettyShow dstModule
      _BINDS   = prettyShow $ fromFlag bindgen.moduleName
      _ENUMS   = prettyShow $ fromFlag enums.moduleName

  infoNoWrap v $ "Generating wrapper for " ++ _INFO
  contents <-
    case inputFile of
      Just f -> do
         infoNoWrap v $ "Picked up custom template for " ++ prettyShow dstModule ++ " (" ++ f ++ ")"
         withFileContents f $ \x -> length x `seq` return x
      Nothing -> pure "clientFromProtocolXML' commonSettings protoXml"

  createDirectoryIfMissingVerbose v True (FP.takeDirectory dst)
  rewriteFileEx v dst [__i'L|
        #{pragmas}

        module #{_MODNAME}
          ( module #{_MODNAME}
          , module #{_ENUMS}
          ) where

        import           WL.Internals.TH
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
    v = verbosityFromFlags vflags
    ppDep (ifname, mods) = unlines [ [iii|import qualified #{prettyShow mo} as #{ifname}|] | mo <- mods ]
    pragmas :: String
    pragmas = unlines $
      [ "{-# OPTIONS_GHC -Wno-unused-imports #-}"
      , "{-# OPTIONS_GHC -Wno-dodgy-exports #-}"
      ] <>
        [ "{-# OPTIONS_GHC -ddump-splices #-}" | dstModule == "" ] -- debugging

-- * ScannerT interface

makeProtocol :: (Monad m) => ProtocolConfig -> ScannerT m ProtocolId
makeProtocol cfg = do
  st <- ScannerT $ lift $ lift State.get
  let key = getId cfg
  case M.lookup key st.protocolConfigs of
    Nothing -> do
      ScannerT $ lift $ lift $ State.modify $ \s -> s
        { protocolConfigs = M.insert key cfg s.protocolConfigs }
      return key
    Just _ -> error $ "Duplicate protocol: " ++ show key

getId :: ProtocolSpecX a -> ProtocolId
getId c = ProtocolId
  { name      = c.category ++ "-" ++ c.baseName
  , stability = c.stability
  , version   = ProtocolVersion (fromMaybe 1 c.version)
  }

optionalProtocol :: Monad m => (ProtocolId, ProtocolConfig) -> ScannerT m (Either String ProtocolId)
optionalProtocol (key, cfg) = do
  st <- ScannerT $ lift $ lift State.get
  case M.lookup key st.protocolConfigs of
    Nothing
      | xs@(_:_) <- M.keys $ M.filterWithKey (conflicts key) st.protocolConfigs -> do
        if all (key >) xs
           then doReplace xs
           else return $ Left $ "A newer protocol already loaded: " <> show xs
      | otherwise -> do
          ScannerT $ lift $ lift $ State.modify $ \s -> s
            { protocolConfigs = M.insert key cfg s.protocolConfigs }
          return $ Right key
    Just _ -> return $ Left $ "Duplicate protocol: " ++ show key
  where
    conflicts k1 k2 _ = k1.name == k2.name
    doReplace xs = do
      ScannerT $ lift $ lift $ State.modify $ \s -> s
        { protocolConfigs = M.insert key cfg . (`M.withoutKeys` Set.fromList xs) $ s.protocolConfigs }
      return $ Right key

modifyOptions :: (ProtocolScannerOptions -> ProtocolScannerOptions) -> ScannerT IO ()
modifyOptions f = StateClass.modify $ \s -> s { scannerOptions = f s.scannerOptions }

addExternal :: String -> ProtocolRef -> ScannerT IO ()
addExternal k v = do
  let adj = knownProtocols <>~ [(k, v)]
  modifyOptions adj

addExternalProto :: String -> ProtocolSpec -> ScannerT IO ()
addExternalProto k v = do
  let adj = knownProtocolSpecs <>~ [(k, v)]
  modifyOptions adj

-- * ProtocolConfig

mkBindgen :: String -> HsBindGen
mkBindgen mo = mempty { moduleName = toFlag $ fromString mo }

makeHeader :: FilePath -> Location
makeHeader = makeLocation . makeSymbolicPath @Pkg @File

addExtraBindGen :: Monad m => HsBindGen -> ScannerT m ()
addExtraBindGen x = ScannerT $ lift $ Writer.tell [x]

withLBC :: (Monad m', m ~ ScannerT m') => (LocalBuildConfig -> m r) -> m r
withLBC f = do
  st <- ScannerT Reader.ask
  f st.localBC

-- * ProtocolConfig -> ProtocolSpec

dynamicProtocols
  :: HasCallStack
  => SetupInfo
  -> ScannerT IO ()
  -> IO (ProtocolScannerOptions, [ProtocolSpec], [HsBindGen])
dynamicProtocols st scanM = do
  let initialState = State mempty def
  (((), bgen), finalState) <- State.runStateT (Writer.runWriterT (Reader.runReaderT (runScannerT scanM) st)) initialState
  let cfgs = finalState.protocolConfigs
      opts = finalState.scannerOptions
  mdo
    specs <- fmap (M.mapKeys (.name)) $ flip M.traverseWithKey cfgs $ \k cfg -> do
      return (M.singleton k (interpretProtocolConfig opts specs cfg))
    return (opts, specs ^.. each . each, bgen)

interpretProtocolConfig
  :: HasCallStack
  => ProtocolScannerOptions
  -> M.Map String (M.Map ProtocolId ProtocolSpec)
  -> ProtocolConfig
  -> ProtocolSpec
interpretProtocolConfig o specs c' = spec
  where
    spec = base
      { bindGens = M.fromList [ (k, binds k) | k <- bindgenComponents, k `Set.member` base.computedComponents ] }
      & computedModuleNames <>~ moduleNames base

    c = c'
      & protocolDirs <>~ o.optionProtocolDirs
      & disabled <>~ o.optionDisabled
      & computedComponents .~ (Set.fromList allComponents Set.\\ c.disabled)
      & appEndo o.optionCustom

    base = c { bindGens = mempty }

    modOf k = spec ^?! computedModuleNames . ix k
    moduleNames s = M.fromList [ (k, o.optionModuleName s k) | k <- allComponents ]

    binds :: HasCallStack => ProtoComponent -> HsBindGen
    binds k = mempty
      & I.moduleName .~ toFlag (modOf k)
      & flip (foldl (&)) [ solveDep k nm | nm <- bc ^. bcDepends ]
      & perComp k
      & I.headers <>~ bc.bcMainHeaders
      & I.extBindingSpecs <>~ bc.extBindingSpecs
      & I.excludeByDeclName <>~ bc.excludeByDeclName
      & appEndo bc.bcCustom
      where
        bc = c ^? bindGens . ix k & fromMaybe def

    solveDep :: ProtoComponent -> String -> (HsBindGen -> HsBindGen)
    solveDep k x
      | Just r <- o.knownProtocols ^? ix x =
        (I.headers <>~ (r.headers ^.. ix k . each)) .
        (I.excludeHeaders <>~ toPCRE (r.headers ^.. ix k . each)) .
        (I.extBindingSpecs <>~ (r.bindingSpecs ^.. ix k . each))
      | Just r <- o.knownProtocolSpecs ^? ix x = protoAddDependent "" Nothing [r] k
      | r : _ <- specs ^.. ix x . folded = protoAddDependent "" Nothing [r] k
      | otherwise = error $ "Could not resolve: " ++ show x

    perComp EnumBindings x = x
      & I.headers <>~ [ makeLocation $ scannerResultRelativePath @EnumBindings Proxy spec ]
      & I.hasPointer .~ Flag False
      & I.hasSafe    .~ Flag False
      & I.hasUnsafe  .~ Flag False
      & I.genGlobal  .~ Flag False

    perComp ClientBindings x = x
      & I.headers <>~ [ makeLocation $ scannerResultRelativePath @EnumBindings   Proxy spec
                      , makeLocation $ scannerResultRelativePath @ClientBindings Proxy spec ]
      & I.extBindingSpecs <>~ [ BModule (modOf EnumBindings) Nothing ]

    perComp ServerBindings x = x
      & I.headers     <>~ [ makeLocation $ scannerResultRelativePath @EnumBindings   Proxy spec
                          , makeLocation $ scannerResultRelativePath @ServerBindings Proxy spec ]
      & I.extBindingSpecs <>~ [ BModule (modOf EnumBindings) Nothing ]
    perComp _ x = x

-- | Makes the first protocol a requirement for the second. References to the first in the second are resolved to the
-- the dependent protocol's bindings. Without this it is likely that guest mentions get duplicate bindings.
protoAddDependent :: HasCallStack => String -> Maybe Int -> [ProtocolSpec] -> ProtoComponent -> HsBindGen -> HsBindGen
protoAddDependent _ mpos deps@(_:_) comp = adjust
  where
    adjust x = x
      & I.headers %~ L.nub . maybe (flip (<>)) (\n bs as -> take n as ++ bs ++ drop n as) mpos (hdrs comp)
      & I.excludeHeaders <>~ toPCRE (hdrs comp)
      & I.extBindingSpecs <>~ [ getSpec dep k | dep <- deps, k <- L.nub [ EnumBindings, comp ] ]
      & I.extBindingSpecs %~ L.nub

    getSpec :: ProtocolSpec -> ProtoComponent -> ExtBindingSpec
    getSpec dep k = BModule (dep ^?! bindGens . ix k . I.moduleName . to fromFlag) (dep ^?! bindGens . ix k . I.bindingSpec . to (fromFlagOrDefault $ GenerateBSpec Nothing) & getSpec')
    getSpec' x = case x of
                   GenerateBSpec Nothing    -> Nothing
                   GenerateBSpec (Just loc) -> Just $ takeDirectorySymbolicPath $ location loc
                   PrescriptiveBSpec _      -> Nothing

    hdrs EnumBindings = [ makeLocation $ scannerResultRelativePath @EnumBindings Proxy dep | dep <- deps ]
    hdrs ClientBindings = hdrs EnumBindings ++ [ makeLocation $ scannerResultRelativePath @ClientBindings Proxy dep  | dep <- deps]
    hdrs ServerBindings = hdrs EnumBindings ++ [ makeLocation $ scannerResultRelativePath @ServerBindings Proxy dep  | dep <- deps]
    hdrs _ = [ ]
protoAddDependent msg _ [] _ = msg `seq` id

setBindgenDir :: SymbolicPath Pkg (Dir Source) -> ProtocolSpec -> ProtocolSpec
setBindgenDir dir s = s
  & I.bindGens . each . I.extBindingSpecs . each %~ bspecsFrom
  & I.bindGens . each . I.bindingSpec %~ bspecIn
  where
    bspecsFrom x = case x of
       BModule m Nothing -> BModule m (Just dir)
       _ -> x
    bspecIn x = case x of
       Flag (GenerateBSpec Nothing) -> toFlag $ GenerateBSpec $ Just $ Location dir $ makeRelativePathEx @_ @File "file"
       NoFlag                       -> toFlag $ GenerateBSpec $ Just $ Location dir $ makeRelativePathEx @_ @File "file"
       _ -> x

depends :: [String] -> ProtocolConfig -> ProtocolConfig
depends pids = bindGens . each . bcDepends <>~ pids

onlyIf :: (ProtocolConfig -> Bool) -> (ProtocolConfig -> ProtocolConfig) -> Endo ProtocolConfig
onlyIf check f = Endo $ \s -> if check s then f s else s

onlyIfName :: String -> (ProtocolConfig -> ProtocolConfig) -> Endo ProtocolConfig
onlyIfName x = onlyIf $ \s -> s.baseName == x
