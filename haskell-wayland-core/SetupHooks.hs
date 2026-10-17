{-# LANGUAGE DisambiguateRecordFields #-}
{-# LANGUAGE OverloadedLists          #-}
{-# LANGUAGE OverloadedStrings        #-}
{-# OPTIONS_GHC -Wall -Wunused-packages -Wno-ambiguous-fields #-}

module SetupHooks (setupHooks) where

import           Distribution.HsBindgen.Hooks
import           Distribution.Wayland.Hooks

import           Distribution.Simple.SetupHooks (SetupHooks)
import           Distribution.Utils.Path
import           Control.Monad

setupHooks :: SetupHooks
setupHooks = waylandProtocolHooks $ do
  -- bindings to wayland-util.h
  registerBindGen $ newHsBindGen "WL.Util.Generated" [ makeHeader "wayland-util.h" ]
    & genGlobal .~ pure False
    & selectFromMainHeaderDirs .~ pure True
    & excludeDecls <>~ "wl_log_func_t"

  -- the wayland.xml protocol
  void $ makeProtocol $ "wayland.xml"
      & protocolDirs <>~ [ makeSymbolicPath "protocols" ]
      & category .~ "core"
      & stability .~ Stable
      & disabled <>~ [ WrapClient, WrapServer ]
      & bindGens . each . bcBindGen . dependsOn <>~ [ "WL.Util.Generated" ]
      & bindGens . ix ClientBindings %~ baseClient
      & bindGens . ix ServerBindings %~ baseServer

baseClient :: BindConfig -> BindConfig
baseClient c = c
  & bcBindGen . headers <>~ [ makeHeader "wayland-client-core.h" ]
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
  & bcBindGen . excludeDecls <>~
      [ "wl_log_func_t"
      , "wl_client_post_implementation_error" -- variadic
      , "wl_log_set_handler_server" -- variadic
      , "wl_resource_post_error" -- variadic
      , "wl_resource_post_error_vargs"
      , "wl_resource_queue_event"
      , "wl_resource_post_event"
      ]
