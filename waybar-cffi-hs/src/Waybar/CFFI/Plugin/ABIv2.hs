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

import           GI.Gtk.Objects.Container (Container)

import qualified Data.Aeson as A
import qualified Data.Aeson.KeyMap as A.KM
import qualified Data.Aeson.Key as A.Key
import qualified Data.ByteString as BS
import qualified Data.Text as T
import qualified Data.Text.Foreign as T

import           Control.Exception
import           Foreign
import           Foreign.C
import           Foreign.C.ConstPtr (ConstPtr(..))
import           GHC.Generics (Generic)
import           Text.ParserCombinators.ReadP (readP_to_S)
import           Text.Read ()
import           Data.Version (Version, parseVersion)

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
  } deriving (Eq, Ord, Show, Generic)

-- | Config key-value pair
data {-# CTYPE "waybar_cffi_module.h" "struct wbcffi_config_entry" #-} ConfigEntry = ConfigEntry
  { -- | Entry key
    configEntryKey :: {-# UNPACK #-} !(ConstPtr CChar),
    -- | Entry value. In ver 2 this is json object or json string.
    configEntryValue :: {-# UNPACK #-} !(ConstPtr CChar)
  } deriving (Eq, Ord, Show, Generic)

-- | Type of the get_root_widget function.
type GetRootWidget = Ptr WbcffiModule -> IO (Ptr Container)

-- | Type of the queue_update function.
type QueueUpdate = Ptr WbcffiModule -> IO ()

-- | Call the C function get_root_widget.
foreign import ccall "dynamic" mkGetRootWidget :: FunPtr GetRootWidget -> GetRootWidget

-- | Call the C function queue_update.
foreign import ccall "dynamic" mkQueueUpdate :: FunPtr QueueUpdate -> QueueUpdate

instance Storable InitInfo where
  alignment _ = alignment (undefined :: ConstPtr ())
  sizeOf    _ = sizeOf (undefined :: ConstPtr ()) * 4
  peek ptr = InitInfo
    <$> peek (castPtr ptr)
    <*> peekElemOff (castPtr ptr) 1
    <*> peekElemOff (castPtr ptr) 2
    <*> peekElemOff (castPtr ptr) 3
  poke ptr (InitInfo m v rw qu) = do
    poke (castPtr ptr) m
    pokeElemOff (castPtr ptr) 1 v
    pokeElemOff (castPtr ptr) 2 rw
    pokeElemOff (castPtr ptr) 3 qu

instance Storable ConfigEntry where
  alignment _ = alignment (undefined :: ConstPtr ())
  sizeOf    _ = sizeOf (undefined :: ConstPtr ()) * 2
  peek ptr = ConfigEntry <$> peek (castPtr ptr) <*> peekElemOff (castPtr ptr) 1
  poke ptr (ConfigEntry k v) = do
    poke (castPtr ptr) k
    pokeElemOff (castPtr ptr) 1 v

-- * Exceptions

data WaybarPluginException
  = WaybarPluginConfigParseError String
  | WaybarPluginVersionParseError String
  deriving (Eq, Ord, Show, Read)

instance Exception WaybarPluginException

-- * Configuration parsing

-- | Parse module configuration.
parseConfig :: A.FromJSON a => ConstPtr ConfigEntry -> CSize -> IO a
parseConfig (ConstPtr ptr) size = do
  entries <- peekArray (fromIntegral size) ptr
  keymap <- A.KM.fromList <$> mapM fromEntry entries
  case A.fromJSON $ A.Object keymap of
    A.Success a -> return a
    A.Error msg -> throwIO $! WaybarPluginConfigParseError msg
  where
    fromEntry (ConfigEntry (ConstPtr pk) (ConstPtr pv)) = do
      key <- T.peekCString pk
      valBS <- BS.packCString pv
      case A.eitherDecodeStrict' valBS :: Either String A.Value of
        Right val -> return (A.Key.fromText key, val)
        Left err -> throwIO $! WaybarPluginConfigParseError $ err ++ " (while parsing entry '" ++ T.unpack key ++ "':" ++ show valBS ++ ")"

-- | Get waybar version.
getWaybarVersion :: InitInfo -> IO Version
getWaybarVersion InitInfo{waybar_version = ConstPtr ptr} = do
  str <- peekCString ptr
  case reverse $ readP_to_S parseVersion str of
    (ver, "") : _ -> return ver
    _ -> throwIO $ WaybarPluginVersionParseError str

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
