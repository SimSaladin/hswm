{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE RecursiveDo #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE QuasiQuotes #-}
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
  , Endo(..)
  , Set.Set
  , liftIO
  ) where

import           Distribution.HsBindgen.Hooks
import qualified Distribution.HsBindgen.Lens as I
import           Distribution.HsBindgen.Types
import           Distribution.HsBindgen.Types as Ty
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
import           Distribution.Types.Library (explicitLibModules)
import qualified Distribution.Types.Library.Lens as Lib
import           Distribution.Types.LocalBuildConfig
import           Distribution.Types.LocalBuildInfo
import           Distribution.Utils.Path

import           Control.Monad
import           Control.Monad.Fix (MonadFix)
import           Control.Monad.IO.Class
import           Control.Monad.Trans (MonadTrans(..))
import qualified Control.Monad.Trans.State as State
import qualified Control.Monad.Trans.Writer.Strict as Writer
import qualified Control.Monad.Trans.Reader as Reader
import           Data.Foldable
import           Data.Kind
import qualified Data.List as L
import qualified Data.List.NonEmpty as NE
import qualified Data.Map.Strict as M
import           Data.Maybe
import qualified Data.Set as Set
import           Data.String.Interpolate
import           Data.Typeable
import           GHC.Fingerprint
import           GHC.Generics (Generic)
import           GHC.Stack
import           Lens.Micro
import           Lens.Micro.GHC ()
import qualified System.FilePath as FP
import           Data.Functor.Identity
import           Data.Monoid

class MkBindRules a => ProtocolSet a where
  resolveSet :: SetupInfo -> a -> IO (M.Map ProtocolId ProtocolSpec)

instance ProtocolSet [ProtocolSpec] where
  resolveSet _ xs = return $ M.fromList [(k,v) | v <- xs, let k = getId v]

instance ProtocolSet a => ProtocolSet (a, [HsBindGen]) where
  resolveSet st (a, _) = resolveSet st a

instance MkBindRules ProtocolSpec where

  bindTargets _ spec = pure $ M.elems spec.bindGens

  mkBindRules pbci _dict x = do
    (_p, r) <- protocolRules pbci [] x
    return r

instance MkBindRules [ProtocolSpec] where

  bindTargets inputs = fmap mconcat . mapM (bindTargets inputs)

  mkBindRules pbci _dict xs = mdo
    res <- forM (toList xs) $ \x -> do
      (p, r) <- protocolRules pbci (map fst res) x
      return ((x, p), r)
    return $ mconcat $ map snd res

type DynamicSetup = ScannerT IO

instance MkBindRules (ProtocolScannerOptions, DynamicSetup ()) where
  bindTargets pci (opts, act) = do
    let localBC = lbcPCCI pci
    (protos, bgens) <- dynamicProtocols SetupInfo{localBC} opts act
    (bgens ++) <$> bindTargets pci protos

  mkBindRules pbci dict (opts, act) = do
    (protos, bgens) <- liftIO $ dynamicProtocols SetupInfo{localBC=lbcPBCI pbci} opts act
    liftM2 (++) (mkBindRules pbci dict bgens) (mkBindRules pbci dict protos)

instance ProtocolSet (ProtocolScannerOptions, DynamicSetup ()) where
  resolveSet st (opts, act) = do
    (protos, _) <- dynamicProtocols st opts act
    return $ M.fromList [ (k, p) | p <- protos, let k = getId p ]

waylandProtocolHooks :: HasCallStack => (ProtocolSet a) => a -> SetupHooks
waylandProtocolHooks cfg = mempty
  { configureHooks = mempty
    { preConfPackageHook = Just preConfPackage
    , preConfComponentHook = Just $ \pbci ->
        preConfComponent pbci . M.elems =<< resolveSet SetupInfo{localBC=lbcPCCI pbci} cfg
    }
  }
  <> bindgenHooks cfg
    where
      -- buildBI x = x.localBuildInfo.localBuildConfig

lbcPCPI :: PreConfPackageInputs -> LocalBuildConfig
lbcPCPI x = x.localBuildConfig

lbcPCCI :: PreConfComponentInputs -> LocalBuildConfig
lbcPCCI x = x.localBuildConfig

