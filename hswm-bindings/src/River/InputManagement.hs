-- |
-- Module      : River.InputManagement
-- Description : River Input Management V1
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- River Input Management V1.
--
-- See also: "Bindings.River.InputManagementV1"
--
module River.InputManagement
  -- * InputManagement
  ( RiverInputManager(..)
  -- ** Events
  , RiverInputManagerEvent(..)
  -- ** Requests
  -- *** CreateSeat
  , riverInputManagerCreateSeat
  -- *** DestroySeat
  , riverInputManagerDestroySeat
  -- *** Stop
  , riverInputManagerStop

  -- * RiverInputDevice
  , RiverInputDevice(..)
  -- ** Events
  , RiverInputDeviceEvent(..)
  -- ** Enums
  -- *** RiverInputDeviceType
  , RiverInputDeviceType
  -- ** Requests
  -- *** AssignToSeat
  , riverInputDeviceAssignToSeat
  -- *** SetRepeatInfo
  , riverInputDeviceSetRepeatInfo
  -- *** SetScrollFactor
  , riverInputDeviceSetScrollFactor
  -- *** MapToOutput
  , riverInputDeviceMapToOutput
  -- *** MapToRectangle
  , riverInputDeviceMapToRectangle
  ) where

import Bindings.River.InputManagementV1
