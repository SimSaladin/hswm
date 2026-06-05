{-# LANGUAGE CPP                 #-}
{-# LANGUAGE TypeFamilies #-}

{-# LANGUAGE DerivingStrategies  #-}
{-# LANGUAGE LambdaCase          #-}
{-# LANGUAGE OverloadedLists     #-}
{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE RecursiveDo #-}


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
  , BSpec(..)
  , ExtBindingSpec(..)
  , makeBindingSpec
  , MkBindRules(..)
  , PCRE
  , ToPCRE(..)

  -- * Setup hooks
  , hsBindgenSetupHooks

  -- * Action
  -- static pointer, must export
  , preBuildRules
  , mkBindgenRule

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
import           Distribution.ModuleName
import           Distribution.Pretty (prettyShow)
import qualified Distribution.Types.BuildInfo.Lens as BI
import           Distribution.Types.Library (explicitLibModules)
import qualified Distribution.Types.Library.Lens as Lib
import qualified Distribution.Types.LocalBuildConfig as LBC
import           Distribution.Utils.Path

import           Control.Applicative
import           Control.Monad
import           Control.Monad.IO.Class
import           Data.Default
import           Data.Foldable
import qualified Data.List as L
import qualified Data.List.NonEmpty as NE
import qualified Data.Map as M
import           Data.Monoid
import           Data.String
import           Distribution.Pretty
import qualified GHC.Exts as GHC (IsList(..))
import           GHC.Generics (Generic)
import           System.Directory (doesFileExist)
import qualified System.FilePath as FP
import qualified Text.PrettyPrint as PP

-- | Settings for a hs-bindgen-cli invocation.
data HsBindGen = HsBindGen
  { headers                        :: [Location] -- [SymbolicPath Include 'File] -- ^ Header files
  , moduleName                     :: Flag ModuleName -- ^ Output module name
  , uniqueId                       :: Flag String
  , omitFieldPrefixes              :: Flag Bool
  , programSlicing                 :: Flag Bool
  , cStandard                      :: Flag String
  , genGlobal                      :: Flag Bool
  , extBindingSpecs                :: [ExtBindingSpec]
  , bindingSpec                    :: Flag BSpec
  , selectDeprecated               :: Flag Bool
  , selectFromMainHeaderDirs       :: Flag Bool
  , excludeByDeclName              :: PCRE -- ^ PCRE
  , extraArgs                      :: [String]  -- ^ Arbitrary additional arguments for @hs-bindgen-cli@
  , includeDirs                    :: [SymbolicPath Pkg ('Dir Include)] -- ^ Include search directories (@-I@)
  , hasPointer, hasSafe, hasUnsafe :: Flag Bool
  , excludeHeaders                 :: PCRE -- [SymbolicPath Include 'File]
  } deriving (Eq, Ord, Show, Generic, Binary)

deriving instance Default HsBindGen
deriving instance Semigroup HsBindGen

instance Monoid HsBindGen where
  mempty = def

instance Pretty HsBindGen where
  pretty c = PP.vcat [ PP.text (l ++ ":") PP.<+> doc
    | (l, doc) <-
      [ ("headers", commaSpaceSep $ map location c.headers)
      , ("exclude-headers", pretty c.excludeHeaders)
      , ("ext-binding-specs", commaSpaceSep c.extBindingSpecs)
      ]
                     ]

-- * PCRE

newtype PCRE = PCRE String
  deriving (Eq, Ord, Show, Generic, Binary, Default)

instance Semigroup PCRE where
  p1@(PCRE a) <> p2@(PCRE b)
    | p1 == mempty = p2
    | p2 == mempty = p1
    | otherwise   = PCRE $ a ++ "|" ++ b

instance Monoid PCRE where
  mempty = PCRE ""

instance IsString PCRE where
  fromString = PCRE

instance GHC.IsList PCRE where
  type Item PCRE = PCRE
  fromList = fold
  toList = pure

instance Pretty PCRE where
  pretty (PCRE x) = PP.text x

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

-- * MkBindRules

-- | Class of hooks configuration objects that should be followed up with hs-bindgen rules.
class MkBindRules a where
  -- | Additional setup hooks to run prior to the hs-bindgen hooks
  preBindgenHooks :: [a] -> SetupHooks
  preBindgenHooks _ = mempty

  -- | For configure step.
  bindTargets :: a -> [HsBindGen]

  -- | For build step.
  mkBindRules :: Traversable t => PreBuildComponentInputs -> t a -> RulesM [(HsBindGen, [Dependency])]

-- | Run a simple set of hs-bindgen hooks only.
instance MkBindRules HsBindGen where
  bindTargets = return
  mkBindRules _ xs = return [ (x, mempty) | x <- toList xs ]

-- HsBindGenSetup

data HsBindGenSetup a = HsBindGenSetup
  { modulesSimple :: [HsBindGen]
  , sources       :: [a]
  } deriving stock (Show, Generic)

instance Default (HsBindGenSetup a) where
  def = HsBindGenSetup [] []

-- SetupHooks

hsBindgenSetupHooks :: MkBindRules a => HsBindGenSetup a -> SetupHooks
hsBindgenSetupHooks setup =
  preBindgenHooks setup.sources <>
  mempty
  { configureHooks = mempty
    { preConfPackageHook = Just hsBindgenPackagePreConf
    , preConfComponentHook = Just $ hsBindgenComponentPreConf setup }
  , buildHooks = mempty
    { preBuildComponentRules = Just $ preBuildRules setup }
  }

-- Pre-Configure

hsBindgenPackagePreConf :: PreConfPackageInputs -> IO PreConfPackageOutputs
hsBindgenPackagePreConf inputs@PreConfPackageInputs{configFlags=flags, localBuildConfig=lbc} = do
  configured <- configurePrograms v [ "hs-bindgen-cli" ] (LBC.withPrograms lbc)
  return (noPreConfPackageOutputs inputs) { extraConfiguredProgs = configured }
  where
    v = verbosityFromFlags $ fromFlag $ setupVerbosity $ configCommonFlags flags

hsBindgenComponentPreConf :: MkBindRules a => HsBindGenSetup a -> PreConfComponentInputs -> IO PreConfComponentOutputs
hsBindgenComponentPreConf setup pci
  | CLib lib <- pci.component
  = return $ (noPreConfComponentOutputs pci) { componentDiff = ComponentDiff $ doLib lib }
  | otherwise = return (noPreConfComponentOutputs pci)
  where
    specs = setup.modulesSimple ++ concatMap bindTargets setup.sources
    genmodules = concatMap bindGenModules specs
    exposed _ = True -- XXX: should autogenerated module be exposed or not?

    doLib lib = CLib $ mempty
      & BI.autogenModules  .~ filter (`notElem` autogenModulesOld) genmodules
      & BI.otherModules    .~ filter (not . exposed) undeclaredModules
      & Lib.exposedModules .~ filter exposed undeclaredModules
      where
        autogenModulesOld = lib ^. BI.autogenModules
        explModules = explicitLibModules lib
        undeclaredModules = filter (`notElem` explModules) genmodules

-- PreBuild

preBuildRules :: MkBindRules a => HsBindGenSetup a -> Rules PreBuildComponentInputs -- -> RulesM ()
preBuildRules setup = rules (static ()) $ \inputs -> do
    let vflags     = buildingWhatVerbosity inputs.buildingWhat
    let verb       = verbosityFromFlags vflags
    xs <- mkBindRules inputs setup.sources
    buildRules (map (, []) setup.modulesSimple <> xs) inputs

buildRules :: [(HsBindGen, [Dependency])] -> PreBuildComponentInputs -> RulesM ()
buildRules specs pbci = mdo
  (bindgen, _) <- liftIO $ requireProgram verb hsBindgenProgram (withPrograms pbci.localBuildInfo)

  results <- forM (M.fromList [(getModuleName spec, x) | x@(spec, _) <- specs]) $
    \(spec, extraDeps) -> do
        let mname = getModuleName spec
        registerRule (fromString $ prettyShow mname) $
          mkBindgenRule pbci.buildingWhat vflags bindgen autogendir results spec extraDeps
  return ()
  where
    vflags     = buildingWhatVerbosity pbci.buildingWhat
    verb       = verbosityFromFlags vflags
    autogendir = autogenComponentModulesDir pbci.localBuildInfo (targetCLBI pbci.targetInfo)

getModuleName :: HsBindGen -> ModuleName
getModuleName x = fromFlagOrDefault "Generated" x.moduleName

mkBindgenRule :: BuildingWhat
              -> VerbosityFlags
              -> ConfiguredProgram
              -> SymbolicPath Pkg (Dir Source)
              -> M.Map ModuleName RuleId
              -> HsBindGen
              -> [Dependency]
              -> Rule
mkBindgenRule what verbosityFlags bindgenProgram hsOutputDir done spec staticDeps =
  staticRule (mkCommand (static Dict) (static createBindings) args) deps results
  where
    args = PreProcessArgs
      { bindgenOptions = spec
      , bindgenCwd = buildingWhatWorkingDir what
      , ..}

    -- 0-1x generated binding spec output (when applicable)
    -- 1-5x hs-bindgen results files (.hs)
    results = Location genBindingSpecDir (genBindingSpec $ getModuleName spec)
      NE.:| fmap (Location hsOutputDir) (bindingsModulePaths spec)

    deps = staticDeps ++
      (spec.extBindingSpecs >>= \case
        BFile loc -> pure $ FileDependency loc
        BModule nm -> pure $ RuleDependency $ RuleOutput (done M.! nm) 0
      ) ++
      [ FileDependency loc | PrescriptiveBSpec loc <- flagToList spec.bindingSpec ]

    genBindingSpecDir = hsOutputDir

-- | Names of the modules that ought to be generated (depends on configuration which files are generated).
bindGenModules :: HsBindGen -> [ModuleName]
bindGenModules spec =
  [ mname ] ++
  [ mname `suf` "FunPtr" | Flag False /= spec.hasPointer ] ++
  [ mname `suf` "Safe"   | Flag False /= spec.hasSafe ] ++
  [ mname `suf` "Unsafe" | Flag False /= spec.hasUnsafe ] ++
  [ mname `suf` "Global" | Flag False /= spec.genGlobal ]
    where
      mname = getModuleName spec
      suf mo x = fromString $ prettyShow mo <.> x

-- | File names of the generated bindings modules.
bindingsModulePaths :: HsBindGen -> [RelativePath Source 'File]
bindingsModulePaths spec = [ moduleNameSymbolicPath mo <.> "hs" | mo <- bindGenModules spec ]

-- * BindingSpec

-- | External binding spec (file or module reference)
data ExtBindingSpec
  = BFile !Location -- ^ File reference (static)
  | BModule !ModuleName -- ^ Produced by another hs-bindgen-cli instance
  deriving (Eq, Ord, Show, Generic, Binary)

instance Pretty ExtBindingSpec where
  pretty (BFile l) = "file:" <> pretty (location l)
  pretty (BModule m) = "mod:" <> pretty m

-- | Prescriptive or generated binding spec for the current module?
data BSpec
  = GenerateBSpec !(Maybe Location) -- ^ Generate the spec on build and write it to the given location (or use the default if empty)
  | PrescriptiveBSpec !Location -- ^ Prescriptive spec from a file (must exist). No spec generation.
  deriving (Eq, Ord, Show, Generic, Binary)

-- | Manually crafted binding specification file.
makeBindingSpec :: FilePath -> ExtBindingSpec
makeBindingSpec path = BFile $ Location sameDirectory $ makeRelativePathEx $ "binding-specs" </> path <.> "yaml"

-- | Reference to a spec file (to be) generated by hs-bindgen-cli
genBindingSpec :: ModuleName -> RelativePath Source 'File
genBindingSpec nm = makeRelativePathEx $ "bindgen" </> prettyShow nm <.> "yaml"

data PreProcessArgs = PreProcessArgs
  { verbosityFlags    :: VerbosityFlags
  , bindgenCwd        :: Maybe (SymbolicPath CWD ('Dir Pkg))
  , bindgenProgram    :: ConfiguredProgram
  , bindgenOptions    :: HsBindGen
  , hsOutputDir       :: SymbolicPath Pkg (Dir Source) -- ^ Where to write .hs files
  , genBindingSpecDir :: SymbolicPath Pkg (Dir Source) -- ^ Where to store generated binding specs (.yaml)
  } deriving (Eq, Show, Generic, Binary)

createBindings :: PreProcessArgs -> IO ()
createBindings PreProcessArgs{ bindgenOptions = gen, .. } = do
  noticeNoWrap verb $ "Generating bindings for " ++ prettyShow mname ++ "..."
  runProgramCwd verb bindgenCwd bindgenProgram $
    [ "-v", show $ verbosityLevelInt verb ] ++
    -- [ "--log-enable-macro-warnings" ] ++
    -- [ "--log-squashed-as-notice" ]
    [ "preprocess" ] ++
    [ "-I" ++ dir | dir <- includeSearchDirs ] ++
    [ "--clang-option-before", "-std=" ++ fromFlagOrDefault "gnu23" gen.cStandard ] ++
    [ "--external-binding-spec=" ++ file | file <- externalBindingSpecs ] ++
    [ "--select-from-main-header-dirs"     | Flag True == gen.selectFromMainHeaderDirs ] ++
    [ "--select-except-deprecated"         | Flag True /= gen.selectDeprecated ] ++
    [ "--select-except-by-decl-name=" ++ x | arg@(PCRE x) <- pure gen.excludeByDeclName, arg /= mempty ] ++
    [ "--select-except-by-header-path=" ++ x | arg@(PCRE x) <- pure gen.excludeHeaders, arg /= mempty ] ++
    [ "--enable-program-slicing"           | Flag True == gen.programSlicing ] ++
    [ "--omit-field-prefixes"              | Flag False /= gen.omitFieldPrefixes ] ++
    [ "--unique-id=" ++ fromFlagOrDefault mkUniqueId gen.uniqueId ] ++
    [ "--module=" ++ prettyShow mname ] ++
    [ "--hs-output-dir=" ++ interpretSymbolicPathCWD hsOutputDir ] ++
    [ mkBSpec gen.bindingSpec ] ++
    [ "--create-output-dirs" ] ++
    [ "--overwrite-files" ] ++
    gen.extraArgs ++
    "--" : map (interpretSymbolicPathCWD . normaliseSymbolicPath . location) gen.headers
  ensureHsModuleOutput verb (interpretSymbolicPath bindgenCwd hsOutputDir) mname
  where
    mname = getModuleName gen
    verb = verbosityFromFlags verbosityFlags
    includeSearchDirs = interpretSymbolicPathCWD hsOutputDir : map interpretSymbolicPathCWD gen.includeDirs
    externalBindingSpecs = gen.extBindingSpecs >>= \case
        BFile file      -> pure . interpretSymbolicPathCWD $ location file
        BModule modname -> pure . interpretSymbolicPathCWD $ genBindingSpecDir </> genBindingSpec modname
    mkBSpec = \case
      Flag (PrescriptiveBSpec loc)    -> "--prescriptive-binding-spec=" ++ interpretSymbolicPathCWD (location loc)
      Flag (GenerateBSpec (Just loc)) -> "--gen-binding-spec=" ++ interpretSymbolicPathCWD (location loc)
      _                               -> "--gen-binding-spec=" ++ interpretSymbolicPathCWD (genBindingSpecDir </> genBindingSpec mname)

    mkUniqueId = filter (`elem` (['a'..'z'] :: String)) $ prettyShow mname

ensureHsModuleOutput :: Verbosity -> FilePath -> ModuleName -> IO ()
ensureHsModuleOutput v dir modname = do
  done <- doesFileExist filepath
  unless done $ do
      warn v $ "Creating expected output file, because hs-bindgen-cli did not: " ++ filepath
      createDirectoryIfMissingVerbose v True (FP.takeDirectory filepath)
      rewriteFileEx v filepath $ "module " ++ prettyShow modname ++ " where"
  where
    filepath = dir </> toFilePath modname <.> "hs"

hsBindgenProgram :: Program
hsBindgenProgram = simpleProgram "hs-bindgen-cli"
