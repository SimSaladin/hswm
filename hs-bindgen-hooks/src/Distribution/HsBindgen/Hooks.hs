{-# LANGUAGE CPP                   #-}
{-# LANGUAGE DerivingStrategies    #-}
{-# LANGUAGE LambdaCase            #-}
{-# LANGUAGE OverloadedLists       #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE RecursiveDo           #-}
{-# LANGUAGE TypeFamilies          #-}
{-# LANGUAGE DerivingVia #-}


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
  ( HsBindGen(..)
  , BSpec(..)
  , ExtBindingSpec(..)
  , makeBindingSpec
  , MkBindRules(..)
  , PCRE
  , ToPCRE(..)

  -- * Setup hooks
  , bindgenHooks

  -- * Action
  -- static pointer, must export
  , preBuildComponent
  , bindgenRule

  -- * Re-exports
  , ModuleName
  , Default(..)
  )
    where

import           Distribution.HsBindgen.Utils

import           Distribution.Compat.Binary
-- import           Distribution.Compat.Lens
import           Distribution.Simple.LocalBuildInfo
import           Distribution.Simple.Program
import           Distribution.Simple.Setup
import           Distribution.Simple.SetupHooks
import           Distribution.Simple.Utils
import           Distribution.ModuleName
import qualified Distribution.Types.BuildInfo.Lens as BI
import           Distribution.Types.Library (explicitLibModules)
import qualified Distribution.Types.Library.Lens as Lib
import qualified Distribution.Types.LocalBuildConfig as LBC
import           Distribution.Utils.Path

import           Control.Monad
import           Control.Monad.IO.Class
import           Data.Default
import           Data.Foldable
import qualified Data.List.NonEmpty as NE
import qualified Data.Map as M
import           Data.String
import           Distribution.Pretty
import qualified GHC.Exts as GHC (IsList(..))
import           GHC.Generics (Generic, Generically(..))
import           System.Directory (doesFileExist)
import qualified System.FilePath as FP
import qualified Text.PrettyPrint as PP
import           Data.Maybe
import GHC.Stack
import Lens.Micro
import Lens.Micro.GHC ()

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
  }
  deriving stock (Eq, Ord, Show, Generic)
  deriving (Semigroup, Monoid) via Generically HsBindGen

instance Binary HsBindGen
instance Default HsBindGen

instance Pretty HsBindGen where
  pretty c = PP.vcat
    [ PP.text (l ++ ":") PP.<+> doc
      | (l, doc) <-
        [ ("headers", commaSpaceSep $ map location c.headers)
        , ("exclude-headers", pretty c.excludeHeaders)
        , ("ext-binding-specs", commaSpaceSep c.extBindingSpecs)
        ]
    ]

getModuleName :: HsBindGen -> ModuleName
getModuleName x = fromFlagOrDefault "Generated" x.moduleName

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

instance Default BSpec where
  def = GenerateBSpec Nothing

-- | Manually crafted binding specification file.
makeBindingSpec :: FilePath -> ExtBindingSpec
makeBindingSpec path = BFile $ Location sameDirectory $ makeRelativePathEx $ "binding-specs" </> path <.> "yaml"

-- | Reference to a spec file (to be) generated by hs-bindgen-cli
genBindingSpec :: ModuleName -> RelativePath Source 'File
genBindingSpec nm = makeRelativePathEx $ "bindgen" </> prettyShow nm <.> "yaml"

-- * PCRE

newtype PCRE = PCRE String
  deriving stock (Eq, Ord, Show, Generic)
  deriving newtype (Binary, Default)

instance Semigroup PCRE where
  p1@(PCRE a) <> p2@(PCRE b)
    | p1 == mempty = p2
    | p2 == mempty = p1
    | otherwise    = PCRE $ a ++ "|" ++ b

instance Monoid PCRE where
  mempty = PCRE ""

instance IsString PCRE where
  fromString = PCRE -- TODO FIXME

instance GHC.IsList PCRE where
  type Item PCRE = PCRE
  fromList = fold
  toList = pure

instance Pretty PCRE where
  pretty (PCRE x) = "r" <> PP.doubleQuotes (PP.text x)

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
-- TODO refactor
class MkBindRules a where

  -- | For configure step.
  bindTargets :: PreConfComponentInputs -> a -> IO [HsBindGen]

  -- | For build step.
  mkBindRules :: PreBuildComponentInputs
              -> [(HsBindGen, [Dependency])] -- fixed-point
              -> a
              -> RulesM [(HsBindGen, [Dependency])]

-- | Run a simple set of hs-bindgen hooks only.
instance MkBindRules HsBindGen where
  bindTargets _ = return . return
  mkBindRules pbci dict x = mkBindRules @[HsBindGen] pbci dict [x]

instance MkBindRules [HsBindGen] where
  bindTargets _ = return
  mkBindRules _ _ xs = pure [ (x, []) | x <- xs ]

instance (MkBindRules a) => MkBindRules (a, [HsBindGen]) where
  bindTargets inputs (a,b) = liftM2 (<>) (bindTargets inputs a) (bindTargets inputs b)
  mkBindRules pbci dict (a, b) = do
    r1 <- mkBindRules pbci dict a
    r2 <- mkBindRules pbci dict b
    return (r1 ++ r2)

-- SetupHooks

bindgenHooks :: MkBindRules a => a -> SetupHooks
bindgenHooks cfg = mempty
  { configureHooks = mempty
    { preConfPackageHook = Just preConfPackage
    , preConfComponentHook = Just $ preConfComponent cfg }
  , buildHooks = mempty
    { preBuildComponentRules = Just $ preBuildComponent cfg }
  }

-- * Configure

preConfPackage :: PreConfPackageInputs -> IO PreConfPackageOutputs
preConfPackage inputs@PreConfPackageInputs{configFlags=flags, localBuildConfig=lbc} = do
  configured <- configurePrograms v [ "hs-bindgen-cli" ] (LBC.withPrograms lbc)
  return (noPreConfPackageOutputs inputs) { extraConfiguredProgs = configured }
  where
    v = verbosityFromFlags $ fromFlag $ setupVerbosity $ configCommonFlags flags

preConfComponent :: MkBindRules a => a -> PreConfComponentInputs -> IO PreConfComponentOutputs
preConfComponent setup pci
  | CLib lib <- pci.component
  = do
    specs <- bindTargets pci setup
    return $ (noPreConfComponentOutputs pci) { componentDiff = ComponentDiff $ doLib specs lib }
  | otherwise = return (noPreConfComponentOutputs pci)
  where
    doLib specs lib = CLib $ mempty
      & BI.autogenModules  .~ filter (`notElem` autogenModulesOld) genmodules
      & BI.otherModules    .~ filter (not . exposed) undeclaredModules
      & Lib.exposedModules .~ filter exposed undeclaredModules
      where
        genmodules = concatMap bindGenModules specs
        autogenModulesOld = lib ^. BI.autogenModules
        undeclaredModules = filter (`notElem` explicitLibModules lib) genmodules
        exposed _  = True -- XXX: should autogenerated module be exposed or not?

-- * Build

preBuildComponent :: HasCallStack => MkBindRules a => a -> Rules PreBuildComponentInputs
preBuildComponent cfg = rules (static ()) (buildRules cfg)

buildRules :: HasCallStack => MkBindRules a => a -> PreBuildComponentInputs -> RulesM ()
buildRules cfg pbci@PreBuildComponentInputs{buildingWhat=what} = mdo
  specs <- mkBindRules pbci specs cfg
  (bindgen, _) <- liftIO $ requireProgram v hsBindgenProgram (withPrograms pbci.localBuildInfo)
  results <- forM (M.fromList [(getModuleName spec, x) | x@(spec, _) <- specs]) $
      \(spec, extraDeps) -> do
        registerRule (fromString $ prettyShow $ getModuleName spec) $
          bindgenRule pbci bindgen autogendir results spec extraDeps
  return ()
  where
    v          = verbosityFromFlags vflags
    vflags     = buildingWhatVerbosity what
    autogendir = autogenComponentModulesDir pbci.localBuildInfo (targetCLBI pbci.targetInfo)

bindgenRule
  :: PreBuildComponentInputs
  -> ConfiguredProgram -- hs-bindgen-cli
  -> SymbolicPath Pkg (Dir Source) -- output-dir
  -> M.Map ModuleName RuleId -- memoized rules for dependencies
  -> HsBindGen -- bindgen options
  -> [Dependency] -- extra dependencies
  -> Rule
bindgenRule pbci bindgenProgram hsOutputDir done spec extraDeps =
  staticRule (mkCommand (static Dict) (static createBindings) args) deps results
  where
    -- 0-1x generated binding spec output (when applicable)
    -- 1-5x hs-bindgen results files (.hs)
    results = NE.fromList $
      [ fromMaybe (Location args.genBindingSpecDir $ genBindingSpec $ getModuleName spec) mdir
        | GenerateBSpec mdir <- return $ fromFlagOrDefault def spec.bindingSpec ]
      ++ fmap (Location hsOutputDir) (bindingsModulePaths spec)

    args = PreProcessArgs
      { verbosityFlags    = buildingWhatVerbosity pbci.buildingWhat
      , bindgenCwd        = buildingWhatWorkingDir pbci.buildingWhat
      , bindgenProgram
      , bindgenOptions    = spec
      , hsOutputDir
      , genBindingSpecDir = hsOutputDir -- XXX fixme
      }

    deps = extraDeps ++ map extBSpecDependency spec.extBindingSpecs ++
      [ FileDependency loc | PrescriptiveBSpec loc <- flagToList spec.bindingSpec ]

    extBSpecDependency = \case
      BFile loc -> FileDependency loc
      BModule nm -> RuleDependency $ RuleOutput (done ^. at nm . non (error $ "no key for module: " ++ prettyShow nm)) 0 -- XXX


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
  mapM_ (ensureHsModuleOutput verb (interpretSymbolicPath bindgenCwd hsOutputDir)) (bindGenModules gen)
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
