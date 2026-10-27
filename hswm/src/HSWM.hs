-- |
-- Module      : HSWM
-- Description : Public interface of this library / main module to import.
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM (
  module HSWM.Core,
  module HSWM.ManageHook,
  module HSWM.Config,
  module HSWM.Layout,
  module HSWM.Main,
  module HSWM.Operations,
  module HSWM.Utils,
  module HSWM.XKB,
  module HSWM.InputConfig,
  module Text.XkbCommon.EventCodes,

  -- * Re-exports
  module Prelude,
  module ReExports,
)
where

import Data.Default as ReExports
import Data.Semigroup as ReExports (All (..))
import HSWM.Config
import HSWM.Core
import HSWM.InputConfig
import HSWM.Layout
import HSWM.Main
import HSWM.ManageHook
import HSWM.Operations
import HSWM.Utils
import HSWM.XKB
import Text.XkbCommon.EventCodes
import Prelude hiding (setEnv, (^?))
