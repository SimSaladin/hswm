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
module Bindings.Wayland.Protocol.ForeignTopLevelListV1 where

import Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated as X
import Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Global as G
import Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Safe as X

import Bindings.Wayland.Internal.TH
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
