------------------------------------------------------------------------------
-- |
-- Module      : Wlr
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
-- License     : WTFPL
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
--
------------------------------------------------------------------------------
module Wlr where

import Generated.Wlr.InputMethodV2
import Generated.Wlr.InputMethodV2.Global
import Generated.Wlr.InputMethodV2.Safe

import Foreign
import Wayland.Client.Internal.TH
import Wayland.Client.Objects
import Generated.Wayland.Client

-- * popup surface
mkWlObject $
  objDropPrefixSuffix "" ""
  (wlobj ''Zwp_input_popup_surface_v2 [ ])

-- * Keyboard Grab v2
mkWlObject $
  objAddMarshall
  [ ] $
  objDropPrefixSuffix "" ""
  (wlobj ''Zwp_input_method_keyboard_grab_v2
  [ "release"
  ])

-- * InputMethodV2
mkWlObject $
  objAddMarshall
  [ ([t|IO (Ptr Zwp_input_method_keyboard_grab_v2)|], [t|IO ZwpInputMethodKeyboardGrabV2|], [|(\(ZwpInputMethodKeyboardGrabV2 r) -> r)|], [|return . ZwpInputMethodKeyboardGrabV2|])
  , ([t|IO (Ptr Zwp_input_popup_surface_v2)|], [t|IO ZwpInputPopupSurfaceV2|], [|(\(ZwpInputPopupSurfaceV2 r) -> r)|], [|return . ZwpInputPopupSurfaceV2|])
  , ([t|Ptr Wl_surface|], [t|Surface|], [|(\(Surface r) -> r)|], [|Surface|])
  ] $
  objDropPrefixSuffix "" ""
  (wlobj ''Zwp_input_method_v2
  [ "commit_string"
  , "set_preedit_string"
  , "delete_surrounding_text"
  , "commit"
  , "get_input_popup_surface"
  , "grab_keyboard"
  ])

-- * manager V2
mkWlObject $
  objAddMarshall
  [ ([t|Ptr Wl_seat|], [t|Seat|], [|(\(Seat r) -> r)|], [|Seat|])
  , ([t|IO (Ptr Zwp_input_method_v2)|], [t|IO ZwpInputMethodV2|], [|(\(ZwpInputMethodV2 r) -> r)|], [|return . ZwpInputMethodV2|])
  ] $
  objDropPrefixSuffix "" ""
  (wlobj ''Zwp_input_method_manager_v2
  [ "get_input_method"
  ])
    { objListener = Nothing
    }
