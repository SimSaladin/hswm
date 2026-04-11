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
  [ "#include <wayland-client.h>"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_event_queue_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3618018b53ce193c (void)) ("
  , "  struct wl_event_queue *arg1"
  , ")"
  , "{"
  , "  return &wl_event_queue_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array_flags */"
  , "__attribute__ ((const))"
  , "struct wl_proxy *(*hs_bindgen_c82905e276a4cbe4 (void)) ("
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
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_43ac697e2e752fbc (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  union wl_argument *arg3"
  , ")"
  , "{"
  , "  return &wl_proxy_marshal_array;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_create */"
  , "__attribute__ ((const))"
  , "struct wl_proxy *(*hs_bindgen_112a96d6e0c96dc6 (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  struct wl_interface const *arg2"
  , ")"
  , "{"
  , "  return &wl_proxy_create;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_create_wrapper */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_7a80a14d85f6ba1b (void)) ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_create_wrapper;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_wrapper_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1363138781cdee87 (void)) ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_wrapper_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array_constructor */"
  , "__attribute__ ((const))"
  , "struct wl_proxy *(*hs_bindgen_310f0d5e8662b930 (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  union wl_argument *arg3,"
  , "  struct wl_interface const *arg4"
  , ")"
  , "{"
  , "  return &wl_proxy_marshal_array_constructor;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array_constructor_versioned */"
  , "__attribute__ ((const))"
  , "struct wl_proxy *(*hs_bindgen_7aa552807912f089 (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  union wl_argument *arg3,"
  , "  struct wl_interface const *arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  return &wl_proxy_marshal_array_constructor_versioned;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_22e2ec5f79ebcd47 (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_986960be57e66df3 (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  void (**arg2) (void),"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_proxy_add_listener;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_listener */"
  , "__attribute__ ((const))"
  , "void const *(*hs_bindgen_42f3f250c2228ee9 (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_listener;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_add_dispatcher */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cf00bea3e69d319b (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  wl_dispatcher_func_t arg2,"
  , "  void const *arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return &wl_proxy_add_dispatcher;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8a278939a3453b33 (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_proxy_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_972d026a2a5ef586 (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_342d3da222287b97 (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_id */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_109a8630dbcce492 (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_id;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_set_tag */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_63e6e93b0a61f30e (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  char const *const *arg2"
  , ")"
  , "{"
  , "  return &wl_proxy_set_tag;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_tag */"
  , "__attribute__ ((const))"
  , "char const *const *(*hs_bindgen_656346ad5948360c (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_tag;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_class */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_380aa37e931a7204 (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_class;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *(*hs_bindgen_1a98d30ee0bd17e2 (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_display */"
  , "__attribute__ ((const))"
  , "struct wl_display *(*hs_bindgen_ba1f41a662b72f8f (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_display;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_set_queue */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_03f5bc7f272aab79 (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return &wl_proxy_set_queue;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_queue */"
  , "__attribute__ ((const))"
  , "struct wl_event_queue *(*hs_bindgen_ba4bfcbe3bc1ee23 (void)) ("
  , "  struct wl_proxy const *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_queue;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_event_queue_get_name */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_fcc8b04f32bd9a0c (void)) ("
  , "  struct wl_event_queue const *arg1"
  , ")"
  , "{"
  , "  return &wl_event_queue_get_name;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_connect */"
  , "__attribute__ ((const))"
  , "struct wl_display *(*hs_bindgen_4320b5ec97530b05 (void)) ("
  , "  char const *arg1"
  , ")"
  , "{"
  , "  return &wl_display_connect;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_connect_to_fd */"
  , "__attribute__ ((const))"
  , "struct wl_display *(*hs_bindgen_87537ff0171ba84d (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &wl_display_connect_to_fd;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_disconnect */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_db98f3ad67bf624e (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_disconnect;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_get_fd */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_adee8a339ebf20ec (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_get_fd;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_dispatch */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7947bb9aee3fea00 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_dispatch;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_queue */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0c46d55e859a0145 (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return &wl_display_dispatch_queue;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_timeout */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ff531f99b92895c8 (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct timespec const *arg2"
  , ")"
  , "{"
  , "  return &wl_display_dispatch_timeout;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_queue_timeout */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a8bada1c31b38545 (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2,"
  , "  struct timespec const *arg3"
  , ")"
  , "{"
  , "  return &wl_display_dispatch_queue_timeout;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_queue_pending */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_82bf132a59bf1281 (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return &wl_display_dispatch_queue_pending;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_pending */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_665dd77429d80486 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_dispatch_pending;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_get_error */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ef8f44c61b9bc12a (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_get_error;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_get_protocol_error */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_9fd15736df73f5ae (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct wl_interface const **arg2,"
  , "  uint32_t *arg3"
  , ")"
  , "{"
  , "  return &wl_display_get_protocol_error;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_flush */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9569d25dc584d875 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_flush;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_roundtrip_queue */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_39d81a355f243fec (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return &wl_display_roundtrip_queue;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_roundtrip */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6efd30024a711ccd (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_roundtrip;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_create_queue */"
  , "__attribute__ ((const))"
  , "struct wl_event_queue *(*hs_bindgen_2230654bf13bcbad (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_create_queue;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_create_queue_with_name */"
  , "__attribute__ ((const))"
  , "struct wl_event_queue *(*hs_bindgen_826a5963cbeffd24 (void)) ("
  , "  struct wl_display *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &wl_display_create_queue_with_name;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_prepare_read_queue */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_05171b846ac51996 (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return &wl_display_prepare_read_queue;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_prepare_read */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3c838eea788c8d90 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_prepare_read;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_cancel_read */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2b2461e2316207fa (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_cancel_read;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_read_events */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d83d966b8b800f14 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_read_events;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_set_max_buffer_size */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0345a9db01e39593 (void)) ("
  , "  struct wl_display *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &wl_display_set_max_buffer_size;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c4914d7cab65f9d1 (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct wl_display_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_display_add_listener;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fcfbd5f9669af1c6 (void)) ("
  , "  struct wl_display *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_display_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_a4d5e29a76cb6125 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_3da4ed18f2b6f187 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_sync */"
  , "__attribute__ ((const))"
  , "struct wl_callback *(*hs_bindgen_5d49e83ff887da97 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_sync;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_get_registry */"
  , "__attribute__ ((const))"
  , "struct wl_registry *(*hs_bindgen_4031b9386f67a276 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_get_registry;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_registry_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2f61a720c25eef42 (void)) ("
  , "  struct wl_registry *arg1,"
  , "  struct wl_registry_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_registry_add_listener;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_registry_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_59905c4889820cc6 (void)) ("
  , "  struct wl_registry *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_registry_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_registry_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_cdbe8b32e2e870af (void)) ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  return &wl_registry_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_registry_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_32bee6d794f93f60 (void)) ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  return &wl_registry_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_registry_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_68d5fc3ead211688 (void)) ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  return &wl_registry_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_registry_bind */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_f89ae38587b5d438 (void)) ("
  , "  struct wl_registry *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_interface const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &wl_registry_bind;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_callback_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_29f10c93cff5a583 (void)) ("
  , "  struct wl_callback *arg1,"
  , "  struct wl_callback_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_callback_add_listener;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_callback_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bc68be7ad9f19ab1 (void)) ("
  , "  struct wl_callback *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_callback_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_callback_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_8b9cabce63520b64 (void)) ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  return &wl_callback_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_callback_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_66d18929aab50214 (void)) ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  return &wl_callback_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_callback_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_96ebe7a9c5ae46a9 (void)) ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  return &wl_callback_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_compositor_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_03a5fddc3bd9e3d5 (void)) ("
  , "  struct wl_compositor *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_compositor_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_compositor_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_a6583da4c70ee0c8 (void)) ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return &wl_compositor_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_compositor_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_0142449f639c7da7 (void)) ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return &wl_compositor_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_compositor_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8c34efd4ae773dec (void)) ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return &wl_compositor_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_compositor_create_surface */"
  , "__attribute__ ((const))"
  , "struct wl_surface *(*hs_bindgen_5af1f57ab9e4d83a (void)) ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return &wl_compositor_create_surface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_compositor_create_region */"
  , "__attribute__ ((const))"
  , "struct wl_region *(*hs_bindgen_97a3ee5004eb98a6 (void)) ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return &wl_compositor_create_region;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_pool_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_089804124bdd7bdd (void)) ("
  , "  struct wl_shm_pool *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_shm_pool_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_pool_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_9ebe884f4c2e86f0 (void)) ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  return &wl_shm_pool_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_pool_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_8855063b9ee4bc86 (void)) ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  return &wl_shm_pool_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_pool_create_buffer */"
  , "__attribute__ ((const))"
  , "struct wl_buffer *(*hs_bindgen_b5adaf6d49ab6bb8 (void)) ("
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
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_pool_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_563490c0348f8b56 (void)) ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  return &wl_shm_pool_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_pool_resize */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_499b529d92813236 (void)) ("
  , "  struct wl_shm_pool *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  return &wl_shm_pool_resize;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_09a35bd6e25434bb (void)) ("
  , "  struct wl_shm *arg1,"
  , "  struct wl_shm_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_shm_add_listener;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f4f97bcabb5cd4e9 (void)) ("
  , "  struct wl_shm *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_shm_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_74b7a0161022ee5f (void)) ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return &wl_shm_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_ec76937ea3fdd164 (void)) ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return &wl_shm_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d11f9c8ddef71184 (void)) ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return &wl_shm_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_create_pool */"
  , "__attribute__ ((const))"
  , "struct wl_shm_pool *(*hs_bindgen_4e0566d78856d3a0 (void)) ("
  , "  struct wl_shm *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &wl_shm_create_pool;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_09d5aca2dfede4f6 (void)) ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return &wl_shm_release;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_buffer_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0d0831afe9d9a3b0 (void)) ("
  , "  struct wl_buffer *arg1,"
  , "  struct wl_buffer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_buffer_add_listener;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_buffer_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_85409a7ab33f7d07 (void)) ("
  , "  struct wl_buffer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_buffer_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_buffer_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_a5bec6540348614a (void)) ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  return &wl_buffer_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_buffer_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_9273ac3517ddf7c7 (void)) ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  return &wl_buffer_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_buffer_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e072d3349e188cf5 (void)) ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  return &wl_buffer_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3ec477b8eefcfd69 (void)) ("
  , "  struct wl_data_offer *arg1,"
  , "  struct wl_data_offer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_data_offer_add_listener;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ff4c74dbcee65c13 (void)) ("
  , "  struct wl_data_offer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_data_offer_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_f9e80f32b6cfcf54 (void)) ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return &wl_data_offer_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_81fb28aa68375de4 (void)) ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return &wl_data_offer_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_accept */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3c6060e679a796de (void)) ("
  , "  struct wl_data_offer *arg1,"
  , "  uint32_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &wl_data_offer_accept;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_receive */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_70849cf6bdf095c4 (void)) ("
  , "  struct wl_data_offer *arg1,"
  , "  char const *arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &wl_data_offer_receive;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e61f59ff996f7689 (void)) ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return &wl_data_offer_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_finish */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c9b3f58b6f4e7dc8 (void)) ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return &wl_data_offer_finish;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_set_actions */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d6ef326a4f734609 (void)) ("
  , "  struct wl_data_offer *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &wl_data_offer_set_actions;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b83e76a5ed00da3c (void)) ("
  , "  struct wl_data_source *arg1,"
  , "  struct wl_data_source_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_data_source_add_listener;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9008492b3ac5c0da (void)) ("
  , "  struct wl_data_source *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_data_source_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_e126593573d4b9cb (void)) ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  return &wl_data_source_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_101edb498f68dca4 (void)) ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  return &wl_data_source_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_offer */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_22dcdd59ffcf7b20 (void)) ("
  , "  struct wl_data_source *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &wl_data_source_offer;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_350e5b2a32eccee1 (void)) ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  return &wl_data_source_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_set_actions */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9462eaa4bed2a472 (void)) ("
  , "  struct wl_data_source *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &wl_data_source_set_actions;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_12994557cdd1bdfa (void)) ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_device_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_data_device_add_listener;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9e37a2e39adeaf66 (void)) ("
  , "  struct wl_data_device *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_data_device_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_b41e9fc24b1316e3 (void)) ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_0ea5890c35153d37 (void)) ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e1c8f62b37425462 (void)) ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_start_drag */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1efe563d078710ad (void)) ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_source *arg2,"
  , "  struct wl_surface *arg3,"
  , "  struct wl_surface *arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  return &wl_data_device_start_drag;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_set_selection */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d14d66f67ba1bf90 (void)) ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_source *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &wl_data_device_set_selection;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_86d3ecda83cdff5b (void)) ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_release;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8a42000c4c76f53f (void)) ("
  , "  struct wl_data_device_manager *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_data_device_manager_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_106431c0a6f8fe9e (void)) ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_manager_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_807d9717106ff7e4 (void)) ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_manager_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9947f050f7222916 (void)) ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_manager_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_create_data_source */"
  , "__attribute__ ((const))"
  , "struct wl_data_source *(*hs_bindgen_9646ca7e8f6d0632 (void)) ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_manager_create_data_source;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_get_data_device */"
  , "__attribute__ ((const))"
  , "struct wl_data_device *(*hs_bindgen_e2d21cf13b1f94b7 (void)) ("
  , "  struct wl_data_device_manager *arg1,"
  , "  struct wl_seat *arg2"
  , ")"
  , "{"
  , "  return &wl_data_device_manager_get_data_device;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1bd2c5af47dff31e (void)) ("
  , "  struct wl_shell *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_shell_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_c8b1b841fe8e5538 (void)) ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  return &wl_shell_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_0675f27316d92566 (void)) ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  return &wl_shell_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_89085bcfca21f07b (void)) ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  return &wl_shell_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_get_shell_surface */"
  , "__attribute__ ((const))"
  , "struct wl_shell_surface *(*hs_bindgen_2204c0f011d95b56 (void)) ("
  , "  struct wl_shell *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &wl_shell_get_shell_surface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c0cc136eb057c65e (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_shell_surface_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_shell_surface_add_listener;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_756f781bcfc2d305 (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_d14ef175257f0f39 (void)) ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_shell_surface_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_9bf6a96af75852bf (void)) ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_shell_surface_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ea0e935204d25408 (void)) ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_shell_surface_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_pong */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0747d3a54da72128 (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &wl_shell_surface_pong;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_move */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e2fce6aa5294de82 (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &wl_shell_surface_move;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_resize */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d5e1975608e318ad (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &wl_shell_surface_resize;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_toplevel */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e1cd40902b0c9795 (void)) ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_toplevel;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_transient */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c370a252d436a853 (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_surface *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_transient;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_fullscreen */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_865d6fd44f68dc80 (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3,"
  , "  struct wl_output *arg4"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_fullscreen;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_popup */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0985d22ed6e45b02 (void)) ("
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
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_maximized */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9434822db3f78ec0 (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_output *arg2"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_maximized;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_title */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d57388eb64e0e675 (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_title;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_class */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6c20e67d26614dce (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_class;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4649e542793acc0e (void)) ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_surface_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_surface_add_listener;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_82dc33522e0cb6f7 (void)) ("
  , "  struct wl_surface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_surface_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_90f649f273f15ffc (void)) ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_surface_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_8c652d532cb1dbac (void)) ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_surface_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7a08f6ee8cb0ccf2 (void)) ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_surface_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_attach */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4d14669f8ebc48af (void)) ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_buffer *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4"
  , ")"
  , "{"
  , "  return &wl_surface_attach;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_damage */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1b45352bccefc718 (void)) ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &wl_surface_damage;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_frame */"
  , "__attribute__ ((const))"
  , "struct wl_callback *(*hs_bindgen_7a6644d8b5c7e05c (void)) ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_surface_frame;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_set_opaque_region */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f0fe03fb6468ac36 (void)) ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_region *arg2"
  , ")"
  , "{"
  , "  return &wl_surface_set_opaque_region;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_set_input_region */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f71ae81671bb0faf (void)) ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_region *arg2"
  , ")"
  , "{"
  , "  return &wl_surface_set_input_region;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_commit */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7717b58e9e7c7a0c (void)) ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_surface_commit;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_set_buffer_transform */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_288b14c8865dedd0 (void)) ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  return &wl_surface_set_buffer_transform;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_set_buffer_scale */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_70a590b90312c3b8 (void)) ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  return &wl_surface_set_buffer_scale;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_damage_buffer */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c91687a027e4e3ca (void)) ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &wl_surface_damage_buffer;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_offset */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_08818df266274aea (void)) ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &wl_surface_offset;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0aa3b46bacd02b6b (void)) ("
  , "  struct wl_seat *arg1,"
  , "  struct wl_seat_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_seat_add_listener;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d126f0ef741c43d6 (void)) ("
  , "  struct wl_seat *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_seat_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_202465f99c998954 (void)) ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return &wl_seat_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_c38dc493bde2fa4f (void)) ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return &wl_seat_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fa7565f03c24df63 (void)) ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return &wl_seat_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_get_pointer */"
  , "__attribute__ ((const))"
  , "struct wl_pointer *(*hs_bindgen_5b1820a379bfd0d6 (void)) ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return &wl_seat_get_pointer;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_get_keyboard */"
  , "__attribute__ ((const))"
  , "struct wl_keyboard *(*hs_bindgen_0f480283ebc2e165 (void)) ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return &wl_seat_get_keyboard;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_get_touch */"
  , "__attribute__ ((const))"
  , "struct wl_touch *(*hs_bindgen_4e7d1e50cba0633a (void)) ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return &wl_seat_get_touch;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2fef45b991e98512 (void)) ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return &wl_seat_release;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_325e50065992479a (void)) ("
  , "  struct wl_pointer *arg1,"
  , "  struct wl_pointer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_pointer_add_listener;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0bc2048b8d9ad040 (void)) ("
  , "  struct wl_pointer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_pointer_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_6a1e93fa3bbc5914 (void)) ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return &wl_pointer_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_be4e5985d459d812 (void)) ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return &wl_pointer_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a02d36142fca0fcb (void)) ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return &wl_pointer_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_set_cursor */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_96b881d775c1dcb1 (void)) ("
  , "  struct wl_pointer *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_surface *arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &wl_pointer_set_cursor;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8d0e00c4d484ec11 (void)) ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return &wl_pointer_release;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_keyboard_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_72bbae67cba64140 (void)) ("
  , "  struct wl_keyboard *arg1,"
  , "  struct wl_keyboard_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_keyboard_add_listener;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_keyboard_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7ea1e7005ae67cce (void)) ("
  , "  struct wl_keyboard *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_keyboard_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_keyboard_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_8dd56d3e34c505e7 (void)) ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return &wl_keyboard_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_keyboard_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_19af65e80f54c795 (void)) ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return &wl_keyboard_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_keyboard_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_5c6112eefc744657 (void)) ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return &wl_keyboard_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_keyboard_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3801ccf9c8a452cd (void)) ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return &wl_keyboard_release;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_touch_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d8940290639664b0 (void)) ("
  , "  struct wl_touch *arg1,"
  , "  struct wl_touch_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_touch_add_listener;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_touch_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6d4299d5c3c57a03 (void)) ("
  , "  struct wl_touch *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_touch_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_touch_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_05d1a86ab21662c1 (void)) ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return &wl_touch_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_touch_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_d688a3b7aa22e953 (void)) ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return &wl_touch_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_touch_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f3e7140ffc576834 (void)) ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return &wl_touch_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_touch_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_63242a544adab61e (void)) ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return &wl_touch_release;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_output_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d8bba5a05d5ef2ff (void)) ("
  , "  struct wl_output *arg1,"
  , "  struct wl_output_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_output_add_listener;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_output_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7388a25b98bccbd5 (void)) ("
  , "  struct wl_output *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_output_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_output_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_fa487b67bc04b8d6 (void)) ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return &wl_output_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_output_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_b4bbc65f8eb64c6b (void)) ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return &wl_output_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_output_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_509ce5bd780e9c4f (void)) ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return &wl_output_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_output_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e8fc201e99e667c6 (void)) ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return &wl_output_release;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_region_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f9a589e31a7b0fab (void)) ("
  , "  struct wl_region *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_region_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_region_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_6b54946d787d7149 (void)) ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  return &wl_region_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_region_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_7c0c30e1d593f11d (void)) ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  return &wl_region_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_region_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fab9a917af721a4e (void)) ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  return &wl_region_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_region_add */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7e6ae138e8284a57 (void)) ("
  , "  struct wl_region *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &wl_region_add;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_region_subtract */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a0882dfd72bd509c (void)) ("
  , "  struct wl_region *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &wl_region_subtract;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subcompositor_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0358c9d3eed5cfc4 (void)) ("
  , "  struct wl_subcompositor *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_subcompositor_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subcompositor_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_65cee6421422231d (void)) ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  return &wl_subcompositor_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subcompositor_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_d15a8b5109cf3cb2 (void)) ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  return &wl_subcompositor_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subcompositor_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_50cc99b831ec1820 (void)) ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  return &wl_subcompositor_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subcompositor_get_subsurface */"
  , "__attribute__ ((const))"
  , "struct wl_subsurface *(*hs_bindgen_721d719c8b7e95f0 (void)) ("
  , "  struct wl_subcompositor *arg1,"
  , "  struct wl_surface *arg2,"
  , "  struct wl_surface *arg3"
  , ")"
  , "{"
  , "  return &wl_subcompositor_get_subsurface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_891cbd08c15748c5 (void)) ("
  , "  struct wl_subsurface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_subsurface_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_852943a3bcd56fba (void)) ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return &wl_subsurface_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_637de8bab83c4ff9 (void)) ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return &wl_subsurface_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_285d8cb7f457f48a (void)) ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return &wl_subsurface_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_position */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_102dc00c2d7aeb51 (void)) ("
  , "  struct wl_subsurface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &wl_subsurface_set_position;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_place_above */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_98b7472b3cbff5cb (void)) ("
  , "  struct wl_subsurface *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &wl_subsurface_place_above;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_place_below */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c991eed8bdf8e9f2 (void)) ("
  , "  struct wl_subsurface *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &wl_subsurface_place_below;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_sync */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d375f22a47587e74 (void)) ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return &wl_subsurface_set_sync;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_desync */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ceeeeb298f18b447 (void)) ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return &wl_subsurface_set_desync;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_fixes_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_397ba687d6fad98f (void)) ("
  , "  struct wl_fixes *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_fixes_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_fixes_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_ea17dd6cf0d68a2f (void)) ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  return &wl_fixes_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_fixes_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_689f1bd4679b615b (void)) ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  return &wl_fixes_get_version;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_fixes_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_aaf4341b0bc9ffc9 (void)) ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  return &wl_fixes_destroy;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_fixes_destroy_registry */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_69a84e1e409f632a (void)) ("
  , "  struct wl_fixes *arg1,"
  , "  struct wl_registry *arg2"
  , ")"
  , "{"
  , "  return &wl_fixes_destroy_registry;"
  , "}"
  ]))

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_event_queue_destroy@
foreign import ccall unsafe "hs_bindgen_3618018b53ce193c" hs_bindgen_3618018b53ce193c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_event_queue_destroy@
hs_bindgen_3618018b53ce193c :: IO (RIP.FunPtr ((RIP.Ptr Wl_event_queue) -> IO ()))
hs_bindgen_3618018b53ce193c =
  RIP.fromFFIType hs_bindgen_3618018b53ce193c_base

