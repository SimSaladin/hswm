{-# LANGUAGE TemplateHaskell #-}
------------------------------------------------------------------------------
-- |
-- Module      : River.Interfaces
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
-- Interfaces:
--
--   * "Generated.River.LayoutShellV1"
--
--      * "Generated.River.LayoutShellV1.Global"
--
--   * "Generated.River.InputManagementV1"
--
--      * "Generated.River.InputManagementV1.Global"
--
--   * "Generated.River.WindowManagementV1"
--
--      * "Generated.River.WindowManagementV1.Global"
--
--   * "Generated.River.XkbBindingsV1"
--
--      * "Generated.River.XkbBindingsV1.Global"
--
--   * "Generated.River.XkbConfigV1"
--
--      * "Generated.River.XkbConfigV1.Global"

------------------------------------------------------------------------------
module River.Interfaces

  -- * RiverLayerShellV1
  ( river_layer_shell_v1_interface
  , river_layer_shell_output_v1_interface
  , river_layer_shell_seat_v1_interface
  , river_layer_shell_v1_interface'
  , river_layer_shell_output_v1_interface'
  , river_layer_shell_seat_v1_interface'

  -- * RiverInputManagerV1
  , river_input_manager_v1_interface
  , river_input_device_v1_interface
  , river_input_manager_v1_interface'
  , river_input_device_v1_interface'

  -- * RiverWindowManagerV1
  , river_window_manager_v1_interface
  , river_window_v1_interface
  , river_decoration_v1_interface
  , river_shell_surface_v1_interface
  , river_node_v1_interface
  , river_output_v1_interface
  , river_seat_v1_interface
  , river_pointer_binding_v1_interface
  , river_window_manager_v1_interface'
  , river_window_v1_interface'
  , river_decoration_v1_interface'
  , river_shell_surface_v1_interface'
  , river_node_v1_interface'
  , river_output_v1_interface'
  , river_seat_v1_interface'
  , river_pointer_binding_v1_interface'

  -- * RiverXkbBindingsV1
  , river_xkb_bindings_v1_interface
  , river_xkb_binding_v1_interface
  , river_xkb_bindings_seat_v1_interface
  , river_xkb_bindings_v1_interface'
  , river_xkb_binding_v1_interface'
  , river_xkb_bindings_seat_v1_interface'

  -- * RiverXkbConfigV1
  , river_xkb_config_v1_interface
  , river_xkb_keymap_v1_interface
  , river_xkb_keyboard_v1_interface
  , river_xkb_config_v1_interface'
  , river_xkb_keymap_v1_interface'
  , river_xkb_keyboard_v1_interface'
  ) where

import qualified Generated.River.InputManagementV1.Global as G
import qualified Generated.River.LayoutShellV1.Global as G
import qualified Generated.River.WindowManagementV1.Global as G
import qualified Generated.River.XkbBindingsV1.Global as G
import qualified Generated.River.XkbConfigV1.Global as G

import           Wayland.Client.Internal.TH (getConstPtrs)

$(getConstPtrs
  [ ( "river_layer_shell_v1_interface"        , 'G.river_layer_shell_v1_interface       )
  , ( "river_layer_shell_output_v1_interface" , 'G.river_layer_shell_output_v1_interface)
  , ( "river_layer_shell_seat_v1_interface"   , 'G.river_layer_shell_seat_v1_interface  )
  , ( "river_input_manager_v1_interface"      , 'G.river_input_manager_v1_interface     )
  , ( "river_input_device_v1_interface"       , 'G.river_input_device_v1_interface      )
  , ( "river_window_manager_v1_interface"     , 'G.river_window_manager_v1_interface    )
  , ( "river_window_v1_interface"             , 'G.river_window_v1_interface            )
  , ( "river_decoration_v1_interface"         , 'G.river_decoration_v1_interface        )
  , ( "river_shell_surface_v1_interface"      , 'G.river_shell_surface_v1_interface     )
  , ( "river_node_v1_interface"               , 'G.river_node_v1_interface              )
  , ( "river_output_v1_interface"             , 'G.river_output_v1_interface            )
  , ( "river_seat_v1_interface"               , 'G.river_seat_v1_interface              )
  , ( "river_pointer_binding_v1_interface"    , 'G.river_pointer_binding_v1_interface   )
  , ( "river_xkb_bindings_v1_interface"       , 'G.river_xkb_bindings_v1_interface      )
  , ( "river_xkb_binding_v1_interface"        , 'G.river_xkb_binding_v1_interface       )
  , ( "river_xkb_bindings_seat_v1_interface"  , 'G.river_xkb_bindings_seat_v1_interface )
  , ( "river_xkb_config_v1_interface"         , 'G.river_xkb_config_v1_interface        )
  , ( "river_xkb_keymap_v1_interface"         , 'G.river_xkb_keymap_v1_interface        )
  , ( "river_xkb_keyboard_v1_interface"       , 'G.river_xkb_keyboard_v1_interface      ) ])
