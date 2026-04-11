-- |
-- Module      : Bindings.Wayland.Util
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Bindings.Wayland.Util
  ( module Bindings.Wayland.Util
  , wL_MAX_MESSAGE_SIZE
  , Wl_message(..)
  , Wl_interface(..)
  , Wl_list(..)
  , Wl_array(..)
  , Wl_fixed_t(..)
  , Wl_argument(..)
  , Wl_dispatcher_func_t(..)
  ) where

import           Bindings.Wayland.Internal.TH
import           Bindings.Wayland.Util.Generated

-- * Array
mkWlObject $ (wlobj ''Wl_array [])
  { objHasDestructor = False
  , objListener = Nothing
  , objInterface = Nothing
  , objIsWlObject = False
  }