{-# NOINLINE wl_event_queue_destroy #-}
{-| __C declaration:__ @wl_event_queue_destroy@

    __defined at:__ @wayland-client-core.h 130:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_event_queue_destroy :: RIP.FunPtr ((RIP.Ptr Wl_event_queue) -> IO ())
wl_event_queue_destroy =
  RIP.unsafePerformIO hs_bindgen_3618018b53ce193c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array_flags@
foreign import ccall unsafe "hs_bindgen_c82905e276a4cbe4" hs_bindgen_c82905e276a4cbe4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array_flags@
hs_bindgen_c82905e276a4cbe4 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument) -> IO (RIP.Ptr Wl_proxy)))
hs_bindgen_c82905e276a4cbe4 =
  RIP.fromFFIType hs_bindgen_c82905e276a4cbe4_base

{-# NOINLINE wl_proxy_marshal_array_flags #-}
{-| __C declaration:__ @wl_proxy_marshal_array_flags@

    __defined at:__ @wayland-client-core.h 139:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_marshal_array_flags :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument) -> IO (RIP.Ptr Wl_proxy))
wl_proxy_marshal_array_flags =
  RIP.unsafePerformIO hs_bindgen_c82905e276a4cbe4

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array@
foreign import ccall unsafe "hs_bindgen_43ac697e2e752fbc" hs_bindgen_43ac697e2e752fbc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array@
hs_bindgen_43ac697e2e752fbc :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument) -> IO ()))
hs_bindgen_43ac697e2e752fbc =
  RIP.fromFFIType hs_bindgen_43ac697e2e752fbc_base

{-# NOINLINE wl_proxy_marshal_array #-}
{-| __C declaration:__ @wl_proxy_marshal_array@

    __defined at:__ @wayland-client-core.h 149:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_marshal_array :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument) -> IO ())
wl_proxy_marshal_array =
  RIP.unsafePerformIO hs_bindgen_43ac697e2e752fbc

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_create@
foreign import ccall unsafe "hs_bindgen_112a96d6e0c96dc6" hs_bindgen_112a96d6e0c96dc6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_create@
hs_bindgen_112a96d6e0c96dc6 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface) -> IO (RIP.Ptr Wl_proxy)))
hs_bindgen_112a96d6e0c96dc6 =
  RIP.fromFFIType hs_bindgen_112a96d6e0c96dc6_base

{-# NOINLINE wl_proxy_create #-}
{-| __C declaration:__ @wl_proxy_create@

    __defined at:__ @wayland-client-core.h 153:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_create :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface) -> IO (RIP.Ptr Wl_proxy))
wl_proxy_create =
  RIP.unsafePerformIO hs_bindgen_112a96d6e0c96dc6

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_create_wrapper@
foreign import ccall unsafe "hs_bindgen_7a80a14d85f6ba1b" hs_bindgen_7a80a14d85f6ba1b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_create_wrapper@
hs_bindgen_7a80a14d85f6ba1b :: IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_7a80a14d85f6ba1b =
  RIP.fromFFIType hs_bindgen_7a80a14d85f6ba1b_base

{-# NOINLINE wl_proxy_create_wrapper #-}
{-| __C declaration:__ @wl_proxy_create_wrapper@

    __defined at:__ @wayland-client-core.h 157:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_create_wrapper :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> IO (RIP.Ptr RIP.Void))
wl_proxy_create_wrapper =
  RIP.unsafePerformIO hs_bindgen_7a80a14d85f6ba1b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_wrapper_destroy@
foreign import ccall unsafe "hs_bindgen_1363138781cdee87" hs_bindgen_1363138781cdee87_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_wrapper_destroy@
hs_bindgen_1363138781cdee87 :: IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_1363138781cdee87 =
  RIP.fromFFIType hs_bindgen_1363138781cdee87_base

{-# NOINLINE wl_proxy_wrapper_destroy #-}
{-| __C declaration:__ @wl_proxy_wrapper_destroy@

    __defined at:__ @wayland-client-core.h 160:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_wrapper_destroy :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> IO ())
wl_proxy_wrapper_destroy =
  RIP.unsafePerformIO hs_bindgen_1363138781cdee87

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array_constructor@
foreign import ccall unsafe "hs_bindgen_310f0d5e8662b930" hs_bindgen_310f0d5e8662b930_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array_constructor@
hs_bindgen_310f0d5e8662b930 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument) -> (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface) -> IO (RIP.Ptr Wl_proxy)))
hs_bindgen_310f0d5e8662b930 =
  RIP.fromFFIType hs_bindgen_310f0d5e8662b930_base

{-# NOINLINE wl_proxy_marshal_array_constructor #-}
{-| __C declaration:__ @wl_proxy_marshal_array_constructor@

    __defined at:__ @wayland-client-core.h 176:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_marshal_array_constructor :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument) -> (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface) -> IO (RIP.Ptr Wl_proxy))
wl_proxy_marshal_array_constructor =
  RIP.unsafePerformIO hs_bindgen_310f0d5e8662b930

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array_constructor_versioned@
foreign import ccall unsafe "hs_bindgen_7aa552807912f089" hs_bindgen_7aa552807912f089_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_marshal_array_constructor_versioned@
hs_bindgen_7aa552807912f089 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument) -> (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr Wl_proxy)))
hs_bindgen_7aa552807912f089 =
  RIP.fromFFIType hs_bindgen_7aa552807912f089_base

{-# NOINLINE wl_proxy_marshal_array_constructor_versioned #-}
{-| __C declaration:__ @wl_proxy_marshal_array_constructor_versioned@

    __defined at:__ @wayland-client-core.h 181:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_marshal_array_constructor_versioned :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument) -> (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr Wl_proxy))
wl_proxy_marshal_array_constructor_versioned =
  RIP.unsafePerformIO hs_bindgen_7aa552807912f089

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_destroy@
foreign import ccall unsafe "hs_bindgen_22e2ec5f79ebcd47" hs_bindgen_22e2ec5f79ebcd47_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_destroy@
hs_bindgen_22e2ec5f79ebcd47 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO ()))
hs_bindgen_22e2ec5f79ebcd47 =
  RIP.fromFFIType hs_bindgen_22e2ec5f79ebcd47_base

{-# NOINLINE wl_proxy_destroy #-}
{-| __C declaration:__ @wl_proxy_destroy@

    __defined at:__ @wayland-client-core.h 188:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_destroy :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO ())
wl_proxy_destroy =
  RIP.unsafePerformIO hs_bindgen_22e2ec5f79ebcd47

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_add_listener@
foreign import ccall unsafe "hs_bindgen_986960be57e66df3" hs_bindgen_986960be57e66df3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_add_listener@
hs_bindgen_986960be57e66df3 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> (RIP.Ptr (RIP.FunPtr (IO ()))) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_986960be57e66df3 =
  RIP.fromFFIType hs_bindgen_986960be57e66df3_base

{-# NOINLINE wl_proxy_add_listener #-}
{-| __C declaration:__ @wl_proxy_add_listener@

    __defined at:__ @wayland-client-core.h 191:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> (RIP.Ptr (RIP.FunPtr (IO ()))) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_proxy_add_listener =
  RIP.unsafePerformIO hs_bindgen_986960be57e66df3

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_listener@
foreign import ccall unsafe "hs_bindgen_42f3f250c2228ee9" hs_bindgen_42f3f250c2228ee9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_listener@
hs_bindgen_42f3f250c2228ee9 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (PtrConst.PtrConst RIP.Void)))
hs_bindgen_42f3f250c2228ee9 =
  RIP.fromFFIType hs_bindgen_42f3f250c2228ee9_base

{-# NOINLINE wl_proxy_get_listener #-}
{-| __C declaration:__ @wl_proxy_get_listener@

    __defined at:__ @wayland-client-core.h 195:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_listener :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (PtrConst.PtrConst RIP.Void))
wl_proxy_get_listener =
  RIP.unsafePerformIO hs_bindgen_42f3f250c2228ee9

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_add_dispatcher@
foreign import ccall unsafe "hs_bindgen_cf00bea3e69d319b" hs_bindgen_cf00bea3e69d319b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_add_dispatcher@
hs_bindgen_cf00bea3e69d319b :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> Bindings.Wayland.Util.Generated.Wl_dispatcher_func_t -> (PtrConst.PtrConst RIP.Void) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_cf00bea3e69d319b =
  RIP.fromFFIType hs_bindgen_cf00bea3e69d319b_base

{-# NOINLINE wl_proxy_add_dispatcher #-}
{-| __C declaration:__ @wl_proxy_add_dispatcher@

    __defined at:__ @wayland-client-core.h 198:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_add_dispatcher :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> Bindings.Wayland.Util.Generated.Wl_dispatcher_func_t -> (PtrConst.PtrConst RIP.Void) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_proxy_add_dispatcher =
  RIP.unsafePerformIO hs_bindgen_cf00bea3e69d319b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_set_user_data@
foreign import ccall unsafe "hs_bindgen_8a278939a3453b33" hs_bindgen_8a278939a3453b33_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_set_user_data@
hs_bindgen_8a278939a3453b33 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_8a278939a3453b33 =
  RIP.fromFFIType hs_bindgen_8a278939a3453b33_base

{-# NOINLINE wl_proxy_set_user_data #-}
{-| __C declaration:__ @wl_proxy_set_user_data@

    __defined at:__ @wayland-client-core.h 203:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> (RIP.Ptr RIP.Void) -> IO ())
wl_proxy_set_user_data =
  RIP.unsafePerformIO hs_bindgen_8a278939a3453b33

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_user_data@
foreign import ccall unsafe "hs_bindgen_972d026a2a5ef586" hs_bindgen_972d026a2a5ef586_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_user_data@
hs_bindgen_972d026a2a5ef586 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_972d026a2a5ef586 =
  RIP.fromFFIType hs_bindgen_972d026a2a5ef586_base

{-# NOINLINE wl_proxy_get_user_data #-}
{-| __C declaration:__ @wl_proxy_get_user_data@

    __defined at:__ @wayland-client-core.h 206:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (RIP.Ptr RIP.Void))
wl_proxy_get_user_data =
  RIP.unsafePerformIO hs_bindgen_972d026a2a5ef586

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_version@
foreign import ccall unsafe "hs_bindgen_342d3da222287b97" hs_bindgen_342d3da222287b97_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_version@
hs_bindgen_342d3da222287b97 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_342d3da222287b97 =
  RIP.fromFFIType hs_bindgen_342d3da222287b97_base

{-# NOINLINE wl_proxy_get_version #-}
{-| __C declaration:__ @wl_proxy_get_version@

    __defined at:__ @wayland-client-core.h 209:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_version :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO HsBindgen.Runtime.LibC.Word32)
wl_proxy_get_version =
  RIP.unsafePerformIO hs_bindgen_342d3da222287b97

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_id@
foreign import ccall unsafe "hs_bindgen_109a8630dbcce492" hs_bindgen_109a8630dbcce492_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_id@
hs_bindgen_109a8630dbcce492 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_109a8630dbcce492 =
  RIP.fromFFIType hs_bindgen_109a8630dbcce492_base

{-# NOINLINE wl_proxy_get_id #-}
{-| __C declaration:__ @wl_proxy_get_id@

    __defined at:__ @wayland-client-core.h 212:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_id :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO HsBindgen.Runtime.LibC.Word32)
wl_proxy_get_id =
  RIP.unsafePerformIO hs_bindgen_109a8630dbcce492

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_set_tag@
foreign import ccall unsafe "hs_bindgen_63e6e93b0a61f30e" hs_bindgen_63e6e93b0a61f30e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_set_tag@
hs_bindgen_63e6e93b0a61f30e :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar)) -> IO ()))
hs_bindgen_63e6e93b0a61f30e =
  RIP.fromFFIType hs_bindgen_63e6e93b0a61f30e_base

{-# NOINLINE wl_proxy_set_tag #-}
{-| __C declaration:__ @wl_proxy_set_tag@

    __defined at:__ @wayland-client-core.h 215:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_set_tag :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar)) -> IO ())
wl_proxy_set_tag =
  RIP.unsafePerformIO hs_bindgen_63e6e93b0a61f30e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_tag@
foreign import ccall unsafe "hs_bindgen_656346ad5948360c" hs_bindgen_656346ad5948360c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_tag@
hs_bindgen_656346ad5948360c :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar))))
hs_bindgen_656346ad5948360c =
  RIP.fromFFIType hs_bindgen_656346ad5948360c_base

{-# NOINLINE wl_proxy_get_tag #-}
{-| __C declaration:__ @wl_proxy_get_tag@

    __defined at:__ @wayland-client-core.h 219:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_tag :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar)))
wl_proxy_get_tag =
  RIP.unsafePerformIO hs_bindgen_656346ad5948360c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_class@
foreign import ccall unsafe "hs_bindgen_380aa37e931a7204" hs_bindgen_380aa37e931a7204_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_class@
hs_bindgen_380aa37e931a7204 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (PtrConst.PtrConst RIP.CChar)))
hs_bindgen_380aa37e931a7204 =
  RIP.fromFFIType hs_bindgen_380aa37e931a7204_base

{-# NOINLINE wl_proxy_get_class #-}
{-| __C declaration:__ @wl_proxy_get_class@

    __defined at:__ @wayland-client-core.h 222:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_class :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (PtrConst.PtrConst RIP.CChar))
wl_proxy_get_class =
  RIP.unsafePerformIO hs_bindgen_380aa37e931a7204

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_interface@
foreign import ccall unsafe "hs_bindgen_1a98d30ee0bd17e2" hs_bindgen_1a98d30ee0bd17e2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_interface@
hs_bindgen_1a98d30ee0bd17e2 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)))
hs_bindgen_1a98d30ee0bd17e2 =
  RIP.fromFFIType hs_bindgen_1a98d30ee0bd17e2_base

{-# NOINLINE wl_proxy_get_interface #-}
{-| __C declaration:__ @wl_proxy_get_interface@

    __defined at:__ @wayland-client-core.h 225:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_interface :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface))
wl_proxy_get_interface =
  RIP.unsafePerformIO hs_bindgen_1a98d30ee0bd17e2

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_display@
foreign import ccall unsafe "hs_bindgen_ba1f41a662b72f8f" hs_bindgen_ba1f41a662b72f8f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_display@
hs_bindgen_ba1f41a662b72f8f :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (RIP.Ptr Wl_display)))
hs_bindgen_ba1f41a662b72f8f =
  RIP.fromFFIType hs_bindgen_ba1f41a662b72f8f_base

{-# NOINLINE wl_proxy_get_display #-}
{-| __C declaration:__ @wl_proxy_get_display@

    __defined at:__ @wayland-client-core.h 228:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_display :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (RIP.Ptr Wl_display))
wl_proxy_get_display =
  RIP.unsafePerformIO hs_bindgen_ba1f41a662b72f8f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_set_queue@
foreign import ccall unsafe "hs_bindgen_03f5bc7f272aab79" hs_bindgen_03f5bc7f272aab79_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_set_queue@
hs_bindgen_03f5bc7f272aab79 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> (RIP.Ptr Wl_event_queue) -> IO ()))
hs_bindgen_03f5bc7f272aab79 =
  RIP.fromFFIType hs_bindgen_03f5bc7f272aab79_base

{-# NOINLINE wl_proxy_set_queue #-}
{-| __C declaration:__ @wl_proxy_set_queue@

    __defined at:__ @wayland-client-core.h 231:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_set_queue :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> (RIP.Ptr Wl_event_queue) -> IO ())
wl_proxy_set_queue =
  RIP.unsafePerformIO hs_bindgen_03f5bc7f272aab79

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_queue@
foreign import ccall unsafe "hs_bindgen_ba4bfcbe3bc1ee23" hs_bindgen_ba4bfcbe3bc1ee23_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_proxy_get_queue@
hs_bindgen_ba4bfcbe3bc1ee23 :: IO (RIP.FunPtr ((PtrConst.PtrConst Wl_proxy) -> IO (RIP.Ptr Wl_event_queue)))
hs_bindgen_ba4bfcbe3bc1ee23 =
  RIP.fromFFIType hs_bindgen_ba4bfcbe3bc1ee23_base

{-# NOINLINE wl_proxy_get_queue #-}
{-| __C declaration:__ @wl_proxy_get_queue@

    __defined at:__ @wayland-client-core.h 234:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_queue :: RIP.FunPtr ((PtrConst.PtrConst Wl_proxy) -> IO (RIP.Ptr Wl_event_queue))
wl_proxy_get_queue =
  RIP.unsafePerformIO hs_bindgen_ba4bfcbe3bc1ee23

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_event_queue_get_name@
foreign import ccall unsafe "hs_bindgen_fcc8b04f32bd9a0c" hs_bindgen_fcc8b04f32bd9a0c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_event_queue_get_name@
hs_bindgen_fcc8b04f32bd9a0c :: IO (RIP.FunPtr ((PtrConst.PtrConst Wl_event_queue) -> IO (PtrConst.PtrConst RIP.CChar)))
hs_bindgen_fcc8b04f32bd9a0c =
  RIP.fromFFIType hs_bindgen_fcc8b04f32bd9a0c_base

{-# NOINLINE wl_event_queue_get_name #-}
{-| __C declaration:__ @wl_event_queue_get_name@

    __defined at:__ @wayland-client-core.h 237:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_event_queue_get_name :: RIP.FunPtr ((PtrConst.PtrConst Wl_event_queue) -> IO (PtrConst.PtrConst RIP.CChar))
wl_event_queue_get_name =
  RIP.unsafePerformIO hs_bindgen_fcc8b04f32bd9a0c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_connect@
foreign import ccall unsafe "hs_bindgen_4320b5ec97530b05" hs_bindgen_4320b5ec97530b05_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_connect@
hs_bindgen_4320b5ec97530b05 :: IO (RIP.FunPtr ((PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Wl_display)))
hs_bindgen_4320b5ec97530b05 =
  RIP.fromFFIType hs_bindgen_4320b5ec97530b05_base

{-# NOINLINE wl_display_connect #-}
{-| __C declaration:__ @wl_display_connect@

    __defined at:__ @wayland-client-core.h 240:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_connect :: RIP.FunPtr ((PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Wl_display))
wl_display_connect =
  RIP.unsafePerformIO hs_bindgen_4320b5ec97530b05

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_connect_to_fd@
foreign import ccall unsafe "hs_bindgen_87537ff0171ba84d" hs_bindgen_87537ff0171ba84d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_connect_to_fd@
hs_bindgen_87537ff0171ba84d :: IO (RIP.FunPtr (RIP.CInt -> IO (RIP.Ptr Wl_display)))
hs_bindgen_87537ff0171ba84d =
  RIP.fromFFIType hs_bindgen_87537ff0171ba84d_base

{-# NOINLINE wl_display_connect_to_fd #-}
{-| __C declaration:__ @wl_display_connect_to_fd@

    __defined at:__ @wayland-client-core.h 243:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_connect_to_fd :: RIP.FunPtr (RIP.CInt -> IO (RIP.Ptr Wl_display))
wl_display_connect_to_fd =
  RIP.unsafePerformIO hs_bindgen_87537ff0171ba84d

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_disconnect@
foreign import ccall unsafe "hs_bindgen_db98f3ad67bf624e" hs_bindgen_db98f3ad67bf624e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_disconnect@
hs_bindgen_db98f3ad67bf624e :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO ()))
hs_bindgen_db98f3ad67bf624e =
  RIP.fromFFIType hs_bindgen_db98f3ad67bf624e_base

{-# NOINLINE wl_display_disconnect #-}
{-| __C declaration:__ @wl_display_disconnect@

    __defined at:__ @wayland-client-core.h 246:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_disconnect :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO ())
wl_display_disconnect =
  RIP.unsafePerformIO hs_bindgen_db98f3ad67bf624e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_get_fd@
foreign import ccall unsafe "hs_bindgen_adee8a339ebf20ec" hs_bindgen_adee8a339ebf20ec_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_get_fd@
hs_bindgen_adee8a339ebf20ec :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt))
hs_bindgen_adee8a339ebf20ec =
  RIP.fromFFIType hs_bindgen_adee8a339ebf20ec_base

{-# NOINLINE wl_display_get_fd #-}
{-| __C declaration:__ @wl_display_get_fd@

    __defined at:__ @wayland-client-core.h 249:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_get_fd :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt)
wl_display_get_fd =
  RIP.unsafePerformIO hs_bindgen_adee8a339ebf20ec

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_dispatch@
foreign import ccall unsafe "hs_bindgen_7947bb9aee3fea00" hs_bindgen_7947bb9aee3fea00_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_dispatch@
hs_bindgen_7947bb9aee3fea00 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt))
hs_bindgen_7947bb9aee3fea00 =
  RIP.fromFFIType hs_bindgen_7947bb9aee3fea00_base

{-# NOINLINE wl_display_dispatch #-}
{-| __C declaration:__ @wl_display_dispatch@

    __defined at:__ @wayland-client-core.h 252:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt)
wl_display_dispatch =
  RIP.unsafePerformIO hs_bindgen_7947bb9aee3fea00

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_queue@
foreign import ccall unsafe "hs_bindgen_0c46d55e859a0145" hs_bindgen_0c46d55e859a0145_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_queue@
hs_bindgen_0c46d55e859a0145 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr Wl_event_queue) -> IO RIP.CInt))
hs_bindgen_0c46d55e859a0145 =
  RIP.fromFFIType hs_bindgen_0c46d55e859a0145_base

{-# NOINLINE wl_display_dispatch_queue #-}
{-| __C declaration:__ @wl_display_dispatch_queue@

    __defined at:__ @wayland-client-core.h 255:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_queue :: RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr Wl_event_queue) -> IO RIP.CInt)
wl_display_dispatch_queue =
  RIP.unsafePerformIO hs_bindgen_0c46d55e859a0145

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_timeout@
foreign import ccall unsafe "hs_bindgen_ff531f99b92895c8" hs_bindgen_ff531f99b92895c8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_timeout@
hs_bindgen_ff531f99b92895c8 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> (PtrConst.PtrConst Timespec) -> IO RIP.CInt))
hs_bindgen_ff531f99b92895c8 =
  RIP.fromFFIType hs_bindgen_ff531f99b92895c8_base

{-# NOINLINE wl_display_dispatch_timeout #-}
{-| __C declaration:__ @wl_display_dispatch_timeout@

    __defined at:__ @wayland-client-core.h 259:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_timeout :: RIP.FunPtr ((RIP.Ptr Wl_display) -> (PtrConst.PtrConst Timespec) -> IO RIP.CInt)
wl_display_dispatch_timeout =
  RIP.unsafePerformIO hs_bindgen_ff531f99b92895c8

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_queue_timeout@
foreign import ccall unsafe "hs_bindgen_a8bada1c31b38545" hs_bindgen_a8bada1c31b38545_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_queue_timeout@
hs_bindgen_a8bada1c31b38545 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr Wl_event_queue) -> (PtrConst.PtrConst Timespec) -> IO RIP.CInt))
hs_bindgen_a8bada1c31b38545 =
  RIP.fromFFIType hs_bindgen_a8bada1c31b38545_base

