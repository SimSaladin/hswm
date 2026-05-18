-- |
-- Module      : River.XkbBindings
-- Description : River Xkb Bindings V1
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- "Bindings.River.XkbBindingsV1"
module River.XkbBindings
  -- * RiverXkbBindings
  ( RiverXkbBindings
  -- ** GetXkbBinding
  , riverXkbBindingsGetXkbBinding
  -- ** GetSeat
  , riverXkbBindingsGetSeat

  -- * RiverXkbBinding
  , RiverXkbBinding
  , RiverXkbBindingListener
  -- ** Events
  , RiverXkbBindingEvent(..)
  -- ** Enable / Disable
  , riverXkbBindingEnable
  , riverXkbBindingDisable
  -- ** SetLayoutOverride
  , riverXkbBindingSetLayoutOverride

  -- * RiverXkbBindingsSeat
  , RiverXkbBindingsSeat
  -- ** Events
  , RiverXkbBindingsSeatEvent(..)
  -- ** EnsureNextKeyEaten
  , riverXkbBindingsSeatEnsureNextKeyEaten
  , riverXkbBindingsSeatCancelEnsureNextKeyEaten
  ) where

import Bindings.River.XkbBindingsV1
