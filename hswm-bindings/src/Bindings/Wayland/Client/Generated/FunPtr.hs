{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.Client.Generated.FunPtr
    ( Bindings.Wayland.Client.Generated.FunPtr.wl_event_queue_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_marshal_array_flags
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_marshal_array
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_create
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_create_wrapper
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_wrapper_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_marshal_array_constructor
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_marshal_array_constructor_versioned
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_add_listener
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_get_listener
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_add_dispatcher
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_get_id
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_set_tag
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_get_tag
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_get_class
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_get_interface
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_get_display
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_set_queue
    , Bindings.Wayland.Client.Generated.FunPtr.wl_proxy_get_queue
    , Bindings.Wayland.Client.Generated.FunPtr.wl_event_queue_get_name
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_connect
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_connect_to_fd
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_disconnect
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_get_fd
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_dispatch
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_dispatch_queue
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_dispatch_timeout
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_dispatch_queue_timeout
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_dispatch_queue_pending
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_dispatch_pending
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_get_error
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_get_protocol_error
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_flush
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_roundtrip_queue
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_roundtrip
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_create_queue
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_create_queue_with_name
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_prepare_read_queue
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_prepare_read
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_cancel_read
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_read_events
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_set_max_buffer_size
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_add_listener
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_sync
    , Bindings.Wayland.Client.Generated.FunPtr.wl_display_get_registry
    , Bindings.Wayland.Client.Generated.FunPtr.wl_registry_add_listener
    , Bindings.Wayland.Client.Generated.FunPtr.wl_registry_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_registry_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_registry_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_registry_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_registry_bind
    , Bindings.Wayland.Client.Generated.FunPtr.wl_callback_add_listener
    , Bindings.Wayland.Client.Generated.FunPtr.wl_callback_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_callback_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_callback_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_callback_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_compositor_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_compositor_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_compositor_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_compositor_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_compositor_create_surface
    , Bindings.Wayland.Client.Generated.FunPtr.wl_compositor_create_region
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shm_pool_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shm_pool_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shm_pool_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shm_pool_create_buffer
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shm_pool_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shm_pool_resize
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shm_add_listener
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shm_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shm_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shm_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shm_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shm_create_pool
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shm_release
    , Bindings.Wayland.Client.Generated.FunPtr.wl_buffer_add_listener
    , Bindings.Wayland.Client.Generated.FunPtr.wl_buffer_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_buffer_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_buffer_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_buffer_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_offer_add_listener
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_offer_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_offer_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_offer_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_offer_accept
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_offer_receive
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_offer_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_offer_finish
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_offer_set_actions
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_source_add_listener
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_source_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_source_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_source_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_source_offer
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_source_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_source_set_actions
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_device_add_listener
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_device_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_device_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_device_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_device_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_device_start_drag
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_device_set_selection
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_device_release
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_device_manager_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_device_manager_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_device_manager_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_device_manager_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_device_manager_create_data_source
    , Bindings.Wayland.Client.Generated.FunPtr.wl_data_device_manager_get_data_device
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shell_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shell_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shell_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shell_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shell_get_shell_surface
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shell_surface_add_listener
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shell_surface_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shell_surface_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shell_surface_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shell_surface_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shell_surface_pong
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shell_surface_move
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shell_surface_resize
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shell_surface_set_toplevel
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shell_surface_set_transient
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shell_surface_set_fullscreen
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shell_surface_set_popup
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shell_surface_set_maximized
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shell_surface_set_title
    , Bindings.Wayland.Client.Generated.FunPtr.wl_shell_surface_set_class
    , Bindings.Wayland.Client.Generated.FunPtr.wl_surface_add_listener
    , Bindings.Wayland.Client.Generated.FunPtr.wl_surface_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_surface_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_surface_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_surface_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_surface_attach
    , Bindings.Wayland.Client.Generated.FunPtr.wl_surface_damage
    , Bindings.Wayland.Client.Generated.FunPtr.wl_surface_frame
    , Bindings.Wayland.Client.Generated.FunPtr.wl_surface_set_opaque_region
    , Bindings.Wayland.Client.Generated.FunPtr.wl_surface_set_input_region
    , Bindings.Wayland.Client.Generated.FunPtr.wl_surface_commit
    , Bindings.Wayland.Client.Generated.FunPtr.wl_surface_set_buffer_transform
    , Bindings.Wayland.Client.Generated.FunPtr.wl_surface_set_buffer_scale
    , Bindings.Wayland.Client.Generated.FunPtr.wl_surface_damage_buffer
    , Bindings.Wayland.Client.Generated.FunPtr.wl_surface_offset
    , Bindings.Wayland.Client.Generated.FunPtr.wl_seat_add_listener
    , Bindings.Wayland.Client.Generated.FunPtr.wl_seat_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_seat_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_seat_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_seat_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_seat_get_pointer
    , Bindings.Wayland.Client.Generated.FunPtr.wl_seat_get_keyboard
    , Bindings.Wayland.Client.Generated.FunPtr.wl_seat_get_touch
    , Bindings.Wayland.Client.Generated.FunPtr.wl_seat_release
    , Bindings.Wayland.Client.Generated.FunPtr.wl_pointer_add_listener
    , Bindings.Wayland.Client.Generated.FunPtr.wl_pointer_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_pointer_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_pointer_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_pointer_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_pointer_set_cursor
    , Bindings.Wayland.Client.Generated.FunPtr.wl_pointer_release
    , Bindings.Wayland.Client.Generated.FunPtr.wl_keyboard_add_listener
    , Bindings.Wayland.Client.Generated.FunPtr.wl_keyboard_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_keyboard_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_keyboard_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_keyboard_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_keyboard_release
    , Bindings.Wayland.Client.Generated.FunPtr.wl_touch_add_listener
    , Bindings.Wayland.Client.Generated.FunPtr.wl_touch_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_touch_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_touch_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_touch_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_touch_release
    , Bindings.Wayland.Client.Generated.FunPtr.wl_output_add_listener
    , Bindings.Wayland.Client.Generated.FunPtr.wl_output_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_output_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_output_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_output_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_output_release
    , Bindings.Wayland.Client.Generated.FunPtr.wl_region_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_region_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_region_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_region_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_region_add
    , Bindings.Wayland.Client.Generated.FunPtr.wl_region_subtract
    , Bindings.Wayland.Client.Generated.FunPtr.wl_subcompositor_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_subcompositor_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_subcompositor_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_subcompositor_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_subcompositor_get_subsurface
    , Bindings.Wayland.Client.Generated.FunPtr.wl_subsurface_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_subsurface_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_subsurface_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_subsurface_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_subsurface_set_position
    , Bindings.Wayland.Client.Generated.FunPtr.wl_subsurface_place_above
    , Bindings.Wayland.Client.Generated.FunPtr.wl_subsurface_place_below
    , Bindings.Wayland.Client.Generated.FunPtr.wl_subsurface_set_sync
    , Bindings.Wayland.Client.Generated.FunPtr.wl_subsurface_set_desync
    , Bindings.Wayland.Client.Generated.FunPtr.wl_fixes_set_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_fixes_get_user_data
    , Bindings.Wayland.Client.Generated.FunPtr.wl_fixes_get_version
    , Bindings.Wayland.Client.Generated.FunPtr.wl_fixes_destroy
    , Bindings.Wayland.Client.Generated.FunPtr.wl_fixes_destroy_registry
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Wayland.Client.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <wayland-client-core.h>"
  , "#include <wayland-client-protocol.h>"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_event_queue_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_27c0c63c5a10fcdb (void)) ("
  , "  struct wl_event_queue *arg1"
  , ")"
  , "{"
  , "  return &wl_event_queue_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array_flags */"
  , "__attribute__ ((const))"
  , "struct wl_proxy *(*hs_bindgen_f58807e35c1250f1 (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_interface const *arg3,"
  , "  uint32_t arg4,"
  , "  uint32_t arg5,"
  , "  union wl_argument *arg6"
  , ")"
  , "{"
  , "  return &wl_proxy_marshal_array_flags;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_48d2bfd0345d523d (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  union wl_argument *arg3"
  , ")"
  , "{"
  , "  return &wl_proxy_marshal_array;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_create */"
  , "__attribute__ ((const))"
  , "struct wl_proxy *(*hs_bindgen_223cbf51fb77c4b1 (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  struct wl_interface const *arg2"
  , ")"
  , "{"
  , "  return &wl_proxy_create;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_create_wrapper */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_f2e617b415701416 (void)) ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_create_wrapper;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_wrapper_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a5468d4e2f3a7728 (void)) ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_wrapper_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array_constructor */"
  , "__attribute__ ((const))"
  , "struct wl_proxy *(*hs_bindgen_5ca8fb78671354ee (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  union wl_argument *arg3,"
  , "  struct wl_interface const *arg4"
  , ")"
  , "{"
  , "  return &wl_proxy_marshal_array_constructor;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array_constructor_versioned */"
  , "__attribute__ ((const))"
  , "struct wl_proxy *(*hs_bindgen_bd4dff2d771ea6f1 (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  union wl_argument *arg3,"
  , "  struct wl_interface const *arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  return &wl_proxy_marshal_array_constructor_versioned;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6b3ced326b9c74e4 (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_24474f2cfb961380 (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  void (**arg2) (void),"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_proxy_add_listener;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_listener */"
  , "__attribute__ ((const))"
  , "void const *(*hs_bindgen_991c1a4e9fa80fc1 (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_listener;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_add_dispatcher */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f1bba61122add5b1 (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  wl_dispatcher_func_t arg2,"
  , "  void const *arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return &wl_proxy_add_dispatcher;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f2acb3e874bef9e0 (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_proxy_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_4a5fb331b6bb6d34 (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_ffa0e62638e4dac6 (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_id */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_8899e514a1354255 (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_id;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_set_tag */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8db9f2f119e79d74 (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  char const *const *arg2"
  , ")"
  , "{"
  , "  return &wl_proxy_set_tag;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_tag */"
  , "__attribute__ ((const))"
  , "char const *const *(*hs_bindgen_9f23c4d5eff5c614 (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_tag;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_class */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_138065e8642cd9ca (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_class;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *(*hs_bindgen_5e55423cdf63ef37 (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_display */"
  , "__attribute__ ((const))"
  , "struct wl_display *(*hs_bindgen_1e422c159a5253c7 (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_display;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_set_queue */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3a94dce99dcf4df8 (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return &wl_proxy_set_queue;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_queue */"
  , "__attribute__ ((const))"
  , "struct wl_event_queue *(*hs_bindgen_c98f866a931682a3 (void)) ("
  , "  struct wl_proxy const *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_queue;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_event_queue_get_name */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_04cca8682fb34111 (void)) ("
  , "  struct wl_event_queue const *arg1"
  , ")"
  , "{"
  , "  return &wl_event_queue_get_name;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_connect */"
  , "__attribute__ ((const))"
  , "struct wl_display *(*hs_bindgen_d182558635442592 (void)) ("
  , "  char const *arg1"
  , ")"
  , "{"
  , "  return &wl_display_connect;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_connect_to_fd */"
  , "__attribute__ ((const))"
  , "struct wl_display *(*hs_bindgen_ea83c7960be791ef (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &wl_display_connect_to_fd;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_disconnect */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0d78d0a21de3b21b (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_disconnect;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_get_fd */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_85fa3d65a2ae5818 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_get_fd;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_dispatch */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e4477d563cc63ef7 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_dispatch;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_queue */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7fb3ac1de2fa779c (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return &wl_display_dispatch_queue;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_timeout */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d374a145e1c39bec (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct timespec const *arg2"
  , ")"
  , "{"
  , "  return &wl_display_dispatch_timeout;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_queue_timeout */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2e6e768ec2a6bc47 (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2,"
  , "  struct timespec const *arg3"
  , ")"
  , "{"
  , "  return &wl_display_dispatch_queue_timeout;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_queue_pending */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_603f0f9f708e6a90 (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return &wl_display_dispatch_queue_pending;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_pending */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ce5f15e1b3b40b57 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_dispatch_pending;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_get_error */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_136fbff7056867c3 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_get_error;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_get_protocol_error */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_eae2973af4ff55c4 (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct wl_interface const **arg2,"
  , "  uint32_t *arg3"
  , ")"
  , "{"
  , "  return &wl_display_get_protocol_error;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_flush */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dd1d5c9aedd2f4a1 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_flush;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_roundtrip_queue */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2e3af0998e8e9de5 (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return &wl_display_roundtrip_queue;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_roundtrip */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9b4691eb0e8a3667 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_roundtrip;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_create_queue */"
  , "__attribute__ ((const))"
  , "struct wl_event_queue *(*hs_bindgen_fe8f517f8b8c8478 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_create_queue;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_create_queue_with_name */"
  , "__attribute__ ((const))"
  , "struct wl_event_queue *(*hs_bindgen_051c34789c7ef9b7 (void)) ("
  , "  struct wl_display *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &wl_display_create_queue_with_name;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_prepare_read_queue */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a6a30a67f83a8f03 (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return &wl_display_prepare_read_queue;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_prepare_read */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1d877cebe554eb10 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_prepare_read;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_cancel_read */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_25bfa0369b787a07 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_cancel_read;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_read_events */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_35c5db4b0c7b6fd0 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_read_events;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_set_max_buffer_size */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_30690691969d03c8 (void)) ("
  , "  struct wl_display *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &wl_display_set_max_buffer_size;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1bfd4b9ca29b2ec3 (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct wl_display_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_display_add_listener;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b1adbe1f771be844 (void)) ("
  , "  struct wl_display *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_display_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_9b7f8934160fceab (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_9e4a77d12d221af0 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_sync */"
  , "__attribute__ ((const))"
  , "struct wl_callback *(*hs_bindgen_eb3da9ec0b59d5c3 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_sync;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_get_registry */"
  , "__attribute__ ((const))"
  , "struct wl_registry *(*hs_bindgen_0ac4bc0ae27b6ced (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_get_registry;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_registry_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5624ce5f60083d15 (void)) ("
  , "  struct wl_registry *arg1,"
  , "  struct wl_registry_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_registry_add_listener;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_registry_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_40436d94c6f526fa (void)) ("
  , "  struct wl_registry *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_registry_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_registry_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_f9cae662bc197b85 (void)) ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  return &wl_registry_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_registry_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_cf6bc326c803624e (void)) ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  return &wl_registry_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_registry_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2deccf832696862a (void)) ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  return &wl_registry_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_registry_bind */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_0bd4f5fa632ebda9 (void)) ("
  , "  struct wl_registry *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_interface const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &wl_registry_bind;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_callback_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7af0fc87978f5da4 (void)) ("
  , "  struct wl_callback *arg1,"
  , "  struct wl_callback_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_callback_add_listener;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_callback_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3f40b741076dc63c (void)) ("
  , "  struct wl_callback *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_callback_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_callback_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_78d704fadd75939f (void)) ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  return &wl_callback_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_callback_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_840ebd08f277bd92 (void)) ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  return &wl_callback_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_callback_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_985d97067ee7d3ba (void)) ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  return &wl_callback_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_compositor_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_86cb69092adf291c (void)) ("
  , "  struct wl_compositor *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_compositor_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_compositor_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_9b8a7b3cc6bc657d (void)) ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return &wl_compositor_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_compositor_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_ee37b8ae2f63ae41 (void)) ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return &wl_compositor_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_compositor_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_567ffebcaccaf618 (void)) ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return &wl_compositor_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_compositor_create_surface */"
  , "__attribute__ ((const))"
  , "struct wl_surface *(*hs_bindgen_99f263c8a1bb2ddd (void)) ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return &wl_compositor_create_surface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_compositor_create_region */"
  , "__attribute__ ((const))"
  , "struct wl_region *(*hs_bindgen_cb4a3749af2ba532 (void)) ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return &wl_compositor_create_region;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_pool_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f6aeb3581683438f (void)) ("
  , "  struct wl_shm_pool *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_shm_pool_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_pool_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_82fc01d90d06097b (void)) ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  return &wl_shm_pool_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_pool_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_602c5cc84a0a5a4d (void)) ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  return &wl_shm_pool_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_pool_create_buffer */"
  , "__attribute__ ((const))"
  , "struct wl_buffer *(*hs_bindgen_096b6a7a621ef605 (void)) ("
  , "  struct wl_shm_pool *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5,"
  , "  uint32_t arg6"
  , ")"
  , "{"
  , "  return &wl_shm_pool_create_buffer;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_pool_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e313841ec14c41b7 (void)) ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  return &wl_shm_pool_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_pool_resize */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0c7792e65b2f13d6 (void)) ("
  , "  struct wl_shm_pool *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  return &wl_shm_pool_resize;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ea1f164caa97b3c9 (void)) ("
  , "  struct wl_shm *arg1,"
  , "  struct wl_shm_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_shm_add_listener;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bb37ef8abacc5991 (void)) ("
  , "  struct wl_shm *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_shm_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_126a508f4989a517 (void)) ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return &wl_shm_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_21f15eeb8890b5db (void)) ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return &wl_shm_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d8fda80bb3d0cc42 (void)) ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return &wl_shm_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_create_pool */"
  , "__attribute__ ((const))"
  , "struct wl_shm_pool *(*hs_bindgen_083d68e6b26f0976 (void)) ("
  , "  struct wl_shm *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &wl_shm_create_pool;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_52be8f1725268517 (void)) ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return &wl_shm_release;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_buffer_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_25ad3a300459ecfc (void)) ("
  , "  struct wl_buffer *arg1,"
  , "  struct wl_buffer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_buffer_add_listener;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_buffer_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ad05a42a4aefa64b (void)) ("
  , "  struct wl_buffer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_buffer_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_buffer_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_61f85222221b7807 (void)) ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  return &wl_buffer_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_buffer_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_36685b798190e7ea (void)) ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  return &wl_buffer_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_buffer_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6c74b299009e8cc5 (void)) ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  return &wl_buffer_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5eb2d03941892e70 (void)) ("
  , "  struct wl_data_offer *arg1,"
  , "  struct wl_data_offer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_data_offer_add_listener;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a78d202c8aab448a (void)) ("
  , "  struct wl_data_offer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_data_offer_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_cf4d62dee9c49b73 (void)) ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return &wl_data_offer_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_e1c2eb3d2cf8ebab (void)) ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return &wl_data_offer_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_accept */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f4d99938a9113069 (void)) ("
  , "  struct wl_data_offer *arg1,"
  , "  uint32_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &wl_data_offer_accept;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_receive */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e0d4fd1f8b4fe2e8 (void)) ("
  , "  struct wl_data_offer *arg1,"
  , "  char const *arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &wl_data_offer_receive;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fb8835fa443ff413 (void)) ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return &wl_data_offer_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_finish */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4713fd1b54036462 (void)) ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return &wl_data_offer_finish;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_set_actions */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0ba77114dcff166a (void)) ("
  , "  struct wl_data_offer *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &wl_data_offer_set_actions;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e7c09880aa8d518d (void)) ("
  , "  struct wl_data_source *arg1,"
  , "  struct wl_data_source_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_data_source_add_listener;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_52e2f79ac6a0e008 (void)) ("
  , "  struct wl_data_source *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_data_source_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_bf503443ff9374f6 (void)) ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  return &wl_data_source_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_85604347d2b4001a (void)) ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  return &wl_data_source_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_offer */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3cbc207ee704af3e (void)) ("
  , "  struct wl_data_source *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &wl_data_source_offer;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f78b2a1f22ad800d (void)) ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  return &wl_data_source_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_set_actions */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_28b041a185a1fed7 (void)) ("
  , "  struct wl_data_source *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &wl_data_source_set_actions;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3be1106c3019a4da (void)) ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_device_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_data_device_add_listener;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2e04335750ed5980 (void)) ("
  , "  struct wl_data_device *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_data_device_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_67ada0a86bc8bd8a (void)) ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_9f9fc55f7cef236d (void)) ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_26cd60bb838456d5 (void)) ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_start_drag */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_27b3ce4a0fa8d033 (void)) ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_source *arg2,"
  , "  struct wl_surface *arg3,"
  , "  struct wl_surface *arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  return &wl_data_device_start_drag;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_set_selection */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0a430bd2dcf79a1b (void)) ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_source *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &wl_data_device_set_selection;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_eac284de3ce630c4 (void)) ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_release;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3e14e44977008160 (void)) ("
  , "  struct wl_data_device_manager *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_data_device_manager_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_f015d6e118aa70e7 (void)) ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_manager_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_ab36a8f26b28247d (void)) ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_manager_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4d92c68ba7760ec4 (void)) ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_manager_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_create_data_source */"
  , "__attribute__ ((const))"
  , "struct wl_data_source *(*hs_bindgen_a50c9530c35ca723 (void)) ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_manager_create_data_source;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_get_data_device */"
  , "__attribute__ ((const))"
  , "struct wl_data_device *(*hs_bindgen_d4b8ee4b159924ea (void)) ("
  , "  struct wl_data_device_manager *arg1,"
  , "  struct wl_seat *arg2"
  , ")"
  , "{"
  , "  return &wl_data_device_manager_get_data_device;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e770ce11ed068fbf (void)) ("
  , "  struct wl_shell *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_shell_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_5d05a0c0952536c1 (void)) ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  return &wl_shell_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_3b995957a70a931e (void)) ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  return &wl_shell_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8dade0b6274cd0c6 (void)) ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  return &wl_shell_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_get_shell_surface */"
  , "__attribute__ ((const))"
  , "struct wl_shell_surface *(*hs_bindgen_28b40fb3c28e8e54 (void)) ("
  , "  struct wl_shell *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &wl_shell_get_shell_surface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_af3858bccbcf2474 (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_shell_surface_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_shell_surface_add_listener;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0b20a1cfde7d7560 (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_21b80ff556525570 (void)) ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_shell_surface_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_152cdc304cbe78bc (void)) ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_shell_surface_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a649854358cc5d17 (void)) ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_shell_surface_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_pong */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9f3d4d885005b747 (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &wl_shell_surface_pong;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_move */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_39645614a3e16cf8 (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &wl_shell_surface_move;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_resize */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d4286cfa73a586e3 (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &wl_shell_surface_resize;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_toplevel */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_272372acea11263e (void)) ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_toplevel;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_transient */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d79a68ddefe4d991 (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_surface *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_transient;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_fullscreen */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a5b76466e9a5bd3c (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3,"
  , "  struct wl_output *arg4"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_fullscreen;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_popup */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b694ccd3619fed32 (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3,"
  , "  struct wl_surface *arg4,"
  , "  int32_t arg5,"
  , "  int32_t arg6,"
  , "  uint32_t arg7"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_popup;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_maximized */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_172db9e0e6a6619f (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_output *arg2"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_maximized;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_title */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a7e7470bfcd8de31 (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_title;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_class */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c9322f8d9953d46e (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_class;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f290b1db5674e724 (void)) ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_surface_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_surface_add_listener;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_02f6354e8dc43284 (void)) ("
  , "  struct wl_surface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_surface_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_d87fc6a1ccb08dc0 (void)) ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_surface_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_2f50e6a4e85ba39c (void)) ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_surface_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f5cd1c6d41807882 (void)) ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_surface_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_attach */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6cea11a38b73afc1 (void)) ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_buffer *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4"
  , ")"
  , "{"
  , "  return &wl_surface_attach;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_damage */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fbcfbd16b5ff372d (void)) ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &wl_surface_damage;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_frame */"
  , "__attribute__ ((const))"
  , "struct wl_callback *(*hs_bindgen_4c0157d30459a321 (void)) ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_surface_frame;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_set_opaque_region */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_08339869571f29af (void)) ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_region *arg2"
  , ")"
  , "{"
  , "  return &wl_surface_set_opaque_region;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_set_input_region */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f4a9e55766d03ae7 (void)) ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_region *arg2"
  , ")"
  , "{"
  , "  return &wl_surface_set_input_region;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_commit */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e71162eb00c1f17d (void)) ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_surface_commit;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_set_buffer_transform */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_600b541f7d426a75 (void)) ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  return &wl_surface_set_buffer_transform;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_set_buffer_scale */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_54ad2756ab720f22 (void)) ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  return &wl_surface_set_buffer_scale;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_damage_buffer */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1f84950729192aea (void)) ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &wl_surface_damage_buffer;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_offset */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_09a3336595fe6efe (void)) ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &wl_surface_offset;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_579c13f6a7b06438 (void)) ("
  , "  struct wl_seat *arg1,"
  , "  struct wl_seat_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_seat_add_listener;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e6f71f976fd88c0a (void)) ("
  , "  struct wl_seat *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_seat_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_34a274599cd21f64 (void)) ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return &wl_seat_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_3a2674bcf308a7d2 (void)) ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return &wl_seat_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9d2be8decc791d6b (void)) ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return &wl_seat_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_get_pointer */"
  , "__attribute__ ((const))"
  , "struct wl_pointer *(*hs_bindgen_310013482fd7d723 (void)) ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return &wl_seat_get_pointer;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_get_keyboard */"
  , "__attribute__ ((const))"
  , "struct wl_keyboard *(*hs_bindgen_ba69bdcdc30acac2 (void)) ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return &wl_seat_get_keyboard;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_get_touch */"
  , "__attribute__ ((const))"
  , "struct wl_touch *(*hs_bindgen_524fcf86125f1bce (void)) ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return &wl_seat_get_touch;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c8442799132a914a (void)) ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return &wl_seat_release;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bbbdbc0b35f7a59b (void)) ("
  , "  struct wl_pointer *arg1,"
  , "  struct wl_pointer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_pointer_add_listener;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_86c79bd3cf9ddb0f (void)) ("
  , "  struct wl_pointer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_pointer_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_639e08e0099bae0f (void)) ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return &wl_pointer_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_943558b7959924db (void)) ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return &wl_pointer_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2bdc815aaeb617a5 (void)) ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return &wl_pointer_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_set_cursor */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6eb2b45946c27e1d (void)) ("
  , "  struct wl_pointer *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_surface *arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &wl_pointer_set_cursor;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c6d8e266a2d391b8 (void)) ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return &wl_pointer_release;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_keyboard_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4ed1d0636cbf9aeb (void)) ("
  , "  struct wl_keyboard *arg1,"
  , "  struct wl_keyboard_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_keyboard_add_listener;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_keyboard_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9f00dfb046f84fa3 (void)) ("
  , "  struct wl_keyboard *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_keyboard_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_keyboard_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_dcf0602e6ee884e4 (void)) ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return &wl_keyboard_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_keyboard_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_23c8424f5f634f32 (void)) ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return &wl_keyboard_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_keyboard_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_cdd64ab1ba4d7465 (void)) ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return &wl_keyboard_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_keyboard_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b1f7fd6b8b01dd32 (void)) ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return &wl_keyboard_release;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_touch_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1d0d2ea57c7d9fd7 (void)) ("
  , "  struct wl_touch *arg1,"
  , "  struct wl_touch_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_touch_add_listener;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_touch_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_40de9a5a94382d0a (void)) ("
  , "  struct wl_touch *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_touch_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_touch_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_b30f8a9099345c3b (void)) ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return &wl_touch_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_touch_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_41ded62f24a7d574 (void)) ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return &wl_touch_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_touch_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_01a91562525555fe (void)) ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return &wl_touch_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_touch_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2fd421fc182f261c (void)) ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return &wl_touch_release;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_output_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_842a9fc6dfe1747c (void)) ("
  , "  struct wl_output *arg1,"
  , "  struct wl_output_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_output_add_listener;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_output_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_460e8b872985318d (void)) ("
  , "  struct wl_output *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_output_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_output_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_7c893c11ddc9f6a3 (void)) ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return &wl_output_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_output_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_2ee46fd82874d023 (void)) ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return &wl_output_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_output_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f47540357ea631f1 (void)) ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return &wl_output_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_output_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4d443725cde14e59 (void)) ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return &wl_output_release;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_region_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8783bbd04d22cacf (void)) ("
  , "  struct wl_region *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_region_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_region_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_5fa492c412a4c6ba (void)) ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  return &wl_region_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_region_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_2ae3ccc5e76b232d (void)) ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  return &wl_region_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_region_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_17fa4d0e17c69ce8 (void)) ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  return &wl_region_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_region_add */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e75acd0e0509b04b (void)) ("
  , "  struct wl_region *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &wl_region_add;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_region_subtract */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_197d394e2e5556cd (void)) ("
  , "  struct wl_region *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &wl_region_subtract;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subcompositor_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_39a8a9adb430d200 (void)) ("
  , "  struct wl_subcompositor *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_subcompositor_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subcompositor_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_05c6fb44d8ce526c (void)) ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  return &wl_subcompositor_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subcompositor_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_f41c5aa974edd8e8 (void)) ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  return &wl_subcompositor_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subcompositor_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_adedf14ad8be96c5 (void)) ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  return &wl_subcompositor_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subcompositor_get_subsurface */"
  , "__attribute__ ((const))"
  , "struct wl_subsurface *(*hs_bindgen_d36a22a3e0023391 (void)) ("
  , "  struct wl_subcompositor *arg1,"
  , "  struct wl_surface *arg2,"
  , "  struct wl_surface *arg3"
  , ")"
  , "{"
  , "  return &wl_subcompositor_get_subsurface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_68cd71eba11421ac (void)) ("
  , "  struct wl_subsurface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_subsurface_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_af3751dd11953a44 (void)) ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return &wl_subsurface_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_80bf41fec25b0d3c (void)) ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return &wl_subsurface_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_44a7f26684ddc26a (void)) ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return &wl_subsurface_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_position */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_539b906bd54a9384 (void)) ("
  , "  struct wl_subsurface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &wl_subsurface_set_position;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_place_above */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f1010b241233c3f1 (void)) ("
  , "  struct wl_subsurface *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &wl_subsurface_place_above;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_place_below */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_95e73214832c00e9 (void)) ("
  , "  struct wl_subsurface *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &wl_subsurface_place_below;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_sync */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_826f900629f1a9dd (void)) ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return &wl_subsurface_set_sync;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_desync */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_51aafb9f1ffdffb2 (void)) ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return &wl_subsurface_set_desync;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_fixes_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_cdaef4bc4f6d0ce1 (void)) ("
  , "  struct wl_fixes *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_fixes_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_fixes_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_a168c0f18e09ec7a (void)) ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  return &wl_fixes_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_fixes_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_439cb1a213255d9f (void)) ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  return &wl_fixes_get_version;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_fixes_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6bb7a547abfe90f6 (void)) ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  return &wl_fixes_destroy;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_fixes_destroy_registry */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3627142dba3db7b8 (void)) ("
  , "  struct wl_fixes *arg1,"
  , "  struct wl_registry *arg2"
  , ")"
  , "{"
  , "  return &wl_fixes_destroy_registry;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_event_queue_destroy@
foreign import ccall unsafe "hs_bindgen_27c0c63c5a10fcdb" hs_bindgen_27c0c63c5a10fcdb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_event_queue_destroy@
hs_bindgen_27c0c63c5a10fcdb :: IO (RIP.FunPtr (RIP.Ptr Wl_event_queue -> IO ()))
hs_bindgen_27c0c63c5a10fcdb =
  RIP.fromFFIType hs_bindgen_27c0c63c5a10fcdb_base

{-# NOINLINE wl_event_queue_destroy #-}
{-| __C declaration:__ @wl_event_queue_destroy@

    __defined at:__ @wayland-client-core.h 130:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_event_queue_destroy :: RIP.FunPtr (RIP.Ptr Wl_event_queue -> IO ())
wl_event_queue_destroy =
  RIP.unsafePerformIO hs_bindgen_27c0c63c5a10fcdb

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array_flags@
foreign import ccall unsafe "hs_bindgen_f58807e35c1250f1" hs_bindgen_f58807e35c1250f1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array_flags@
hs_bindgen_f58807e35c1250f1 :: IO (RIP.FunPtr (RIP.Ptr Wl_proxy -> HsBindgen.Runtime.LibC.Word32 -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument -> IO (RIP.Ptr Wl_proxy)))
hs_bindgen_f58807e35c1250f1 =
  RIP.fromFFIType hs_bindgen_f58807e35c1250f1_base

{-# NOINLINE wl_proxy_marshal_array_flags #-}
{-| __C declaration:__ @wl_proxy_marshal_array_flags@

    __defined at:__ @wayland-client-core.h 139:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_marshal_array_flags :: RIP.FunPtr (RIP.Ptr Wl_proxy -> HsBindgen.Runtime.LibC.Word32 -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument -> IO (RIP.Ptr Wl_proxy))
wl_proxy_marshal_array_flags =
  RIP.unsafePerformIO hs_bindgen_f58807e35c1250f1

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array@
foreign import ccall unsafe "hs_bindgen_48d2bfd0345d523d" hs_bindgen_48d2bfd0345d523d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array@
hs_bindgen_48d2bfd0345d523d :: IO (RIP.FunPtr (RIP.Ptr Wl_proxy -> HsBindgen.Runtime.LibC.Word32 -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument -> IO ()))
hs_bindgen_48d2bfd0345d523d =
  RIP.fromFFIType hs_bindgen_48d2bfd0345d523d_base

{-# NOINLINE wl_proxy_marshal_array #-}
{-| __C declaration:__ @wl_proxy_marshal_array@

    __defined at:__ @wayland-client-core.h 149:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_marshal_array :: RIP.FunPtr (RIP.Ptr Wl_proxy -> HsBindgen.Runtime.LibC.Word32 -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument -> IO ())
wl_proxy_marshal_array =
  RIP.unsafePerformIO hs_bindgen_48d2bfd0345d523d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_create@
foreign import ccall unsafe "hs_bindgen_223cbf51fb77c4b1" hs_bindgen_223cbf51fb77c4b1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_create@
hs_bindgen_223cbf51fb77c4b1 :: IO (RIP.FunPtr (RIP.Ptr Wl_proxy -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface -> IO (RIP.Ptr Wl_proxy)))
hs_bindgen_223cbf51fb77c4b1 =
  RIP.fromFFIType hs_bindgen_223cbf51fb77c4b1_base

{-# NOINLINE wl_proxy_create #-}
{-| __C declaration:__ @wl_proxy_create@

    __defined at:__ @wayland-client-core.h 153:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_create :: RIP.FunPtr (RIP.Ptr Wl_proxy -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface -> IO (RIP.Ptr Wl_proxy))
wl_proxy_create =
  RIP.unsafePerformIO hs_bindgen_223cbf51fb77c4b1

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_create_wrapper@
foreign import ccall unsafe "hs_bindgen_f2e617b415701416" hs_bindgen_f2e617b415701416_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_create_wrapper@
hs_bindgen_f2e617b415701416 :: IO (RIP.FunPtr (RIP.Ptr RIP.Void -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_f2e617b415701416 =
  RIP.fromFFIType hs_bindgen_f2e617b415701416_base

{-# NOINLINE wl_proxy_create_wrapper #-}
{-| __C declaration:__ @wl_proxy_create_wrapper@

    __defined at:__ @wayland-client-core.h 157:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_create_wrapper :: RIP.FunPtr (RIP.Ptr RIP.Void -> IO (RIP.Ptr RIP.Void))
wl_proxy_create_wrapper =
  RIP.unsafePerformIO hs_bindgen_f2e617b415701416

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_wrapper_destroy@
foreign import ccall unsafe "hs_bindgen_a5468d4e2f3a7728" hs_bindgen_a5468d4e2f3a7728_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_wrapper_destroy@
hs_bindgen_a5468d4e2f3a7728 :: IO (RIP.FunPtr (RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_a5468d4e2f3a7728 =
  RIP.fromFFIType hs_bindgen_a5468d4e2f3a7728_base

{-# NOINLINE wl_proxy_wrapper_destroy #-}
{-| __C declaration:__ @wl_proxy_wrapper_destroy@

    __defined at:__ @wayland-client-core.h 160:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_wrapper_destroy :: RIP.FunPtr (RIP.Ptr RIP.Void -> IO ())
wl_proxy_wrapper_destroy =
  RIP.unsafePerformIO hs_bindgen_a5468d4e2f3a7728

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array_constructor@
foreign import ccall unsafe "hs_bindgen_5ca8fb78671354ee" hs_bindgen_5ca8fb78671354ee_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array_constructor@
hs_bindgen_5ca8fb78671354ee :: IO (RIP.FunPtr (RIP.Ptr Wl_proxy -> HsBindgen.Runtime.LibC.Word32 -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface -> IO (RIP.Ptr Wl_proxy)))
hs_bindgen_5ca8fb78671354ee =
  RIP.fromFFIType hs_bindgen_5ca8fb78671354ee_base

{-# NOINLINE wl_proxy_marshal_array_constructor #-}
{-| __C declaration:__ @wl_proxy_marshal_array_constructor@

    __defined at:__ @wayland-client-core.h 176:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_marshal_array_constructor :: RIP.FunPtr (RIP.Ptr Wl_proxy -> HsBindgen.Runtime.LibC.Word32 -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface -> IO (RIP.Ptr Wl_proxy))
wl_proxy_marshal_array_constructor =
  RIP.unsafePerformIO hs_bindgen_5ca8fb78671354ee

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array_constructor_versioned@
foreign import ccall unsafe "hs_bindgen_bd4dff2d771ea6f1" hs_bindgen_bd4dff2d771ea6f1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array_constructor_versioned@
hs_bindgen_bd4dff2d771ea6f1 :: IO (RIP.FunPtr (RIP.Ptr Wl_proxy -> HsBindgen.Runtime.LibC.Word32 -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr Wl_proxy)))
hs_bindgen_bd4dff2d771ea6f1 =
  RIP.fromFFIType hs_bindgen_bd4dff2d771ea6f1_base

{-# NOINLINE wl_proxy_marshal_array_constructor_versioned #-}
{-| __C declaration:__ @wl_proxy_marshal_array_constructor_versioned@

    __defined at:__ @wayland-client-core.h 181:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_marshal_array_constructor_versioned :: RIP.FunPtr (RIP.Ptr Wl_proxy -> HsBindgen.Runtime.LibC.Word32 -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr Wl_proxy))
wl_proxy_marshal_array_constructor_versioned =
  RIP.unsafePerformIO hs_bindgen_bd4dff2d771ea6f1

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_destroy@
foreign import ccall unsafe "hs_bindgen_6b3ced326b9c74e4" hs_bindgen_6b3ced326b9c74e4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_destroy@
hs_bindgen_6b3ced326b9c74e4 :: IO (RIP.FunPtr (RIP.Ptr Wl_proxy -> IO ()))
hs_bindgen_6b3ced326b9c74e4 =
  RIP.fromFFIType hs_bindgen_6b3ced326b9c74e4_base

{-# NOINLINE wl_proxy_destroy #-}
{-| __C declaration:__ @wl_proxy_destroy@

    __defined at:__ @wayland-client-core.h 188:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_destroy :: RIP.FunPtr (RIP.Ptr Wl_proxy -> IO ())
wl_proxy_destroy =
  RIP.unsafePerformIO hs_bindgen_6b3ced326b9c74e4

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_add_listener@
foreign import ccall unsafe "hs_bindgen_24474f2cfb961380" hs_bindgen_24474f2cfb961380_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_add_listener@
hs_bindgen_24474f2cfb961380 :: IO (RIP.FunPtr (RIP.Ptr Wl_proxy -> RIP.Ptr (RIP.FunPtr (IO ())) -> RIP.Ptr RIP.Void -> IO RIP.CInt))
hs_bindgen_24474f2cfb961380 =
  RIP.fromFFIType hs_bindgen_24474f2cfb961380_base

{-# NOINLINE wl_proxy_add_listener #-}
{-| __C declaration:__ @wl_proxy_add_listener@

    __defined at:__ @wayland-client-core.h 191:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_add_listener :: RIP.FunPtr (RIP.Ptr Wl_proxy -> RIP.Ptr (RIP.FunPtr (IO ())) -> RIP.Ptr RIP.Void -> IO RIP.CInt)
wl_proxy_add_listener =
  RIP.unsafePerformIO hs_bindgen_24474f2cfb961380

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_listener@
foreign import ccall unsafe "hs_bindgen_991c1a4e9fa80fc1" hs_bindgen_991c1a4e9fa80fc1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_listener@
hs_bindgen_991c1a4e9fa80fc1 :: IO (RIP.FunPtr (RIP.Ptr Wl_proxy -> IO (PtrConst.PtrConst RIP.Void)))
hs_bindgen_991c1a4e9fa80fc1 =
  RIP.fromFFIType hs_bindgen_991c1a4e9fa80fc1_base

{-# NOINLINE wl_proxy_get_listener #-}
{-| __C declaration:__ @wl_proxy_get_listener@

    __defined at:__ @wayland-client-core.h 195:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_listener :: RIP.FunPtr (RIP.Ptr Wl_proxy -> IO (PtrConst.PtrConst RIP.Void))
wl_proxy_get_listener =
  RIP.unsafePerformIO hs_bindgen_991c1a4e9fa80fc1

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_add_dispatcher@
foreign import ccall unsafe "hs_bindgen_f1bba61122add5b1" hs_bindgen_f1bba61122add5b1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_add_dispatcher@
hs_bindgen_f1bba61122add5b1 :: IO (RIP.FunPtr (RIP.Ptr Wl_proxy -> Bindings.Wayland.Util.Generated.Wl_dispatcher_func_t -> PtrConst.PtrConst RIP.Void -> RIP.Ptr RIP.Void -> IO RIP.CInt))
hs_bindgen_f1bba61122add5b1 =
  RIP.fromFFIType hs_bindgen_f1bba61122add5b1_base

{-# NOINLINE wl_proxy_add_dispatcher #-}
{-| __C declaration:__ @wl_proxy_add_dispatcher@

    __defined at:__ @wayland-client-core.h 198:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_add_dispatcher :: RIP.FunPtr (RIP.Ptr Wl_proxy -> Bindings.Wayland.Util.Generated.Wl_dispatcher_func_t -> PtrConst.PtrConst RIP.Void -> RIP.Ptr RIP.Void -> IO RIP.CInt)
wl_proxy_add_dispatcher =
  RIP.unsafePerformIO hs_bindgen_f1bba61122add5b1

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_set_user_data@
foreign import ccall unsafe "hs_bindgen_f2acb3e874bef9e0" hs_bindgen_f2acb3e874bef9e0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_set_user_data@
hs_bindgen_f2acb3e874bef9e0 :: IO (RIP.FunPtr (RIP.Ptr Wl_proxy -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_f2acb3e874bef9e0 =
  RIP.fromFFIType hs_bindgen_f2acb3e874bef9e0_base

{-# NOINLINE wl_proxy_set_user_data #-}
{-| __C declaration:__ @wl_proxy_set_user_data@

    __defined at:__ @wayland-client-core.h 203:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_proxy -> RIP.Ptr RIP.Void -> IO ())
wl_proxy_set_user_data =
  RIP.unsafePerformIO hs_bindgen_f2acb3e874bef9e0

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_user_data@
foreign import ccall unsafe "hs_bindgen_4a5fb331b6bb6d34" hs_bindgen_4a5fb331b6bb6d34_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_user_data@
hs_bindgen_4a5fb331b6bb6d34 :: IO (RIP.FunPtr (RIP.Ptr Wl_proxy -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_4a5fb331b6bb6d34 =
  RIP.fromFFIType hs_bindgen_4a5fb331b6bb6d34_base

{-# NOINLINE wl_proxy_get_user_data #-}
{-| __C declaration:__ @wl_proxy_get_user_data@

    __defined at:__ @wayland-client-core.h 206:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_proxy -> IO (RIP.Ptr RIP.Void))
wl_proxy_get_user_data =
  RIP.unsafePerformIO hs_bindgen_4a5fb331b6bb6d34

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_version@
foreign import ccall unsafe "hs_bindgen_ffa0e62638e4dac6" hs_bindgen_ffa0e62638e4dac6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_version@
hs_bindgen_ffa0e62638e4dac6 :: IO (RIP.FunPtr (RIP.Ptr Wl_proxy -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_ffa0e62638e4dac6 =
  RIP.fromFFIType hs_bindgen_ffa0e62638e4dac6_base

{-# NOINLINE wl_proxy_get_version #-}
{-| __C declaration:__ @wl_proxy_get_version@

    __defined at:__ @wayland-client-core.h 209:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_version :: RIP.FunPtr (RIP.Ptr Wl_proxy -> IO HsBindgen.Runtime.LibC.Word32)
wl_proxy_get_version =
  RIP.unsafePerformIO hs_bindgen_ffa0e62638e4dac6

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_id@
foreign import ccall unsafe "hs_bindgen_8899e514a1354255" hs_bindgen_8899e514a1354255_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_id@
hs_bindgen_8899e514a1354255 :: IO (RIP.FunPtr (RIP.Ptr Wl_proxy -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_8899e514a1354255 =
  RIP.fromFFIType hs_bindgen_8899e514a1354255_base

{-# NOINLINE wl_proxy_get_id #-}
{-| __C declaration:__ @wl_proxy_get_id@

    __defined at:__ @wayland-client-core.h 212:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_id :: RIP.FunPtr (RIP.Ptr Wl_proxy -> IO HsBindgen.Runtime.LibC.Word32)
wl_proxy_get_id =
  RIP.unsafePerformIO hs_bindgen_8899e514a1354255

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_set_tag@
foreign import ccall unsafe "hs_bindgen_8db9f2f119e79d74" hs_bindgen_8db9f2f119e79d74_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_set_tag@
hs_bindgen_8db9f2f119e79d74 :: IO (RIP.FunPtr (RIP.Ptr Wl_proxy -> PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_8db9f2f119e79d74 =
  RIP.fromFFIType hs_bindgen_8db9f2f119e79d74_base

{-# NOINLINE wl_proxy_set_tag #-}
{-| __C declaration:__ @wl_proxy_set_tag@

    __defined at:__ @wayland-client-core.h 215:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_set_tag :: RIP.FunPtr (RIP.Ptr Wl_proxy -> PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar) -> IO ())
wl_proxy_set_tag =
  RIP.unsafePerformIO hs_bindgen_8db9f2f119e79d74

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_tag@
foreign import ccall unsafe "hs_bindgen_9f23c4d5eff5c614" hs_bindgen_9f23c4d5eff5c614_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_tag@
hs_bindgen_9f23c4d5eff5c614 :: IO (RIP.FunPtr (RIP.Ptr Wl_proxy -> IO (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar))))
hs_bindgen_9f23c4d5eff5c614 =
  RIP.fromFFIType hs_bindgen_9f23c4d5eff5c614_base

{-# NOINLINE wl_proxy_get_tag #-}
{-| __C declaration:__ @wl_proxy_get_tag@

    __defined at:__ @wayland-client-core.h 219:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_tag :: RIP.FunPtr (RIP.Ptr Wl_proxy -> IO (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar)))
wl_proxy_get_tag =
  RIP.unsafePerformIO hs_bindgen_9f23c4d5eff5c614

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_class@
foreign import ccall unsafe "hs_bindgen_138065e8642cd9ca" hs_bindgen_138065e8642cd9ca_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_class@
hs_bindgen_138065e8642cd9ca :: IO (RIP.FunPtr (RIP.Ptr Wl_proxy -> IO (PtrConst.PtrConst RIP.CChar)))
hs_bindgen_138065e8642cd9ca =
  RIP.fromFFIType hs_bindgen_138065e8642cd9ca_base

{-# NOINLINE wl_proxy_get_class #-}
{-| __C declaration:__ @wl_proxy_get_class@

    __defined at:__ @wayland-client-core.h 222:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_class :: RIP.FunPtr (RIP.Ptr Wl_proxy -> IO (PtrConst.PtrConst RIP.CChar))
wl_proxy_get_class =
  RIP.unsafePerformIO hs_bindgen_138065e8642cd9ca

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_interface@
foreign import ccall unsafe "hs_bindgen_5e55423cdf63ef37" hs_bindgen_5e55423cdf63ef37_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_interface@
hs_bindgen_5e55423cdf63ef37 :: IO (RIP.FunPtr (RIP.Ptr Wl_proxy -> IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)))
hs_bindgen_5e55423cdf63ef37 =
  RIP.fromFFIType hs_bindgen_5e55423cdf63ef37_base

{-# NOINLINE wl_proxy_get_interface #-}
{-| __C declaration:__ @wl_proxy_get_interface@

    __defined at:__ @wayland-client-core.h 225:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_interface :: RIP.FunPtr (RIP.Ptr Wl_proxy -> IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface))
wl_proxy_get_interface =
  RIP.unsafePerformIO hs_bindgen_5e55423cdf63ef37

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_display@
foreign import ccall unsafe "hs_bindgen_1e422c159a5253c7" hs_bindgen_1e422c159a5253c7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_display@
hs_bindgen_1e422c159a5253c7 :: IO (RIP.FunPtr (RIP.Ptr Wl_proxy -> IO (RIP.Ptr Wl_display)))
hs_bindgen_1e422c159a5253c7 =
  RIP.fromFFIType hs_bindgen_1e422c159a5253c7_base

{-# NOINLINE wl_proxy_get_display #-}
{-| __C declaration:__ @wl_proxy_get_display@

    __defined at:__ @wayland-client-core.h 228:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_display :: RIP.FunPtr (RIP.Ptr Wl_proxy -> IO (RIP.Ptr Wl_display))
wl_proxy_get_display =
  RIP.unsafePerformIO hs_bindgen_1e422c159a5253c7

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_set_queue@
foreign import ccall unsafe "hs_bindgen_3a94dce99dcf4df8" hs_bindgen_3a94dce99dcf4df8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_set_queue@
hs_bindgen_3a94dce99dcf4df8 :: IO (RIP.FunPtr (RIP.Ptr Wl_proxy -> RIP.Ptr Wl_event_queue -> IO ()))
hs_bindgen_3a94dce99dcf4df8 =
  RIP.fromFFIType hs_bindgen_3a94dce99dcf4df8_base

{-# NOINLINE wl_proxy_set_queue #-}
{-| __C declaration:__ @wl_proxy_set_queue@

    __defined at:__ @wayland-client-core.h 231:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_set_queue :: RIP.FunPtr (RIP.Ptr Wl_proxy -> RIP.Ptr Wl_event_queue -> IO ())
wl_proxy_set_queue =
  RIP.unsafePerformIO hs_bindgen_3a94dce99dcf4df8

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_queue@
foreign import ccall unsafe "hs_bindgen_c98f866a931682a3" hs_bindgen_c98f866a931682a3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_proxy_get_queue@
hs_bindgen_c98f866a931682a3 :: IO (RIP.FunPtr (PtrConst.PtrConst Wl_proxy -> IO (RIP.Ptr Wl_event_queue)))
hs_bindgen_c98f866a931682a3 =
  RIP.fromFFIType hs_bindgen_c98f866a931682a3_base

{-# NOINLINE wl_proxy_get_queue #-}
{-| __C declaration:__ @wl_proxy_get_queue@

    __defined at:__ @wayland-client-core.h 234:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_queue :: RIP.FunPtr (PtrConst.PtrConst Wl_proxy -> IO (RIP.Ptr Wl_event_queue))
wl_proxy_get_queue =
  RIP.unsafePerformIO hs_bindgen_c98f866a931682a3

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_event_queue_get_name@
foreign import ccall unsafe "hs_bindgen_04cca8682fb34111" hs_bindgen_04cca8682fb34111_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_event_queue_get_name@
hs_bindgen_04cca8682fb34111 :: IO (RIP.FunPtr (PtrConst.PtrConst Wl_event_queue -> IO (PtrConst.PtrConst RIP.CChar)))
hs_bindgen_04cca8682fb34111 =
  RIP.fromFFIType hs_bindgen_04cca8682fb34111_base

{-# NOINLINE wl_event_queue_get_name #-}
{-| __C declaration:__ @wl_event_queue_get_name@

    __defined at:__ @wayland-client-core.h 237:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_event_queue_get_name :: RIP.FunPtr (PtrConst.PtrConst Wl_event_queue -> IO (PtrConst.PtrConst RIP.CChar))
wl_event_queue_get_name =
  RIP.unsafePerformIO hs_bindgen_04cca8682fb34111

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_connect@
foreign import ccall unsafe "hs_bindgen_d182558635442592" hs_bindgen_d182558635442592_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_connect@
hs_bindgen_d182558635442592 :: IO (RIP.FunPtr (PtrConst.PtrConst RIP.CChar -> IO (RIP.Ptr Wl_display)))
hs_bindgen_d182558635442592 =
  RIP.fromFFIType hs_bindgen_d182558635442592_base

{-# NOINLINE wl_display_connect #-}
{-| __C declaration:__ @wl_display_connect@

    __defined at:__ @wayland-client-core.h 240:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_connect :: RIP.FunPtr (PtrConst.PtrConst RIP.CChar -> IO (RIP.Ptr Wl_display))
wl_display_connect =
  RIP.unsafePerformIO hs_bindgen_d182558635442592

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_connect_to_fd@
foreign import ccall unsafe "hs_bindgen_ea83c7960be791ef" hs_bindgen_ea83c7960be791ef_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_connect_to_fd@
hs_bindgen_ea83c7960be791ef :: IO (RIP.FunPtr (RIP.CInt -> IO (RIP.Ptr Wl_display)))
hs_bindgen_ea83c7960be791ef =
  RIP.fromFFIType hs_bindgen_ea83c7960be791ef_base

{-# NOINLINE wl_display_connect_to_fd #-}
{-| __C declaration:__ @wl_display_connect_to_fd@

    __defined at:__ @wayland-client-core.h 243:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_connect_to_fd :: RIP.FunPtr (RIP.CInt -> IO (RIP.Ptr Wl_display))
wl_display_connect_to_fd =
  RIP.unsafePerformIO hs_bindgen_ea83c7960be791ef

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_disconnect@
foreign import ccall unsafe "hs_bindgen_0d78d0a21de3b21b" hs_bindgen_0d78d0a21de3b21b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_disconnect@
hs_bindgen_0d78d0a21de3b21b :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> IO ()))
hs_bindgen_0d78d0a21de3b21b =
  RIP.fromFFIType hs_bindgen_0d78d0a21de3b21b_base

{-# NOINLINE wl_display_disconnect #-}
{-| __C declaration:__ @wl_display_disconnect@

    __defined at:__ @wayland-client-core.h 246:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_disconnect :: RIP.FunPtr (RIP.Ptr Wl_display -> IO ())
wl_display_disconnect =
  RIP.unsafePerformIO hs_bindgen_0d78d0a21de3b21b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_get_fd@
foreign import ccall unsafe "hs_bindgen_85fa3d65a2ae5818" hs_bindgen_85fa3d65a2ae5818_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_get_fd@
hs_bindgen_85fa3d65a2ae5818 :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> IO RIP.CInt))
hs_bindgen_85fa3d65a2ae5818 =
  RIP.fromFFIType hs_bindgen_85fa3d65a2ae5818_base

{-# NOINLINE wl_display_get_fd #-}
{-| __C declaration:__ @wl_display_get_fd@

    __defined at:__ @wayland-client-core.h 249:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_get_fd :: RIP.FunPtr (RIP.Ptr Wl_display -> IO RIP.CInt)
wl_display_get_fd =
  RIP.unsafePerformIO hs_bindgen_85fa3d65a2ae5818

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_dispatch@
foreign import ccall unsafe "hs_bindgen_e4477d563cc63ef7" hs_bindgen_e4477d563cc63ef7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_dispatch@
hs_bindgen_e4477d563cc63ef7 :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> IO RIP.CInt))
hs_bindgen_e4477d563cc63ef7 =
  RIP.fromFFIType hs_bindgen_e4477d563cc63ef7_base

{-# NOINLINE wl_display_dispatch #-}
{-| __C declaration:__ @wl_display_dispatch@

    __defined at:__ @wayland-client-core.h 252:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_dispatch :: RIP.FunPtr (RIP.Ptr Wl_display -> IO RIP.CInt)
wl_display_dispatch =
  RIP.unsafePerformIO hs_bindgen_e4477d563cc63ef7

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_queue@
foreign import ccall unsafe "hs_bindgen_7fb3ac1de2fa779c" hs_bindgen_7fb3ac1de2fa779c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_queue@
hs_bindgen_7fb3ac1de2fa779c :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> RIP.Ptr Wl_event_queue -> IO RIP.CInt))
hs_bindgen_7fb3ac1de2fa779c =
  RIP.fromFFIType hs_bindgen_7fb3ac1de2fa779c_base

{-# NOINLINE wl_display_dispatch_queue #-}
{-| __C declaration:__ @wl_display_dispatch_queue@

    __defined at:__ @wayland-client-core.h 255:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_dispatch_queue :: RIP.FunPtr (RIP.Ptr Wl_display -> RIP.Ptr Wl_event_queue -> IO RIP.CInt)
wl_display_dispatch_queue =
  RIP.unsafePerformIO hs_bindgen_7fb3ac1de2fa779c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_timeout@
foreign import ccall unsafe "hs_bindgen_d374a145e1c39bec" hs_bindgen_d374a145e1c39bec_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_timeout@
hs_bindgen_d374a145e1c39bec :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> PtrConst.PtrConst Timespec -> IO RIP.CInt))
hs_bindgen_d374a145e1c39bec =
  RIP.fromFFIType hs_bindgen_d374a145e1c39bec_base

{-# NOINLINE wl_display_dispatch_timeout #-}
{-| __C declaration:__ @wl_display_dispatch_timeout@

    __defined at:__ @wayland-client-core.h 259:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_dispatch_timeout :: RIP.FunPtr (RIP.Ptr Wl_display -> PtrConst.PtrConst Timespec -> IO RIP.CInt)
wl_display_dispatch_timeout =
  RIP.unsafePerformIO hs_bindgen_d374a145e1c39bec

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_queue_timeout@
foreign import ccall unsafe "hs_bindgen_2e6e768ec2a6bc47" hs_bindgen_2e6e768ec2a6bc47_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_queue_timeout@
hs_bindgen_2e6e768ec2a6bc47 :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> RIP.Ptr Wl_event_queue -> PtrConst.PtrConst Timespec -> IO RIP.CInt))
hs_bindgen_2e6e768ec2a6bc47 =
  RIP.fromFFIType hs_bindgen_2e6e768ec2a6bc47_base

{-# NOINLINE wl_display_dispatch_queue_timeout #-}
{-| __C declaration:__ @wl_display_dispatch_queue_timeout@

    __defined at:__ @wayland-client-core.h 263:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_dispatch_queue_timeout :: RIP.FunPtr (RIP.Ptr Wl_display -> RIP.Ptr Wl_event_queue -> PtrConst.PtrConst Timespec -> IO RIP.CInt)
wl_display_dispatch_queue_timeout =
  RIP.unsafePerformIO hs_bindgen_2e6e768ec2a6bc47

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_queue_pending@
foreign import ccall unsafe "hs_bindgen_603f0f9f708e6a90" hs_bindgen_603f0f9f708e6a90_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_queue_pending@
hs_bindgen_603f0f9f708e6a90 :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> RIP.Ptr Wl_event_queue -> IO RIP.CInt))
hs_bindgen_603f0f9f708e6a90 =
  RIP.fromFFIType hs_bindgen_603f0f9f708e6a90_base

{-# NOINLINE wl_display_dispatch_queue_pending #-}
{-| __C declaration:__ @wl_display_dispatch_queue_pending@

    __defined at:__ @wayland-client-core.h 268:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_dispatch_queue_pending :: RIP.FunPtr (RIP.Ptr Wl_display -> RIP.Ptr Wl_event_queue -> IO RIP.CInt)
wl_display_dispatch_queue_pending =
  RIP.unsafePerformIO hs_bindgen_603f0f9f708e6a90

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_pending@
foreign import ccall unsafe "hs_bindgen_ce5f15e1b3b40b57" hs_bindgen_ce5f15e1b3b40b57_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_pending@
hs_bindgen_ce5f15e1b3b40b57 :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> IO RIP.CInt))
hs_bindgen_ce5f15e1b3b40b57 =
  RIP.fromFFIType hs_bindgen_ce5f15e1b3b40b57_base

{-# NOINLINE wl_display_dispatch_pending #-}
{-| __C declaration:__ @wl_display_dispatch_pending@

    __defined at:__ @wayland-client-core.h 272:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_dispatch_pending :: RIP.FunPtr (RIP.Ptr Wl_display -> IO RIP.CInt)
wl_display_dispatch_pending =
  RIP.unsafePerformIO hs_bindgen_ce5f15e1b3b40b57

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_get_error@
foreign import ccall unsafe "hs_bindgen_136fbff7056867c3" hs_bindgen_136fbff7056867c3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_get_error@
hs_bindgen_136fbff7056867c3 :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> IO RIP.CInt))
hs_bindgen_136fbff7056867c3 =
  RIP.fromFFIType hs_bindgen_136fbff7056867c3_base

{-# NOINLINE wl_display_get_error #-}
{-| __C declaration:__ @wl_display_get_error@

    __defined at:__ @wayland-client-core.h 275:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_get_error :: RIP.FunPtr (RIP.Ptr Wl_display -> IO RIP.CInt)
wl_display_get_error =
  RIP.unsafePerformIO hs_bindgen_136fbff7056867c3

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_get_protocol_error@
foreign import ccall unsafe "hs_bindgen_eae2973af4ff55c4" hs_bindgen_eae2973af4ff55c4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_get_protocol_error@
hs_bindgen_eae2973af4ff55c4 :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> RIP.Ptr (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface) -> RIP.Ptr HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_eae2973af4ff55c4 =
  RIP.fromFFIType hs_bindgen_eae2973af4ff55c4_base

{-# NOINLINE wl_display_get_protocol_error #-}
{-| __C declaration:__ @wl_display_get_protocol_error@

    __defined at:__ @wayland-client-core.h 278:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_get_protocol_error :: RIP.FunPtr (RIP.Ptr Wl_display -> RIP.Ptr (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface) -> RIP.Ptr HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word32)
wl_display_get_protocol_error =
  RIP.unsafePerformIO hs_bindgen_eae2973af4ff55c4

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_flush@
foreign import ccall unsafe "hs_bindgen_dd1d5c9aedd2f4a1" hs_bindgen_dd1d5c9aedd2f4a1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_flush@
hs_bindgen_dd1d5c9aedd2f4a1 :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> IO RIP.CInt))
hs_bindgen_dd1d5c9aedd2f4a1 =
  RIP.fromFFIType hs_bindgen_dd1d5c9aedd2f4a1_base

{-# NOINLINE wl_display_flush #-}
{-| __C declaration:__ @wl_display_flush@

    __defined at:__ @wayland-client-core.h 283:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_flush :: RIP.FunPtr (RIP.Ptr Wl_display -> IO RIP.CInt)
wl_display_flush =
  RIP.unsafePerformIO hs_bindgen_dd1d5c9aedd2f4a1

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_roundtrip_queue@
foreign import ccall unsafe "hs_bindgen_2e3af0998e8e9de5" hs_bindgen_2e3af0998e8e9de5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_roundtrip_queue@
hs_bindgen_2e3af0998e8e9de5 :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> RIP.Ptr Wl_event_queue -> IO RIP.CInt))
hs_bindgen_2e3af0998e8e9de5 =
  RIP.fromFFIType hs_bindgen_2e3af0998e8e9de5_base

{-# NOINLINE wl_display_roundtrip_queue #-}
{-| __C declaration:__ @wl_display_roundtrip_queue@

    __defined at:__ @wayland-client-core.h 286:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_roundtrip_queue :: RIP.FunPtr (RIP.Ptr Wl_display -> RIP.Ptr Wl_event_queue -> IO RIP.CInt)
wl_display_roundtrip_queue =
  RIP.unsafePerformIO hs_bindgen_2e3af0998e8e9de5

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_roundtrip@
foreign import ccall unsafe "hs_bindgen_9b4691eb0e8a3667" hs_bindgen_9b4691eb0e8a3667_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_roundtrip@
hs_bindgen_9b4691eb0e8a3667 :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> IO RIP.CInt))
hs_bindgen_9b4691eb0e8a3667 =
  RIP.fromFFIType hs_bindgen_9b4691eb0e8a3667_base

{-# NOINLINE wl_display_roundtrip #-}
{-| __C declaration:__ @wl_display_roundtrip@

    __defined at:__ @wayland-client-core.h 290:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_roundtrip :: RIP.FunPtr (RIP.Ptr Wl_display -> IO RIP.CInt)
wl_display_roundtrip =
  RIP.unsafePerformIO hs_bindgen_9b4691eb0e8a3667

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_create_queue@
foreign import ccall unsafe "hs_bindgen_fe8f517f8b8c8478" hs_bindgen_fe8f517f8b8c8478_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_create_queue@
hs_bindgen_fe8f517f8b8c8478 :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> IO (RIP.Ptr Wl_event_queue)))
hs_bindgen_fe8f517f8b8c8478 =
  RIP.fromFFIType hs_bindgen_fe8f517f8b8c8478_base

{-# NOINLINE wl_display_create_queue #-}
{-| __C declaration:__ @wl_display_create_queue@

    __defined at:__ @wayland-client-core.h 293:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_create_queue :: RIP.FunPtr (RIP.Ptr Wl_display -> IO (RIP.Ptr Wl_event_queue))
wl_display_create_queue =
  RIP.unsafePerformIO hs_bindgen_fe8f517f8b8c8478

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_create_queue_with_name@
foreign import ccall unsafe "hs_bindgen_051c34789c7ef9b7" hs_bindgen_051c34789c7ef9b7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_create_queue_with_name@
hs_bindgen_051c34789c7ef9b7 :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> PtrConst.PtrConst RIP.CChar -> IO (RIP.Ptr Wl_event_queue)))
hs_bindgen_051c34789c7ef9b7 =
  RIP.fromFFIType hs_bindgen_051c34789c7ef9b7_base

{-# NOINLINE wl_display_create_queue_with_name #-}
{-| __C declaration:__ @wl_display_create_queue_with_name@

    __defined at:__ @wayland-client-core.h 296:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_create_queue_with_name :: RIP.FunPtr (RIP.Ptr Wl_display -> PtrConst.PtrConst RIP.CChar -> IO (RIP.Ptr Wl_event_queue))
wl_display_create_queue_with_name =
  RIP.unsafePerformIO hs_bindgen_051c34789c7ef9b7

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_prepare_read_queue@
foreign import ccall unsafe "hs_bindgen_a6a30a67f83a8f03" hs_bindgen_a6a30a67f83a8f03_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_prepare_read_queue@
hs_bindgen_a6a30a67f83a8f03 :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> RIP.Ptr Wl_event_queue -> IO RIP.CInt))
hs_bindgen_a6a30a67f83a8f03 =
  RIP.fromFFIType hs_bindgen_a6a30a67f83a8f03_base

{-# NOINLINE wl_display_prepare_read_queue #-}
{-| __C declaration:__ @wl_display_prepare_read_queue@

    __defined at:__ @wayland-client-core.h 300:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_prepare_read_queue :: RIP.FunPtr (RIP.Ptr Wl_display -> RIP.Ptr Wl_event_queue -> IO RIP.CInt)
wl_display_prepare_read_queue =
  RIP.unsafePerformIO hs_bindgen_a6a30a67f83a8f03

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_prepare_read@
foreign import ccall unsafe "hs_bindgen_1d877cebe554eb10" hs_bindgen_1d877cebe554eb10_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_prepare_read@
hs_bindgen_1d877cebe554eb10 :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> IO RIP.CInt))
hs_bindgen_1d877cebe554eb10 =
  RIP.fromFFIType hs_bindgen_1d877cebe554eb10_base

{-# NOINLINE wl_display_prepare_read #-}
{-| __C declaration:__ @wl_display_prepare_read@

    __defined at:__ @wayland-client-core.h 304:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_prepare_read :: RIP.FunPtr (RIP.Ptr Wl_display -> IO RIP.CInt)
wl_display_prepare_read =
  RIP.unsafePerformIO hs_bindgen_1d877cebe554eb10

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_cancel_read@
foreign import ccall unsafe "hs_bindgen_25bfa0369b787a07" hs_bindgen_25bfa0369b787a07_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_cancel_read@
hs_bindgen_25bfa0369b787a07 :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> IO ()))
hs_bindgen_25bfa0369b787a07 =
  RIP.fromFFIType hs_bindgen_25bfa0369b787a07_base

{-# NOINLINE wl_display_cancel_read #-}
{-| __C declaration:__ @wl_display_cancel_read@

    __defined at:__ @wayland-client-core.h 307:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_cancel_read :: RIP.FunPtr (RIP.Ptr Wl_display -> IO ())
wl_display_cancel_read =
  RIP.unsafePerformIO hs_bindgen_25bfa0369b787a07

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_read_events@
foreign import ccall unsafe "hs_bindgen_35c5db4b0c7b6fd0" hs_bindgen_35c5db4b0c7b6fd0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_read_events@
hs_bindgen_35c5db4b0c7b6fd0 :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> IO RIP.CInt))
hs_bindgen_35c5db4b0c7b6fd0 =
  RIP.fromFFIType hs_bindgen_35c5db4b0c7b6fd0_base

{-# NOINLINE wl_display_read_events #-}
{-| __C declaration:__ @wl_display_read_events@

    __defined at:__ @wayland-client-core.h 310:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_read_events :: RIP.FunPtr (RIP.Ptr Wl_display -> IO RIP.CInt)
wl_display_read_events =
  RIP.unsafePerformIO hs_bindgen_35c5db4b0c7b6fd0

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_set_max_buffer_size@
foreign import ccall unsafe "hs_bindgen_30690691969d03c8" hs_bindgen_30690691969d03c8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_set_max_buffer_size@
hs_bindgen_30690691969d03c8 :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> HsBindgen.Runtime.LibC.CSize -> IO ()))
hs_bindgen_30690691969d03c8 =
  RIP.fromFFIType hs_bindgen_30690691969d03c8_base

{-# NOINLINE wl_display_set_max_buffer_size #-}
{-| __C declaration:__ @wl_display_set_max_buffer_size@

    __defined at:__ @wayland-client-core.h 316:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_set_max_buffer_size :: RIP.FunPtr (RIP.Ptr Wl_display -> HsBindgen.Runtime.LibC.CSize -> IO ())
wl_display_set_max_buffer_size =
  RIP.unsafePerformIO hs_bindgen_30690691969d03c8

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_add_listener@
foreign import ccall unsafe "hs_bindgen_1bfd4b9ca29b2ec3" hs_bindgen_1bfd4b9ca29b2ec3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_add_listener@
hs_bindgen_1bfd4b9ca29b2ec3 :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> PtrConst.PtrConst Wl_display_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt))
hs_bindgen_1bfd4b9ca29b2ec3 =
  RIP.fromFFIType hs_bindgen_1bfd4b9ca29b2ec3_base

{-# NOINLINE wl_display_add_listener #-}
{-| __C declaration:__ @wl_display_add_listener@

    __defined at:__ @wayland-client-protocol.h 1037:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_add_listener :: RIP.FunPtr (RIP.Ptr Wl_display -> PtrConst.PtrConst Wl_display_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt)
wl_display_add_listener =
  RIP.unsafePerformIO hs_bindgen_1bfd4b9ca29b2ec3

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_set_user_data@
foreign import ccall unsafe "hs_bindgen_b1adbe1f771be844" hs_bindgen_b1adbe1f771be844_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_set_user_data@
hs_bindgen_b1adbe1f771be844 :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_b1adbe1f771be844 =
  RIP.fromFFIType hs_bindgen_b1adbe1f771be844_base

{-# NOINLINE wl_display_set_user_data #-}
{-| __C declaration:__ @wl_display_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1067:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_display -> RIP.Ptr RIP.Void -> IO ())
wl_display_set_user_data =
  RIP.unsafePerformIO hs_bindgen_b1adbe1f771be844

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_get_user_data@
foreign import ccall unsafe "hs_bindgen_9b7f8934160fceab" hs_bindgen_9b7f8934160fceab_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_get_user_data@
hs_bindgen_9b7f8934160fceab :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_9b7f8934160fceab =
  RIP.fromFFIType hs_bindgen_9b7f8934160fceab_base

{-# NOINLINE wl_display_get_user_data #-}
{-| __C declaration:__ @wl_display_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1074:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_display -> IO (RIP.Ptr RIP.Void))
wl_display_get_user_data =
  RIP.unsafePerformIO hs_bindgen_9b7f8934160fceab

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_get_version@
foreign import ccall unsafe "hs_bindgen_9e4a77d12d221af0" hs_bindgen_9e4a77d12d221af0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_get_version@
hs_bindgen_9e4a77d12d221af0 :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_9e4a77d12d221af0 =
  RIP.fromFFIType hs_bindgen_9e4a77d12d221af0_base

{-# NOINLINE wl_display_get_version #-}
{-| __C declaration:__ @wl_display_get_version@

    __defined at:__ @wayland-client-protocol.h 1080:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_get_version :: RIP.FunPtr (RIP.Ptr Wl_display -> IO HsBindgen.Runtime.LibC.Word32)
wl_display_get_version =
  RIP.unsafePerformIO hs_bindgen_9e4a77d12d221af0

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_sync@
foreign import ccall unsafe "hs_bindgen_eb3da9ec0b59d5c3" hs_bindgen_eb3da9ec0b59d5c3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_sync@
hs_bindgen_eb3da9ec0b59d5c3 :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> IO (RIP.Ptr Wl_callback)))
hs_bindgen_eb3da9ec0b59d5c3 =
  RIP.fromFFIType hs_bindgen_eb3da9ec0b59d5c3_base

{-# NOINLINE wl_display_sync #-}
{-| The sync request asks the server to emit the 'done' event on the returned wl_callback object. Since requests are handled in-order and events are delivered in-order, this can be used as a barrier to ensure all previous requests and the resulting events have been handled.

    The object returned by this request will be destroyed by the compositor after the callback is fired and as such the client must not attempt to use it after that point.

    The callback_data passed in the callback is undefined and should be ignored.

    __C declaration:__ @wl_display_sync@

    __defined at:__ @wayland-client-protocol.h 1101:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_sync :: RIP.FunPtr (RIP.Ptr Wl_display -> IO (RIP.Ptr Wl_callback))
wl_display_sync =
  RIP.unsafePerformIO hs_bindgen_eb3da9ec0b59d5c3

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_get_registry@
foreign import ccall unsafe "hs_bindgen_0ac4bc0ae27b6ced" hs_bindgen_0ac4bc0ae27b6ced_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_get_registry@
hs_bindgen_0ac4bc0ae27b6ced :: IO (RIP.FunPtr (RIP.Ptr Wl_display -> IO (RIP.Ptr Wl_registry)))
hs_bindgen_0ac4bc0ae27b6ced =
  RIP.fromFFIType hs_bindgen_0ac4bc0ae27b6ced_base

{-# NOINLINE wl_display_get_registry #-}
{-| This request creates a registry object that allows the client to list and bind the global objects available from the compositor.

    It should be noted that the server side resources consumed in response to a get_registry request can only be released when the client disconnects, not when the client side proxy is destroyed. Therefore, clients should invoke get_registry as infrequently as possible to avoid wasting memory.

    __C declaration:__ @wl_display_get_registry@

    __defined at:__ @wayland-client-protocol.h 1125:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_get_registry :: RIP.FunPtr (RIP.Ptr Wl_display -> IO (RIP.Ptr Wl_registry))
wl_display_get_registry =
  RIP.unsafePerformIO hs_bindgen_0ac4bc0ae27b6ced

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_registry_add_listener@
foreign import ccall unsafe "hs_bindgen_5624ce5f60083d15" hs_bindgen_5624ce5f60083d15_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_registry_add_listener@
hs_bindgen_5624ce5f60083d15 :: IO (RIP.FunPtr (RIP.Ptr Wl_registry -> PtrConst.PtrConst Wl_registry_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt))
hs_bindgen_5624ce5f60083d15 =
  RIP.fromFFIType hs_bindgen_5624ce5f60083d15_base

{-# NOINLINE wl_registry_add_listener #-}
{-| __C declaration:__ @wl_registry_add_listener@

    __defined at:__ @wayland-client-protocol.h 1181:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_registry_add_listener :: RIP.FunPtr (RIP.Ptr Wl_registry -> PtrConst.PtrConst Wl_registry_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt)
wl_registry_add_listener =
  RIP.unsafePerformIO hs_bindgen_5624ce5f60083d15

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_registry_set_user_data@
foreign import ccall unsafe "hs_bindgen_40436d94c6f526fa" hs_bindgen_40436d94c6f526fa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_registry_set_user_data@
hs_bindgen_40436d94c6f526fa :: IO (RIP.FunPtr (RIP.Ptr Wl_registry -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_40436d94c6f526fa =
  RIP.fromFFIType hs_bindgen_40436d94c6f526fa_base

{-# NOINLINE wl_registry_set_user_data #-}
{-| __C declaration:__ @wl_registry_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1206:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_registry_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_registry -> RIP.Ptr RIP.Void -> IO ())
wl_registry_set_user_data =
  RIP.unsafePerformIO hs_bindgen_40436d94c6f526fa

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_registry_get_user_data@
foreign import ccall unsafe "hs_bindgen_f9cae662bc197b85" hs_bindgen_f9cae662bc197b85_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_registry_get_user_data@
hs_bindgen_f9cae662bc197b85 :: IO (RIP.FunPtr (RIP.Ptr Wl_registry -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_f9cae662bc197b85 =
  RIP.fromFFIType hs_bindgen_f9cae662bc197b85_base

{-# NOINLINE wl_registry_get_user_data #-}
{-| __C declaration:__ @wl_registry_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1213:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_registry_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_registry -> IO (RIP.Ptr RIP.Void))
wl_registry_get_user_data =
  RIP.unsafePerformIO hs_bindgen_f9cae662bc197b85

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_registry_get_version@
foreign import ccall unsafe "hs_bindgen_cf6bc326c803624e" hs_bindgen_cf6bc326c803624e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_registry_get_version@
hs_bindgen_cf6bc326c803624e :: IO (RIP.FunPtr (RIP.Ptr Wl_registry -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_cf6bc326c803624e =
  RIP.fromFFIType hs_bindgen_cf6bc326c803624e_base

{-# NOINLINE wl_registry_get_version #-}
{-| __C declaration:__ @wl_registry_get_version@

    __defined at:__ @wayland-client-protocol.h 1219:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_registry_get_version :: RIP.FunPtr (RIP.Ptr Wl_registry -> IO HsBindgen.Runtime.LibC.Word32)
wl_registry_get_version =
  RIP.unsafePerformIO hs_bindgen_cf6bc326c803624e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_registry_destroy@
foreign import ccall unsafe "hs_bindgen_2deccf832696862a" hs_bindgen_2deccf832696862a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_registry_destroy@
hs_bindgen_2deccf832696862a :: IO (RIP.FunPtr (RIP.Ptr Wl_registry -> IO ()))
hs_bindgen_2deccf832696862a =
  RIP.fromFFIType hs_bindgen_2deccf832696862a_base

{-# NOINLINE wl_registry_destroy #-}
{-| __C declaration:__ @wl_registry_destroy@

    __defined at:__ @wayland-client-protocol.h 1226:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_registry_destroy :: RIP.FunPtr (RIP.Ptr Wl_registry -> IO ())
wl_registry_destroy =
  RIP.unsafePerformIO hs_bindgen_2deccf832696862a

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_registry_bind@
foreign import ccall unsafe "hs_bindgen_0bd4f5fa632ebda9" hs_bindgen_0bd4f5fa632ebda9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_registry_bind@
hs_bindgen_0bd4f5fa632ebda9 :: IO (RIP.FunPtr (RIP.Ptr Wl_registry -> HsBindgen.Runtime.LibC.Word32 -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_0bd4f5fa632ebda9 =
  RIP.fromFFIType hs_bindgen_0bd4f5fa632ebda9_base

{-# NOINLINE wl_registry_bind #-}
{-| Binds a new, client-created object to the server using the specified name as the identifier.

    __C declaration:__ @wl_registry_bind@

    __defined at:__ @wayland-client-protocol.h 1238:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_registry_bind :: RIP.FunPtr (RIP.Ptr Wl_registry -> HsBindgen.Runtime.LibC.Word32 -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr RIP.Void))
wl_registry_bind =
  RIP.unsafePerformIO hs_bindgen_0bd4f5fa632ebda9

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_callback_add_listener@
foreign import ccall unsafe "hs_bindgen_7af0fc87978f5da4" hs_bindgen_7af0fc87978f5da4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_callback_add_listener@
hs_bindgen_7af0fc87978f5da4 :: IO (RIP.FunPtr (RIP.Ptr Wl_callback -> PtrConst.PtrConst Wl_callback_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt))
hs_bindgen_7af0fc87978f5da4 =
  RIP.fromFFIType hs_bindgen_7af0fc87978f5da4_base

{-# NOINLINE wl_callback_add_listener #-}
{-| __C declaration:__ @wl_callback_add_listener@

    __defined at:__ @wayland-client-protocol.h 1268:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_callback_add_listener :: RIP.FunPtr (RIP.Ptr Wl_callback -> PtrConst.PtrConst Wl_callback_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt)
wl_callback_add_listener =
  RIP.unsafePerformIO hs_bindgen_7af0fc87978f5da4

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_callback_set_user_data@
foreign import ccall unsafe "hs_bindgen_3f40b741076dc63c" hs_bindgen_3f40b741076dc63c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_callback_set_user_data@
hs_bindgen_3f40b741076dc63c :: IO (RIP.FunPtr (RIP.Ptr Wl_callback -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_3f40b741076dc63c =
  RIP.fromFFIType hs_bindgen_3f40b741076dc63c_base

{-# NOINLINE wl_callback_set_user_data #-}
{-| __C declaration:__ @wl_callback_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1283:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_callback_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_callback -> RIP.Ptr RIP.Void -> IO ())
wl_callback_set_user_data =
  RIP.unsafePerformIO hs_bindgen_3f40b741076dc63c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_callback_get_user_data@
foreign import ccall unsafe "hs_bindgen_78d704fadd75939f" hs_bindgen_78d704fadd75939f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_callback_get_user_data@
hs_bindgen_78d704fadd75939f :: IO (RIP.FunPtr (RIP.Ptr Wl_callback -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_78d704fadd75939f =
  RIP.fromFFIType hs_bindgen_78d704fadd75939f_base

{-# NOINLINE wl_callback_get_user_data #-}
{-| __C declaration:__ @wl_callback_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1290:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_callback_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_callback -> IO (RIP.Ptr RIP.Void))
wl_callback_get_user_data =
  RIP.unsafePerformIO hs_bindgen_78d704fadd75939f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_callback_get_version@
foreign import ccall unsafe "hs_bindgen_840ebd08f277bd92" hs_bindgen_840ebd08f277bd92_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_callback_get_version@
hs_bindgen_840ebd08f277bd92 :: IO (RIP.FunPtr (RIP.Ptr Wl_callback -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_840ebd08f277bd92 =
  RIP.fromFFIType hs_bindgen_840ebd08f277bd92_base

{-# NOINLINE wl_callback_get_version #-}
{-| __C declaration:__ @wl_callback_get_version@

    __defined at:__ @wayland-client-protocol.h 1296:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_callback_get_version :: RIP.FunPtr (RIP.Ptr Wl_callback -> IO HsBindgen.Runtime.LibC.Word32)
wl_callback_get_version =
  RIP.unsafePerformIO hs_bindgen_840ebd08f277bd92

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_callback_destroy@
foreign import ccall unsafe "hs_bindgen_985d97067ee7d3ba" hs_bindgen_985d97067ee7d3ba_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_callback_destroy@
hs_bindgen_985d97067ee7d3ba :: IO (RIP.FunPtr (RIP.Ptr Wl_callback -> IO ()))
hs_bindgen_985d97067ee7d3ba =
  RIP.fromFFIType hs_bindgen_985d97067ee7d3ba_base

{-# NOINLINE wl_callback_destroy #-}
{-| __C declaration:__ @wl_callback_destroy@

    __defined at:__ @wayland-client-protocol.h 1303:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_callback_destroy :: RIP.FunPtr (RIP.Ptr Wl_callback -> IO ())
wl_callback_destroy =
  RIP.unsafePerformIO hs_bindgen_985d97067ee7d3ba

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_compositor_set_user_data@
foreign import ccall unsafe "hs_bindgen_86cb69092adf291c" hs_bindgen_86cb69092adf291c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_compositor_set_user_data@
hs_bindgen_86cb69092adf291c :: IO (RIP.FunPtr (RIP.Ptr Wl_compositor -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_86cb69092adf291c =
  RIP.fromFFIType hs_bindgen_86cb69092adf291c_base

{-# NOINLINE wl_compositor_set_user_data #-}
{-| __C declaration:__ @wl_compositor_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1323:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_compositor_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_compositor -> RIP.Ptr RIP.Void -> IO ())
wl_compositor_set_user_data =
  RIP.unsafePerformIO hs_bindgen_86cb69092adf291c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_compositor_get_user_data@
foreign import ccall unsafe "hs_bindgen_9b8a7b3cc6bc657d" hs_bindgen_9b8a7b3cc6bc657d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_compositor_get_user_data@
hs_bindgen_9b8a7b3cc6bc657d :: IO (RIP.FunPtr (RIP.Ptr Wl_compositor -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_9b8a7b3cc6bc657d =
  RIP.fromFFIType hs_bindgen_9b8a7b3cc6bc657d_base

{-# NOINLINE wl_compositor_get_user_data #-}
{-| __C declaration:__ @wl_compositor_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1330:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_compositor_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_compositor -> IO (RIP.Ptr RIP.Void))
wl_compositor_get_user_data =
  RIP.unsafePerformIO hs_bindgen_9b8a7b3cc6bc657d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_compositor_get_version@
foreign import ccall unsafe "hs_bindgen_ee37b8ae2f63ae41" hs_bindgen_ee37b8ae2f63ae41_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_compositor_get_version@
hs_bindgen_ee37b8ae2f63ae41 :: IO (RIP.FunPtr (RIP.Ptr Wl_compositor -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_ee37b8ae2f63ae41 =
  RIP.fromFFIType hs_bindgen_ee37b8ae2f63ae41_base

{-# NOINLINE wl_compositor_get_version #-}
{-| __C declaration:__ @wl_compositor_get_version@

    __defined at:__ @wayland-client-protocol.h 1336:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_compositor_get_version :: RIP.FunPtr (RIP.Ptr Wl_compositor -> IO HsBindgen.Runtime.LibC.Word32)
wl_compositor_get_version =
  RIP.unsafePerformIO hs_bindgen_ee37b8ae2f63ae41

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_compositor_destroy@
foreign import ccall unsafe "hs_bindgen_567ffebcaccaf618" hs_bindgen_567ffebcaccaf618_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_compositor_destroy@
hs_bindgen_567ffebcaccaf618 :: IO (RIP.FunPtr (RIP.Ptr Wl_compositor -> IO ()))
hs_bindgen_567ffebcaccaf618 =
  RIP.fromFFIType hs_bindgen_567ffebcaccaf618_base

{-# NOINLINE wl_compositor_destroy #-}
{-| __C declaration:__ @wl_compositor_destroy@

    __defined at:__ @wayland-client-protocol.h 1343:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_compositor_destroy :: RIP.FunPtr (RIP.Ptr Wl_compositor -> IO ())
wl_compositor_destroy =
  RIP.unsafePerformIO hs_bindgen_567ffebcaccaf618

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_compositor_create_surface@
foreign import ccall unsafe "hs_bindgen_99f263c8a1bb2ddd" hs_bindgen_99f263c8a1bb2ddd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_compositor_create_surface@
hs_bindgen_99f263c8a1bb2ddd :: IO (RIP.FunPtr (RIP.Ptr Wl_compositor -> IO (RIP.Ptr Wl_surface)))
hs_bindgen_99f263c8a1bb2ddd =
  RIP.fromFFIType hs_bindgen_99f263c8a1bb2ddd_base

{-# NOINLINE wl_compositor_create_surface #-}
{-| Ask the compositor to create a new surface.

    __C declaration:__ @wl_compositor_create_surface@

    __defined at:__ @wayland-client-protocol.h 1354:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_compositor_create_surface :: RIP.FunPtr (RIP.Ptr Wl_compositor -> IO (RIP.Ptr Wl_surface))
wl_compositor_create_surface =
  RIP.unsafePerformIO hs_bindgen_99f263c8a1bb2ddd

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_compositor_create_region@
foreign import ccall unsafe "hs_bindgen_cb4a3749af2ba532" hs_bindgen_cb4a3749af2ba532_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_compositor_create_region@
hs_bindgen_cb4a3749af2ba532 :: IO (RIP.FunPtr (RIP.Ptr Wl_compositor -> IO (RIP.Ptr Wl_region)))
hs_bindgen_cb4a3749af2ba532 =
  RIP.fromFFIType hs_bindgen_cb4a3749af2ba532_base

{-# NOINLINE wl_compositor_create_region #-}
{-| Ask the compositor to create a new region.

    __C declaration:__ @wl_compositor_create_region@

    __defined at:__ @wayland-client-protocol.h 1370:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_compositor_create_region :: RIP.FunPtr (RIP.Ptr Wl_compositor -> IO (RIP.Ptr Wl_region))
wl_compositor_create_region =
  RIP.unsafePerformIO hs_bindgen_cb4a3749af2ba532

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_pool_set_user_data@
foreign import ccall unsafe "hs_bindgen_f6aeb3581683438f" hs_bindgen_f6aeb3581683438f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_pool_set_user_data@
hs_bindgen_f6aeb3581683438f :: IO (RIP.FunPtr (RIP.Ptr Wl_shm_pool -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_f6aeb3581683438f =
  RIP.fromFFIType hs_bindgen_f6aeb3581683438f_base

{-# NOINLINE wl_shm_pool_set_user_data #-}
{-| __C declaration:__ @wl_shm_pool_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1400:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_shm_pool -> RIP.Ptr RIP.Void -> IO ())
wl_shm_pool_set_user_data =
  RIP.unsafePerformIO hs_bindgen_f6aeb3581683438f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_pool_get_user_data@
foreign import ccall unsafe "hs_bindgen_82fc01d90d06097b" hs_bindgen_82fc01d90d06097b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_pool_get_user_data@
hs_bindgen_82fc01d90d06097b :: IO (RIP.FunPtr (RIP.Ptr Wl_shm_pool -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_82fc01d90d06097b =
  RIP.fromFFIType hs_bindgen_82fc01d90d06097b_base

{-# NOINLINE wl_shm_pool_get_user_data #-}
{-| __C declaration:__ @wl_shm_pool_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1407:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_shm_pool -> IO (RIP.Ptr RIP.Void))
wl_shm_pool_get_user_data =
  RIP.unsafePerformIO hs_bindgen_82fc01d90d06097b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_pool_get_version@
foreign import ccall unsafe "hs_bindgen_602c5cc84a0a5a4d" hs_bindgen_602c5cc84a0a5a4d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_pool_get_version@
hs_bindgen_602c5cc84a0a5a4d :: IO (RIP.FunPtr (RIP.Ptr Wl_shm_pool -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_602c5cc84a0a5a4d =
  RIP.fromFFIType hs_bindgen_602c5cc84a0a5a4d_base

{-# NOINLINE wl_shm_pool_get_version #-}
{-| __C declaration:__ @wl_shm_pool_get_version@

    __defined at:__ @wayland-client-protocol.h 1413:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_get_version :: RIP.FunPtr (RIP.Ptr Wl_shm_pool -> IO HsBindgen.Runtime.LibC.Word32)
wl_shm_pool_get_version =
  RIP.unsafePerformIO hs_bindgen_602c5cc84a0a5a4d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_pool_create_buffer@
foreign import ccall unsafe "hs_bindgen_096b6a7a621ef605" hs_bindgen_096b6a7a621ef605_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_pool_create_buffer@
hs_bindgen_096b6a7a621ef605 :: IO (RIP.FunPtr (RIP.Ptr Wl_shm_pool -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr Wl_buffer)))
hs_bindgen_096b6a7a621ef605 =
  RIP.fromFFIType hs_bindgen_096b6a7a621ef605_base

{-# NOINLINE wl_shm_pool_create_buffer #-}
{-| Create a wl_buffer object from the pool.

    The buffer is created offset bytes into the pool and has width and height as specified. The stride argument specifies the number of bytes from the beginning of one row to the beginning of the next. The format is the pixel format of the buffer and must be one of those advertised through the wl_shm.format event.

    A buffer will keep a reference to the pool it was created from so it is valid to destroy the pool immediately after creating a buffer from it.

    __C declaration:__ @wl_shm_pool_create_buffer@

    __defined at:__ @wayland-client-protocol.h 1434:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_create_buffer :: RIP.FunPtr (RIP.Ptr Wl_shm_pool -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr Wl_buffer))
wl_shm_pool_create_buffer =
  RIP.unsafePerformIO hs_bindgen_096b6a7a621ef605

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_pool_destroy@
foreign import ccall unsafe "hs_bindgen_e313841ec14c41b7" hs_bindgen_e313841ec14c41b7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_pool_destroy@
hs_bindgen_e313841ec14c41b7 :: IO (RIP.FunPtr (RIP.Ptr Wl_shm_pool -> IO ()))
hs_bindgen_e313841ec14c41b7 =
  RIP.fromFFIType hs_bindgen_e313841ec14c41b7_base

{-# NOINLINE wl_shm_pool_destroy #-}
{-| Destroy the shared memory pool.

    The mmapped memory will be released when all buffers that have been created from this pool are gone.

    __C declaration:__ @wl_shm_pool_destroy@

    __defined at:__ @wayland-client-protocol.h 1454:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_destroy :: RIP.FunPtr (RIP.Ptr Wl_shm_pool -> IO ())
wl_shm_pool_destroy =
  RIP.unsafePerformIO hs_bindgen_e313841ec14c41b7

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_pool_resize@
foreign import ccall unsafe "hs_bindgen_0c7792e65b2f13d6" hs_bindgen_0c7792e65b2f13d6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_pool_resize@
hs_bindgen_0c7792e65b2f13d6 :: IO (RIP.FunPtr (RIP.Ptr Wl_shm_pool -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_0c7792e65b2f13d6 =
  RIP.fromFFIType hs_bindgen_0c7792e65b2f13d6_base

{-# NOINLINE wl_shm_pool_resize #-}
{-| This request will cause the server to remap the backing memory for the pool from the file descriptor passed when the pool was created, but using the new size. This request can only be used to make the pool bigger.

    This request only changes the amount of bytes that are mmapped by the server and does not touch the file corresponding to the file descriptor passed at creation time. It is the client's responsibility to ensure that the file is at least as big as the new pool size.

    __C declaration:__ @wl_shm_pool_resize@

    __defined at:__ @wayland-client-protocol.h 1475:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_resize :: RIP.FunPtr (RIP.Ptr Wl_shm_pool -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_shm_pool_resize =
  RIP.unsafePerformIO hs_bindgen_0c7792e65b2f13d6

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_add_listener@
foreign import ccall unsafe "hs_bindgen_ea1f164caa97b3c9" hs_bindgen_ea1f164caa97b3c9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_add_listener@
hs_bindgen_ea1f164caa97b3c9 :: IO (RIP.FunPtr (RIP.Ptr Wl_shm -> PtrConst.PtrConst Wl_shm_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt))
hs_bindgen_ea1f164caa97b3c9 =
  RIP.fromFFIType hs_bindgen_ea1f164caa97b3c9_base

{-# NOINLINE wl_shm_add_listener #-}
{-| __C declaration:__ @wl_shm_add_listener@

    __defined at:__ @wayland-client-protocol.h 2005:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_add_listener :: RIP.FunPtr (RIP.Ptr Wl_shm -> PtrConst.PtrConst Wl_shm_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt)
wl_shm_add_listener =
  RIP.unsafePerformIO hs_bindgen_ea1f164caa97b3c9

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_set_user_data@
foreign import ccall unsafe "hs_bindgen_bb37ef8abacc5991" hs_bindgen_bb37ef8abacc5991_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_set_user_data@
hs_bindgen_bb37ef8abacc5991 :: IO (RIP.FunPtr (RIP.Ptr Wl_shm -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_bb37ef8abacc5991 =
  RIP.fromFFIType hs_bindgen_bb37ef8abacc5991_base

{-# NOINLINE wl_shm_set_user_data #-}
{-| __C declaration:__ @wl_shm_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2031:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_shm -> RIP.Ptr RIP.Void -> IO ())
wl_shm_set_user_data =
  RIP.unsafePerformIO hs_bindgen_bb37ef8abacc5991

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_get_user_data@
foreign import ccall unsafe "hs_bindgen_126a508f4989a517" hs_bindgen_126a508f4989a517_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_get_user_data@
hs_bindgen_126a508f4989a517 :: IO (RIP.FunPtr (RIP.Ptr Wl_shm -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_126a508f4989a517 =
  RIP.fromFFIType hs_bindgen_126a508f4989a517_base

{-# NOINLINE wl_shm_get_user_data #-}
{-| __C declaration:__ @wl_shm_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2038:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_shm -> IO (RIP.Ptr RIP.Void))
wl_shm_get_user_data =
  RIP.unsafePerformIO hs_bindgen_126a508f4989a517

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_get_version@
foreign import ccall unsafe "hs_bindgen_21f15eeb8890b5db" hs_bindgen_21f15eeb8890b5db_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_get_version@
hs_bindgen_21f15eeb8890b5db :: IO (RIP.FunPtr (RIP.Ptr Wl_shm -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_21f15eeb8890b5db =
  RIP.fromFFIType hs_bindgen_21f15eeb8890b5db_base

{-# NOINLINE wl_shm_get_version #-}
{-| __C declaration:__ @wl_shm_get_version@

    __defined at:__ @wayland-client-protocol.h 2044:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_get_version :: RIP.FunPtr (RIP.Ptr Wl_shm -> IO HsBindgen.Runtime.LibC.Word32)
wl_shm_get_version =
  RIP.unsafePerformIO hs_bindgen_21f15eeb8890b5db

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_destroy@
foreign import ccall unsafe "hs_bindgen_d8fda80bb3d0cc42" hs_bindgen_d8fda80bb3d0cc42_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_destroy@
hs_bindgen_d8fda80bb3d0cc42 :: IO (RIP.FunPtr (RIP.Ptr Wl_shm -> IO ()))
hs_bindgen_d8fda80bb3d0cc42 =
  RIP.fromFFIType hs_bindgen_d8fda80bb3d0cc42_base

{-# NOINLINE wl_shm_destroy #-}
{-| __C declaration:__ @wl_shm_destroy@

    __defined at:__ @wayland-client-protocol.h 2051:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_destroy :: RIP.FunPtr (RIP.Ptr Wl_shm -> IO ())
wl_shm_destroy =
  RIP.unsafePerformIO hs_bindgen_d8fda80bb3d0cc42

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_create_pool@
foreign import ccall unsafe "hs_bindgen_083d68e6b26f0976" hs_bindgen_083d68e6b26f0976_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_create_pool@
hs_bindgen_083d68e6b26f0976 :: IO (RIP.FunPtr (RIP.Ptr Wl_shm -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO (RIP.Ptr Wl_shm_pool)))
hs_bindgen_083d68e6b26f0976 =
  RIP.fromFFIType hs_bindgen_083d68e6b26f0976_base

{-# NOINLINE wl_shm_create_pool #-}
{-| Create a new wl_shm_pool object.

    The pool can be used to create shared memory based buffer objects. The server will mmap size bytes of the passed file descriptor, to use as backing memory for the pool.

    __C declaration:__ @wl_shm_create_pool@

    __defined at:__ @wayland-client-protocol.h 2066:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_create_pool :: RIP.FunPtr (RIP.Ptr Wl_shm -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO (RIP.Ptr Wl_shm_pool))
wl_shm_create_pool =
  RIP.unsafePerformIO hs_bindgen_083d68e6b26f0976

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_release@
foreign import ccall unsafe "hs_bindgen_52be8f1725268517" hs_bindgen_52be8f1725268517_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_release@
hs_bindgen_52be8f1725268517 :: IO (RIP.FunPtr (RIP.Ptr Wl_shm -> IO ()))
hs_bindgen_52be8f1725268517 =
  RIP.fromFFIType hs_bindgen_52be8f1725268517_base

{-# NOINLINE wl_shm_release #-}
{-| Using this request a client can tell the server that it is not going to use the shm object anymore.

    Objects created via this interface remain unaffected.

    __C declaration:__ @wl_shm_release@

    __defined at:__ @wayland-client-protocol.h 2085:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_release :: RIP.FunPtr (RIP.Ptr Wl_shm -> IO ())
wl_shm_release =
  RIP.unsafePerformIO hs_bindgen_52be8f1725268517

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_buffer_add_listener@
foreign import ccall unsafe "hs_bindgen_25ad3a300459ecfc" hs_bindgen_25ad3a300459ecfc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_buffer_add_listener@
hs_bindgen_25ad3a300459ecfc :: IO (RIP.FunPtr (RIP.Ptr Wl_buffer -> PtrConst.PtrConst Wl_buffer_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt))
hs_bindgen_25ad3a300459ecfc =
  RIP.fromFFIType hs_bindgen_25ad3a300459ecfc_base

{-# NOINLINE wl_buffer_add_listener #-}
{-| __C declaration:__ @wl_buffer_add_listener@

    __defined at:__ @wayland-client-protocol.h 2122:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_buffer_add_listener :: RIP.FunPtr (RIP.Ptr Wl_buffer -> PtrConst.PtrConst Wl_buffer_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt)
wl_buffer_add_listener =
  RIP.unsafePerformIO hs_bindgen_25ad3a300459ecfc

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_buffer_set_user_data@
foreign import ccall unsafe "hs_bindgen_ad05a42a4aefa64b" hs_bindgen_ad05a42a4aefa64b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_buffer_set_user_data@
hs_bindgen_ad05a42a4aefa64b :: IO (RIP.FunPtr (RIP.Ptr Wl_buffer -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_ad05a42a4aefa64b =
  RIP.fromFFIType hs_bindgen_ad05a42a4aefa64b_base

{-# NOINLINE wl_buffer_set_user_data #-}
{-| __C declaration:__ @wl_buffer_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2143:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_buffer_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_buffer -> RIP.Ptr RIP.Void -> IO ())
wl_buffer_set_user_data =
  RIP.unsafePerformIO hs_bindgen_ad05a42a4aefa64b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_buffer_get_user_data@
foreign import ccall unsafe "hs_bindgen_61f85222221b7807" hs_bindgen_61f85222221b7807_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_buffer_get_user_data@
hs_bindgen_61f85222221b7807 :: IO (RIP.FunPtr (RIP.Ptr Wl_buffer -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_61f85222221b7807 =
  RIP.fromFFIType hs_bindgen_61f85222221b7807_base

{-# NOINLINE wl_buffer_get_user_data #-}
{-| __C declaration:__ @wl_buffer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2150:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_buffer_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_buffer -> IO (RIP.Ptr RIP.Void))
wl_buffer_get_user_data =
  RIP.unsafePerformIO hs_bindgen_61f85222221b7807

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_buffer_get_version@
foreign import ccall unsafe "hs_bindgen_36685b798190e7ea" hs_bindgen_36685b798190e7ea_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_buffer_get_version@
hs_bindgen_36685b798190e7ea :: IO (RIP.FunPtr (RIP.Ptr Wl_buffer -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_36685b798190e7ea =
  RIP.fromFFIType hs_bindgen_36685b798190e7ea_base

{-# NOINLINE wl_buffer_get_version #-}
{-| __C declaration:__ @wl_buffer_get_version@

    __defined at:__ @wayland-client-protocol.h 2156:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_buffer_get_version :: RIP.FunPtr (RIP.Ptr Wl_buffer -> IO HsBindgen.Runtime.LibC.Word32)
wl_buffer_get_version =
  RIP.unsafePerformIO hs_bindgen_36685b798190e7ea

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_buffer_destroy@
foreign import ccall unsafe "hs_bindgen_6c74b299009e8cc5" hs_bindgen_6c74b299009e8cc5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_buffer_destroy@
hs_bindgen_6c74b299009e8cc5 :: IO (RIP.FunPtr (RIP.Ptr Wl_buffer -> IO ()))
hs_bindgen_6c74b299009e8cc5 =
  RIP.fromFFIType hs_bindgen_6c74b299009e8cc5_base

{-# NOINLINE wl_buffer_destroy #-}
{-| Destroy a buffer. If and how you need to release the backing storage is defined by the buffer factory interface.

    For possible side-effects to a surface, see wl_surface.attach.

    __C declaration:__ @wl_buffer_destroy@

    __defined at:__ @wayland-client-protocol.h 2170:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_buffer_destroy :: RIP.FunPtr (RIP.Ptr Wl_buffer -> IO ())
wl_buffer_destroy =
  RIP.unsafePerformIO hs_bindgen_6c74b299009e8cc5

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_add_listener@
foreign import ccall unsafe "hs_bindgen_5eb2d03941892e70" hs_bindgen_5eb2d03941892e70_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_add_listener@
hs_bindgen_5eb2d03941892e70 :: IO (RIP.FunPtr (RIP.Ptr Wl_data_offer -> PtrConst.PtrConst Wl_data_offer_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt))
hs_bindgen_5eb2d03941892e70 =
  RIP.fromFFIType hs_bindgen_5eb2d03941892e70_base

{-# NOINLINE wl_data_offer_add_listener #-}
{-| __C declaration:__ @wl_data_offer_add_listener@

    __defined at:__ @wayland-client-protocol.h 2278:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_offer_add_listener :: RIP.FunPtr (RIP.Ptr Wl_data_offer -> PtrConst.PtrConst Wl_data_offer_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt)
wl_data_offer_add_listener =
  RIP.unsafePerformIO hs_bindgen_5eb2d03941892e70

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_set_user_data@
foreign import ccall unsafe "hs_bindgen_a78d202c8aab448a" hs_bindgen_a78d202c8aab448a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_set_user_data@
hs_bindgen_a78d202c8aab448a :: IO (RIP.FunPtr (RIP.Ptr Wl_data_offer -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_a78d202c8aab448a =
  RIP.fromFFIType hs_bindgen_a78d202c8aab448a_base

{-# NOINLINE wl_data_offer_set_user_data #-}
{-| __C declaration:__ @wl_data_offer_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2327:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_offer_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_data_offer -> RIP.Ptr RIP.Void -> IO ())
wl_data_offer_set_user_data =
  RIP.unsafePerformIO hs_bindgen_a78d202c8aab448a

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_get_user_data@
foreign import ccall unsafe "hs_bindgen_cf4d62dee9c49b73" hs_bindgen_cf4d62dee9c49b73_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_get_user_data@
hs_bindgen_cf4d62dee9c49b73 :: IO (RIP.FunPtr (RIP.Ptr Wl_data_offer -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_cf4d62dee9c49b73 =
  RIP.fromFFIType hs_bindgen_cf4d62dee9c49b73_base

{-# NOINLINE wl_data_offer_get_user_data #-}
{-| __C declaration:__ @wl_data_offer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2334:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_offer_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_data_offer -> IO (RIP.Ptr RIP.Void))
wl_data_offer_get_user_data =
  RIP.unsafePerformIO hs_bindgen_cf4d62dee9c49b73

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_get_version@
foreign import ccall unsafe "hs_bindgen_e1c2eb3d2cf8ebab" hs_bindgen_e1c2eb3d2cf8ebab_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_get_version@
hs_bindgen_e1c2eb3d2cf8ebab :: IO (RIP.FunPtr (RIP.Ptr Wl_data_offer -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_e1c2eb3d2cf8ebab =
  RIP.fromFFIType hs_bindgen_e1c2eb3d2cf8ebab_base

{-# NOINLINE wl_data_offer_get_version #-}
{-| __C declaration:__ @wl_data_offer_get_version@

    __defined at:__ @wayland-client-protocol.h 2340:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_offer_get_version :: RIP.FunPtr (RIP.Ptr Wl_data_offer -> IO HsBindgen.Runtime.LibC.Word32)
wl_data_offer_get_version =
  RIP.unsafePerformIO hs_bindgen_e1c2eb3d2cf8ebab

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_accept@
foreign import ccall unsafe "hs_bindgen_f4d99938a9113069" hs_bindgen_f4d99938a9113069_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_accept@
hs_bindgen_f4d99938a9113069 :: IO (RIP.FunPtr (RIP.Ptr Wl_data_offer -> HsBindgen.Runtime.LibC.Word32 -> PtrConst.PtrConst RIP.CChar -> IO ()))
hs_bindgen_f4d99938a9113069 =
  RIP.fromFFIType hs_bindgen_f4d99938a9113069_base

{-# NOINLINE wl_data_offer_accept #-}
{-| Indicate that the client can accept the given mime type, or NULL for not accepted.

    For objects of version 2 or older, this request is used by the client to give feedback whether the client can receive the given mime type, or NULL if none is accepted; the feedback does not determine whether the drag-and-drop operation succeeds or not.

    For objects of version 3 or newer, this request determines the final result of the drag-and-drop operation. If the end result is that no mime types were accepted, the drag-and-drop operation will be cancelled and the corresponding drag source will receive wl_data_source.cancelled. Clients may still use this event in conjunction with wl_data_source.action for feedback.

    __C declaration:__ @wl_data_offer_accept@

    __defined at:__ @wayland-client-protocol.h 2364:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_offer_accept :: RIP.FunPtr (RIP.Ptr Wl_data_offer -> HsBindgen.Runtime.LibC.Word32 -> PtrConst.PtrConst RIP.CChar -> IO ())
wl_data_offer_accept =
  RIP.unsafePerformIO hs_bindgen_f4d99938a9113069

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_receive@
foreign import ccall unsafe "hs_bindgen_e0d4fd1f8b4fe2e8" hs_bindgen_e0d4fd1f8b4fe2e8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_receive@
hs_bindgen_e0d4fd1f8b4fe2e8 :: IO (RIP.FunPtr (RIP.Ptr Wl_data_offer -> PtrConst.PtrConst RIP.CChar -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_e0d4fd1f8b4fe2e8 =
  RIP.fromFFIType hs_bindgen_e0d4fd1f8b4fe2e8_base

{-# NOINLINE wl_data_offer_receive #-}
{-| To transfer the offered data, the client issues this request and indicates the mime type it wants to receive. The transfer happens through the passed file descriptor (typically created with the pipe system call). The source client writes the data in the mime type representation requested and then closes the file descriptor.

    The receiving client reads from the read end of the pipe until EOF and then closes its end, at which point the transfer is complete.

    This request may happen multiple times for different mime types, both before and after wl_data_device.drop. Drag-and-drop destination clients may preemptively fetch data or examine it more closely to determine acceptance.

    __C declaration:__ @wl_data_offer_receive@

    __defined at:__ @wayland-client-protocol.h 2390:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_offer_receive :: RIP.FunPtr (RIP.Ptr Wl_data_offer -> PtrConst.PtrConst RIP.CChar -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_data_offer_receive =
  RIP.unsafePerformIO hs_bindgen_e0d4fd1f8b4fe2e8

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_destroy@
foreign import ccall unsafe "hs_bindgen_fb8835fa443ff413" hs_bindgen_fb8835fa443ff413_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_destroy@
hs_bindgen_fb8835fa443ff413 :: IO (RIP.FunPtr (RIP.Ptr Wl_data_offer -> IO ()))
hs_bindgen_fb8835fa443ff413 =
  RIP.fromFFIType hs_bindgen_fb8835fa443ff413_base

{-# NOINLINE wl_data_offer_destroy #-}
{-| Destroy the data offer.

    __C declaration:__ @wl_data_offer_destroy@

    __defined at:__ @wayland-client-protocol.h 2402:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_offer_destroy :: RIP.FunPtr (RIP.Ptr Wl_data_offer -> IO ())
wl_data_offer_destroy =
  RIP.unsafePerformIO hs_bindgen_fb8835fa443ff413

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_finish@
foreign import ccall unsafe "hs_bindgen_4713fd1b54036462" hs_bindgen_4713fd1b54036462_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_finish@
hs_bindgen_4713fd1b54036462 :: IO (RIP.FunPtr (RIP.Ptr Wl_data_offer -> IO ()))
hs_bindgen_4713fd1b54036462 =
  RIP.fromFFIType hs_bindgen_4713fd1b54036462_base

{-# NOINLINE wl_data_offer_finish #-}
{-| Notifies the compositor that the drag destination successfully finished the drag-and-drop operation.

    Upon receiving this request, the compositor will emit wl_data_source.dnd_finished on the drag source client.

    It is a client error to perform other requests than wl_data_offer.destroy after this one. It is also an error to perform this request after a NULL mime type has been set in wl_data_offer.accept or no action was received through wl_data_offer.action.

    If wl_data_offer.finish request is received for a non drag and drop operation, the invalid_finish protocol error is raised.

    __C declaration:__ @wl_data_offer_finish@

    __defined at:__ @wayland-client-protocol.h 2427:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_offer_finish :: RIP.FunPtr (RIP.Ptr Wl_data_offer -> IO ())
wl_data_offer_finish =
  RIP.unsafePerformIO hs_bindgen_4713fd1b54036462

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_set_actions@
foreign import ccall unsafe "hs_bindgen_0ba77114dcff166a" hs_bindgen_0ba77114dcff166a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_set_actions@
hs_bindgen_0ba77114dcff166a :: IO (RIP.FunPtr (RIP.Ptr Wl_data_offer -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_0ba77114dcff166a =
  RIP.fromFFIType hs_bindgen_0ba77114dcff166a_base

{-# NOINLINE wl_data_offer_set_actions #-}
{-| Sets the actions that the destination side client supports for this operation. This request may trigger the emission of wl_data_source.action and wl_data_offer.action events if the compositor needs to change the selected action.

    This request can be called multiple times throughout the drag-and-drop operation, typically in response to wl_data_device.enter or wl_data_device.motion events.

    This request determines the final result of the drag-and-drop operation. If the end result is that no action is accepted, the drag source will receive wl_data_source.cancelled.

    The dnd_actions argument must contain only values expressed in the wl_data_device_manager.dnd_actions enum, and the preferred_action argument must only contain one of those values set, otherwise it will result in a protocol error.

    While managing an "ask" action, the destination drag-and-drop client may perform further wl_data_offer.receive requests, and is expected to perform one last wl_data_offer.set_actions request with a preferred action other than "ask" (and optionally wl_data_offer.accept) before requesting wl_data_offer.finish, in order to convey the action selected by the user. If the preferred action is not in the wl_data_offer.source_actions mask, an error will be raised.

    If the "ask" action is dismissed (e.g. user cancellation), the client is expected to perform wl_data_offer.destroy right away.

    This request can only be made on drag-and-drop offers, a protocol error will be raised otherwise.

    __C declaration:__ @wl_data_offer_set_actions@

    __defined at:__ @wayland-client-protocol.h 2469:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_offer_set_actions :: RIP.FunPtr (RIP.Ptr Wl_data_offer -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_data_offer_set_actions =
  RIP.unsafePerformIO hs_bindgen_0ba77114dcff166a

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_add_listener@
foreign import ccall unsafe "hs_bindgen_e7c09880aa8d518d" hs_bindgen_e7c09880aa8d518d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_add_listener@
hs_bindgen_e7c09880aa8d518d :: IO (RIP.FunPtr (RIP.Ptr Wl_data_source -> PtrConst.PtrConst Wl_data_source_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt))
hs_bindgen_e7c09880aa8d518d =
  RIP.fromFFIType hs_bindgen_e7c09880aa8d518d_base

{-# NOINLINE wl_data_source_add_listener #-}
{-| __C declaration:__ @wl_data_source_add_listener@

    __defined at:__ @wayland-client-protocol.h 2617:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_source_add_listener :: RIP.FunPtr (RIP.Ptr Wl_data_source -> PtrConst.PtrConst Wl_data_source_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt)
wl_data_source_add_listener =
  RIP.unsafePerformIO hs_bindgen_e7c09880aa8d518d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_set_user_data@
foreign import ccall unsafe "hs_bindgen_52e2f79ac6a0e008" hs_bindgen_52e2f79ac6a0e008_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_set_user_data@
hs_bindgen_52e2f79ac6a0e008 :: IO (RIP.FunPtr (RIP.Ptr Wl_data_source -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_52e2f79ac6a0e008 =
  RIP.fromFFIType hs_bindgen_52e2f79ac6a0e008_base

{-# NOINLINE wl_data_source_set_user_data #-}
{-| __C declaration:__ @wl_data_source_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2668:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_source_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_data_source -> RIP.Ptr RIP.Void -> IO ())
wl_data_source_set_user_data =
  RIP.unsafePerformIO hs_bindgen_52e2f79ac6a0e008

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_get_user_data@
foreign import ccall unsafe "hs_bindgen_bf503443ff9374f6" hs_bindgen_bf503443ff9374f6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_get_user_data@
hs_bindgen_bf503443ff9374f6 :: IO (RIP.FunPtr (RIP.Ptr Wl_data_source -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_bf503443ff9374f6 =
  RIP.fromFFIType hs_bindgen_bf503443ff9374f6_base

{-# NOINLINE wl_data_source_get_user_data #-}
{-| __C declaration:__ @wl_data_source_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2675:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_source_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_data_source -> IO (RIP.Ptr RIP.Void))
wl_data_source_get_user_data =
  RIP.unsafePerformIO hs_bindgen_bf503443ff9374f6

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_get_version@
foreign import ccall unsafe "hs_bindgen_85604347d2b4001a" hs_bindgen_85604347d2b4001a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_get_version@
hs_bindgen_85604347d2b4001a :: IO (RIP.FunPtr (RIP.Ptr Wl_data_source -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_85604347d2b4001a =
  RIP.fromFFIType hs_bindgen_85604347d2b4001a_base

{-# NOINLINE wl_data_source_get_version #-}
{-| __C declaration:__ @wl_data_source_get_version@

    __defined at:__ @wayland-client-protocol.h 2681:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_source_get_version :: RIP.FunPtr (RIP.Ptr Wl_data_source -> IO HsBindgen.Runtime.LibC.Word32)
wl_data_source_get_version =
  RIP.unsafePerformIO hs_bindgen_85604347d2b4001a

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_offer@
foreign import ccall unsafe "hs_bindgen_3cbc207ee704af3e" hs_bindgen_3cbc207ee704af3e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_offer@
hs_bindgen_3cbc207ee704af3e :: IO (RIP.FunPtr (RIP.Ptr Wl_data_source -> PtrConst.PtrConst RIP.CChar -> IO ()))
hs_bindgen_3cbc207ee704af3e =
  RIP.fromFFIType hs_bindgen_3cbc207ee704af3e_base

{-# NOINLINE wl_data_source_offer #-}
{-| This request adds a mime type to the set of mime types advertised to targets. Can be called several times to offer multiple types.

    __C declaration:__ @wl_data_source_offer@

    __defined at:__ @wayland-client-protocol.h 2694:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_source_offer :: RIP.FunPtr (RIP.Ptr Wl_data_source -> PtrConst.PtrConst RIP.CChar -> IO ())
wl_data_source_offer =
  RIP.unsafePerformIO hs_bindgen_3cbc207ee704af3e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_destroy@
foreign import ccall unsafe "hs_bindgen_f78b2a1f22ad800d" hs_bindgen_f78b2a1f22ad800d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_destroy@
hs_bindgen_f78b2a1f22ad800d :: IO (RIP.FunPtr (RIP.Ptr Wl_data_source -> IO ()))
hs_bindgen_f78b2a1f22ad800d =
  RIP.fromFFIType hs_bindgen_f78b2a1f22ad800d_base

{-# NOINLINE wl_data_source_destroy #-}
{-| Destroy the data source.

    __C declaration:__ @wl_data_source_destroy@

    __defined at:__ @wayland-client-protocol.h 2706:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_source_destroy :: RIP.FunPtr (RIP.Ptr Wl_data_source -> IO ())
wl_data_source_destroy =
  RIP.unsafePerformIO hs_bindgen_f78b2a1f22ad800d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_set_actions@
foreign import ccall unsafe "hs_bindgen_28b041a185a1fed7" hs_bindgen_28b041a185a1fed7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_set_actions@
hs_bindgen_28b041a185a1fed7 :: IO (RIP.FunPtr (RIP.Ptr Wl_data_source -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_28b041a185a1fed7 =
  RIP.fromFFIType hs_bindgen_28b041a185a1fed7_base

{-# NOINLINE wl_data_source_set_actions #-}
{-| Sets the actions that the source side client supports for this operation. This request may trigger wl_data_source.action and wl_data_offer.action events if the compositor needs to change the selected action.

    The dnd_actions argument must contain only values expressed in the wl_data_device_manager.dnd_actions enum, otherwise it will result in a protocol error.

    This request must be made once only, and can only be made on sources used in drag-and-drop, so it must be performed before wl_data_device.start_drag. Attempting to use the source other than for drag-and-drop will raise a protocol error.

    __C declaration:__ @wl_data_source_set_actions@

    __defined at:__ @wayland-client-protocol.h 2730:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_source_set_actions :: RIP.FunPtr (RIP.Ptr Wl_data_source -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_data_source_set_actions =
  RIP.unsafePerformIO hs_bindgen_28b041a185a1fed7

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_add_listener@
foreign import ccall unsafe "hs_bindgen_3be1106c3019a4da" hs_bindgen_3be1106c3019a4da_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_add_listener@
hs_bindgen_3be1106c3019a4da :: IO (RIP.FunPtr (RIP.Ptr Wl_data_device -> PtrConst.PtrConst Wl_data_device_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt))
hs_bindgen_3be1106c3019a4da =
  RIP.fromFFIType hs_bindgen_3be1106c3019a4da_base

{-# NOINLINE wl_data_device_add_listener #-}
{-| __C declaration:__ @wl_data_device_add_listener@

    __defined at:__ @wayland-client-protocol.h 2860:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_add_listener :: RIP.FunPtr (RIP.Ptr Wl_data_device -> PtrConst.PtrConst Wl_data_device_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt)
wl_data_device_add_listener =
  RIP.unsafePerformIO hs_bindgen_3be1106c3019a4da

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_set_user_data@
foreign import ccall unsafe "hs_bindgen_2e04335750ed5980" hs_bindgen_2e04335750ed5980_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_set_user_data@
hs_bindgen_2e04335750ed5980 :: IO (RIP.FunPtr (RIP.Ptr Wl_data_device -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_2e04335750ed5980 =
  RIP.fromFFIType hs_bindgen_2e04335750ed5980_base

{-# NOINLINE wl_data_device_set_user_data #-}
{-| __C declaration:__ @wl_data_device_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2911:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_data_device -> RIP.Ptr RIP.Void -> IO ())
wl_data_device_set_user_data =
  RIP.unsafePerformIO hs_bindgen_2e04335750ed5980

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_get_user_data@
foreign import ccall unsafe "hs_bindgen_67ada0a86bc8bd8a" hs_bindgen_67ada0a86bc8bd8a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_get_user_data@
hs_bindgen_67ada0a86bc8bd8a :: IO (RIP.FunPtr (RIP.Ptr Wl_data_device -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_67ada0a86bc8bd8a =
  RIP.fromFFIType hs_bindgen_67ada0a86bc8bd8a_base

{-# NOINLINE wl_data_device_get_user_data #-}
{-| __C declaration:__ @wl_data_device_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2918:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_data_device -> IO (RIP.Ptr RIP.Void))
wl_data_device_get_user_data =
  RIP.unsafePerformIO hs_bindgen_67ada0a86bc8bd8a

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_get_version@
foreign import ccall unsafe "hs_bindgen_9f9fc55f7cef236d" hs_bindgen_9f9fc55f7cef236d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_get_version@
hs_bindgen_9f9fc55f7cef236d :: IO (RIP.FunPtr (RIP.Ptr Wl_data_device -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_9f9fc55f7cef236d =
  RIP.fromFFIType hs_bindgen_9f9fc55f7cef236d_base

{-# NOINLINE wl_data_device_get_version #-}
{-| __C declaration:__ @wl_data_device_get_version@

    __defined at:__ @wayland-client-protocol.h 2924:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_get_version :: RIP.FunPtr (RIP.Ptr Wl_data_device -> IO HsBindgen.Runtime.LibC.Word32)
wl_data_device_get_version =
  RIP.unsafePerformIO hs_bindgen_9f9fc55f7cef236d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_destroy@
foreign import ccall unsafe "hs_bindgen_26cd60bb838456d5" hs_bindgen_26cd60bb838456d5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_destroy@
hs_bindgen_26cd60bb838456d5 :: IO (RIP.FunPtr (RIP.Ptr Wl_data_device -> IO ()))
hs_bindgen_26cd60bb838456d5 =
  RIP.fromFFIType hs_bindgen_26cd60bb838456d5_base

{-# NOINLINE wl_data_device_destroy #-}
{-| __C declaration:__ @wl_data_device_destroy@

    __defined at:__ @wayland-client-protocol.h 2931:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_destroy :: RIP.FunPtr (RIP.Ptr Wl_data_device -> IO ())
wl_data_device_destroy =
  RIP.unsafePerformIO hs_bindgen_26cd60bb838456d5

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_start_drag@
foreign import ccall unsafe "hs_bindgen_27b3ce4a0fa8d033" hs_bindgen_27b3ce4a0fa8d033_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_start_drag@
hs_bindgen_27b3ce4a0fa8d033 :: IO (RIP.FunPtr (RIP.Ptr Wl_data_device -> RIP.Ptr Wl_data_source -> RIP.Ptr Wl_surface -> RIP.Ptr Wl_surface -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_27b3ce4a0fa8d033 =
  RIP.fromFFIType hs_bindgen_27b3ce4a0fa8d033_base

{-# NOINLINE wl_data_device_start_drag #-}
{-| This request asks the compositor to start a drag-and-drop operation on behalf of the client.

    The source argument is the data source that provides the data for the eventual data transfer. If source is NULL, enter, leave and motion events are sent only to the client that initiated the drag and the client is expected to handle the data passing internally. If source is destroyed, the drag-and-drop session will be cancelled.

    The origin surface is the surface where the drag originates and the client must have an active implicit grab that matches the serial.

    The icon surface is an optional (can be NULL) surface that provides an icon to be moved around with the cursor. Initially, the top-left corner of the icon surface is placed at the cursor hotspot, but subsequent wl_surface.offset requests can move the relative position. Attach requests must be confirmed with wl_surface.commit as usual. The icon surface is given the role of a drag-and-drop icon. If the icon surface already has another role, it raises a protocol error.

    The input region is ignored for wl_surfaces with the role of a drag-and-drop icon.

    The given source may not be used in any further set_selection or start_drag requests. Attempting to reuse a previously-used source may send a used_source error.

    __C declaration:__ @wl_data_device_start_drag@

    __defined at:__ @wayland-client-protocol.h 2970:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_start_drag :: RIP.FunPtr (RIP.Ptr Wl_data_device -> RIP.Ptr Wl_data_source -> RIP.Ptr Wl_surface -> RIP.Ptr Wl_surface -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_data_device_start_drag =
  RIP.unsafePerformIO hs_bindgen_27b3ce4a0fa8d033

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_set_selection@
foreign import ccall unsafe "hs_bindgen_0a430bd2dcf79a1b" hs_bindgen_0a430bd2dcf79a1b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_set_selection@
hs_bindgen_0a430bd2dcf79a1b :: IO (RIP.FunPtr (RIP.Ptr Wl_data_device -> RIP.Ptr Wl_data_source -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_0a430bd2dcf79a1b =
  RIP.fromFFIType hs_bindgen_0a430bd2dcf79a1b_base

{-# NOINLINE wl_data_device_set_selection #-}
{-| This request asks the compositor to set the selection to the data from the source on behalf of the client.

    To unset the selection, set the source to NULL.

    The given source may not be used in any further set_selection or start_drag requests. Attempting to reuse a previously-used source may send a used_source error.

    __C declaration:__ @wl_data_device_set_selection@

    __defined at:__ @wayland-client-protocol.h 2989:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_set_selection :: RIP.FunPtr (RIP.Ptr Wl_data_device -> RIP.Ptr Wl_data_source -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_data_device_set_selection =
  RIP.unsafePerformIO hs_bindgen_0a430bd2dcf79a1b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_release@
foreign import ccall unsafe "hs_bindgen_eac284de3ce630c4" hs_bindgen_eac284de3ce630c4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_release@
hs_bindgen_eac284de3ce630c4 :: IO (RIP.FunPtr (RIP.Ptr Wl_data_device -> IO ()))
hs_bindgen_eac284de3ce630c4 =
  RIP.fromFFIType hs_bindgen_eac284de3ce630c4_base

{-# NOINLINE wl_data_device_release #-}
{-| This request destroys the data device.

    __C declaration:__ @wl_data_device_release@

    __defined at:__ @wayland-client-protocol.h 3001:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_release :: RIP.FunPtr (RIP.Ptr Wl_data_device -> IO ())
wl_data_device_release =
  RIP.unsafePerformIO hs_bindgen_eac284de3ce630c4

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_set_user_data@
foreign import ccall unsafe "hs_bindgen_3e14e44977008160" hs_bindgen_3e14e44977008160_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_set_user_data@
hs_bindgen_3e14e44977008160 :: IO (RIP.FunPtr (RIP.Ptr Wl_data_device_manager -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_3e14e44977008160 =
  RIP.fromFFIType hs_bindgen_3e14e44977008160_base

{-# NOINLINE wl_data_device_manager_set_user_data #-}
{-| __C declaration:__ @wl_data_device_manager_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3072:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_data_device_manager -> RIP.Ptr RIP.Void -> IO ())
wl_data_device_manager_set_user_data =
  RIP.unsafePerformIO hs_bindgen_3e14e44977008160

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_get_user_data@
foreign import ccall unsafe "hs_bindgen_f015d6e118aa70e7" hs_bindgen_f015d6e118aa70e7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_get_user_data@
hs_bindgen_f015d6e118aa70e7 :: IO (RIP.FunPtr (RIP.Ptr Wl_data_device_manager -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_f015d6e118aa70e7 =
  RIP.fromFFIType hs_bindgen_f015d6e118aa70e7_base

{-# NOINLINE wl_data_device_manager_get_user_data #-}
{-| __C declaration:__ @wl_data_device_manager_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3079:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_data_device_manager -> IO (RIP.Ptr RIP.Void))
wl_data_device_manager_get_user_data =
  RIP.unsafePerformIO hs_bindgen_f015d6e118aa70e7

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_get_version@
foreign import ccall unsafe "hs_bindgen_ab36a8f26b28247d" hs_bindgen_ab36a8f26b28247d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_get_version@
hs_bindgen_ab36a8f26b28247d :: IO (RIP.FunPtr (RIP.Ptr Wl_data_device_manager -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_ab36a8f26b28247d =
  RIP.fromFFIType hs_bindgen_ab36a8f26b28247d_base

{-# NOINLINE wl_data_device_manager_get_version #-}
{-| __C declaration:__ @wl_data_device_manager_get_version@

    __defined at:__ @wayland-client-protocol.h 3085:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_version :: RIP.FunPtr (RIP.Ptr Wl_data_device_manager -> IO HsBindgen.Runtime.LibC.Word32)
wl_data_device_manager_get_version =
  RIP.unsafePerformIO hs_bindgen_ab36a8f26b28247d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_destroy@
foreign import ccall unsafe "hs_bindgen_4d92c68ba7760ec4" hs_bindgen_4d92c68ba7760ec4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_destroy@
hs_bindgen_4d92c68ba7760ec4 :: IO (RIP.FunPtr (RIP.Ptr Wl_data_device_manager -> IO ()))
hs_bindgen_4d92c68ba7760ec4 =
  RIP.fromFFIType hs_bindgen_4d92c68ba7760ec4_base

{-# NOINLINE wl_data_device_manager_destroy #-}
{-| __C declaration:__ @wl_data_device_manager_destroy@

    __defined at:__ @wayland-client-protocol.h 3092:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_destroy :: RIP.FunPtr (RIP.Ptr Wl_data_device_manager -> IO ())
wl_data_device_manager_destroy =
  RIP.unsafePerformIO hs_bindgen_4d92c68ba7760ec4

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_create_data_source@
foreign import ccall unsafe "hs_bindgen_a50c9530c35ca723" hs_bindgen_a50c9530c35ca723_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_create_data_source@
hs_bindgen_a50c9530c35ca723 :: IO (RIP.FunPtr (RIP.Ptr Wl_data_device_manager -> IO (RIP.Ptr Wl_data_source)))
hs_bindgen_a50c9530c35ca723 =
  RIP.fromFFIType hs_bindgen_a50c9530c35ca723_base

{-# NOINLINE wl_data_device_manager_create_data_source #-}
{-| Create a new data source.

    __C declaration:__ @wl_data_device_manager_create_data_source@

    __defined at:__ @wayland-client-protocol.h 3103:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_create_data_source :: RIP.FunPtr (RIP.Ptr Wl_data_device_manager -> IO (RIP.Ptr Wl_data_source))
wl_data_device_manager_create_data_source =
  RIP.unsafePerformIO hs_bindgen_a50c9530c35ca723

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_get_data_device@
foreign import ccall unsafe "hs_bindgen_d4b8ee4b159924ea" hs_bindgen_d4b8ee4b159924ea_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_get_data_device@
hs_bindgen_d4b8ee4b159924ea :: IO (RIP.FunPtr (RIP.Ptr Wl_data_device_manager -> RIP.Ptr Wl_seat -> IO (RIP.Ptr Wl_data_device)))
hs_bindgen_d4b8ee4b159924ea =
  RIP.fromFFIType hs_bindgen_d4b8ee4b159924ea_base

{-# NOINLINE wl_data_device_manager_get_data_device #-}
{-| Create a new data device for a given seat.

    __C declaration:__ @wl_data_device_manager_get_data_device@

    __defined at:__ @wayland-client-protocol.h 3119:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_data_device :: RIP.FunPtr (RIP.Ptr Wl_data_device_manager -> RIP.Ptr Wl_seat -> IO (RIP.Ptr Wl_data_device))
wl_data_device_manager_get_data_device =
  RIP.unsafePerformIO hs_bindgen_d4b8ee4b159924ea

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_set_user_data@
foreign import ccall unsafe "hs_bindgen_e770ce11ed068fbf" hs_bindgen_e770ce11ed068fbf_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_set_user_data@
hs_bindgen_e770ce11ed068fbf :: IO (RIP.FunPtr (RIP.Ptr Wl_shell -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_e770ce11ed068fbf =
  RIP.fromFFIType hs_bindgen_e770ce11ed068fbf_base

{-# NOINLINE wl_shell_set_user_data #-}
{-| __C declaration:__ @wl_shell_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3149:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_shell -> RIP.Ptr RIP.Void -> IO ())
wl_shell_set_user_data =
  RIP.unsafePerformIO hs_bindgen_e770ce11ed068fbf

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_get_user_data@
foreign import ccall unsafe "hs_bindgen_5d05a0c0952536c1" hs_bindgen_5d05a0c0952536c1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_get_user_data@
hs_bindgen_5d05a0c0952536c1 :: IO (RIP.FunPtr (RIP.Ptr Wl_shell -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_5d05a0c0952536c1 =
  RIP.fromFFIType hs_bindgen_5d05a0c0952536c1_base

{-# NOINLINE wl_shell_get_user_data #-}
{-| __C declaration:__ @wl_shell_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3156:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_shell -> IO (RIP.Ptr RIP.Void))
wl_shell_get_user_data =
  RIP.unsafePerformIO hs_bindgen_5d05a0c0952536c1

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_get_version@
foreign import ccall unsafe "hs_bindgen_3b995957a70a931e" hs_bindgen_3b995957a70a931e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_get_version@
hs_bindgen_3b995957a70a931e :: IO (RIP.FunPtr (RIP.Ptr Wl_shell -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_3b995957a70a931e =
  RIP.fromFFIType hs_bindgen_3b995957a70a931e_base

{-# NOINLINE wl_shell_get_version #-}
{-| __C declaration:__ @wl_shell_get_version@

    __defined at:__ @wayland-client-protocol.h 3162:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_get_version :: RIP.FunPtr (RIP.Ptr Wl_shell -> IO HsBindgen.Runtime.LibC.Word32)
wl_shell_get_version =
  RIP.unsafePerformIO hs_bindgen_3b995957a70a931e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_destroy@
foreign import ccall unsafe "hs_bindgen_8dade0b6274cd0c6" hs_bindgen_8dade0b6274cd0c6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_destroy@
hs_bindgen_8dade0b6274cd0c6 :: IO (RIP.FunPtr (RIP.Ptr Wl_shell -> IO ()))
hs_bindgen_8dade0b6274cd0c6 =
  RIP.fromFFIType hs_bindgen_8dade0b6274cd0c6_base

{-# NOINLINE wl_shell_destroy #-}
{-| __C declaration:__ @wl_shell_destroy@

    __defined at:__ @wayland-client-protocol.h 3169:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_destroy :: RIP.FunPtr (RIP.Ptr Wl_shell -> IO ())
wl_shell_destroy =
  RIP.unsafePerformIO hs_bindgen_8dade0b6274cd0c6

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_get_shell_surface@
foreign import ccall unsafe "hs_bindgen_28b40fb3c28e8e54" hs_bindgen_28b40fb3c28e8e54_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_get_shell_surface@
hs_bindgen_28b40fb3c28e8e54 :: IO (RIP.FunPtr (RIP.Ptr Wl_shell -> RIP.Ptr Wl_surface -> IO (RIP.Ptr Wl_shell_surface)))
hs_bindgen_28b40fb3c28e8e54 =
  RIP.fromFFIType hs_bindgen_28b40fb3c28e8e54_base

{-# NOINLINE wl_shell_get_shell_surface #-}
{-| Create a shell surface for an existing surface. This gives the wl_surface the role of a shell surface. If the wl_surface already has another role, it raises a protocol error.

    Only one shell surface can be associated with a given surface.

    __C declaration:__ @wl_shell_get_shell_surface@

    __defined at:__ @wayland-client-protocol.h 3184:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_get_shell_surface :: RIP.FunPtr (RIP.Ptr Wl_shell -> RIP.Ptr Wl_surface -> IO (RIP.Ptr Wl_shell_surface))
wl_shell_get_shell_surface =
  RIP.unsafePerformIO hs_bindgen_28b40fb3c28e8e54

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_add_listener@
foreign import ccall unsafe "hs_bindgen_af3858bccbcf2474" hs_bindgen_af3858bccbcf2474_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_add_listener@
hs_bindgen_af3858bccbcf2474 :: IO (RIP.FunPtr (RIP.Ptr Wl_shell_surface -> PtrConst.PtrConst Wl_shell_surface_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt))
hs_bindgen_af3858bccbcf2474 =
  RIP.fromFFIType hs_bindgen_af3858bccbcf2474_base

{-# NOINLINE wl_shell_surface_add_listener #-}
{-| __C declaration:__ @wl_shell_surface_add_listener@

    __defined at:__ @wayland-client-protocol.h 3351:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_add_listener :: RIP.FunPtr (RIP.Ptr Wl_shell_surface -> PtrConst.PtrConst Wl_shell_surface_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt)
wl_shell_surface_add_listener =
  RIP.unsafePerformIO hs_bindgen_af3858bccbcf2474

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_user_data@
foreign import ccall unsafe "hs_bindgen_0b20a1cfde7d7560" hs_bindgen_0b20a1cfde7d7560_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_user_data@
hs_bindgen_0b20a1cfde7d7560 :: IO (RIP.FunPtr (RIP.Ptr Wl_shell_surface -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_0b20a1cfde7d7560 =
  RIP.fromFFIType hs_bindgen_0b20a1cfde7d7560_base

{-# NOINLINE wl_shell_surface_set_user_data #-}
{-| __C declaration:__ @wl_shell_surface_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3425:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_shell_surface -> RIP.Ptr RIP.Void -> IO ())
wl_shell_surface_set_user_data =
  RIP.unsafePerformIO hs_bindgen_0b20a1cfde7d7560

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_get_user_data@
foreign import ccall unsafe "hs_bindgen_21b80ff556525570" hs_bindgen_21b80ff556525570_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_get_user_data@
hs_bindgen_21b80ff556525570 :: IO (RIP.FunPtr (RIP.Ptr Wl_shell_surface -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_21b80ff556525570 =
  RIP.fromFFIType hs_bindgen_21b80ff556525570_base

{-# NOINLINE wl_shell_surface_get_user_data #-}
{-| __C declaration:__ @wl_shell_surface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3432:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_shell_surface -> IO (RIP.Ptr RIP.Void))
wl_shell_surface_get_user_data =
  RIP.unsafePerformIO hs_bindgen_21b80ff556525570

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_get_version@
foreign import ccall unsafe "hs_bindgen_152cdc304cbe78bc" hs_bindgen_152cdc304cbe78bc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_get_version@
hs_bindgen_152cdc304cbe78bc :: IO (RIP.FunPtr (RIP.Ptr Wl_shell_surface -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_152cdc304cbe78bc =
  RIP.fromFFIType hs_bindgen_152cdc304cbe78bc_base

{-# NOINLINE wl_shell_surface_get_version #-}
{-| __C declaration:__ @wl_shell_surface_get_version@

    __defined at:__ @wayland-client-protocol.h 3438:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_get_version :: RIP.FunPtr (RIP.Ptr Wl_shell_surface -> IO HsBindgen.Runtime.LibC.Word32)
wl_shell_surface_get_version =
  RIP.unsafePerformIO hs_bindgen_152cdc304cbe78bc

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_destroy@
foreign import ccall unsafe "hs_bindgen_a649854358cc5d17" hs_bindgen_a649854358cc5d17_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_destroy@
hs_bindgen_a649854358cc5d17 :: IO (RIP.FunPtr (RIP.Ptr Wl_shell_surface -> IO ()))
hs_bindgen_a649854358cc5d17 =
  RIP.fromFFIType hs_bindgen_a649854358cc5d17_base

{-# NOINLINE wl_shell_surface_destroy #-}
{-| __C declaration:__ @wl_shell_surface_destroy@

    __defined at:__ @wayland-client-protocol.h 3445:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_destroy :: RIP.FunPtr (RIP.Ptr Wl_shell_surface -> IO ())
wl_shell_surface_destroy =
  RIP.unsafePerformIO hs_bindgen_a649854358cc5d17

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_pong@
foreign import ccall unsafe "hs_bindgen_9f3d4d885005b747" hs_bindgen_9f3d4d885005b747_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_pong@
hs_bindgen_9f3d4d885005b747 :: IO (RIP.FunPtr (RIP.Ptr Wl_shell_surface -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_9f3d4d885005b747 =
  RIP.fromFFIType hs_bindgen_9f3d4d885005b747_base

{-# NOINLINE wl_shell_surface_pong #-}
{-| A client must respond to a ping event with a pong request or the client may be deemed unresponsive.

    __C declaration:__ @wl_shell_surface_pong@

    __defined at:__ @wayland-client-protocol.h 3457:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_pong :: RIP.FunPtr (RIP.Ptr Wl_shell_surface -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_shell_surface_pong =
  RIP.unsafePerformIO hs_bindgen_9f3d4d885005b747

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_move@
foreign import ccall unsafe "hs_bindgen_39645614a3e16cf8" hs_bindgen_39645614a3e16cf8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_move@
hs_bindgen_39645614a3e16cf8 :: IO (RIP.FunPtr (RIP.Ptr Wl_shell_surface -> RIP.Ptr Wl_seat -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_39645614a3e16cf8 =
  RIP.fromFFIType hs_bindgen_39645614a3e16cf8_base

{-# NOINLINE wl_shell_surface_move #-}
{-| Start a pointer-driven move of the surface.

    This request must be used in response to a button press event. The server may ignore move requests depending on the state of the surface (e.g. fullscreen or maximized).

    __C declaration:__ @wl_shell_surface_move@

    __defined at:__ @wayland-client-protocol.h 3473:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_move :: RIP.FunPtr (RIP.Ptr Wl_shell_surface -> RIP.Ptr Wl_seat -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_shell_surface_move =
  RIP.unsafePerformIO hs_bindgen_39645614a3e16cf8

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_resize@
foreign import ccall unsafe "hs_bindgen_d4286cfa73a586e3" hs_bindgen_d4286cfa73a586e3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_resize@
hs_bindgen_d4286cfa73a586e3 :: IO (RIP.FunPtr (RIP.Ptr Wl_shell_surface -> RIP.Ptr Wl_seat -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_d4286cfa73a586e3 =
  RIP.fromFFIType hs_bindgen_d4286cfa73a586e3_base

{-# NOINLINE wl_shell_surface_resize #-}
{-| Start a pointer-driven resizing of the surface.

    This request must be used in response to a button press event. The server may ignore resize requests depending on the state of the surface (e.g. fullscreen or maximized).

    __C declaration:__ @wl_shell_surface_resize@

    __defined at:__ @wayland-client-protocol.h 3489:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_resize :: RIP.FunPtr (RIP.Ptr Wl_shell_surface -> RIP.Ptr Wl_seat -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_shell_surface_resize =
  RIP.unsafePerformIO hs_bindgen_d4286cfa73a586e3

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_toplevel@
foreign import ccall unsafe "hs_bindgen_272372acea11263e" hs_bindgen_272372acea11263e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_toplevel@
hs_bindgen_272372acea11263e :: IO (RIP.FunPtr (RIP.Ptr Wl_shell_surface -> IO ()))
hs_bindgen_272372acea11263e =
  RIP.fromFFIType hs_bindgen_272372acea11263e_base

{-# NOINLINE wl_shell_surface_set_toplevel #-}
{-| Map the surface as a toplevel surface.

    A toplevel surface is not fullscreen, maximized or transient.

    __C declaration:__ @wl_shell_surface_set_toplevel@

    __defined at:__ @wayland-client-protocol.h 3503:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_toplevel :: RIP.FunPtr (RIP.Ptr Wl_shell_surface -> IO ())
wl_shell_surface_set_toplevel =
  RIP.unsafePerformIO hs_bindgen_272372acea11263e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_transient@
foreign import ccall unsafe "hs_bindgen_d79a68ddefe4d991" hs_bindgen_d79a68ddefe4d991_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_transient@
hs_bindgen_d79a68ddefe4d991 :: IO (RIP.FunPtr (RIP.Ptr Wl_shell_surface -> RIP.Ptr Wl_surface -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_d79a68ddefe4d991 =
  RIP.fromFFIType hs_bindgen_d79a68ddefe4d991_base

{-# NOINLINE wl_shell_surface_set_transient #-}
{-| Map the surface relative to an existing surface.

    The x and y arguments specify the location of the upper left corner of the surface relative to the upper left corner of the parent surface, in surface-local coordinates.

    The flags argument controls details of the transient behaviour.

    __C declaration:__ @wl_shell_surface_set_transient@

    __defined at:__ @wayland-client-protocol.h 3521:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_transient :: RIP.FunPtr (RIP.Ptr Wl_shell_surface -> RIP.Ptr Wl_surface -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_shell_surface_set_transient =
  RIP.unsafePerformIO hs_bindgen_d79a68ddefe4d991

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_fullscreen@
foreign import ccall unsafe "hs_bindgen_a5b76466e9a5bd3c" hs_bindgen_a5b76466e9a5bd3c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_fullscreen@
hs_bindgen_a5b76466e9a5bd3c :: IO (RIP.FunPtr (RIP.Ptr Wl_shell_surface -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> RIP.Ptr Wl_output -> IO ()))
hs_bindgen_a5b76466e9a5bd3c =
  RIP.fromFFIType hs_bindgen_a5b76466e9a5bd3c_base

{-# NOINLINE wl_shell_surface_set_fullscreen #-}
{-| Map the surface as a fullscreen surface.

    If an output parameter is given then the surface will be made fullscreen on that output. If the client does not specify the output then the compositor will apply its policy - usually choosing the output on which the surface has the biggest surface area.

    The client may specify a method to resolve a size conflict between the output size and the surface size - this is provided through the method parameter.

    The framerate parameter is used only when the method is set to "driver", to indicate the preferred framerate. A value of 0 indicates that the client does not care about framerate. The framerate is specified in mHz, that is framerate of 60000 is 60Hz.

    A method of "scale" or "driver" implies a scaling operation of the surface, either via a direct scaling operation or a change of the output mode. This will override any kind of output scaling, so that mapping a surface with a buffer size equal to the mode can fill the screen independent of buffer_scale.

    A method of "fill" means we don't scale up the buffer, however any output scale is applied. This means that you may run into an edge case where the application maps a buffer with the same size of the output mode but buffer_scale 1 (thus making a surface larger than the output). In this case it is allowed to downscale the results to fit the screen.

    The compositor must reply to this request with a configure event with the dimensions for the output on which the surface will be made fullscreen.

    __C declaration:__ @wl_shell_surface_set_fullscreen@

    __defined at:__ @wayland-client-protocol.h 3565:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_fullscreen :: RIP.FunPtr (RIP.Ptr Wl_shell_surface -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> RIP.Ptr Wl_output -> IO ())
wl_shell_surface_set_fullscreen =
  RIP.unsafePerformIO hs_bindgen_a5b76466e9a5bd3c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_popup@
foreign import ccall unsafe "hs_bindgen_b694ccd3619fed32" hs_bindgen_b694ccd3619fed32_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_popup@
hs_bindgen_b694ccd3619fed32 :: IO (RIP.FunPtr (RIP.Ptr Wl_shell_surface -> RIP.Ptr Wl_seat -> HsBindgen.Runtime.LibC.Word32 -> RIP.Ptr Wl_surface -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_b694ccd3619fed32 =
  RIP.fromFFIType hs_bindgen_b694ccd3619fed32_base

{-# NOINLINE wl_shell_surface_set_popup #-}
{-| Map the surface as a popup.

    A popup surface is a transient surface with an added pointer grab.

    An existing implicit grab will be changed to owner-events mode, and the popup grab will continue after the implicit grab ends (i.e. releasing the mouse button does not cause the popup to be unmapped).

    The popup grab continues until the window is destroyed or a mouse button is pressed in any other client's window. A click in any of the client's surfaces is reported as normal, however, clicks in other clients' surfaces will be discarded and trigger the callback.

    The x and y arguments specify the location of the upper left corner of the surface relative to the upper left corner of the parent surface, in surface-local coordinates.

    __C declaration:__ @wl_shell_surface_set_popup@

    __defined at:__ @wayland-client-protocol.h 3595:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_popup :: RIP.FunPtr (RIP.Ptr Wl_shell_surface -> RIP.Ptr Wl_seat -> HsBindgen.Runtime.LibC.Word32 -> RIP.Ptr Wl_surface -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_shell_surface_set_popup =
  RIP.unsafePerformIO hs_bindgen_b694ccd3619fed32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_maximized@
foreign import ccall unsafe "hs_bindgen_172db9e0e6a6619f" hs_bindgen_172db9e0e6a6619f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_maximized@
hs_bindgen_172db9e0e6a6619f :: IO (RIP.FunPtr (RIP.Ptr Wl_shell_surface -> RIP.Ptr Wl_output -> IO ()))
hs_bindgen_172db9e0e6a6619f =
  RIP.fromFFIType hs_bindgen_172db9e0e6a6619f_base

{-# NOINLINE wl_shell_surface_set_maximized #-}
{-| Map the surface as a maximized surface.

    If an output parameter is given then the surface will be maximized on that output. If the client does not specify the output then the compositor will apply its policy - usually choosing the output on which the surface has the biggest surface area.

    The compositor will reply with a configure event telling the expected new surface size. The operation is completed on the next buffer attach to this surface.

    A maximized surface typically fills the entire output it is bound to, except for desktop elements such as panels. This is the main difference between a maximized shell surface and a fullscreen shell surface.

    The details depend on the compositor implementation.

    __C declaration:__ @wl_shell_surface_set_maximized@

    __defined at:__ @wayland-client-protocol.h 3624:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_maximized :: RIP.FunPtr (RIP.Ptr Wl_shell_surface -> RIP.Ptr Wl_output -> IO ())
wl_shell_surface_set_maximized =
  RIP.unsafePerformIO hs_bindgen_172db9e0e6a6619f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_title@
foreign import ccall unsafe "hs_bindgen_a7e7470bfcd8de31" hs_bindgen_a7e7470bfcd8de31_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_title@
hs_bindgen_a7e7470bfcd8de31 :: IO (RIP.FunPtr (RIP.Ptr Wl_shell_surface -> PtrConst.PtrConst RIP.CChar -> IO ()))
hs_bindgen_a7e7470bfcd8de31 =
  RIP.fromFFIType hs_bindgen_a7e7470bfcd8de31_base

{-# NOINLINE wl_shell_surface_set_title #-}
{-| Set a short title for the surface.

    This string may be used to identify the surface in a task bar, window list, or other user interface elements provided by the compositor.

    The string must be encoded in UTF-8.

    __C declaration:__ @wl_shell_surface_set_title@

    __defined at:__ @wayland-client-protocol.h 3642:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_title :: RIP.FunPtr (RIP.Ptr Wl_shell_surface -> PtrConst.PtrConst RIP.CChar -> IO ())
wl_shell_surface_set_title =
  RIP.unsafePerformIO hs_bindgen_a7e7470bfcd8de31

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_class@
foreign import ccall unsafe "hs_bindgen_c9322f8d9953d46e" hs_bindgen_c9322f8d9953d46e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_class@
hs_bindgen_c9322f8d9953d46e :: IO (RIP.FunPtr (RIP.Ptr Wl_shell_surface -> PtrConst.PtrConst RIP.CChar -> IO ()))
hs_bindgen_c9322f8d9953d46e =
  RIP.fromFFIType hs_bindgen_c9322f8d9953d46e_base

{-# NOINLINE wl_shell_surface_set_class #-}
{-| Set a class for the surface.

    The surface class identifies the general class of applications to which the surface belongs. A common convention is to use the file name (or the full path if it is a non-standard location) of the application's .desktop file as the class.

    __C declaration:__ @wl_shell_surface_set_class@

    __defined at:__ @wayland-client-protocol.h 3659:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_class :: RIP.FunPtr (RIP.Ptr Wl_shell_surface -> PtrConst.PtrConst RIP.CChar -> IO ())
wl_shell_surface_set_class =
  RIP.unsafePerformIO hs_bindgen_c9322f8d9953d46e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_add_listener@
foreign import ccall unsafe "hs_bindgen_f290b1db5674e724" hs_bindgen_f290b1db5674e724_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_add_listener@
hs_bindgen_f290b1db5674e724 :: IO (RIP.FunPtr (RIP.Ptr Wl_surface -> PtrConst.PtrConst Wl_surface_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt))
hs_bindgen_f290b1db5674e724 =
  RIP.fromFFIType hs_bindgen_f290b1db5674e724_base

{-# NOINLINE wl_surface_add_listener #-}
{-| __C declaration:__ @wl_surface_add_listener@

    __defined at:__ @wayland-client-protocol.h 3780:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_add_listener :: RIP.FunPtr (RIP.Ptr Wl_surface -> PtrConst.PtrConst Wl_surface_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt)
wl_surface_add_listener =
  RIP.unsafePerformIO hs_bindgen_f290b1db5674e724

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_set_user_data@
foreign import ccall unsafe "hs_bindgen_02f6354e8dc43284" hs_bindgen_02f6354e8dc43284_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_set_user_data@
hs_bindgen_02f6354e8dc43284 :: IO (RIP.FunPtr (RIP.Ptr Wl_surface -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_02f6354e8dc43284 =
  RIP.fromFFIType hs_bindgen_02f6354e8dc43284_base

{-# NOINLINE wl_surface_set_user_data #-}
{-| __C declaration:__ @wl_surface_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3863:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_surface -> RIP.Ptr RIP.Void -> IO ())
wl_surface_set_user_data =
  RIP.unsafePerformIO hs_bindgen_02f6354e8dc43284

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_get_user_data@
foreign import ccall unsafe "hs_bindgen_d87fc6a1ccb08dc0" hs_bindgen_d87fc6a1ccb08dc0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_get_user_data@
hs_bindgen_d87fc6a1ccb08dc0 :: IO (RIP.FunPtr (RIP.Ptr Wl_surface -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_d87fc6a1ccb08dc0 =
  RIP.fromFFIType hs_bindgen_d87fc6a1ccb08dc0_base

{-# NOINLINE wl_surface_get_user_data #-}
{-| __C declaration:__ @wl_surface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3870:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_surface -> IO (RIP.Ptr RIP.Void))
wl_surface_get_user_data =
  RIP.unsafePerformIO hs_bindgen_d87fc6a1ccb08dc0

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_get_version@
foreign import ccall unsafe "hs_bindgen_2f50e6a4e85ba39c" hs_bindgen_2f50e6a4e85ba39c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_get_version@
hs_bindgen_2f50e6a4e85ba39c :: IO (RIP.FunPtr (RIP.Ptr Wl_surface -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_2f50e6a4e85ba39c =
  RIP.fromFFIType hs_bindgen_2f50e6a4e85ba39c_base

{-# NOINLINE wl_surface_get_version #-}
{-| __C declaration:__ @wl_surface_get_version@

    __defined at:__ @wayland-client-protocol.h 3876:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_get_version :: RIP.FunPtr (RIP.Ptr Wl_surface -> IO HsBindgen.Runtime.LibC.Word32)
wl_surface_get_version =
  RIP.unsafePerformIO hs_bindgen_2f50e6a4e85ba39c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_destroy@
foreign import ccall unsafe "hs_bindgen_f5cd1c6d41807882" hs_bindgen_f5cd1c6d41807882_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_destroy@
hs_bindgen_f5cd1c6d41807882 :: IO (RIP.FunPtr (RIP.Ptr Wl_surface -> IO ()))
hs_bindgen_f5cd1c6d41807882 =
  RIP.fromFFIType hs_bindgen_f5cd1c6d41807882_base

{-# NOINLINE wl_surface_destroy #-}
{-| Deletes the surface and invalidates its object ID.

    __C declaration:__ @wl_surface_destroy@

    __defined at:__ @wayland-client-protocol.h 3887:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_destroy :: RIP.FunPtr (RIP.Ptr Wl_surface -> IO ())
wl_surface_destroy =
  RIP.unsafePerformIO hs_bindgen_f5cd1c6d41807882

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_attach@
foreign import ccall unsafe "hs_bindgen_6cea11a38b73afc1" hs_bindgen_6cea11a38b73afc1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_attach@
hs_bindgen_6cea11a38b73afc1 :: IO (RIP.FunPtr (RIP.Ptr Wl_surface -> RIP.Ptr Wl_buffer -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_6cea11a38b73afc1 =
  RIP.fromFFIType hs_bindgen_6cea11a38b73afc1_base

{-# NOINLINE wl_surface_attach #-}
{-| Set a buffer as the content of this surface.

    The new size of the surface is calculated based on the buffer size transformed by the inverse buffer_transform and the inverse buffer_scale. This means that at commit time the supplied buffer size must be an integer multiple of the buffer_scale. If that's not the case, an invalid_size error is sent.

    The x and y arguments specify the location of the new pending buffer's upper left corner, relative to the current buffer's upper left corner, in surface-local coordinates. In other words, the x and y, combined with the new surface size define in which directions the surface's size changes. Setting anything other than 0 as x and y arguments is discouraged, and should instead be replaced with using the separate wl_surface.offset request.

    When the bound wl_surface version is 5 or higher, passing any non-zero x or y is a protocol violation, and will result in an 'invalid_offset' error being raised. The x and y arguments are ignored and do not change the pending state. To achieve equivalent semantics, use wl_surface.offset.

    Surface contents are double-buffered state, see wl_surface.commit.

    The initial surface contents are void; there is no content. wl_surface.attach assigns the given wl_buffer as the pending wl_buffer. wl_surface.commit makes the pending wl_buffer the new surface contents, and the size of the surface becomes the size calculated from the wl_buffer, as described above. After commit, there is no pending buffer until the next attach.

    Committing a pending wl_buffer allows the compositor to read the pixels in the wl_buffer. The compositor may access the pixels at any time after the wl_surface.commit request. When the compositor will not access the pixels anymore, it will send the wl_buffer.release event. Only after receiving wl_buffer.release, the client may reuse the wl_buffer. A wl_buffer that has been attached and then replaced by another attach instead of committed will not receive a release event, and is not used by the compositor.

    If a pending wl_buffer has been committed to more than one wl_surface, the delivery of wl_buffer.release events becomes undefined. A well behaved client should not rely on wl_buffer.release events in this case. Alternatively, a client could create multiple wl_buffer objects from the same backing storage or use a protocol extension providing per-commit release notifications.

    Destroying the wl_buffer after wl_buffer.release does not change the surface contents. Destroying the wl_buffer before wl_buffer.release is allowed as long as the underlying buffer storage isn't re-used (this can happen e.g. on client process termination). However, if the client destroys the wl_buffer before receiving the wl_buffer.release event and mutates the underlying buffer storage, the surface contents become undefined immediately.

    If wl_surface.attach is sent with a NULL wl_buffer, the following wl_surface.commit will remove the surface content.

    If a pending wl_buffer has been destroyed, the result is not specified. Many compositors are known to remove the surface content on the following wl_surface.commit, but this behaviour is not universal. Clients seeking to maximise compatibility should not destroy pending buffers and should ensure that they explicitly remove content from surfaces, even after destroying buffers.

    __C declaration:__ @wl_surface_attach@

    __defined at:__ @wayland-client-protocol.h 3963:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_attach :: RIP.FunPtr (RIP.Ptr Wl_surface -> RIP.Ptr Wl_buffer -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_surface_attach =
  RIP.unsafePerformIO hs_bindgen_6cea11a38b73afc1

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_damage@
foreign import ccall unsafe "hs_bindgen_fbcfbd16b5ff372d" hs_bindgen_fbcfbd16b5ff372d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_damage@
hs_bindgen_fbcfbd16b5ff372d :: IO (RIP.FunPtr (RIP.Ptr Wl_surface -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_fbcfbd16b5ff372d =
  RIP.fromFFIType hs_bindgen_fbcfbd16b5ff372d_base

{-# NOINLINE wl_surface_damage #-}
{-| This request is used to describe the regions where the pending buffer is different from the current surface contents, and where the surface therefore needs to be repainted. The compositor ignores the parts of the damage that fall outside of the surface.

    Damage is double-buffered state, see wl_surface.commit.

    The damage rectangle is specified in surface-local coordinates, where x and y specify the upper left corner of the damage rectangle.

    The initial value for pending damage is empty: no damage. wl_surface.damage adds pending damage: the new pending damage is the union of old pending damage and the given rectangle.

    wl_surface.commit assigns pending damage as the current damage, and clears pending damage. The server will clear the current damage as it repaints the surface.

    Note! New clients should not use this request. Instead damage can be posted with wl_surface.damage_buffer which uses buffer coordinates instead of surface coordinates.

    __C declaration:__ @wl_surface_damage@

    __defined at:__ @wayland-client-protocol.h 3995:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_damage :: RIP.FunPtr (RIP.Ptr Wl_surface -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_surface_damage =
  RIP.unsafePerformIO hs_bindgen_fbcfbd16b5ff372d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_frame@
foreign import ccall unsafe "hs_bindgen_4c0157d30459a321" hs_bindgen_4c0157d30459a321_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_frame@
hs_bindgen_4c0157d30459a321 :: IO (RIP.FunPtr (RIP.Ptr Wl_surface -> IO (RIP.Ptr Wl_callback)))
hs_bindgen_4c0157d30459a321 =
  RIP.fromFFIType hs_bindgen_4c0157d30459a321_base

{-# NOINLINE wl_surface_frame #-}
{-| Request a notification when it is a good time to start drawing a new frame, by creating a frame callback. This is useful for throttling redrawing operations, and driving animations.

    When a client is animating on a wl_surface, it can use the 'frame' request to get notified when it is a good time to draw and commit the next frame of animation. If the client commits an update earlier than that, it is likely that some updates will not make it to the display, and the client is wasting resources by drawing too often.

    The frame request will take effect on the next wl_surface.commit. The notification will only be posted for one frame unless requested again. For a wl_surface, the notifications are posted in the order the frame requests were committed.

    The server must send the notifications so that a client will not send excessive updates, while still allowing the highest possible update rate for clients that wait for the reply before drawing again. The server should give some time for the client to draw and commit after sending the frame callback events to let it hit the next output refresh.

    A server should avoid signaling the frame callbacks if the surface is not visible in any way, e.g. the surface is off-screen, or completely obscured by other opaque surfaces.

    The object returned by this request will be destroyed by the compositor after the callback is fired and as such the client must not attempt to use it after that point.

    The callback_data passed in the callback is the current time, in milliseconds, with an undefined base.

    __C declaration:__ @wl_surface_frame@

    __defined at:__ @wayland-client-protocol.h 4038:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_frame :: RIP.FunPtr (RIP.Ptr Wl_surface -> IO (RIP.Ptr Wl_callback))
wl_surface_frame =
  RIP.unsafePerformIO hs_bindgen_4c0157d30459a321

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_set_opaque_region@
foreign import ccall unsafe "hs_bindgen_08339869571f29af" hs_bindgen_08339869571f29af_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_set_opaque_region@
hs_bindgen_08339869571f29af :: IO (RIP.FunPtr (RIP.Ptr Wl_surface -> RIP.Ptr Wl_region -> IO ()))
hs_bindgen_08339869571f29af =
  RIP.fromFFIType hs_bindgen_08339869571f29af_base

{-# NOINLINE wl_surface_set_opaque_region #-}
{-| This request sets the region of the surface that contains opaque content.

    The opaque region is an optimization hint for the compositor that lets it optimize the redrawing of content behind opaque regions. Setting an opaque region is not required for correct behaviour, but marking transparent content as opaque will result in repaint artifacts.

    The opaque region is specified in surface-local coordinates.

    The compositor ignores the parts of the opaque region that fall outside of the surface.

    Opaque region is double-buffered state, see wl_surface.commit.

    wl_surface.set_opaque_region changes the pending opaque region. wl_surface.commit copies the pending region to the current region. Otherwise, the pending and current regions are never changed.

    The initial value for an opaque region is empty. Setting the pending opaque region has copy semantics, and the wl_region object can be destroyed immediately. A NULL wl_region causes the pending opaque region to be set to empty.

    __C declaration:__ @wl_surface_set_opaque_region@

    __defined at:__ @wayland-client-protocol.h 4077:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_set_opaque_region :: RIP.FunPtr (RIP.Ptr Wl_surface -> RIP.Ptr Wl_region -> IO ())
wl_surface_set_opaque_region =
  RIP.unsafePerformIO hs_bindgen_08339869571f29af

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_set_input_region@
foreign import ccall unsafe "hs_bindgen_f4a9e55766d03ae7" hs_bindgen_f4a9e55766d03ae7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_set_input_region@
hs_bindgen_f4a9e55766d03ae7 :: IO (RIP.FunPtr (RIP.Ptr Wl_surface -> RIP.Ptr Wl_region -> IO ()))
hs_bindgen_f4a9e55766d03ae7 =
  RIP.fromFFIType hs_bindgen_f4a9e55766d03ae7_base

{-# NOINLINE wl_surface_set_input_region #-}
{-| This request sets the region of the surface that can receive pointer and touch events.

    Input events happening outside of this region will try the next surface in the server surface stack. The compositor ignores the parts of the input region that fall outside of the surface.

    The input region is specified in surface-local coordinates.

    Input region is double-buffered state, see wl_surface.commit.

    wl_surface.set_input_region changes the pending input region. wl_surface.commit copies the pending region to the current region. Otherwise the pending and current regions are never changed, except cursor and icon surfaces are special cases, see wl_pointer.set_cursor and wl_data_device.start_drag.

    The initial value for an input region is infinite. That means the whole surface will accept input. Setting the pending input region has copy semantics, and the wl_region object can be destroyed immediately. A NULL wl_region causes the input region to be set to infinite.

    __C declaration:__ @wl_surface_set_input_region@

    __defined at:__ @wayland-client-protocol.h 4110:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_set_input_region :: RIP.FunPtr (RIP.Ptr Wl_surface -> RIP.Ptr Wl_region -> IO ())
wl_surface_set_input_region =
  RIP.unsafePerformIO hs_bindgen_f4a9e55766d03ae7

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_commit@
foreign import ccall unsafe "hs_bindgen_e71162eb00c1f17d" hs_bindgen_e71162eb00c1f17d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_commit@
hs_bindgen_e71162eb00c1f17d :: IO (RIP.FunPtr (RIP.Ptr Wl_surface -> IO ()))
hs_bindgen_e71162eb00c1f17d =
  RIP.fromFFIType hs_bindgen_e71162eb00c1f17d_base

{-# NOINLINE wl_surface_commit #-}
{-| Surface state (input, opaque, and damage regions, attached buffers, etc.) is double-buffered. Protocol requests modify the pending state, as opposed to the active state in use by the compositor.

    A commit request atomically creates a content update from the pending state, even if the pending state has not been touched. The content update is placed in a queue until it becomes active. After commit, the new pending state is as documented for each related request.

    When the content update is applied, the wl_buffer is applied before all other state. This means that all coordinates in double-buffered state are relative to the newly attached wl_buffers, except for wl_surface.attach itself. If there is no newly attached wl_buffer, the coordinates are relative to the previous content update.

    All requests that need a commit to become effective are documented to affect double-buffered state.

    Other interfaces may add further double-buffered surface state.

    __C declaration:__ @wl_surface_commit@

    __defined at:__ @wayland-client-protocol.h 4140:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_commit :: RIP.FunPtr (RIP.Ptr Wl_surface -> IO ())
wl_surface_commit =
  RIP.unsafePerformIO hs_bindgen_e71162eb00c1f17d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_set_buffer_transform@
foreign import ccall unsafe "hs_bindgen_600b541f7d426a75" hs_bindgen_600b541f7d426a75_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_set_buffer_transform@
hs_bindgen_600b541f7d426a75 :: IO (RIP.FunPtr (RIP.Ptr Wl_surface -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_600b541f7d426a75 =
  RIP.fromFFIType hs_bindgen_600b541f7d426a75_base

{-# NOINLINE wl_surface_set_buffer_transform #-}
{-| This request sets the transformation that the client has already applied to the content of the buffer. The accepted values for the transform parameter are the values for wl_output.transform.

    The compositor applies the inverse of this transformation whenever it uses the buffer contents.

    Buffer transform is double-buffered state, see wl_surface.commit.

    A newly created surface has its buffer transformation set to normal.

    wl_surface.set_buffer_transform changes the pending buffer transformation. wl_surface.commit copies the pending buffer transformation to the current one. Otherwise, the pending and current values are never changed.

    The purpose of this request is to allow clients to render content according to the output transform, thus permitting the compositor to use certain optimizations even if the display is rotated. Using hardware overlays and scanning out a client buffer for fullscreen surfaces are examples of such optimizations. Those optimizations are highly dependent on the compositor implementation, so the use of this request should be considered on a case-by-case basis.

    Note that if the transform value includes 90 or 270 degree rotation, the width of the buffer will become the surface height and the height of the buffer will become the surface width.

    If transform is not one of the values from the wl_output.transform enum the invalid_transform protocol error is raised.

    __C declaration:__ @wl_surface_set_buffer_transform@

    __defined at:__ @wayland-client-protocol.h 4182:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_set_buffer_transform :: RIP.FunPtr (RIP.Ptr Wl_surface -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_surface_set_buffer_transform =
  RIP.unsafePerformIO hs_bindgen_600b541f7d426a75

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_set_buffer_scale@
foreign import ccall unsafe "hs_bindgen_54ad2756ab720f22" hs_bindgen_54ad2756ab720f22_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_set_buffer_scale@
hs_bindgen_54ad2756ab720f22 :: IO (RIP.FunPtr (RIP.Ptr Wl_surface -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_54ad2756ab720f22 =
  RIP.fromFFIType hs_bindgen_54ad2756ab720f22_base

{-# NOINLINE wl_surface_set_buffer_scale #-}
{-| This request sets an optional scaling factor on how the compositor interprets the contents of the buffer attached to the window.

    Buffer scale is double-buffered state, see wl_surface.commit.

    A newly created surface has its buffer scale set to 1.

    wl_surface.set_buffer_scale changes the pending buffer scale. wl_surface.commit copies the pending buffer scale to the current one. Otherwise, the pending and current values are never changed.

    The purpose of this request is to allow clients to supply higher resolution buffer data for use on high resolution outputs. It is intended that you pick the same buffer scale as the scale of the output that the surface is displayed on. This means the compositor can avoid scaling when rendering the surface on that output.

    Note that if the scale is larger than 1, then you have to attach a buffer that is larger (by a factor of scale in each dimension) than the desired surface size.

    If scale is not greater than 0 the invalid_scale protocol error is raised.

    __C declaration:__ @wl_surface_set_buffer_scale@

    __defined at:__ @wayland-client-protocol.h 4216:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_set_buffer_scale :: RIP.FunPtr (RIP.Ptr Wl_surface -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_surface_set_buffer_scale =
  RIP.unsafePerformIO hs_bindgen_54ad2756ab720f22

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_damage_buffer@
foreign import ccall unsafe "hs_bindgen_1f84950729192aea" hs_bindgen_1f84950729192aea_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_damage_buffer@
hs_bindgen_1f84950729192aea :: IO (RIP.FunPtr (RIP.Ptr Wl_surface -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_1f84950729192aea =
  RIP.fromFFIType hs_bindgen_1f84950729192aea_base

{-# NOINLINE wl_surface_damage_buffer #-}
{-| This request is used to describe the regions where the pending buffer is different from the current surface contents, and where the surface therefore needs to be repainted. The compositor ignores the parts of the damage that fall outside of the surface.

    Damage is double-buffered state, see wl_surface.commit.

    The damage rectangle is specified in buffer coordinates, where x and y specify the upper left corner of the damage rectangle.

    The initial value for pending damage is empty: no damage. wl_surface.damage_buffer adds pending damage: the new pending damage is the union of old pending damage and the given rectangle.

    wl_surface.commit assigns pending damage as the current damage, and clears pending damage. The server will clear the current damage as it repaints the surface.

    This request differs from wl_surface.damage in only one way - it takes damage in buffer coordinates instead of surface-local coordinates. While this generally is more intuitive than surface coordinates, it is especially desirable when using wp_viewport or when a drawing library (like EGL) is unaware of buffer scale and buffer transform.

    Note: Because buffer transformation changes and damage requests may be interleaved in the protocol stream, it is impossible to determine the actual mapping between surface and buffer damage until wl_surface.commit time. Therefore, compositors wishing to take both kinds of damage into account will have to accumulate damage from the two requests separately and only transform from one to the other after receiving the wl_surface.commit.

    __C declaration:__ @wl_surface_damage_buffer@

    __defined at:__ @wayland-client-protocol.h 4259:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_damage_buffer :: RIP.FunPtr (RIP.Ptr Wl_surface -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_surface_damage_buffer =
  RIP.unsafePerformIO hs_bindgen_1f84950729192aea

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_offset@
foreign import ccall unsafe "hs_bindgen_09a3336595fe6efe" hs_bindgen_09a3336595fe6efe_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_offset@
hs_bindgen_09a3336595fe6efe :: IO (RIP.FunPtr (RIP.Ptr Wl_surface -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_09a3336595fe6efe =
  RIP.fromFFIType hs_bindgen_09a3336595fe6efe_base

{-# NOINLINE wl_surface_offset #-}
{-| The x and y arguments specify the location of the new pending buffer's upper left corner, relative to the current buffer's upper left corner, in surface-local coordinates. In other words, the x and y, combined with the new surface size define in which directions the surface's size changes.

    The exact semantics of wl_surface.offset are role-specific. Refer to the documentation of specific roles for more information.

    Surface location offset is double-buffered state, see wl_surface.commit.

    This request is semantically equivalent to and the replaces the x and y arguments in the wl_surface.attach request in wl_surface versions prior to 5. See wl_surface.attach for details.

    __C declaration:__ @wl_surface_offset@

    __defined at:__ @wayland-client-protocol.h 4285:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_offset :: RIP.FunPtr (RIP.Ptr Wl_surface -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_surface_offset =
  RIP.unsafePerformIO hs_bindgen_09a3336595fe6efe

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_add_listener@
foreign import ccall unsafe "hs_bindgen_579c13f6a7b06438" hs_bindgen_579c13f6a7b06438_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_add_listener@
hs_bindgen_579c13f6a7b06438 :: IO (RIP.FunPtr (RIP.Ptr Wl_seat -> PtrConst.PtrConst Wl_seat_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt))
hs_bindgen_579c13f6a7b06438 =
  RIP.fromFFIType hs_bindgen_579c13f6a7b06438_base

{-# NOINLINE wl_seat_add_listener #-}
{-| __C declaration:__ @wl_seat_add_listener@

    __defined at:__ @wayland-client-protocol.h 4406:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_add_listener :: RIP.FunPtr (RIP.Ptr Wl_seat -> PtrConst.PtrConst Wl_seat_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt)
wl_seat_add_listener =
  RIP.unsafePerformIO hs_bindgen_579c13f6a7b06438

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_set_user_data@
foreign import ccall unsafe "hs_bindgen_e6f71f976fd88c0a" hs_bindgen_e6f71f976fd88c0a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_set_user_data@
hs_bindgen_e6f71f976fd88c0a :: IO (RIP.FunPtr (RIP.Ptr Wl_seat -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_e6f71f976fd88c0a =
  RIP.fromFFIType hs_bindgen_e6f71f976fd88c0a_base

{-# NOINLINE wl_seat_set_user_data #-}
{-| __C declaration:__ @wl_seat_set_user_data@

    __defined at:__ @wayland-client-protocol.h 4446:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_seat -> RIP.Ptr RIP.Void -> IO ())
wl_seat_set_user_data =
  RIP.unsafePerformIO hs_bindgen_e6f71f976fd88c0a

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_get_user_data@
foreign import ccall unsafe "hs_bindgen_34a274599cd21f64" hs_bindgen_34a274599cd21f64_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_get_user_data@
hs_bindgen_34a274599cd21f64 :: IO (RIP.FunPtr (RIP.Ptr Wl_seat -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_34a274599cd21f64 =
  RIP.fromFFIType hs_bindgen_34a274599cd21f64_base

{-# NOINLINE wl_seat_get_user_data #-}
{-| __C declaration:__ @wl_seat_get_user_data@

    __defined at:__ @wayland-client-protocol.h 4453:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_seat -> IO (RIP.Ptr RIP.Void))
wl_seat_get_user_data =
  RIP.unsafePerformIO hs_bindgen_34a274599cd21f64

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_get_version@
foreign import ccall unsafe "hs_bindgen_3a2674bcf308a7d2" hs_bindgen_3a2674bcf308a7d2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_get_version@
hs_bindgen_3a2674bcf308a7d2 :: IO (RIP.FunPtr (RIP.Ptr Wl_seat -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_3a2674bcf308a7d2 =
  RIP.fromFFIType hs_bindgen_3a2674bcf308a7d2_base

{-# NOINLINE wl_seat_get_version #-}
{-| __C declaration:__ @wl_seat_get_version@

    __defined at:__ @wayland-client-protocol.h 4459:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_get_version :: RIP.FunPtr (RIP.Ptr Wl_seat -> IO HsBindgen.Runtime.LibC.Word32)
wl_seat_get_version =
  RIP.unsafePerformIO hs_bindgen_3a2674bcf308a7d2

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_destroy@
foreign import ccall unsafe "hs_bindgen_9d2be8decc791d6b" hs_bindgen_9d2be8decc791d6b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_destroy@
hs_bindgen_9d2be8decc791d6b :: IO (RIP.FunPtr (RIP.Ptr Wl_seat -> IO ()))
hs_bindgen_9d2be8decc791d6b =
  RIP.fromFFIType hs_bindgen_9d2be8decc791d6b_base

{-# NOINLINE wl_seat_destroy #-}
{-| __C declaration:__ @wl_seat_destroy@

    __defined at:__ @wayland-client-protocol.h 4466:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_destroy :: RIP.FunPtr (RIP.Ptr Wl_seat -> IO ())
wl_seat_destroy =
  RIP.unsafePerformIO hs_bindgen_9d2be8decc791d6b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_get_pointer@
foreign import ccall unsafe "hs_bindgen_310013482fd7d723" hs_bindgen_310013482fd7d723_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_get_pointer@
hs_bindgen_310013482fd7d723 :: IO (RIP.FunPtr (RIP.Ptr Wl_seat -> IO (RIP.Ptr Wl_pointer)))
hs_bindgen_310013482fd7d723 =
  RIP.fromFFIType hs_bindgen_310013482fd7d723_base

{-# NOINLINE wl_seat_get_pointer #-}
{-| The ID provided will be initialized to the wl_pointer interface for this seat.

    This request only takes effect if the seat has the pointer capability, or has had the pointer capability in the past. It is a protocol violation to issue this request on a seat that has never had the pointer capability. The missing_capability error will be sent in this case.

    __C declaration:__ @wl_seat_get_pointer@

    __defined at:__ @wayland-client-protocol.h 4484:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_get_pointer :: RIP.FunPtr (RIP.Ptr Wl_seat -> IO (RIP.Ptr Wl_pointer))
wl_seat_get_pointer =
  RIP.unsafePerformIO hs_bindgen_310013482fd7d723

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_get_keyboard@
foreign import ccall unsafe "hs_bindgen_ba69bdcdc30acac2" hs_bindgen_ba69bdcdc30acac2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_get_keyboard@
hs_bindgen_ba69bdcdc30acac2 :: IO (RIP.FunPtr (RIP.Ptr Wl_seat -> IO (RIP.Ptr Wl_keyboard)))
hs_bindgen_ba69bdcdc30acac2 =
  RIP.fromFFIType hs_bindgen_ba69bdcdc30acac2_base

{-# NOINLINE wl_seat_get_keyboard #-}
{-| The ID provided will be initialized to the wl_keyboard interface for this seat.

    This request only takes effect if the seat has the keyboard capability, or has had the keyboard capability in the past. It is a protocol violation to issue this request on a seat that has never had the keyboard capability. The missing_capability error will be sent in this case.

    __C declaration:__ @wl_seat_get_keyboard@

    __defined at:__ @wayland-client-protocol.h 4507:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_get_keyboard :: RIP.FunPtr (RIP.Ptr Wl_seat -> IO (RIP.Ptr Wl_keyboard))
wl_seat_get_keyboard =
  RIP.unsafePerformIO hs_bindgen_ba69bdcdc30acac2

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_get_touch@
foreign import ccall unsafe "hs_bindgen_524fcf86125f1bce" hs_bindgen_524fcf86125f1bce_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_get_touch@
hs_bindgen_524fcf86125f1bce :: IO (RIP.FunPtr (RIP.Ptr Wl_seat -> IO (RIP.Ptr Wl_touch)))
hs_bindgen_524fcf86125f1bce =
  RIP.fromFFIType hs_bindgen_524fcf86125f1bce_base

{-# NOINLINE wl_seat_get_touch #-}
{-| The ID provided will be initialized to the wl_touch interface for this seat.

    This request only takes effect if the seat has the touch capability, or has had the touch capability in the past. It is a protocol violation to issue this request on a seat that has never had the touch capability. The missing_capability error will be sent in this case.

    __C declaration:__ @wl_seat_get_touch@

    __defined at:__ @wayland-client-protocol.h 4530:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_get_touch :: RIP.FunPtr (RIP.Ptr Wl_seat -> IO (RIP.Ptr Wl_touch))
wl_seat_get_touch =
  RIP.unsafePerformIO hs_bindgen_524fcf86125f1bce

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_release@
foreign import ccall unsafe "hs_bindgen_c8442799132a914a" hs_bindgen_c8442799132a914a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_release@
hs_bindgen_c8442799132a914a :: IO (RIP.FunPtr (RIP.Ptr Wl_seat -> IO ()))
hs_bindgen_c8442799132a914a =
  RIP.fromFFIType hs_bindgen_c8442799132a914a_base

{-# NOINLINE wl_seat_release #-}
{-| Using this request a client can tell the server that it is not going to use the seat object anymore.

    __C declaration:__ @wl_seat_release@

    __defined at:__ @wayland-client-protocol.h 4547:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_release :: RIP.FunPtr (RIP.Ptr Wl_seat -> IO ())
wl_seat_release =
  RIP.unsafePerformIO hs_bindgen_c8442799132a914a

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_add_listener@
foreign import ccall unsafe "hs_bindgen_bbbdbc0b35f7a59b" hs_bindgen_bbbdbc0b35f7a59b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_add_listener@
hs_bindgen_bbbdbc0b35f7a59b :: IO (RIP.FunPtr (RIP.Ptr Wl_pointer -> PtrConst.PtrConst Wl_pointer_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt))
hs_bindgen_bbbdbc0b35f7a59b =
  RIP.fromFFIType hs_bindgen_bbbdbc0b35f7a59b_base

{-# NOINLINE wl_pointer_add_listener #-}
{-| __C declaration:__ @wl_pointer_add_listener@

    __defined at:__ @wayland-client-protocol.h 5010:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_pointer_add_listener :: RIP.FunPtr (RIP.Ptr Wl_pointer -> PtrConst.PtrConst Wl_pointer_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt)
wl_pointer_add_listener =
  RIP.unsafePerformIO hs_bindgen_bbbdbc0b35f7a59b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_set_user_data@
foreign import ccall unsafe "hs_bindgen_86c79bd3cf9ddb0f" hs_bindgen_86c79bd3cf9ddb0f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_set_user_data@
hs_bindgen_86c79bd3cf9ddb0f :: IO (RIP.FunPtr (RIP.Ptr Wl_pointer -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_86c79bd3cf9ddb0f =
  RIP.fromFFIType hs_bindgen_86c79bd3cf9ddb0f_base

{-# NOINLINE wl_pointer_set_user_data #-}
{-| __C declaration:__ @wl_pointer_set_user_data@

    __defined at:__ @wayland-client-protocol.h 5076:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_pointer_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_pointer -> RIP.Ptr RIP.Void -> IO ())
wl_pointer_set_user_data =
  RIP.unsafePerformIO hs_bindgen_86c79bd3cf9ddb0f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_get_user_data@
foreign import ccall unsafe "hs_bindgen_639e08e0099bae0f" hs_bindgen_639e08e0099bae0f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_get_user_data@
hs_bindgen_639e08e0099bae0f :: IO (RIP.FunPtr (RIP.Ptr Wl_pointer -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_639e08e0099bae0f =
  RIP.fromFFIType hs_bindgen_639e08e0099bae0f_base

{-# NOINLINE wl_pointer_get_user_data #-}
{-| __C declaration:__ @wl_pointer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5083:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_pointer_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_pointer -> IO (RIP.Ptr RIP.Void))
wl_pointer_get_user_data =
  RIP.unsafePerformIO hs_bindgen_639e08e0099bae0f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_get_version@
foreign import ccall unsafe "hs_bindgen_943558b7959924db" hs_bindgen_943558b7959924db_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_get_version@
hs_bindgen_943558b7959924db :: IO (RIP.FunPtr (RIP.Ptr Wl_pointer -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_943558b7959924db =
  RIP.fromFFIType hs_bindgen_943558b7959924db_base

{-# NOINLINE wl_pointer_get_version #-}
{-| __C declaration:__ @wl_pointer_get_version@

    __defined at:__ @wayland-client-protocol.h 5089:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_pointer_get_version :: RIP.FunPtr (RIP.Ptr Wl_pointer -> IO HsBindgen.Runtime.LibC.Word32)
wl_pointer_get_version =
  RIP.unsafePerformIO hs_bindgen_943558b7959924db

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_destroy@
foreign import ccall unsafe "hs_bindgen_2bdc815aaeb617a5" hs_bindgen_2bdc815aaeb617a5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_destroy@
hs_bindgen_2bdc815aaeb617a5 :: IO (RIP.FunPtr (RIP.Ptr Wl_pointer -> IO ()))
hs_bindgen_2bdc815aaeb617a5 =
  RIP.fromFFIType hs_bindgen_2bdc815aaeb617a5_base

{-# NOINLINE wl_pointer_destroy #-}
{-| __C declaration:__ @wl_pointer_destroy@

    __defined at:__ @wayland-client-protocol.h 5096:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_pointer_destroy :: RIP.FunPtr (RIP.Ptr Wl_pointer -> IO ())
wl_pointer_destroy =
  RIP.unsafePerformIO hs_bindgen_2bdc815aaeb617a5

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_set_cursor@
foreign import ccall unsafe "hs_bindgen_6eb2b45946c27e1d" hs_bindgen_6eb2b45946c27e1d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_set_cursor@
hs_bindgen_6eb2b45946c27e1d :: IO (RIP.FunPtr (RIP.Ptr Wl_pointer -> HsBindgen.Runtime.LibC.Word32 -> RIP.Ptr Wl_surface -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_6eb2b45946c27e1d =
  RIP.fromFFIType hs_bindgen_6eb2b45946c27e1d_base

{-# NOINLINE wl_pointer_set_cursor #-}
{-| Set the pointer surface, i.e., the surface that contains the pointer image (cursor). This request gives the surface the role of a cursor. If the surface already has another role, it raises a protocol error.

    The cursor actually changes only if the pointer focus for this device is one of the requesting client's surfaces or the surface parameter is the current pointer surface. If there was a previous surface set with this request it is replaced. If surface is NULL, the pointer image is hidden.

    The parameters hotspot_x and hotspot_y define the position of the pointer surface relative to the pointer location. Its top-left corner is always at (x, y) - (hotspot_x, hotspot_y), where (x, y) are the coordinates of the pointer location, in surface-local coordinates.

    On wl_surface.offset requests to the pointer surface, hotspot_x and hotspot_y are decremented by the x and y parameters passed to the request. The offset must be applied by wl_surface.commit as usual.

    The hotspot can also be updated by passing the currently set pointer surface to this request with new values for hotspot_x and hotspot_y.

    The input region is ignored for wl_surfaces with the role of a cursor. When the use as a cursor ends, the wl_surface is unmapped.

    The serial parameter must match the latest wl_pointer.enter serial number sent to the client. Otherwise the request will be ignored.

    __C declaration:__ @wl_pointer_set_cursor@

    __defined at:__ @wayland-client-protocol.h 5139:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_pointer_set_cursor :: RIP.FunPtr (RIP.Ptr Wl_pointer -> HsBindgen.Runtime.LibC.Word32 -> RIP.Ptr Wl_surface -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_pointer_set_cursor =
  RIP.unsafePerformIO hs_bindgen_6eb2b45946c27e1d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_release@
foreign import ccall unsafe "hs_bindgen_c6d8e266a2d391b8" hs_bindgen_c6d8e266a2d391b8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_release@
hs_bindgen_c6d8e266a2d391b8 :: IO (RIP.FunPtr (RIP.Ptr Wl_pointer -> IO ()))
hs_bindgen_c6d8e266a2d391b8 =
  RIP.fromFFIType hs_bindgen_c6d8e266a2d391b8_base

{-# NOINLINE wl_pointer_release #-}
{-| Using this request a client can tell the server that it is not going to use the pointer object anymore.

    This request destroys the pointer proxy object, so clients must not call wl_pointer_destroy() after using this request.

    __C declaration:__ @wl_pointer_release@

    __defined at:__ @wayland-client-protocol.h 5155:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_pointer_release :: RIP.FunPtr (RIP.Ptr Wl_pointer -> IO ())
wl_pointer_release =
  RIP.unsafePerformIO hs_bindgen_c6d8e266a2d391b8

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_keyboard_add_listener@
foreign import ccall unsafe "hs_bindgen_4ed1d0636cbf9aeb" hs_bindgen_4ed1d0636cbf9aeb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_keyboard_add_listener@
hs_bindgen_4ed1d0636cbf9aeb :: IO (RIP.FunPtr (RIP.Ptr Wl_keyboard -> PtrConst.PtrConst Wl_keyboard_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt))
hs_bindgen_4ed1d0636cbf9aeb =
  RIP.fromFFIType hs_bindgen_4ed1d0636cbf9aeb_base

{-# NOINLINE wl_keyboard_add_listener #-}
{-| __C declaration:__ @wl_keyboard_add_listener@

    __defined at:__ @wayland-client-protocol.h 5385:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_keyboard_add_listener :: RIP.FunPtr (RIP.Ptr Wl_keyboard -> PtrConst.PtrConst Wl_keyboard_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt)
wl_keyboard_add_listener =
  RIP.unsafePerformIO hs_bindgen_4ed1d0636cbf9aeb

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_keyboard_set_user_data@
foreign import ccall unsafe "hs_bindgen_9f00dfb046f84fa3" hs_bindgen_9f00dfb046f84fa3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_keyboard_set_user_data@
hs_bindgen_9f00dfb046f84fa3 :: IO (RIP.FunPtr (RIP.Ptr Wl_keyboard -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_9f00dfb046f84fa3 =
  RIP.fromFFIType hs_bindgen_9f00dfb046f84fa3_base

{-# NOINLINE wl_keyboard_set_user_data #-}
{-| __C declaration:__ @wl_keyboard_set_user_data@

    __defined at:__ @wayland-client-protocol.h 5426:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_keyboard_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_keyboard -> RIP.Ptr RIP.Void -> IO ())
wl_keyboard_set_user_data =
  RIP.unsafePerformIO hs_bindgen_9f00dfb046f84fa3

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_keyboard_get_user_data@
foreign import ccall unsafe "hs_bindgen_dcf0602e6ee884e4" hs_bindgen_dcf0602e6ee884e4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_keyboard_get_user_data@
hs_bindgen_dcf0602e6ee884e4 :: IO (RIP.FunPtr (RIP.Ptr Wl_keyboard -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_dcf0602e6ee884e4 =
  RIP.fromFFIType hs_bindgen_dcf0602e6ee884e4_base

{-# NOINLINE wl_keyboard_get_user_data #-}
{-| __C declaration:__ @wl_keyboard_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5433:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_keyboard_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_keyboard -> IO (RIP.Ptr RIP.Void))
wl_keyboard_get_user_data =
  RIP.unsafePerformIO hs_bindgen_dcf0602e6ee884e4

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_keyboard_get_version@
foreign import ccall unsafe "hs_bindgen_23c8424f5f634f32" hs_bindgen_23c8424f5f634f32_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_keyboard_get_version@
hs_bindgen_23c8424f5f634f32 :: IO (RIP.FunPtr (RIP.Ptr Wl_keyboard -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_23c8424f5f634f32 =
  RIP.fromFFIType hs_bindgen_23c8424f5f634f32_base

{-# NOINLINE wl_keyboard_get_version #-}
{-| __C declaration:__ @wl_keyboard_get_version@

    __defined at:__ @wayland-client-protocol.h 5439:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_keyboard_get_version :: RIP.FunPtr (RIP.Ptr Wl_keyboard -> IO HsBindgen.Runtime.LibC.Word32)
wl_keyboard_get_version =
  RIP.unsafePerformIO hs_bindgen_23c8424f5f634f32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_keyboard_destroy@
foreign import ccall unsafe "hs_bindgen_cdd64ab1ba4d7465" hs_bindgen_cdd64ab1ba4d7465_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_keyboard_destroy@
hs_bindgen_cdd64ab1ba4d7465 :: IO (RIP.FunPtr (RIP.Ptr Wl_keyboard -> IO ()))
hs_bindgen_cdd64ab1ba4d7465 =
  RIP.fromFFIType hs_bindgen_cdd64ab1ba4d7465_base

{-# NOINLINE wl_keyboard_destroy #-}
{-| __C declaration:__ @wl_keyboard_destroy@

    __defined at:__ @wayland-client-protocol.h 5446:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_keyboard_destroy :: RIP.FunPtr (RIP.Ptr Wl_keyboard -> IO ())
wl_keyboard_destroy =
  RIP.unsafePerformIO hs_bindgen_cdd64ab1ba4d7465

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_keyboard_release@
foreign import ccall unsafe "hs_bindgen_b1f7fd6b8b01dd32" hs_bindgen_b1f7fd6b8b01dd32_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_keyboard_release@
hs_bindgen_b1f7fd6b8b01dd32 :: IO (RIP.FunPtr (RIP.Ptr Wl_keyboard -> IO ()))
hs_bindgen_b1f7fd6b8b01dd32 =
  RIP.fromFFIType hs_bindgen_b1f7fd6b8b01dd32_base

{-# NOINLINE wl_keyboard_release #-}
{-| __C declaration:__ @wl_keyboard_release@

    __defined at:__ @wayland-client-protocol.h 5455:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_keyboard_release :: RIP.FunPtr (RIP.Ptr Wl_keyboard -> IO ())
wl_keyboard_release =
  RIP.unsafePerformIO hs_bindgen_b1f7fd6b8b01dd32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_touch_add_listener@
foreign import ccall unsafe "hs_bindgen_1d0d2ea57c7d9fd7" hs_bindgen_1d0d2ea57c7d9fd7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_touch_add_listener@
hs_bindgen_1d0d2ea57c7d9fd7 :: IO (RIP.FunPtr (RIP.Ptr Wl_touch -> PtrConst.PtrConst Wl_touch_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt))
hs_bindgen_1d0d2ea57c7d9fd7 =
  RIP.fromFFIType hs_bindgen_1d0d2ea57c7d9fd7_base

{-# NOINLINE wl_touch_add_listener #-}
{-| __C declaration:__ @wl_touch_add_listener@

    __defined at:__ @wayland-client-protocol.h 5625:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_touch_add_listener :: RIP.FunPtr (RIP.Ptr Wl_touch -> PtrConst.PtrConst Wl_touch_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt)
wl_touch_add_listener =
  RIP.unsafePerformIO hs_bindgen_1d0d2ea57c7d9fd7

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_touch_set_user_data@
foreign import ccall unsafe "hs_bindgen_40de9a5a94382d0a" hs_bindgen_40de9a5a94382d0a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_touch_set_user_data@
hs_bindgen_40de9a5a94382d0a :: IO (RIP.FunPtr (RIP.Ptr Wl_touch -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_40de9a5a94382d0a =
  RIP.fromFFIType hs_bindgen_40de9a5a94382d0a_base

{-# NOINLINE wl_touch_set_user_data #-}
{-| __C declaration:__ @wl_touch_set_user_data@

    __defined at:__ @wayland-client-protocol.h 5670:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_touch_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_touch -> RIP.Ptr RIP.Void -> IO ())
wl_touch_set_user_data =
  RIP.unsafePerformIO hs_bindgen_40de9a5a94382d0a

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_touch_get_user_data@
foreign import ccall unsafe "hs_bindgen_b30f8a9099345c3b" hs_bindgen_b30f8a9099345c3b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_touch_get_user_data@
hs_bindgen_b30f8a9099345c3b :: IO (RIP.FunPtr (RIP.Ptr Wl_touch -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_b30f8a9099345c3b =
  RIP.fromFFIType hs_bindgen_b30f8a9099345c3b_base

{-# NOINLINE wl_touch_get_user_data #-}
{-| __C declaration:__ @wl_touch_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5677:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_touch_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_touch -> IO (RIP.Ptr RIP.Void))
wl_touch_get_user_data =
  RIP.unsafePerformIO hs_bindgen_b30f8a9099345c3b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_touch_get_version@
foreign import ccall unsafe "hs_bindgen_41ded62f24a7d574" hs_bindgen_41ded62f24a7d574_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_touch_get_version@
hs_bindgen_41ded62f24a7d574 :: IO (RIP.FunPtr (RIP.Ptr Wl_touch -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_41ded62f24a7d574 =
  RIP.fromFFIType hs_bindgen_41ded62f24a7d574_base

{-# NOINLINE wl_touch_get_version #-}
{-| __C declaration:__ @wl_touch_get_version@

    __defined at:__ @wayland-client-protocol.h 5683:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_touch_get_version :: RIP.FunPtr (RIP.Ptr Wl_touch -> IO HsBindgen.Runtime.LibC.Word32)
wl_touch_get_version =
  RIP.unsafePerformIO hs_bindgen_41ded62f24a7d574

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_touch_destroy@
foreign import ccall unsafe "hs_bindgen_01a91562525555fe" hs_bindgen_01a91562525555fe_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_touch_destroy@
hs_bindgen_01a91562525555fe :: IO (RIP.FunPtr (RIP.Ptr Wl_touch -> IO ()))
hs_bindgen_01a91562525555fe =
  RIP.fromFFIType hs_bindgen_01a91562525555fe_base

{-# NOINLINE wl_touch_destroy #-}
{-| __C declaration:__ @wl_touch_destroy@

    __defined at:__ @wayland-client-protocol.h 5690:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_touch_destroy :: RIP.FunPtr (RIP.Ptr Wl_touch -> IO ())
wl_touch_destroy =
  RIP.unsafePerformIO hs_bindgen_01a91562525555fe

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_touch_release@
foreign import ccall unsafe "hs_bindgen_2fd421fc182f261c" hs_bindgen_2fd421fc182f261c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_touch_release@
hs_bindgen_2fd421fc182f261c :: IO (RIP.FunPtr (RIP.Ptr Wl_touch -> IO ()))
hs_bindgen_2fd421fc182f261c =
  RIP.fromFFIType hs_bindgen_2fd421fc182f261c_base

{-# NOINLINE wl_touch_release #-}
{-| __C declaration:__ @wl_touch_release@

    __defined at:__ @wayland-client-protocol.h 5699:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_touch_release :: RIP.FunPtr (RIP.Ptr Wl_touch -> IO ())
wl_touch_release =
  RIP.unsafePerformIO hs_bindgen_2fd421fc182f261c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_output_add_listener@
foreign import ccall unsafe "hs_bindgen_842a9fc6dfe1747c" hs_bindgen_842a9fc6dfe1747c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_output_add_listener@
hs_bindgen_842a9fc6dfe1747c :: IO (RIP.FunPtr (RIP.Ptr Wl_output -> PtrConst.PtrConst Wl_output_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt))
hs_bindgen_842a9fc6dfe1747c =
  RIP.fromFFIType hs_bindgen_842a9fc6dfe1747c_base

{-# NOINLINE wl_output_add_listener #-}
{-| __C declaration:__ @wl_output_add_listener@

    __defined at:__ @wayland-client-protocol.h 6018:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_output_add_listener :: RIP.FunPtr (RIP.Ptr Wl_output -> PtrConst.PtrConst Wl_output_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt)
wl_output_add_listener =
  RIP.unsafePerformIO hs_bindgen_842a9fc6dfe1747c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_output_set_user_data@
foreign import ccall unsafe "hs_bindgen_460e8b872985318d" hs_bindgen_460e8b872985318d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_output_set_user_data@
hs_bindgen_460e8b872985318d :: IO (RIP.FunPtr (RIP.Ptr Wl_output -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_460e8b872985318d =
  RIP.fromFFIType hs_bindgen_460e8b872985318d_base

{-# NOINLINE wl_output_set_user_data #-}
{-| __C declaration:__ @wl_output_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6059:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_output_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_output -> RIP.Ptr RIP.Void -> IO ())
wl_output_set_user_data =
  RIP.unsafePerformIO hs_bindgen_460e8b872985318d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_output_get_user_data@
foreign import ccall unsafe "hs_bindgen_7c893c11ddc9f6a3" hs_bindgen_7c893c11ddc9f6a3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_output_get_user_data@
hs_bindgen_7c893c11ddc9f6a3 :: IO (RIP.FunPtr (RIP.Ptr Wl_output -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_7c893c11ddc9f6a3 =
  RIP.fromFFIType hs_bindgen_7c893c11ddc9f6a3_base

{-# NOINLINE wl_output_get_user_data #-}
{-| __C declaration:__ @wl_output_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6066:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_output_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_output -> IO (RIP.Ptr RIP.Void))
wl_output_get_user_data =
  RIP.unsafePerformIO hs_bindgen_7c893c11ddc9f6a3

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_output_get_version@
foreign import ccall unsafe "hs_bindgen_2ee46fd82874d023" hs_bindgen_2ee46fd82874d023_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_output_get_version@
hs_bindgen_2ee46fd82874d023 :: IO (RIP.FunPtr (RIP.Ptr Wl_output -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_2ee46fd82874d023 =
  RIP.fromFFIType hs_bindgen_2ee46fd82874d023_base

{-# NOINLINE wl_output_get_version #-}
{-| __C declaration:__ @wl_output_get_version@

    __defined at:__ @wayland-client-protocol.h 6072:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_output_get_version :: RIP.FunPtr (RIP.Ptr Wl_output -> IO HsBindgen.Runtime.LibC.Word32)
wl_output_get_version =
  RIP.unsafePerformIO hs_bindgen_2ee46fd82874d023

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_output_destroy@
foreign import ccall unsafe "hs_bindgen_f47540357ea631f1" hs_bindgen_f47540357ea631f1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_output_destroy@
hs_bindgen_f47540357ea631f1 :: IO (RIP.FunPtr (RIP.Ptr Wl_output -> IO ()))
hs_bindgen_f47540357ea631f1 =
  RIP.fromFFIType hs_bindgen_f47540357ea631f1_base

{-# NOINLINE wl_output_destroy #-}
{-| __C declaration:__ @wl_output_destroy@

    __defined at:__ @wayland-client-protocol.h 6079:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_output_destroy :: RIP.FunPtr (RIP.Ptr Wl_output -> IO ())
wl_output_destroy =
  RIP.unsafePerformIO hs_bindgen_f47540357ea631f1

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_output_release@
foreign import ccall unsafe "hs_bindgen_4d443725cde14e59" hs_bindgen_4d443725cde14e59_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_output_release@
hs_bindgen_4d443725cde14e59 :: IO (RIP.FunPtr (RIP.Ptr Wl_output -> IO ()))
hs_bindgen_4d443725cde14e59 =
  RIP.fromFFIType hs_bindgen_4d443725cde14e59_base

{-# NOINLINE wl_output_release #-}
{-| Using this request a client can tell the server that it is not going to use the output object anymore.

    __C declaration:__ @wl_output_release@

    __defined at:__ @wayland-client-protocol.h 6091:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_output_release :: RIP.FunPtr (RIP.Ptr Wl_output -> IO ())
wl_output_release =
  RIP.unsafePerformIO hs_bindgen_4d443725cde14e59

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_region_set_user_data@
foreign import ccall unsafe "hs_bindgen_8783bbd04d22cacf" hs_bindgen_8783bbd04d22cacf_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_region_set_user_data@
hs_bindgen_8783bbd04d22cacf :: IO (RIP.FunPtr (RIP.Ptr Wl_region -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_8783bbd04d22cacf =
  RIP.fromFFIType hs_bindgen_8783bbd04d22cacf_base

{-# NOINLINE wl_region_set_user_data #-}
{-| __C declaration:__ @wl_region_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6117:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_region_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_region -> RIP.Ptr RIP.Void -> IO ())
wl_region_set_user_data =
  RIP.unsafePerformIO hs_bindgen_8783bbd04d22cacf

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_region_get_user_data@
foreign import ccall unsafe "hs_bindgen_5fa492c412a4c6ba" hs_bindgen_5fa492c412a4c6ba_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_region_get_user_data@
hs_bindgen_5fa492c412a4c6ba :: IO (RIP.FunPtr (RIP.Ptr Wl_region -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_5fa492c412a4c6ba =
  RIP.fromFFIType hs_bindgen_5fa492c412a4c6ba_base

{-# NOINLINE wl_region_get_user_data #-}
{-| __C declaration:__ @wl_region_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6124:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_region_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_region -> IO (RIP.Ptr RIP.Void))
wl_region_get_user_data =
  RIP.unsafePerformIO hs_bindgen_5fa492c412a4c6ba

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_region_get_version@
foreign import ccall unsafe "hs_bindgen_2ae3ccc5e76b232d" hs_bindgen_2ae3ccc5e76b232d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_region_get_version@
hs_bindgen_2ae3ccc5e76b232d :: IO (RIP.FunPtr (RIP.Ptr Wl_region -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_2ae3ccc5e76b232d =
  RIP.fromFFIType hs_bindgen_2ae3ccc5e76b232d_base

{-# NOINLINE wl_region_get_version #-}
{-| __C declaration:__ @wl_region_get_version@

    __defined at:__ @wayland-client-protocol.h 6130:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_region_get_version :: RIP.FunPtr (RIP.Ptr Wl_region -> IO HsBindgen.Runtime.LibC.Word32)
wl_region_get_version =
  RIP.unsafePerformIO hs_bindgen_2ae3ccc5e76b232d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_region_destroy@
foreign import ccall unsafe "hs_bindgen_17fa4d0e17c69ce8" hs_bindgen_17fa4d0e17c69ce8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_region_destroy@
hs_bindgen_17fa4d0e17c69ce8 :: IO (RIP.FunPtr (RIP.Ptr Wl_region -> IO ()))
hs_bindgen_17fa4d0e17c69ce8 =
  RIP.fromFFIType hs_bindgen_17fa4d0e17c69ce8_base

{-# NOINLINE wl_region_destroy #-}
{-| Destroy the region. This will invalidate the object ID.

    __C declaration:__ @wl_region_destroy@

    __defined at:__ @wayland-client-protocol.h 6141:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_region_destroy :: RIP.FunPtr (RIP.Ptr Wl_region -> IO ())
wl_region_destroy =
  RIP.unsafePerformIO hs_bindgen_17fa4d0e17c69ce8

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_region_add@
foreign import ccall unsafe "hs_bindgen_e75acd0e0509b04b" hs_bindgen_e75acd0e0509b04b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_region_add@
hs_bindgen_e75acd0e0509b04b :: IO (RIP.FunPtr (RIP.Ptr Wl_region -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_e75acd0e0509b04b =
  RIP.fromFFIType hs_bindgen_e75acd0e0509b04b_base

{-# NOINLINE wl_region_add #-}
{-| Add the specified rectangle to the region.

    __C declaration:__ @wl_region_add@

    __defined at:__ @wayland-client-protocol.h 6153:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_region_add :: RIP.FunPtr (RIP.Ptr Wl_region -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_region_add =
  RIP.unsafePerformIO hs_bindgen_e75acd0e0509b04b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_region_subtract@
foreign import ccall unsafe "hs_bindgen_197d394e2e5556cd" hs_bindgen_197d394e2e5556cd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_region_subtract@
hs_bindgen_197d394e2e5556cd :: IO (RIP.FunPtr (RIP.Ptr Wl_region -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_197d394e2e5556cd =
  RIP.fromFFIType hs_bindgen_197d394e2e5556cd_base

{-# NOINLINE wl_region_subtract #-}
{-| Subtract the specified rectangle from the region.

    __C declaration:__ @wl_region_subtract@

    __defined at:__ @wayland-client-protocol.h 6165:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_region_subtract :: RIP.FunPtr (RIP.Ptr Wl_region -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_region_subtract =
  RIP.unsafePerformIO hs_bindgen_197d394e2e5556cd

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subcompositor_set_user_data@
foreign import ccall unsafe "hs_bindgen_39a8a9adb430d200" hs_bindgen_39a8a9adb430d200_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subcompositor_set_user_data@
hs_bindgen_39a8a9adb430d200 :: IO (RIP.FunPtr (RIP.Ptr Wl_subcompositor -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_39a8a9adb430d200 =
  RIP.fromFFIType hs_bindgen_39a8a9adb430d200_base

{-# NOINLINE wl_subcompositor_set_user_data #-}
{-| __C declaration:__ @wl_subcompositor_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6200:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_subcompositor -> RIP.Ptr RIP.Void -> IO ())
wl_subcompositor_set_user_data =
  RIP.unsafePerformIO hs_bindgen_39a8a9adb430d200

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subcompositor_get_user_data@
foreign import ccall unsafe "hs_bindgen_05c6fb44d8ce526c" hs_bindgen_05c6fb44d8ce526c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subcompositor_get_user_data@
hs_bindgen_05c6fb44d8ce526c :: IO (RIP.FunPtr (RIP.Ptr Wl_subcompositor -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_05c6fb44d8ce526c =
  RIP.fromFFIType hs_bindgen_05c6fb44d8ce526c_base

{-# NOINLINE wl_subcompositor_get_user_data #-}
{-| __C declaration:__ @wl_subcompositor_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6207:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_subcompositor -> IO (RIP.Ptr RIP.Void))
wl_subcompositor_get_user_data =
  RIP.unsafePerformIO hs_bindgen_05c6fb44d8ce526c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subcompositor_get_version@
foreign import ccall unsafe "hs_bindgen_f41c5aa974edd8e8" hs_bindgen_f41c5aa974edd8e8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subcompositor_get_version@
hs_bindgen_f41c5aa974edd8e8 :: IO (RIP.FunPtr (RIP.Ptr Wl_subcompositor -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_f41c5aa974edd8e8 =
  RIP.fromFFIType hs_bindgen_f41c5aa974edd8e8_base

{-# NOINLINE wl_subcompositor_get_version #-}
{-| __C declaration:__ @wl_subcompositor_get_version@

    __defined at:__ @wayland-client-protocol.h 6213:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_version :: RIP.FunPtr (RIP.Ptr Wl_subcompositor -> IO HsBindgen.Runtime.LibC.Word32)
wl_subcompositor_get_version =
  RIP.unsafePerformIO hs_bindgen_f41c5aa974edd8e8

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subcompositor_destroy@
foreign import ccall unsafe "hs_bindgen_adedf14ad8be96c5" hs_bindgen_adedf14ad8be96c5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subcompositor_destroy@
hs_bindgen_adedf14ad8be96c5 :: IO (RIP.FunPtr (RIP.Ptr Wl_subcompositor -> IO ()))
hs_bindgen_adedf14ad8be96c5 =
  RIP.fromFFIType hs_bindgen_adedf14ad8be96c5_base

{-# NOINLINE wl_subcompositor_destroy #-}
{-| Informs the server that the client will not be using this protocol object anymore. This does not affect any other objects, wl_subsurface objects included.

    __C declaration:__ @wl_subcompositor_destroy@

    __defined at:__ @wayland-client-protocol.h 6226:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_destroy :: RIP.FunPtr (RIP.Ptr Wl_subcompositor -> IO ())
wl_subcompositor_destroy =
  RIP.unsafePerformIO hs_bindgen_adedf14ad8be96c5

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subcompositor_get_subsurface@
foreign import ccall unsafe "hs_bindgen_d36a22a3e0023391" hs_bindgen_d36a22a3e0023391_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subcompositor_get_subsurface@
hs_bindgen_d36a22a3e0023391 :: IO (RIP.FunPtr (RIP.Ptr Wl_subcompositor -> RIP.Ptr Wl_surface -> RIP.Ptr Wl_surface -> IO (RIP.Ptr Wl_subsurface)))
hs_bindgen_d36a22a3e0023391 =
  RIP.fromFFIType hs_bindgen_d36a22a3e0023391_base

{-# NOINLINE wl_subcompositor_get_subsurface #-}
{-| Create a sub-surface interface for the given surface, and associate it with the given parent surface. This turns a plain wl_surface into a sub-surface.

    The to-be sub-surface must not already have another role, and it must not have an existing wl_subsurface object. Otherwise the bad_surface protocol error is raised.

    Adding sub-surfaces to a parent is a double-buffered operation on the parent (see wl_surface.commit). The effect of adding a sub-surface becomes visible on the next time the state of the parent surface is applied.

    The parent surface must not be one of the child surface's descendants, and the parent must be different from the child surface, otherwise the bad_parent protocol error is raised.

    This request modifies the behaviour of wl_surface.commit request on the sub-surface, see the documentation on wl_subsurface interface.

    __C declaration:__ @wl_subcompositor_get_subsurface@

    __defined at:__ @wayland-client-protocol.h 6256:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_subsurface :: RIP.FunPtr (RIP.Ptr Wl_subcompositor -> RIP.Ptr Wl_surface -> RIP.Ptr Wl_surface -> IO (RIP.Ptr Wl_subsurface))
wl_subcompositor_get_subsurface =
  RIP.unsafePerformIO hs_bindgen_d36a22a3e0023391

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_user_data@
foreign import ccall unsafe "hs_bindgen_68cd71eba11421ac" hs_bindgen_68cd71eba11421ac_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_user_data@
hs_bindgen_68cd71eba11421ac :: IO (RIP.FunPtr (RIP.Ptr Wl_subsurface -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_68cd71eba11421ac =
  RIP.fromFFIType hs_bindgen_68cd71eba11421ac_base

{-# NOINLINE wl_subsurface_set_user_data #-}
{-| __C declaration:__ @wl_subsurface_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6311:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_subsurface -> RIP.Ptr RIP.Void -> IO ())
wl_subsurface_set_user_data =
  RIP.unsafePerformIO hs_bindgen_68cd71eba11421ac

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_get_user_data@
foreign import ccall unsafe "hs_bindgen_af3751dd11953a44" hs_bindgen_af3751dd11953a44_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_get_user_data@
hs_bindgen_af3751dd11953a44 :: IO (RIP.FunPtr (RIP.Ptr Wl_subsurface -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_af3751dd11953a44 =
  RIP.fromFFIType hs_bindgen_af3751dd11953a44_base

{-# NOINLINE wl_subsurface_get_user_data #-}
{-| __C declaration:__ @wl_subsurface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6318:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subsurface_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_subsurface -> IO (RIP.Ptr RIP.Void))
wl_subsurface_get_user_data =
  RIP.unsafePerformIO hs_bindgen_af3751dd11953a44

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_get_version@
foreign import ccall unsafe "hs_bindgen_80bf41fec25b0d3c" hs_bindgen_80bf41fec25b0d3c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_get_version@
hs_bindgen_80bf41fec25b0d3c :: IO (RIP.FunPtr (RIP.Ptr Wl_subsurface -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_80bf41fec25b0d3c =
  RIP.fromFFIType hs_bindgen_80bf41fec25b0d3c_base

{-# NOINLINE wl_subsurface_get_version #-}
{-| __C declaration:__ @wl_subsurface_get_version@

    __defined at:__ @wayland-client-protocol.h 6324:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subsurface_get_version :: RIP.FunPtr (RIP.Ptr Wl_subsurface -> IO HsBindgen.Runtime.LibC.Word32)
wl_subsurface_get_version =
  RIP.unsafePerformIO hs_bindgen_80bf41fec25b0d3c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_destroy@
foreign import ccall unsafe "hs_bindgen_44a7f26684ddc26a" hs_bindgen_44a7f26684ddc26a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_destroy@
hs_bindgen_44a7f26684ddc26a :: IO (RIP.FunPtr (RIP.Ptr Wl_subsurface -> IO ()))
hs_bindgen_44a7f26684ddc26a =
  RIP.fromFFIType hs_bindgen_44a7f26684ddc26a_base

{-# NOINLINE wl_subsurface_destroy #-}
{-| The sub-surface interface is removed from the wl_surface object that was turned into a sub-surface with a wl_subcompositor.get_subsurface request. The wl_surface's association to the parent is deleted. The wl_surface is unmapped immediately.

    __C declaration:__ @wl_subsurface_destroy@

    __defined at:__ @wayland-client-protocol.h 6338:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subsurface_destroy :: RIP.FunPtr (RIP.Ptr Wl_subsurface -> IO ())
wl_subsurface_destroy =
  RIP.unsafePerformIO hs_bindgen_44a7f26684ddc26a

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_position@
foreign import ccall unsafe "hs_bindgen_539b906bd54a9384" hs_bindgen_539b906bd54a9384_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_position@
hs_bindgen_539b906bd54a9384 :: IO (RIP.FunPtr (RIP.Ptr Wl_subsurface -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_539b906bd54a9384 =
  RIP.fromFFIType hs_bindgen_539b906bd54a9384_base

{-# NOINLINE wl_subsurface_set_position #-}
{-| This schedules a sub-surface position change. The sub-surface will be moved so that its origin (top left corner pixel) will be at the location x, y of the parent surface coordinate system. The coordinates are not restricted to the parent surface area. Negative values are allowed.

    The scheduled coordinates will take effect whenever the state of the parent surface is applied.

    If more than one set_position request is invoked by the client before the commit of the parent surface, the position of a new request always replaces the scheduled position from any previous request.

    The initial position is 0, 0.

    __C declaration:__ @wl_subsurface_set_position@

    __defined at:__ @wayland-client-protocol.h 6363:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_position :: RIP.FunPtr (RIP.Ptr Wl_subsurface -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_subsurface_set_position =
  RIP.unsafePerformIO hs_bindgen_539b906bd54a9384

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_place_above@
foreign import ccall unsafe "hs_bindgen_f1010b241233c3f1" hs_bindgen_f1010b241233c3f1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_place_above@
hs_bindgen_f1010b241233c3f1 :: IO (RIP.FunPtr (RIP.Ptr Wl_subsurface -> RIP.Ptr Wl_surface -> IO ()))
hs_bindgen_f1010b241233c3f1 =
  RIP.fromFFIType hs_bindgen_f1010b241233c3f1_base

{-# NOINLINE wl_subsurface_place_above #-}
{-| This sub-surface is taken from the stack, and put back just above the reference surface, changing the z-order of the sub-surfaces. The reference surface must be one of the sibling surfaces, or the parent surface. Using any other surface, including this sub-surface, will cause a protocol error.

    The z-order is double-buffered. Requests are handled in order and applied immediately to a pending state. The final pending state is copied to the active state the next time the state of the parent surface is applied.

    A new sub-surface is initially added as the top-most in the stack of its siblings and parent.

    __C declaration:__ @wl_subsurface_place_above@

    __defined at:__ @wayland-client-protocol.h 6387:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subsurface_place_above :: RIP.FunPtr (RIP.Ptr Wl_subsurface -> RIP.Ptr Wl_surface -> IO ())
wl_subsurface_place_above =
  RIP.unsafePerformIO hs_bindgen_f1010b241233c3f1

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_place_below@
foreign import ccall unsafe "hs_bindgen_95e73214832c00e9" hs_bindgen_95e73214832c00e9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_place_below@
hs_bindgen_95e73214832c00e9 :: IO (RIP.FunPtr (RIP.Ptr Wl_subsurface -> RIP.Ptr Wl_surface -> IO ()))
hs_bindgen_95e73214832c00e9 =
  RIP.fromFFIType hs_bindgen_95e73214832c00e9_base

{-# NOINLINE wl_subsurface_place_below #-}
{-| The sub-surface is placed just below the reference surface. See wl_subsurface.place_above.

    __C declaration:__ @wl_subsurface_place_below@

    __defined at:__ @wayland-client-protocol.h 6400:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subsurface_place_below :: RIP.FunPtr (RIP.Ptr Wl_subsurface -> RIP.Ptr Wl_surface -> IO ())
wl_subsurface_place_below =
  RIP.unsafePerformIO hs_bindgen_95e73214832c00e9

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_sync@
foreign import ccall unsafe "hs_bindgen_826f900629f1a9dd" hs_bindgen_826f900629f1a9dd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_sync@
hs_bindgen_826f900629f1a9dd :: IO (RIP.FunPtr (RIP.Ptr Wl_subsurface -> IO ()))
hs_bindgen_826f900629f1a9dd =
  RIP.fromFFIType hs_bindgen_826f900629f1a9dd_base

{-# NOINLINE wl_subsurface_set_sync #-}
{-| Change the commit behaviour of the sub-surface to synchronized mode, also described as the parent dependent mode.

    In synchronized mode, wl_surface.commit on a sub-surface will accumulate the committed state in a cache, but the state will not be applied and hence will not change the compositor output. The cached state is applied to the sub-surface immediately after the parent surface's state is applied. This ensures atomic updates of the parent and all its synchronized sub-surfaces. Applying the cached state will invalidate the cache, so further parent surface commits do not (re-)apply old state.

    See wl_subsurface for the recursive effect of this mode.

    __C declaration:__ @wl_subsurface_set_sync@

    __defined at:__ @wayland-client-protocol.h 6424:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_sync :: RIP.FunPtr (RIP.Ptr Wl_subsurface -> IO ())
wl_subsurface_set_sync =
  RIP.unsafePerformIO hs_bindgen_826f900629f1a9dd

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_desync@
foreign import ccall unsafe "hs_bindgen_51aafb9f1ffdffb2" hs_bindgen_51aafb9f1ffdffb2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_desync@
hs_bindgen_51aafb9f1ffdffb2 :: IO (RIP.FunPtr (RIP.Ptr Wl_subsurface -> IO ()))
hs_bindgen_51aafb9f1ffdffb2 =
  RIP.fromFFIType hs_bindgen_51aafb9f1ffdffb2_base

{-# NOINLINE wl_subsurface_set_desync #-}
{-| Change the commit behaviour of the sub-surface to desynchronized mode, also described as independent or freely running mode.

    In desynchronized mode, wl_surface.commit on a sub-surface will apply the pending state directly, without caching, as happens normally with a wl_surface. Calling wl_surface.commit on the parent surface has no effect on the sub-surface's wl_surface state. This mode allows a sub-surface to be updated on its own.

    If cached state exists when wl_surface.commit is called in desynchronized mode, the pending state is added to the cached state, and applied as a whole. This invalidates the cache.

    Note: even if a sub-surface is set to desynchronized, a parent sub-surface may override it to behave as synchronized. For details, see wl_subsurface.

    If a surface's parent surface behaves as desynchronized, then the cached state is applied on set_desync.

    __C declaration:__ @wl_subsurface_set_desync@

    __defined at:__ @wayland-client-protocol.h 6454:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_desync :: RIP.FunPtr (RIP.Ptr Wl_subsurface -> IO ())
wl_subsurface_set_desync =
  RIP.unsafePerformIO hs_bindgen_51aafb9f1ffdffb2

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_fixes_set_user_data@
foreign import ccall unsafe "hs_bindgen_cdaef4bc4f6d0ce1" hs_bindgen_cdaef4bc4f6d0ce1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_fixes_set_user_data@
hs_bindgen_cdaef4bc4f6d0ce1 :: IO (RIP.FunPtr (RIP.Ptr Wl_fixes -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_cdaef4bc4f6d0ce1 =
  RIP.fromFFIType hs_bindgen_cdaef4bc4f6d0ce1_base

{-# NOINLINE wl_fixes_set_user_data #-}
{-| __C declaration:__ @wl_fixes_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6475:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_fixes_set_user_data :: RIP.FunPtr (RIP.Ptr Wl_fixes -> RIP.Ptr RIP.Void -> IO ())
wl_fixes_set_user_data =
  RIP.unsafePerformIO hs_bindgen_cdaef4bc4f6d0ce1

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_fixes_get_user_data@
foreign import ccall unsafe "hs_bindgen_a168c0f18e09ec7a" hs_bindgen_a168c0f18e09ec7a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_fixes_get_user_data@
hs_bindgen_a168c0f18e09ec7a :: IO (RIP.FunPtr (RIP.Ptr Wl_fixes -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_a168c0f18e09ec7a =
  RIP.fromFFIType hs_bindgen_a168c0f18e09ec7a_base

{-# NOINLINE wl_fixes_get_user_data #-}
{-| __C declaration:__ @wl_fixes_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6482:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_fixes_get_user_data :: RIP.FunPtr (RIP.Ptr Wl_fixes -> IO (RIP.Ptr RIP.Void))
wl_fixes_get_user_data =
  RIP.unsafePerformIO hs_bindgen_a168c0f18e09ec7a

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_fixes_get_version@
foreign import ccall unsafe "hs_bindgen_439cb1a213255d9f" hs_bindgen_439cb1a213255d9f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_fixes_get_version@
hs_bindgen_439cb1a213255d9f :: IO (RIP.FunPtr (RIP.Ptr Wl_fixes -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_439cb1a213255d9f =
  RIP.fromFFIType hs_bindgen_439cb1a213255d9f_base

{-# NOINLINE wl_fixes_get_version #-}
{-| __C declaration:__ @wl_fixes_get_version@

    __defined at:__ @wayland-client-protocol.h 6488:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_fixes_get_version :: RIP.FunPtr (RIP.Ptr Wl_fixes -> IO HsBindgen.Runtime.LibC.Word32)
wl_fixes_get_version =
  RIP.unsafePerformIO hs_bindgen_439cb1a213255d9f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_fixes_destroy@
foreign import ccall unsafe "hs_bindgen_6bb7a547abfe90f6" hs_bindgen_6bb7a547abfe90f6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_fixes_destroy@
hs_bindgen_6bb7a547abfe90f6 :: IO (RIP.FunPtr (RIP.Ptr Wl_fixes -> IO ()))
hs_bindgen_6bb7a547abfe90f6 =
  RIP.fromFFIType hs_bindgen_6bb7a547abfe90f6_base

{-# NOINLINE wl_fixes_destroy #-}
{-| __C declaration:__ @wl_fixes_destroy@

    __defined at:__ @wayland-client-protocol.h 6497:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_fixes_destroy :: RIP.FunPtr (RIP.Ptr Wl_fixes -> IO ())
wl_fixes_destroy =
  RIP.unsafePerformIO hs_bindgen_6bb7a547abfe90f6

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_fixes_destroy_registry@
foreign import ccall unsafe "hs_bindgen_3627142dba3db7b8" hs_bindgen_3627142dba3db7b8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_fixes_destroy_registry@
hs_bindgen_3627142dba3db7b8 :: IO (RIP.FunPtr (RIP.Ptr Wl_fixes -> RIP.Ptr Wl_registry -> IO ()))
hs_bindgen_3627142dba3db7b8 =
  RIP.fromFFIType hs_bindgen_3627142dba3db7b8_base

{-# NOINLINE wl_fixes_destroy_registry #-}
{-| This request destroys a wl_registry object.

    The client should no longer use the wl_registry after making this request.

    The compositor will emit a wl_display.delete_id event with the object ID of the registry and will no longer emit any events on the registry. The client should re-use the object ID once it receives the wl_display.delete_id event.

    __C declaration:__ @wl_fixes_destroy_registry@

    __defined at:__ @wayland-client-protocol.h 6517:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_fixes_destroy_registry :: RIP.FunPtr (RIP.Ptr Wl_fixes -> RIP.Ptr Wl_registry -> IO ())
wl_fixes_destroy_registry =
  RIP.unsafePerformIO hs_bindgen_3627142dba3db7b8
