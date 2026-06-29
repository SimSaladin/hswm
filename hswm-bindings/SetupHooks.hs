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
import           Distribution.HsBindgen.Utils
import           Distribution.Wayland.Hooks
import           Distribution.Wayland.ProtocolXML

import           Distribution.CabalSpecVersion
import           Distribution.Simple.Configure
import           Distribution.Simple.Utils
import           Distribution.Simple.Glob
import           Distribution.Simple.PackageIndex hiding (fromList)
import           Distribution.Simple.SetupHooks (SetupHooks, Location(..))
import qualified Distribution.Types.InstalledPackageInfo as PI
import           Distribution.Types.LocalBuildConfig
import           Distribution.Types.PackageName
import           Distribution.Utils.Path
import           Distribution.Verbosity

import           Control.Monad
import qualified Data.List as L
import           Lens.Micro
import           Lens.Micro.GHC ()
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
      bspecDir = let d : _ = pkg.importDirs in makeSymbolicPath @Pkg @(Dir Source) $ d ++ "/binding-specs"
      incDirs  = map makeSymbolicPath pkg.includeDirs

  -- core
  let coreProtocol = Core.protocol & setBindgenDir bspecDir
      coreDeps     = [(x.name, coreProtocol) | x <- Core.proto.interfaces]
      coreDep      = take 1 coreDeps
  modifyOptions $ interfaceProtocols <>~ coreDeps
  modifyOptions $ optionCustom <>~
      (  Endo (I.bindGens . each . I.bcCustom <>~ Endo (I.includeDirs <>~ incDirs))
      <> Endo (I.dependsOn <>~ coreDep)
      )

  -- utils
  addExternal "utils" $ ProtocolRef
    (fromList [(x, [makeLocation $ makeSymbolicPath @Pkg @File "wayland-util.h"]) | x <- [ EnumBindings, ClientBindings, ServerBindings ] ])
    (fromList [(x, [BModule "WL.Util.Generated" $ Just bspecDir]) | x <- [ EnumBindings, ClientBindings, ServerBindings ] ])
  modifyOptions $ optionCustom <>~
    (  Endo (qualifiedImports <>~ [ ("WL.Util", "WL.Util") ])
    <> Endo (bindGens . each . bcDepends %~ ("utils" :))
    <> onlyIfName "linux-dmabuf"        (I.coreOnly .~ False)
    <> onlyIfName "single-pixel-buffer" (I.coreOnly .~ False)
    <> onlyIfName "input-method"        (I.coreOnly .~ False)
    )

  withLBC $ \lbc -> do
    Just (AbsolutePath dir) <- liftIO $ getPkgConfDataDir v lbc.withPrograms "wayland-protocols"
    matched <- liftIO $ matchDirFileGlob v CabalSpecV3_14 (Just dir) (makeSymbolicPath "**/*.xml")
    forM_ matched $ \x -> do
      res <- optionalProtocol $ parseWaylandProtosPath (getSymbolicPath x)
          & _2 . I.protocolDirs <>~ [dir]
      liftIO . debugNoWrap v $ "Optional proto: " ++ show x ++ ": " ++ show res

  -- Wlr
  let makeProtocolWayland spec = makeProtocol $ spec & I.protocolDirs <>~ [makeSymbolicPath "protocol"]
  void $ makeProtocolWayland "wlr-layer-shell-unstable-v1.xml"
  void $ makeProtocolWayland "wlr-output-management-unstable-v1.xml"
  void $ makeProtocolWayland "wlr-output-power-management-unstable-v1.xml"
  void $ makeProtocolWayland "wlr-input-method-unstable-v2.xml"

  -- River
  let makeProtoRiver spec = makeProtocol $ spec
          & I.category .~ "river"
          & I.stability .~ Stable
          & I.protocolDirs <>~ [makeSymbolicPath "protocol"]
  void $ makeProtoRiver "river-window-management-v1.xml"
  void $ makeProtoRiver "river-input-management-v1.xml"
  void $ makeProtoRiver "river-layer-shell-v1.xml"
  void $ makeProtoRiver "river-libinput-config-v1.xml"
  void $ makeProtoRiver "river-xkb-bindings-v1.xml"
  void $ makeProtoRiver "river-xkb-config-v1.xml"
