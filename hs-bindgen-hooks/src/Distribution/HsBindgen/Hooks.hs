{-# LANGUAGE CPP                 #-}
{-# LANGUAGE DerivingStrategies  #-}
{-# LANGUAGE LambdaCase          #-}
{-# LANGUAGE OverloadedLists     #-}
{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE PartialTypeSignatures #-}

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
  , MkBindRules(..)
  -- * Setup hooks
  , hsBindgenSetupHooks
  -- ** Configure hooks
  , hsBindgenConfigureHooks
  , hsBindgenPackagePreConf
  , hsBindgenComponentPreConf
  -- ** Build hooks
  , hsBindgenBuildRules
  , hsBindgenBuildRules'

  -- * Action
  --
  -- static pointer, must export
  , createBindingsCommand

  -- * Re-exports
  , ModuleName
  , Default(..)
  )
    where

import           Distribution.HsBindgen.Utils

import           Distribution.Compat.Binary
import           Distribution.Compat.Lens
import           Distribution.Simple.LocalBuildInfo
import           Distribution.Simple.Program
import           Distribution.Simple.Setup
import           Distribution.Simple.SetupHooks
import           Distribution.Simple.Utils
import qualified Distribution.Types.BuildInfo.Lens as BI
import           Distribution.Types.Library (explicitLibModules)
import qualified Distribution.Types.Library.Lens as Lib
import qualified Distribution.Types.LocalBuildConfig as LBC
import           Distribution.Utils.Path
import           Distribution.ModuleName
import           Distribution.Pretty (prettyShow)

import           Control.Applicative
import           Control.Monad.IO.Class
import           Data.Default
import           Data.Foldable
import qualified Data.List as L
import qualified Data.Map as M
import           GHC.Generics (Generic)
import           GHC.IsList (fromList)

data HsBindGenSetup a = HsBindGenSetup
  { modulesSimple :: [HsBindGen]
  , sources       :: [a]
  } deriving stock (Generic)

instance Default (HsBindGenSetup a) where
  def = HsBindGenSetup [] []

class MkBindRules a where
  -- | For configure step.
  bindTargets :: a -> [HsBindGen]

  -- | For build step.
  mkBindRules :: Traversable t => PreBuildComponentInputs -> t a -> RulesM [(HsBindGen, [Dependency])]

instance MkBindRules HsBindGen where
  bindTargets = return
  mkBindRules _ xs = return [ (x, mempty) | x <- toList xs ]

data HsBindGen = HsBindGen
  { headers                        :: [SymbolicPath Include 'File] -- ^ Header files
  , moduleName                     :: ModuleName -- ^ Output module name
  , uniqueId                       :: String
  , omitFieldPrefixes              :: Maybe Bool
  , programSlicing                 :: Maybe Bool
  , cStandard                      :: String
  , genGlobal                      :: Maybe Bool
  , extBindingSpecs                :: [BindingSpec]
  , prescriptiveBindingSpecs       :: [Location]
  , selectDeprecated               :: Maybe Bool
  , selectFromMainHeaderDirs       :: Maybe Bool
  , excludeByDeclName              :: String -- ^ PCRE
  , extraArgs                      :: [String]  -- ^ Arbitrary additional arguments for @hs-bindgen-cli@
  , includeDirs                    :: [SymbolicPath Pkg ('Dir Include)] -- ^ Include search directories (@-I@)
  , hasPointer, hasSafe, hasUnsafe :: Bool
  }
  deriving stock (Eq, Ord, Show, Generic)
  deriving anyclass (Binary)

data BindingSpec
  = BFile Location
  | BModule ModuleName
  deriving stock (Eq, Ord, Show, Generic)
  deriving anyclass (Binary)

instance Semigroup HsBindGen where
  a <> b = HsBindGen
    { headers                  = a.headers ++ b.headers
    , moduleName               = nonEmpty "" moduleName
    , uniqueId                 = nonEmpty "" uniqueId
    , omitFieldPrefixes        = altr omitFieldPrefixes
    , programSlicing           = altr programSlicing
    , cStandard                = nonEmpty "" cStandard
    , genGlobal                = altr genGlobal
    , extBindingSpecs          = a.extBindingSpecs ++ b.extBindingSpecs
    , prescriptiveBindingSpecs = a.prescriptiveBindingSpecs ++ b.prescriptiveBindingSpecs
    , selectDeprecated         = altr selectDeprecated
    , selectFromMainHeaderDirs = altr selectFromMainHeaderDirs
    , excludeByDeclName        = orPCRE excludeByDeclName
    , extraArgs                = a.extraArgs ++ b.extraArgs
    , includeDirs              = a.includeDirs ++ b.includeDirs
    , hasPointer               = b.hasPointer
    , hasSafe                  = b.hasSafe
    , hasUnsafe                = b.hasUnsafe
    } where
      nonEmpty :: Eq a => a -> (HsBindGen -> a) -> a
      nonEmpty em f = if f a == em then f b else f a

      altr f = f b <|> f a

      orPCRE f
        | f a == "" = f b
        | f b == "" = f a
        | otherwise = "(" ++ f a ++ ")|(" ++ f b ++ ")"

instance Monoid HsBindGen where
  mempty = HsBindGen [] "" "" Nothing Nothing "" Nothing [] [] Nothing Nothing "" [] [] True True True

instance Default HsBindGen where
  def = mempty
    { moduleName = "Generated"
    , omitFieldPrefixes = Just True
    , cStandard = "gnu23"
    , genGlobal = Just True
    }

bindGenModules :: HsBindGen -> [ModuleName]
bindGenModules spec =
  [ spec.moduleName ] ++
  [ spec.moduleName `suf` "FunPtr" | spec.hasPointer ] ++
  [ spec.moduleName `suf` "Safe"   | spec.hasSafe ] ++
  [ spec.moduleName `suf` "Unsafe" | spec.hasUnsafe ] ++
  [ spec.moduleName `suf` "Global" | Just False /= spec.genGlobal ]
    where
      suf mo x = fromString $ prettyShow mo <.> x

bindingsModulePaths :: HsBindGen -> [RelativePath Source 'File]
bindingsModulePaths spec = [ moduleNameSymbolicPath mo <.> "hs" | mo <- bindGenModules spec ]

genBindingSpec :: ModuleName -> RelativePath Source 'File
genBindingSpec nm = makeRelativePathEx $ "bindgen" </> prettyShow nm <.> "yaml"

data PreProcessArgs = PreProcessArgs
  { verbosityFlags    :: VerbosityFlags
  , bindgenProgram    :: ConfiguredProgram
  , bindgenOptions    :: HsBindGen
  , hsOutputDir       :: SymbolicPath Pkg (Dir Source) -- ^ Where to write .hs files
  , genBindingSpecDir :: SymbolicPath Pkg (Dir Source) -- ^ Where to store generated binding specs (.yaml)
  } deriving (Eq, Show, Generic, Binary)

createBindingsCommand :: VerbosityFlags -> ConfiguredProgram -> SymbolicPath Pkg (Dir Source) -> HsBindGen -> Command _ (IO ())
createBindingsCommand verbosityFlags bindgenProgram hsOutputDir opts = mkCommand (static Dict) (static createBindings) PreProcessArgs{..}
  where
    bindgenOptions = foldr ($) opts
      ([ if opts.uniqueId == "" then mkUniqueId else id
       , if opts.cStandard == "" then setCStd else id
       ] :: [HsBindGen -> HsBindGen])

    mkUniqueId x = x { uniqueId = filter (`elem` (['a'..'z'] :: String)) $ prettyShow x.moduleName }
    setCStd x = x { cStandard = (def::HsBindGen).cStandard }

    genBindingSpecDir = hsOutputDir

createBindings :: PreProcessArgs -> IO ()
createBindings PreProcessArgs{ bindgenOptions = gen, .. } = do
  noticeNoWrap verb $ "Generating bindings for " ++ prettyShow gen.moduleName ++ "..."
  runProgram verb bindgenProgram $
    [ "-v", show $ verbosityLevelInt verb ] ++
    [ "preprocess" ] ++
    [ "-I" ++ dir | dir <- includeSearchDirs ] ++
    [ "--clang-option-before", "-std=" ++ gen.cStandard ] ++
    [ "--external-binding-spec=" ++ file | file <- externalBindingSpecs ] ++
    [ "--prescriptive-binding-spec=" ++ file | file <- prescriptiveBindingSpecs ] ++
    [ "--select-from-main-header-dirs"     | Just True == gen.selectFromMainHeaderDirs ] ++
    [ "--select-except-deprecated"         | Just True /= gen.selectDeprecated ] ++
    [ "--select-except-by-decl-name=" ++ x | x <- pure gen.excludeByDeclName, x /= "" ] ++
    [ "--enable-program-slicing"           | Just True <- pure gen.programSlicing ] ++
    [ "--omit-field-prefixes"              | Just True <- pure gen.omitFieldPrefixes ] ++
    [ "--unique-id=" ++ gen.uniqueId ] ++
    [ "--module=" ++ prettyShow gen.moduleName ] ++
    [ "--hs-output-dir=" ++ interpretSymbolicPathCWD hsOutputDir ] ++
    [ "--gen-binding-spec=" ++ interpretSymbolicPathCWD (genBindingSpecDir </> genBindingSpec gen.moduleName) ] ++
    [ "--create-output-dirs" ] ++
    [ "--overwrite-files" ] ++
    gen.extraArgs ++
    "--" : map getSymbolicPath gen.headers
  where
    verb = verbosityFromFlags verbosityFlags

    includeSearchDirs = interpretSymbolicPathCWD hsOutputDir : map interpretSymbolicPathCWD gen.includeDirs

    externalBindingSpecs = gen.extBindingSpecs >>= \case
        BFile file      -> pure $ interpretSymbolicPathCWD $ location file
        BModule modname -> pure $ interpretSymbolicPathCWD $ genBindingSpecDir </> genBindingSpec modname

    prescriptiveBindingSpecs = map (interpretSymbolicPathCWD . location) gen.prescriptiveBindingSpecs

hsBindgenSetupHooks :: MkBindRules a => HsBindGenSetup a -> SetupHooks
hsBindgenSetupHooks setup = hsBindgenConfigureHooks setup <> mempty
  { buildHooks = mempty
    { preBuildComponentRules = Just $ rules (static ()) (preBuildRules setup) } }

hsBindgenConfigureHooks :: MkBindRules a => HsBindGenSetup a -> SetupHooks
hsBindgenConfigureHooks setup = mempty
  { configureHooks = mempty
    { preConfPackageHook = Just hsBindgenPackagePreConf
    , preConfComponentHook = Just $ hsBindgenComponentPreConf setup } }

hsBindgenPackagePreConf :: PreConfPackageInputs -> IO PreConfPackageOutputs
hsBindgenPackagePreConf inp@PreConfPackageInputs{configFlags=flags, localBuildConfig=lbc} = do
  configured <- configurePrograms v ["hs-bindgen-cli"] (LBC.withPrograms lbc)
  return (noPreConfPackageOutputs inp) { extraConfiguredProgs = configured }
  where
     vflags = fromFlag $ setupVerbosity $ configCommonFlags flags
     v      = verbosityFromFlags vflags

hsBindgenComponentPreConf :: MkBindRules a => HsBindGenSetup a -> PreConfComponentInputs -> IO PreConfComponentOutputs
hsBindgenComponentPreConf setup pci = return $ (noPreConfComponentOutputs pci) { componentDiff = cdiff }
  where
    cdiff
      | CLib lib <- pci.component = ComponentDiff . CLib $
          mempty & Lib.exposedModules .~ filter (`notElem` explicitLibModules lib) mods
                 & BI.autogenModules .~ filter (`notElem` (pci.component ^. BI.autogenModules)) mods
      | otherwise = emptyComponentDiff (componentName pci.component)

    specs = setup.modulesSimple ++ concatMap bindTargets setup.sources
    mods = concatMap bindGenModules specs

hsBindgenBuildRules :: [HsBindGen] -> PreBuildComponentInputs -> RulesM ()
hsBindgenBuildRules xs = hsBindgenBuildRules' (zip xs (repeat []))

preBuildRules :: MkBindRules a => HsBindGenSetup a -> PreBuildComponentInputs -> RulesM ()
preBuildRules setup inp
  | CLib{} <- inp.targetInfo.targetComponent = do
      xs <- mkBindRules inp setup.sources
      hsBindgenBuildRules' (map (, []) setup.modulesSimple <> xs) inp
  | otherwise = return ()

hsBindgenBuildRules' :: [(HsBindGen, [Dependency])] -> PreBuildComponentInputs -> RulesM ()
hsBindgenBuildRules' specs pbci
  | CLib{} <- pbci.targetInfo.targetComponent, checkBuild pbci.buildingWhat
  = do
      (bindgen, _) <- liftIO $ requireProgram verb (simpleProgram "hs-bindgen-cli") (withPrograms pbci.localBuildInfo)

      let mkSpecs done ((spec, extraDeps) : todo) = do
            rid <- registerRule (fromString $ prettyShow spec.moduleName) $ staticRule
                  (createBindingsCommand vflags bindgen autogendir spec)
                  (getSpecDeps done spec ++ extraDeps)
                  (bindingsResult spec)
            mkSpecs (M.insert spec.moduleName rid done) todo
          mkSpecs _    [] = return ()

      mkSpecs mempty $ specsInOrder specs

  | otherwise = return ()
  where
      vflags = buildingWhatVerbosity pbci.buildingWhat
      verb   = verbosityFromFlags vflags

      autogendir = autogenComponentModulesDir pbci.localBuildInfo (targetCLBI pbci.targetInfo)

      checkBuild = \case
        BuildNormal{} -> True
        BuildRepl{} -> True
        _ -> False

      bindingsResult spec = fromList $ Location autogendir (genBindingSpec spec.moduleName) : map (Location autogendir) (bindingsModulePaths spec)

      getSpecDeps done spec = spec.extBindingSpecs >>= \case
        BFile loc -> pure $ FileDependency loc
        BModule nm -> pure $ RuleDependency $ RuleOutput (done M.! nm) 0

      specsInOrder :: [(HsBindGen, [Dependency])] -> [(HsBindGen, [Dependency])]
      specsInOrder = go [] where
        go _    []   = []
        go done todo
          | (as, bs) <- L.partition (\(s, _) -> L.all (`elem` done) [ mo | BModule mo <- s.extBindingSpecs]) todo
          , _ : _ <- as
          = let as' = [ x.moduleName | (x, _) <- as ]
             in as ++ go (done ++ as') bs
          | otherwise = error $ "unresolved dependencies: " ++ show todo ++ "\n\nResolved: " ++ show (map prettyShow done)

