{-# LANGUAGE DuplicateRecordFields #-}
------------------------------------------------------------------------------
-- |
-- Module      : Wayland.Client.Extras
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
--
------------------------------------------------------------------------------
module Wayland.Client.Extras (module Wayland.Client.Extras, module X) where

import Generated.Wayland.Protocol.ForeignTopLevelListV1 as X
import Generated.Wayland.Protocol.ForeignTopLevelListV1.Global as G
import Generated.Wayland.Protocol.ForeignTopLevelListV1.Safe as X

import Wayland.Client.Internal.TH
import Foreign.Ptr

mkWlObject $
  objAddMarshall [] $
  objDropPrefixSuffix "Ext_" "_v1" $
    (wlobj ''Ext_foreign_toplevel_handle_v1 [])
      { objEventFieldNamesCommon = [ "userdata", "foreignTopLevelHandle" ]
      , objEventFieldNames =
        [("title", ["title"])
        ,("app_id", ["app_id"])
        ,("identifier", ["identifier"])
        ]
      }

$(pure [])

mkWlObject $
  objAddMarshall
  [ ([t|Ptr Ext_foreign_toplevel_handle_v1|], [t|ForeignToplevelHandle|], [|(\(ForeignToplevelHandle r) -> r)|], [|ForeignToplevelHandle|]) ] $
  objDropPrefixSuffix "Ext_" "_v1" $
    (wlobj ''Ext_foreign_toplevel_list_v1 [])
      { objEventFieldNamesCommon = [ "userdata", "foreignTopLevelList" ]
      , objEventFieldNames =
        [ ("toplevel", ["foreignTopLevelHandle"])
        ]
      }
