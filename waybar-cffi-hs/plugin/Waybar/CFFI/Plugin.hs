{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_GHC -ddump-splices #-}
{-# OPTIONS_GHC -Wno-missing-signatures #-}

-- |
-- Module      : Waybar.CFFI.Plugin
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module Waybar.CFFI.Plugin () where

import           Foreign.C.ConstPtr (ConstPtr(..))

import qualified Waybar.CFFI.Plugin.Base as Base
import qualified Waybar.CFFI.Plugin.HSWM as HSWM (MyMod)

-- plugin = Base.mkPlugin @HSWM.MyMod

stref = Base.mkStateRef @(Base.GlobalState HSWM.MyMod)
{-# NOINLINE stref #-}

plugin_runtime_init    = Base._plugin_runtime_init @HSWM.MyMod stref
plugin_runtime_destroy = Base._plugin_runtime_destroy @HSWM.MyMod stref
wbcffi_init a b c      = Base._wbcffi_init @HSWM.MyMod stref a b c
wbcffi_deinit a        = Base._wbcffi_deinit @HSWM.MyMod stref a
wbcffi_update a        = Base._wbcffi_update @HSWM.MyMod stref a
wbcffi_doaction a b    = Base._wbcffi_doaction @HSWM.MyMod stref a b
wbcffi_refresh a b     = Base._wbcffi_refresh  @HSWM.MyMod stref a b

Base.makeForeignExports ''Base.WaybarPluginFFI
