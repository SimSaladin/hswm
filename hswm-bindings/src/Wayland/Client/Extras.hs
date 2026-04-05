{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}
------------------------------------------------------------------------------
-- |
-- Module      : Wayland.Client.Extras
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
--
------------------------------------------------------------------------------
module Wayland.Client.Extras (module Wayland.Client.Extras, module X) where

import Generated.Wayland.Protocol.ForeignTopLevelListV1 as X
import qualified Generated.Wayland.Protocol.ForeignTopLevelListV1.Global as G
import Generated.Wayland.Protocol.ForeignTopLevelListV1.Safe as X

import Wayland.Client.Internal.TH

mkInterface ''Ext_foreign_toplevel_list_v1_listener   'G.ext_foreign_toplevel_list_v1_interface
mkInterface ''Ext_foreign_toplevel_handle_v1_listener 'G.ext_foreign_toplevel_handle_v1_interface
