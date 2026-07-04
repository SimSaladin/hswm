{-# LANGUAGE DisambiguateRecordFields #-}
{-# LANGUAGE OverloadedLists          #-}
{-# LANGUAGE OverloadedStrings        #-}
{-# OPTIONS_GHC -Wall #-}
{-# OPTIONS_GHC -Wunused-packages #-}
{-# OPTIONS_GHC -Wno-ambiguous-fields #-}

module SetupHooks (setupHooks) where

import           Distribution.HsBindgen.Hooks
import           Distribution.Wayland.Hooks

import           Distribution.Simple.Flag
import           Distribution.Simple.SetupHooks (SetupHooks)
import           Distribution.Utils.Path

import           Control.Monad
import           Lens.Micro
import           Lens.Micro.GHC ()

setupHooks :: SetupHooks
setupHooks = waylandProtocolHooks $ do

  addExtraBindGen wlUtil

  void $ makeProtocol $ "wayland.xml"
      & category .~ "core"
      & stability .~ Stable
      & disabled <>~ [ WrapClient, WrapServer ]
      & qualifiedImports <>~ [ ("WL.Util", "WL.Util") ]
      & bindGens . ix ClientBindings %~ baseClient
      & bindGens . ix ServerBindings %~ baseServer

  modifyOptions $ optionProtocolDirs <>~ [ makeSymbolicPath "protocols" ]

wlUtil :: HsBindGen
wlUtil = newHsBindGen "WL.Util.Generated" [ makeHeader "wayland-util.h" ]
  & genGlobal .~ pure False
  & selectFromMainHeaderDirs .~ pure True
  & excludeDecls <>~ "wl_log_func_t"

baseClient :: BindConfig -> BindConfig
baseClient c = c
  & bcBindGen . headers <>~ [ makeHeader "wayland-client-core.h" ]
  & bcBindGen . extBindingSpecs <>~ [ BModule (wlUtil ^. moduleName . to fromFlag) Nothing ]
  & bcBindGen . excludeDecls <>~
      [ "wl_log_set_handler_client" -- variadic
      , "wl_proxy_marshal" -- variadic
      , "wl_proxy_marshal_flags" -- variadic
      , "wl_proxy_marshal_constructor" -- variadic
      , "wl_proxy_marshal_constructor_versioned" -- variadic
      ]

baseServer :: BindConfig -> BindConfig
baseServer s = s
  & bcBindGen . headers <>~ [ makeHeader "wayland-server-core.h" ]
  & bcBindGen . extBindingSpecs <>~ [ makeBindingSpec "sys-types" ]
  & bcBindGen . extBindingSpecs <>~ [ BModule (wlUtil ^. moduleName . to fromFlag) Nothing ]
  & bcBindGen . excludeDecls <>~
      [ "wl_log_func_t"
      , "wl_client_post_implementation_error" -- variadic
      , "wl_log_set_handler_server" -- variadic
      , "wl_resource_post_error" -- variadic
      , "wl_resource_post_error_vargs"
      , "wl_resource_queue_event"
      , "wl_resource_post_event"
      ]
