-- |
-- Module      : River.XkbConfig
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module River.XkbConfig where

import Generated.River.XkbConfigV1
import Generated.River.XkbConfigV1.Global
import Generated.River.XkbConfigV1.Safe

import River.InputManagement

import Wayland.Client.Internal.TH
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
