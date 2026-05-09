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

import           Foreign
import           Foreign.C
import           Foreign.C.ConstPtr (ConstPtr(..))
import           Foreign.Storable.Generic (GStorable(..))

import           GHC.Generics (Generic)

import           Data.String (IsString(..))
import           Control.Monad
import qualified Data.Aeson as A
import qualified Data.Aeson.KeyMap as A.KM
import qualified Data.ByteString as BS
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

-- | Type of the get_root_widget function.
type GetRootWidget = Ptr WbcffiModule -> IO (Ptr Container)

-- | Type of the queue_update function.
type QueueUpdate = Ptr WbcffiModule -> IO ()

-- | Call the C function get_root_widget.
foreign import ccall "dynamic" mkGetRootWidget :: FunPtr GetRootWidget -> GetRootWidget

-- | Call the C function queue_update.
foreign import ccall "dynamic" mkQueueUpdate :: FunPtr QueueUpdate -> QueueUpdate

-- | Parse module configuration.
getConfig :: A.FromJSON a => ConstPtr ConfigEntry -> CSize -> IO a
getConfig ptr size = do
  obj <- fmap A.KM.fromList $ forM [0 .. (fromIntegral size - 1)] $ \i ->
    peek (advancePtr (unConstPtr ptr) i) >>= parse
  case A.fromJSON (A.Object obj) of
    A.Success a -> return a
    A.Error msg -> error msg
  where
    parse (ConfigEntry pk pv) = do
      k <- peekCString (unConstPtr pk)
      v <- BS.packCString (unConstPtr pv)
      case A.decodeStrict' v :: Maybe A.Value of
        Just v' -> return (fromString k, v')
        Nothing -> error $ "getConfigEntries: parse error at key " ++ k
