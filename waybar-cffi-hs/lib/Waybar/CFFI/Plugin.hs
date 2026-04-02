{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE ForeignFunctionInterface #-}

-- |
-- Module      : Waybar.CFFI.Plugin
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
module Waybar.CFFI.Plugin where

import Control.Exception qualified as E
import Control.Monad
import Data.Void
import GI.Gtk as Gtk
import GI.Gtk.Objects.Container as Container
import Waybar.CFFI.Plugin.Base
import Waybar.CFFI.Plugin.HSWM qualified as HSWM

------------------------------------------------------------------------------

-- * Library-wide constructor/destructor

foreign export ccall "plugin_runtime_init" pluginRuntimeInit :: IO ()

foreign export ccall "plugin_runtime_destroy" pluginRuntimeDestroy :: IO ()

pluginRuntimeInit, pluginRuntimeDestroy :: IO ()
pluginRuntimeInit = pure ()
pluginRuntimeDestroy = pure ()

------------------------------------------------------------------------------

-- * Interface callbacks

-- | Module init/new function, called on module instantiation
--
-- MANDATORY CFFI function
--
-- @param init_info          Waybar module information
-- @param config_entries     Flat representation of the module JSON config. The data only available
--                           during wbcffi_init call.
-- @param config_entries_len Number of entries in `config_entries`
--
-- @return A untyped pointer to module data, NULL if the module failed to load.
pluginInit :: Ptr InitInfo -> Ptr ConfigEntry -> CSize -> IO (Ptr ())
pluginInit infoPtr cfgEntries cfgEntriesLen = do
  initInfo@InitInfo {wbcffi_module = wbModule} <- peek infoPtr
  configs <- forM [0 .. (fromIntegral cfgEntriesLen - 1)] $ \i -> do
    ConfigEntry pk pv <- peek (plusPtr cfgEntries (i * 2))
    (,) <$> peekCString pk <*> peekCString pv
  wbVersion <- peekCString (waybar_version initInfo)
  rootWidget <- mkGetRootFun (get_root_widget initInfo) (wbcffi_module initInfo) >>= newObject Container.Container
  let queueUpdate = mkQueueUpdate (queue_update initInfo) wbModule
      iconf = IConf {wbModule, wbVersion, rootWidget, configs, queueUpdate, instanceData = ()}
  inst <- HSWM.instanceNew iconf
  castStablePtrToPtr <$> newStablePtr iconf {instanceData = inst}

-- | Module deinit/delete function, called when Waybar is closed or when the module is removed
--
-- MANDATORY CFFI function
--
-- @param instance Module instance data (as returned by `wbcffi_init`)
pluginDeinit :: Ptr Void -> IO ()
pluginDeinit p = (deRefStablePtr sp >>= HSWM.instanceDestroy) `E.finally` freeStablePtr sp
  where
    sp = castPtrToStablePtr $ castPtr p

-- | Called from the GTK main event loop, to update the UI
--
-- Optional CFFI function
--
-- @param instance Module instance data (as returned by `wbcffi_init`)
-- @param action_name Action name
pluginUpdate :: Ptr Void -> IO ()
pluginUpdate p = deRefStablePtr sp >>= HSWM.updateDo
  where
    sp = castPtrToStablePtr $ castPtr p

-- | Called when Waybar receives a POSIX signal and forwards it to each module
--
-- Optional CFFI function
--
-- @param instance Module instance data (as returned by `wbcffi_init`)
-- @param signal Signal ID
pluginRefresh :: Ptr Void -> Int -> IO ()
pluginRefresh p sig = do
  putStrLn $ "[cffip] refresh: " <> show sig
  deRefStablePtr sp >>= (`HSWM.signalDo` sig)
  where
    sp = castPtrToStablePtr $ castPtr p

-- | Called on module action (see
-- https://github.com/Alexays/Waybar/wiki/Configuration#module-actions-config)
--
-- Optional CFFI function
--
-- @param instance Module instance data (as returned by `wbcffi_init`)
-- @param action_name Action name
pluginDoaction :: Ptr Void -> CString -> IO ()
pluginDoaction p cs = do
  as <- peekCString cs
  putStrLn $ "[cffip] emit action: " <> as
  deRefStablePtr sp >>= (`HSWM.actionDo` as)
  where
    sp = castPtrToStablePtr $ castPtr p

------------------------------------------------------------------------------

-- * Waybar cFFI Interface bindings

foreign export ccall "wbcffi_init" pluginInit :: Ptr InitInfo -> Ptr ConfigEntry -> CSize -> IO (Ptr ())

foreign export ccall "wbcffi_deinit" pluginDeinit :: Ptr Void -> IO ()

foreign export ccall "wbcffi_update" pluginUpdate :: Ptr Void -> IO ()

foreign export ccall "wbcffi_refresh" pluginRefresh :: Ptr Void -> Int -> IO ()

foreign export ccall "wbcffi_doaction" pluginDoaction :: Ptr Void -> CString -> IO ()

foreign import ccall "dynamic" mkGetRootFun :: FunPtr (Ptr WbcffiModule -> IO (Ptr Container)) -> (Ptr WbcffiModule -> IO (Ptr Container))

foreign import ccall "dynamic" mkQueueUpdate :: FunPtr (Ptr WbcffiModule -> IO ()) -> Ptr WbcffiModule -> IO ()
