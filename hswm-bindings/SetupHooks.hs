{-# LANGUAGE DisambiguateRecordFields #-}
{-# LANGUAGE OverloadedLists          #-}
{-# LANGUAGE OverloadedStrings        #-}
{-# LANGUAGE OverloadedRecordDot #-}

{-# OPTIONS_GHC -Wall #-}
{-# OPTIONS_GHC -Wunused-packages #-}
{-# OPTIONS_GHC -Wno-ambiguous-fields #-}

module SetupHooks (setupHooks) where

import           Distribution.HsBindgen.Hooks
import qualified Distribution.HsBindgen.Lens as I
import           Distribution.HsBindgen.Utils
import           Distribution.Simple.Utils
import           Distribution.Wayland.Hooks
import qualified Distribution.Wayland.Hooks as I

import           Distribution.CabalSpecVersion
import           Distribution.Simple.Flag
import           Distribution.Simple.Glob
import           Distribution.Simple.SetupHooks
import           Distribution.Types.LocalBuildConfig
import           Distribution.Verbosity

import           Distribution.Utils.Path

import           Control.Monad
import qualified Data.List as L
import           Data.String
import           Lens.Micro
import           Lens.Micro.GHC ()

setupHooks :: SetupHooks
setupHooks = waylandProtocolHooks (waylandOptions, config)

waylandOptions :: ProtocolScannerOptions
waylandOptions = def
    & optionProtocolDirs <>~ [ makeSymbolicPath "protocol" ]
    & optionCustom <>~ Endo f
  where
    f spec = spec
      & qualifiedImports <>~ [ ("WL.Util", "WL.Util") ]
      & I.bindGens . ix ClientBindings . I.extBindingSpecs <>~ [ BModule $ wlutil ^. I.moduleName . to fromFlag ]
      & I.bindGens . ix ServerBindings . I.extBindingSpecs <>~ [ BModule $ wlutil ^. I.moduleName . to fromFlag ]

config :: DynamicSetup ()
config = do

  -- depends on core
  let makeProtocolWayland spec deps = makeProtocol $ spec & depends (core.name : deps)

  let makeProtoWL spec = makeProtocolWayland $ spec
          & I.category .~ "wayland"
          & I.fullName %~ ("wayland-" <>)
          & I.baseName %~ (\bs -> spec ^. I.category <> (if bs == "" then "" else "-" <> bs))

      optionalProtoWL dir path deps = optionalProtocol $ parseWaylandProtosPath path
          & _2 %~ depends (core.name : deps)
          & _2 . I.protocolDirs <>~ dir

  let makeProtoRiver spec = makeProtocolWayland $ spec
          & I.category  .~ "river"
          & I.stability .~ Stable

  let ignored = [ "ext-image-copy-capture"
                , "ext-workspace"
                , "presentation-time"
                , "tablet"
                , "cursor-shape"
                , "single-pixel-buffer"
                , "linux-dmabuf"
                , "input-method"
                ] :: [String]

  withLBC $ \lbc -> do
    let v = verbosityFromFlags verbose
    Just (AbsolutePath dir) <- liftIO $ getPkgConfDataDir v lbc.withPrograms "wayland-protocols"
    liftIO $ notice v $ "Found dir: " ++ show dir
    let Right glob = parseFileGlob CabalSpecV3_14  "**/*.xml"
    matched <- liftIO $ runDirFileGlob v Nothing (getSymbolicPath dir) glob
    let f d (GlobMatch x) = do
              unless (any (`L.isInfixOf` x) ignored) $ do
                res <- optionalProtoWL [d] x []
                liftIO . noticeNoWrap v $ "Optional: " ++ show x ++ ": " ++ show res
    mapM_ (f dir) matched

  -- wlr
  _ <- makeProtocolWayland "wlr-layer-shell-unstable-v1.xml" [ "xdg-shell" ]
  _ <- makeProtocolWayland "wlr-output-management-unstable-v1.xml" [ ]
  _ <- makeProtocolWayland "wlr-output-power-management-unstable-v1.xml" []
  _ <- makeProtocolWayland "wlr-input-method-unstable-v2.xml" [ "text-input" ]

  -- river
  riverWM <- makeProtoRiver "river-window-management-v1.xml" []
  riverIM <- makeProtoRiver "river-input-management-v1.xml" []
  _ <- makeProtoRiver "river-layer-shell-v1.xml" [ riverWM.name ]
  _ <- makeProtoRiver "river-libinput-config-v1.xml" [ riverIM.name ]
  _ <- makeProtoRiver "river-xkb-bindings-v1.xml" [ riverWM.name ]
  _ <- makeProtoRiver "river-xkb-config-v1.xml" [ riverIM.name ]

  return ()
