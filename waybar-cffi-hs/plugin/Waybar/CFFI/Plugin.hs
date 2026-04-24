{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE ForeignFunctionInterface #-}

-- |
-- Module      : Waybar.CFFI.Plugin
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module Waybar.CFFI.Plugin where

import Data.Void
import Waybar.CFFI.Plugin.Base qualified as Base
import Waybar.CFFI.Plugin.Base (InitInfo, ConfigEntry, CSize, CString)
import Waybar.CFFI.Plugin.HSWM qualified as HSWM
import Data.Proxy
import Foreign

Base.WaybarPluginFFI{..} = Base.mkPlugin (Proxy @HSWM.MyMod)

foreign export ccall "plugin_runtime_init" _globalInit :: IO ()

foreign export ccall "plugin_runtime_destroy" _globalDeinit :: IO ()

foreign export ccall "wbcffi_init" _init :: Ptr InitInfo -> Ptr ConfigEntry -> CSize -> IO (Ptr Void)

foreign export ccall "wbcffi_deinit" _deinit :: Ptr Void -> IO ()

foreign export ccall "wbcffi_update" _update :: Ptr Void -> IO ()

foreign export ccall "wbcffi_refresh" _refresh :: Ptr Void -> Int -> IO ()

foreign export ccall "wbcffi_doaction" _doaction :: Ptr Void -> CString -> IO ()

