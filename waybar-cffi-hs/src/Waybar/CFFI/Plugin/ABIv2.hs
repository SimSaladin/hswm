{-# LANGUAGE DeriveAnyClass #-}

-- |
-- Module      : Waybar.CFFI.Plugin.ABIv2
-- Description : Waybar CFFI module ABI (version 2)
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Waybar.CFFI.Plugin.ABIv2 where

import           Control.Monad
import           Foreign
import           Foreign.C
import           Foreign.C.ConstPtr (ConstPtr(..))
import           Foreign.Storable.Generic (GStorable(..))
import           GHC.Generics (Generic)
import           Control.Exception

import qualified Data.Aeson as A
import qualified Data.Aeson.KeyMap as A.KM
import qualified Data.Aeson.Key as A.Key
import qualified Data.ByteString as BS
import qualified Data.Text.Foreign as T
import           GI.Gtk.Objects.Container (Container)

-- | Private Waybar CFFI module.
data {-# CTYPE "waybar_cffi_module.h" "wbcffi_module" #-} WbcffiModule
  deriving (Show, Eq, Ord, Generic)

-- | Waybar module information.
data {-# CTYPE "waybar_cffi_module.h" "wbcffi_init_info" #-} InitInfo = InitInfo
  { -- | Private Waybar CFFI module
    wbcffi_module :: {-# UNPACK #-} !(Ptr WbcffiModule),
    -- | Waybar version string
    waybar_version :: {-# UNPACK #-} !(ConstPtr CChar),
    -- | Returns the waybar widget allocated for this module
    --
    -- @param obj Waybar CFFI object pointer
    get_root_widget :: {-# UNPACK #-} !(FunPtr GetRootWidget),
    -- | Queues a request for calling @wbcffi_update()@ on the next GTK main event
    -- loop iteration.
    --
    -- @param obj Waybar CFFI object pointer
    queue_update :: {-# UNPACK #-} !(FunPtr QueueUpdate)
  }
  deriving (Show, Eq, Ord, Generic, GStorable)

-- | Config key-value pair
data {-# CTYPE "waybar_cffi_module.h" "struct wbcffi_config_entry" #-} ConfigEntry = ConfigEntry
  { -- | Entry key
    configEntryKey :: {-# UNPACK #-} !(ConstPtr CChar),
    -- | Entry value. In ver 2 this is json object or json string.
    configEntryValue :: {-# UNPACK #-} !(ConstPtr CChar)
  }
  deriving (Show, Eq, Ord, Generic, GStorable)

-- | Module init/new function, called on module instantiation.
--
-- MANDATORY CFFI function
--
-- @
-- param init_info          Waybar module information
-- param config_entries     Flat representation of the module JSON config. The data only available
--                           during wbcffi_init call.
-- param config_entries_len Number of entries in @config_entries@
--
-- return A untyped pointer to module data, NULL if the module failed to load.
--
-- wbcffi_init :: !(Ptr InitInfo -> Ptr ConfigEntry -> CSize -> IO (Ptr Void))
-- @
type Init a = ConstPtr InitInfo -> ConstPtr ConfigEntry -> CSize -> IO a

type DoAction a = a -> ConstPtr CChar -> IO ()

-- | Type of the get_root_widget function.
type GetRootWidget = Ptr WbcffiModule -> IO (Ptr Container)

-- | Type of the queue_update function.
type QueueUpdate = Ptr WbcffiModule -> IO ()

-- | Call the C function get_root_widget.
foreign import ccall "dynamic" mkGetRootWidget :: FunPtr GetRootWidget -> GetRootWidget

-- | Call the C function queue_update.
foreign import ccall "dynamic" mkQueueUpdate :: FunPtr QueueUpdate -> QueueUpdate

-- | Parse module configuration.
parseConfig :: A.FromJSON a => ConstPtr ConfigEntry -> CSize -> IO a
parseConfig (ConstPtr ptr) size = do
  values <- forM [0 .. fromIntegral size - 1] $ \i -> peek (advancePtr ptr i) >>= parse
  case A.fromJSON $ A.Object $ A.KM.fromList values of
    A.Success a -> return a
    A.Error msg -> throwIO $ WaybarConfigParseError msg
  where
    parse (ConfigEntry (ConstPtr pk) (ConstPtr pv)) = do
      k <- A.Key.fromText <$> T.peekCString pk
      v <- BS.packCString pv
      case A.decodeStrict' v :: Maybe A.Value of
        Just v' -> return (k, v')
        Nothing -> throwIO $ WaybarConfigParseError $ "parse error at key '" ++ show k ++ "': " ++ show v

data WaybarPluginException
  = WaybarConfigParseError String
  deriving (Eq, Ord, Show, Read)

instance Exception WaybarPluginException
