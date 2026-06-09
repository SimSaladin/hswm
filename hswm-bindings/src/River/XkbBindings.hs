-- |
-- Module      : River.XkbBindings
-- Description : 
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module River.XkbBindings
  -- * RiverXkbBindings
  ( RiverXkbBindings
  -- ** GetXkbBinding
  , riverXkbBindingsGetXkbBinding
  -- ** GetSeat
  , riverXkbBindingsGetSeat

  -- * RiverXkbBinding
  , RiverXkbBinding
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

import River.XkbBindings.V1.Client
