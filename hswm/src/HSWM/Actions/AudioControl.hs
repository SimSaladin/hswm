{-# LANGUAGE ExtendedDefaultRules #-}
{-# LANGUAGE NamedDefaults #-}
{-# OPTIONS_GHC -Wno-type-defaults #-}

-- |
-- Module      : HSWM.Actions.AudioControl
-- Description : Functions for controlling audio volume etc.
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Actions.AudioControl where

import Data.Ord (clamp)
import HSWM hiding ((-->>))
import Text.Printf

default Monad (H)

data MuteToggle = MuteTOGGLE | MuteON | MuteOFF
  deriving (Eq, Ord, Bounded, Enum, Show, Read, Generic, Data)

instance Default MuteToggle where
  def = MuteTOGGLE

-- |
-- Adjust the volume of a pipewire sink/volume/stream. Requires the @wpctl@ program in @PATH@.
-- @
-- adjustVolume "@DEFAULT_SINK@" 0.02+   -- e.g. wpctl set-volume ID VOL[%][-/+]
-- adjustVolume "@DEFAULT_SINK@" 0.05-
-- adjustVolume "@DEFAULT_SOURCE@" 0.5+
-- @
-- The volume adjustments can be scaled through the environment variable @WPCTL_VOLUME_SCALE@.
-- Percentages aren't yet supported.
adjustVolume :: String -> Double -> SomeAction H
adjustVolume target base = act <?> printf "Audio volume %s (%s)" (ppAdj base :: String) target
  where
    getFactor = clamp (-5, 5) . fromMaybe 1 . (>>= readMaybe) <$> lookupEnv "WPCTL_VOLUME_SCALE"
    ppAdj x = printf "%.5f%c" (abs x) (if x >= 0 then '+' else '-')
    act = do
      a <- getFactor
      spawnProcessFast "wpctl" ["set-volume", target, ppAdj (base * a)]

toggleMute :: String -> MuteToggle -> SomeAction H
toggleMute target mute = spawnProcess "wpctl" ["set-mute", target, pp mute] <?> printf "Audio mute %s (%s)" (pp mute) target
  where
    pp :: MuteToggle -> String
    pp MuteTOGGLE = "toggle"
    pp MuteON = "1"
    pp MuteOFF = "0"
