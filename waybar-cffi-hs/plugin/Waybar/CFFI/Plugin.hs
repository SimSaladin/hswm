{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# OPTIONS_GHC -Wno-missing-signatures #-}

-- |
-- Module      : Waybar.CFFI.Plugin
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module Waybar.CFFI.Plugin () where

import           Foreign.C.ConstPtr (ConstPtr(..))

import qualified Waybar.CFFI.Plugin.Base as Base
import qualified Waybar.CFFI.Plugin.HSWM as HSWM (MyMod)

Base.makeCFFIModule ''HSWM.MyMod
