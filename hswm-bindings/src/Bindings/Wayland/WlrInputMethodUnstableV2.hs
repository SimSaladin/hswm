-- |
-- Module      : Wlr
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module Bindings.Wayland.WlrInputMethodUnstableV2 where

import Foreign

import Bindings.Wayland.Client.Generated

import Bindings.Wayland.WlrInputMethodUnstableV2.Generated
import Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Global
import Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe

import Bindings.Wayland.Internal.TH
import Bindings.Wayland.Client

-- * Input Method Popup Surface V2

mkWlObject $
  objDropPrefixSuffix
    ""
    "_v2"
    (wlobj ''Zwp_input_popup_surface_v2 [])
      { objEventFieldNames = [("text_input_rectangle", ["x", "y", "width", "height"])]
      , objHasDestructor = True
      }

-- * Input Method Keyboard Grab V2

mkWlObject
  $ objAddMarshall
    []
  $ objDropPrefixSuffix
    ""
    "_v2"
    ( wlobj
        ''Zwp_input_method_keyboard_grab_v2
        [ "release"
        ]
    )
      { objEventFieldNames =
          [ ("keymap", ["format", "fd", "size"]),
            ("key", ["serial", "time", "key", "state"]),
            ("modifiers", ["serial", "mods_depressed", "mods_latched", "mods_locked", "group"]),
            ("repeat_info", ["rate", "delay"])
          ]
      , objHasDestructor = True
      }

-- * Input Method V2

mkWlObject
  $ objAddMarshall
    [ ([t|IO (Ptr Zwp_input_method_keyboard_grab_v2)|], [t|IO ZwpInputMethodKeyboardGrab|], [|(\(ZwpInputMethodKeyboardGrab r) -> r)|], [|return . ZwpInputMethodKeyboardGrab|]),
      ([t|IO (Ptr Zwp_input_popup_surface_v2)|], [t|IO ZwpInputPopupSurface|], [|(\(ZwpInputPopupSurface r) -> r)|], [|return . ZwpInputPopupSurface|]),
      ([t|Ptr Wl_surface|], [t|Surface|], [|(\(Surface r) -> r)|], [|Surface|])
    ]
  $ objDropPrefixSuffix
    ""
    "_v2"
    ( wlobj
        ''Zwp_input_method_v2
        [ "commit_string",
          "set_preedit_string",
          "delete_surrounding_text",
          "commit",
          "get_input_popup_surface",
          "grab_keyboard"
        ]
    )
      { objEventFieldNames =
          [ ("surrounding_text", ["text", "cursor", "anchor"]),
            ("text_change_cause", ["cause"]),
            ("content_type", ["hint", "purpose"])
          ]
      , objHasDestructor = True
      }

-- * Input Method Manager V2

mkWlObject
  $ objAddMarshall
    [ ([t|Ptr Wl_seat|], [t|Seat|], [|(\(Seat r) -> r)|], [|Seat|]),
      ([t|IO (Ptr Zwp_input_method_v2)|], [t|IO ZwpInputMethod|], [|(\(ZwpInputMethod r) -> r)|], [|return . ZwpInputMethod|])
    ]
  $ objDropPrefixSuffix
    ""
    "_v2"
    ( wlobj
        ''Zwp_input_method_manager_v2
        [ "get_input_method"
        ]
    )
      { objListener = Nothing
      , objHasDestructor = True
      }
