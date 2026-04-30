{-# LANGUAGE TemplateHaskell #-}
-- |
-- Module      : Text.XkbCommon.EventCodes
-- Description : Definitions from linux/linux-event-codes.h
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Keys defined in @linux/linux-event-codes.h@.
module Text.XkbCommon.EventCodes where

import           Text.XkbCommon.Internal.TH
import           Data.Word

mkKeys ''Word32 "eventcodes.lst" "linux/input-event-codes.h" id ("_" ++)
