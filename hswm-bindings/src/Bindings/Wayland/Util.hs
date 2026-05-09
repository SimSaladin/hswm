-- |
-- Module      : Bindings.Wayland.Util
-- Description : Wayland Util bindings
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Bindings.Wayland.Util
  (
  -- * Interfaces
  Wl_interface(..),
  wL_MAX_MESSAGE_SIZE,
  Wl_message(..),
  Wl_argument(..),
  Wl_dispatcher_func_t(..),
  Wl_dispatcher_func_t_Aux(..),
  -- * Lists
  Wl_list(..),
  U.wl_list_init,
  U.wl_list_insert,
  U.wl_list_remove,
  U.wl_list_length,
  U.wl_list_empty,
  U.wl_list_insert_list,
  -- * Arrays
  Array(..),
  Wl_array(..),
  U.wl_array_init,
  U.wl_array_release,
  U.wl_array_add,
  U.wl_array_copy,
  -- * Fixed-point numbers
  Fixed,
  fixedToDouble,
  fixedFromDouble,
  fixedToInt,
  fixedFromInt,
  ) where

import           Bindings.Wayland.Util.Generated
import qualified Bindings.Wayland.Util.Generated.Unsafe as U

import           Wayland.Internal.TH

import           Foreign.Ptr
import           Foreign.C.Types
import           System.IO.Unsafe

-- | Fixed-point number
type Fixed = Wl_fixed_t

fixedToInt :: Fixed -> Int
fixedToInt = unsafePerformIO . fmap fromIntegral . U.wl_fixed_to_int

fixedFromInt :: Integral a => a -> Fixed
fixedFromInt = unsafePerformIO . U.wl_fixed_from_int . fromIntegral

fixedToDouble :: Fixed -> Double
fixedToDouble = unsafePerformIO . fmap fromCDouble . U.wl_fixed_to_double

fixedFromDouble :: Double -> Fixed
fixedFromDouble = unsafePerformIO . U.wl_fixed_from_double . CDouble

fromCDouble :: CDouble -> Double
fromCDouble (CDouble d) = d

mkWlObject $ (wlobj ''Wl_array [])
  { objHasDestructor = False
  , objListener = Nothing
  , objInterface = Nothing
  , objIsWlObject = False
  }

instance Default Array where
  def = Array nullPtr
