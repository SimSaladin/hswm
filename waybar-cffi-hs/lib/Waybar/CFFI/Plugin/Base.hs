{-# LANGUAGE CApiFFI #-}

-- |
-- Module      : Waybar.CFFI.Plugin.Base
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
module Waybar.CFFI.Plugin.Base
  ( module Waybar.CFFI.Plugin.Base,
    module RXP,
  )
where

import Foreign as RXP
import Foreign.C as RXP
import Foreign.Storable.Generic as RXP (GStorable (..))
import GHC.Generics as RXP (Generic)
import GI.Gtk.Objects.Container as RXP (Container)
import qualified Data.Aeson as A

data IConf a = IConf
  { wbModule :: !(Ptr WbcffiModule),
    -- | waybar version
    wbVersion :: !String,
    -- | Widget root widget
    rootWidget :: !Container,
    -- | TODO: parse value as JSON
    configs :: ![(String, A.Value)],
    -- | Queue update to waybar
    queueUpdate :: !(IO ()),
    instanceData :: a
  }
  deriving (Generic)

-- | Waybar module information
data {-# CTYPE "waybar_cffi_module.h" "wbcffi_init_info" #-} InitInfo = InitInfo
  { -- | Private Waybar CFFI module
    wbcffi_module :: !(Ptr WbcffiModule),
    -- | Waybar version string
    waybar_version :: !CString,
    -- | Returns the waybar widget allocated for this module
    -- @param obj Waybar CFFI object pointer
    get_root_widget :: !(FunPtr (Ptr WbcffiModule -> IO (Ptr Container))),
    -- | Queues a request for calling wbcffi_update() on the next GTK main event
    -- loop iteration
    -- @param obj Waybar CFFI object pointer
    queue_update :: !(FunPtr (Ptr WbcffiModule -> IO ()))
  }
  deriving (Generic)

instance GStorable InitInfo

data {-# CTYPE "waybar_cffi_module.h" "wbcffi_module" #-} WbcffiModule deriving (Generic)

-- | Config key-value pair
data {-# CTYPE "waybar_cffi_module.h" "struct wbcffi_config_entry" #-} ConfigEntry = ConfigEntry
  { -- | Entry key
    configEntryKey :: !CString,
    -- | Entry value. In ver 2 this is json object or json string.
    configEntryValue :: !CString
  }
  deriving (Generic)

instance GStorable ConfigEntry
