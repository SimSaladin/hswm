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
import           Distribution.Wayland.Hooks
import           Distribution.Wayland.ProtocolXML

import           Distribution.Package
import           Distribution.Simple.Configure
import           Distribution.Simple.Flag
import           Distribution.Simple.PackageIndex hiding (fromList)
import           Distribution.Simple.Setup (setupWorkingDir)
import           Distribution.Simple.SetupHooks (PostConfPackageInputs(..), SetupHooks,
                                                 configCommonFlags, configDependencies)
import           Distribution.Simple.Utils
import           Distribution.Types.GivenComponent
import qualified Distribution.Types.InstalledPackageInfo as PI
import           Distribution.Types.LocalBuildConfig
import           Distribution.Utils.Path
import           Distribution.Verbosity

import           Control.Monad
import qualified Data.List as L
import           Data.Maybe (fromMaybe)

import qualified WL.Core.Internal as Core

setupHooks :: SetupHooks
setupHooks = waylandProtocolHooks config

-- Selected standard protocols
isEnabled :: ProtocolId -> Bool
isEnabled pro = pro.name `elem`
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

  modifyOptions $ optionCustom <>~
    Endo (bindGens . ix ServerBindings . bcBindGen . defineMacros . at "WL_HIDE_DEPRECATED" ?~ "1") <> -- Hide deprecated declarations in wayland server bindings
    Endo (qualifiedImports <>~ [ ("WL.Util", "WL.Util") ]) <>            -- Configure dependency on wayland-util.h
    Endo (dependsOn <>~ ["wl_display"])                                  -- So that the core bindings are loaded first always...

  -- Inject known interface info as needed include dirs from cabal dependencies
  getDependencies v [ "haskell-wayland-core" ] $ \pkg -> do
    let specdir =
          let d : _ = pkg.importDirs
           in makeSymbolicPath @Pkg @(Dir Source) (d </> "binding-specs")
    -- Inject protocol dependency info
    case packageName pkg of
      "haskell-wayland-core" -> do
          let ifaceNames = map (.name) Core.protocol.interfaces -- XXX from haskell import
          let spec       = setBindgenDir specdir Core.protocolSpec -- XXX from haskell import
          liftIO $ print (PI.installedUnitId pkg, specdir)
          modifyOptions $ interfaceProtocols <>~ [(ifaceNames, spec)]
      _ -> error $ "unhandled dependency: " ++ show (packageName pkg)

  -- Discovered wayland-protocols via pkg-config
  Just (AbsolutePath dir) <- withLBC $ \lbc -> liftIO $ getPkgConfDataDir v lbc.withPrograms "wayland-protocols"
  registerProtocolsFileGlob v True Nothing dir "**/*.xml" $ \key val -> do
    guard $ isEnabled key
    return $ val & case key.name of
        -- Settings for specific protocols
        "linux-dmabuf"        -> coreOnly .~ False
        "single-pixel-buffer" -> coreOnly .~ False
        "input-method"        -> coreOnly .~ False
        _ -> id

  -- Local files
  setup <- ask
  let wd = flagToMaybe setup.packageBuildDescr.configFlags.configCommonFlags.setupWorkingDir
  registerProtocolsFileGlob v False wd (makeSymbolicPath "protocol") "*.xml" $ \_key val -> Just $ case () of
      _ | "river-" `L.isPrefixOf` val.fullName -> val & category .~ "river" & baseName %~ fromMaybe val.baseName . L.stripPrefix "river-" & stability .~ Stable
      _ | "wlr-"   `L.isPrefixOf` val.fullName -> val & category .~ "wlr"   & baseName %~ fromMaybe val.baseName . L.stripPrefix "wlr-"
      _ -> val

getDependencies :: Verbosity -> [PackageName] -> (PI.InstalledPackageInfo -> DynamicSetup ()) -> DynamicSetup ()
getDependencies v required f = do
  setup <- ask
  index <- liftIO $ getInstalledPackages v setup.packageBuildDescr.compiler Nothing setup.packageBuildDescr.withPackageDB setup.localBuildConfig.withPrograms
  let index'   = either id (error "index not found") $ dependencyClosure index $ map (newSimpleUnitId . givenComponentId) setup.packageBuildDescr.configFlags.configDependencies
      result   = filter selector $ reverseTopologicalOrder index'
      notFound = [ k | k <- required, notElem k $ map packageName result ]
  when (notFound /= []) $
    liftIO $ die' v $ "could not find requested packages: " ++ show notFound
  forM_ result $ \pkg -> do
    -- Inject include dirs
    let incdirs = map makeSymbolicPath pkg.includeDirs
    modifyOptions $ optionCustom <>~ Endo (bindGens . each . bcBindGen . includeDirs <>~ incdirs)
    liftIO $ print (PI.installedUnitId pkg, incdirs)
    -- other
    f pkg
  where
    selector pkg = packageName pkg `elem` required
