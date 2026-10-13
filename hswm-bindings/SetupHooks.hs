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

-- Selected standard protocols
isEnabled :: ProtocolId -> Bool
isEnabled ProtocolId{name} = name `elem`
  ([ "viewporter"
  , "xdg-shell"
  , "ext-idle-notify"
  , "ext-session-lock"
  , "input-method"
  , "xdg-output"
  , "text-input"
  , "ext-foreign-toplevel-list"
  , "fractional-scale"
  , "linux-dmabuf"
  , "presentation-time"
  ] :: [String])

config :: DynamicSetup ()
config = do

  let v = verbosityFromFlags verbose

  -- Hide deprecated declarations in wayland server bindings
  modifyOptions $ optionCustom <>~ Endo (bindGens . ix ServerBindings . bcBindGen . defineMacros . at "WL_HIDE_DEPRECATED" ?~ "1")

  -- Configure dependency on wayland-util.h
  modifyOptions $ optionCustom <>~ Endo (qualifiedImports <>~ [ ("WL.Util", "WL.Util") ])

  -- So that the core bindings are loaded first always...
  modifyOptions $ optionCustom <>~ Endo (dependsOn <>~ ["wl_display"])

  -- Inject known interface info as needed include dirs from cabal dependencies
  deps <- getDependencies v
  forM_ deps $ \pkg -> case packageName pkg of
    "haskell-wayland-core" -> do
        let incdirs = map makeSymbolicPath pkg.includeDirs
        let specdir = let d : _ = pkg.importDirs in makeSymbolicPath @Pkg @(Dir Source) (d </> "binding-specs")
        let proto   = Core.protocol -- XXX from haskell import
        let spec    = setBindgenDir specdir Core.protocolSpec -- XXX from haskell import
        liftIO $ print (PI.installedUnitId pkg, incdirs, specdir)
        -- Inject include dirs + protocol dependency info
        modifyOptions $ optionCustom <>~ Endo (bindGens . each . bcBindGen . includeDirs <>~ incdirs)
        modifyOptions $ interfaceProtocols <>~ [(map (.name) proto.interfaces, spec)]
    _ -> error $ "no imports: " ++ show (packageName pkg)

  -- Settings for specific protocols
  modifyOptions $ optionCustom <>~ onlyIfName "linux-dmabuf"        (coreOnly .~ False)
  modifyOptions $ optionCustom <>~ onlyIfName "single-pixel-buffer" (coreOnly .~ False)
  modifyOptions $ optionCustom <>~ onlyIfName "input-method"        (coreOnly .~ False)

  -- Discovered wayland-protocols via pkg-config
  Just (AbsolutePath dir) <- withLBC $ \lbc -> liftIO $ getPkgConfDataDir v lbc.withPrograms "wayland-protocols"
  registerProtocolsFileGlob v True Nothing dir "**/*.xml" $ \k v -> do
    guard $ isEnabled k
    return v

  setup <- ask

  -- Local files
  let wd = flagToMaybe setup.packageBuildDescr.configFlags.configCommonFlags.setupWorkingDir
  registerProtocolsFileGlob v False wd (makeSymbolicPath "protocol") "*.xml" $ \key val ->
    Just $ case () of
      _ | "river-" `L.isPrefixOf` val.fullName -> val
                & stability .~ Stable
                & category .~ "river"
                & baseName %~ fromMaybe val.baseName . L.stripPrefix "river-"
      _ | "wlr-" `L.isPrefixOf` val.fullName -> val
                & category .~ "wlr"
                & baseName %~ fromMaybe val.baseName . L.stripPrefix "wlr-"
        | otherwise -> val

getDependencies v = do
  setup <- ask
  index <- liftIO $ getInstalledPackages v setup.packageBuildDescr.compiler Nothing setup.packageBuildDescr.withPackageDB setup.localBuildConfig.withPrograms
  let Left index' = dependencyClosure index $ map (newSimpleUnitId . givenComponentId) setup.packageBuildDescr.configFlags.configDependencies
  return $ filter selector $ reverseTopologicalOrder index'
  where
    selector pkg = packageName pkg == "haskell-wayland-core"
