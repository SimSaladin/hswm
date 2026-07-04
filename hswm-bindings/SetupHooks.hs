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

import           Distribution.CabalSpecVersion
import           Distribution.Simple.Configure
import           Distribution.Simple.Utils
import           Distribution.Simple.Glob
import           Distribution.Simple.PackageIndex hiding (fromList)
import           Distribution.Simple.SetupHooks (SetupHooks)
import qualified Distribution.Types.InstalledPackageInfo as PI
import           Distribution.Types.LocalBuildConfig
import           Distribution.Types.PackageName
import           Distribution.Utils.Path
import           Distribution.Verbosity

import           Control.Monad
import GHC.Exts (fromList)

import qualified WL.Core.Internal as Core

setupHooks :: SetupHooks
setupHooks = waylandProtocolHooks config

config :: DynamicSetup ()
config = do

  let v = verbosityFromFlags verbose

  setup <- ask
  index <- liftIO $ getInstalledPackages v setup.packageBD.compiler Nothing setup.packageBD.withPackageDB setup.localBC.withPrograms

  let (_, pkg : _) : _ = lookupPackageName index $ mkPackageName "haskell-wayland-core"
      coreBSpecsDir   = let d : _ = pkg.importDirs in makeSymbolicPath @Pkg @(Dir Source) $ d ++ "/binding-specs"
      coreIncludeDirs = map makeSymbolicPath pkg.includeDirs
      coreDeps        = [(x.name, Core.protocolSpec & setBindgenDir coreBSpecsDir) | x <- Core.protocol.interfaces]

  -- ext: "utils"
  addExternal "utils" $ ProtocolRef
    (fromList [(x, [makeLocation $ makeSymbolicPath @Pkg @File "wayland-util.h"]) | x <- bindgenComponents ])
    (fromList [(x, [BModule "WL.Util.Generated" $ Just coreBSpecsDir]) | x <- bindgenComponents ])

  modifyOptions $ interfaceProtocols <>~ coreDeps
  modifyOptions $ optionCustom
    <>~ Endo (qualifiedImports <>~ [ ("WL.Util", "WL.Util") ])
    <>  Endo (dependsOn <>~ take 1 coreDeps)
    <>  Endo (bindGens . each . bcDepends %~ ("utils" :))
    <>  Endo (bindGens . each . bcBindGen . includeDirs <>~ coreIncludeDirs)
    <>  Endo (bindGens . ix ServerBindings . bcBindGen . defineMacros . at "WL_HIDE_DEPRECATED" ?~ "1")
    <> onlyIfName "linux-dmabuf"        (coreOnly .~ False)
    <> onlyIfName "single-pixel-buffer" (coreOnly .~ False)
    <> onlyIfName "input-method"        (coreOnly .~ False)

  -- wayland-protocols via pkg-config
  Just (AbsolutePath dir) <- withLBC $ \lbc -> liftIO $ getPkgConfDataDir v lbc.withPrograms "wayland-protocols"
  matched <- liftIO $ matchDirFileGlob v CabalSpecV3_14 (Just dir) (makeSymbolicPath "**/*.xml")
  forM_ matched $ \x -> do
    res <- optionalProtocol $ parseWaylandProtosPath (getSymbolicPath x) & _2 . I.protocolDirs <>~ [dir]
    liftIO . debugNoWrap v $ "Optional proto: " ++ show x ++ ": " ++ show res

  let makeProtoWlr   spec = makeProtocol $ spec & protocolDirs <>~ [makeSymbolicPath "protocol"]
  let makeProtoRiver spec = makeProtocol $ spec & protocolDirs <>~ [makeSymbolicPath "protocol"] & stability .~ Stable & category .~ "river"

  void $ makeProtoWlr "wlr-layer-shell-unstable-v1.xml"
  void $ makeProtoWlr "wlr-output-management-unstable-v1.xml"
  void $ makeProtoWlr "wlr-output-power-management-unstable-v1.xml"
  void $ makeProtoWlr "wlr-input-method-unstable-v2.xml"
  void $ makeProtoRiver "river-window-management-v1.xml"
  void $ makeProtoRiver "river-input-management-v1.xml"
  void $ makeProtoRiver "river-layer-shell-v1.xml"
  void $ makeProtoRiver "river-libinput-config-v1.xml"
  void $ makeProtoRiver "river-xkb-bindings-v1.xml"
  void $ makeProtoRiver "river-xkb-config-v1.xml"
