{-# LANGUAGE TemplateHaskell #-}

-- |
-- Module      : Text.XkbCommon.KeySyms
-- Description : KeySyms defined in xkbcommon/xkbcommon-keysyms.h
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Text.XkbCommon.KeySyms where

import           Text.XkbCommon.Internal.TH
import           Text.XkbCommon.Types

mkKeys ''KeySym "keysyms.lst" "xkbcommon/xkbcommon-keysyms.h" ("XKB_KEY_" ++) ("key_" ++)
