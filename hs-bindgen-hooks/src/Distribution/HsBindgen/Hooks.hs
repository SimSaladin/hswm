{-# LANGUAGE CPP                 #-}
{-# LANGUAGE DeriveAnyClass      #-}
{-# LANGUAGE DerivingStrategies  #-}
{-# LANGUAGE LambdaCase          #-}
{-# LANGUAGE OverloadedLists     #-}
{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE RecordWildCards     #-}
{-# LANGUAGE StaticPointers      #-}
{-# LANGUAGE PartialTypeSignatures #-}

{-# OPTIONS_GHC -Wno-ambiguous-fields #-}
{-# OPTIONS_GHC -Wno-partial-type-signatures #-}


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
  ( HsBindGenSetup(..)
  , HsBindGen(..)
  , BindingSpec(..)
  , bindGenDef
  -- * Setup hooks
  , hsBindgenSetupHooks
  , hsBindgenSetupHooks'
  -- ** Configure hooks
  , hsBindgenConfigureHooks
  , hsBindgenPackagePreConf
  , hsBindgenComponentPreConf
  -- ** Build hooks
  , hsBindgenBuildRules
  , hsBindgenBuildRules'

  -- * Actions
  , createBindingsAction

  -- * Re-exports
  , ModuleName
  )
    where

--import qualified Data.Yaml as Y

import           Distribution.Compat.Binary
import           Distribution.Compat.Lens
import           Distribution.Compat.Prelude (NonEmpty)
import           Distribution.Simple.LocalBuildInfo
import           Distribution.Simple.Program
import           Distribution.Simple.Setup
import           Distribution.Simple.SetupHooks
import           Distribution.Simple.Utils
import qualified Distribution.Types.BuildInfo.Lens as BI
import qualified Distribution.Types.Library.Lens as Lib
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
  , sources       :: [(a, [HsBindGen])]
  , getDeps       :: PreBuildComponentInputs -> a -> RulesM [Dependency]
  }
  deriving stock (Generic)

data HsBindGen = HsBindGen
  { headers                  :: [FilePath]
  , moduleName               :: ModuleName
  , uniqueId                 :: String
  , omitFieldPrefixes        :: Maybe Bool
  , programSlicing           :: Maybe Bool
  , cStandard                :: String
  , genGlobal                :: Maybe Bool
  , extBindingSpecs          :: [BindingSpec]
  , prescriptiveBindingSpecs :: [BindingSpec]
  , selectDeprecated         :: Maybe Bool
  , selectFromMainHeaderDirs :: Maybe Bool
  , excludeByDeclName        :: String -- ^ PCRE
  , extraArgs                :: [String]
  , includeDirs              :: [SymbolicPath Pkg ('Dir Include)]
  }
  deriving stock (Eq, Show, Generic)
  deriving anyclass (Binary)

data BindingSpec
  = BFile Location
  | BModule ModuleName
  deriving stock (Eq, Ord, Show, Generic)
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
    , prescriptiveBindingSpecs = a.prescriptiveBindingSpecs ++ b.prescriptiveBindingSpecs
    , selectDeprecated = altr selectDeprecated
    , selectFromMainHeaderDirs = altr selectFromMainHeaderDirs
    , excludeByDeclName = orPCRE excludeByDeclName
    , extraArgs = a.extraArgs ++ b.extraArgs
    , includeDirs = a.includeDirs ++ b.includeDirs
    } where
      nonEmpty :: Eq a => a -> (HsBindGen -> a) -> a
      nonEmpty em f = if f a == em then f b else f a
      altr f = f b <|> f a

      orPCRE f
        | f a == "" = f b
        | f b == "" = f a
        | otherwise = "(" ++ f a ++ ")|(" ++ f b ++ ")"

instance Monoid HsBindGen where
  mempty = HsBindGen [] "" "" Nothing Nothing "" Nothing [] [] Nothing Nothing "" [] []

bindGenDef :: HsBindGen
bindGenDef = mempty
  { moduleName = "Generated"
  , omitFieldPrefixes = Just True
  , cStandard = "gnu23"
  , genGlobal = Just True
  }

bindGenModules :: HsBindGen -> [ModuleName]
bindGenModules spec =
  [ spec.moduleName
  , spec.moduleName `suf` "FunPtr"
  , spec.moduleName `suf` "Safe"
  , spec.moduleName `suf` "Unsafe" ] ++
  [ spec.moduleName `suf` "Global" | Just True == spec.genGlobal ]
    where
      suf mo x = fromString $ prettyShow mo <.> x

bindingsModulePaths :: HsBindGen -> [RelativePath Source 'File]
bindingsModulePaths spec = [ moduleNameSymbolicPath mo <.> "hs" | mo <- bindGenModules spec ]

genBindingSpec :: ModuleName -> RelativePath Source 'File
genBindingSpec nm = makeRelativePathEx $ "bindgen" </> prettyShow nm <.> "yaml"

generateBindings :: Verbosity -> ConfiguredProgram -> SymbolicPath Pkg (Dir Source) -> HsBindGen -> IO ()
generateBindings verb bindgen path gen@HsBindGen{..} = do
  notice verb $ "Generating bindings " ++ prettyShow moduleName
  runProgram verb bindgen $
    [ "preprocess" ] ++
    [ "--create-output-dirs" ] ++
    [ "--overwrite-files" ] ++
    [ "--omit-field-prefixes" | Just True <- pure omitFieldPrefixes ] ++
    [ "--enable-program-slicing" | Just True <- pure programSlicing ] ++
    [ "--clang-option-before", "-std=" ++ cStandard ] ++
    [ "--hs-output-dir=" ++ interpretSymbolicPathCWD path ] ++
    [ "--module=" ++ prettyShow moduleName ] ++
    [ "--unique-id=" ++ uniqueId ] ++
    [ "-I" ++ interpretSymbolicPathCWD path ] ++
    [ "-I" ++ interpretSymbolicPathCWD x | x <- includeDirs ] ++
    [ "--prescriptive-binding-spec=" ++ interpretSymbolicPathCWD (location file) | BFile file <- prescriptiveBindingSpecs ] ++
    [ "--gen-binding-spec=" ++ interpretSymbolicPathCWD (path </> genBindingSpec gen.moduleName) ] ++
    [ "--external-binding-spec=" ++ interpretSymbolicPathCWD (location file) | BFile file <- extBindingSpecs ] ++
    [ "--external-binding-spec=" ++ interpretSymbolicPathCWD (path </> genBindingSpec mo) | BModule mo <- extBindingSpecs ] ++
    [ "--select-from-main-header-dirs" | Just True == selectFromMainHeaderDirs ] ++
    [ "--select-except-deprecated" | Just True /= selectDeprecated ] ++
    [ "--select-except-by-decl-name=" ++ x | x <- [excludeByDeclName], x /= "" ] ++
    extraArgs ++ headers

hsBindgenSetupHooks' :: HsBindGenSetup a -> SetupHooks
hsBindgenSetupHooks' setup = hsBindgenConfigureHooks specs <> mempty
  { buildHooks = mempty
    { preBuildComponentRules = Just $ rules (static ()) $ \inp -> do
        xs <- forM setup.sources $ \(a, gen) -> do
          deps <- setup.getDeps inp a
          return [(x, deps) | x <- gen]
        hsBindgenBuildRules' (map (, []) setup.modulesSimple <> concat xs) inp
    } }
  where
    specs = setup.modulesSimple ++ concatMap snd setup.sources

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
  return $ (noPreConfPackageOutputs inp)
    { extraConfiguredProgs = [(prog, configuredProg)] }

hsBindgenComponentPreConf :: [HsBindGen] -> PreConfComponentInputs -> IO PreConfComponentOutputs
hsBindgenComponentPreConf specs pci
  | CLibName LMainLibName <- componentName pci.component = do
    let mods = concatMap bindGenModules specs
    return $ (noPreConfComponentOutputs pci)
      { componentDiff = ComponentDiff $ CLib $ mempty
            & Lib.exposedModules .~ mods
            & BI.autogenModules .~ mods
      }
  | otherwise = return (noPreConfComponentOutputs pci)

hsBindgenBuildRules :: [HsBindGen] -> PreBuildComponentInputs -> RulesM ()
hsBindgenBuildRules xs = hsBindgenBuildRules' (zip xs (repeat []))

hsBindgenBuildRules' :: [(HsBindGen, [Dependency])] -> PreBuildComponentInputs -> RulesM ()
hsBindgenBuildRules' specs pbci
  | CLibName LMainLibName <- componentName pbci.targetInfo.targetComponent
  , BuildNormal{} <- pbci.buildingWhat
  = mkSpecs [] $ specsInOrder specs
  | otherwise = return ()
    where
      vflags = buildingWhatVerbosity pbci.buildingWhat
      verb = verbosityFromFlags vflags

      mkSpecs done ((spec, extraDeps) : todo) = do
        (bindgen, _) <- liftIO $ requireProgram verb (simpleProgram "hs-bindgen-cli") (withPrograms pbci.localBuildInfo)
        let deps =
              [ FileDependency loc | BFile loc <- spec.extBindingSpecs ] ++
              [ RuleDependency $ RuleOutput (done M.! nm) 0 | BModule nm <- spec.extBindingSpecs ] ++
              extraDeps
            results = bindingsResult pbci.localBuildInfo pbci.targetInfo spec
        rid <- registerRule (fromString $ prettyShow spec.moduleName) $ staticRule (createBindingsAction pbci bindgen spec) deps results
        mkSpecs (M.insert spec.moduleName rid done) todo
      mkSpecs _    [] = return ()

specsInOrder :: [(HsBindGen, [Dependency])] -> [(HsBindGen, [Dependency])]
specsInOrder = go [] where
  go _    []   = []
  go done todo
    | (as, bs) <- L.partition (\(s, _) -> L.all (`elem` done) [ mo | BModule mo <- s.extBindingSpecs]) todo
    , _ : _ <- as
    = let as' = [ x.moduleName | (x, _) <- as ]
       in as ++ go (done ++ as') bs
    | otherwise = error $ "unresolved dependencies: " ++ show todo ++ "\n\nResolved: " ++ show (map prettyShow done)

bindingsResult :: LocalBuildInfo -> TargetInfo -> HsBindGen -> NonEmpty Location
bindingsResult lbi tgt spec = fromList [ Location autogendir path | path <- genBindingSpec spec.moduleName : bindingsModulePaths spec ]
  where autogendir = autogenComponentModulesDir lbi (targetCLBI tgt)

createBindingsAction :: PreBuildComponentInputs -> ConfiguredProgram -> HsBindGen -> Command _ _
createBindingsAction pbci bindgen0 spec0 = generateBindingsCommand
  (buildingWhatVerbosity pbci.buildingWhat, bindgen0, spec0, autogenComponentModulesDir pbci.localBuildInfo (targetCLBI pbci.targetInfo))

generateBindingsCommand :: (Verbosity, ConfiguredProgram, HsBindGen, SymbolicPath Pkg (Dir Source)) -> Command _ (IO ())
generateBindingsCommand = mkCommand (static Dict) $ static \(vflags, bindgen, spec, autogendir) ->
  generateBindings (verbosityFromFlags vflags) bindgen autogendir spec
