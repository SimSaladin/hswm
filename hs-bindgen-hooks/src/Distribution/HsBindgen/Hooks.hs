{-# LANGUAGE CPP                 #-}
{-# LANGUAGE DeriveAnyClass      #-}
{-# LANGUAGE DerivingStrategies  #-}
{-# LANGUAGE LambdaCase          #-}
{-# LANGUAGE OverloadedLists     #-}
{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE RecordWildCards     #-}
{-# LANGUAGE StaticPointers      #-}

-- |
-- Module      : Distribution.HsBindgen.Hooks
-- Description : Cabal Setuphooks for HsBindgen
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Distribution.HsBindgen.Hooks
  ( HsBindGen(..)
  , BindingSpec(..)
  , bindGenDef
  , hsBindgenSetupHooks
  , hsBindgenConfigureHooks
  , hsBindgenPackagePreConf
  , hsBindgenComponentPreConf
  , hsBindgenBuildRules
  , hsBindgenBuildRules'
  , createBindingsAction

  , hsBindgenSetupHooks'
  , HsBindGenSetup(..)
  -- * Re-exports
  , ModuleName
  )
    where

--import qualified Data.Yaml as Y

import           Distribution.Compat.Binary
import           Distribution.Simple.LocalBuildInfo
import           Distribution.Simple.Program
import           Distribution.Simple.Setup
import           Distribution.Simple.SetupHooks
import           Distribution.Simple.Utils
import qualified Distribution.Types.LocalBuildConfig as LBC
import           Distribution.Utils.Path
import           Distribution.ModuleName
import           Distribution.Pretty (prettyShow)

#if MIN_VERSION_Cabal(3,17,0)
import           Distribution.Verbosity
#endif

import           Control.Monad
import           Control.Applicative
import           Control.Monad.IO.Class
import qualified Data.List as L
import qualified Data.Map as M
import           GHC.Generics (Generic)
import           GHC.IsList

#if MIN_VERSION_Cabal(3,17,0)
verbosityFromFlags :: VerbosityFlags -> Verbosity
verbosityFromFlags flags = Verbosity verb defaultVerbosityHandles
#else
verbosityFromFlags :: Verbosity -> Verbosity
verbosityFromFlags flags = flags
#endif

data HsBindGenSetup a = HsBindGenSetup
  { modulesSimple :: [HsBindGen]
  , sources       :: [(a, HsBindGen)]
  , getDeps       :: PreBuildComponentInputs -> a -> RulesM [Dependency]
  }

data HsBindGen = HsBindGen
  { headers           :: [FilePath]
  , moduleName        :: ModuleName
  , uniqueId          :: String
  , omitFieldPrefixes :: Maybe Bool
  , programSlicing    :: Maybe Bool
  , cStandard         :: String
  , genGlobal         :: Maybe Bool
  , extBindingSpecs   :: [BindingSpec]
  , extraArgs         :: [String]
  }
  deriving stock (Show, Generic)
  deriving anyclass (Binary)

data BindingSpec
  = BFile Location
  | BModule ModuleName
  deriving stock (Show, Generic)
  deriving anyclass (Binary)

instance Semigroup HsBindGen where
  a <> b = HsBindGen
    { headers = a.headers ++ b.headers
    , moduleName = nonEmpty "" moduleName
    , uniqueId = nonEmpty "" uniqueId
    , omitFieldPrefixes = altr omitFieldPrefixes
    , programSlicing = altr programSlicing
    , cStandard = nonEmpty "" cStandard
    , genGlobal = altr genGlobal
    , extBindingSpecs = a.extBindingSpecs ++ b.extBindingSpecs
    , extraArgs = a.extraArgs ++ b.extraArgs
    } where
      nonEmpty :: Eq a => a -> (HsBindGen -> a) -> a
      nonEmpty em f = if f a == em then f b else f a
      altr f = f b <|> f a

instance Monoid HsBindGen where
  mempty = HsBindGen [] "" "" Nothing Nothing "" Nothing [] []

bindGenDef :: HsBindGen
bindGenDef = HsBindGen [] "Generated" "" (Just True) (Just False) "gnu23" (Just True) [] []

bindGenModules :: HsBindGen -> [ModuleName]
bindGenModules spec =
  [ spec.moduleName
  , spec.moduleName `suf` "FunPtr"
  , spec.moduleName `suf` "Safe"
  , spec.moduleName `suf` "Unsafe" ] ++
  [ spec.moduleName `suf` "Global" | Just True <- pure spec.genGlobal ]
    where
      suf mo x = fromString $ prettyShow mo <.> x

bindingsModulePaths :: HsBindGen -> [FilePath]
bindingsModulePaths spec = [ toFilePath mo <.> "hs" | mo <- bindGenModules spec ]

genBindingSpec :: HsBindGen -> RelativePath a 'File
genBindingSpec gen = genBindingSpec' gen.moduleName

genBindingSpec' :: ModuleName -> RelativePath a 'File
genBindingSpec' nm = makeRelativePathEx $ "bindgen" </> prettyShow nm <.> "yaml"

generateBindings :: Verbosity -> ConfiguredProgram -> [SymbolicPath Pkg (Dir Source)] -> SymbolicPath Pkg (Dir Source) -> HsBindGen -> IO ()
generateBindings verb bindgen incs path gen@HsBindGen{..} = do
  notice verb $ "Generating bindings " ++ prettyShow moduleName
  runProgram verb bindgen $
    [ "preprocess", "--create-output-dirs", "--overwrite-files" ] ++
    [ "--omit-field-prefixes" | Just True <- pure omitFieldPrefixes ] ++
    [ "--enable-program-slicing" | Just True <- pure programSlicing ] ++
    [ "--clang-option-before", "-std=" ++ cStandard
    , "--hs-output-dir", getSymbolicPath path
    , "--module", prettyShow moduleName
    , "--unique-id", uniqueId ] ++
    [ "-I" ++ getSymbolicPath x | x <- incs ] ++
    [ "--gen-binding-spec=" ++ getSymbolicPath (path </> genBindingSpec gen) ] ++
    [ "--external-binding-spec=" ++ getSymbolicPath (location file) | BFile file <- extBindingSpecs ] ++
    [ "--external-binding-spec=" ++ getSymbolicPath (path </> genBindingSpec' mo) | BModule mo <- extBindingSpecs ] ++
    extraArgs ++ headers

hsBindgenSetupHooks' :: HsBindGenSetup a -> SetupHooks
hsBindgenSetupHooks' setup = hsBindgenConfigureHooks specs <> mempty
  { buildHooks = mempty
    { preBuildComponentRules = Just $ rules (static ()) $ \inp -> do
        xs <- forM setup.sources $ \(a, gen) -> do
          deps <- setup.getDeps inp a
          return (gen, deps)
        hsBindgenBuildRules' (map (, []) setup.modulesSimple <> xs) inp
    } }
  where
    specs = setup.modulesSimple ++ map snd setup.sources

hsBindgenSetupHooks :: [HsBindGen] -> SetupHooks
hsBindgenSetupHooks specs = hsBindgenSetupHooks' $ HsBindGenSetup @() specs mempty undefined

hsBindgenConfigureHooks :: [HsBindGen] -> SetupHooks
hsBindgenConfigureHooks specs = mempty
  { configureHooks = mempty
    { preConfPackageHook = Just hsBindgenPackagePreConf
    , preConfComponentHook = Just $ hsBindgenComponentPreConf specs } }

hsBindgenPackagePreConf :: PreConfPackageInputs -> IO PreConfPackageOutputs
hsBindgenPackagePreConf inp@PreConfPackageInputs{configFlags=flags, localBuildConfig=lbc} = do
  let vflags = fromFlag $ setupVerbosity $ configCommonFlags flags
      v = verbosityFromFlags vflags
      prog = "hs-bindgen-cli"
  configuredProg <- configureUnconfiguredProgram v (simpleProgram prog) (LBC.withPrograms lbc) >>= \case
    Just cp -> return cp
    Nothing -> die' v $ "Failed to configure program " ++ prog
  return $
    (noPreConfPackageOutputs inp)
      { extraConfiguredProgs = [(prog, configuredProg)] }

hsBindgenComponentPreConf :: [HsBindGen] -> PreConfComponentInputs -> IO PreConfComponentOutputs
hsBindgenComponentPreConf specs pci
  | cname@(CLibName LMainLibName) <- componentName pci.component = do
    let mods = concatMap bindGenModules specs
    return $
      (noPreConfComponentOutputs pci)
        { componentDiff = buildInfoComponentDiff cname mempty { autogenModules = mods }
            <> ComponentDiff (CLib mempty { exposedModules = mods })
        }
  | otherwise = return (noPreConfComponentOutputs pci)

hsBindgenBuildRules :: [HsBindGen] -> PreBuildComponentInputs -> RulesM ()
hsBindgenBuildRules xs = hsBindgenBuildRules' (zip xs (repeat []))

hsBindgenBuildRules' :: [(HsBindGen, [Dependency])] -> PreBuildComponentInputs -> RulesM ()
hsBindgenBuildRules' specs pbci
  | CLibName LMainLibName <- componentName pbci.targetInfo.targetComponent
  = mkSpecs [] $ specsInOrder specs
  | otherwise = return ()
    where
      vflags = buildingWhatVerbosity pbci.buildingWhat
      verb = verbosityFromFlags vflags

      mkSpecs done ((spec, extraDeps) : todo) = do
        (bindgen, _) <- liftIO $ requireProgram verb (simpleProgram "hs-bindgen-cli") (withPrograms pbci.localBuildInfo)
        -- TODO incomplete rule output indices
        let deps = [ RuleDependency $ RuleOutput (done M.! nm) 0 | BModule nm <- spec.extBindingSpecs ]
                  ++ [ FileDependency loc | BFile loc <- spec.extBindingSpecs ]
                  ++ extraDeps
        let results = bindingsResult pbci.localBuildInfo pbci.targetInfo spec
        rid <- registerRule (fromString $ prettyShow spec.moduleName) $ staticRule (createBindingsAction bindgen spec pbci) deps results
        mkSpecs (done <> [(spec.moduleName, rid)]) todo
      mkSpecs _    [] = return ()

specsInOrder = go [] where
  go _    []   = []
  go done todo
    | (as, bs) <- L.partition (\(s, _) -> L.all (`elem` done) [ mo | BModule mo <- s.extBindingSpecs]) todo
    , _ : _ <- as
    = let as' = [ x.moduleName | (x, _) <- as ]
       in as ++ go (done ++ as') bs
    | otherwise = error $ "unresolved dependencies: " ++ show (done, todo)

bindingsResult :: (IsList l, Item l ~ Location) => LocalBuildInfo -> TargetInfo -> HsBindGen -> l
bindingsResult lbi tgt spec =
  let autogendir = autogenComponentModulesDir lbi (targetCLBI tgt)
   in fromList $
     Location autogendir (genBindingSpec spec)
     : [ Location autogendir (makeRelativePathEx path) | path <- bindingsModulePaths spec ]

createBindingsAction bindgen0 spec0 pbci = mkCommand (static Dict)
  (static \(vflags, spec, autogendir, bindgen) -> generateBindings (verbosityFromFlags vflags) bindgen [autogendir] autogendir spec)
  (buildingWhatVerbosity pbci.buildingWhat, spec0, autogenComponentModulesDir pbci.localBuildInfo (targetCLBI pbci.targetInfo), bindgen0)