lbcPBCI :: PreBuildComponentInputs -> LocalBuildConfig
lbcPBCI x = x.localBuildInfo.localBuildConfig

protoAutogenModules :: ProtocolSpec -> [(Bool, ModuleName)] -- bool true if export the module
protoAutogenModules spec =
  [ (ex, mn)
    | (ex, k) <- [ (True, WrapClient), (True, WrapServer), (False, InfoModule) ]
    , Just mn <- [ spec ^? computedModuleNames . ix k ]
    , not $ spec & has (disabled . ix k) ]

registerProtocolRule :: ProtocolSpec -> String -> Rule -> RulesM RuleId
registerProtocolRule spec label = registerRule (fromString $ "wl::" ++ spec.fullName ++ "::" ++ label)

-- * GENERATED INTERFACE

-- | Class of things that can be generated from a 'ProtocolSpec'.
class Typeable a => Generated (a :: ProtocolResult) where

  -- | Unique key of this sort of result. One key per type!
  -- Additional result (output) configurations can be added by creating additional types.
  toKey :: Typeable a => Proxy a -> Fingerprint
  toKey _ = getFpr (Proxy :: Proxy a)

  data Env a :: Type

  registerGenerateRules :: Env a -> PreBuildComponentInputs -> ProtocolSpec -> RulesM [RuleId]
  registerGenerateRules _ _ _ = return []

registerGenerateRulesIfEnabled :: forall a. Generated a => RulesM (Env a) -> PreBuildComponentInputs -> ProtocolSpec -> RulesM [RuleId]
registerGenerateRulesIfEnabled mkenv pbci spec
  | spec & has (disabled . ix (toKey @a Proxy)) = return []
  | otherwise = do
    env <- mkenv
    registerGenerateRules env pbci spec

-- ** ScannerOutput

