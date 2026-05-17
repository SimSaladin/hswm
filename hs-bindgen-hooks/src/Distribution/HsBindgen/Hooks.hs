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
  , action
  )
    where

import           Control.Monad
import           Data.String
import           Distribution.Compat.Binary
import           Distribution.Simple.LocalBuildInfo
import           Distribution.Simple.Program
import           Distribution.Simple.Setup
import           Distribution.Simple.SetupHooks
import           Distribution.Simple.Utils
import qualified Distribution.Types.LocalBuildConfig as LBC
import           Distribution.Utils.Path
import           GHC.Generics (Generic)
import           GHC.IsList
import qualified Data.List as L
import qualified Data.Map as M
import Control.Applicative
import qualified Data.Yaml as Y

data HsBindGen = HsBindGen
  { headers           :: [FilePath]
  , moduleName        :: String
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
  | BModule String
  deriving stock (Show, Generic)
  deriving anyclass (Binary)

instance Semigroup HsBindGen where
  a <> b = HsBindGen
    { headers = a.headers ++ b.headers
    , moduleName = nonEmpty moduleName
    , uniqueId = nonEmpty uniqueId
    , omitFieldPrefixes = altr omitFieldPrefixes
    , programSlicing = altr programSlicing
    , cStandard = nonEmpty cStandard
    , genGlobal = altr genGlobal
    , extBindingSpecs = a.extBindingSpecs ++ b.extBindingSpecs
    , extraArgs = a.extraArgs ++ b.extraArgs
    } where
      nonEmpty f = if f a == mempty then f b else f a
      altr f = f b <|> f a

instance Monoid HsBindGen where
  mempty = HsBindGen [] "" "" Nothing Nothing "" Nothing [] []

bindGenDef :: HsBindGen
bindGenDef = HsBindGen [] "Generated" "" (Just True) (Just False) "gnu23" (Just True) [] []

bindGenModules :: HsBindGen -> [String]
bindGenModules spec =
  [ spec.moduleName
  , spec.moduleName <.> "FunPtr"
  , spec.moduleName <.> "Safe"
  , spec.moduleName <.> "Unsafe" ] ++
  [ spec.moduleName <.> "Global" | Just True <- pure spec.genGlobal ]

bindingsModulePaths :: HsBindGen -> [FilePath]
bindingsModulePaths spec = [ fromMod mo <.> "hs" | mo <- bindGenModules spec ]
    where fromMod = map (\c -> if c == '.' then '/' else c)

generateBindings :: Verbosity -> ConfiguredProgram -> [FilePath] -> FilePath -> HsBindGen -> IO ()
generateBindings verb bindgen incs path hsb@HsBindGen{..} = do
  notice verb $ "Generating bindings " ++ moduleName
  runProgram verb bindgen $
    [ "preprocess", "--create-output-dirs", "--overwrite-files" ] ++
    [ "--omit-field-prefixes" | Just True <- pure omitFieldPrefixes ] ++
    [ "--enable-program-slicing" | Just True <- pure programSlicing ] ++
    [ "--clang-option-before", "-std=" ++ cStandard
    , "--hs-output-dir", path
    , "--module", moduleName
    , "--unique-id", uniqueId ] ++
    [ "-I" ++ x | x <- incs ] ++
    [ "--gen-binding-spec=" ++ path </> "bindgen" </> moduleName ++ ".yaml" ] ++
    [ "--external-binding-spec=" ++ getSymbolicPath (location file) | BFile file <- extBindingSpecs ] ++
    [ "--external-binding-spec=" ++ path </> "bindgen" </> mo ++ ".yaml" | BModule mo <- extBindingSpecs ] ++
    extraArgs ++ headers

hsBindgenSetupHooks :: [HsBindGen] -> SetupHooks
hsBindgenSetupHooks specs = hsBindgenConfigureHooks specs <> mempty
  { buildHooks = mempty
    { preBuildComponentRules = Just $ rules (static ()) $ hsBindgenBuildRules specs } }

hsBindgenConfigureHooks :: [HsBindGen] -> SetupHooks
hsBindgenConfigureHooks specs = mempty
  { configureHooks = mempty
    { preConfPackageHook = Just hsBindgenPackagePreConf
    , preConfComponentHook = Just $ hsBindgenComponentPreConf specs } }

hsBindgenPackagePreConf :: PreConfPackageInputs -> IO PreConfPackageOutputs
hsBindgenPackagePreConf inp@PreConfPackageInputs{configFlags=flags, localBuildConfig=lbc} = do
  let v = fromFlag $ setupVerbosity $ configCommonFlags flags
      prog = "hs-bindgen-cli"
  configuredProg <- configureUnconfiguredProgram v (simpleProgram prog) (LBC.withPrograms lbc) >>= \case
    Just cp -> return cp
    Nothing -> die' v $ "Failed to configure program " ++ prog
  return $
    (noPreConfPackageOutputs inp)
      { extraConfiguredProgs = [(prog, configuredProg)] }

hsBindgenComponentPreConf :: [HsBindGen] -> PreConfComponentInputs -> IO PreConfComponentOutputs
hsBindgenComponentPreConf specs pci
  | CLibName LMainLibName <- componentName pci.component = do
    let mods = concatMap (map fromString . bindGenModules) specs
    return $
      (noPreConfComponentOutputs pci)
        { componentDiff = buildInfoComponentDiff (CLibName LMainLibName) mempty { autogenModules = mods }
            <> ComponentDiff (CLib mempty { exposedModules = mods })
        }
  | otherwise = return (noPreConfComponentOutputs pci)

hsBindgenBuildRules :: [HsBindGen] -> PreBuildComponentInputs -> RulesM ()
hsBindgenBuildRules xs = hsBindgenBuildRules' (zip xs (repeat []))

hsBindgenBuildRules' :: [(HsBindGen, [Dependency])] -> PreBuildComponentInputs -> RulesM ()
hsBindgenBuildRules' specs pbci = mkSpecs [] specsInOrder
  where
    mkSpecs done ((spec, extraDeps) : todo) = do
      -- TODO wrong rule output index
      let deps = [ RuleDependency $ RuleOutput (done M.! nm) 0 | BModule nm <- spec.extBindingSpecs ]
                ++ [ FileDependency loc | BFile loc <- spec.extBindingSpecs ]
                ++ extraDeps
      rid <- registerRule (fromString spec.moduleName) $
        staticRule (action (spec, pbci)) deps $ bindingsResult pbci.localBuildInfo pbci.targetInfo spec
      mkSpecs (done <> [(spec.moduleName, rid)]) todo
    mkSpecs _    [] = return ()

    specsInOrder = go [] specs where
      go _    []   = []
      go done todo
        | (as, bs) <- L.partition (\(s, _) -> L.all (`elem` done) [ mo | BModule mo <- s.extBindingSpecs]) todo
        , _ : _ <- as
        = let as' = [ x.moduleName | (x, _) <- as ]
           in as ++ go (done ++ as') bs
        | otherwise = error $ "unresolved dependencies: " ++ show (done, todo)


action = mkCommand (static Dict) (static (uncurry createBindings))

bindingsResult :: (IsList l, Item l ~ Location) => LocalBuildInfo -> TargetInfo -> HsBindGen -> l
bindingsResult lbi tgt spec =
  -- We want the symbolic path relative to the package.
  let autogendir = autogenComponentModulesDir lbi (targetCLBI tgt)
   in fromList [ Location autogendir (makeRelativePathEx path) | path <- bindingsModulePaths spec ]

createBindings :: HsBindGen -> PreBuildComponentInputs -> IO ()
createBindings spec PreBuildComponentInputs { buildingWhat = flags , localBuildInfo = lbi , targetInfo = tgt }
  | CLibName LMainLibName <- componentName (targetComponent tgt)
  = do
    let verb = buildingWhatVerbosity flags
    let autogendir = interpretSymbolicPathCWD $ autogenComponentModulesDir lbi (targetCLBI tgt)
    bindgen <- case lookupProgram (simpleProgram "hs-bindgen-cli") (withPrograms lbi) of
                           Just p  -> return p
                           Nothing -> die' verb "hs-bindgen-cli was not found"
    case bindingsResult lbi tgt spec of
       Location base _ : _ -> generateBindings verb bindgen [autogendir] (getSymbolicPath base) spec

  | otherwise
  = return ()
