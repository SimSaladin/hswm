{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE DisambiguateRecordFields #-}
{-# LANGUAGE OverloadedLists          #-}
{-# LANGUAGE OverloadedRecordDot      #-}
{-# LANGUAGE OverloadedStrings        #-}
{-# OPTIONS_GHC -Wall #-}
{-# OPTIONS_GHC -Wunused-packages #-}
{-# OPTIONS_GHC -Wno-ambiguous-fields #-}

module SetupHooks (setupHooks) where

import           Distribution.HsBindgen.Hooks
import qualified Distribution.HsBindgen.Types as I
import           Distribution.Wayland.Hooks
import           Distribution.Wayland.ProtocolXML

import qualified Data.List as L
import           Distribution.CabalSpecVersion
import           Distribution.Package
import           Distribution.Simple.Configure
import           Distribution.Simple.Flag
import           Distribution.Simple.Glob
import           Distribution.Simple.PackageIndex hiding (fromList)
import           Distribution.Simple.Setup (setupWorkingDir)
import           Distribution.Simple.SetupHooks (PostConfPackageInputs(..), SetupHooks,
                                                 configCommonFlags, configDependencies)
import           Distribution.Simple.Utils
import           Distribution.Types.GivenComponent
import qualified Distribution.Types.InstalledPackageInfo as PI
import           Distribution.Types.LocalBuildConfig
import           Distribution.Types.PackageName
import           Distribution.Types.UnitId
import           Distribution.Utils.Path
import           Distribution.Verbosity

import           Data.Maybe (fromMaybe)
import           Control.Monad
import           GHC.Exts (coerce, fromList)

import qualified WL.Core.Internal as Core

setupHooks :: SetupHooks
setupHooks = waylandProtocolHooks config

config :: DynamicSetup ()
config = do

  let v = verbosityFromFlags verbose

  -- Hide deprecated declarations in wayland server bindings
  modifyOptions $ optionCustom <>~ Endo (bindGens . ix ServerBindings . bcBindGen . defineMacros . at "WL_HIDE_DEPRECATED" ?~ "1")

  -- Configure dependency on wayland-util.h
  modifyOptions $ optionCustom <>~ Endo (qualifiedImports <>~ [ ("WL.Util", "WL.Util") ])

  -- So that the core bindings are loaded first always...
  modifyOptions $ optionCustom <>~ Endo (dependsOn <>~ ["wl_display"])

  setup <- ask
  index <- liftIO $ getInstalledPackages v setup.packageBuildDescr.compiler Nothing setup.packageBuildDescr.withPackageDB setup.localBuildConfig.withPrograms
  let selector pkg = packageName pkg `elem` ([ "haskell-wayland-core" ] :: [PackageName])
      Left depsIndex = dependencyClosure index $ map (newSimpleUnitId . givenComponentId) setup.packageBuildDescr.configFlags.configDependencies
      deps = filter selector $ reverseTopologicalOrder depsIndex
  forM_ deps $ \pkg -> do
    let incdirs = map makeSymbolicPath pkg.includeDirs
        specdir = let d : _ = pkg.importDirs in makeSymbolicPath @Pkg @(Dir Source) (d </> "binding-specs")
        (spec', proto) = case packageName pkg of
            "haskell-wayland-core" -> (Core.protocolSpec, Core.protocol)
            _ -> error $ "no imports: " ++ show (packageName pkg)
        spec = setBindgenDir specdir spec'
    liftIO $ print (PI.installedUnitId pkg, incdirs, specdir)
    modifyOptions $ interfaceProtocols <>~ [(map (.name) proto.interfaces, spec)]
    modifyOptions $ optionCustom <>~ Endo (bindGens . each . bcBindGen . includeDirs <>~ incdirs)

  -- Settings for specific protocols
  modifyOptions $ optionCustom <>~ onlyIfName "linux-dmabuf"        (coreOnly .~ False)
  modifyOptions $ optionCustom <>~ onlyIfName "single-pixel-buffer" (coreOnly .~ False)
  modifyOptions $ optionCustom <>~ onlyIfName "input-method"        (coreOnly .~ False)

  -- Discovered wayland-protocols via pkg-config
  Just (AbsolutePath dir) <- withLBC $ \lbc -> liftIO $ getPkgConfDataDir v lbc.withPrograms "wayland-protocols"
  registerProtocolsFileGlob v True Nothing dir "**/*.xml" id

  -- Local files
  let wd = flagToMaybe setup.packageBuildDescr.configFlags.configCommonFlags.setupWorkingDir
  registerProtocolsFileGlob v False wd (makeSymbolicPath "protocol") "*.xml" $ \x ->
    case () of
    _ | "river-" `L.isPrefixOf` x.fullName ->
            x & stability .~ Stable
              & category .~ "river"
              & baseName %~ fromMaybe x.baseName . L.stripPrefix "river-"
    _ | "wlr-" `L.isPrefixOf` x.fullName ->
            x & category .~ "wlr"
              & baseName %~ fromMaybe x.baseName . L.stripPrefix "wlr-"
      | otherwise -> x
