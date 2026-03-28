------------------------------------------------------------------------------
-- |
-- Module      : Wayland.Client
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
-- This module re-exports the most important types, the global interface constants,
-- and the @safe@ versions of generated API request functions.
--
-- The @unsafe@ and @FunPtr@ functions can be found in their respective modules.
--
--    * "Generated.Wayland.Client.Safe",
--      "Generated.Wayland.Util.Safe"
--
--    * "Generated.Wayland.Client.Unsafe",
--      "Generated.Wayland.Util.Unsafe"
--
--    * "Generated.Wayland.Client.FunPtr",
--      "Generated.Wayland.Util.FunPtr"
--
-- This module also exports all the interface globals for binding registry listeners.
-- See also: "Wayland.Client.Interface".
--
-- Index of most important object types:
--
--    * 'Wl_event_queue'  ---  'wl_event_queue_destroy', 'wl_event_queue_get_name'
--
--    * 'Wl_proxy'  ---  'wl_proxy_marshal_array_flags'
--
--    * 'Wl_display'  ---  'wl_display_connect'
--
--    * 'Wl_registry'  ---  'wl_registry_add_listener'
--
--    * 'Wl_buffer'  ---  'wl_buffer_add_listener'
--
--    * 'Wl_callback'  ---  'wl_callback_add_listener'
--
--    * 'Wl_compositor'  ---  'wl_compositor_set_user_data'
--
--    * 'Wl_data_device'  ---  'wl_data_device_add_listener'
--
--    * 'Wl_data_device_manager'  ---  'wl_data_device_manager_set_user_data'
--
--    * 'Wl_data_offer'  ---  'wl_data_offer_add_listener'
--
--    * 'Wl_data_source'  ---  'wl_data_source_add_listener'
--
--    * 'Wl_fixes'  ---  'wl_fixes_set_user_data'
--
--    * 'Wl_keyboard'  ---  'wl_keyboard_add_listener'
--
--    * 'Wl_output'  ---  'wl_output_add_listener'
--
--    * 'Wl_pointer'  ---  'wl_pointer_add_listener'
--
--    * 'Wl_region'  ---  'wl_region_set_user_data'
--
--    * 'Wl_seat'  ---  'wl_seat_add_listener'
--
--    * 'Wl_shell'  ---  'wl_shell_set_user_data'
--
--    * 'Wl_shell_surface'  ---  'wl_shell_surface_add_listener'
--
--    * 'Wl_shm'  ---  'wl_shm_add_listener'
--
--    * 'Wl_shm_pool'  ---  'wl_shm_pool_set_user_data'
--
--    * 'Wl_subcompositor'  ---  'wl_subcompositor_set_user_data'
--
--    * 'Wl_subsurface'  ---  'wl_subsurface_set_user_data'
--
--    * 'Wl_surface'  ---  'wl_surface_add_listener'
--
--    * 'Wl_touch'  ---  'wl_touch_add_listener'
--
-- There are also the following generic object types (found mostly in the util header,
-- see "Generated.Wayland.Util"):
--
--    * 'Wl_object'
--
--    * 'Wl_message'
--
--    * 'Wl_interface'
--
--    * 'Wl_list'
--
--    * 'Wl_array'
--
--    * 'Wl_fixed_t'
--
--    * 'Wl_argument'
--
------------------------------------------------------------------------------
module Wayland.Client

  -- * Wl_proxy
  --
  -- ** @wl_proxy_marshal_*@
  --
  -- __NOTE:__ some (variadic) marshal variants are not here because @hs-bindgen@
  -- does not do variadic functions.

  ( wl_proxy_marshal_array_flags
  , wl_proxy_marshal_array
  , wl_proxy_marshal_array_constructor
  , wl_proxy_marshal_array_constructor_versioned

  -- * Wl_display
  , wl_display_connect
  , wl_display_get_registry
  , wl_display_dispatch
  , wl_display_get_error
  , wl_display_get_protocol_error
  , wl_display_flush
  , wl_display_roundtrip
  , wl_display_add_listener

  -- * Wl_registry
  , wl_registry_add_listener
  , wl_registry_bind

  -- * Wl_compositor
  , wl_compositor_create_surface
  , wl_compositor_create_region

  -- * Wl_shell, shell_surface
  , wl_shell_get_shell_surface

  -- * Wl_seat
  , wl_seat_add_listener
  , wl_output_add_listener
  , wl_touch_add_listener
  , wl_keyboard_add_listener

  -- * Everything else (uncategorized)
  , module X
  ) where

import           Wayland.Client.Interface      as X hiding ()
import           Generated.Wayland.Util.Safe   as X hiding ()
import           Generated.Wayland.Client.Safe as X hiding ()
