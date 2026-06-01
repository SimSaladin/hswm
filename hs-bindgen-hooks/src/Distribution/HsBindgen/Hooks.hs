{-# LANGUAGE CPP                 #-}
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

  -- * Setup hooks
  , hsBindgenSetupHooks

  -- ** Configure hooks
  , hsBindgenPackagePreConf
  , hsBindgenComponentPreConf

  -- * Action
  --
  -- static pointer, must export
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
import qualified Distribution.Types.BuildInfo.Lens as BI
import           Distribution.Types.Library (explicitLibModules)
import qualified Distribution.Types.Library.Lens as Lib
import qualified Distribution.Types.LocalBuildConfig as LBC
import           Distribution.Utils.Path
import           Distribution.ModuleName
import           Distribution.Pretty (prettyShow)

import           System.Directory (doesFileExist)
import           Control.Monad
import           Control.Applicative
import           Control.Monad.IO.Class
import           Data.Default
import           Data.Foldable
import qualified Data.Map as M
import           GHC.Generics (Generic)
import           GHC.IsList (fromList)
import qualified System.FilePath as FP
import           GHC.StaticPtr

-- HsBindGenSetup

data HsBindGenSetup a = HsBindGenSetup
  { modulesSimple :: [HsBindGen]
  , sources       :: [a]
  } deriving stock (Generic)

instance Default (HsBindGenSetup a) where
  def = HsBindGenSetup [] []

-- SetupHooks

hsBindgenSetupHooks :: MkBindRules a => StaticPtr label -> HsBindGenSetup a -> SetupHooks
hsBindgenSetupHooks label setup =
  preBindgenHooks setup.sources
  <>
  mempty
  { configureHooks = mempty
    { preConfPackageHook = Just hsBindgenPackagePreConf
    , preConfComponentHook = Just $ hsBindgenComponentPreConf setup }
  , buildHooks = mempty
    { preBuildComponentRules = Just $ preBuildRules label setup }
  }

-- PreConfigure

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

-- PreBuild

preBuildRules :: MkBindRules a => StaticPtr label -> HsBindGenSetup a -> Rules PreBuildComponentInputs -- -> RulesM ()
preBuildRules label setup = rules label $ \case
  inp | CLib{} <- inp.targetInfo.targetComponent -> do
      xs <- mkBindRules inp setup.sources
      hsBindgenBuildRules' (map (, []) setup.modulesSimple <> xs) inp
  _ | otherwise -> return ()

hsBindgenBuildRules' :: [(HsBindGen, [Dependency])] -> PreBuildComponentInputs -> RulesM ()
hsBindgenBuildRules' specs pbci = mdo
  (bindgen, _) <- liftIO $ requireProgram verb (simpleProgram "hs-bindgen-cli") (withPrograms pbci.localBuildInfo)
  results <- forM (M.fromList [(spec.moduleName, x) | x@(spec, _) <- specs]) $
    \(spec, extraDeps) -> do
        rid <- registerRule (fromString $ prettyShow spec.moduleName) $
          mkBindgenRule results vflags spec bindgen autogendir extraDeps
        return rid
  return ()
  where
    vflags = buildingWhatVerbosity pbci.buildingWhat
    verb   = verbosityFromFlags vflags
    autogendir = autogenComponentModulesDir pbci.localBuildInfo (targetCLBI pbci.targetInfo)

mkBindgenRule done vflags spec bindgen autogendir extraDeps =
  dynamicRule (static Dict)
    (mkCommand (static Dict) (static computeDepsAction) (done, spec))
    (mkCommand (static Dict) (static createBindings) PreProcessArgs{..})
    extraDeps
    (fromList $ Location autogendir (genBindingSpec spec.moduleName)
      : map (Location autogendir) (bindingsModulePaths spec))
  where
    verbosityFlags = vflags
    bindgenProgram = bindgen
    hsOutputDir = autogendir
    bindgenOptions = foldr ($) spec
      ([ if spec.uniqueId == "" then mkUniqueId else id
       , if spec.cStandard == "" then setCStd else id
       ] :: [HsBindGen -> HsBindGen])
    mkUniqueId x = x { uniqueId = filter (`elem` (['a'..'z'] :: String)) $ prettyShow x.moduleName }
    setCStd x = x { cStandard = (def::HsBindGen).cStandard }
    genBindingSpecDir = autogendir

computeDepsAction :: (_, HsBindGen) -> IO ([Dependency], ())
computeDepsAction (done, spec) = do
  let deps = spec.extBindingSpecs >>= \case
        BFile loc -> pure $ FileDependency loc
        BModule nm -> pure $ RuleDependency $ RuleOutput (done M.! nm) 0
  return (deps, ())

-- * MkBindRules

class MkBindRules a where
  -- | Additional setup hooks to run prior to the hs-bindgen hooks
  preBindgenHooks :: [a] -> SetupHooks
  preBindgenHooks _ = mempty

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
  , extBindingSpecs                :: [ExtBindingSpec]
  , bindingSpec                    :: BSpec
  , selectDeprecated               :: Maybe Bool
  , selectFromMainHeaderDirs       :: Maybe Bool
  , excludeByDeclName              :: String -- ^ PCRE
  , extraArgs                      :: [String]  -- ^ Arbitrary additional arguments for @hs-bindgen-cli@
  , includeDirs                    :: [SymbolicPath Pkg ('Dir Include)] -- ^ Include search directories (@-I@)
  , hasPointer, hasSafe, hasUnsafe :: Bool
  , excludeHeaders                 :: [SymbolicPath Include 'File]
  }
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
    , bindingSpec              = if a.bindingSpec == bindingSpec mempty then b.bindingSpec else a.bindingSpec
    , selectDeprecated         = altr selectDeprecated
    , selectFromMainHeaderDirs = altr selectFromMainHeaderDirs
    , excludeByDeclName        = orPCRE excludeByDeclName
    , extraArgs                = a.extraArgs ++ b.extraArgs
    , includeDirs              = a.includeDirs ++ b.includeDirs
    , hasPointer               = b.hasPointer
    , hasSafe                  = b.hasSafe
    , hasUnsafe                = b.hasUnsafe
    , excludeHeaders           = a.excludeHeaders ++ b.excludeHeaders
    } where
      nonEmpty :: Eq a => a -> (HsBindGen -> a) -> a
      nonEmpty em f = if f a == em then f b else f a

      altr f = f b <|> f a

      orPCRE f
        | f a == "" = f b
        | f b == "" = f a
        | otherwise = "(" ++ f a ++ ")|(" ++ f b ++ ")"

instance Monoid HsBindGen where
  mempty = HsBindGen [] "" "" Nothing Nothing "" Nothing [] (GenerateBSpec Nothing) Nothing Nothing "" [] [] True True True []

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

-- * BindingSpec

data BSpec = GenerateBSpec !(Maybe Location)
           | PrescriptiveBSpec !Location
  deriving stock (Eq, Ord, Show, Generic)
  deriving anyclass (Binary)

-- | External binding spec (file or module reference)
data ExtBindingSpec
  = BFile Location
  | BModule ModuleName
  deriving stock (Eq, Ord, Show, Generic)
  deriving anyclass (Binary)

-- | Manually crafted binding specification file.
makeBindingSpec :: FilePath -> ExtBindingSpec
makeBindingSpec path = BFile $ Location sameDirectory $ makeRelativePathEx $ "binding-specs" </> path <.> "yaml"

genBindingSpec :: ModuleName -> RelativePath Source 'File
genBindingSpec nm = makeRelativePathEx $ "bindgen" </> prettyShow nm <.> "yaml"

data PreProcessArgs = PreProcessArgs
  { verbosityFlags    :: VerbosityFlags
  , bindgenProgram    :: ConfiguredProgram
  , bindgenOptions    :: HsBindGen
  , hsOutputDir       :: SymbolicPath Pkg (Dir Source) -- ^ Where to write .hs files
  , genBindingSpecDir :: SymbolicPath Pkg (Dir Source) -- ^ Where to store generated binding specs (.yaml)
  } deriving (Eq, Show, Generic, Binary)

createBindings :: PreProcessArgs -> () -> IO ()
createBindings PreProcessArgs{ bindgenOptions = gen, .. } _ = do
  noticeNoWrap verb $ "Generating bindings for " ++ prettyShow gen.moduleName ++ "..."
  runProgram verb bindgenProgram $
    [ "-v", show $ verbosityLevelInt verb + 1 ] ++
    -- [ "--log-enable-macro-warnings" ] ++
    -- [ "--log-squashed-as-notice" ]
    [ "preprocess" ] ++
    [ "-I" ++ dir | dir <- includeSearchDirs ] ++
    [ "--clang-option-before", "-std=" ++ gen.cStandard ] ++
    [ "--external-binding-spec=" ++ file | file <- externalBindingSpecs ] ++
    [ "--select-from-main-header-dirs"     | Just True == gen.selectFromMainHeaderDirs ] ++
    [ "--select-except-deprecated"         | Just True /= gen.selectDeprecated ] ++
    [ "--select-except-by-decl-name=" ++ x | x <- pure gen.excludeByDeclName, x /= "" ] ++
    [ "--select-except-by-header-path=" ++ x | arg <- gen.excludeHeaders, let x = getSymbolicPath arg ] ++
    [ "--enable-program-slicing"           | Just True <- pure gen.programSlicing ] ++
    [ "--omit-field-prefixes"              | Just True <- pure gen.omitFieldPrefixes ] ++
    [ "--unique-id=" ++ gen.uniqueId ] ++
    [ "--module=" ++ prettyShow gen.moduleName ] ++
    [ "--hs-output-dir=" ++ interpretSymbolicPathCWD hsOutputDir ] ++
    [ mkBSpec gen.bindingSpec ] ++
    [ "--create-output-dirs" ] ++
    [ "--overwrite-files" ] ++
    gen.extraArgs ++
    "--" : map getSymbolicPath gen.headers
  let modfile = interpretSymbolicPathCWD hsOutputDir </> toFilePath gen.moduleName <.> "hs"
  done <- doesFileExist modfile
  when (not done) $ do
    createDirectoryIfMissingVerbose verb True (FP.takeDirectory modfile)
    rewriteFileEx verb modfile $ "module " ++ prettyShow gen.moduleName ++ " where"
  where
    verb = verbosityFromFlags verbosityFlags

    includeSearchDirs = interpretSymbolicPathCWD hsOutputDir : map interpretSymbolicPathCWD gen.includeDirs

    externalBindingSpecs = gen.extBindingSpecs >>= \case
        BFile file      -> pure $ interpretSymbolicPathCWD $ location file
        BModule modname -> pure $ interpretSymbolicPathCWD $ genBindingSpecDir </> genBindingSpec modname

    mkBSpec = \case
      GenerateBSpec Nothing -> "--gen-binding-spec=" ++ interpretSymbolicPathCWD (genBindingSpecDir </> genBindingSpec gen.moduleName)
      GenerateBSpec (Just loc) -> "--gen-binding-spec=" ++ interpretSymbolicPathCWD (location loc)
      PrescriptiveBSpec loc -> "--prescriptive-binding-spec=" ++ interpretSymbolicPathCWD (location loc)