{-# NOINLINE wl_display_dispatch_queue_timeout #-}
{-| __C declaration:__ @wl_display_dispatch_queue_timeout@

    __defined at:__ @wayland-client-core.h 263:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_queue_timeout :: RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr Wl_event_queue) -> (PtrConst.PtrConst Timespec) -> IO RIP.CInt)
wl_display_dispatch_queue_timeout =
  RIP.unsafePerformIO hs_bindgen_a8bada1c31b38545

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_queue_pending@
foreign import ccall unsafe "hs_bindgen_82bf132a59bf1281" hs_bindgen_82bf132a59bf1281_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_queue_pending@
hs_bindgen_82bf132a59bf1281 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr Wl_event_queue) -> IO RIP.CInt))
hs_bindgen_82bf132a59bf1281 =
  RIP.fromFFIType hs_bindgen_82bf132a59bf1281_base

{-# NOINLINE wl_display_dispatch_queue_pending #-}
{-| __C declaration:__ @wl_display_dispatch_queue_pending@

    __defined at:__ @wayland-client-core.h 268:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_queue_pending :: RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr Wl_event_queue) -> IO RIP.CInt)
wl_display_dispatch_queue_pending =
  RIP.unsafePerformIO hs_bindgen_82bf132a59bf1281

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_pending@
foreign import ccall unsafe "hs_bindgen_665dd77429d80486" hs_bindgen_665dd77429d80486_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_dispatch_pending@
hs_bindgen_665dd77429d80486 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt))
hs_bindgen_665dd77429d80486 =
  RIP.fromFFIType hs_bindgen_665dd77429d80486_base

{-# NOINLINE wl_display_dispatch_pending #-}
{-| __C declaration:__ @wl_display_dispatch_pending@

    __defined at:__ @wayland-client-core.h 272:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_pending :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt)
wl_display_dispatch_pending =
  RIP.unsafePerformIO hs_bindgen_665dd77429d80486

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_get_error@
foreign import ccall unsafe "hs_bindgen_ef8f44c61b9bc12a" hs_bindgen_ef8f44c61b9bc12a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_get_error@
hs_bindgen_ef8f44c61b9bc12a :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt))
hs_bindgen_ef8f44c61b9bc12a =
  RIP.fromFFIType hs_bindgen_ef8f44c61b9bc12a_base

{-# NOINLINE wl_display_get_error #-}
{-| __C declaration:__ @wl_display_get_error@

    __defined at:__ @wayland-client-core.h 275:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_get_error :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt)
wl_display_get_error =
  RIP.unsafePerformIO hs_bindgen_ef8f44c61b9bc12a

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_get_protocol_error@
foreign import ccall unsafe "hs_bindgen_9fd15736df73f5ae" hs_bindgen_9fd15736df73f5ae_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_get_protocol_error@
hs_bindgen_9fd15736df73f5ae :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)) -> (RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_9fd15736df73f5ae =
  RIP.fromFFIType hs_bindgen_9fd15736df73f5ae_base

{-# NOINLINE wl_display_get_protocol_error #-}
{-| __C declaration:__ @wl_display_get_protocol_error@

    __defined at:__ @wayland-client-core.h 278:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_get_protocol_error :: RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)) -> (RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> IO HsBindgen.Runtime.LibC.Word32)
wl_display_get_protocol_error =
  RIP.unsafePerformIO hs_bindgen_9fd15736df73f5ae

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_flush@
foreign import ccall unsafe "hs_bindgen_9569d25dc584d875" hs_bindgen_9569d25dc584d875_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_flush@
hs_bindgen_9569d25dc584d875 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt))
hs_bindgen_9569d25dc584d875 =
  RIP.fromFFIType hs_bindgen_9569d25dc584d875_base

{-# NOINLINE wl_display_flush #-}
{-| __C declaration:__ @wl_display_flush@

    __defined at:__ @wayland-client-core.h 283:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_flush :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt)
wl_display_flush =
  RIP.unsafePerformIO hs_bindgen_9569d25dc584d875

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_roundtrip_queue@
foreign import ccall unsafe "hs_bindgen_39d81a355f243fec" hs_bindgen_39d81a355f243fec_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_roundtrip_queue@
hs_bindgen_39d81a355f243fec :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr Wl_event_queue) -> IO RIP.CInt))
hs_bindgen_39d81a355f243fec =
  RIP.fromFFIType hs_bindgen_39d81a355f243fec_base

{-# NOINLINE wl_display_roundtrip_queue #-}
{-| __C declaration:__ @wl_display_roundtrip_queue@

    __defined at:__ @wayland-client-core.h 286:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_roundtrip_queue :: RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr Wl_event_queue) -> IO RIP.CInt)
wl_display_roundtrip_queue =
  RIP.unsafePerformIO hs_bindgen_39d81a355f243fec

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_roundtrip@
foreign import ccall unsafe "hs_bindgen_6efd30024a711ccd" hs_bindgen_6efd30024a711ccd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_roundtrip@
hs_bindgen_6efd30024a711ccd :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt))
hs_bindgen_6efd30024a711ccd =
  RIP.fromFFIType hs_bindgen_6efd30024a711ccd_base

{-# NOINLINE wl_display_roundtrip #-}
{-| __C declaration:__ @wl_display_roundtrip@

    __defined at:__ @wayland-client-core.h 290:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_roundtrip :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt)
wl_display_roundtrip =
  RIP.unsafePerformIO hs_bindgen_6efd30024a711ccd

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_create_queue@
foreign import ccall unsafe "hs_bindgen_2230654bf13bcbad" hs_bindgen_2230654bf13bcbad_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_create_queue@
hs_bindgen_2230654bf13bcbad :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO (RIP.Ptr Wl_event_queue)))
hs_bindgen_2230654bf13bcbad =
  RIP.fromFFIType hs_bindgen_2230654bf13bcbad_base

{-# NOINLINE wl_display_create_queue #-}
{-| __C declaration:__ @wl_display_create_queue@

    __defined at:__ @wayland-client-core.h 293:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_create_queue :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO (RIP.Ptr Wl_event_queue))
wl_display_create_queue =
  RIP.unsafePerformIO hs_bindgen_2230654bf13bcbad

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_create_queue_with_name@
foreign import ccall unsafe "hs_bindgen_826a5963cbeffd24" hs_bindgen_826a5963cbeffd24_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_create_queue_with_name@
hs_bindgen_826a5963cbeffd24 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Wl_event_queue)))
hs_bindgen_826a5963cbeffd24 =
  RIP.fromFFIType hs_bindgen_826a5963cbeffd24_base

{-# NOINLINE wl_display_create_queue_with_name #-}
{-| __C declaration:__ @wl_display_create_queue_with_name@

    __defined at:__ @wayland-client-core.h 296:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_create_queue_with_name :: RIP.FunPtr ((RIP.Ptr Wl_display) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Wl_event_queue))
wl_display_create_queue_with_name =
  RIP.unsafePerformIO hs_bindgen_826a5963cbeffd24

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_prepare_read_queue@
foreign import ccall unsafe "hs_bindgen_05171b846ac51996" hs_bindgen_05171b846ac51996_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_prepare_read_queue@
hs_bindgen_05171b846ac51996 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr Wl_event_queue) -> IO RIP.CInt))
hs_bindgen_05171b846ac51996 =
  RIP.fromFFIType hs_bindgen_05171b846ac51996_base

{-# NOINLINE wl_display_prepare_read_queue #-}
{-| __C declaration:__ @wl_display_prepare_read_queue@

    __defined at:__ @wayland-client-core.h 300:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_prepare_read_queue :: RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr Wl_event_queue) -> IO RIP.CInt)
wl_display_prepare_read_queue =
  RIP.unsafePerformIO hs_bindgen_05171b846ac51996

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_prepare_read@
foreign import ccall unsafe "hs_bindgen_3c838eea788c8d90" hs_bindgen_3c838eea788c8d90_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_prepare_read@
hs_bindgen_3c838eea788c8d90 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt))
hs_bindgen_3c838eea788c8d90 =
  RIP.fromFFIType hs_bindgen_3c838eea788c8d90_base

{-# NOINLINE wl_display_prepare_read #-}
{-| __C declaration:__ @wl_display_prepare_read@

    __defined at:__ @wayland-client-core.h 304:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_prepare_read :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt)
wl_display_prepare_read =
  RIP.unsafePerformIO hs_bindgen_3c838eea788c8d90

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_cancel_read@
foreign import ccall unsafe "hs_bindgen_2b2461e2316207fa" hs_bindgen_2b2461e2316207fa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_cancel_read@
hs_bindgen_2b2461e2316207fa :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO ()))
hs_bindgen_2b2461e2316207fa =
  RIP.fromFFIType hs_bindgen_2b2461e2316207fa_base

{-# NOINLINE wl_display_cancel_read #-}
{-| __C declaration:__ @wl_display_cancel_read@

    __defined at:__ @wayland-client-core.h 307:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_cancel_read :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO ())
wl_display_cancel_read =
  RIP.unsafePerformIO hs_bindgen_2b2461e2316207fa

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_read_events@
foreign import ccall unsafe "hs_bindgen_d83d966b8b800f14" hs_bindgen_d83d966b8b800f14_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_read_events@
hs_bindgen_d83d966b8b800f14 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt))
hs_bindgen_d83d966b8b800f14 =
  RIP.fromFFIType hs_bindgen_d83d966b8b800f14_base

{-# NOINLINE wl_display_read_events #-}
{-| __C declaration:__ @wl_display_read_events@

    __defined at:__ @wayland-client-core.h 310:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_read_events :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt)
wl_display_read_events =
  RIP.unsafePerformIO hs_bindgen_d83d966b8b800f14

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_set_max_buffer_size@
foreign import ccall unsafe "hs_bindgen_0345a9db01e39593" hs_bindgen_0345a9db01e39593_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_set_max_buffer_size@
hs_bindgen_0345a9db01e39593 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> HsBindgen.Runtime.LibC.CSize -> IO ()))
hs_bindgen_0345a9db01e39593 =
  RIP.fromFFIType hs_bindgen_0345a9db01e39593_base

