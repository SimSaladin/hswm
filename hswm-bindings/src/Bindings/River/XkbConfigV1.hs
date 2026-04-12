-- |
-- Module      : Bindings.River.XkbConfigV1
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module Bindings.River.XkbConfigV1 where

import Bindings.River.XkbConfigV1.Generated
import Bindings.River.XkbConfigV1.Generated.Global
import Bindings.River.XkbConfigV1.Generated.Safe

import Bindings.River.InputManagementV1

import Bindings.Wayland.Internal.TH
import Language.Haskell.TH

-- * RiverXkbKeymap

mkWlObject
  ( riverObj
      ''River_xkb_keymap_v1
      []
  )

-- * RiverXkbKeyboard

mkWlObject
  ( riverObj
      ''River_xkb_keyboard_v1
      [ "set_keymap",
        "set_layout_by_index",
        "set_layout_by_name",
        "capslock_enable",
        "capslock_disable",
        "numlock_enable",
        "numlock_disable"
      ]
  )

-- * RiverXkbConfig

mkWlObject
  ( riverObj
      ''River_xkb_config_v1
      [ "stop",
        "create_keymap"
          { of_arguments =
              [ ""
              , "fd"
              , "format"
                { fa_type = \_ -> ConT ''River_xkb_config_v1_keymap_format
                , fa_val_in_e = Just $ \v -> [|(\(River_xkb_config_v1_keymap_format x) -> fromIntegral x) $(varE v)|]
                }
              ]
          }
      ]
  )