instance (Typeable a, HasScannerResult r) => Generated (ScannerOutput a r) where

  -- TODO
  data Env (ScannerOutput a r) = ScannerArgs
    { sVerbosity :: VerbosityFlags -- verbosity
    , sWorkdir   :: Maybe (SymbolicPath CWD ('Dir Pkg)) -- workdir
    , sProg      :: ConfiguredProgram -- wayland-scanner
    , sProtoXML  :: SymbolicPath Pkg 'File -- proto.xml
    , sResult    :: Location -- result
    }

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

type ScannerArgs =
  ( VerbosityFlags -- verbosity
  , Maybe (SymbolicPath CWD ('Dir Pkg)) -- workdir
  , ConfiguredProgram -- wayland-scanner
  , String -- cmd
  , SymbolicPath Pkg 'File -- proto.xml
  , Location -- result
  )

mkScannerRule :: HasScannerResult res
              => BuildingWhat
              -> ConfiguredProgram
              -> SymbolicPath Pkg 'File
              -> (Proxy (res :: ScannerResult))
              -> Location
              -> Rule
mkScannerRule what scanner xml proxy loc =
  staticRule (mkCommand (static Dict) (static scannerAction) arg) [FileDependency (makeLocation xml)] [loc]
  where
    arg = (buildingWhatVerbosity what, buildingWhatWorkingDir what, scanner, cmd, xml, loc)
    cmd = scannerCommand proxy

scannerAction :: ScannerArgs -> IO ()
scannerAction (vflags, mwd, scanner, cmd, protoXml, dst) = do
  createDirectoryIfMissingVerbose v True (FP.takeDirectory $ froml dst)
  runProgramCwd v mwd scanner ["--include-core-only", "--strict", cmd, xml, froml dst]
 where
   v   = verbosityFromFlags vflags
   xml = interpretSymbolicPath mwd protoXml
   froml = interpretSymbolicPath mwd . location

-- * InfoModule

instance Generated InfoModule where

  newtype Env InfoModule = IEnv (SymbolicPath Pkg 'File)

  registerGenerateRules (IEnv xml') pbci spec =
    case spec ^? computedModuleNames . ix InfoModule of
      Just infomod -> fmap return $ registerProtocolRule spec "info-module" $ infoModRule pbci xml' infomod
      Nothing -> return []

type InfoModArgs = ( VerbosityFlags
                   , Maybe (SymbolicPath CWD (Dir Pkg)) -- workdir
                   , SymbolicPath Pkg File -- path to protocol.xml
                   , ModuleName -- output module name
                   , Location -- output file
                   )

infoModRule :: PreBuildComponentInputs -> SymbolicPath Pkg 'File -> ModuleName -> Rule
infoModRule pbci xml modname = staticRule (mkCommand (static Dict) (static infoModAction) args) deps [dst]
  where
    args = (buildingWhatVerbosity pbci.buildingWhat, buildingWhatWorkingDir pbci.buildingWhat, xml, modname, dst)
    deps = [FileDependency $ makeLocation xml]
    dst = Location autogen $ makeRelativePathEx $ toFilePath modname <.> "hs"
    autogen = autogenComponentModulesDir pbci.localBuildInfo (targetCLBI pbci.targetInfo)

infoModAction :: InfoModArgs -> IO ()
infoModAction (vflags, mwd, xmlFP, modname, dst) = do
    createDirectoryIfMissingVerbose v True (FP.takeDirectory dstFP)
    withFileContents xml $ \content ->
      rewriteFileEx v dstFP
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
    dstFP = interpretSymbolicPath mwd $ location dst
    v   = verbosityFromFlags vflags
    xml = interpretSymbolicPath mwd xmlFP

-- * WrapInterface

data GenWrapModArgs = GenWrapModArgs
  { vflags    :: VerbosityFlags
  , dst       :: FilePath      -- ^ Target file (i.e. autogendir)
  , dstModule :: ModuleName    -- ^ Target module name
  , spec      :: ProtocolSpec  -- ^ The related protocol
  , bindgen   :: HsBindGen     -- ^ The main client OR server bindgen rules
  , inputFile :: Maybe FilePath -- ^ Input file (may not exist)
  , protoDeps :: [(String, [ModuleName])]
  } deriving (Eq, Show, Generic, Binary)

instance Typeable a => Generated (WrapInterface a) where

  data Env (WrapInterface a) = WEnv ProtoComponent [(String, ProtocolSpec)]

  registerGenerateRules (WEnv c deps) = wrapRulesWith @a Proxy c deps

wrapRulesWith :: forall a. HasCallStack
              => Typeable a
              => Proxy (WrapInterface a)
              -> ProtoComponent
              -> [(String, ProtocolSpec)]
              -> PreBuildComponentInputs
              -> ProtocolSpec
              -> RulesM [RuleId]
wrapRulesWith proxy bindc deps pbci spec = do
  let comp    = getFpr proxy
  let bgen    = spec ^?! bindGens . ix bindc
  let modName = spec ^?! computedModuleNames . ix comp
      result  = Location outDir $ moduleNameSymbolicPath modName <.> "hs"
      fileInName  = moduleNameSymbolicPath modName

  fileIn <- liftIO $ findFileCwdWithExtension (buildingWhatWorkingDir pbci.buildingWhat) ["hs.in"]
    (targetComponent pbci.targetInfo ^. BI.hsSourceDirs) fileInName

  let arg = GenWrapModArgs{ dst = interpretSymbolicPathLBI pbci.localBuildInfo $ location result
                          , dstModule = modName
                          , bindgen = bgen
                          , inputFile = interpretSymbolicPathLBI pbci.localBuildInfo <$> fileIn
                          , protoDeps =
                            [ (prettyShow mo, [mo]) | BModule mo <- bgen ^. I.extBindingSpecs ] ++
                            [ ("IF_" ++ n,
                              (s ^.. computedModuleNames . ix comp) ++
                              (s ^.. bindGens . ix EnumBindings . I.moduleName . to fromFlag) ++
                              (s ^.. bindGens . ix bindc . I.moduleName . to fromFlag)
                              ) | (n, s) <- deps ] ++
                            [ (n, [m]) | (m, n) <- spec ^. qualifiedImports . to toList ]
                          , ..
                          }

  -- watch the config files for changes
  addRuleMonitors [ monitorFileHashed $ getSymbolicPath f | f <- maybeToList fileIn ]

  rid <- registerRule (fromString $ "generate-wrapper-module::" <> prettyShow modName) $
    staticRule (generateWrapper arg) [FileDependency $ makeLocation f | f <- maybeToList fileIn] (result NE.:| [])
  return [rid]
  where
    vflags  = buildingWhatVerbosity pbci.buildingWhat
    outDir  = autogenComponentModulesDir pbci.localBuildInfo (targetCLBI pbci.targetInfo)

-- | Directory where to look for per-protocol configs
wrapModSettingsDirectory :: SymbolicPath from ('Dir to)
wrapModSettingsDirectory = makeSymbolicPath "src"

generateWrapper :: GenWrapModArgs -> Command GenWrapModArgs (IO ())
generateWrapper = mkCommand (static Dict) (static generateWrapperModuleAction)

generateWrapperModuleAction :: HasCallStack => GenWrapModArgs -> IO ()
generateWrapperModuleAction GenWrapModArgs{..} = do
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
        {-\# OPTIONS_GHC -Wno-unused-imports \#-}
        {-\# OPTIONS_GHC -Wno-dodgy-exports \#-}
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
        |]
  where
    v = verbosityFromFlags vflags

    ppDep (ifname, mods) = unlines
      [ [iii|import qualified #{prettyShow mo} as #{ifname}|] | mo <- mods ]

    pragmas :: String
    pragmas = ""

-- * Configure hooks

preConfPackage :: HasCallStack => PreConfPackageInputs -> IO PreConfPackageOutputs
preConfPackage inp@PreConfPackageInputs{configFlags=flags, localBuildConfig=lbc} = do
  configured <- configurePrograms v progs lbc.withPrograms
  return (noPreConfPackageOutputs inp) { extraConfiguredProgs = configured }
  where
      v     = verbosityFromFlags $ fromFlag $ setupVerbosity $ configCommonFlags flags
      progs = [ "wayland-scanner" ]

preConfComponent :: HasCallStack => PreConfComponentInputs -> [ProtocolSpec] -> IO PreConfComponentOutputs
preConfComponent pci@PreConfComponentInputs{localBuildConfig=lbc, packageBuildDescr=pbd} specs
  | CLib lib <- pci.component = do
      infoNoWrap v "Attempting to locate wayland-protocols with pkg-config"
      mdir <- getPkgConfDataDir v lbc.withPrograms "wayland-protocols"
      debugNoWrap v $ "C sources expected:  " ++ show csources
      return $ (noPreConfComponentOutputs pci) { componentDiff = ComponentDiff $ doLib mdir lib }
  | otherwise = return (noPreConfComponentOutputs pci)

  where
    doLib mdir lib = CLib $ mempty
      & BI.customFieldsBI   <>~ [("datadir-wayland-protocols", getAbsolutePath d) | Just d <- [mdir] ]
      & Lib.exposedModules  <>~ map snd (filter fst mods)
      & BI.otherModules     <>~ map snd (filter (not . fst) mods)
      & BI.autogenModules   <>~ map snd mods
      & BI.cSources         <>~ csources
      & BI.autogenIncludes <>~ includes
      where
        declared = explicitLibModules lib
        mods     = filter ((`notElem` declared) . snd) $ mconcat $ map protoAutogenModules specs

    v        = verbosityFromFlags vflags
    vflags   = fromFlag $ setupVerbosity $ configCommonFlags pbd.configFlags
    csources = [ autogen </> scannerResultRelativePath @PrivateSource Proxy s | s <- specs ]
    includes = [ scannerResultRelativePath @EnumBindings  Proxy s | s <- specs ] ++
               [ scannerResultRelativePath @ClientBindings  Proxy s | s <- specs ]
    distpref = fromFlag $ setupDistPref $ configCommonFlags pbd.configFlags
    autogen  = distpref </> makeRelativePathEx "build/autogen"

-- * Build hook

protocolRules :: HasCallStack => PreBuildComponentInputs -> [(ProtocolSpec, Protocol)] -> ProtocolSpec -> RulesM (Protocol, [(HsBindGen, [Dependency])])
protocolRules pbci@PreBuildComponentInputs{buildingWhat=what, localBuildInfo=lbi} known spec = do

  liftIO $ infoNoWrap v "build rule"
  liftIO $ infoNoWrap v $ prettyShow spec

  xml' <- liftIO $ findFileCwd v (buildingWhatWorkingDir what) searchDirs spec.protocolXML
  let xmlFP = interpretSymbolicPathLBI lbi xml'
  liftIO $ debugNoWrap v $ "Found protocol source file " ++ spec.fullName ++ ": " ++ xmlFP ++ " (" ++ show xml' ++ ")"

  addRuleMonitors $ monitorFileHashedSearchPath [] xmlFP

  proto <- liftIO $ protocolFromFile xmlFP
  let ifaceNames = [ x.name | x <- proto.interfaces ]
      ifaceDeps  = getProtocolInterfaceDeps proto
  liftIO $ do
    infoNoWrap v $ "Protocol: " ++ proto.name
    infoNoWrap v $ "  Provides: " ++ unwords ifaceNames
    infoNoWrap v $ "  Depends on: " ++ unwords ifaceDeps
    infoNoWrap v $ "  Using protocol XML file " ++ xmlFP  ++ " for " ++ spec.fullName ++ " (" ++ getSymbolicPath spec.protocolXML ++ ")"

  let resolvedDeps = [ (ifname, s) | ifname <- ifaceDeps, (s, p) <- known, ifname `elem` [ x.name | x <- p.interfaces ] ]

  (scanner, _) <- liftIO $ requireProgram v (simpleProgram "wayland-scanner") lbi.localBuildConfig.withPrograms

  let mkHeader :: forall (a :: ScannerResult). (Typeable a, HasScannerResult a) => Proxy a -> RulesM (RuleOutput, Location)
      mkHeader proxy = do
        let loc = Location autogen $ scannerResultRelativePath proxy spec
        rid <- registerProtocolRule spec (show $ typeRep proxy) $ mkScannerRule what scanner xml' proxy loc
        return (RuleOutput rid 0, loc)

  -- c-source/headers generation
  rids <- sequence
    [ mkHeader @EnumBindings Proxy
    , mkHeader @ClientBindings Proxy
    , mkHeader @ServerBindings Proxy
    , mkHeader @PrivateSource Proxy
    ]
  -- internal info hs module generation
  _ <- registerGenerateRulesIfEnabled (pure $ IEnv xml') pbci spec
  -- gen wrapper module
  _ <- registerGenerateRulesIfEnabled (pure $ WEnv @Client ClientBindings resolvedDeps) pbci spec
  _ <- registerGenerateRulesIfEnabled (pure $ WEnv @Server ServerBindings resolvedDeps) pbci spec

  -- return a few important rules for dependencies
  let targets = spec ^. bindGens . to M.toList -- targets <- liftIO $ bindTargets (asPCI pbci) spec
  let prereqs = L.nub (map snd resolvedDeps)
  return (proto,
    [ (bgen, [ RuleDependency rout | (rout, loc) <- rids, any (checkLocation loc) bgen.headers ])
             | (comp, bgenIn) <- targets
             , let bgen = protoAddDependent "" (Just 2) prereqs comp bgenIn ])
  where
    vflags     = buildingWhatVerbosity what
    v          = verbosityFromFlags vflags
    autogen    = autogenComponentModulesDir lbi clbi
    clbi       = targetCLBI pbci.targetInfo
    component  = targetComponent pbci.targetInfo
    datadirWL  = component ^. BI.customFieldsBI . getting (map makeSymbolicPath . maybeToList . L.lookup "datadir-wayland-protocols")
    searchDirs = spec.protocolDirs ++ datadirWL

    checkLocation (Location b1 f1) (Location b2 f2) =
      getSymbolicPath f1 == getSymbolicPath f2 && (b1 == coerceSymbolicPath b2 || b1 == coerceSymbolicPath autogen && b2 == sameDirectory)

asPCI :: PreBuildComponentInputs -> PreConfComponentInputs
asPCI x = PreConfComponentInputs
  { component = targetComponent x.targetInfo
  , localBuildConfig = lbcPBCI x
  , packageBuildDescr = x.localBuildInfo.localBuildDescr.packageBuildDescr
  }

-- * ScannerT interface

data SetupInfo = SetupInfo
  { localBC :: LocalBuildConfig }

newtype ScannerT m a = ScannerT
  { runScannerT
    :: Reader.ReaderT SetupInfo (Writer.WriterT [HsBindGen]
        (State.StateT (M.Map ProtocolId ProtocolConfig) m)) a
  } deriving newtype (Functor, Applicative, Monad, MonadIO, MonadFix, MonadFail)

type ScannerM a = ScannerT Identity a

instance MonadTrans ScannerT where
  lift = ScannerT . lift . lift . lift

makeProtocol :: (Monad m) => ProtocolConfig -> ScannerT m ProtocolId
makeProtocol cfg = do
  st <- ScannerT $ lift $ lift State.get
  let key = getId cfg
  case M.lookup key st of
    Nothing -> do
      ScannerT $ lift $ lift $ State.modify $ M.insert key cfg
      return key
    Just _ -> error $ "Duplicate protocol: " ++ show key

getId :: ProtocolSpecX a -> ProtocolId
getId c = ProtocolId
  { stability = c.stability
  , version = ProtocolVersion (fromMaybe 1 c.version)
  , name = c.baseName
  }

optionalProtocol (key, cfg) = do
  st <- ScannerT $ lift $ lift State.get
  case M.lookup key st of
    Nothing
      | xs@(_:_) <- M.keys $ M.filterWithKey (conflicts key) st -> do
        if all (key >) xs
           then doReplace xs
           else return $ Left $ "A newer protocol already loaded: " <> show xs
      | otherwise -> do
          ScannerT $ lift $ lift $ State.modify $ M.insert key cfg
          return $ Right key
    Just _ -> return $ Left $ "Duplicate protocol: " ++ show key
  where
    conflicts k1 k2 _ = k1.name == k2.name
    doReplace xs = do
      ScannerT $ lift $ lift $ State.modify $
        M.insert key cfg . (`M.withoutKeys` Set.fromList xs)
      return $ Right key


-- * ProtocolConfig

mkBindgen :: String -> HsBindGen
mkBindgen mo = mempty { moduleName = toFlag $ fromString mo }

makeHeader :: FilePath -> Location
makeHeader = makeLocation . makeSymbolicPath @Pkg @File

depends :: [String] -> ProtocolConfig -> ProtocolConfig
depends pids = bindGens . each . bcDepends <>~ pids

addExtraBindGen :: Monad m => HsBindGen -> ScannerT m ()
addExtraBindGen x = ScannerT $ lift $ Writer.tell [x]

withLBC :: (Monad m', m ~ ScannerT m') => (LocalBuildConfig -> m r) -> m r
withLBC f = do
  st <- ScannerT Reader.ask
  f st.localBC

-- * ProtocolConfig -> ProtocolSpec

protocols :: HasCallStack => SetupInfo -> ProtocolScannerOptions -> ScannerM () -> [ProtocolSpec]
protocols st opts scanM = runIdentity $ mdo
  (((), _), cfgs) <- State.runStateT (Writer.runWriterT (Reader.runReaderT (runScannerT scanM) st)) mempty
  specs <- mapM (interpretProtocolConfig opts specs) $ cfgs
  return $! M.elems specs

dynamicProtocols :: HasCallStack => SetupInfo -> ProtocolScannerOptions -> ScannerT IO () -> IO ([ProtocolSpec], [HsBindGen])
dynamicProtocols st opts scanM = mdo
  (((), bgen), cfgs) <- State.runStateT (Writer.runWriterT (Reader.runReaderT (runScannerT scanM) st)) mempty
  specs <- mapM (interpretProtocolConfig opts specs) $ cfgs
  return $! (M.elems specs, bgen)

interpretProtocolConfig :: HasCallStack => Monad m => ProtocolScannerOptions -> M.Map ProtocolId ProtocolSpec -> ProtocolConfig -> m ProtocolSpec
interpretProtocolConfig o smap c = pure spec
  where
    base = c { bindGens = mempty }
      & protocolDirs <>~ o.optionProtocolDirs
      & disabled .~ excluded
      & computedComponents .~ (Set.fromList allComponents Set.\\ excluded)

    spec :: ProtocolSpec
    spec = base
      { bindGens = M.fromList [ (k, binds k) | k <- bindgenComponents, k `Set.member` base.computedComponents ] }
      & computedModuleNames <>~ moduleNames base
      & appEndo o.optionCustom

    excluded = o.optionDisabled `Set.union` c.disabled
    modOf k = spec ^?! computedModuleNames . ix k
    moduleNames s = M.fromList [ (k, o.optionModuleName s k) | k <- allComponents ]

    binds :: HasCallStack => ProtoComponent -> HsBindGen
    binds k = mempty { moduleName = toFlag $ modOf k }
      & flip (foldl (&)) [ protoAddDependent (error "deps") Nothing (smap ^.. to M.toList . each . filtered (^. _1 . Ty.name . to (== nm)) . _2) k | nm <- bc^.bcDepends ]
      & perComp k
      & applyCfg k bc
      where
        bc = c ^? bindGens . ix k & fromMaybe def

    perComp EnumBindings x = x
      & I.headers <>~ [ makeLocation $ scannerResultRelativePath @EnumBindings Proxy spec ]
      & I.hasPointer .~ Flag False
      & I.hasSafe    .~ Flag False
      & I.hasUnsafe  .~ Flag False
      & I.genGlobal  .~ Flag False

    perComp ClientBindings x = x
      & I.headers <>~ [ makeLocation $ scannerResultRelativePath @EnumBindings   Proxy spec
                      , makeLocation $ scannerResultRelativePath @ClientBindings Proxy spec ]
      & I.extBindingSpecs <>~ [ BModule $ modOf EnumBindings ]

    perComp ServerBindings x = x
      & I.headers     <>~ [ makeLocation $ scannerResultRelativePath @EnumBindings   Proxy spec
                          , makeLocation $ scannerResultRelativePath @ServerBindings Proxy spec ]
      & I.extBindingSpecs <>~ [ BModule $ modOf EnumBindings ]
    perComp _ x = x

    applyCfg _ bc x = x
      & I.headers <>~ bc.bcMainHeaders
      & I.extBindingSpecs <>~ bc.extBindingSpecs
      & I.excludeByDeclName <>~ bc.excludeByDeclName
      & appEndo bc.bcCustom

-- | Makes the first protocol a requirement for the second. References to the first in the second are resolved to the
-- the dependent protocol's bindings. Without this it is likely that guest mentions get duplicate bindings.
protoAddDependent :: HasCallStack => String -> Maybe Int -> [ProtocolSpec] -> ProtoComponent -> HsBindGen -> HsBindGen
protoAddDependent _ mpos deps@(_:_) comp = adjust
  where
    adjust x = x
      & I.headers %~ L.nub . (maybe (flip (<>)) (\n bs as -> take n as ++ bs ++ drop n as) mpos $ hdrs comp)
      & I.excludeHeaders <>~ toPCRE (hdrs comp)
      & I.extBindingSpecs <>~ [ BModule $ dep ^?! bindGens . ix k . I.moduleName . to fromFlag | dep <- deps, k <- L.nub [ EnumBindings, comp ] ]
      & I.extBindingSpecs %~ L.nub

    hdrs EnumBindings = [ makeLocation $ scannerResultRelativePath @EnumBindings Proxy dep | dep <- deps ]
    hdrs ClientBindings = hdrs EnumBindings ++ [ makeLocation $ scannerResultRelativePath @ClientBindings Proxy dep  | dep <- deps]
    hdrs ServerBindings = hdrs EnumBindings ++ [ makeLocation $ scannerResultRelativePath @ServerBindings Proxy dep  | dep <- deps]
    hdrs _ = [ ]
protoAddDependent msg _ [] _ = msg `seq` id

-- * Util: MakeLocation

class MakeLocation a where
  makeLocation :: a -> Location

instance MakeLocation (SymbolicPath Pkg 'File) where
  makeLocation sfp = maybe defAbs (Location sameDirectory) $ symbolicPathRelative_maybe norm
    where
      norm = normaliseSymbolicPath sfp
      defAbs = Location (coerceSymbolicPath $ takeDirectorySymbolicPath norm) . makeRelativePathEx . FP.takeFileName $ getSymbolicPath norm

instance MakeLocation (RelativePath from 'File) where
  makeLocation sfp = Location sameDirectory $ normaliseSymbolicPath sfp