{-# NOINLINE wl_display_set_max_buffer_size #-}
{-| __C declaration:__ @wl_display_set_max_buffer_size@

    __defined at:__ @wayland-client-core.h 316:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_set_max_buffer_size :: RIP.FunPtr ((RIP.Ptr Wl_display) -> HsBindgen.Runtime.LibC.CSize -> IO ())
wl_display_set_max_buffer_size =
  RIP.unsafePerformIO hs_bindgen_0345a9db01e39593

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_add_listener@
foreign import ccall unsafe "hs_bindgen_c4914d7cab65f9d1" hs_bindgen_c4914d7cab65f9d1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_add_listener@
hs_bindgen_c4914d7cab65f9d1 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> (PtrConst.PtrConst Wl_display_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_c4914d7cab65f9d1 =
  RIP.fromFFIType hs_bindgen_c4914d7cab65f9d1_base

{-# NOINLINE wl_display_add_listener #-}
{-| __C declaration:__ @wl_display_add_listener@

    __defined at:__ @wayland-client-protocol.h 1037:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_display) -> (PtrConst.PtrConst Wl_display_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_display_add_listener =
  RIP.unsafePerformIO hs_bindgen_c4914d7cab65f9d1

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_set_user_data@
foreign import ccall unsafe "hs_bindgen_fcfbd5f9669af1c6" hs_bindgen_fcfbd5f9669af1c6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_set_user_data@
hs_bindgen_fcfbd5f9669af1c6 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_fcfbd5f9669af1c6 =
  RIP.fromFFIType hs_bindgen_fcfbd5f9669af1c6_base

{-# NOINLINE wl_display_set_user_data #-}
{-| __C declaration:__ @wl_display_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1067:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr RIP.Void) -> IO ())
wl_display_set_user_data =
  RIP.unsafePerformIO hs_bindgen_fcfbd5f9669af1c6

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_get_user_data@
foreign import ccall unsafe "hs_bindgen_a4d5e29a76cb6125" hs_bindgen_a4d5e29a76cb6125_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_get_user_data@
hs_bindgen_a4d5e29a76cb6125 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_a4d5e29a76cb6125 =
  RIP.fromFFIType hs_bindgen_a4d5e29a76cb6125_base

{-# NOINLINE wl_display_get_user_data #-}
{-| __C declaration:__ @wl_display_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1074:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO (RIP.Ptr RIP.Void))
wl_display_get_user_data =
  RIP.unsafePerformIO hs_bindgen_a4d5e29a76cb6125

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_get_version@
foreign import ccall unsafe "hs_bindgen_3da4ed18f2b6f187" hs_bindgen_3da4ed18f2b6f187_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_get_version@
hs_bindgen_3da4ed18f2b6f187 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_3da4ed18f2b6f187 =
  RIP.fromFFIType hs_bindgen_3da4ed18f2b6f187_base

{-# NOINLINE wl_display_get_version #-}
{-| __C declaration:__ @wl_display_get_version@

    __defined at:__ @wayland-client-protocol.h 1080:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_get_version :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO HsBindgen.Runtime.LibC.Word32)
wl_display_get_version =
  RIP.unsafePerformIO hs_bindgen_3da4ed18f2b6f187

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_sync@
foreign import ccall unsafe "hs_bindgen_5d49e83ff887da97" hs_bindgen_5d49e83ff887da97_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_sync@
hs_bindgen_5d49e83ff887da97 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO (RIP.Ptr Wl_callback)))
hs_bindgen_5d49e83ff887da97 =
  RIP.fromFFIType hs_bindgen_5d49e83ff887da97_base

{-# NOINLINE wl_display_sync #-}
{-| __C declaration:__ @wl_display_sync@

    __defined at:__ @wayland-client-protocol.h 1101:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_sync :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO (RIP.Ptr Wl_callback))
wl_display_sync =
  RIP.unsafePerformIO hs_bindgen_5d49e83ff887da97

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_get_registry@
foreign import ccall unsafe "hs_bindgen_4031b9386f67a276" hs_bindgen_4031b9386f67a276_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_get_registry@
hs_bindgen_4031b9386f67a276 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO (RIP.Ptr Wl_registry)))
hs_bindgen_4031b9386f67a276 =
  RIP.fromFFIType hs_bindgen_4031b9386f67a276_base

{-# NOINLINE wl_display_get_registry #-}
{-| __C declaration:__ @wl_display_get_registry@

    __defined at:__ @wayland-client-protocol.h 1125:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_get_registry :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO (RIP.Ptr Wl_registry))
wl_display_get_registry =
  RIP.unsafePerformIO hs_bindgen_4031b9386f67a276

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_registry_add_listener@
foreign import ccall unsafe "hs_bindgen_2f61a720c25eef42" hs_bindgen_2f61a720c25eef42_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_registry_add_listener@
hs_bindgen_2f61a720c25eef42 :: IO (RIP.FunPtr ((RIP.Ptr Wl_registry) -> (PtrConst.PtrConst Wl_registry_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_2f61a720c25eef42 =
  RIP.fromFFIType hs_bindgen_2f61a720c25eef42_base

{-# NOINLINE wl_registry_add_listener #-}
{-| __C declaration:__ @wl_registry_add_listener@

    __defined at:__ @wayland-client-protocol.h 1181:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_registry) -> (PtrConst.PtrConst Wl_registry_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_registry_add_listener =
  RIP.unsafePerformIO hs_bindgen_2f61a720c25eef42

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_registry_set_user_data@
foreign import ccall unsafe "hs_bindgen_59905c4889820cc6" hs_bindgen_59905c4889820cc6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_registry_set_user_data@
hs_bindgen_59905c4889820cc6 :: IO (RIP.FunPtr ((RIP.Ptr Wl_registry) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_59905c4889820cc6 =
  RIP.fromFFIType hs_bindgen_59905c4889820cc6_base

{-# NOINLINE wl_registry_set_user_data #-}
{-| __C declaration:__ @wl_registry_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1206:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_registry) -> (RIP.Ptr RIP.Void) -> IO ())
wl_registry_set_user_data =
  RIP.unsafePerformIO hs_bindgen_59905c4889820cc6

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_registry_get_user_data@
foreign import ccall unsafe "hs_bindgen_cdbe8b32e2e870af" hs_bindgen_cdbe8b32e2e870af_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_registry_get_user_data@
hs_bindgen_cdbe8b32e2e870af :: IO (RIP.FunPtr ((RIP.Ptr Wl_registry) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_cdbe8b32e2e870af =
  RIP.fromFFIType hs_bindgen_cdbe8b32e2e870af_base

{-# NOINLINE wl_registry_get_user_data #-}
{-| __C declaration:__ @wl_registry_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1213:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_registry) -> IO (RIP.Ptr RIP.Void))
wl_registry_get_user_data =
  RIP.unsafePerformIO hs_bindgen_cdbe8b32e2e870af

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_registry_get_version@
foreign import ccall unsafe "hs_bindgen_32bee6d794f93f60" hs_bindgen_32bee6d794f93f60_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_registry_get_version@
hs_bindgen_32bee6d794f93f60 :: IO (RIP.FunPtr ((RIP.Ptr Wl_registry) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_32bee6d794f93f60 =
  RIP.fromFFIType hs_bindgen_32bee6d794f93f60_base

{-# NOINLINE wl_registry_get_version #-}
{-| __C declaration:__ @wl_registry_get_version@

    __defined at:__ @wayland-client-protocol.h 1219:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_get_version :: RIP.FunPtr ((RIP.Ptr Wl_registry) -> IO HsBindgen.Runtime.LibC.Word32)
wl_registry_get_version =
  RIP.unsafePerformIO hs_bindgen_32bee6d794f93f60

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_registry_destroy@
foreign import ccall unsafe "hs_bindgen_68d5fc3ead211688" hs_bindgen_68d5fc3ead211688_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_registry_destroy@
hs_bindgen_68d5fc3ead211688 :: IO (RIP.FunPtr ((RIP.Ptr Wl_registry) -> IO ()))
hs_bindgen_68d5fc3ead211688 =
  RIP.fromFFIType hs_bindgen_68d5fc3ead211688_base

{-# NOINLINE wl_registry_destroy #-}
{-| __C declaration:__ @wl_registry_destroy@

    __defined at:__ @wayland-client-protocol.h 1226:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_destroy :: RIP.FunPtr ((RIP.Ptr Wl_registry) -> IO ())
wl_registry_destroy =
  RIP.unsafePerformIO hs_bindgen_68d5fc3ead211688

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_registry_bind@
foreign import ccall unsafe "hs_bindgen_f89ae38587b5d438" hs_bindgen_f89ae38587b5d438_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_registry_bind@
hs_bindgen_f89ae38587b5d438 :: IO (RIP.FunPtr ((RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_f89ae38587b5d438 =
  RIP.fromFFIType hs_bindgen_f89ae38587b5d438_base

{-# NOINLINE wl_registry_bind #-}
{-| __C declaration:__ @wl_registry_bind@

    __defined at:__ @wayland-client-protocol.h 1238:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_bind :: RIP.FunPtr ((RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr RIP.Void))
wl_registry_bind =
  RIP.unsafePerformIO hs_bindgen_f89ae38587b5d438

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_callback_add_listener@
foreign import ccall unsafe "hs_bindgen_29f10c93cff5a583" hs_bindgen_29f10c93cff5a583_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_callback_add_listener@
hs_bindgen_29f10c93cff5a583 :: IO (RIP.FunPtr ((RIP.Ptr Wl_callback) -> (PtrConst.PtrConst Wl_callback_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_29f10c93cff5a583 =
  RIP.fromFFIType hs_bindgen_29f10c93cff5a583_base

{-# NOINLINE wl_callback_add_listener #-}
{-| __C declaration:__ @wl_callback_add_listener@

    __defined at:__ @wayland-client-protocol.h 1268:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_callback) -> (PtrConst.PtrConst Wl_callback_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_callback_add_listener =
  RIP.unsafePerformIO hs_bindgen_29f10c93cff5a583

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_callback_set_user_data@
foreign import ccall unsafe "hs_bindgen_bc68be7ad9f19ab1" hs_bindgen_bc68be7ad9f19ab1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_callback_set_user_data@
hs_bindgen_bc68be7ad9f19ab1 :: IO (RIP.FunPtr ((RIP.Ptr Wl_callback) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_bc68be7ad9f19ab1 =
  RIP.fromFFIType hs_bindgen_bc68be7ad9f19ab1_base

{-# NOINLINE wl_callback_set_user_data #-}
{-| __C declaration:__ @wl_callback_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1283:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_callback) -> (RIP.Ptr RIP.Void) -> IO ())
wl_callback_set_user_data =
  RIP.unsafePerformIO hs_bindgen_bc68be7ad9f19ab1

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_callback_get_user_data@
foreign import ccall unsafe "hs_bindgen_8b9cabce63520b64" hs_bindgen_8b9cabce63520b64_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_callback_get_user_data@
hs_bindgen_8b9cabce63520b64 :: IO (RIP.FunPtr ((RIP.Ptr Wl_callback) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_8b9cabce63520b64 =
  RIP.fromFFIType hs_bindgen_8b9cabce63520b64_base

{-# NOINLINE wl_callback_get_user_data #-}
{-| __C declaration:__ @wl_callback_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1290:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_callback) -> IO (RIP.Ptr RIP.Void))
wl_callback_get_user_data =
  RIP.unsafePerformIO hs_bindgen_8b9cabce63520b64

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_callback_get_version@
foreign import ccall unsafe "hs_bindgen_66d18929aab50214" hs_bindgen_66d18929aab50214_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_callback_get_version@
hs_bindgen_66d18929aab50214 :: IO (RIP.FunPtr ((RIP.Ptr Wl_callback) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_66d18929aab50214 =
  RIP.fromFFIType hs_bindgen_66d18929aab50214_base

{-# NOINLINE wl_callback_get_version #-}
{-| __C declaration:__ @wl_callback_get_version@

    __defined at:__ @wayland-client-protocol.h 1296:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_get_version :: RIP.FunPtr ((RIP.Ptr Wl_callback) -> IO HsBindgen.Runtime.LibC.Word32)
wl_callback_get_version =
  RIP.unsafePerformIO hs_bindgen_66d18929aab50214

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_callback_destroy@
foreign import ccall unsafe "hs_bindgen_96ebe7a9c5ae46a9" hs_bindgen_96ebe7a9c5ae46a9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_callback_destroy@
hs_bindgen_96ebe7a9c5ae46a9 :: IO (RIP.FunPtr ((RIP.Ptr Wl_callback) -> IO ()))
hs_bindgen_96ebe7a9c5ae46a9 =
  RIP.fromFFIType hs_bindgen_96ebe7a9c5ae46a9_base

{-# NOINLINE wl_callback_destroy #-}
{-| __C declaration:__ @wl_callback_destroy@

    __defined at:__ @wayland-client-protocol.h 1303:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_destroy :: RIP.FunPtr ((RIP.Ptr Wl_callback) -> IO ())
wl_callback_destroy =
  RIP.unsafePerformIO hs_bindgen_96ebe7a9c5ae46a9

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_compositor_set_user_data@
foreign import ccall unsafe "hs_bindgen_03a5fddc3bd9e3d5" hs_bindgen_03a5fddc3bd9e3d5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_compositor_set_user_data@
hs_bindgen_03a5fddc3bd9e3d5 :: IO (RIP.FunPtr ((RIP.Ptr Wl_compositor) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_03a5fddc3bd9e3d5 =
  RIP.fromFFIType hs_bindgen_03a5fddc3bd9e3d5_base

{-# NOINLINE wl_compositor_set_user_data #-}
{-| __C declaration:__ @wl_compositor_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1323:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_compositor) -> (RIP.Ptr RIP.Void) -> IO ())
wl_compositor_set_user_data =
  RIP.unsafePerformIO hs_bindgen_03a5fddc3bd9e3d5

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_compositor_get_user_data@
foreign import ccall unsafe "hs_bindgen_a6583da4c70ee0c8" hs_bindgen_a6583da4c70ee0c8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_compositor_get_user_data@
hs_bindgen_a6583da4c70ee0c8 :: IO (RIP.FunPtr ((RIP.Ptr Wl_compositor) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_a6583da4c70ee0c8 =
  RIP.fromFFIType hs_bindgen_a6583da4c70ee0c8_base

{-# NOINLINE wl_compositor_get_user_data #-}
{-| __C declaration:__ @wl_compositor_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1330:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_compositor) -> IO (RIP.Ptr RIP.Void))
wl_compositor_get_user_data =
  RIP.unsafePerformIO hs_bindgen_a6583da4c70ee0c8

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_compositor_get_version@
foreign import ccall unsafe "hs_bindgen_0142449f639c7da7" hs_bindgen_0142449f639c7da7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_compositor_get_version@
hs_bindgen_0142449f639c7da7 :: IO (RIP.FunPtr ((RIP.Ptr Wl_compositor) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_0142449f639c7da7 =
  RIP.fromFFIType hs_bindgen_0142449f639c7da7_base

{-# NOINLINE wl_compositor_get_version #-}
{-| __C declaration:__ @wl_compositor_get_version@

    __defined at:__ @wayland-client-protocol.h 1336:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_get_version :: RIP.FunPtr ((RIP.Ptr Wl_compositor) -> IO HsBindgen.Runtime.LibC.Word32)
wl_compositor_get_version =
  RIP.unsafePerformIO hs_bindgen_0142449f639c7da7

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_compositor_destroy@
foreign import ccall unsafe "hs_bindgen_8c34efd4ae773dec" hs_bindgen_8c34efd4ae773dec_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_compositor_destroy@
hs_bindgen_8c34efd4ae773dec :: IO (RIP.FunPtr ((RIP.Ptr Wl_compositor) -> IO ()))
hs_bindgen_8c34efd4ae773dec =
  RIP.fromFFIType hs_bindgen_8c34efd4ae773dec_base

{-# NOINLINE wl_compositor_destroy #-}
{-| __C declaration:__ @wl_compositor_destroy@

    __defined at:__ @wayland-client-protocol.h 1343:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_destroy :: RIP.FunPtr ((RIP.Ptr Wl_compositor) -> IO ())
wl_compositor_destroy =
  RIP.unsafePerformIO hs_bindgen_8c34efd4ae773dec

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_compositor_create_surface@
foreign import ccall unsafe "hs_bindgen_5af1f57ab9e4d83a" hs_bindgen_5af1f57ab9e4d83a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_compositor_create_surface@
hs_bindgen_5af1f57ab9e4d83a :: IO (RIP.FunPtr ((RIP.Ptr Wl_compositor) -> IO (RIP.Ptr Wl_surface)))
hs_bindgen_5af1f57ab9e4d83a =
  RIP.fromFFIType hs_bindgen_5af1f57ab9e4d83a_base

{-# NOINLINE wl_compositor_create_surface #-}
{-| __C declaration:__ @wl_compositor_create_surface@

    __defined at:__ @wayland-client-protocol.h 1354:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_create_surface :: RIP.FunPtr ((RIP.Ptr Wl_compositor) -> IO (RIP.Ptr Wl_surface))
wl_compositor_create_surface =
  RIP.unsafePerformIO hs_bindgen_5af1f57ab9e4d83a

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_compositor_create_region@
foreign import ccall unsafe "hs_bindgen_97a3ee5004eb98a6" hs_bindgen_97a3ee5004eb98a6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_compositor_create_region@
hs_bindgen_97a3ee5004eb98a6 :: IO (RIP.FunPtr ((RIP.Ptr Wl_compositor) -> IO (RIP.Ptr Wl_region)))
hs_bindgen_97a3ee5004eb98a6 =
  RIP.fromFFIType hs_bindgen_97a3ee5004eb98a6_base

{-# NOINLINE wl_compositor_create_region #-}
{-| __C declaration:__ @wl_compositor_create_region@

    __defined at:__ @wayland-client-protocol.h 1370:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_create_region :: RIP.FunPtr ((RIP.Ptr Wl_compositor) -> IO (RIP.Ptr Wl_region))
wl_compositor_create_region =
  RIP.unsafePerformIO hs_bindgen_97a3ee5004eb98a6

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_pool_set_user_data@
foreign import ccall unsafe "hs_bindgen_089804124bdd7bdd" hs_bindgen_089804124bdd7bdd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_pool_set_user_data@
hs_bindgen_089804124bdd7bdd :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_089804124bdd7bdd =
  RIP.fromFFIType hs_bindgen_089804124bdd7bdd_base

{-# NOINLINE wl_shm_pool_set_user_data #-}
{-| __C declaration:__ @wl_shm_pool_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1400:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> (RIP.Ptr RIP.Void) -> IO ())
wl_shm_pool_set_user_data =
  RIP.unsafePerformIO hs_bindgen_089804124bdd7bdd

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_pool_get_user_data@
foreign import ccall unsafe "hs_bindgen_9ebe884f4c2e86f0" hs_bindgen_9ebe884f4c2e86f0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_pool_get_user_data@
hs_bindgen_9ebe884f4c2e86f0 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_9ebe884f4c2e86f0 =
  RIP.fromFFIType hs_bindgen_9ebe884f4c2e86f0_base

{-# NOINLINE wl_shm_pool_get_user_data #-}
{-| __C declaration:__ @wl_shm_pool_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1407:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> IO (RIP.Ptr RIP.Void))
wl_shm_pool_get_user_data =
  RIP.unsafePerformIO hs_bindgen_9ebe884f4c2e86f0

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_pool_get_version@
foreign import ccall unsafe "hs_bindgen_8855063b9ee4bc86" hs_bindgen_8855063b9ee4bc86_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_pool_get_version@
hs_bindgen_8855063b9ee4bc86 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_8855063b9ee4bc86 =
  RIP.fromFFIType hs_bindgen_8855063b9ee4bc86_base

{-# NOINLINE wl_shm_pool_get_version #-}
{-| __C declaration:__ @wl_shm_pool_get_version@

    __defined at:__ @wayland-client-protocol.h 1413:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_get_version :: RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> IO HsBindgen.Runtime.LibC.Word32)
wl_shm_pool_get_version =
  RIP.unsafePerformIO hs_bindgen_8855063b9ee4bc86

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_pool_create_buffer@
foreign import ccall unsafe "hs_bindgen_b5adaf6d49ab6bb8" hs_bindgen_b5adaf6d49ab6bb8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_pool_create_buffer@
hs_bindgen_b5adaf6d49ab6bb8 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr Wl_buffer)))
hs_bindgen_b5adaf6d49ab6bb8 =
  RIP.fromFFIType hs_bindgen_b5adaf6d49ab6bb8_base

{-# NOINLINE wl_shm_pool_create_buffer #-}
{-| __C declaration:__ @wl_shm_pool_create_buffer@

    __defined at:__ @wayland-client-protocol.h 1434:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_create_buffer :: RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr Wl_buffer))
wl_shm_pool_create_buffer =
  RIP.unsafePerformIO hs_bindgen_b5adaf6d49ab6bb8

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_pool_destroy@
foreign import ccall unsafe "hs_bindgen_563490c0348f8b56" hs_bindgen_563490c0348f8b56_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_pool_destroy@
hs_bindgen_563490c0348f8b56 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> IO ()))
hs_bindgen_563490c0348f8b56 =
  RIP.fromFFIType hs_bindgen_563490c0348f8b56_base

{-# NOINLINE wl_shm_pool_destroy #-}
{-| __C declaration:__ @wl_shm_pool_destroy@

    __defined at:__ @wayland-client-protocol.h 1454:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_destroy :: RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> IO ())
wl_shm_pool_destroy =
  RIP.unsafePerformIO hs_bindgen_563490c0348f8b56

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_pool_resize@
foreign import ccall unsafe "hs_bindgen_499b529d92813236" hs_bindgen_499b529d92813236_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_pool_resize@
hs_bindgen_499b529d92813236 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_499b529d92813236 =
  RIP.fromFFIType hs_bindgen_499b529d92813236_base

{-# NOINLINE wl_shm_pool_resize #-}
{-| __C declaration:__ @wl_shm_pool_resize@

    __defined at:__ @wayland-client-protocol.h 1475:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_resize :: RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_shm_pool_resize =
  RIP.unsafePerformIO hs_bindgen_499b529d92813236

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_add_listener@
foreign import ccall unsafe "hs_bindgen_09a35bd6e25434bb" hs_bindgen_09a35bd6e25434bb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_add_listener@
hs_bindgen_09a35bd6e25434bb :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm) -> (PtrConst.PtrConst Wl_shm_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_09a35bd6e25434bb =
  RIP.fromFFIType hs_bindgen_09a35bd6e25434bb_base

{-# NOINLINE wl_shm_add_listener #-}
{-| __C declaration:__ @wl_shm_add_listener@

    __defined at:__ @wayland-client-protocol.h 2005:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_shm) -> (PtrConst.PtrConst Wl_shm_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_shm_add_listener =
  RIP.unsafePerformIO hs_bindgen_09a35bd6e25434bb

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_set_user_data@
foreign import ccall unsafe "hs_bindgen_f4f97bcabb5cd4e9" hs_bindgen_f4f97bcabb5cd4e9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_set_user_data@
hs_bindgen_f4f97bcabb5cd4e9 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_f4f97bcabb5cd4e9 =
  RIP.fromFFIType hs_bindgen_f4f97bcabb5cd4e9_base

{-# NOINLINE wl_shm_set_user_data #-}
{-| __C declaration:__ @wl_shm_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2031:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_shm) -> (RIP.Ptr RIP.Void) -> IO ())
wl_shm_set_user_data =
  RIP.unsafePerformIO hs_bindgen_f4f97bcabb5cd4e9

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_get_user_data@
foreign import ccall unsafe "hs_bindgen_74b7a0161022ee5f" hs_bindgen_74b7a0161022ee5f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_get_user_data@
hs_bindgen_74b7a0161022ee5f :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_74b7a0161022ee5f =
  RIP.fromFFIType hs_bindgen_74b7a0161022ee5f_base

{-# NOINLINE wl_shm_get_user_data #-}
{-| __C declaration:__ @wl_shm_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2038:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_shm) -> IO (RIP.Ptr RIP.Void))
wl_shm_get_user_data =
  RIP.unsafePerformIO hs_bindgen_74b7a0161022ee5f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_get_version@
foreign import ccall unsafe "hs_bindgen_ec76937ea3fdd164" hs_bindgen_ec76937ea3fdd164_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_get_version@
hs_bindgen_ec76937ea3fdd164 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_ec76937ea3fdd164 =
  RIP.fromFFIType hs_bindgen_ec76937ea3fdd164_base

{-# NOINLINE wl_shm_get_version #-}
{-| __C declaration:__ @wl_shm_get_version@

    __defined at:__ @wayland-client-protocol.h 2044:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_get_version :: RIP.FunPtr ((RIP.Ptr Wl_shm) -> IO HsBindgen.Runtime.LibC.Word32)
wl_shm_get_version =
  RIP.unsafePerformIO hs_bindgen_ec76937ea3fdd164

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_destroy@
foreign import ccall unsafe "hs_bindgen_d11f9c8ddef71184" hs_bindgen_d11f9c8ddef71184_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_destroy@
hs_bindgen_d11f9c8ddef71184 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm) -> IO ()))
hs_bindgen_d11f9c8ddef71184 =
  RIP.fromFFIType hs_bindgen_d11f9c8ddef71184_base

{-# NOINLINE wl_shm_destroy #-}
{-| __C declaration:__ @wl_shm_destroy@

    __defined at:__ @wayland-client-protocol.h 2051:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_destroy :: RIP.FunPtr ((RIP.Ptr Wl_shm) -> IO ())
wl_shm_destroy =
  RIP.unsafePerformIO hs_bindgen_d11f9c8ddef71184

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_create_pool@
foreign import ccall unsafe "hs_bindgen_4e0566d78856d3a0" hs_bindgen_4e0566d78856d3a0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_create_pool@
hs_bindgen_4e0566d78856d3a0 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO (RIP.Ptr Wl_shm_pool)))
hs_bindgen_4e0566d78856d3a0 =
  RIP.fromFFIType hs_bindgen_4e0566d78856d3a0_base

{-# NOINLINE wl_shm_create_pool #-}
{-| __C declaration:__ @wl_shm_create_pool@

    __defined at:__ @wayland-client-protocol.h 2066:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_create_pool :: RIP.FunPtr ((RIP.Ptr Wl_shm) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO (RIP.Ptr Wl_shm_pool))
wl_shm_create_pool =
  RIP.unsafePerformIO hs_bindgen_4e0566d78856d3a0

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_release@
foreign import ccall unsafe "hs_bindgen_09d5aca2dfede4f6" hs_bindgen_09d5aca2dfede4f6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_release@
hs_bindgen_09d5aca2dfede4f6 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm) -> IO ()))
hs_bindgen_09d5aca2dfede4f6 =
  RIP.fromFFIType hs_bindgen_09d5aca2dfede4f6_base

{-# NOINLINE wl_shm_release #-}
{-| __C declaration:__ @wl_shm_release@

    __defined at:__ @wayland-client-protocol.h 2085:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_release :: RIP.FunPtr ((RIP.Ptr Wl_shm) -> IO ())
wl_shm_release =
  RIP.unsafePerformIO hs_bindgen_09d5aca2dfede4f6

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_buffer_add_listener@
foreign import ccall unsafe "hs_bindgen_0d0831afe9d9a3b0" hs_bindgen_0d0831afe9d9a3b0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_buffer_add_listener@
hs_bindgen_0d0831afe9d9a3b0 :: IO (RIP.FunPtr ((RIP.Ptr Wl_buffer) -> (PtrConst.PtrConst Wl_buffer_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_0d0831afe9d9a3b0 =
  RIP.fromFFIType hs_bindgen_0d0831afe9d9a3b0_base

{-# NOINLINE wl_buffer_add_listener #-}
{-| __C declaration:__ @wl_buffer_add_listener@

    __defined at:__ @wayland-client-protocol.h 2122:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_buffer) -> (PtrConst.PtrConst Wl_buffer_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_buffer_add_listener =
  RIP.unsafePerformIO hs_bindgen_0d0831afe9d9a3b0

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_buffer_set_user_data@
foreign import ccall unsafe "hs_bindgen_85409a7ab33f7d07" hs_bindgen_85409a7ab33f7d07_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_buffer_set_user_data@
hs_bindgen_85409a7ab33f7d07 :: IO (RIP.FunPtr ((RIP.Ptr Wl_buffer) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_85409a7ab33f7d07 =
  RIP.fromFFIType hs_bindgen_85409a7ab33f7d07_base

{-# NOINLINE wl_buffer_set_user_data #-}
{-| __C declaration:__ @wl_buffer_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2143:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_buffer) -> (RIP.Ptr RIP.Void) -> IO ())
wl_buffer_set_user_data =
  RIP.unsafePerformIO hs_bindgen_85409a7ab33f7d07

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_buffer_get_user_data@
foreign import ccall unsafe "hs_bindgen_a5bec6540348614a" hs_bindgen_a5bec6540348614a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_buffer_get_user_data@
hs_bindgen_a5bec6540348614a :: IO (RIP.FunPtr ((RIP.Ptr Wl_buffer) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_a5bec6540348614a =
  RIP.fromFFIType hs_bindgen_a5bec6540348614a_base

{-# NOINLINE wl_buffer_get_user_data #-}
{-| __C declaration:__ @wl_buffer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2150:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_buffer) -> IO (RIP.Ptr RIP.Void))
wl_buffer_get_user_data =
  RIP.unsafePerformIO hs_bindgen_a5bec6540348614a

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_buffer_get_version@
foreign import ccall unsafe "hs_bindgen_9273ac3517ddf7c7" hs_bindgen_9273ac3517ddf7c7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_buffer_get_version@
hs_bindgen_9273ac3517ddf7c7 :: IO (RIP.FunPtr ((RIP.Ptr Wl_buffer) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_9273ac3517ddf7c7 =
  RIP.fromFFIType hs_bindgen_9273ac3517ddf7c7_base

{-# NOINLINE wl_buffer_get_version #-}
{-| __C declaration:__ @wl_buffer_get_version@

    __defined at:__ @wayland-client-protocol.h 2156:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_get_version :: RIP.FunPtr ((RIP.Ptr Wl_buffer) -> IO HsBindgen.Runtime.LibC.Word32)
wl_buffer_get_version =
  RIP.unsafePerformIO hs_bindgen_9273ac3517ddf7c7

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_buffer_destroy@
foreign import ccall unsafe "hs_bindgen_e072d3349e188cf5" hs_bindgen_e072d3349e188cf5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_buffer_destroy@
hs_bindgen_e072d3349e188cf5 :: IO (RIP.FunPtr ((RIP.Ptr Wl_buffer) -> IO ()))
hs_bindgen_e072d3349e188cf5 =
  RIP.fromFFIType hs_bindgen_e072d3349e188cf5_base

{-# NOINLINE wl_buffer_destroy #-}
{-| __C declaration:__ @wl_buffer_destroy@

    __defined at:__ @wayland-client-protocol.h 2170:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_destroy :: RIP.FunPtr ((RIP.Ptr Wl_buffer) -> IO ())
wl_buffer_destroy =
  RIP.unsafePerformIO hs_bindgen_e072d3349e188cf5

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_add_listener@
foreign import ccall unsafe "hs_bindgen_3ec477b8eefcfd69" hs_bindgen_3ec477b8eefcfd69_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_add_listener@
hs_bindgen_3ec477b8eefcfd69 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> (PtrConst.PtrConst Wl_data_offer_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_3ec477b8eefcfd69 =
  RIP.fromFFIType hs_bindgen_3ec477b8eefcfd69_base

{-# NOINLINE wl_data_offer_add_listener #-}
{-| __C declaration:__ @wl_data_offer_add_listener@

    __defined at:__ @wayland-client-protocol.h 2278:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> (PtrConst.PtrConst Wl_data_offer_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_data_offer_add_listener =
  RIP.unsafePerformIO hs_bindgen_3ec477b8eefcfd69

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_set_user_data@
foreign import ccall unsafe "hs_bindgen_ff4c74dbcee65c13" hs_bindgen_ff4c74dbcee65c13_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_set_user_data@
hs_bindgen_ff4c74dbcee65c13 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_ff4c74dbcee65c13 =
  RIP.fromFFIType hs_bindgen_ff4c74dbcee65c13_base

{-# NOINLINE wl_data_offer_set_user_data #-}
{-| __C declaration:__ @wl_data_offer_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2327:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> (RIP.Ptr RIP.Void) -> IO ())
wl_data_offer_set_user_data =
  RIP.unsafePerformIO hs_bindgen_ff4c74dbcee65c13

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_get_user_data@
foreign import ccall unsafe "hs_bindgen_f9e80f32b6cfcf54" hs_bindgen_f9e80f32b6cfcf54_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_get_user_data@
hs_bindgen_f9e80f32b6cfcf54 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_f9e80f32b6cfcf54 =
  RIP.fromFFIType hs_bindgen_f9e80f32b6cfcf54_base

{-# NOINLINE wl_data_offer_get_user_data #-}
{-| __C declaration:__ @wl_data_offer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2334:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> IO (RIP.Ptr RIP.Void))
wl_data_offer_get_user_data =
  RIP.unsafePerformIO hs_bindgen_f9e80f32b6cfcf54

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_get_version@
foreign import ccall unsafe "hs_bindgen_81fb28aa68375de4" hs_bindgen_81fb28aa68375de4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_get_version@
hs_bindgen_81fb28aa68375de4 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_81fb28aa68375de4 =
  RIP.fromFFIType hs_bindgen_81fb28aa68375de4_base

{-# NOINLINE wl_data_offer_get_version #-}
{-| __C declaration:__ @wl_data_offer_get_version@

    __defined at:__ @wayland-client-protocol.h 2340:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_get_version :: RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> IO HsBindgen.Runtime.LibC.Word32)
wl_data_offer_get_version =
  RIP.unsafePerformIO hs_bindgen_81fb28aa68375de4

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_accept@
foreign import ccall unsafe "hs_bindgen_3c6060e679a796de" hs_bindgen_3c6060e679a796de_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_accept@
hs_bindgen_3c6060e679a796de :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_3c6060e679a796de =
  RIP.fromFFIType hs_bindgen_3c6060e679a796de_base

{-# NOINLINE wl_data_offer_accept #-}
{-| __C declaration:__ @wl_data_offer_accept@

    __defined at:__ @wayland-client-protocol.h 2364:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_accept :: RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ())
wl_data_offer_accept =
  RIP.unsafePerformIO hs_bindgen_3c6060e679a796de

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_receive@
foreign import ccall unsafe "hs_bindgen_70849cf6bdf095c4" hs_bindgen_70849cf6bdf095c4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_receive@
hs_bindgen_70849cf6bdf095c4 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_70849cf6bdf095c4 =
  RIP.fromFFIType hs_bindgen_70849cf6bdf095c4_base

{-# NOINLINE wl_data_offer_receive #-}
{-| __C declaration:__ @wl_data_offer_receive@

    __defined at:__ @wayland-client-protocol.h 2390:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_receive :: RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_data_offer_receive =
  RIP.unsafePerformIO hs_bindgen_70849cf6bdf095c4

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_destroy@
foreign import ccall unsafe "hs_bindgen_e61f59ff996f7689" hs_bindgen_e61f59ff996f7689_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_destroy@
hs_bindgen_e61f59ff996f7689 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> IO ()))
hs_bindgen_e61f59ff996f7689 =
  RIP.fromFFIType hs_bindgen_e61f59ff996f7689_base

{-# NOINLINE wl_data_offer_destroy #-}
{-| __C declaration:__ @wl_data_offer_destroy@

    __defined at:__ @wayland-client-protocol.h 2402:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_destroy :: RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> IO ())
wl_data_offer_destroy =
  RIP.unsafePerformIO hs_bindgen_e61f59ff996f7689

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_finish@
foreign import ccall unsafe "hs_bindgen_c9b3f58b6f4e7dc8" hs_bindgen_c9b3f58b6f4e7dc8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_finish@
hs_bindgen_c9b3f58b6f4e7dc8 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> IO ()))
hs_bindgen_c9b3f58b6f4e7dc8 =
  RIP.fromFFIType hs_bindgen_c9b3f58b6f4e7dc8_base

{-# NOINLINE wl_data_offer_finish #-}
{-| __C declaration:__ @wl_data_offer_finish@

    __defined at:__ @wayland-client-protocol.h 2427:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_finish :: RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> IO ())
wl_data_offer_finish =
  RIP.unsafePerformIO hs_bindgen_c9b3f58b6f4e7dc8

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_set_actions@
foreign import ccall unsafe "hs_bindgen_d6ef326a4f734609" hs_bindgen_d6ef326a4f734609_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_set_actions@
hs_bindgen_d6ef326a4f734609 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_d6ef326a4f734609 =
  RIP.fromFFIType hs_bindgen_d6ef326a4f734609_base

{-# NOINLINE wl_data_offer_set_actions #-}
{-| __C declaration:__ @wl_data_offer_set_actions@

    __defined at:__ @wayland-client-protocol.h 2469:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_set_actions :: RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_data_offer_set_actions =
  RIP.unsafePerformIO hs_bindgen_d6ef326a4f734609

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_add_listener@
foreign import ccall unsafe "hs_bindgen_b83e76a5ed00da3c" hs_bindgen_b83e76a5ed00da3c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_add_listener@
hs_bindgen_b83e76a5ed00da3c :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst Wl_data_source_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_b83e76a5ed00da3c =
  RIP.fromFFIType hs_bindgen_b83e76a5ed00da3c_base

{-# NOINLINE wl_data_source_add_listener #-}
{-| __C declaration:__ @wl_data_source_add_listener@

    __defined at:__ @wayland-client-protocol.h 2617:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst Wl_data_source_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_data_source_add_listener =
  RIP.unsafePerformIO hs_bindgen_b83e76a5ed00da3c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_set_user_data@
foreign import ccall unsafe "hs_bindgen_9008492b3ac5c0da" hs_bindgen_9008492b3ac5c0da_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_set_user_data@
hs_bindgen_9008492b3ac5c0da :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_source) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_9008492b3ac5c0da =
  RIP.fromFFIType hs_bindgen_9008492b3ac5c0da_base

{-# NOINLINE wl_data_source_set_user_data #-}
{-| __C declaration:__ @wl_data_source_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2668:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_data_source) -> (RIP.Ptr RIP.Void) -> IO ())
wl_data_source_set_user_data =
  RIP.unsafePerformIO hs_bindgen_9008492b3ac5c0da

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_get_user_data@
foreign import ccall unsafe "hs_bindgen_e126593573d4b9cb" hs_bindgen_e126593573d4b9cb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_get_user_data@
hs_bindgen_e126593573d4b9cb :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_source) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_e126593573d4b9cb =
  RIP.fromFFIType hs_bindgen_e126593573d4b9cb_base

{-# NOINLINE wl_data_source_get_user_data #-}
{-| __C declaration:__ @wl_data_source_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2675:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_data_source) -> IO (RIP.Ptr RIP.Void))
wl_data_source_get_user_data =
  RIP.unsafePerformIO hs_bindgen_e126593573d4b9cb

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_get_version@
foreign import ccall unsafe "hs_bindgen_101edb498f68dca4" hs_bindgen_101edb498f68dca4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_get_version@
hs_bindgen_101edb498f68dca4 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_source) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_101edb498f68dca4 =
  RIP.fromFFIType hs_bindgen_101edb498f68dca4_base

{-# NOINLINE wl_data_source_get_version #-}
{-| __C declaration:__ @wl_data_source_get_version@

    __defined at:__ @wayland-client-protocol.h 2681:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_get_version :: RIP.FunPtr ((RIP.Ptr Wl_data_source) -> IO HsBindgen.Runtime.LibC.Word32)
wl_data_source_get_version =
  RIP.unsafePerformIO hs_bindgen_101edb498f68dca4

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_offer@
foreign import ccall unsafe "hs_bindgen_22dcdd59ffcf7b20" hs_bindgen_22dcdd59ffcf7b20_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_offer@
hs_bindgen_22dcdd59ffcf7b20 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_22dcdd59ffcf7b20 =
  RIP.fromFFIType hs_bindgen_22dcdd59ffcf7b20_base

{-# NOINLINE wl_data_source_offer #-}
{-| __C declaration:__ @wl_data_source_offer@

    __defined at:__ @wayland-client-protocol.h 2694:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_offer :: RIP.FunPtr ((RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
wl_data_source_offer =
  RIP.unsafePerformIO hs_bindgen_22dcdd59ffcf7b20

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_destroy@
foreign import ccall unsafe "hs_bindgen_350e5b2a32eccee1" hs_bindgen_350e5b2a32eccee1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_destroy@
hs_bindgen_350e5b2a32eccee1 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_source) -> IO ()))
hs_bindgen_350e5b2a32eccee1 =
  RIP.fromFFIType hs_bindgen_350e5b2a32eccee1_base

{-# NOINLINE wl_data_source_destroy #-}
{-| __C declaration:__ @wl_data_source_destroy@

    __defined at:__ @wayland-client-protocol.h 2706:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_destroy :: RIP.FunPtr ((RIP.Ptr Wl_data_source) -> IO ())
wl_data_source_destroy =
  RIP.unsafePerformIO hs_bindgen_350e5b2a32eccee1

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_set_actions@
foreign import ccall unsafe "hs_bindgen_9462eaa4bed2a472" hs_bindgen_9462eaa4bed2a472_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_set_actions@
hs_bindgen_9462eaa4bed2a472 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_source) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_9462eaa4bed2a472 =
  RIP.fromFFIType hs_bindgen_9462eaa4bed2a472_base

{-# NOINLINE wl_data_source_set_actions #-}
{-| __C declaration:__ @wl_data_source_set_actions@

    __defined at:__ @wayland-client-protocol.h 2730:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_set_actions :: RIP.FunPtr ((RIP.Ptr Wl_data_source) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_data_source_set_actions =
  RIP.unsafePerformIO hs_bindgen_9462eaa4bed2a472

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_add_listener@
foreign import ccall unsafe "hs_bindgen_12994557cdd1bdfa" hs_bindgen_12994557cdd1bdfa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_add_listener@
hs_bindgen_12994557cdd1bdfa :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device) -> (PtrConst.PtrConst Wl_data_device_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_12994557cdd1bdfa =
  RIP.fromFFIType hs_bindgen_12994557cdd1bdfa_base

{-# NOINLINE wl_data_device_add_listener #-}
{-| __C declaration:__ @wl_data_device_add_listener@

    __defined at:__ @wayland-client-protocol.h 2860:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_data_device) -> (PtrConst.PtrConst Wl_data_device_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_data_device_add_listener =
  RIP.unsafePerformIO hs_bindgen_12994557cdd1bdfa

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_set_user_data@
foreign import ccall unsafe "hs_bindgen_9e37a2e39adeaf66" hs_bindgen_9e37a2e39adeaf66_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_set_user_data@
hs_bindgen_9e37a2e39adeaf66 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_9e37a2e39adeaf66 =
  RIP.fromFFIType hs_bindgen_9e37a2e39adeaf66_base

{-# NOINLINE wl_data_device_set_user_data #-}
{-| __C declaration:__ @wl_data_device_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2911:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_data_device) -> (RIP.Ptr RIP.Void) -> IO ())
wl_data_device_set_user_data =
  RIP.unsafePerformIO hs_bindgen_9e37a2e39adeaf66

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_get_user_data@
foreign import ccall unsafe "hs_bindgen_b41e9fc24b1316e3" hs_bindgen_b41e9fc24b1316e3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_get_user_data@
hs_bindgen_b41e9fc24b1316e3 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_b41e9fc24b1316e3 =
  RIP.fromFFIType hs_bindgen_b41e9fc24b1316e3_base

{-# NOINLINE wl_data_device_get_user_data #-}
{-| __C declaration:__ @wl_data_device_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2918:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_data_device) -> IO (RIP.Ptr RIP.Void))
wl_data_device_get_user_data =
  RIP.unsafePerformIO hs_bindgen_b41e9fc24b1316e3

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_get_version@
foreign import ccall unsafe "hs_bindgen_0ea5890c35153d37" hs_bindgen_0ea5890c35153d37_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_get_version@
hs_bindgen_0ea5890c35153d37 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_0ea5890c35153d37 =
  RIP.fromFFIType hs_bindgen_0ea5890c35153d37_base

{-# NOINLINE wl_data_device_get_version #-}
{-| __C declaration:__ @wl_data_device_get_version@

    __defined at:__ @wayland-client-protocol.h 2924:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_get_version :: RIP.FunPtr ((RIP.Ptr Wl_data_device) -> IO HsBindgen.Runtime.LibC.Word32)
wl_data_device_get_version =
  RIP.unsafePerformIO hs_bindgen_0ea5890c35153d37

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_destroy@
foreign import ccall unsafe "hs_bindgen_e1c8f62b37425462" hs_bindgen_e1c8f62b37425462_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_destroy@
hs_bindgen_e1c8f62b37425462 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device) -> IO ()))
hs_bindgen_e1c8f62b37425462 =
  RIP.fromFFIType hs_bindgen_e1c8f62b37425462_base

{-# NOINLINE wl_data_device_destroy #-}
{-| __C declaration:__ @wl_data_device_destroy@

    __defined at:__ @wayland-client-protocol.h 2931:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_destroy :: RIP.FunPtr ((RIP.Ptr Wl_data_device) -> IO ())
wl_data_device_destroy =
  RIP.unsafePerformIO hs_bindgen_e1c8f62b37425462

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_start_drag@
foreign import ccall unsafe "hs_bindgen_1efe563d078710ad" hs_bindgen_1efe563d078710ad_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_start_drag@
hs_bindgen_1efe563d078710ad :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_source) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_1efe563d078710ad =
  RIP.fromFFIType hs_bindgen_1efe563d078710ad_base

{-# NOINLINE wl_data_device_start_drag #-}
{-| __C declaration:__ @wl_data_device_start_drag@

    __defined at:__ @wayland-client-protocol.h 2970:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_start_drag :: RIP.FunPtr ((RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_source) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_data_device_start_drag =
  RIP.unsafePerformIO hs_bindgen_1efe563d078710ad

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_set_selection@
foreign import ccall unsafe "hs_bindgen_d14d66f67ba1bf90" hs_bindgen_d14d66f67ba1bf90_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_set_selection@
hs_bindgen_d14d66f67ba1bf90 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_source) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_d14d66f67ba1bf90 =
  RIP.fromFFIType hs_bindgen_d14d66f67ba1bf90_base

{-# NOINLINE wl_data_device_set_selection #-}
{-| __C declaration:__ @wl_data_device_set_selection@

    __defined at:__ @wayland-client-protocol.h 2989:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_set_selection :: RIP.FunPtr ((RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_source) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_data_device_set_selection =
  RIP.unsafePerformIO hs_bindgen_d14d66f67ba1bf90

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_release@
foreign import ccall unsafe "hs_bindgen_86d3ecda83cdff5b" hs_bindgen_86d3ecda83cdff5b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_release@
hs_bindgen_86d3ecda83cdff5b :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device) -> IO ()))
hs_bindgen_86d3ecda83cdff5b =
  RIP.fromFFIType hs_bindgen_86d3ecda83cdff5b_base

{-# NOINLINE wl_data_device_release #-}
{-| __C declaration:__ @wl_data_device_release@

    __defined at:__ @wayland-client-protocol.h 3001:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_release :: RIP.FunPtr ((RIP.Ptr Wl_data_device) -> IO ())
wl_data_device_release =
  RIP.unsafePerformIO hs_bindgen_86d3ecda83cdff5b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_set_user_data@
foreign import ccall unsafe "hs_bindgen_8a42000c4c76f53f" hs_bindgen_8a42000c4c76f53f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_set_user_data@
hs_bindgen_8a42000c4c76f53f :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_8a42000c4c76f53f =
  RIP.fromFFIType hs_bindgen_8a42000c4c76f53f_base

{-# NOINLINE wl_data_device_manager_set_user_data #-}
{-| __C declaration:__ @wl_data_device_manager_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3072:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> (RIP.Ptr RIP.Void) -> IO ())
wl_data_device_manager_set_user_data =
  RIP.unsafePerformIO hs_bindgen_8a42000c4c76f53f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_get_user_data@
foreign import ccall unsafe "hs_bindgen_106431c0a6f8fe9e" hs_bindgen_106431c0a6f8fe9e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_get_user_data@
hs_bindgen_106431c0a6f8fe9e :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_106431c0a6f8fe9e =
  RIP.fromFFIType hs_bindgen_106431c0a6f8fe9e_base

{-# NOINLINE wl_data_device_manager_get_user_data #-}
{-| __C declaration:__ @wl_data_device_manager_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3079:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> IO (RIP.Ptr RIP.Void))
wl_data_device_manager_get_user_data =
  RIP.unsafePerformIO hs_bindgen_106431c0a6f8fe9e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_get_version@
foreign import ccall unsafe "hs_bindgen_807d9717106ff7e4" hs_bindgen_807d9717106ff7e4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_get_version@
hs_bindgen_807d9717106ff7e4 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_807d9717106ff7e4 =
  RIP.fromFFIType hs_bindgen_807d9717106ff7e4_base

{-# NOINLINE wl_data_device_manager_get_version #-}
{-| __C declaration:__ @wl_data_device_manager_get_version@

    __defined at:__ @wayland-client-protocol.h 3085:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_version :: RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> IO HsBindgen.Runtime.LibC.Word32)
wl_data_device_manager_get_version =
  RIP.unsafePerformIO hs_bindgen_807d9717106ff7e4

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_destroy@
foreign import ccall unsafe "hs_bindgen_9947f050f7222916" hs_bindgen_9947f050f7222916_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_destroy@
hs_bindgen_9947f050f7222916 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> IO ()))
hs_bindgen_9947f050f7222916 =
  RIP.fromFFIType hs_bindgen_9947f050f7222916_base

{-# NOINLINE wl_data_device_manager_destroy #-}
{-| __C declaration:__ @wl_data_device_manager_destroy@

    __defined at:__ @wayland-client-protocol.h 3092:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_destroy :: RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> IO ())
wl_data_device_manager_destroy =
  RIP.unsafePerformIO hs_bindgen_9947f050f7222916

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_create_data_source@
foreign import ccall unsafe "hs_bindgen_9646ca7e8f6d0632" hs_bindgen_9646ca7e8f6d0632_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_create_data_source@
hs_bindgen_9646ca7e8f6d0632 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> IO (RIP.Ptr Wl_data_source)))
hs_bindgen_9646ca7e8f6d0632 =
  RIP.fromFFIType hs_bindgen_9646ca7e8f6d0632_base

{-# NOINLINE wl_data_device_manager_create_data_source #-}
{-| __C declaration:__ @wl_data_device_manager_create_data_source@

    __defined at:__ @wayland-client-protocol.h 3103:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_create_data_source :: RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> IO (RIP.Ptr Wl_data_source))
wl_data_device_manager_create_data_source =
  RIP.unsafePerformIO hs_bindgen_9646ca7e8f6d0632

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_get_data_device@
foreign import ccall unsafe "hs_bindgen_e2d21cf13b1f94b7" hs_bindgen_e2d21cf13b1f94b7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_get_data_device@
hs_bindgen_e2d21cf13b1f94b7 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> (RIP.Ptr Wl_seat) -> IO (RIP.Ptr Wl_data_device)))
hs_bindgen_e2d21cf13b1f94b7 =
  RIP.fromFFIType hs_bindgen_e2d21cf13b1f94b7_base

{-# NOINLINE wl_data_device_manager_get_data_device #-}
{-| __C declaration:__ @wl_data_device_manager_get_data_device@

    __defined at:__ @wayland-client-protocol.h 3119:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_data_device :: RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> (RIP.Ptr Wl_seat) -> IO (RIP.Ptr Wl_data_device))
wl_data_device_manager_get_data_device =
  RIP.unsafePerformIO hs_bindgen_e2d21cf13b1f94b7

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_set_user_data@
foreign import ccall unsafe "hs_bindgen_1bd2c5af47dff31e" hs_bindgen_1bd2c5af47dff31e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_set_user_data@
hs_bindgen_1bd2c5af47dff31e :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_1bd2c5af47dff31e =
  RIP.fromFFIType hs_bindgen_1bd2c5af47dff31e_base

{-# NOINLINE wl_shell_set_user_data #-}
{-| __C declaration:__ @wl_shell_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3149:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_shell) -> (RIP.Ptr RIP.Void) -> IO ())
wl_shell_set_user_data =
  RIP.unsafePerformIO hs_bindgen_1bd2c5af47dff31e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_get_user_data@
foreign import ccall unsafe "hs_bindgen_c8b1b841fe8e5538" hs_bindgen_c8b1b841fe8e5538_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_get_user_data@
hs_bindgen_c8b1b841fe8e5538 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_c8b1b841fe8e5538 =
  RIP.fromFFIType hs_bindgen_c8b1b841fe8e5538_base

{-# NOINLINE wl_shell_get_user_data #-}
{-| __C declaration:__ @wl_shell_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3156:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_shell) -> IO (RIP.Ptr RIP.Void))
wl_shell_get_user_data =
  RIP.unsafePerformIO hs_bindgen_c8b1b841fe8e5538

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_get_version@
foreign import ccall unsafe "hs_bindgen_0675f27316d92566" hs_bindgen_0675f27316d92566_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_get_version@
hs_bindgen_0675f27316d92566 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_0675f27316d92566 =
  RIP.fromFFIType hs_bindgen_0675f27316d92566_base

{-# NOINLINE wl_shell_get_version #-}
{-| __C declaration:__ @wl_shell_get_version@

    __defined at:__ @wayland-client-protocol.h 3162:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_get_version :: RIP.FunPtr ((RIP.Ptr Wl_shell) -> IO HsBindgen.Runtime.LibC.Word32)
wl_shell_get_version =
  RIP.unsafePerformIO hs_bindgen_0675f27316d92566

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_destroy@
foreign import ccall unsafe "hs_bindgen_89085bcfca21f07b" hs_bindgen_89085bcfca21f07b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_destroy@
hs_bindgen_89085bcfca21f07b :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell) -> IO ()))
hs_bindgen_89085bcfca21f07b =
  RIP.fromFFIType hs_bindgen_89085bcfca21f07b_base

{-# NOINLINE wl_shell_destroy #-}
{-| __C declaration:__ @wl_shell_destroy@

    __defined at:__ @wayland-client-protocol.h 3169:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_destroy :: RIP.FunPtr ((RIP.Ptr Wl_shell) -> IO ())
wl_shell_destroy =
  RIP.unsafePerformIO hs_bindgen_89085bcfca21f07b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_get_shell_surface@
foreign import ccall unsafe "hs_bindgen_2204c0f011d95b56" hs_bindgen_2204c0f011d95b56_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_get_shell_surface@
hs_bindgen_2204c0f011d95b56 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell) -> (RIP.Ptr Wl_surface) -> IO (RIP.Ptr Wl_shell_surface)))
hs_bindgen_2204c0f011d95b56 =
  RIP.fromFFIType hs_bindgen_2204c0f011d95b56_base

{-# NOINLINE wl_shell_get_shell_surface #-}
{-| __C declaration:__ @wl_shell_get_shell_surface@

    __defined at:__ @wayland-client-protocol.h 3184:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_get_shell_surface :: RIP.FunPtr ((RIP.Ptr Wl_shell) -> (RIP.Ptr Wl_surface) -> IO (RIP.Ptr Wl_shell_surface))
wl_shell_get_shell_surface =
  RIP.unsafePerformIO hs_bindgen_2204c0f011d95b56

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_add_listener@
foreign import ccall unsafe "hs_bindgen_c0cc136eb057c65e" hs_bindgen_c0cc136eb057c65e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_add_listener@
hs_bindgen_c0cc136eb057c65e :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (PtrConst.PtrConst Wl_shell_surface_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_c0cc136eb057c65e =
  RIP.fromFFIType hs_bindgen_c0cc136eb057c65e_base

{-# NOINLINE wl_shell_surface_add_listener #-}
{-| __C declaration:__ @wl_shell_surface_add_listener@

    __defined at:__ @wayland-client-protocol.h 3351:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (PtrConst.PtrConst Wl_shell_surface_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_shell_surface_add_listener =
  RIP.unsafePerformIO hs_bindgen_c0cc136eb057c65e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_user_data@
foreign import ccall unsafe "hs_bindgen_756f781bcfc2d305" hs_bindgen_756f781bcfc2d305_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_user_data@
hs_bindgen_756f781bcfc2d305 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_756f781bcfc2d305 =
  RIP.fromFFIType hs_bindgen_756f781bcfc2d305_base

{-# NOINLINE wl_shell_surface_set_user_data #-}
{-| __C declaration:__ @wl_shell_surface_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3425:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr RIP.Void) -> IO ())
wl_shell_surface_set_user_data =
  RIP.unsafePerformIO hs_bindgen_756f781bcfc2d305

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_get_user_data@
foreign import ccall unsafe "hs_bindgen_d14ef175257f0f39" hs_bindgen_d14ef175257f0f39_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_get_user_data@
hs_bindgen_d14ef175257f0f39 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_d14ef175257f0f39 =
  RIP.fromFFIType hs_bindgen_d14ef175257f0f39_base

{-# NOINLINE wl_shell_surface_get_user_data #-}
{-| __C declaration:__ @wl_shell_surface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3432:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> IO (RIP.Ptr RIP.Void))
wl_shell_surface_get_user_data =
  RIP.unsafePerformIO hs_bindgen_d14ef175257f0f39

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_get_version@
foreign import ccall unsafe "hs_bindgen_9bf6a96af75852bf" hs_bindgen_9bf6a96af75852bf_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_get_version@
hs_bindgen_9bf6a96af75852bf :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_9bf6a96af75852bf =
  RIP.fromFFIType hs_bindgen_9bf6a96af75852bf_base

{-# NOINLINE wl_shell_surface_get_version #-}
{-| __C declaration:__ @wl_shell_surface_get_version@

    __defined at:__ @wayland-client-protocol.h 3438:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_get_version :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> IO HsBindgen.Runtime.LibC.Word32)
wl_shell_surface_get_version =
  RIP.unsafePerformIO hs_bindgen_9bf6a96af75852bf

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_destroy@
foreign import ccall unsafe "hs_bindgen_ea0e935204d25408" hs_bindgen_ea0e935204d25408_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_destroy@
hs_bindgen_ea0e935204d25408 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> IO ()))
hs_bindgen_ea0e935204d25408 =
  RIP.fromFFIType hs_bindgen_ea0e935204d25408_base

{-# NOINLINE wl_shell_surface_destroy #-}
{-| __C declaration:__ @wl_shell_surface_destroy@

    __defined at:__ @wayland-client-protocol.h 3445:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_destroy :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> IO ())
wl_shell_surface_destroy =
  RIP.unsafePerformIO hs_bindgen_ea0e935204d25408

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_pong@
foreign import ccall unsafe "hs_bindgen_0747d3a54da72128" hs_bindgen_0747d3a54da72128_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_pong@
hs_bindgen_0747d3a54da72128 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_0747d3a54da72128 =
  RIP.fromFFIType hs_bindgen_0747d3a54da72128_base

{-# NOINLINE wl_shell_surface_pong #-}
{-| __C declaration:__ @wl_shell_surface_pong@

    __defined at:__ @wayland-client-protocol.h 3457:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_pong :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_shell_surface_pong =
  RIP.unsafePerformIO hs_bindgen_0747d3a54da72128

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_move@
foreign import ccall unsafe "hs_bindgen_e2fce6aa5294de82" hs_bindgen_e2fce6aa5294de82_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_move@
hs_bindgen_e2fce6aa5294de82 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_e2fce6aa5294de82 =
  RIP.fromFFIType hs_bindgen_e2fce6aa5294de82_base

{-# NOINLINE wl_shell_surface_move #-}
{-| __C declaration:__ @wl_shell_surface_move@

    __defined at:__ @wayland-client-protocol.h 3473:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_move :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_shell_surface_move =
  RIP.unsafePerformIO hs_bindgen_e2fce6aa5294de82

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_resize@
foreign import ccall unsafe "hs_bindgen_d5e1975608e318ad" hs_bindgen_d5e1975608e318ad_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_resize@
hs_bindgen_d5e1975608e318ad :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_d5e1975608e318ad =
  RIP.fromFFIType hs_bindgen_d5e1975608e318ad_base

{-# NOINLINE wl_shell_surface_resize #-}
{-| __C declaration:__ @wl_shell_surface_resize@

    __defined at:__ @wayland-client-protocol.h 3489:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_resize :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_shell_surface_resize =
  RIP.unsafePerformIO hs_bindgen_d5e1975608e318ad

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_toplevel@
foreign import ccall unsafe "hs_bindgen_e1cd40902b0c9795" hs_bindgen_e1cd40902b0c9795_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_toplevel@
hs_bindgen_e1cd40902b0c9795 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> IO ()))
hs_bindgen_e1cd40902b0c9795 =
  RIP.fromFFIType hs_bindgen_e1cd40902b0c9795_base

{-# NOINLINE wl_shell_surface_set_toplevel #-}
{-| __C declaration:__ @wl_shell_surface_set_toplevel@

    __defined at:__ @wayland-client-protocol.h 3503:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_toplevel :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> IO ())
wl_shell_surface_set_toplevel =
  RIP.unsafePerformIO hs_bindgen_e1cd40902b0c9795

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_transient@
foreign import ccall unsafe "hs_bindgen_c370a252d436a853" hs_bindgen_c370a252d436a853_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_transient@
hs_bindgen_c370a252d436a853 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_c370a252d436a853 =
  RIP.fromFFIType hs_bindgen_c370a252d436a853_base

{-# NOINLINE wl_shell_surface_set_transient #-}
{-| __C declaration:__ @wl_shell_surface_set_transient@

    __defined at:__ @wayland-client-protocol.h 3521:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_transient :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_shell_surface_set_transient =
  RIP.unsafePerformIO hs_bindgen_c370a252d436a853

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_fullscreen@
foreign import ccall unsafe "hs_bindgen_865d6fd44f68dc80" hs_bindgen_865d6fd44f68dc80_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_fullscreen@
hs_bindgen_865d6fd44f68dc80 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_output) -> IO ()))
hs_bindgen_865d6fd44f68dc80 =
  RIP.fromFFIType hs_bindgen_865d6fd44f68dc80_base

{-# NOINLINE wl_shell_surface_set_fullscreen #-}
{-| __C declaration:__ @wl_shell_surface_set_fullscreen@

    __defined at:__ @wayland-client-protocol.h 3565:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_fullscreen :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_output) -> IO ())
wl_shell_surface_set_fullscreen =
  RIP.unsafePerformIO hs_bindgen_865d6fd44f68dc80

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_popup@
foreign import ccall unsafe "hs_bindgen_0985d22ed6e45b02" hs_bindgen_0985d22ed6e45b02_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_popup@
hs_bindgen_0985d22ed6e45b02 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_0985d22ed6e45b02 =
  RIP.fromFFIType hs_bindgen_0985d22ed6e45b02_base

{-# NOINLINE wl_shell_surface_set_popup #-}
{-| __C declaration:__ @wl_shell_surface_set_popup@

    __defined at:__ @wayland-client-protocol.h 3595:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_popup :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_shell_surface_set_popup =
  RIP.unsafePerformIO hs_bindgen_0985d22ed6e45b02

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_maximized@
foreign import ccall unsafe "hs_bindgen_9434822db3f78ec0" hs_bindgen_9434822db3f78ec0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_maximized@
hs_bindgen_9434822db3f78ec0 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr Wl_output) -> IO ()))
hs_bindgen_9434822db3f78ec0 =
  RIP.fromFFIType hs_bindgen_9434822db3f78ec0_base

{-# NOINLINE wl_shell_surface_set_maximized #-}
{-| __C declaration:__ @wl_shell_surface_set_maximized@

    __defined at:__ @wayland-client-protocol.h 3624:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_maximized :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr Wl_output) -> IO ())
wl_shell_surface_set_maximized =
  RIP.unsafePerformIO hs_bindgen_9434822db3f78ec0

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_title@
foreign import ccall unsafe "hs_bindgen_d57388eb64e0e675" hs_bindgen_d57388eb64e0e675_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_title@
hs_bindgen_d57388eb64e0e675 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_d57388eb64e0e675 =
  RIP.fromFFIType hs_bindgen_d57388eb64e0e675_base

{-# NOINLINE wl_shell_surface_set_title #-}
{-| __C declaration:__ @wl_shell_surface_set_title@

    __defined at:__ @wayland-client-protocol.h 3642:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_title :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
wl_shell_surface_set_title =
  RIP.unsafePerformIO hs_bindgen_d57388eb64e0e675

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_class@
foreign import ccall unsafe "hs_bindgen_6c20e67d26614dce" hs_bindgen_6c20e67d26614dce_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_set_class@
hs_bindgen_6c20e67d26614dce :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_6c20e67d26614dce =
  RIP.fromFFIType hs_bindgen_6c20e67d26614dce_base

{-# NOINLINE wl_shell_surface_set_class #-}
{-| __C declaration:__ @wl_shell_surface_set_class@

    __defined at:__ @wayland-client-protocol.h 3659:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_class :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
wl_shell_surface_set_class =
  RIP.unsafePerformIO hs_bindgen_6c20e67d26614dce

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_add_listener@
foreign import ccall unsafe "hs_bindgen_4649e542793acc0e" hs_bindgen_4649e542793acc0e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_add_listener@
hs_bindgen_4649e542793acc0e :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> (PtrConst.PtrConst Wl_surface_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_4649e542793acc0e =
  RIP.fromFFIType hs_bindgen_4649e542793acc0e_base

{-# NOINLINE wl_surface_add_listener #-}
{-| __C declaration:__ @wl_surface_add_listener@

    __defined at:__ @wayland-client-protocol.h 3780:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> (PtrConst.PtrConst Wl_surface_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_surface_add_listener =
  RIP.unsafePerformIO hs_bindgen_4649e542793acc0e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_set_user_data@
foreign import ccall unsafe "hs_bindgen_82dc33522e0cb6f7" hs_bindgen_82dc33522e0cb6f7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_set_user_data@
hs_bindgen_82dc33522e0cb6f7 :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_82dc33522e0cb6f7 =
  RIP.fromFFIType hs_bindgen_82dc33522e0cb6f7_base

{-# NOINLINE wl_surface_set_user_data #-}
{-| __C declaration:__ @wl_surface_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3863:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> (RIP.Ptr RIP.Void) -> IO ())
wl_surface_set_user_data =
  RIP.unsafePerformIO hs_bindgen_82dc33522e0cb6f7

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_get_user_data@
foreign import ccall unsafe "hs_bindgen_90f649f273f15ffc" hs_bindgen_90f649f273f15ffc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_get_user_data@
hs_bindgen_90f649f273f15ffc :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_90f649f273f15ffc =
  RIP.fromFFIType hs_bindgen_90f649f273f15ffc_base

{-# NOINLINE wl_surface_get_user_data #-}
{-| __C declaration:__ @wl_surface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3870:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> IO (RIP.Ptr RIP.Void))
wl_surface_get_user_data =
  RIP.unsafePerformIO hs_bindgen_90f649f273f15ffc

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_get_version@
foreign import ccall unsafe "hs_bindgen_8c652d532cb1dbac" hs_bindgen_8c652d532cb1dbac_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_get_version@
hs_bindgen_8c652d532cb1dbac :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_8c652d532cb1dbac =
  RIP.fromFFIType hs_bindgen_8c652d532cb1dbac_base

{-# NOINLINE wl_surface_get_version #-}
{-| __C declaration:__ @wl_surface_get_version@

    __defined at:__ @wayland-client-protocol.h 3876:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_get_version :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> IO HsBindgen.Runtime.LibC.Word32)
wl_surface_get_version =
  RIP.unsafePerformIO hs_bindgen_8c652d532cb1dbac

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_destroy@
foreign import ccall unsafe "hs_bindgen_7a08f6ee8cb0ccf2" hs_bindgen_7a08f6ee8cb0ccf2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_destroy@
hs_bindgen_7a08f6ee8cb0ccf2 :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> IO ()))
hs_bindgen_7a08f6ee8cb0ccf2 =
  RIP.fromFFIType hs_bindgen_7a08f6ee8cb0ccf2_base

{-# NOINLINE wl_surface_destroy #-}
{-| __C declaration:__ @wl_surface_destroy@

    __defined at:__ @wayland-client-protocol.h 3887:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_destroy :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> IO ())
wl_surface_destroy =
  RIP.unsafePerformIO hs_bindgen_7a08f6ee8cb0ccf2

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_attach@
foreign import ccall unsafe "hs_bindgen_4d14669f8ebc48af" hs_bindgen_4d14669f8ebc48af_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_attach@
hs_bindgen_4d14669f8ebc48af :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_buffer) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_4d14669f8ebc48af =
  RIP.fromFFIType hs_bindgen_4d14669f8ebc48af_base

{-# NOINLINE wl_surface_attach #-}
{-| __C declaration:__ @wl_surface_attach@

    __defined at:__ @wayland-client-protocol.h 3963:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_attach :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_buffer) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_surface_attach =
  RIP.unsafePerformIO hs_bindgen_4d14669f8ebc48af

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_damage@
foreign import ccall unsafe "hs_bindgen_1b45352bccefc718" hs_bindgen_1b45352bccefc718_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_damage@
hs_bindgen_1b45352bccefc718 :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_1b45352bccefc718 =
  RIP.fromFFIType hs_bindgen_1b45352bccefc718_base

{-# NOINLINE wl_surface_damage #-}
{-| __C declaration:__ @wl_surface_damage@

    __defined at:__ @wayland-client-protocol.h 3995:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_damage :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_surface_damage =
  RIP.unsafePerformIO hs_bindgen_1b45352bccefc718

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_frame@
foreign import ccall unsafe "hs_bindgen_7a6644d8b5c7e05c" hs_bindgen_7a6644d8b5c7e05c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_frame@
hs_bindgen_7a6644d8b5c7e05c :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> IO (RIP.Ptr Wl_callback)))
hs_bindgen_7a6644d8b5c7e05c =
  RIP.fromFFIType hs_bindgen_7a6644d8b5c7e05c_base

{-# NOINLINE wl_surface_frame #-}
{-| __C declaration:__ @wl_surface_frame@

    __defined at:__ @wayland-client-protocol.h 4038:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_frame :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> IO (RIP.Ptr Wl_callback))
wl_surface_frame =
  RIP.unsafePerformIO hs_bindgen_7a6644d8b5c7e05c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_set_opaque_region@
foreign import ccall unsafe "hs_bindgen_f0fe03fb6468ac36" hs_bindgen_f0fe03fb6468ac36_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_set_opaque_region@
hs_bindgen_f0fe03fb6468ac36 :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_region) -> IO ()))
hs_bindgen_f0fe03fb6468ac36 =
  RIP.fromFFIType hs_bindgen_f0fe03fb6468ac36_base

{-# NOINLINE wl_surface_set_opaque_region #-}
{-| __C declaration:__ @wl_surface_set_opaque_region@

    __defined at:__ @wayland-client-protocol.h 4077:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_set_opaque_region :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_region) -> IO ())
wl_surface_set_opaque_region =
  RIP.unsafePerformIO hs_bindgen_f0fe03fb6468ac36

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_set_input_region@
foreign import ccall unsafe "hs_bindgen_f71ae81671bb0faf" hs_bindgen_f71ae81671bb0faf_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_set_input_region@
hs_bindgen_f71ae81671bb0faf :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_region) -> IO ()))
hs_bindgen_f71ae81671bb0faf =
  RIP.fromFFIType hs_bindgen_f71ae81671bb0faf_base

{-# NOINLINE wl_surface_set_input_region #-}
{-| __C declaration:__ @wl_surface_set_input_region@

    __defined at:__ @wayland-client-protocol.h 4110:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_set_input_region :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_region) -> IO ())
wl_surface_set_input_region =
  RIP.unsafePerformIO hs_bindgen_f71ae81671bb0faf

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_commit@
foreign import ccall unsafe "hs_bindgen_7717b58e9e7c7a0c" hs_bindgen_7717b58e9e7c7a0c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_commit@
hs_bindgen_7717b58e9e7c7a0c :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> IO ()))
hs_bindgen_7717b58e9e7c7a0c =
  RIP.fromFFIType hs_bindgen_7717b58e9e7c7a0c_base

{-# NOINLINE wl_surface_commit #-}
{-| __C declaration:__ @wl_surface_commit@

    __defined at:__ @wayland-client-protocol.h 4140:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_commit :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> IO ())
wl_surface_commit =
  RIP.unsafePerformIO hs_bindgen_7717b58e9e7c7a0c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_set_buffer_transform@
foreign import ccall unsafe "hs_bindgen_288b14c8865dedd0" hs_bindgen_288b14c8865dedd0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_set_buffer_transform@
hs_bindgen_288b14c8865dedd0 :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_288b14c8865dedd0 =
  RIP.fromFFIType hs_bindgen_288b14c8865dedd0_base

{-# NOINLINE wl_surface_set_buffer_transform #-}
{-| __C declaration:__ @wl_surface_set_buffer_transform@

    __defined at:__ @wayland-client-protocol.h 4182:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_set_buffer_transform :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_surface_set_buffer_transform =
  RIP.unsafePerformIO hs_bindgen_288b14c8865dedd0

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_set_buffer_scale@
foreign import ccall unsafe "hs_bindgen_70a590b90312c3b8" hs_bindgen_70a590b90312c3b8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_set_buffer_scale@
hs_bindgen_70a590b90312c3b8 :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_70a590b90312c3b8 =
  RIP.fromFFIType hs_bindgen_70a590b90312c3b8_base

{-# NOINLINE wl_surface_set_buffer_scale #-}
{-| __C declaration:__ @wl_surface_set_buffer_scale@

    __defined at:__ @wayland-client-protocol.h 4216:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_set_buffer_scale :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_surface_set_buffer_scale =
  RIP.unsafePerformIO hs_bindgen_70a590b90312c3b8

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_damage_buffer@
foreign import ccall unsafe "hs_bindgen_c91687a027e4e3ca" hs_bindgen_c91687a027e4e3ca_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_damage_buffer@
hs_bindgen_c91687a027e4e3ca :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_c91687a027e4e3ca =
  RIP.fromFFIType hs_bindgen_c91687a027e4e3ca_base

{-# NOINLINE wl_surface_damage_buffer #-}
{-| __C declaration:__ @wl_surface_damage_buffer@

    __defined at:__ @wayland-client-protocol.h 4259:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_damage_buffer :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_surface_damage_buffer =
  RIP.unsafePerformIO hs_bindgen_c91687a027e4e3ca

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_offset@
foreign import ccall unsafe "hs_bindgen_08818df266274aea" hs_bindgen_08818df266274aea_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_offset@
hs_bindgen_08818df266274aea :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_08818df266274aea =
  RIP.fromFFIType hs_bindgen_08818df266274aea_base

{-# NOINLINE wl_surface_offset #-}
{-| __C declaration:__ @wl_surface_offset@

    __defined at:__ @wayland-client-protocol.h 4285:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_offset :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_surface_offset =
  RIP.unsafePerformIO hs_bindgen_08818df266274aea

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_add_listener@
foreign import ccall unsafe "hs_bindgen_0aa3b46bacd02b6b" hs_bindgen_0aa3b46bacd02b6b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_add_listener@
hs_bindgen_0aa3b46bacd02b6b :: IO (RIP.FunPtr ((RIP.Ptr Wl_seat) -> (PtrConst.PtrConst Wl_seat_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_0aa3b46bacd02b6b =
  RIP.fromFFIType hs_bindgen_0aa3b46bacd02b6b_base

{-# NOINLINE wl_seat_add_listener #-}
{-| __C declaration:__ @wl_seat_add_listener@

    __defined at:__ @wayland-client-protocol.h 4406:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_seat) -> (PtrConst.PtrConst Wl_seat_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_seat_add_listener =
  RIP.unsafePerformIO hs_bindgen_0aa3b46bacd02b6b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_set_user_data@
foreign import ccall unsafe "hs_bindgen_d126f0ef741c43d6" hs_bindgen_d126f0ef741c43d6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_set_user_data@
hs_bindgen_d126f0ef741c43d6 :: IO (RIP.FunPtr ((RIP.Ptr Wl_seat) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_d126f0ef741c43d6 =
  RIP.fromFFIType hs_bindgen_d126f0ef741c43d6_base

{-# NOINLINE wl_seat_set_user_data #-}
{-| __C declaration:__ @wl_seat_set_user_data@

    __defined at:__ @wayland-client-protocol.h 4446:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_seat) -> (RIP.Ptr RIP.Void) -> IO ())
wl_seat_set_user_data =
  RIP.unsafePerformIO hs_bindgen_d126f0ef741c43d6

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_get_user_data@
foreign import ccall unsafe "hs_bindgen_202465f99c998954" hs_bindgen_202465f99c998954_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_get_user_data@
hs_bindgen_202465f99c998954 :: IO (RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_202465f99c998954 =
  RIP.fromFFIType hs_bindgen_202465f99c998954_base

{-# NOINLINE wl_seat_get_user_data #-}
{-| __C declaration:__ @wl_seat_get_user_data@

    __defined at:__ @wayland-client-protocol.h 4453:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO (RIP.Ptr RIP.Void))
wl_seat_get_user_data =
  RIP.unsafePerformIO hs_bindgen_202465f99c998954

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_get_version@
foreign import ccall unsafe "hs_bindgen_c38dc493bde2fa4f" hs_bindgen_c38dc493bde2fa4f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_get_version@
hs_bindgen_c38dc493bde2fa4f :: IO (RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_c38dc493bde2fa4f =
  RIP.fromFFIType hs_bindgen_c38dc493bde2fa4f_base

{-# NOINLINE wl_seat_get_version #-}
{-| __C declaration:__ @wl_seat_get_version@

    __defined at:__ @wayland-client-protocol.h 4459:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_version :: RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO HsBindgen.Runtime.LibC.Word32)
wl_seat_get_version =
  RIP.unsafePerformIO hs_bindgen_c38dc493bde2fa4f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_destroy@
foreign import ccall unsafe "hs_bindgen_fa7565f03c24df63" hs_bindgen_fa7565f03c24df63_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_destroy@
hs_bindgen_fa7565f03c24df63 :: IO (RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO ()))
hs_bindgen_fa7565f03c24df63 =
  RIP.fromFFIType hs_bindgen_fa7565f03c24df63_base

{-# NOINLINE wl_seat_destroy #-}
{-| __C declaration:__ @wl_seat_destroy@

    __defined at:__ @wayland-client-protocol.h 4466:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_destroy :: RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO ())
wl_seat_destroy =
  RIP.unsafePerformIO hs_bindgen_fa7565f03c24df63

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_get_pointer@
foreign import ccall unsafe "hs_bindgen_5b1820a379bfd0d6" hs_bindgen_5b1820a379bfd0d6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_get_pointer@
hs_bindgen_5b1820a379bfd0d6 :: IO (RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO (RIP.Ptr Wl_pointer)))
hs_bindgen_5b1820a379bfd0d6 =
  RIP.fromFFIType hs_bindgen_5b1820a379bfd0d6_base

{-# NOINLINE wl_seat_get_pointer #-}
{-| __C declaration:__ @wl_seat_get_pointer@

    __defined at:__ @wayland-client-protocol.h 4484:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_pointer :: RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO (RIP.Ptr Wl_pointer))
wl_seat_get_pointer =
  RIP.unsafePerformIO hs_bindgen_5b1820a379bfd0d6

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_get_keyboard@
foreign import ccall unsafe "hs_bindgen_0f480283ebc2e165" hs_bindgen_0f480283ebc2e165_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_get_keyboard@
hs_bindgen_0f480283ebc2e165 :: IO (RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO (RIP.Ptr Wl_keyboard)))
hs_bindgen_0f480283ebc2e165 =
  RIP.fromFFIType hs_bindgen_0f480283ebc2e165_base

{-# NOINLINE wl_seat_get_keyboard #-}
{-| __C declaration:__ @wl_seat_get_keyboard@

    __defined at:__ @wayland-client-protocol.h 4507:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_keyboard :: RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO (RIP.Ptr Wl_keyboard))
wl_seat_get_keyboard =
  RIP.unsafePerformIO hs_bindgen_0f480283ebc2e165

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_get_touch@
foreign import ccall unsafe "hs_bindgen_4e7d1e50cba0633a" hs_bindgen_4e7d1e50cba0633a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_get_touch@
hs_bindgen_4e7d1e50cba0633a :: IO (RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO (RIP.Ptr Wl_touch)))
hs_bindgen_4e7d1e50cba0633a =
  RIP.fromFFIType hs_bindgen_4e7d1e50cba0633a_base

{-# NOINLINE wl_seat_get_touch #-}
{-| __C declaration:__ @wl_seat_get_touch@

    __defined at:__ @wayland-client-protocol.h 4530:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_touch :: RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO (RIP.Ptr Wl_touch))
wl_seat_get_touch =
  RIP.unsafePerformIO hs_bindgen_4e7d1e50cba0633a

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_release@
foreign import ccall unsafe "hs_bindgen_2fef45b991e98512" hs_bindgen_2fef45b991e98512_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_release@
hs_bindgen_2fef45b991e98512 :: IO (RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO ()))
hs_bindgen_2fef45b991e98512 =
  RIP.fromFFIType hs_bindgen_2fef45b991e98512_base

{-# NOINLINE wl_seat_release #-}
{-| __C declaration:__ @wl_seat_release@

    __defined at:__ @wayland-client-protocol.h 4547:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_release :: RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO ())
wl_seat_release =
  RIP.unsafePerformIO hs_bindgen_2fef45b991e98512

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_add_listener@
foreign import ccall unsafe "hs_bindgen_325e50065992479a" hs_bindgen_325e50065992479a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_add_listener@
hs_bindgen_325e50065992479a :: IO (RIP.FunPtr ((RIP.Ptr Wl_pointer) -> (PtrConst.PtrConst Wl_pointer_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_325e50065992479a =
  RIP.fromFFIType hs_bindgen_325e50065992479a_base

{-# NOINLINE wl_pointer_add_listener #-}
{-| __C declaration:__ @wl_pointer_add_listener@

    __defined at:__ @wayland-client-protocol.h 5010:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_pointer) -> (PtrConst.PtrConst Wl_pointer_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_pointer_add_listener =
  RIP.unsafePerformIO hs_bindgen_325e50065992479a

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_set_user_data@
foreign import ccall unsafe "hs_bindgen_0bc2048b8d9ad040" hs_bindgen_0bc2048b8d9ad040_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_set_user_data@
hs_bindgen_0bc2048b8d9ad040 :: IO (RIP.FunPtr ((RIP.Ptr Wl_pointer) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_0bc2048b8d9ad040 =
  RIP.fromFFIType hs_bindgen_0bc2048b8d9ad040_base

{-# NOINLINE wl_pointer_set_user_data #-}
{-| __C declaration:__ @wl_pointer_set_user_data@

    __defined at:__ @wayland-client-protocol.h 5076:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_pointer) -> (RIP.Ptr RIP.Void) -> IO ())
wl_pointer_set_user_data =
  RIP.unsafePerformIO hs_bindgen_0bc2048b8d9ad040

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_get_user_data@
foreign import ccall unsafe "hs_bindgen_6a1e93fa3bbc5914" hs_bindgen_6a1e93fa3bbc5914_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_get_user_data@
hs_bindgen_6a1e93fa3bbc5914 :: IO (RIP.FunPtr ((RIP.Ptr Wl_pointer) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_6a1e93fa3bbc5914 =
  RIP.fromFFIType hs_bindgen_6a1e93fa3bbc5914_base

{-# NOINLINE wl_pointer_get_user_data #-}
{-| __C declaration:__ @wl_pointer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5083:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_pointer) -> IO (RIP.Ptr RIP.Void))
wl_pointer_get_user_data =
  RIP.unsafePerformIO hs_bindgen_6a1e93fa3bbc5914

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_get_version@
foreign import ccall unsafe "hs_bindgen_be4e5985d459d812" hs_bindgen_be4e5985d459d812_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_get_version@
hs_bindgen_be4e5985d459d812 :: IO (RIP.FunPtr ((RIP.Ptr Wl_pointer) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_be4e5985d459d812 =
  RIP.fromFFIType hs_bindgen_be4e5985d459d812_base

{-# NOINLINE wl_pointer_get_version #-}
{-| __C declaration:__ @wl_pointer_get_version@

    __defined at:__ @wayland-client-protocol.h 5089:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_get_version :: RIP.FunPtr ((RIP.Ptr Wl_pointer) -> IO HsBindgen.Runtime.LibC.Word32)
wl_pointer_get_version =
  RIP.unsafePerformIO hs_bindgen_be4e5985d459d812

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_destroy@
foreign import ccall unsafe "hs_bindgen_a02d36142fca0fcb" hs_bindgen_a02d36142fca0fcb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_destroy@
hs_bindgen_a02d36142fca0fcb :: IO (RIP.FunPtr ((RIP.Ptr Wl_pointer) -> IO ()))
hs_bindgen_a02d36142fca0fcb =
  RIP.fromFFIType hs_bindgen_a02d36142fca0fcb_base

{-# NOINLINE wl_pointer_destroy #-}
{-| __C declaration:__ @wl_pointer_destroy@

    __defined at:__ @wayland-client-protocol.h 5096:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_destroy :: RIP.FunPtr ((RIP.Ptr Wl_pointer) -> IO ())
wl_pointer_destroy =
  RIP.unsafePerformIO hs_bindgen_a02d36142fca0fcb

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_set_cursor@
foreign import ccall unsafe "hs_bindgen_96b881d775c1dcb1" hs_bindgen_96b881d775c1dcb1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_set_cursor@
hs_bindgen_96b881d775c1dcb1 :: IO (RIP.FunPtr ((RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_96b881d775c1dcb1 =
  RIP.fromFFIType hs_bindgen_96b881d775c1dcb1_base

{-# NOINLINE wl_pointer_set_cursor #-}
{-| __C declaration:__ @wl_pointer_set_cursor@

    __defined at:__ @wayland-client-protocol.h 5139:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_set_cursor :: RIP.FunPtr ((RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_pointer_set_cursor =
  RIP.unsafePerformIO hs_bindgen_96b881d775c1dcb1

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_release@
foreign import ccall unsafe "hs_bindgen_8d0e00c4d484ec11" hs_bindgen_8d0e00c4d484ec11_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_release@
hs_bindgen_8d0e00c4d484ec11 :: IO (RIP.FunPtr ((RIP.Ptr Wl_pointer) -> IO ()))
hs_bindgen_8d0e00c4d484ec11 =
  RIP.fromFFIType hs_bindgen_8d0e00c4d484ec11_base

{-# NOINLINE wl_pointer_release #-}
{-| __C declaration:__ @wl_pointer_release@

    __defined at:__ @wayland-client-protocol.h 5155:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_release :: RIP.FunPtr ((RIP.Ptr Wl_pointer) -> IO ())
wl_pointer_release =
  RIP.unsafePerformIO hs_bindgen_8d0e00c4d484ec11

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_keyboard_add_listener@
foreign import ccall unsafe "hs_bindgen_72bbae67cba64140" hs_bindgen_72bbae67cba64140_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_keyboard_add_listener@
hs_bindgen_72bbae67cba64140 :: IO (RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> (PtrConst.PtrConst Wl_keyboard_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_72bbae67cba64140 =
  RIP.fromFFIType hs_bindgen_72bbae67cba64140_base

{-# NOINLINE wl_keyboard_add_listener #-}
{-| __C declaration:__ @wl_keyboard_add_listener@

    __defined at:__ @wayland-client-protocol.h 5385:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> (PtrConst.PtrConst Wl_keyboard_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_keyboard_add_listener =
  RIP.unsafePerformIO hs_bindgen_72bbae67cba64140

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_keyboard_set_user_data@
foreign import ccall unsafe "hs_bindgen_7ea1e7005ae67cce" hs_bindgen_7ea1e7005ae67cce_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_keyboard_set_user_data@
hs_bindgen_7ea1e7005ae67cce :: IO (RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_7ea1e7005ae67cce =
  RIP.fromFFIType hs_bindgen_7ea1e7005ae67cce_base

{-# NOINLINE wl_keyboard_set_user_data #-}
{-| __C declaration:__ @wl_keyboard_set_user_data@

    __defined at:__ @wayland-client-protocol.h 5426:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> (RIP.Ptr RIP.Void) -> IO ())
wl_keyboard_set_user_data =
  RIP.unsafePerformIO hs_bindgen_7ea1e7005ae67cce

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_keyboard_get_user_data@
foreign import ccall unsafe "hs_bindgen_8dd56d3e34c505e7" hs_bindgen_8dd56d3e34c505e7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_keyboard_get_user_data@
hs_bindgen_8dd56d3e34c505e7 :: IO (RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_8dd56d3e34c505e7 =
  RIP.fromFFIType hs_bindgen_8dd56d3e34c505e7_base

{-# NOINLINE wl_keyboard_get_user_data #-}
{-| __C declaration:__ @wl_keyboard_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5433:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> IO (RIP.Ptr RIP.Void))
wl_keyboard_get_user_data =
  RIP.unsafePerformIO hs_bindgen_8dd56d3e34c505e7

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_keyboard_get_version@
foreign import ccall unsafe "hs_bindgen_19af65e80f54c795" hs_bindgen_19af65e80f54c795_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_keyboard_get_version@
hs_bindgen_19af65e80f54c795 :: IO (RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_19af65e80f54c795 =
  RIP.fromFFIType hs_bindgen_19af65e80f54c795_base

{-# NOINLINE wl_keyboard_get_version #-}
{-| __C declaration:__ @wl_keyboard_get_version@

    __defined at:__ @wayland-client-protocol.h 5439:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_get_version :: RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> IO HsBindgen.Runtime.LibC.Word32)
wl_keyboard_get_version =
  RIP.unsafePerformIO hs_bindgen_19af65e80f54c795

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_keyboard_destroy@
foreign import ccall unsafe "hs_bindgen_5c6112eefc744657" hs_bindgen_5c6112eefc744657_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_keyboard_destroy@
hs_bindgen_5c6112eefc744657 :: IO (RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> IO ()))
hs_bindgen_5c6112eefc744657 =
  RIP.fromFFIType hs_bindgen_5c6112eefc744657_base

{-# NOINLINE wl_keyboard_destroy #-}
{-| __C declaration:__ @wl_keyboard_destroy@

    __defined at:__ @wayland-client-protocol.h 5446:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_destroy :: RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> IO ())
wl_keyboard_destroy =
  RIP.unsafePerformIO hs_bindgen_5c6112eefc744657

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_keyboard_release@
foreign import ccall unsafe "hs_bindgen_3801ccf9c8a452cd" hs_bindgen_3801ccf9c8a452cd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_keyboard_release@
hs_bindgen_3801ccf9c8a452cd :: IO (RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> IO ()))
hs_bindgen_3801ccf9c8a452cd =
  RIP.fromFFIType hs_bindgen_3801ccf9c8a452cd_base

{-# NOINLINE wl_keyboard_release #-}
{-| __C declaration:__ @wl_keyboard_release@

    __defined at:__ @wayland-client-protocol.h 5455:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_release :: RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> IO ())
wl_keyboard_release =
  RIP.unsafePerformIO hs_bindgen_3801ccf9c8a452cd

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_touch_add_listener@
foreign import ccall unsafe "hs_bindgen_d8940290639664b0" hs_bindgen_d8940290639664b0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_touch_add_listener@
hs_bindgen_d8940290639664b0 :: IO (RIP.FunPtr ((RIP.Ptr Wl_touch) -> (PtrConst.PtrConst Wl_touch_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_d8940290639664b0 =
  RIP.fromFFIType hs_bindgen_d8940290639664b0_base

{-# NOINLINE wl_touch_add_listener #-}
{-| __C declaration:__ @wl_touch_add_listener@

    __defined at:__ @wayland-client-protocol.h 5625:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_touch) -> (PtrConst.PtrConst Wl_touch_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_touch_add_listener =
  RIP.unsafePerformIO hs_bindgen_d8940290639664b0

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_touch_set_user_data@
foreign import ccall unsafe "hs_bindgen_6d4299d5c3c57a03" hs_bindgen_6d4299d5c3c57a03_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_touch_set_user_data@
hs_bindgen_6d4299d5c3c57a03 :: IO (RIP.FunPtr ((RIP.Ptr Wl_touch) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_6d4299d5c3c57a03 =
  RIP.fromFFIType hs_bindgen_6d4299d5c3c57a03_base

{-# NOINLINE wl_touch_set_user_data #-}
{-| __C declaration:__ @wl_touch_set_user_data@

    __defined at:__ @wayland-client-protocol.h 5670:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_touch) -> (RIP.Ptr RIP.Void) -> IO ())
wl_touch_set_user_data =
  RIP.unsafePerformIO hs_bindgen_6d4299d5c3c57a03

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_touch_get_user_data@
foreign import ccall unsafe "hs_bindgen_05d1a86ab21662c1" hs_bindgen_05d1a86ab21662c1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_touch_get_user_data@
hs_bindgen_05d1a86ab21662c1 :: IO (RIP.FunPtr ((RIP.Ptr Wl_touch) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_05d1a86ab21662c1 =
  RIP.fromFFIType hs_bindgen_05d1a86ab21662c1_base

{-# NOINLINE wl_touch_get_user_data #-}
{-| __C declaration:__ @wl_touch_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5677:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_touch) -> IO (RIP.Ptr RIP.Void))
wl_touch_get_user_data =
  RIP.unsafePerformIO hs_bindgen_05d1a86ab21662c1

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_touch_get_version@
foreign import ccall unsafe "hs_bindgen_d688a3b7aa22e953" hs_bindgen_d688a3b7aa22e953_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_touch_get_version@
hs_bindgen_d688a3b7aa22e953 :: IO (RIP.FunPtr ((RIP.Ptr Wl_touch) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_d688a3b7aa22e953 =
  RIP.fromFFIType hs_bindgen_d688a3b7aa22e953_base

{-# NOINLINE wl_touch_get_version #-}
{-| __C declaration:__ @wl_touch_get_version@

    __defined at:__ @wayland-client-protocol.h 5683:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_get_version :: RIP.FunPtr ((RIP.Ptr Wl_touch) -> IO HsBindgen.Runtime.LibC.Word32)
wl_touch_get_version =
  RIP.unsafePerformIO hs_bindgen_d688a3b7aa22e953

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_touch_destroy@
foreign import ccall unsafe "hs_bindgen_f3e7140ffc576834" hs_bindgen_f3e7140ffc576834_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_touch_destroy@
hs_bindgen_f3e7140ffc576834 :: IO (RIP.FunPtr ((RIP.Ptr Wl_touch) -> IO ()))
hs_bindgen_f3e7140ffc576834 =
  RIP.fromFFIType hs_bindgen_f3e7140ffc576834_base

{-# NOINLINE wl_touch_destroy #-}
{-| __C declaration:__ @wl_touch_destroy@

    __defined at:__ @wayland-client-protocol.h 5690:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_destroy :: RIP.FunPtr ((RIP.Ptr Wl_touch) -> IO ())
wl_touch_destroy =
  RIP.unsafePerformIO hs_bindgen_f3e7140ffc576834

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_touch_release@
foreign import ccall unsafe "hs_bindgen_63242a544adab61e" hs_bindgen_63242a544adab61e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_touch_release@
hs_bindgen_63242a544adab61e :: IO (RIP.FunPtr ((RIP.Ptr Wl_touch) -> IO ()))
hs_bindgen_63242a544adab61e =
  RIP.fromFFIType hs_bindgen_63242a544adab61e_base

{-# NOINLINE wl_touch_release #-}
{-| __C declaration:__ @wl_touch_release@

    __defined at:__ @wayland-client-protocol.h 5699:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_release :: RIP.FunPtr ((RIP.Ptr Wl_touch) -> IO ())
wl_touch_release =
  RIP.unsafePerformIO hs_bindgen_63242a544adab61e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_output_add_listener@
foreign import ccall unsafe "hs_bindgen_d8bba5a05d5ef2ff" hs_bindgen_d8bba5a05d5ef2ff_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_output_add_listener@
hs_bindgen_d8bba5a05d5ef2ff :: IO (RIP.FunPtr ((RIP.Ptr Wl_output) -> (PtrConst.PtrConst Wl_output_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_d8bba5a05d5ef2ff =
  RIP.fromFFIType hs_bindgen_d8bba5a05d5ef2ff_base

{-# NOINLINE wl_output_add_listener #-}
{-| __C declaration:__ @wl_output_add_listener@

    __defined at:__ @wayland-client-protocol.h 6018:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_output) -> (PtrConst.PtrConst Wl_output_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_output_add_listener =
  RIP.unsafePerformIO hs_bindgen_d8bba5a05d5ef2ff

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_output_set_user_data@
foreign import ccall unsafe "hs_bindgen_7388a25b98bccbd5" hs_bindgen_7388a25b98bccbd5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_output_set_user_data@
hs_bindgen_7388a25b98bccbd5 :: IO (RIP.FunPtr ((RIP.Ptr Wl_output) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_7388a25b98bccbd5 =
  RIP.fromFFIType hs_bindgen_7388a25b98bccbd5_base

{-# NOINLINE wl_output_set_user_data #-}
{-| __C declaration:__ @wl_output_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6059:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_output) -> (RIP.Ptr RIP.Void) -> IO ())
wl_output_set_user_data =
  RIP.unsafePerformIO hs_bindgen_7388a25b98bccbd5

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_output_get_user_data@
foreign import ccall unsafe "hs_bindgen_fa487b67bc04b8d6" hs_bindgen_fa487b67bc04b8d6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_output_get_user_data@
hs_bindgen_fa487b67bc04b8d6 :: IO (RIP.FunPtr ((RIP.Ptr Wl_output) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_fa487b67bc04b8d6 =
  RIP.fromFFIType hs_bindgen_fa487b67bc04b8d6_base

{-# NOINLINE wl_output_get_user_data #-}
{-| __C declaration:__ @wl_output_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6066:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_output) -> IO (RIP.Ptr RIP.Void))
wl_output_get_user_data =
  RIP.unsafePerformIO hs_bindgen_fa487b67bc04b8d6

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_output_get_version@
foreign import ccall unsafe "hs_bindgen_b4bbc65f8eb64c6b" hs_bindgen_b4bbc65f8eb64c6b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_output_get_version@
hs_bindgen_b4bbc65f8eb64c6b :: IO (RIP.FunPtr ((RIP.Ptr Wl_output) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_b4bbc65f8eb64c6b =
  RIP.fromFFIType hs_bindgen_b4bbc65f8eb64c6b_base

{-# NOINLINE wl_output_get_version #-}
{-| __C declaration:__ @wl_output_get_version@

    __defined at:__ @wayland-client-protocol.h 6072:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_get_version :: RIP.FunPtr ((RIP.Ptr Wl_output) -> IO HsBindgen.Runtime.LibC.Word32)
wl_output_get_version =
  RIP.unsafePerformIO hs_bindgen_b4bbc65f8eb64c6b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_output_destroy@
foreign import ccall unsafe "hs_bindgen_509ce5bd780e9c4f" hs_bindgen_509ce5bd780e9c4f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_output_destroy@
hs_bindgen_509ce5bd780e9c4f :: IO (RIP.FunPtr ((RIP.Ptr Wl_output) -> IO ()))
hs_bindgen_509ce5bd780e9c4f =
  RIP.fromFFIType hs_bindgen_509ce5bd780e9c4f_base

{-# NOINLINE wl_output_destroy #-}
{-| __C declaration:__ @wl_output_destroy@

    __defined at:__ @wayland-client-protocol.h 6079:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_destroy :: RIP.FunPtr ((RIP.Ptr Wl_output) -> IO ())
wl_output_destroy =
  RIP.unsafePerformIO hs_bindgen_509ce5bd780e9c4f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_output_release@
foreign import ccall unsafe "hs_bindgen_e8fc201e99e667c6" hs_bindgen_e8fc201e99e667c6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_output_release@
hs_bindgen_e8fc201e99e667c6 :: IO (RIP.FunPtr ((RIP.Ptr Wl_output) -> IO ()))
hs_bindgen_e8fc201e99e667c6 =
  RIP.fromFFIType hs_bindgen_e8fc201e99e667c6_base

{-# NOINLINE wl_output_release #-}
{-| __C declaration:__ @wl_output_release@

    __defined at:__ @wayland-client-protocol.h 6091:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_release :: RIP.FunPtr ((RIP.Ptr Wl_output) -> IO ())
wl_output_release =
  RIP.unsafePerformIO hs_bindgen_e8fc201e99e667c6

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_region_set_user_data@
foreign import ccall unsafe "hs_bindgen_f9a589e31a7b0fab" hs_bindgen_f9a589e31a7b0fab_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_region_set_user_data@
hs_bindgen_f9a589e31a7b0fab :: IO (RIP.FunPtr ((RIP.Ptr Wl_region) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_f9a589e31a7b0fab =
  RIP.fromFFIType hs_bindgen_f9a589e31a7b0fab_base

{-# NOINLINE wl_region_set_user_data #-}
{-| __C declaration:__ @wl_region_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6117:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_region) -> (RIP.Ptr RIP.Void) -> IO ())
wl_region_set_user_data =
  RIP.unsafePerformIO hs_bindgen_f9a589e31a7b0fab

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_region_get_user_data@
foreign import ccall unsafe "hs_bindgen_6b54946d787d7149" hs_bindgen_6b54946d787d7149_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_region_get_user_data@
hs_bindgen_6b54946d787d7149 :: IO (RIP.FunPtr ((RIP.Ptr Wl_region) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_6b54946d787d7149 =
  RIP.fromFFIType hs_bindgen_6b54946d787d7149_base

{-# NOINLINE wl_region_get_user_data #-}
{-| __C declaration:__ @wl_region_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6124:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_region) -> IO (RIP.Ptr RIP.Void))
wl_region_get_user_data =
  RIP.unsafePerformIO hs_bindgen_6b54946d787d7149

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_region_get_version@
foreign import ccall unsafe "hs_bindgen_7c0c30e1d593f11d" hs_bindgen_7c0c30e1d593f11d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_region_get_version@
hs_bindgen_7c0c30e1d593f11d :: IO (RIP.FunPtr ((RIP.Ptr Wl_region) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_7c0c30e1d593f11d =
  RIP.fromFFIType hs_bindgen_7c0c30e1d593f11d_base

{-# NOINLINE wl_region_get_version #-}
{-| __C declaration:__ @wl_region_get_version@

    __defined at:__ @wayland-client-protocol.h 6130:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_get_version :: RIP.FunPtr ((RIP.Ptr Wl_region) -> IO HsBindgen.Runtime.LibC.Word32)
wl_region_get_version =
  RIP.unsafePerformIO hs_bindgen_7c0c30e1d593f11d

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_region_destroy@
foreign import ccall unsafe "hs_bindgen_fab9a917af721a4e" hs_bindgen_fab9a917af721a4e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_region_destroy@
hs_bindgen_fab9a917af721a4e :: IO (RIP.FunPtr ((RIP.Ptr Wl_region) -> IO ()))
hs_bindgen_fab9a917af721a4e =
  RIP.fromFFIType hs_bindgen_fab9a917af721a4e_base

{-# NOINLINE wl_region_destroy #-}
{-| __C declaration:__ @wl_region_destroy@

    __defined at:__ @wayland-client-protocol.h 6141:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_destroy :: RIP.FunPtr ((RIP.Ptr Wl_region) -> IO ())
wl_region_destroy =
  RIP.unsafePerformIO hs_bindgen_fab9a917af721a4e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_region_add@
foreign import ccall unsafe "hs_bindgen_7e6ae138e8284a57" hs_bindgen_7e6ae138e8284a57_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_region_add@
hs_bindgen_7e6ae138e8284a57 :: IO (RIP.FunPtr ((RIP.Ptr Wl_region) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_7e6ae138e8284a57 =
  RIP.fromFFIType hs_bindgen_7e6ae138e8284a57_base

{-# NOINLINE wl_region_add #-}
{-| __C declaration:__ @wl_region_add@

    __defined at:__ @wayland-client-protocol.h 6153:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_add :: RIP.FunPtr ((RIP.Ptr Wl_region) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_region_add =
  RIP.unsafePerformIO hs_bindgen_7e6ae138e8284a57

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_region_subtract@
foreign import ccall unsafe "hs_bindgen_a0882dfd72bd509c" hs_bindgen_a0882dfd72bd509c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_region_subtract@
hs_bindgen_a0882dfd72bd509c :: IO (RIP.FunPtr ((RIP.Ptr Wl_region) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_a0882dfd72bd509c =
  RIP.fromFFIType hs_bindgen_a0882dfd72bd509c_base

{-# NOINLINE wl_region_subtract #-}
{-| __C declaration:__ @wl_region_subtract@

    __defined at:__ @wayland-client-protocol.h 6165:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_subtract :: RIP.FunPtr ((RIP.Ptr Wl_region) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_region_subtract =
  RIP.unsafePerformIO hs_bindgen_a0882dfd72bd509c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subcompositor_set_user_data@
foreign import ccall unsafe "hs_bindgen_0358c9d3eed5cfc4" hs_bindgen_0358c9d3eed5cfc4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subcompositor_set_user_data@
hs_bindgen_0358c9d3eed5cfc4 :: IO (RIP.FunPtr ((RIP.Ptr Wl_subcompositor) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_0358c9d3eed5cfc4 =
  RIP.fromFFIType hs_bindgen_0358c9d3eed5cfc4_base

{-# NOINLINE wl_subcompositor_set_user_data #-}
{-| __C declaration:__ @wl_subcompositor_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6200:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_subcompositor) -> (RIP.Ptr RIP.Void) -> IO ())
wl_subcompositor_set_user_data =
  RIP.unsafePerformIO hs_bindgen_0358c9d3eed5cfc4

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subcompositor_get_user_data@
foreign import ccall unsafe "hs_bindgen_65cee6421422231d" hs_bindgen_65cee6421422231d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subcompositor_get_user_data@
hs_bindgen_65cee6421422231d :: IO (RIP.FunPtr ((RIP.Ptr Wl_subcompositor) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_65cee6421422231d =
  RIP.fromFFIType hs_bindgen_65cee6421422231d_base

{-# NOINLINE wl_subcompositor_get_user_data #-}
{-| __C declaration:__ @wl_subcompositor_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6207:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_subcompositor) -> IO (RIP.Ptr RIP.Void))
wl_subcompositor_get_user_data =
  RIP.unsafePerformIO hs_bindgen_65cee6421422231d

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subcompositor_get_version@
foreign import ccall unsafe "hs_bindgen_d15a8b5109cf3cb2" hs_bindgen_d15a8b5109cf3cb2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subcompositor_get_version@
hs_bindgen_d15a8b5109cf3cb2 :: IO (RIP.FunPtr ((RIP.Ptr Wl_subcompositor) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_d15a8b5109cf3cb2 =
  RIP.fromFFIType hs_bindgen_d15a8b5109cf3cb2_base

{-# NOINLINE wl_subcompositor_get_version #-}
{-| __C declaration:__ @wl_subcompositor_get_version@

    __defined at:__ @wayland-client-protocol.h 6213:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_version :: RIP.FunPtr ((RIP.Ptr Wl_subcompositor) -> IO HsBindgen.Runtime.LibC.Word32)
wl_subcompositor_get_version =
  RIP.unsafePerformIO hs_bindgen_d15a8b5109cf3cb2

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subcompositor_destroy@
foreign import ccall unsafe "hs_bindgen_50cc99b831ec1820" hs_bindgen_50cc99b831ec1820_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subcompositor_destroy@
hs_bindgen_50cc99b831ec1820 :: IO (RIP.FunPtr ((RIP.Ptr Wl_subcompositor) -> IO ()))
hs_bindgen_50cc99b831ec1820 =
  RIP.fromFFIType hs_bindgen_50cc99b831ec1820_base

{-# NOINLINE wl_subcompositor_destroy #-}
{-| __C declaration:__ @wl_subcompositor_destroy@

    __defined at:__ @wayland-client-protocol.h 6226:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_destroy :: RIP.FunPtr ((RIP.Ptr Wl_subcompositor) -> IO ())
wl_subcompositor_destroy =
  RIP.unsafePerformIO hs_bindgen_50cc99b831ec1820

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subcompositor_get_subsurface@
foreign import ccall unsafe "hs_bindgen_721d719c8b7e95f0" hs_bindgen_721d719c8b7e95f0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subcompositor_get_subsurface@
hs_bindgen_721d719c8b7e95f0 :: IO (RIP.FunPtr ((RIP.Ptr Wl_subcompositor) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_surface) -> IO (RIP.Ptr Wl_subsurface)))
hs_bindgen_721d719c8b7e95f0 =
  RIP.fromFFIType hs_bindgen_721d719c8b7e95f0_base

{-# NOINLINE wl_subcompositor_get_subsurface #-}
{-| __C declaration:__ @wl_subcompositor_get_subsurface@

    __defined at:__ @wayland-client-protocol.h 6256:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_subsurface :: RIP.FunPtr ((RIP.Ptr Wl_subcompositor) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_surface) -> IO (RIP.Ptr Wl_subsurface))
wl_subcompositor_get_subsurface =
  RIP.unsafePerformIO hs_bindgen_721d719c8b7e95f0

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_user_data@
foreign import ccall unsafe "hs_bindgen_891cbd08c15748c5" hs_bindgen_891cbd08c15748c5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_user_data@
hs_bindgen_891cbd08c15748c5 :: IO (RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_891cbd08c15748c5 =
  RIP.fromFFIType hs_bindgen_891cbd08c15748c5_base

{-# NOINLINE wl_subsurface_set_user_data #-}
{-| __C declaration:__ @wl_subsurface_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6311:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> (RIP.Ptr RIP.Void) -> IO ())
wl_subsurface_set_user_data =
  RIP.unsafePerformIO hs_bindgen_891cbd08c15748c5

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_get_user_data@
foreign import ccall unsafe "hs_bindgen_852943a3bcd56fba" hs_bindgen_852943a3bcd56fba_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_get_user_data@
hs_bindgen_852943a3bcd56fba :: IO (RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_852943a3bcd56fba =
  RIP.fromFFIType hs_bindgen_852943a3bcd56fba_base

{-# NOINLINE wl_subsurface_get_user_data #-}
{-| __C declaration:__ @wl_subsurface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6318:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> IO (RIP.Ptr RIP.Void))
wl_subsurface_get_user_data =
  RIP.unsafePerformIO hs_bindgen_852943a3bcd56fba

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_get_version@
foreign import ccall unsafe "hs_bindgen_637de8bab83c4ff9" hs_bindgen_637de8bab83c4ff9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_get_version@
hs_bindgen_637de8bab83c4ff9 :: IO (RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_637de8bab83c4ff9 =
  RIP.fromFFIType hs_bindgen_637de8bab83c4ff9_base

{-# NOINLINE wl_subsurface_get_version #-}
{-| __C declaration:__ @wl_subsurface_get_version@

    __defined at:__ @wayland-client-protocol.h 6324:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_get_version :: RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> IO HsBindgen.Runtime.LibC.Word32)
wl_subsurface_get_version =
  RIP.unsafePerformIO hs_bindgen_637de8bab83c4ff9

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_destroy@
foreign import ccall unsafe "hs_bindgen_285d8cb7f457f48a" hs_bindgen_285d8cb7f457f48a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_destroy@
hs_bindgen_285d8cb7f457f48a :: IO (RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> IO ()))
hs_bindgen_285d8cb7f457f48a =
  RIP.fromFFIType hs_bindgen_285d8cb7f457f48a_base

{-# NOINLINE wl_subsurface_destroy #-}
{-| __C declaration:__ @wl_subsurface_destroy@

    __defined at:__ @wayland-client-protocol.h 6338:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_destroy :: RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> IO ())
wl_subsurface_destroy =
  RIP.unsafePerformIO hs_bindgen_285d8cb7f457f48a

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_position@
foreign import ccall unsafe "hs_bindgen_102dc00c2d7aeb51" hs_bindgen_102dc00c2d7aeb51_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_position@
hs_bindgen_102dc00c2d7aeb51 :: IO (RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_102dc00c2d7aeb51 =
  RIP.fromFFIType hs_bindgen_102dc00c2d7aeb51_base

{-# NOINLINE wl_subsurface_set_position #-}
{-| __C declaration:__ @wl_subsurface_set_position@

    __defined at:__ @wayland-client-protocol.h 6363:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_position :: RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_subsurface_set_position =
  RIP.unsafePerformIO hs_bindgen_102dc00c2d7aeb51

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_place_above@
foreign import ccall unsafe "hs_bindgen_98b7472b3cbff5cb" hs_bindgen_98b7472b3cbff5cb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_place_above@
hs_bindgen_98b7472b3cbff5cb :: IO (RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> (RIP.Ptr Wl_surface) -> IO ()))
hs_bindgen_98b7472b3cbff5cb =
  RIP.fromFFIType hs_bindgen_98b7472b3cbff5cb_base

{-# NOINLINE wl_subsurface_place_above #-}
{-| __C declaration:__ @wl_subsurface_place_above@

    __defined at:__ @wayland-client-protocol.h 6387:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_place_above :: RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> (RIP.Ptr Wl_surface) -> IO ())
wl_subsurface_place_above =
  RIP.unsafePerformIO hs_bindgen_98b7472b3cbff5cb

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_place_below@
foreign import ccall unsafe "hs_bindgen_c991eed8bdf8e9f2" hs_bindgen_c991eed8bdf8e9f2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_place_below@
hs_bindgen_c991eed8bdf8e9f2 :: IO (RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> (RIP.Ptr Wl_surface) -> IO ()))
hs_bindgen_c991eed8bdf8e9f2 =
  RIP.fromFFIType hs_bindgen_c991eed8bdf8e9f2_base

{-# NOINLINE wl_subsurface_place_below #-}
{-| __C declaration:__ @wl_subsurface_place_below@

    __defined at:__ @wayland-client-protocol.h 6400:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_place_below :: RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> (RIP.Ptr Wl_surface) -> IO ())
wl_subsurface_place_below =
  RIP.unsafePerformIO hs_bindgen_c991eed8bdf8e9f2

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_sync@
foreign import ccall unsafe "hs_bindgen_d375f22a47587e74" hs_bindgen_d375f22a47587e74_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_sync@
hs_bindgen_d375f22a47587e74 :: IO (RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> IO ()))
hs_bindgen_d375f22a47587e74 =
  RIP.fromFFIType hs_bindgen_d375f22a47587e74_base

{-# NOINLINE wl_subsurface_set_sync #-}
{-| __C declaration:__ @wl_subsurface_set_sync@

    __defined at:__ @wayland-client-protocol.h 6424:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_sync :: RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> IO ())
wl_subsurface_set_sync =
  RIP.unsafePerformIO hs_bindgen_d375f22a47587e74

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_desync@
foreign import ccall unsafe "hs_bindgen_ceeeeb298f18b447" hs_bindgen_ceeeeb298f18b447_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_set_desync@
hs_bindgen_ceeeeb298f18b447 :: IO (RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> IO ()))
hs_bindgen_ceeeeb298f18b447 =
  RIP.fromFFIType hs_bindgen_ceeeeb298f18b447_base

{-# NOINLINE wl_subsurface_set_desync #-}
{-| __C declaration:__ @wl_subsurface_set_desync@

    __defined at:__ @wayland-client-protocol.h 6454:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_desync :: RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> IO ())
wl_subsurface_set_desync =
  RIP.unsafePerformIO hs_bindgen_ceeeeb298f18b447

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_fixes_set_user_data@
foreign import ccall unsafe "hs_bindgen_397ba687d6fad98f" hs_bindgen_397ba687d6fad98f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_fixes_set_user_data@
hs_bindgen_397ba687d6fad98f :: IO (RIP.FunPtr ((RIP.Ptr Wl_fixes) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_397ba687d6fad98f =
  RIP.fromFFIType hs_bindgen_397ba687d6fad98f_base

{-# NOINLINE wl_fixes_set_user_data #-}
{-| __C declaration:__ @wl_fixes_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6475:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_fixes) -> (RIP.Ptr RIP.Void) -> IO ())
wl_fixes_set_user_data =
  RIP.unsafePerformIO hs_bindgen_397ba687d6fad98f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_fixes_get_user_data@
foreign import ccall unsafe "hs_bindgen_ea17dd6cf0d68a2f" hs_bindgen_ea17dd6cf0d68a2f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_fixes_get_user_data@
hs_bindgen_ea17dd6cf0d68a2f :: IO (RIP.FunPtr ((RIP.Ptr Wl_fixes) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_ea17dd6cf0d68a2f =
  RIP.fromFFIType hs_bindgen_ea17dd6cf0d68a2f_base

{-# NOINLINE wl_fixes_get_user_data #-}
{-| __C declaration:__ @wl_fixes_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6482:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_fixes) -> IO (RIP.Ptr RIP.Void))
wl_fixes_get_user_data =
  RIP.unsafePerformIO hs_bindgen_ea17dd6cf0d68a2f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_fixes_get_version@
foreign import ccall unsafe "hs_bindgen_689f1bd4679b615b" hs_bindgen_689f1bd4679b615b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_fixes_get_version@
hs_bindgen_689f1bd4679b615b :: IO (RIP.FunPtr ((RIP.Ptr Wl_fixes) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_689f1bd4679b615b =
  RIP.fromFFIType hs_bindgen_689f1bd4679b615b_base

{-# NOINLINE wl_fixes_get_version #-}
{-| __C declaration:__ @wl_fixes_get_version@

    __defined at:__ @wayland-client-protocol.h 6488:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_get_version :: RIP.FunPtr ((RIP.Ptr Wl_fixes) -> IO HsBindgen.Runtime.LibC.Word32)
wl_fixes_get_version =
  RIP.unsafePerformIO hs_bindgen_689f1bd4679b615b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_fixes_destroy@
foreign import ccall unsafe "hs_bindgen_aaf4341b0bc9ffc9" hs_bindgen_aaf4341b0bc9ffc9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_fixes_destroy@
hs_bindgen_aaf4341b0bc9ffc9 :: IO (RIP.FunPtr ((RIP.Ptr Wl_fixes) -> IO ()))
hs_bindgen_aaf4341b0bc9ffc9 =
  RIP.fromFFIType hs_bindgen_aaf4341b0bc9ffc9_base

{-# NOINLINE wl_fixes_destroy #-}
{-| __C declaration:__ @wl_fixes_destroy@

    __defined at:__ @wayland-client-protocol.h 6497:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_destroy :: RIP.FunPtr ((RIP.Ptr Wl_fixes) -> IO ())
wl_fixes_destroy =
  RIP.unsafePerformIO hs_bindgen_aaf4341b0bc9ffc9

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_fixes_destroy_registry@
foreign import ccall unsafe "hs_bindgen_69a84e1e409f632a" hs_bindgen_69a84e1e409f632a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_fixes_destroy_registry@
hs_bindgen_69a84e1e409f632a :: IO (RIP.FunPtr ((RIP.Ptr Wl_fixes) -> (RIP.Ptr Wl_registry) -> IO ()))
hs_bindgen_69a84e1e409f632a =
  RIP.fromFFIType hs_bindgen_69a84e1e409f632a_base

{-# NOINLINE wl_fixes_destroy_registry #-}
{-| __C declaration:__ @wl_fixes_destroy_registry@

    __defined at:__ @wayland-client-protocol.h 6517:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_destroy_registry :: RIP.FunPtr ((RIP.Ptr Wl_fixes) -> (RIP.Ptr Wl_registry) -> IO ())
wl_fixes_destroy_registry =
  RIP.unsafePerformIO hs_bindgen_69a84e1e409f632a
