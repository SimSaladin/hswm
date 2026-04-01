{-# LANGUAGE CApiFFI                  #-}
{-# LANGUAGE ForeignFunctionInterface #-}
------------------------------------------------------------------------------
-- |
-- Module      : Waybar.CFFI.Plugin
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
------------------------------------------------------------------------------
module Waybar.CFFI.Plugin where

import           GI.Gtk as Gtk
import           GI.Gtk.Objects.Box as Box
import           GI.Gtk.Objects.Button as Button
import           GI.Gtk.Objects.Container as Container
import           GI.Gtk.Objects.Label as Label
import           GI.Gtk.Objects.Widget as Widget

import           Control.Monad
import qualified Control.Exception as E
import           Data.Void
import           Foreign
import           Foreign.C
import           Foreign.C.Types
import           Foreign.Storable.Generic (GStorable(..))
import           GHC.Generics (Generic)

data MyMod = MyMod
  { container :: Box.Box -- ^ GtkBox* container
  , button    :: Button -- ^ GtkButton* button
  } deriving (Generic)

myInit :: IConf a -> IO MyMod
myInit IConf{..} = do
  putStrLn $ "cffi_example: init config: waybar " ++ wbVersion ++ " :: config entries " <> show (length configs) <> ":"
  putStrLn $ "configs: " ++ show configs

  -- Add a container for displaying the next widgets
  container <- Box.boxNew OrientationHorizontal 5
  Container.containerAdd rootWidget container
  Label.labelNew (Just "[Example C FFI Module:") >>= Container.containerAdd container
  button <- Button.buttonNewWithLabel "click me !"
  on button #clicked (putStrLn "Button clicked!")
  Container.containerAdd container button
  labelNew (Just "]") >>= Container.containerAdd container
  return MyMod { .. }

myDestroy :: IConf a -> MyMod -> IO ()
myDestroy _ inst@MyMod{container, button} = do
  putStrLn "deinit..."
  Widget.widgetDestroy container
  Widget.widgetDestroy button

data IConf a = IConf
  { wbModule     :: !(Ptr WbcffiModule)
  , wbVersion    :: !String               -- ^ waybar version
  , rootWidget   :: !Container            -- ^ Widget root widget
  , configs      :: ![(String, String)]   -- ^ TODO: parse value as JSON
  , queueUpdate  :: !(IO ())              -- ^ Queue update to waybar
  , instanceData :: !a
  } deriving (Generic)

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
  initInfo@InitInfo{wbcffi_module = wbModule} <- peek infoPtr
  configs <- forM [0 .. (fromIntegral cfgEntriesLen - 1)] $ \i -> do
      ConfigEntry pk pv <- peek (plusPtr cfgEntries (i * 2))
      (,) <$> peekCString pk <*> peekCString pv
  wbVersion <- peekCString (waybar_version initInfo)
  rootWidget <- mkGetRootFun (get_root_widget initInfo) (wbcffi_module initInfo) >>= newObject Container.Container
  let queueUpdate = mkQueueUpdate (queue_update initInfo) wbModule
      iconf = IConf{wbModule, wbVersion, rootWidget, configs, queueUpdate, instanceData = ()}
  inst <- myInit iconf
  castStablePtrToPtr <$> newStablePtr iconf { instanceData = inst }

-- | Module deinit/delete function, called when Waybar is closed or when the module is removed
--
-- MANDATORY CFFI function
--
-- @param instance Module instance data (as returned by `wbcffi_init`)
pluginDeinit :: Ptr Void -> IO ()
pluginDeinit p = do
  let sp = castPtrToStablePtr $ castPtr p
  iconf <- deRefStablePtr sp
  myDestroy iconf (instanceData iconf) `E.finally` freeStablePtr sp

-- | Called from the GTK main event loop, to update the UI
--
-- Optional CFFI function
--
-- @param instance Module instance data (as returned by `wbcffi_init`)
-- @param action_name Action name
pluginUpdate :: Ptr Void -> IO ()
pluginUpdate p = do
  putStrLn "plugin::update"

-- | Called when Waybar receives a POSIX signal and forwards it to each module
--
-- Optional CFFI function
--
-- @param instance Module instance data (as returned by `wbcffi_init`)
-- @param signal Signal ID
pluginRefresh :: Ptr Void -> Int -> IO ()
pluginRefresh p sig = putStrLn $ "plugin::refresh@" ++ show sig

-- | Called on module action (see
-- https://github.com/Alexays/Waybar/wiki/Configuration#module-actions-config)
--
-- Optional CFFI function
--
-- @param instance Module instance data (as returned by `wbcffi_init`)
-- @param action_name Action name
pluginDoaction :: Ptr Void -> CString -> IO ()
pluginDoaction p cs = do
  s <- peekCString cs
  putStrLn $ "plugin::do@" ++ s

------------------------------------------------------------------------------
-- * Waybar cFFI Interface bindings

-- | Waybar module information
data {-# CTYPE "waybar_cffi_module.h" "wbcffi_init_info" #-} InitInfo = InitInfo

  { wbcffi_module :: Ptr WbcffiModule
    -- ^ Private Waybar CFFI module

  , waybar_version :: CString
    -- ^ Waybar version string

  , get_root_widget :: FunPtr (Ptr WbcffiModule -> IO (Ptr Container))
    -- ^ Returns the waybar widget allocated for this module
    -- @param obj Waybar CFFI object pointer

  , queue_update :: FunPtr (Ptr WbcffiModule -> IO ())
    -- ^ Queues a request for calling wbcffi_update() on the next GTK main event
    -- loop iteration
    -- @param obj Waybar CFFI object pointer

  } deriving (Generic)

data {-# CTYPE "waybar_cffi_module.h" "wbcffi_module" #-} WbcffiModule deriving (Generic)

-- | Config key-value pair
data {-# CTYPE "waybar_cffi_module.h" "struct wbcffi_config_entry" #-} ConfigEntry = ConfigEntry

  { configEntryKey :: CString
    -- ^ Entry key

  , configEntryValue :: CString
    -- ^ Entry value. In ver 2 this is json object or json string.

  } deriving (Generic)

instance GStorable ConfigEntry
instance GStorable InitInfo

---------------------------------------------------------------------------------

foreign export ccall "wbcffi_init"     pluginInit     :: Ptr InitInfo -> Ptr ConfigEntry -> CSize -> IO (Ptr ())
foreign export ccall "wbcffi_deinit"   pluginDeinit   :: Ptr Void -> IO ()
foreign export ccall "wbcffi_update"   pluginUpdate   :: Ptr Void -> IO ()
foreign export ccall "wbcffi_refresh"  pluginRefresh  :: Ptr Void -> Int -> IO ()
foreign export ccall "wbcffi_doaction" pluginDoaction :: Ptr Void -> CString -> IO ()
foreign import ccall "dynamic"         mkGetRootFun   :: FunPtr (Ptr WbcffiModule -> IO (Ptr Container)) -> (Ptr WbcffiModule -> IO (Ptr Container))
foreign import ccall "dynamic"         mkQueueUpdate  :: FunPtr (Ptr WbcffiModule -> IO ()) -> Ptr WbcffiModule -> IO ()
