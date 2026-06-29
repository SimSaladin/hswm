{-# LANGUAGE DisambiguateRecordFields #-}
{-# LANGUAGE OverloadedLists          #-}
{-# LANGUAGE OverloadedStrings        #-}

{-# OPTIONS_GHC -Wall #-}
{-# OPTIONS_GHC -Wunused-packages #-}
{-# OPTIONS_GHC -Wno-ambiguous-fields #-}

module SetupHooks (setupHooks) where

import           Distribution.HsBindgen.Hooks
import qualified Distribution.HsBindgen.Types as I
import           Distribution.Wayland.Hooks

import           Distribution.Simple.Flag
import           Distribution.Simple.SetupHooks
import           Distribution.Utils.Path

import           Control.Monad
import           Lens.Micro
import           Lens.Micro.GHC ()

setupHooks :: SetupHooks
setupHooks = waylandProtocolHooks config

config :: DynamicSetup ()
config = do
  modifyOptions $ optionProtocolDirs <>~ [ makeSymbolicPath "." ]
  addExtraBindGen wlutil

  void $ makeProtocol $ "wayland.xml"
      & I.category .~ "core"
      & I.stability .~ Stable
      & I.bindGens . ix ClientBindings %~ client
      & I.bindGens . ix ServerBindings %~ server
      & disabled <>~ [ WrapClient, WrapServer ]
      & qualifiedImports <>~ [ ("WL.Util", "WL.Util") ]
  where
    client c = c
      & bcMainHeaders <>~ [ makeHeader "wayland-client-core.h" ]
      & I.extBindingSpecs <>~ [ BModule (wlutil ^. I.moduleName . to fromFlag) Nothing ]
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
      & I.extBindingSpecs <>~ [ BModule (wlutil ^. I.moduleName . to fromFlag) Nothing ]
      & I.excludeByDeclName <>~
          [ "wl_log_func_t"
          , "wl_client_post_implementation_error" -- variadic
          , "wl_log_set_handler_server" -- variadic
          , "wl_resource_post_error" -- variadic
          , "wl_resource_post_error_vargs"
          , "wl_resource_queue_event"
          , "wl_resource_post_event"
          ]

wlutil :: HsBindGen
wlutil = mkBindgen "WL.Util.Generated"
  & I.headers <>~ [ makeHeader "wayland-util.h" ]
  & I.genGlobal .~ pure False
  & I.selectFromMainHeaderDirs .~ pure True
  & I.excludeByDeclName <>~ "wl_log_func_t"
