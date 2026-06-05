{-# LANGUAGE DisambiguateRecordFields #-}
{-# LANGUAGE OverloadedLists          #-}
{-# LANGUAGE OverloadedStrings        #-}

{-# OPTIONS_GHC -Wall #-}
{-# OPTIONS_GHC -Wunused-packages #-}
{-# OPTIONS_GHC -Wno-ambiguous-fields #-}

module SetupHooks (setupHooks) where

import           Distribution.HsBindgen.Hooks
import qualified Distribution.HsBindgen.Lens as I
import qualified Distribution.Wayland.Hooks as I
import           Distribution.Wayland.Hooks

import Distribution.Simple.Flag
import           Distribution.Simple.SetupHooks

import           Distribution.Utils.Path

import           Lens.Micro
import           Lens.Micro.GHC ()

-- HOOKS

setupHooks :: SetupHooks
setupHooks = hsBindgenSetupHooks config

-- CONFIGS

config :: HsBindGenSetup ProtocolSpec
config = def
  & I.modulesSimple <>~ [ wlutil ]
  & I.sources <>~ protocolBindSpecs

waylandOptions :: ProtocolScannerOptions
waylandOptions = def
    & optionProtocolDirs <>~ [ makeSymbolicPath "protocol" ]
    & optionCustom <>~ Endo f
  where
    f spec = spec
      & I.bindGens . ix ClientBindings . I.extBindingSpecs <>~ [ BModule $ wlutil ^. I.moduleName . to fromFlag ]
      & I.bindGens . ix ServerBindings . I.extBindingSpecs <>~ [ BModule $ wlutil ^. I.moduleName . to fromFlag ]

protocolBindSpecs :: [ProtocolSpec]
protocolBindSpecs = protocols waylandOptions $ do

  core <- makeProtocol waylandCore

  -- depends on core
  let makeProtocolWayland spec deps = makeProtocol $ spec & depends (core : deps)

  let makeProtoWL spec = makeProtocolWayland $ spec
          & I.category .~ "wayland"
          & I.fullName %~ ("wayland-" <>)
          & I.baseName %~ (\bs -> spec ^. I.category <> (if bs == "" then "" else "-" <> bs))

  let makeProtoRiver spec = makeProtocolWayland $ spec
          & I.category  .~ "river"
          & I.stability .~ Stable

  -- wl
  xdgShell <- makeProtoWL "stable/xdg-shell/xdg-shell.xml" []
  _ <- makeProtoWL "stable/viewporter/viewporter.xml" []
  _ <- makeProtoWL "staging/fractional-scale/fractional-scale-v1.xml" []
  _ <- makeProtoWL "unstable/xdg-output/xdg-output-unstable-v1.xml" []
  textInputUnstable <- makeProtoWL "unstable/text-input/text-input-unstable-v3.xml" []
  _ <- makeProtoWL "staging/ext-idle-notify/ext-idle-notify-v1.xml" []
  _ <- makeProtoWL "staging/ext-session-lock/ext-session-lock-v1.xml" []
  _ <- makeProtoWL "staging/ext-foreign-toplevel-list/ext-foreign-toplevel-list-v1.xml" []

  -- wlr
  _ <- makeProtocolWayland "wlr-layer-shell-unstable-v1.xml" [ xdgShell ]
  _ <- makeProtocolWayland "wlr-output-management-unstable-v1.xml" [ ]
  _ <- makeProtocolWayland "wlr-output-power-management-unstable-v1.xml" []
  _ <- makeProtocolWayland "wlr-input-method-unstable-v2.xml" [ textInputUnstable ]

  -- river
  riverWM <- makeProtoRiver "river-window-management-v1.xml" []
  riverIM <- makeProtoRiver "river-input-management-v1.xml" []
  _ <- makeProtoRiver "river-layer-shell-v1.xml" [ riverWM ]
  _ <- makeProtoRiver "river-libinput-config-v1.xml" [ riverIM ]
  _ <- makeProtoRiver "river-xkb-bindings-v1.xml" [ riverWM ]
  _ <- makeProtoRiver "river-xkb-config-v1.xml" [ riverIM ]
  return ()

wlutil :: HsBindGen
wlutil = mkBindgen "WL.Util.Generated"
  & I.headers <>~ [ makeHeader "wayland-util.h" ]
  & I.genGlobal .~ pure False
  & I.selectFromMainHeaderDirs .~ pure True
  & I.excludeByDeclName <>~ "wl_log_func_t"

waylandCore :: ProtocolConfig
waylandCore = "core/wayland.xml"
  & I.category .~ "core"
  & I.stability .~ Stable
  & I.bindGens . ix ClientBindings %~ client
  & I.bindGens . ix ServerBindings %~ server
  & disabled <>~ [ WrapClient ]
    where
  client c = c
    & bcMainHeaders <>~ [ makeHeader "wayland-client-core.h" ]
    & I.excludeByDeclName <>~
        [ "wl_log_set_handler_client" -- variadic
        , "wl_proxy_marshal" -- variadic
        , "wl_proxy_marshal_flags" -- variadic
        , "wl_proxy_marshal_constructor" -- variadic
        , "wl_proxy_marshal_constructor_versioned" -- variadic
        ]
  server s = s
    & bcMainHeaders <>~ [ makeHeader "wayland-server-core.h" ]
    & I.extBindingSpecs <>~ [ makeBindingSpec "sys-types" ]
    & I.excludeByDeclName <>~
        [ "wl_log_func_t"
        , "wl_client_post_implementation_error" -- variadic
        , "wl_log_set_handler_server" -- variadic
        , "wl_resource_post_error" -- variadic
        , "wl_resource_post_error_vargs"
        , "wl_resource_queue_event"
        , "wl_resource_post_event"
        ]
