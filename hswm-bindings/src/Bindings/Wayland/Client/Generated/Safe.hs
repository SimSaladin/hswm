{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.Client.Generated.Safe
    ( Bindings.Wayland.Client.Generated.Safe.wl_event_queue_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_marshal_array_flags
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_marshal_array
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_create
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_create_wrapper
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_wrapper_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_marshal_array_constructor
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_marshal_array_constructor_versioned
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_add_listener
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_get_listener
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_add_dispatcher
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_get_id
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_set_tag
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_get_tag
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_get_class
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_get_interface
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_get_display
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_set_queue
    , Bindings.Wayland.Client.Generated.Safe.wl_proxy_get_queue
    , Bindings.Wayland.Client.Generated.Safe.wl_event_queue_get_name
    , Bindings.Wayland.Client.Generated.Safe.wl_display_connect
    , Bindings.Wayland.Client.Generated.Safe.wl_display_connect_to_fd
    , Bindings.Wayland.Client.Generated.Safe.wl_display_disconnect
    , Bindings.Wayland.Client.Generated.Safe.wl_display_get_fd
    , Bindings.Wayland.Client.Generated.Safe.wl_display_dispatch
    , Bindings.Wayland.Client.Generated.Safe.wl_display_dispatch_queue
    , Bindings.Wayland.Client.Generated.Safe.wl_display_dispatch_timeout
    , Bindings.Wayland.Client.Generated.Safe.wl_display_dispatch_queue_timeout
    , Bindings.Wayland.Client.Generated.Safe.wl_display_dispatch_queue_pending
    , Bindings.Wayland.Client.Generated.Safe.wl_display_dispatch_pending
    , Bindings.Wayland.Client.Generated.Safe.wl_display_get_error
    , Bindings.Wayland.Client.Generated.Safe.wl_display_get_protocol_error
    , Bindings.Wayland.Client.Generated.Safe.wl_display_flush
    , Bindings.Wayland.Client.Generated.Safe.wl_display_roundtrip_queue
    , Bindings.Wayland.Client.Generated.Safe.wl_display_roundtrip
    , Bindings.Wayland.Client.Generated.Safe.wl_display_create_queue
    , Bindings.Wayland.Client.Generated.Safe.wl_display_create_queue_with_name
    , Bindings.Wayland.Client.Generated.Safe.wl_display_prepare_read_queue
    , Bindings.Wayland.Client.Generated.Safe.wl_display_prepare_read
    , Bindings.Wayland.Client.Generated.Safe.wl_display_cancel_read
    , Bindings.Wayland.Client.Generated.Safe.wl_display_read_events
    , Bindings.Wayland.Client.Generated.Safe.wl_display_set_max_buffer_size
    , Bindings.Wayland.Client.Generated.Safe.wl_display_add_listener
    , Bindings.Wayland.Client.Generated.Safe.wl_display_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_display_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_display_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_display_sync
    , Bindings.Wayland.Client.Generated.Safe.wl_display_get_registry
    , Bindings.Wayland.Client.Generated.Safe.wl_registry_add_listener
    , Bindings.Wayland.Client.Generated.Safe.wl_registry_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_registry_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_registry_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_registry_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_registry_bind
    , Bindings.Wayland.Client.Generated.Safe.wl_callback_add_listener
    , Bindings.Wayland.Client.Generated.Safe.wl_callback_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_callback_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_callback_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_callback_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_compositor_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_compositor_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_compositor_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_compositor_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_compositor_create_surface
    , Bindings.Wayland.Client.Generated.Safe.wl_compositor_create_region
    , Bindings.Wayland.Client.Generated.Safe.wl_shm_pool_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_shm_pool_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_shm_pool_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_shm_pool_create_buffer
    , Bindings.Wayland.Client.Generated.Safe.wl_shm_pool_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_shm_pool_resize
    , Bindings.Wayland.Client.Generated.Safe.wl_shm_add_listener
    , Bindings.Wayland.Client.Generated.Safe.wl_shm_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_shm_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_shm_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_shm_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_shm_create_pool
    , Bindings.Wayland.Client.Generated.Safe.wl_shm_release
    , Bindings.Wayland.Client.Generated.Safe.wl_buffer_add_listener
    , Bindings.Wayland.Client.Generated.Safe.wl_buffer_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_buffer_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_buffer_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_buffer_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_data_offer_add_listener
    , Bindings.Wayland.Client.Generated.Safe.wl_data_offer_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_data_offer_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_data_offer_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_data_offer_accept
    , Bindings.Wayland.Client.Generated.Safe.wl_data_offer_receive
    , Bindings.Wayland.Client.Generated.Safe.wl_data_offer_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_data_offer_finish
    , Bindings.Wayland.Client.Generated.Safe.wl_data_offer_set_actions
    , Bindings.Wayland.Client.Generated.Safe.wl_data_source_add_listener
    , Bindings.Wayland.Client.Generated.Safe.wl_data_source_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_data_source_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_data_source_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_data_source_offer
    , Bindings.Wayland.Client.Generated.Safe.wl_data_source_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_data_source_set_actions
    , Bindings.Wayland.Client.Generated.Safe.wl_data_device_add_listener
    , Bindings.Wayland.Client.Generated.Safe.wl_data_device_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_data_device_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_data_device_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_data_device_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_data_device_start_drag
    , Bindings.Wayland.Client.Generated.Safe.wl_data_device_set_selection
    , Bindings.Wayland.Client.Generated.Safe.wl_data_device_release
    , Bindings.Wayland.Client.Generated.Safe.wl_data_device_manager_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_data_device_manager_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_data_device_manager_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_data_device_manager_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_data_device_manager_create_data_source
    , Bindings.Wayland.Client.Generated.Safe.wl_data_device_manager_get_data_device
    , Bindings.Wayland.Client.Generated.Safe.wl_shell_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_shell_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_shell_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_shell_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_shell_get_shell_surface
    , Bindings.Wayland.Client.Generated.Safe.wl_shell_surface_add_listener
    , Bindings.Wayland.Client.Generated.Safe.wl_shell_surface_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_shell_surface_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_shell_surface_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_shell_surface_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_shell_surface_pong
    , Bindings.Wayland.Client.Generated.Safe.wl_shell_surface_move
    , Bindings.Wayland.Client.Generated.Safe.wl_shell_surface_resize
    , Bindings.Wayland.Client.Generated.Safe.wl_shell_surface_set_toplevel
    , Bindings.Wayland.Client.Generated.Safe.wl_shell_surface_set_transient
    , Bindings.Wayland.Client.Generated.Safe.wl_shell_surface_set_fullscreen
    , Bindings.Wayland.Client.Generated.Safe.wl_shell_surface_set_popup
    , Bindings.Wayland.Client.Generated.Safe.wl_shell_surface_set_maximized
    , Bindings.Wayland.Client.Generated.Safe.wl_shell_surface_set_title
    , Bindings.Wayland.Client.Generated.Safe.wl_shell_surface_set_class
    , Bindings.Wayland.Client.Generated.Safe.wl_surface_add_listener
    , Bindings.Wayland.Client.Generated.Safe.wl_surface_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_surface_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_surface_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_surface_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_surface_attach
    , Bindings.Wayland.Client.Generated.Safe.wl_surface_damage
    , Bindings.Wayland.Client.Generated.Safe.wl_surface_frame
    , Bindings.Wayland.Client.Generated.Safe.wl_surface_set_opaque_region
    , Bindings.Wayland.Client.Generated.Safe.wl_surface_set_input_region
    , Bindings.Wayland.Client.Generated.Safe.wl_surface_commit
    , Bindings.Wayland.Client.Generated.Safe.wl_surface_set_buffer_transform
    , Bindings.Wayland.Client.Generated.Safe.wl_surface_set_buffer_scale
    , Bindings.Wayland.Client.Generated.Safe.wl_surface_damage_buffer
    , Bindings.Wayland.Client.Generated.Safe.wl_surface_offset
    , Bindings.Wayland.Client.Generated.Safe.wl_seat_add_listener
    , Bindings.Wayland.Client.Generated.Safe.wl_seat_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_seat_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_seat_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_seat_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_seat_get_pointer
    , Bindings.Wayland.Client.Generated.Safe.wl_seat_get_keyboard
    , Bindings.Wayland.Client.Generated.Safe.wl_seat_get_touch
    , Bindings.Wayland.Client.Generated.Safe.wl_seat_release
    , Bindings.Wayland.Client.Generated.Safe.wl_pointer_add_listener
    , Bindings.Wayland.Client.Generated.Safe.wl_pointer_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_pointer_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_pointer_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_pointer_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_pointer_set_cursor
    , Bindings.Wayland.Client.Generated.Safe.wl_pointer_release
    , Bindings.Wayland.Client.Generated.Safe.wl_keyboard_add_listener
    , Bindings.Wayland.Client.Generated.Safe.wl_keyboard_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_keyboard_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_keyboard_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_keyboard_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_keyboard_release
    , Bindings.Wayland.Client.Generated.Safe.wl_touch_add_listener
    , Bindings.Wayland.Client.Generated.Safe.wl_touch_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_touch_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_touch_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_touch_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_touch_release
    , Bindings.Wayland.Client.Generated.Safe.wl_output_add_listener
    , Bindings.Wayland.Client.Generated.Safe.wl_output_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_output_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_output_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_output_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_output_release
    , Bindings.Wayland.Client.Generated.Safe.wl_region_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_region_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_region_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_region_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_region_add
    , Bindings.Wayland.Client.Generated.Safe.wl_region_subtract
    , Bindings.Wayland.Client.Generated.Safe.wl_subcompositor_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_subcompositor_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_subcompositor_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_subcompositor_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_subcompositor_get_subsurface
    , Bindings.Wayland.Client.Generated.Safe.wl_subsurface_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_subsurface_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_subsurface_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_subsurface_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_subsurface_set_position
    , Bindings.Wayland.Client.Generated.Safe.wl_subsurface_place_above
    , Bindings.Wayland.Client.Generated.Safe.wl_subsurface_place_below
    , Bindings.Wayland.Client.Generated.Safe.wl_subsurface_set_sync
    , Bindings.Wayland.Client.Generated.Safe.wl_subsurface_set_desync
    , Bindings.Wayland.Client.Generated.Safe.wl_fixes_set_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_fixes_get_user_data
    , Bindings.Wayland.Client.Generated.Safe.wl_fixes_get_version
    , Bindings.Wayland.Client.Generated.Safe.wl_fixes_destroy
    , Bindings.Wayland.Client.Generated.Safe.wl_fixes_destroy_registry
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
  , "void hs_bindgen_5dfb8d65eb4cda1f ("
  , "  struct wl_event_queue *arg1"
  , ")"
  , "{"
  , "  (wl_event_queue_destroy)(arg1);"
  , "}"
  , "struct wl_proxy *hs_bindgen_a92dea01101775a0 ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_interface const *arg3,"
  , "  uint32_t arg4,"
  , "  uint32_t arg5,"
  , "  union wl_argument *arg6"
  , ")"
  , "{"
  , "  return (wl_proxy_marshal_array_flags)(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "void hs_bindgen_da7c2598731036c7 ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  union wl_argument *arg3"
  , ")"
  , "{"
  , "  (wl_proxy_marshal_array)(arg1, arg2, arg3);"
  , "}"
  , "struct wl_proxy *hs_bindgen_ea6dc6bb1ed192d7 ("
  , "  struct wl_proxy *arg1,"
  , "  struct wl_interface const *arg2"
  , ")"
  , "{"
  , "  return (wl_proxy_create)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_85701f676dbca379 ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_create_wrapper)(arg1);"
  , "}"
  , "void hs_bindgen_596e8060468914d0 ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  (wl_proxy_wrapper_destroy)(arg1);"
  , "}"
  , "struct wl_proxy *hs_bindgen_b0fa8b968c8f0acb ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  union wl_argument *arg3,"
  , "  struct wl_interface const *arg4"
  , ")"
  , "{"
  , "  return (wl_proxy_marshal_array_constructor)(arg1, arg2, arg3, arg4);"
  , "}"
  , "struct wl_proxy *hs_bindgen_43ebdcb89aaf2464 ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  union wl_argument *arg3,"
  , "  struct wl_interface const *arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  return (wl_proxy_marshal_array_constructor_versioned)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_7fdde303c65b3145 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  (wl_proxy_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_e2a379af3db7c19b ("
  , "  struct wl_proxy *arg1,"
  , "  void (**arg2) (void),"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_proxy_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void const *hs_bindgen_3b2df94eebf88b6b ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_listener)(arg1);"
  , "}"
  , "signed int hs_bindgen_3443ae83c581cc31 ("
  , "  struct wl_proxy *arg1,"
  , "  wl_dispatcher_func_t arg2,"
  , "  void const *arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (wl_proxy_add_dispatcher)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_53bbf5585247d91c ("
  , "  struct wl_proxy *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_proxy_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_c9ea9e53a28ee550 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_79b2f1f43d9f56a8 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_version)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_60f2e22067c4f24a ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_id)(arg1);"
  , "}"
  , "void hs_bindgen_1f55debeb10c2324 ("
  , "  struct wl_proxy *arg1,"
  , "  char const *const *arg2"
  , ")"
  , "{"
  , "  (wl_proxy_set_tag)(arg1, arg2);"
  , "}"
  , "char const *const *hs_bindgen_74fbbfb5d0212584 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_tag)(arg1);"
  , "}"
  , "char const *hs_bindgen_9e7884520de5a609 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_class)(arg1);"
  , "}"
  , "struct wl_interface const *hs_bindgen_b12b208751b123b7 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_interface)(arg1);"
  , "}"
  , "struct wl_display *hs_bindgen_19e29ec485a4673b ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_display)(arg1);"
  , "}"
  , "void hs_bindgen_b9daeb9683a63e69 ("
  , "  struct wl_proxy *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  (wl_proxy_set_queue)(arg1, arg2);"
  , "}"
  , "struct wl_event_queue *hs_bindgen_0b99a023eae3958e ("
  , "  struct wl_proxy const *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_queue)(arg1);"
  , "}"
  , "char const *hs_bindgen_8f0f7cab89a3eeb4 ("
  , "  struct wl_event_queue const *arg1"
  , ")"
  , "{"
  , "  return (wl_event_queue_get_name)(arg1);"
  , "}"
  , "struct wl_display *hs_bindgen_bb42064bf6c5a0e3 ("
  , "  char const *arg1"
  , ")"
  , "{"
  , "  return (wl_display_connect)(arg1);"
  , "}"
  , "struct wl_display *hs_bindgen_240ef2b6cfbb8b90 ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return (wl_display_connect_to_fd)(arg1);"
  , "}"
  , "void hs_bindgen_224b0bbc0877e5c6 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  (wl_display_disconnect)(arg1);"
  , "}"
  , "signed int hs_bindgen_d9913c6c48bcd7d2 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_fd)(arg1);"
  , "}"
  , "signed int hs_bindgen_6ccadd758747fe82 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_dispatch)(arg1);"
  , "}"
  , "signed int hs_bindgen_d8094b8790b36611 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_queue)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_a8978634afcd1a30 ("
  , "  struct wl_display *arg1,"
  , "  struct timespec const *arg2"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_timeout)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_ef1eb26bb7204ad0 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2,"
  , "  struct timespec const *arg3"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_queue_timeout)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_1b469acbe08193d2 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_queue_pending)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_4e48e5ca48f802f8 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_pending)(arg1);"
  , "}"
  , "signed int hs_bindgen_d01c67c2a753901e ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_error)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_7f9e1ca7f0a5d421 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_interface const **arg2,"
  , "  uint32_t *arg3"
  , ")"
  , "{"
  , "  return (wl_display_get_protocol_error)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_bfdbc6edb813a282 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_flush)(arg1);"
  , "}"
  , "signed int hs_bindgen_01733d21fb13b898 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_roundtrip_queue)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_516b260dc3da7e30 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_roundtrip)(arg1);"
  , "}"
  , "struct wl_event_queue *hs_bindgen_72548357b08504d2 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_create_queue)(arg1);"
  , "}"
  , "struct wl_event_queue *hs_bindgen_a9c9e43f7026e4e8 ("
  , "  struct wl_display *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return (wl_display_create_queue_with_name)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c42f7d48679fbc7a ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_prepare_read_queue)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_08e8d0babf6a209e ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_prepare_read)(arg1);"
  , "}"
  , "void hs_bindgen_3dd16353884398e5 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  (wl_display_cancel_read)(arg1);"
  , "}"
  , "signed int hs_bindgen_e64aef5c64b001cc ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_read_events)(arg1);"
  , "}"
  , "void hs_bindgen_dd1e5344a4797733 ("
  , "  struct wl_display *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  (wl_display_set_max_buffer_size)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_5a65e92547a44700 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_display_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_display_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_9d862dbc006d7ea9 ("
  , "  struct wl_display *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_display_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_fc241b840d3cb0c3 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_2c112ac55f97b3db ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_version)(arg1);"
  , "}"
  , "struct wl_callback *hs_bindgen_bd4e2e369f0b562f ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_sync)(arg1);"
  , "}"
  , "struct wl_registry *hs_bindgen_c66fe759d93fa069 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_registry)(arg1);"
  , "}"
  , "signed int hs_bindgen_d2e3dc4d2669c5f4 ("
  , "  struct wl_registry *arg1,"
  , "  struct wl_registry_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_registry_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_779649cf332b0402 ("
  , "  struct wl_registry *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_registry_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_4cdbd46548c0f766 ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  return (wl_registry_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_3441d86a9b23d404 ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  return (wl_registry_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_a3e959df3021cfbb ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  (wl_registry_destroy)(arg1);"
  , "}"
  , "void *hs_bindgen_f3f1c4fca93b47f5 ("
  , "  struct wl_registry *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_interface const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return (wl_registry_bind)(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_bc4b25ceb4915d32 ("
  , "  struct wl_callback *arg1,"
  , "  struct wl_callback_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_callback_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_123f847da588a01f ("
  , "  struct wl_callback *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_callback_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_575c54180f0b0812 ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  return (wl_callback_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_b86394b959b12c0e ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  return (wl_callback_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_8c385fa9bcf03739 ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  (wl_callback_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_a510e3a22eb940c6 ("
  , "  struct wl_compositor *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_compositor_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_a6e34087c1d61903 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_269b4e978a912900 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_80c79e722f2e5547 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  (wl_compositor_destroy)(arg1);"
  , "}"
  , "struct wl_surface *hs_bindgen_b4e5700d02405180 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_create_surface)(arg1);"
  , "}"
  , "struct wl_region *hs_bindgen_64eccf2b309459cf ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_create_region)(arg1);"
  , "}"
  , "void hs_bindgen_205154276db5a98c ("
  , "  struct wl_shm_pool *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shm_pool_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_82c02e5245059d32 ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_pool_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_df8c652a35f71061 ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_pool_get_version)(arg1);"
  , "}"
  , "struct wl_buffer *hs_bindgen_c9f583077805ab2f ("
  , "  struct wl_shm_pool *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5,"
  , "  uint32_t arg6"
  , ")"
  , "{"
  , "  return (wl_shm_pool_create_buffer)(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "void hs_bindgen_4393e876b108f2bf ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  (wl_shm_pool_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_75236c5e893794c0 ("
  , "  struct wl_shm_pool *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (wl_shm_pool_resize)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_a923c541743ea7ff ("
  , "  struct wl_shm *arg1,"
  , "  struct wl_shm_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_shm_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_a91406b4d3218634 ("
  , "  struct wl_shm *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shm_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_9467ecef0dfd0cb0 ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_e122a188b598bd10 ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_558fdb46b8820a46 ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  (wl_shm_destroy)(arg1);"
  , "}"
  , "struct wl_shm_pool *hs_bindgen_f1493f3b04e61e23 ("
  , "  struct wl_shm *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return (wl_shm_create_pool)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_83dad28a6535f73f ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  (wl_shm_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_e98212aee99f0ee8 ("
  , "  struct wl_buffer *arg1,"
  , "  struct wl_buffer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_buffer_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_d04ccf79e7dddeb3 ("
  , "  struct wl_buffer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_buffer_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_7ec006b2b998d0aa ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  return (wl_buffer_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_4351919d92013de1 ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  return (wl_buffer_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_1973c12d21d14d85 ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  (wl_buffer_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_ae3f22c8f06de743 ("
  , "  struct wl_data_offer *arg1,"
  , "  struct wl_data_offer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_data_offer_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_87845098cdcabf2b ("
  , "  struct wl_data_offer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_offer_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_a31f2122863ccf2c ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return (wl_data_offer_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_25b1dfa683856f77 ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return (wl_data_offer_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_f130fc15072a7700 ("
  , "  struct wl_data_offer *arg1,"
  , "  uint32_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  (wl_data_offer_accept)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_e5607d7a7a97eb5b ("
  , "  struct wl_data_offer *arg1,"
  , "  char const *arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (wl_data_offer_receive)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_24cb8f62680a08c7 ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  (wl_data_offer_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_fdc70b565265c32c ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  (wl_data_offer_finish)(arg1);"
  , "}"
  , "void hs_bindgen_6bb43344b73eeda8 ("
  , "  struct wl_data_offer *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (wl_data_offer_set_actions)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_1e220d7ed6c62d18 ("
  , "  struct wl_data_source *arg1,"
  , "  struct wl_data_source_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_data_source_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_c918067eae83ab08 ("
  , "  struct wl_data_source *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_source_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_42819627aa1de90e ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  return (wl_data_source_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_33b2ef1e2a13059a ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  return (wl_data_source_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_69146ce56f4b481e ("
  , "  struct wl_data_source *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (wl_data_source_offer)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_a237abc34f2e3532 ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  (wl_data_source_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_ffbc22a2d0125940 ("
  , "  struct wl_data_source *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (wl_data_source_set_actions)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e39b97ecd4b94a3b ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_device_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_data_device_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_5f166e204af07293 ("
  , "  struct wl_data_device *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_device_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_3c0b0334740af575 ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_d847048f71fcbde8 ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_a385df1265b4d803 ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  (wl_data_device_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_2392193f23f9fbf8 ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_source *arg2,"
  , "  struct wl_surface *arg3,"
  , "  struct wl_surface *arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  (wl_data_device_start_drag)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_55817c18c0450b2c ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_source *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (wl_data_device_set_selection)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_1f112138da3258fb ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  (wl_data_device_release)(arg1);"
  , "}"
  , "void hs_bindgen_e080b45ed0712390 ("
  , "  struct wl_data_device_manager *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_device_manager_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_89e0dd9f1d8879bb ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_f1ab9ef79222200b ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_07fe2d3a922c2c91 ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  (wl_data_device_manager_destroy)(arg1);"
  , "}"
  , "struct wl_data_source *hs_bindgen_6822fd7201522b09 ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_create_data_source)(arg1);"
  , "}"
  , "struct wl_data_device *hs_bindgen_135584503dd2fe83 ("
  , "  struct wl_data_device_manager *arg1,"
  , "  struct wl_seat *arg2"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_get_data_device)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_3489a21d9ef9a295 ("
  , "  struct wl_shell *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shell_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_1d08abbfdb10bdee ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_570e6265686b5081 ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_ec5dea43b5498e0b ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  (wl_shell_destroy)(arg1);"
  , "}"
  , "struct wl_shell_surface *hs_bindgen_3f4c200d8e7126ea ("
  , "  struct wl_shell *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (wl_shell_get_shell_surface)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_d662922bb98fce55 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_shell_surface_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_shell_surface_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_a0a052e8a3e0ae8b ("
  , "  struct wl_shell_surface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_25dc36ecc4bbd0c7 ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_surface_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_211afcaf3eaf723d ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_surface_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_0cb59d081da222fc ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  (wl_shell_surface_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_dd7702f8d9a7a2ce ("
  , "  struct wl_shell_surface *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_pong)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_a096ff2aa00f2c66 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (wl_shell_surface_move)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_64785b2bf4651646 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  (wl_shell_surface_resize)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_165a04f74f6a8227 ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_toplevel)(arg1);"
  , "}"
  , "void hs_bindgen_aa7e47c238e28c08 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_surface *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_transient)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_13bad46dbf7103fc ("
  , "  struct wl_shell_surface *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3,"
  , "  struct wl_output *arg4"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_fullscreen)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_25a280775305e83c ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3,"
  , "  struct wl_surface *arg4,"
  , "  int32_t arg5,"
  , "  int32_t arg6,"
  , "  uint32_t arg7"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_popup)(arg1, arg2, arg3, arg4, arg5, arg6, arg7);"
  , "}"
  , "void hs_bindgen_7e34584d62a2b43a ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_output *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_maximized)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_ebabb07cfa2b8fbc ("
  , "  struct wl_shell_surface *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_title)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_20515759484937bc ("
  , "  struct wl_shell_surface *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_class)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_740ab6aac9194efc ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_surface_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_surface_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_f0a8a4b4e271bc0f ("
  , "  struct wl_surface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_28cd0198105d0fef ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_surface_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_59c22f98a7bc4627 ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_surface_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_4989313584df6b73 ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  (wl_surface_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_658e93f198624474 ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_buffer *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4"
  , ")"
  , "{"
  , "  (wl_surface_attach)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_e979d71d02ff28f4 ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_surface_damage)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "struct wl_callback *hs_bindgen_506173ce127930e8 ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_surface_frame)(arg1);"
  , "}"
  , "void hs_bindgen_c833338257941a59 ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_region *arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_opaque_region)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_a58701948293ae17 ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_region *arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_input_region)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_4a2c0ae850cf12aa ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  (wl_surface_commit)(arg1);"
  , "}"
  , "void hs_bindgen_95792d267cb501ff ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_buffer_transform)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_1b0414c7a35c0f03 ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_buffer_scale)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_894788ac87fc702b ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_surface_damage_buffer)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_95843727e4e49924 ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (wl_surface_offset)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_b7d2eae7b29ef34d ("
  , "  struct wl_seat *arg1,"
  , "  struct wl_seat_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_seat_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_88808ecd9fad0924 ("
  , "  struct wl_seat *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_seat_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_f3c9aeb257be87fe ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_808a43c633c732eb ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_5090d492fcc2ded5 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  (wl_seat_destroy)(arg1);"
  , "}"
  , "struct wl_pointer *hs_bindgen_8bc3b746a7121aa3 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_pointer)(arg1);"
  , "}"
  , "struct wl_keyboard *hs_bindgen_e247290689fa6d2d ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_keyboard)(arg1);"
  , "}"
  , "struct wl_touch *hs_bindgen_d00b6ce2f7e21cad ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_touch)(arg1);"
  , "}"
  , "void hs_bindgen_b3451dfa9d411051 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  (wl_seat_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_594f1b233a027c8b ("
  , "  struct wl_pointer *arg1,"
  , "  struct wl_pointer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_pointer_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_8f7a8e7647a408dd ("
  , "  struct wl_pointer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_pointer_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_f421e01e3e8d95a9 ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return (wl_pointer_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_6613d6229317f3ea ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return (wl_pointer_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_acf8de268c201589 ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  (wl_pointer_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_7133668453b731cc ("
  , "  struct wl_pointer *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_surface *arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_pointer_set_cursor)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_585683dab0b07401 ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  (wl_pointer_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_62f58e11f3712370 ("
  , "  struct wl_keyboard *arg1,"
  , "  struct wl_keyboard_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_keyboard_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_5d5286a3ed5d6318 ("
  , "  struct wl_keyboard *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_keyboard_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_fc4797b1ce93eba8 ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return (wl_keyboard_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_02a917aa47448a5e ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return (wl_keyboard_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_179d3832b06d2227 ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  (wl_keyboard_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_70e622747762269c ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  (wl_keyboard_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_77cb6a25b6b04995 ("
  , "  struct wl_touch *arg1,"
  , "  struct wl_touch_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_touch_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_ab718dcf3a6be53a ("
  , "  struct wl_touch *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_touch_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_542bd062da0bad43 ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return (wl_touch_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_7a6a12134b703c32 ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return (wl_touch_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_580e270b86a3fb07 ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  (wl_touch_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_e0e224d796cc81d5 ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  (wl_touch_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_73f035cf11576742 ("
  , "  struct wl_output *arg1,"
  , "  struct wl_output_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_output_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_e021d4f42256cbb6 ("
  , "  struct wl_output *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_output_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_787d77feac2aaf61 ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return (wl_output_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_d01dca2ac608e0ea ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return (wl_output_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_041afde8e1eb0da9 ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  (wl_output_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_fe842249c88c98fd ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  (wl_output_release)(arg1);"
  , "}"
  , "void hs_bindgen_bdaeae23c436cb2b ("
  , "  struct wl_region *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_region_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_f7d71ae40b2dda30 ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  return (wl_region_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_40639ff56454a1e7 ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  return (wl_region_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_486eb03f44d362ac ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  (wl_region_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_fde387363e9d6750 ("
  , "  struct wl_region *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_region_add)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_39e278d8c0c6ecb5 ("
  , "  struct wl_region *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_region_subtract)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_4b0a19ab9107f836 ("
  , "  struct wl_subcompositor *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_subcompositor_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_b2fc646a1b90bca5 ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  return (wl_subcompositor_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_5db42aa79d4ad119 ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  return (wl_subcompositor_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_0d72467af65a33a9 ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  (wl_subcompositor_destroy)(arg1);"
  , "}"
  , "struct wl_subsurface *hs_bindgen_b7f245376e840582 ("
  , "  struct wl_subcompositor *arg1,"
  , "  struct wl_surface *arg2,"
  , "  struct wl_surface *arg3"
  , ")"
  , "{"
  , "  return (wl_subcompositor_get_subsurface)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_764b7062a3535be8 ("
  , "  struct wl_subsurface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_subsurface_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_f241379e3c8b9f02 ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return (wl_subsurface_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_28df81db98d48446 ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return (wl_subsurface_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_af686a13ccd7fb4f ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  (wl_subsurface_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_3564871cb45445d6 ("
  , "  struct wl_subsurface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (wl_subsurface_set_position)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_9ad02e881e03fe7e ("
  , "  struct wl_subsurface *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  (wl_subsurface_place_above)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_1246e6c9c9bf3418 ("
  , "  struct wl_subsurface *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  (wl_subsurface_place_below)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_8d6eb88781020f2c ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  (wl_subsurface_set_sync)(arg1);"
  , "}"
  , "void hs_bindgen_67d9f17f7bd5a4d2 ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  (wl_subsurface_set_desync)(arg1);"
  , "}"
  , "void hs_bindgen_5b3a62b9834e9038 ("
  , "  struct wl_fixes *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_fixes_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_37c64b4ea2946ea1 ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  return (wl_fixes_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_3fd907c72a6c22bd ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  return (wl_fixes_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_81addaac0e4cc879 ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  (wl_fixes_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_9472505275067d51 ("
  , "  struct wl_fixes *arg1,"
  , "  struct wl_registry *arg2"
  , ")"
  , "{"
  , "  (wl_fixes_destroy_registry)(arg1, arg2);"
  , "}"
  ]))

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_event_queue_destroy@
foreign import ccall safe "hs_bindgen_5dfb8d65eb4cda1f" hs_bindgen_5dfb8d65eb4cda1f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_event_queue_destroy@
hs_bindgen_5dfb8d65eb4cda1f ::
     RIP.Ptr Wl_event_queue
  -> IO ()
hs_bindgen_5dfb8d65eb4cda1f =
  RIP.fromFFIType hs_bindgen_5dfb8d65eb4cda1f_base

{-| __C declaration:__ @wl_event_queue_destroy@

    __defined at:__ @wayland-client-core.h 130:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_event_queue_destroy ::
     RIP.Ptr Wl_event_queue
     -- ^ __C declaration:__ @queue@
  -> IO ()
wl_event_queue_destroy = hs_bindgen_5dfb8d65eb4cda1f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_marshal_array_flags@
foreign import ccall safe "hs_bindgen_a92dea01101775a0" hs_bindgen_a92dea01101775a0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_marshal_array_flags@
hs_bindgen_a92dea01101775a0 ::
     RIP.Ptr Wl_proxy
  -> HsBindgen.Runtime.LibC.Word32
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument
  -> IO (RIP.Ptr Wl_proxy)
hs_bindgen_a92dea01101775a0 =
  RIP.fromFFIType hs_bindgen_a92dea01101775a0_base

{-| __C declaration:__ @wl_proxy_marshal_array_flags@

    __defined at:__ @wayland-client-core.h 139:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_marshal_array_flags ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @opcode@
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
     -- ^ __C declaration:__ @interface@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @version@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @flags@
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument
     -- ^ __C declaration:__ @args@
  -> IO (RIP.Ptr Wl_proxy)
wl_proxy_marshal_array_flags =
  hs_bindgen_a92dea01101775a0

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_marshal_array@
foreign import ccall safe "hs_bindgen_da7c2598731036c7" hs_bindgen_da7c2598731036c7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_marshal_array@
hs_bindgen_da7c2598731036c7 ::
     RIP.Ptr Wl_proxy
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument
  -> IO ()
hs_bindgen_da7c2598731036c7 =
  RIP.fromFFIType hs_bindgen_da7c2598731036c7_base

{-| __C declaration:__ @wl_proxy_marshal_array@

    __defined at:__ @wayland-client-core.h 149:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_marshal_array ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @p@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @opcode@
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument
     -- ^ __C declaration:__ @args@
  -> IO ()
wl_proxy_marshal_array = hs_bindgen_da7c2598731036c7

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_create@
foreign import ccall safe "hs_bindgen_ea6dc6bb1ed192d7" hs_bindgen_ea6dc6bb1ed192d7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_create@
hs_bindgen_ea6dc6bb1ed192d7 ::
     RIP.Ptr Wl_proxy
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
  -> IO (RIP.Ptr Wl_proxy)
hs_bindgen_ea6dc6bb1ed192d7 =
  RIP.fromFFIType hs_bindgen_ea6dc6bb1ed192d7_base

{-| __C declaration:__ @wl_proxy_create@

    __defined at:__ @wayland-client-core.h 153:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_create ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @factory@
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
     -- ^ __C declaration:__ @interface@
  -> IO (RIP.Ptr Wl_proxy)
wl_proxy_create = hs_bindgen_ea6dc6bb1ed192d7

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_create_wrapper@
foreign import ccall safe "hs_bindgen_85701f676dbca379" hs_bindgen_85701f676dbca379_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_create_wrapper@
hs_bindgen_85701f676dbca379 ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_85701f676dbca379 =
  RIP.fromFFIType hs_bindgen_85701f676dbca379_base

{-| __C declaration:__ @wl_proxy_create_wrapper@

    __defined at:__ @wayland-client-core.h 157:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_create_wrapper ::
     RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr RIP.Void)
wl_proxy_create_wrapper = hs_bindgen_85701f676dbca379

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_wrapper_destroy@
foreign import ccall safe "hs_bindgen_596e8060468914d0" hs_bindgen_596e8060468914d0_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_wrapper_destroy@
hs_bindgen_596e8060468914d0 ::
     RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_596e8060468914d0 =
  RIP.fromFFIType hs_bindgen_596e8060468914d0_base

{-| __C declaration:__ @wl_proxy_wrapper_destroy@

    __defined at:__ @wayland-client-core.h 160:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_wrapper_destroy ::
     RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @proxy_wrapper@
  -> IO ()
wl_proxy_wrapper_destroy =
  hs_bindgen_596e8060468914d0

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_marshal_array_constructor@
foreign import ccall safe "hs_bindgen_b0fa8b968c8f0acb" hs_bindgen_b0fa8b968c8f0acb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_marshal_array_constructor@
hs_bindgen_b0fa8b968c8f0acb ::
     RIP.Ptr Wl_proxy
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
  -> IO (RIP.Ptr Wl_proxy)
hs_bindgen_b0fa8b968c8f0acb =
  RIP.fromFFIType hs_bindgen_b0fa8b968c8f0acb_base

{-| __C declaration:__ @wl_proxy_marshal_array_constructor@

    __defined at:__ @wayland-client-core.h 176:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_marshal_array_constructor ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @opcode@
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument
     -- ^ __C declaration:__ @args@
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
     -- ^ __C declaration:__ @interface@
  -> IO (RIP.Ptr Wl_proxy)
wl_proxy_marshal_array_constructor =
  hs_bindgen_b0fa8b968c8f0acb

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_marshal_array_constructor_versioned@
foreign import ccall safe "hs_bindgen_43ebdcb89aaf2464" hs_bindgen_43ebdcb89aaf2464_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_marshal_array_constructor_versioned@
hs_bindgen_43ebdcb89aaf2464 ::
     RIP.Ptr Wl_proxy
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr Wl_proxy)
hs_bindgen_43ebdcb89aaf2464 =
  RIP.fromFFIType hs_bindgen_43ebdcb89aaf2464_base

{-| __C declaration:__ @wl_proxy_marshal_array_constructor_versioned@

    __defined at:__ @wayland-client-core.h 181:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_marshal_array_constructor_versioned ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @opcode@
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument
     -- ^ __C declaration:__ @args@
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
     -- ^ __C declaration:__ @interface@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @version@
  -> IO (RIP.Ptr Wl_proxy)
wl_proxy_marshal_array_constructor_versioned =
  hs_bindgen_43ebdcb89aaf2464

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_destroy@
foreign import ccall safe "hs_bindgen_7fdde303c65b3145" hs_bindgen_7fdde303c65b3145_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_destroy@
hs_bindgen_7fdde303c65b3145 ::
     RIP.Ptr Wl_proxy
  -> IO ()
hs_bindgen_7fdde303c65b3145 =
  RIP.fromFFIType hs_bindgen_7fdde303c65b3145_base

{-| __C declaration:__ @wl_proxy_destroy@

    __defined at:__ @wayland-client-core.h 188:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_destroy ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO ()
wl_proxy_destroy = hs_bindgen_7fdde303c65b3145

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_add_listener@
foreign import ccall safe "hs_bindgen_e2a379af3db7c19b" hs_bindgen_e2a379af3db7c19b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_add_listener@
hs_bindgen_e2a379af3db7c19b ::
     RIP.Ptr Wl_proxy
  -> RIP.Ptr (RIP.FunPtr (IO ()))
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_e2a379af3db7c19b =
  RIP.fromFFIType hs_bindgen_e2a379af3db7c19b_base

{-| __C declaration:__ @wl_proxy_add_listener@

    __defined at:__ @wayland-client-core.h 191:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_add_listener ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> RIP.Ptr (RIP.FunPtr (IO ()))
     -- ^ __C declaration:__ @implementation@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_proxy_add_listener = hs_bindgen_e2a379af3db7c19b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_listener@
foreign import ccall safe "hs_bindgen_3b2df94eebf88b6b" hs_bindgen_3b2df94eebf88b6b_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_listener@
hs_bindgen_3b2df94eebf88b6b ::
     RIP.Ptr Wl_proxy
  -> IO (PtrConst.PtrConst RIP.Void)
hs_bindgen_3b2df94eebf88b6b =
  RIP.fromFFIType hs_bindgen_3b2df94eebf88b6b_base

{-| __C declaration:__ @wl_proxy_get_listener@

    __defined at:__ @wayland-client-core.h 195:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_listener ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst RIP.Void)
wl_proxy_get_listener = hs_bindgen_3b2df94eebf88b6b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_add_dispatcher@
foreign import ccall safe "hs_bindgen_3443ae83c581cc31" hs_bindgen_3443ae83c581cc31_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_add_dispatcher@
hs_bindgen_3443ae83c581cc31 ::
     RIP.Ptr Wl_proxy
  -> Bindings.Wayland.Util.Generated.Wl_dispatcher_func_t
  -> PtrConst.PtrConst RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_3443ae83c581cc31 =
  RIP.fromFFIType hs_bindgen_3443ae83c581cc31_base

{-| __C declaration:__ @wl_proxy_add_dispatcher@

    __defined at:__ @wayland-client-core.h 198:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_add_dispatcher ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> Bindings.Wayland.Util.Generated.Wl_dispatcher_func_t
     -- ^ __C declaration:__ @dispatcher_func@
  -> PtrConst.PtrConst RIP.Void
     -- ^ __C declaration:__ @dispatcher_data@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_proxy_add_dispatcher = hs_bindgen_3443ae83c581cc31

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_set_user_data@
foreign import ccall safe "hs_bindgen_53bbf5585247d91c" hs_bindgen_53bbf5585247d91c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_set_user_data@
hs_bindgen_53bbf5585247d91c ::
     RIP.Ptr Wl_proxy
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_53bbf5585247d91c =
  RIP.fromFFIType hs_bindgen_53bbf5585247d91c_base

{-| __C declaration:__ @wl_proxy_set_user_data@

    __defined at:__ @wayland-client-core.h 203:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_set_user_data ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_proxy_set_user_data = hs_bindgen_53bbf5585247d91c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_user_data@
foreign import ccall safe "hs_bindgen_c9ea9e53a28ee550" hs_bindgen_c9ea9e53a28ee550_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_user_data@
hs_bindgen_c9ea9e53a28ee550 ::
     RIP.Ptr Wl_proxy
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_c9ea9e53a28ee550 =
  RIP.fromFFIType hs_bindgen_c9ea9e53a28ee550_base

{-| __C declaration:__ @wl_proxy_get_user_data@

    __defined at:__ @wayland-client-core.h 206:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_user_data ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr RIP.Void)
wl_proxy_get_user_data = hs_bindgen_c9ea9e53a28ee550

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_version@
foreign import ccall safe "hs_bindgen_79b2f1f43d9f56a8" hs_bindgen_79b2f1f43d9f56a8_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_version@
hs_bindgen_79b2f1f43d9f56a8 ::
     RIP.Ptr Wl_proxy
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_79b2f1f43d9f56a8 =
  RIP.fromFFIType hs_bindgen_79b2f1f43d9f56a8_base

{-| __C declaration:__ @wl_proxy_get_version@

    __defined at:__ @wayland-client-core.h 209:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_version ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_proxy_get_version = hs_bindgen_79b2f1f43d9f56a8

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_id@
foreign import ccall safe "hs_bindgen_60f2e22067c4f24a" hs_bindgen_60f2e22067c4f24a_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_id@
hs_bindgen_60f2e22067c4f24a ::
     RIP.Ptr Wl_proxy
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_60f2e22067c4f24a =
  RIP.fromFFIType hs_bindgen_60f2e22067c4f24a_base

{-| __C declaration:__ @wl_proxy_get_id@

    __defined at:__ @wayland-client-core.h 212:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_id ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_proxy_get_id = hs_bindgen_60f2e22067c4f24a

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_set_tag@
foreign import ccall safe "hs_bindgen_1f55debeb10c2324" hs_bindgen_1f55debeb10c2324_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_set_tag@
hs_bindgen_1f55debeb10c2324 ::
     RIP.Ptr Wl_proxy
  -> PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar)
  -> IO ()
hs_bindgen_1f55debeb10c2324 =
  RIP.fromFFIType hs_bindgen_1f55debeb10c2324_base

{-| __C declaration:__ @wl_proxy_set_tag@

    __defined at:__ @wayland-client-core.h 215:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_set_tag ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar)
     -- ^ __C declaration:__ @tag@
  -> IO ()
wl_proxy_set_tag = hs_bindgen_1f55debeb10c2324

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_tag@
foreign import ccall safe "hs_bindgen_74fbbfb5d0212584" hs_bindgen_74fbbfb5d0212584_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_tag@
hs_bindgen_74fbbfb5d0212584 ::
     RIP.Ptr Wl_proxy
  -> IO (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar))
hs_bindgen_74fbbfb5d0212584 =
  RIP.fromFFIType hs_bindgen_74fbbfb5d0212584_base

{-| __C declaration:__ @wl_proxy_get_tag@

    __defined at:__ @wayland-client-core.h 219:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_tag ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar))
wl_proxy_get_tag = hs_bindgen_74fbbfb5d0212584

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_class@
foreign import ccall safe "hs_bindgen_9e7884520de5a609" hs_bindgen_9e7884520de5a609_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_class@
hs_bindgen_9e7884520de5a609 ::
     RIP.Ptr Wl_proxy
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_9e7884520de5a609 =
  RIP.fromFFIType hs_bindgen_9e7884520de5a609_base

{-| __C declaration:__ @wl_proxy_get_class@

    __defined at:__ @wayland-client-core.h 222:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_class ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst RIP.CChar)
wl_proxy_get_class = hs_bindgen_9e7884520de5a609

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_interface@
foreign import ccall safe "hs_bindgen_b12b208751b123b7" hs_bindgen_b12b208751b123b7_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_interface@
hs_bindgen_b12b208751b123b7 ::
     RIP.Ptr Wl_proxy
  -> IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_b12b208751b123b7 =
  RIP.fromFFIType hs_bindgen_b12b208751b123b7_base

{-| __C declaration:__ @wl_proxy_get_interface@

    __defined at:__ @wayland-client-core.h 225:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_interface ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
wl_proxy_get_interface = hs_bindgen_b12b208751b123b7

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_display@
foreign import ccall safe "hs_bindgen_19e29ec485a4673b" hs_bindgen_19e29ec485a4673b_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_display@
hs_bindgen_19e29ec485a4673b ::
     RIP.Ptr Wl_proxy
  -> IO (RIP.Ptr Wl_display)
hs_bindgen_19e29ec485a4673b =
  RIP.fromFFIType hs_bindgen_19e29ec485a4673b_base

{-| __C declaration:__ @wl_proxy_get_display@

    __defined at:__ @wayland-client-core.h 228:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_display ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr Wl_display)
wl_proxy_get_display = hs_bindgen_19e29ec485a4673b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_set_queue@
foreign import ccall safe "hs_bindgen_b9daeb9683a63e69" hs_bindgen_b9daeb9683a63e69_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_set_queue@
hs_bindgen_b9daeb9683a63e69 ::
     RIP.Ptr Wl_proxy
  -> RIP.Ptr Wl_event_queue
  -> IO ()
hs_bindgen_b9daeb9683a63e69 =
  RIP.fromFFIType hs_bindgen_b9daeb9683a63e69_base

{-| __C declaration:__ @wl_proxy_set_queue@

    __defined at:__ @wayland-client-core.h 231:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_set_queue ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> RIP.Ptr Wl_event_queue
     -- ^ __C declaration:__ @queue@
  -> IO ()
wl_proxy_set_queue = hs_bindgen_b9daeb9683a63e69

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_queue@
foreign import ccall safe "hs_bindgen_0b99a023eae3958e" hs_bindgen_0b99a023eae3958e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_queue@
hs_bindgen_0b99a023eae3958e ::
     PtrConst.PtrConst Wl_proxy
  -> IO (RIP.Ptr Wl_event_queue)
hs_bindgen_0b99a023eae3958e =
  RIP.fromFFIType hs_bindgen_0b99a023eae3958e_base

{-| __C declaration:__ @wl_proxy_get_queue@

    __defined at:__ @wayland-client-core.h 234:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_queue ::
     PtrConst.PtrConst Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr Wl_event_queue)
wl_proxy_get_queue = hs_bindgen_0b99a023eae3958e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_event_queue_get_name@
foreign import ccall safe "hs_bindgen_8f0f7cab89a3eeb4" hs_bindgen_8f0f7cab89a3eeb4_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_event_queue_get_name@
hs_bindgen_8f0f7cab89a3eeb4 ::
     PtrConst.PtrConst Wl_event_queue
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_8f0f7cab89a3eeb4 =
  RIP.fromFFIType hs_bindgen_8f0f7cab89a3eeb4_base

{-| __C declaration:__ @wl_event_queue_get_name@

    __defined at:__ @wayland-client-core.h 237:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_event_queue_get_name ::
     PtrConst.PtrConst Wl_event_queue
     -- ^ __C declaration:__ @queue@
  -> IO (PtrConst.PtrConst RIP.CChar)
wl_event_queue_get_name = hs_bindgen_8f0f7cab89a3eeb4

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_connect@
foreign import ccall safe "hs_bindgen_bb42064bf6c5a0e3" hs_bindgen_bb42064bf6c5a0e3_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_connect@
hs_bindgen_bb42064bf6c5a0e3 ::
     PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Wl_display)
hs_bindgen_bb42064bf6c5a0e3 =
  RIP.fromFFIType hs_bindgen_bb42064bf6c5a0e3_base

{-| __C declaration:__ @wl_display_connect@

    __defined at:__ @wayland-client-core.h 240:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_connect ::
     PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @name@
  -> IO (RIP.Ptr Wl_display)
wl_display_connect = hs_bindgen_bb42064bf6c5a0e3

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_connect_to_fd@
foreign import ccall safe "hs_bindgen_240ef2b6cfbb8b90" hs_bindgen_240ef2b6cfbb8b90_base ::
     RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_connect_to_fd@
hs_bindgen_240ef2b6cfbb8b90 ::
     RIP.CInt
  -> IO (RIP.Ptr Wl_display)
hs_bindgen_240ef2b6cfbb8b90 =
  RIP.fromFFIType hs_bindgen_240ef2b6cfbb8b90_base

{-| __C declaration:__ @wl_display_connect_to_fd@

    __defined at:__ @wayland-client-core.h 243:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_connect_to_fd ::
     RIP.CInt
     -- ^ __C declaration:__ @fd@
  -> IO (RIP.Ptr Wl_display)
wl_display_connect_to_fd =
  hs_bindgen_240ef2b6cfbb8b90

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_disconnect@
foreign import ccall safe "hs_bindgen_224b0bbc0877e5c6" hs_bindgen_224b0bbc0877e5c6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_disconnect@
hs_bindgen_224b0bbc0877e5c6 ::
     RIP.Ptr Wl_display
  -> IO ()
hs_bindgen_224b0bbc0877e5c6 =
  RIP.fromFFIType hs_bindgen_224b0bbc0877e5c6_base

{-| __C declaration:__ @wl_display_disconnect@

    __defined at:__ @wayland-client-core.h 246:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_disconnect ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO ()
wl_display_disconnect = hs_bindgen_224b0bbc0877e5c6

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_get_fd@
foreign import ccall safe "hs_bindgen_d9913c6c48bcd7d2" hs_bindgen_d9913c6c48bcd7d2_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_get_fd@
hs_bindgen_d9913c6c48bcd7d2 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_d9913c6c48bcd7d2 =
  RIP.fromFFIType hs_bindgen_d9913c6c48bcd7d2_base

{-| __C declaration:__ @wl_display_get_fd@

    __defined at:__ @wayland-client-core.h 249:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_get_fd ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_get_fd = hs_bindgen_d9913c6c48bcd7d2

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch@
foreign import ccall safe "hs_bindgen_6ccadd758747fe82" hs_bindgen_6ccadd758747fe82_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch@
hs_bindgen_6ccadd758747fe82 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_6ccadd758747fe82 =
  RIP.fromFFIType hs_bindgen_6ccadd758747fe82_base

{-| __C declaration:__ @wl_display_dispatch@

    __defined at:__ @wayland-client-core.h 252:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_dispatch = hs_bindgen_6ccadd758747fe82

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch_queue@
foreign import ccall safe "hs_bindgen_d8094b8790b36611" hs_bindgen_d8094b8790b36611_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch_queue@
hs_bindgen_d8094b8790b36611 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> IO RIP.CInt
hs_bindgen_d8094b8790b36611 =
  RIP.fromFFIType hs_bindgen_d8094b8790b36611_base

{-| __C declaration:__ @wl_display_dispatch_queue@

    __defined at:__ @wayland-client-core.h 255:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_queue ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> RIP.Ptr Wl_event_queue
     -- ^ __C declaration:__ @queue@
  -> IO RIP.CInt
wl_display_dispatch_queue =
  hs_bindgen_d8094b8790b36611

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch_timeout@
foreign import ccall safe "hs_bindgen_a8978634afcd1a30" hs_bindgen_a8978634afcd1a30_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch_timeout@
hs_bindgen_a8978634afcd1a30 ::
     RIP.Ptr Wl_display
  -> PtrConst.PtrConst Timespec
  -> IO RIP.CInt
hs_bindgen_a8978634afcd1a30 =
  RIP.fromFFIType hs_bindgen_a8978634afcd1a30_base

{-| __C declaration:__ @wl_display_dispatch_timeout@

    __defined at:__ @wayland-client-core.h 259:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_timeout ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> PtrConst.PtrConst Timespec
     -- ^ __C declaration:__ @timeout@
  -> IO RIP.CInt
wl_display_dispatch_timeout =
  hs_bindgen_a8978634afcd1a30

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch_queue_timeout@
foreign import ccall safe "hs_bindgen_ef1eb26bb7204ad0" hs_bindgen_ef1eb26bb7204ad0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch_queue_timeout@
hs_bindgen_ef1eb26bb7204ad0 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> PtrConst.PtrConst Timespec
  -> IO RIP.CInt
hs_bindgen_ef1eb26bb7204ad0 =
  RIP.fromFFIType hs_bindgen_ef1eb26bb7204ad0_base

{-| __C declaration:__ @wl_display_dispatch_queue_timeout@

    __defined at:__ @wayland-client-core.h 263:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_queue_timeout ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> RIP.Ptr Wl_event_queue
     -- ^ __C declaration:__ @queue@
  -> PtrConst.PtrConst Timespec
     -- ^ __C declaration:__ @timeout@
  -> IO RIP.CInt
wl_display_dispatch_queue_timeout =
  hs_bindgen_ef1eb26bb7204ad0

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch_queue_pending@
foreign import ccall safe "hs_bindgen_1b469acbe08193d2" hs_bindgen_1b469acbe08193d2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch_queue_pending@
hs_bindgen_1b469acbe08193d2 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> IO RIP.CInt
hs_bindgen_1b469acbe08193d2 =
  RIP.fromFFIType hs_bindgen_1b469acbe08193d2_base

{-| __C declaration:__ @wl_display_dispatch_queue_pending@

    __defined at:__ @wayland-client-core.h 268:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_queue_pending ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> RIP.Ptr Wl_event_queue
     -- ^ __C declaration:__ @queue@
  -> IO RIP.CInt
wl_display_dispatch_queue_pending =
  hs_bindgen_1b469acbe08193d2

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch_pending@
foreign import ccall safe "hs_bindgen_4e48e5ca48f802f8" hs_bindgen_4e48e5ca48f802f8_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch_pending@
hs_bindgen_4e48e5ca48f802f8 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_4e48e5ca48f802f8 =
  RIP.fromFFIType hs_bindgen_4e48e5ca48f802f8_base

{-| __C declaration:__ @wl_display_dispatch_pending@

    __defined at:__ @wayland-client-core.h 272:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_pending ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_dispatch_pending =
  hs_bindgen_4e48e5ca48f802f8

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_get_error@
foreign import ccall safe "hs_bindgen_d01c67c2a753901e" hs_bindgen_d01c67c2a753901e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_get_error@
hs_bindgen_d01c67c2a753901e ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_d01c67c2a753901e =
  RIP.fromFFIType hs_bindgen_d01c67c2a753901e_base

{-| __C declaration:__ @wl_display_get_error@

    __defined at:__ @wayland-client-core.h 275:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_get_error ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_get_error = hs_bindgen_d01c67c2a753901e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_get_protocol_error@
foreign import ccall safe "hs_bindgen_7f9e1ca7f0a5d421" hs_bindgen_7f9e1ca7f0a5d421_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_get_protocol_error@
hs_bindgen_7f9e1ca7f0a5d421 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_7f9e1ca7f0a5d421 =
  RIP.fromFFIType hs_bindgen_7f9e1ca7f0a5d421_base

{-| __C declaration:__ @wl_display_get_protocol_error@

    __defined at:__ @wayland-client-core.h 278:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_get_protocol_error ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> RIP.Ptr (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
     -- ^ __C declaration:__ @interface@
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @id@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_display_get_protocol_error =
  hs_bindgen_7f9e1ca7f0a5d421

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_flush@
foreign import ccall safe "hs_bindgen_bfdbc6edb813a282" hs_bindgen_bfdbc6edb813a282_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_flush@
hs_bindgen_bfdbc6edb813a282 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_bfdbc6edb813a282 =
  RIP.fromFFIType hs_bindgen_bfdbc6edb813a282_base

{-| __C declaration:__ @wl_display_flush@

    __defined at:__ @wayland-client-core.h 283:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_flush ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_flush = hs_bindgen_bfdbc6edb813a282

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_roundtrip_queue@
foreign import ccall safe "hs_bindgen_01733d21fb13b898" hs_bindgen_01733d21fb13b898_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_roundtrip_queue@
hs_bindgen_01733d21fb13b898 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> IO RIP.CInt
hs_bindgen_01733d21fb13b898 =
  RIP.fromFFIType hs_bindgen_01733d21fb13b898_base

{-| __C declaration:__ @wl_display_roundtrip_queue@

    __defined at:__ @wayland-client-core.h 286:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_roundtrip_queue ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> RIP.Ptr Wl_event_queue
     -- ^ __C declaration:__ @queue@
  -> IO RIP.CInt
wl_display_roundtrip_queue =
  hs_bindgen_01733d21fb13b898

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_roundtrip@
foreign import ccall safe "hs_bindgen_516b260dc3da7e30" hs_bindgen_516b260dc3da7e30_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_roundtrip@
hs_bindgen_516b260dc3da7e30 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_516b260dc3da7e30 =
  RIP.fromFFIType hs_bindgen_516b260dc3da7e30_base

{-| __C declaration:__ @wl_display_roundtrip@

    __defined at:__ @wayland-client-core.h 290:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_roundtrip ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_roundtrip = hs_bindgen_516b260dc3da7e30

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_create_queue@
foreign import ccall safe "hs_bindgen_72548357b08504d2" hs_bindgen_72548357b08504d2_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_create_queue@
hs_bindgen_72548357b08504d2 ::
     RIP.Ptr Wl_display
  -> IO (RIP.Ptr Wl_event_queue)
hs_bindgen_72548357b08504d2 =
  RIP.fromFFIType hs_bindgen_72548357b08504d2_base

{-| __C declaration:__ @wl_display_create_queue@

    __defined at:__ @wayland-client-core.h 293:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_create_queue ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO (RIP.Ptr Wl_event_queue)
wl_display_create_queue = hs_bindgen_72548357b08504d2

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_create_queue_with_name@
foreign import ccall safe "hs_bindgen_a9c9e43f7026e4e8" hs_bindgen_a9c9e43f7026e4e8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_create_queue_with_name@
hs_bindgen_a9c9e43f7026e4e8 ::
     RIP.Ptr Wl_display
  -> PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Wl_event_queue)
hs_bindgen_a9c9e43f7026e4e8 =
  RIP.fromFFIType hs_bindgen_a9c9e43f7026e4e8_base

{-| __C declaration:__ @wl_display_create_queue_with_name@

    __defined at:__ @wayland-client-core.h 296:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_create_queue_with_name ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @name@
  -> IO (RIP.Ptr Wl_event_queue)
wl_display_create_queue_with_name =
  hs_bindgen_a9c9e43f7026e4e8

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_prepare_read_queue@
foreign import ccall safe "hs_bindgen_c42f7d48679fbc7a" hs_bindgen_c42f7d48679fbc7a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_prepare_read_queue@
hs_bindgen_c42f7d48679fbc7a ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> IO RIP.CInt
hs_bindgen_c42f7d48679fbc7a =
  RIP.fromFFIType hs_bindgen_c42f7d48679fbc7a_base

{-| __C declaration:__ @wl_display_prepare_read_queue@

    __defined at:__ @wayland-client-core.h 300:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_prepare_read_queue ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> RIP.Ptr Wl_event_queue
     -- ^ __C declaration:__ @queue@
  -> IO RIP.CInt
wl_display_prepare_read_queue =
  hs_bindgen_c42f7d48679fbc7a

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_prepare_read@
foreign import ccall safe "hs_bindgen_08e8d0babf6a209e" hs_bindgen_08e8d0babf6a209e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_prepare_read@
hs_bindgen_08e8d0babf6a209e ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_08e8d0babf6a209e =
  RIP.fromFFIType hs_bindgen_08e8d0babf6a209e_base

{-| __C declaration:__ @wl_display_prepare_read@

    __defined at:__ @wayland-client-core.h 304:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_prepare_read ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_prepare_read = hs_bindgen_08e8d0babf6a209e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_cancel_read@
foreign import ccall safe "hs_bindgen_3dd16353884398e5" hs_bindgen_3dd16353884398e5_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_cancel_read@
hs_bindgen_3dd16353884398e5 ::
     RIP.Ptr Wl_display
  -> IO ()
hs_bindgen_3dd16353884398e5 =
  RIP.fromFFIType hs_bindgen_3dd16353884398e5_base

{-| __C declaration:__ @wl_display_cancel_read@

    __defined at:__ @wayland-client-core.h 307:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_cancel_read ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO ()
wl_display_cancel_read = hs_bindgen_3dd16353884398e5

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_read_events@
foreign import ccall safe "hs_bindgen_e64aef5c64b001cc" hs_bindgen_e64aef5c64b001cc_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_read_events@
hs_bindgen_e64aef5c64b001cc ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_e64aef5c64b001cc =
  RIP.fromFFIType hs_bindgen_e64aef5c64b001cc_base

{-| __C declaration:__ @wl_display_read_events@

    __defined at:__ @wayland-client-core.h 310:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_read_events ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_read_events = hs_bindgen_e64aef5c64b001cc

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_set_max_buffer_size@
foreign import ccall safe "hs_bindgen_dd1e5344a4797733" hs_bindgen_dd1e5344a4797733_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_set_max_buffer_size@
hs_bindgen_dd1e5344a4797733 ::
     RIP.Ptr Wl_display
  -> HsBindgen.Runtime.LibC.CSize
  -> IO ()
hs_bindgen_dd1e5344a4797733 =
  RIP.fromFFIType hs_bindgen_dd1e5344a4797733_base

{-| __C declaration:__ @wl_display_set_max_buffer_size@

    __defined at:__ @wayland-client-core.h 316:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_set_max_buffer_size ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> HsBindgen.Runtime.LibC.CSize
     -- ^ __C declaration:__ @max_buffer_size@
  -> IO ()
wl_display_set_max_buffer_size =
  hs_bindgen_dd1e5344a4797733

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_add_listener@
foreign import ccall safe "hs_bindgen_5a65e92547a44700" hs_bindgen_5a65e92547a44700_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_add_listener@
hs_bindgen_5a65e92547a44700 ::
     RIP.Ptr Wl_display
  -> PtrConst.PtrConst Wl_display_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_5a65e92547a44700 =
  RIP.fromFFIType hs_bindgen_5a65e92547a44700_base

{-| __C declaration:__ @wl_display_add_listener@

    __defined at:__ @wayland-client-protocol.h 1037:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_add_listener ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> PtrConst.PtrConst Wl_display_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_display_add_listener = hs_bindgen_5a65e92547a44700

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_set_user_data@
foreign import ccall safe "hs_bindgen_9d862dbc006d7ea9" hs_bindgen_9d862dbc006d7ea9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_set_user_data@
hs_bindgen_9d862dbc006d7ea9 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_9d862dbc006d7ea9 =
  RIP.fromFFIType hs_bindgen_9d862dbc006d7ea9_base

{-| __C declaration:__ @wl_display_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1067:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_set_user_data ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_display_set_user_data =
  hs_bindgen_9d862dbc006d7ea9

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_get_user_data@
foreign import ccall safe "hs_bindgen_fc241b840d3cb0c3" hs_bindgen_fc241b840d3cb0c3_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_get_user_data@
hs_bindgen_fc241b840d3cb0c3 ::
     RIP.Ptr Wl_display
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_fc241b840d3cb0c3 =
  RIP.fromFFIType hs_bindgen_fc241b840d3cb0c3_base

{-| __C declaration:__ @wl_display_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1074:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_get_user_data ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> IO (RIP.Ptr RIP.Void)
wl_display_get_user_data =
  hs_bindgen_fc241b840d3cb0c3

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_get_version@
foreign import ccall safe "hs_bindgen_2c112ac55f97b3db" hs_bindgen_2c112ac55f97b3db_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_get_version@
hs_bindgen_2c112ac55f97b3db ::
     RIP.Ptr Wl_display
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_2c112ac55f97b3db =
  RIP.fromFFIType hs_bindgen_2c112ac55f97b3db_base

{-| __C declaration:__ @wl_display_get_version@

    __defined at:__ @wayland-client-protocol.h 1080:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_get_version ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_display_get_version = hs_bindgen_2c112ac55f97b3db

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_sync@
foreign import ccall safe "hs_bindgen_bd4e2e369f0b562f" hs_bindgen_bd4e2e369f0b562f_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_sync@
hs_bindgen_bd4e2e369f0b562f ::
     RIP.Ptr Wl_display
  -> IO (RIP.Ptr Wl_callback)
hs_bindgen_bd4e2e369f0b562f =
  RIP.fromFFIType hs_bindgen_bd4e2e369f0b562f_base

{-| __C declaration:__ @wl_display_sync@

    __defined at:__ @wayland-client-protocol.h 1101:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_sync ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> IO (RIP.Ptr Wl_callback)
wl_display_sync = hs_bindgen_bd4e2e369f0b562f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_get_registry@
foreign import ccall safe "hs_bindgen_c66fe759d93fa069" hs_bindgen_c66fe759d93fa069_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_display_get_registry@
hs_bindgen_c66fe759d93fa069 ::
     RIP.Ptr Wl_display
  -> IO (RIP.Ptr Wl_registry)
hs_bindgen_c66fe759d93fa069 =
  RIP.fromFFIType hs_bindgen_c66fe759d93fa069_base

{-| __C declaration:__ @wl_display_get_registry@

    __defined at:__ @wayland-client-protocol.h 1125:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_get_registry ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> IO (RIP.Ptr Wl_registry)
wl_display_get_registry = hs_bindgen_c66fe759d93fa069

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_registry_add_listener@
foreign import ccall safe "hs_bindgen_d2e3dc4d2669c5f4" hs_bindgen_d2e3dc4d2669c5f4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_registry_add_listener@
hs_bindgen_d2e3dc4d2669c5f4 ::
     RIP.Ptr Wl_registry
  -> PtrConst.PtrConst Wl_registry_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_d2e3dc4d2669c5f4 =
  RIP.fromFFIType hs_bindgen_d2e3dc4d2669c5f4_base

{-| __C declaration:__ @wl_registry_add_listener@

    __defined at:__ @wayland-client-protocol.h 1181:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_add_listener ::
     RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @wl_registry@
  -> PtrConst.PtrConst Wl_registry_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_registry_add_listener =
  hs_bindgen_d2e3dc4d2669c5f4

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_registry_set_user_data@
foreign import ccall safe "hs_bindgen_779649cf332b0402" hs_bindgen_779649cf332b0402_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_registry_set_user_data@
hs_bindgen_779649cf332b0402 ::
     RIP.Ptr Wl_registry
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_779649cf332b0402 =
  RIP.fromFFIType hs_bindgen_779649cf332b0402_base

{-| __C declaration:__ @wl_registry_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1206:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_set_user_data ::
     RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @wl_registry@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_registry_set_user_data =
  hs_bindgen_779649cf332b0402

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_registry_get_user_data@
foreign import ccall safe "hs_bindgen_4cdbd46548c0f766" hs_bindgen_4cdbd46548c0f766_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_registry_get_user_data@
hs_bindgen_4cdbd46548c0f766 ::
     RIP.Ptr Wl_registry
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_4cdbd46548c0f766 =
  RIP.fromFFIType hs_bindgen_4cdbd46548c0f766_base

{-| __C declaration:__ @wl_registry_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1213:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_get_user_data ::
     RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @wl_registry@
  -> IO (RIP.Ptr RIP.Void)
wl_registry_get_user_data =
  hs_bindgen_4cdbd46548c0f766

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_registry_get_version@
foreign import ccall safe "hs_bindgen_3441d86a9b23d404" hs_bindgen_3441d86a9b23d404_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_registry_get_version@
hs_bindgen_3441d86a9b23d404 ::
     RIP.Ptr Wl_registry
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_3441d86a9b23d404 =
  RIP.fromFFIType hs_bindgen_3441d86a9b23d404_base

{-| __C declaration:__ @wl_registry_get_version@

    __defined at:__ @wayland-client-protocol.h 1219:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_get_version ::
     RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @wl_registry@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_registry_get_version = hs_bindgen_3441d86a9b23d404

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_registry_destroy@
foreign import ccall safe "hs_bindgen_a3e959df3021cfbb" hs_bindgen_a3e959df3021cfbb_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_registry_destroy@
hs_bindgen_a3e959df3021cfbb ::
     RIP.Ptr Wl_registry
  -> IO ()
hs_bindgen_a3e959df3021cfbb =
  RIP.fromFFIType hs_bindgen_a3e959df3021cfbb_base

{-| __C declaration:__ @wl_registry_destroy@

    __defined at:__ @wayland-client-protocol.h 1226:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_destroy ::
     RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @wl_registry@
  -> IO ()
wl_registry_destroy = hs_bindgen_a3e959df3021cfbb

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_registry_bind@
foreign import ccall safe "hs_bindgen_f3f1c4fca93b47f5" hs_bindgen_f3f1c4fca93b47f5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_registry_bind@
hs_bindgen_f3f1c4fca93b47f5 ::
     RIP.Ptr Wl_registry
  -> HsBindgen.Runtime.LibC.Word32
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_f3f1c4fca93b47f5 =
  RIP.fromFFIType hs_bindgen_f3f1c4fca93b47f5_base

{-| __C declaration:__ @wl_registry_bind@

    __defined at:__ @wayland-client-protocol.h 1238:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_bind ::
     RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @wl_registry@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @name@
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
     -- ^ __C declaration:__ @interface@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @version@
  -> IO (RIP.Ptr RIP.Void)
wl_registry_bind = hs_bindgen_f3f1c4fca93b47f5

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_callback_add_listener@
foreign import ccall safe "hs_bindgen_bc4b25ceb4915d32" hs_bindgen_bc4b25ceb4915d32_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_callback_add_listener@
hs_bindgen_bc4b25ceb4915d32 ::
     RIP.Ptr Wl_callback
  -> PtrConst.PtrConst Wl_callback_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_bc4b25ceb4915d32 =
  RIP.fromFFIType hs_bindgen_bc4b25ceb4915d32_base

{-| __C declaration:__ @wl_callback_add_listener@

    __defined at:__ @wayland-client-protocol.h 1268:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_add_listener ::
     RIP.Ptr Wl_callback
     -- ^ __C declaration:__ @wl_callback@
  -> PtrConst.PtrConst Wl_callback_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_callback_add_listener =
  hs_bindgen_bc4b25ceb4915d32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_callback_set_user_data@
foreign import ccall safe "hs_bindgen_123f847da588a01f" hs_bindgen_123f847da588a01f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_callback_set_user_data@
hs_bindgen_123f847da588a01f ::
     RIP.Ptr Wl_callback
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_123f847da588a01f =
  RIP.fromFFIType hs_bindgen_123f847da588a01f_base

{-| __C declaration:__ @wl_callback_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1283:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_set_user_data ::
     RIP.Ptr Wl_callback
     -- ^ __C declaration:__ @wl_callback@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_callback_set_user_data =
  hs_bindgen_123f847da588a01f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_callback_get_user_data@
foreign import ccall safe "hs_bindgen_575c54180f0b0812" hs_bindgen_575c54180f0b0812_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_callback_get_user_data@
hs_bindgen_575c54180f0b0812 ::
     RIP.Ptr Wl_callback
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_575c54180f0b0812 =
  RIP.fromFFIType hs_bindgen_575c54180f0b0812_base

{-| __C declaration:__ @wl_callback_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1290:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_get_user_data ::
     RIP.Ptr Wl_callback
     -- ^ __C declaration:__ @wl_callback@
  -> IO (RIP.Ptr RIP.Void)
wl_callback_get_user_data =
  hs_bindgen_575c54180f0b0812

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_callback_get_version@
foreign import ccall safe "hs_bindgen_b86394b959b12c0e" hs_bindgen_b86394b959b12c0e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_callback_get_version@
hs_bindgen_b86394b959b12c0e ::
     RIP.Ptr Wl_callback
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_b86394b959b12c0e =
  RIP.fromFFIType hs_bindgen_b86394b959b12c0e_base

{-| __C declaration:__ @wl_callback_get_version@

    __defined at:__ @wayland-client-protocol.h 1296:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_get_version ::
     RIP.Ptr Wl_callback
     -- ^ __C declaration:__ @wl_callback@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_callback_get_version = hs_bindgen_b86394b959b12c0e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_callback_destroy@
foreign import ccall safe "hs_bindgen_8c385fa9bcf03739" hs_bindgen_8c385fa9bcf03739_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_callback_destroy@
hs_bindgen_8c385fa9bcf03739 ::
     RIP.Ptr Wl_callback
  -> IO ()
hs_bindgen_8c385fa9bcf03739 =
  RIP.fromFFIType hs_bindgen_8c385fa9bcf03739_base

{-| __C declaration:__ @wl_callback_destroy@

    __defined at:__ @wayland-client-protocol.h 1303:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_destroy ::
     RIP.Ptr Wl_callback
     -- ^ __C declaration:__ @wl_callback@
  -> IO ()
wl_callback_destroy = hs_bindgen_8c385fa9bcf03739

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_compositor_set_user_data@
foreign import ccall safe "hs_bindgen_a510e3a22eb940c6" hs_bindgen_a510e3a22eb940c6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_compositor_set_user_data@
hs_bindgen_a510e3a22eb940c6 ::
     RIP.Ptr Wl_compositor
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_a510e3a22eb940c6 =
  RIP.fromFFIType hs_bindgen_a510e3a22eb940c6_base

{-| __C declaration:__ @wl_compositor_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1323:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_set_user_data ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_compositor_set_user_data =
  hs_bindgen_a510e3a22eb940c6

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_compositor_get_user_data@
foreign import ccall safe "hs_bindgen_a6e34087c1d61903" hs_bindgen_a6e34087c1d61903_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_compositor_get_user_data@
hs_bindgen_a6e34087c1d61903 ::
     RIP.Ptr Wl_compositor
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_a6e34087c1d61903 =
  RIP.fromFFIType hs_bindgen_a6e34087c1d61903_base

{-| __C declaration:__ @wl_compositor_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1330:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_get_user_data ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO (RIP.Ptr RIP.Void)
wl_compositor_get_user_data =
  hs_bindgen_a6e34087c1d61903

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_compositor_get_version@
foreign import ccall safe "hs_bindgen_269b4e978a912900" hs_bindgen_269b4e978a912900_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_compositor_get_version@
hs_bindgen_269b4e978a912900 ::
     RIP.Ptr Wl_compositor
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_269b4e978a912900 =
  RIP.fromFFIType hs_bindgen_269b4e978a912900_base

{-| __C declaration:__ @wl_compositor_get_version@

    __defined at:__ @wayland-client-protocol.h 1336:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_get_version ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_compositor_get_version =
  hs_bindgen_269b4e978a912900

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_compositor_destroy@
foreign import ccall safe "hs_bindgen_80c79e722f2e5547" hs_bindgen_80c79e722f2e5547_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_compositor_destroy@
hs_bindgen_80c79e722f2e5547 ::
     RIP.Ptr Wl_compositor
  -> IO ()
hs_bindgen_80c79e722f2e5547 =
  RIP.fromFFIType hs_bindgen_80c79e722f2e5547_base

{-| __C declaration:__ @wl_compositor_destroy@

    __defined at:__ @wayland-client-protocol.h 1343:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_destroy ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO ()
wl_compositor_destroy = hs_bindgen_80c79e722f2e5547

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_compositor_create_surface@
foreign import ccall safe "hs_bindgen_b4e5700d02405180" hs_bindgen_b4e5700d02405180_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_compositor_create_surface@
hs_bindgen_b4e5700d02405180 ::
     RIP.Ptr Wl_compositor
  -> IO (RIP.Ptr Wl_surface)
hs_bindgen_b4e5700d02405180 =
  RIP.fromFFIType hs_bindgen_b4e5700d02405180_base

{-| __C declaration:__ @wl_compositor_create_surface@

    __defined at:__ @wayland-client-protocol.h 1354:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_create_surface ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO (RIP.Ptr Wl_surface)
wl_compositor_create_surface =
  hs_bindgen_b4e5700d02405180

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_compositor_create_region@
foreign import ccall safe "hs_bindgen_64eccf2b309459cf" hs_bindgen_64eccf2b309459cf_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_compositor_create_region@
hs_bindgen_64eccf2b309459cf ::
     RIP.Ptr Wl_compositor
  -> IO (RIP.Ptr Wl_region)
hs_bindgen_64eccf2b309459cf =
  RIP.fromFFIType hs_bindgen_64eccf2b309459cf_base

{-| __C declaration:__ @wl_compositor_create_region@

    __defined at:__ @wayland-client-protocol.h 1370:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_create_region ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO (RIP.Ptr Wl_region)
wl_compositor_create_region =
  hs_bindgen_64eccf2b309459cf

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_set_user_data@
foreign import ccall safe "hs_bindgen_205154276db5a98c" hs_bindgen_205154276db5a98c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_set_user_data@
hs_bindgen_205154276db5a98c ::
     RIP.Ptr Wl_shm_pool
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_205154276db5a98c =
  RIP.fromFFIType hs_bindgen_205154276db5a98c_base

{-| __C declaration:__ @wl_shm_pool_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1400:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_set_user_data ::
     RIP.Ptr Wl_shm_pool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_shm_pool_set_user_data =
  hs_bindgen_205154276db5a98c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_get_user_data@
foreign import ccall safe "hs_bindgen_82c02e5245059d32" hs_bindgen_82c02e5245059d32_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_get_user_data@
hs_bindgen_82c02e5245059d32 ::
     RIP.Ptr Wl_shm_pool
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_82c02e5245059d32 =
  RIP.fromFFIType hs_bindgen_82c02e5245059d32_base

{-| __C declaration:__ @wl_shm_pool_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1407:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_get_user_data ::
     RIP.Ptr Wl_shm_pool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> IO (RIP.Ptr RIP.Void)
wl_shm_pool_get_user_data =
  hs_bindgen_82c02e5245059d32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_get_version@
foreign import ccall safe "hs_bindgen_df8c652a35f71061" hs_bindgen_df8c652a35f71061_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_get_version@
hs_bindgen_df8c652a35f71061 ::
     RIP.Ptr Wl_shm_pool
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_df8c652a35f71061 =
  RIP.fromFFIType hs_bindgen_df8c652a35f71061_base

{-| __C declaration:__ @wl_shm_pool_get_version@

    __defined at:__ @wayland-client-protocol.h 1413:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_get_version ::
     RIP.Ptr Wl_shm_pool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shm_pool_get_version = hs_bindgen_df8c652a35f71061

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_create_buffer@
foreign import ccall safe "hs_bindgen_c9f583077805ab2f" hs_bindgen_c9f583077805ab2f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_create_buffer@
hs_bindgen_c9f583077805ab2f ::
     RIP.Ptr Wl_shm_pool
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr Wl_buffer)
hs_bindgen_c9f583077805ab2f =
  RIP.fromFFIType hs_bindgen_c9f583077805ab2f_base

{-| __C declaration:__ @wl_shm_pool_create_buffer@

    __defined at:__ @wayland-client-protocol.h 1434:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_create_buffer ::
     RIP.Ptr Wl_shm_pool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @offset@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @height@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @stride@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @format@
  -> IO (RIP.Ptr Wl_buffer)
wl_shm_pool_create_buffer =
  hs_bindgen_c9f583077805ab2f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_destroy@
foreign import ccall safe "hs_bindgen_4393e876b108f2bf" hs_bindgen_4393e876b108f2bf_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_destroy@
hs_bindgen_4393e876b108f2bf ::
     RIP.Ptr Wl_shm_pool
  -> IO ()
hs_bindgen_4393e876b108f2bf =
  RIP.fromFFIType hs_bindgen_4393e876b108f2bf_base

{-| __C declaration:__ @wl_shm_pool_destroy@

    __defined at:__ @wayland-client-protocol.h 1454:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_destroy ::
     RIP.Ptr Wl_shm_pool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> IO ()
wl_shm_pool_destroy = hs_bindgen_4393e876b108f2bf

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_resize@
foreign import ccall safe "hs_bindgen_75236c5e893794c0" hs_bindgen_75236c5e893794c0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_resize@
hs_bindgen_75236c5e893794c0 ::
     RIP.Ptr Wl_shm_pool
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_75236c5e893794c0 =
  RIP.fromFFIType hs_bindgen_75236c5e893794c0_base

{-| __C declaration:__ @wl_shm_pool_resize@

    __defined at:__ @wayland-client-protocol.h 1475:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_resize ::
     RIP.Ptr Wl_shm_pool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @size@
  -> IO ()
wl_shm_pool_resize = hs_bindgen_75236c5e893794c0

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_add_listener@
foreign import ccall safe "hs_bindgen_a923c541743ea7ff" hs_bindgen_a923c541743ea7ff_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_add_listener@
hs_bindgen_a923c541743ea7ff ::
     RIP.Ptr Wl_shm
  -> PtrConst.PtrConst Wl_shm_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_a923c541743ea7ff =
  RIP.fromFFIType hs_bindgen_a923c541743ea7ff_base

{-| __C declaration:__ @wl_shm_add_listener@

    __defined at:__ @wayland-client-protocol.h 2005:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_add_listener ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> PtrConst.PtrConst Wl_shm_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_shm_add_listener = hs_bindgen_a923c541743ea7ff

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_set_user_data@
foreign import ccall safe "hs_bindgen_a91406b4d3218634" hs_bindgen_a91406b4d3218634_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_set_user_data@
hs_bindgen_a91406b4d3218634 ::
     RIP.Ptr Wl_shm
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_a91406b4d3218634 =
  RIP.fromFFIType hs_bindgen_a91406b4d3218634_base

{-| __C declaration:__ @wl_shm_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2031:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_set_user_data ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_shm_set_user_data = hs_bindgen_a91406b4d3218634

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_get_user_data@
foreign import ccall safe "hs_bindgen_9467ecef0dfd0cb0" hs_bindgen_9467ecef0dfd0cb0_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_get_user_data@
hs_bindgen_9467ecef0dfd0cb0 ::
     RIP.Ptr Wl_shm
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_9467ecef0dfd0cb0 =
  RIP.fromFFIType hs_bindgen_9467ecef0dfd0cb0_base

{-| __C declaration:__ @wl_shm_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2038:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_get_user_data ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> IO (RIP.Ptr RIP.Void)
wl_shm_get_user_data = hs_bindgen_9467ecef0dfd0cb0

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_get_version@
foreign import ccall safe "hs_bindgen_e122a188b598bd10" hs_bindgen_e122a188b598bd10_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_get_version@
hs_bindgen_e122a188b598bd10 ::
     RIP.Ptr Wl_shm
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_e122a188b598bd10 =
  RIP.fromFFIType hs_bindgen_e122a188b598bd10_base

{-| __C declaration:__ @wl_shm_get_version@

    __defined at:__ @wayland-client-protocol.h 2044:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_get_version ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shm_get_version = hs_bindgen_e122a188b598bd10

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_destroy@
foreign import ccall safe "hs_bindgen_558fdb46b8820a46" hs_bindgen_558fdb46b8820a46_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_destroy@
hs_bindgen_558fdb46b8820a46 ::
     RIP.Ptr Wl_shm
  -> IO ()
hs_bindgen_558fdb46b8820a46 =
  RIP.fromFFIType hs_bindgen_558fdb46b8820a46_base

{-| __C declaration:__ @wl_shm_destroy@

    __defined at:__ @wayland-client-protocol.h 2051:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_destroy ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> IO ()
wl_shm_destroy = hs_bindgen_558fdb46b8820a46

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_create_pool@
foreign import ccall safe "hs_bindgen_f1493f3b04e61e23" hs_bindgen_f1493f3b04e61e23_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_create_pool@
hs_bindgen_f1493f3b04e61e23 ::
     RIP.Ptr Wl_shm
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO (RIP.Ptr Wl_shm_pool)
hs_bindgen_f1493f3b04e61e23 =
  RIP.fromFFIType hs_bindgen_f1493f3b04e61e23_base

{-| __C declaration:__ @wl_shm_create_pool@

    __defined at:__ @wayland-client-protocol.h 2066:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_create_pool ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @fd@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @size@
  -> IO (RIP.Ptr Wl_shm_pool)
wl_shm_create_pool = hs_bindgen_f1493f3b04e61e23

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_release@
foreign import ccall safe "hs_bindgen_83dad28a6535f73f" hs_bindgen_83dad28a6535f73f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shm_release@
hs_bindgen_83dad28a6535f73f ::
     RIP.Ptr Wl_shm
  -> IO ()
hs_bindgen_83dad28a6535f73f =
  RIP.fromFFIType hs_bindgen_83dad28a6535f73f_base

{-| __C declaration:__ @wl_shm_release@

    __defined at:__ @wayland-client-protocol.h 2085:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_release ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> IO ()
wl_shm_release = hs_bindgen_83dad28a6535f73f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_buffer_add_listener@
foreign import ccall safe "hs_bindgen_e98212aee99f0ee8" hs_bindgen_e98212aee99f0ee8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_buffer_add_listener@
hs_bindgen_e98212aee99f0ee8 ::
     RIP.Ptr Wl_buffer
  -> PtrConst.PtrConst Wl_buffer_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_e98212aee99f0ee8 =
  RIP.fromFFIType hs_bindgen_e98212aee99f0ee8_base

{-| __C declaration:__ @wl_buffer_add_listener@

    __defined at:__ @wayland-client-protocol.h 2122:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_add_listener ::
     RIP.Ptr Wl_buffer
     -- ^ __C declaration:__ @wl_buffer@
  -> PtrConst.PtrConst Wl_buffer_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_buffer_add_listener = hs_bindgen_e98212aee99f0ee8

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_buffer_set_user_data@
foreign import ccall safe "hs_bindgen_d04ccf79e7dddeb3" hs_bindgen_d04ccf79e7dddeb3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_buffer_set_user_data@
hs_bindgen_d04ccf79e7dddeb3 ::
     RIP.Ptr Wl_buffer
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_d04ccf79e7dddeb3 =
  RIP.fromFFIType hs_bindgen_d04ccf79e7dddeb3_base

{-| __C declaration:__ @wl_buffer_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2143:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_set_user_data ::
     RIP.Ptr Wl_buffer
     -- ^ __C declaration:__ @wl_buffer@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_buffer_set_user_data = hs_bindgen_d04ccf79e7dddeb3

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_buffer_get_user_data@
foreign import ccall safe "hs_bindgen_7ec006b2b998d0aa" hs_bindgen_7ec006b2b998d0aa_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_buffer_get_user_data@
hs_bindgen_7ec006b2b998d0aa ::
     RIP.Ptr Wl_buffer
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_7ec006b2b998d0aa =
  RIP.fromFFIType hs_bindgen_7ec006b2b998d0aa_base

{-| __C declaration:__ @wl_buffer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2150:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_get_user_data ::
     RIP.Ptr Wl_buffer
     -- ^ __C declaration:__ @wl_buffer@
  -> IO (RIP.Ptr RIP.Void)
wl_buffer_get_user_data = hs_bindgen_7ec006b2b998d0aa

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_buffer_get_version@
foreign import ccall safe "hs_bindgen_4351919d92013de1" hs_bindgen_4351919d92013de1_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_buffer_get_version@
hs_bindgen_4351919d92013de1 ::
     RIP.Ptr Wl_buffer
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_4351919d92013de1 =
  RIP.fromFFIType hs_bindgen_4351919d92013de1_base

{-| __C declaration:__ @wl_buffer_get_version@

    __defined at:__ @wayland-client-protocol.h 2156:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_get_version ::
     RIP.Ptr Wl_buffer
     -- ^ __C declaration:__ @wl_buffer@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_buffer_get_version = hs_bindgen_4351919d92013de1

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_buffer_destroy@
foreign import ccall safe "hs_bindgen_1973c12d21d14d85" hs_bindgen_1973c12d21d14d85_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_buffer_destroy@
hs_bindgen_1973c12d21d14d85 ::
     RIP.Ptr Wl_buffer
  -> IO ()
hs_bindgen_1973c12d21d14d85 =
  RIP.fromFFIType hs_bindgen_1973c12d21d14d85_base

{-| __C declaration:__ @wl_buffer_destroy@

    __defined at:__ @wayland-client-protocol.h 2170:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_destroy ::
     RIP.Ptr Wl_buffer
     -- ^ __C declaration:__ @wl_buffer@
  -> IO ()
wl_buffer_destroy = hs_bindgen_1973c12d21d14d85

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_add_listener@
foreign import ccall safe "hs_bindgen_ae3f22c8f06de743" hs_bindgen_ae3f22c8f06de743_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_add_listener@
hs_bindgen_ae3f22c8f06de743 ::
     RIP.Ptr Wl_data_offer
  -> PtrConst.PtrConst Wl_data_offer_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_ae3f22c8f06de743 =
  RIP.fromFFIType hs_bindgen_ae3f22c8f06de743_base

{-| __C declaration:__ @wl_data_offer_add_listener@

    __defined at:__ @wayland-client-protocol.h 2278:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_add_listener ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> PtrConst.PtrConst Wl_data_offer_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_data_offer_add_listener =
  hs_bindgen_ae3f22c8f06de743

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_set_user_data@
foreign import ccall safe "hs_bindgen_87845098cdcabf2b" hs_bindgen_87845098cdcabf2b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_set_user_data@
hs_bindgen_87845098cdcabf2b ::
     RIP.Ptr Wl_data_offer
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_87845098cdcabf2b =
  RIP.fromFFIType hs_bindgen_87845098cdcabf2b_base

{-| __C declaration:__ @wl_data_offer_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2327:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_set_user_data ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_data_offer_set_user_data =
  hs_bindgen_87845098cdcabf2b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_get_user_data@
foreign import ccall safe "hs_bindgen_a31f2122863ccf2c" hs_bindgen_a31f2122863ccf2c_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_get_user_data@
hs_bindgen_a31f2122863ccf2c ::
     RIP.Ptr Wl_data_offer
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_a31f2122863ccf2c =
  RIP.fromFFIType hs_bindgen_a31f2122863ccf2c_base

{-| __C declaration:__ @wl_data_offer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2334:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_get_user_data ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO (RIP.Ptr RIP.Void)
wl_data_offer_get_user_data =
  hs_bindgen_a31f2122863ccf2c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_get_version@
foreign import ccall safe "hs_bindgen_25b1dfa683856f77" hs_bindgen_25b1dfa683856f77_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_get_version@
hs_bindgen_25b1dfa683856f77 ::
     RIP.Ptr Wl_data_offer
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_25b1dfa683856f77 =
  RIP.fromFFIType hs_bindgen_25b1dfa683856f77_base

{-| __C declaration:__ @wl_data_offer_get_version@

    __defined at:__ @wayland-client-protocol.h 2340:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_get_version ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_offer_get_version =
  hs_bindgen_25b1dfa683856f77

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_accept@
foreign import ccall safe "hs_bindgen_f130fc15072a7700" hs_bindgen_f130fc15072a7700_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_accept@
hs_bindgen_f130fc15072a7700 ::
     RIP.Ptr Wl_data_offer
  -> HsBindgen.Runtime.LibC.Word32
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_f130fc15072a7700 =
  RIP.fromFFIType hs_bindgen_f130fc15072a7700_base

{-| __C declaration:__ @wl_data_offer_accept@

    __defined at:__ @wayland-client-protocol.h 2364:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_accept ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @mime_type@
  -> IO ()
wl_data_offer_accept = hs_bindgen_f130fc15072a7700

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_receive@
foreign import ccall safe "hs_bindgen_e5607d7a7a97eb5b" hs_bindgen_e5607d7a7a97eb5b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_receive@
hs_bindgen_e5607d7a7a97eb5b ::
     RIP.Ptr Wl_data_offer
  -> PtrConst.PtrConst RIP.CChar
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_e5607d7a7a97eb5b =
  RIP.fromFFIType hs_bindgen_e5607d7a7a97eb5b_base

{-| __C declaration:__ @wl_data_offer_receive@

    __defined at:__ @wayland-client-protocol.h 2390:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_receive ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @mime_type@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @fd@
  -> IO ()
wl_data_offer_receive = hs_bindgen_e5607d7a7a97eb5b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_destroy@
foreign import ccall safe "hs_bindgen_24cb8f62680a08c7" hs_bindgen_24cb8f62680a08c7_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_destroy@
hs_bindgen_24cb8f62680a08c7 ::
     RIP.Ptr Wl_data_offer
  -> IO ()
hs_bindgen_24cb8f62680a08c7 =
  RIP.fromFFIType hs_bindgen_24cb8f62680a08c7_base

{-| __C declaration:__ @wl_data_offer_destroy@

    __defined at:__ @wayland-client-protocol.h 2402:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_destroy ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO ()
wl_data_offer_destroy = hs_bindgen_24cb8f62680a08c7

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_finish@
foreign import ccall safe "hs_bindgen_fdc70b565265c32c" hs_bindgen_fdc70b565265c32c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_finish@
hs_bindgen_fdc70b565265c32c ::
     RIP.Ptr Wl_data_offer
  -> IO ()
hs_bindgen_fdc70b565265c32c =
  RIP.fromFFIType hs_bindgen_fdc70b565265c32c_base

{-| __C declaration:__ @wl_data_offer_finish@

    __defined at:__ @wayland-client-protocol.h 2427:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_finish ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO ()
wl_data_offer_finish = hs_bindgen_fdc70b565265c32c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_set_actions@
foreign import ccall safe "hs_bindgen_6bb43344b73eeda8" hs_bindgen_6bb43344b73eeda8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_set_actions@
hs_bindgen_6bb43344b73eeda8 ::
     RIP.Ptr Wl_data_offer
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_6bb43344b73eeda8 =
  RIP.fromFFIType hs_bindgen_6bb43344b73eeda8_base

{-| __C declaration:__ @wl_data_offer_set_actions@

    __defined at:__ @wayland-client-protocol.h 2469:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_set_actions ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @dnd_actions@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @preferred_action@
  -> IO ()
wl_data_offer_set_actions =
  hs_bindgen_6bb43344b73eeda8

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_source_add_listener@
foreign import ccall safe "hs_bindgen_1e220d7ed6c62d18" hs_bindgen_1e220d7ed6c62d18_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_source_add_listener@
hs_bindgen_1e220d7ed6c62d18 ::
     RIP.Ptr Wl_data_source
  -> PtrConst.PtrConst Wl_data_source_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_1e220d7ed6c62d18 =
  RIP.fromFFIType hs_bindgen_1e220d7ed6c62d18_base

{-| __C declaration:__ @wl_data_source_add_listener@

    __defined at:__ @wayland-client-protocol.h 2617:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_add_listener ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> PtrConst.PtrConst Wl_data_source_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_data_source_add_listener =
  hs_bindgen_1e220d7ed6c62d18

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_source_set_user_data@
foreign import ccall safe "hs_bindgen_c918067eae83ab08" hs_bindgen_c918067eae83ab08_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_source_set_user_data@
hs_bindgen_c918067eae83ab08 ::
     RIP.Ptr Wl_data_source
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_c918067eae83ab08 =
  RIP.fromFFIType hs_bindgen_c918067eae83ab08_base

{-| __C declaration:__ @wl_data_source_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2668:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_set_user_data ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_data_source_set_user_data =
  hs_bindgen_c918067eae83ab08

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_source_get_user_data@
foreign import ccall safe "hs_bindgen_42819627aa1de90e" hs_bindgen_42819627aa1de90e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_source_get_user_data@
hs_bindgen_42819627aa1de90e ::
     RIP.Ptr Wl_data_source
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_42819627aa1de90e =
  RIP.fromFFIType hs_bindgen_42819627aa1de90e_base

{-| __C declaration:__ @wl_data_source_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2675:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_get_user_data ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> IO (RIP.Ptr RIP.Void)
wl_data_source_get_user_data =
  hs_bindgen_42819627aa1de90e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_source_get_version@
foreign import ccall safe "hs_bindgen_33b2ef1e2a13059a" hs_bindgen_33b2ef1e2a13059a_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_source_get_version@
hs_bindgen_33b2ef1e2a13059a ::
     RIP.Ptr Wl_data_source
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_33b2ef1e2a13059a =
  RIP.fromFFIType hs_bindgen_33b2ef1e2a13059a_base

{-| __C declaration:__ @wl_data_source_get_version@

    __defined at:__ @wayland-client-protocol.h 2681:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_get_version ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_source_get_version =
  hs_bindgen_33b2ef1e2a13059a

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_source_offer@
foreign import ccall safe "hs_bindgen_69146ce56f4b481e" hs_bindgen_69146ce56f4b481e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_source_offer@
hs_bindgen_69146ce56f4b481e ::
     RIP.Ptr Wl_data_source
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_69146ce56f4b481e =
  RIP.fromFFIType hs_bindgen_69146ce56f4b481e_base

{-| __C declaration:__ @wl_data_source_offer@

    __defined at:__ @wayland-client-protocol.h 2694:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_offer ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @mime_type@
  -> IO ()
wl_data_source_offer = hs_bindgen_69146ce56f4b481e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_source_destroy@
foreign import ccall safe "hs_bindgen_a237abc34f2e3532" hs_bindgen_a237abc34f2e3532_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_source_destroy@
hs_bindgen_a237abc34f2e3532 ::
     RIP.Ptr Wl_data_source
  -> IO ()
hs_bindgen_a237abc34f2e3532 =
  RIP.fromFFIType hs_bindgen_a237abc34f2e3532_base

{-| __C declaration:__ @wl_data_source_destroy@

    __defined at:__ @wayland-client-protocol.h 2706:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_destroy ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> IO ()
wl_data_source_destroy = hs_bindgen_a237abc34f2e3532

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_source_set_actions@
foreign import ccall safe "hs_bindgen_ffbc22a2d0125940" hs_bindgen_ffbc22a2d0125940_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_source_set_actions@
hs_bindgen_ffbc22a2d0125940 ::
     RIP.Ptr Wl_data_source
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_ffbc22a2d0125940 =
  RIP.fromFFIType hs_bindgen_ffbc22a2d0125940_base

{-| __C declaration:__ @wl_data_source_set_actions@

    __defined at:__ @wayland-client-protocol.h 2730:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_set_actions ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @dnd_actions@
  -> IO ()
wl_data_source_set_actions =
  hs_bindgen_ffbc22a2d0125940

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_add_listener@
foreign import ccall safe "hs_bindgen_e39b97ecd4b94a3b" hs_bindgen_e39b97ecd4b94a3b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_add_listener@
hs_bindgen_e39b97ecd4b94a3b ::
     RIP.Ptr Wl_data_device
  -> PtrConst.PtrConst Wl_data_device_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_e39b97ecd4b94a3b =
  RIP.fromFFIType hs_bindgen_e39b97ecd4b94a3b_base

{-| __C declaration:__ @wl_data_device_add_listener@

    __defined at:__ @wayland-client-protocol.h 2860:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_add_listener ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> PtrConst.PtrConst Wl_data_device_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_data_device_add_listener =
  hs_bindgen_e39b97ecd4b94a3b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_set_user_data@
foreign import ccall safe "hs_bindgen_5f166e204af07293" hs_bindgen_5f166e204af07293_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_set_user_data@
hs_bindgen_5f166e204af07293 ::
     RIP.Ptr Wl_data_device
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_5f166e204af07293 =
  RIP.fromFFIType hs_bindgen_5f166e204af07293_base

{-| __C declaration:__ @wl_data_device_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2911:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_set_user_data ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_data_device_set_user_data =
  hs_bindgen_5f166e204af07293

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_get_user_data@
foreign import ccall safe "hs_bindgen_3c0b0334740af575" hs_bindgen_3c0b0334740af575_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_get_user_data@
hs_bindgen_3c0b0334740af575 ::
     RIP.Ptr Wl_data_device
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_3c0b0334740af575 =
  RIP.fromFFIType hs_bindgen_3c0b0334740af575_base

{-| __C declaration:__ @wl_data_device_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2918:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_get_user_data ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> IO (RIP.Ptr RIP.Void)
wl_data_device_get_user_data =
  hs_bindgen_3c0b0334740af575

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_get_version@
foreign import ccall safe "hs_bindgen_d847048f71fcbde8" hs_bindgen_d847048f71fcbde8_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_get_version@
hs_bindgen_d847048f71fcbde8 ::
     RIP.Ptr Wl_data_device
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_d847048f71fcbde8 =
  RIP.fromFFIType hs_bindgen_d847048f71fcbde8_base

{-| __C declaration:__ @wl_data_device_get_version@

    __defined at:__ @wayland-client-protocol.h 2924:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_get_version ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_device_get_version =
  hs_bindgen_d847048f71fcbde8

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_destroy@
foreign import ccall safe "hs_bindgen_a385df1265b4d803" hs_bindgen_a385df1265b4d803_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_destroy@
hs_bindgen_a385df1265b4d803 ::
     RIP.Ptr Wl_data_device
  -> IO ()
hs_bindgen_a385df1265b4d803 =
  RIP.fromFFIType hs_bindgen_a385df1265b4d803_base

{-| __C declaration:__ @wl_data_device_destroy@

    __defined at:__ @wayland-client-protocol.h 2931:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_destroy ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> IO ()
wl_data_device_destroy = hs_bindgen_a385df1265b4d803

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_start_drag@
foreign import ccall safe "hs_bindgen_2392193f23f9fbf8" hs_bindgen_2392193f23f9fbf8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_start_drag@
hs_bindgen_2392193f23f9fbf8 ::
     RIP.Ptr Wl_data_device
  -> RIP.Ptr Wl_data_source
  -> RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_2392193f23f9fbf8 =
  RIP.fromFFIType hs_bindgen_2392193f23f9fbf8_base

{-| __C declaration:__ @wl_data_device_start_drag@

    __defined at:__ @wayland-client-protocol.h 2970:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_start_drag ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @source@
  -> RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @origin@
  -> RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @icon@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> IO ()
wl_data_device_start_drag =
  hs_bindgen_2392193f23f9fbf8

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_set_selection@
foreign import ccall safe "hs_bindgen_55817c18c0450b2c" hs_bindgen_55817c18c0450b2c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_set_selection@
hs_bindgen_55817c18c0450b2c ::
     RIP.Ptr Wl_data_device
  -> RIP.Ptr Wl_data_source
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_55817c18c0450b2c =
  RIP.fromFFIType hs_bindgen_55817c18c0450b2c_base

{-| __C declaration:__ @wl_data_device_set_selection@

    __defined at:__ @wayland-client-protocol.h 2989:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_set_selection ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @source@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> IO ()
wl_data_device_set_selection =
  hs_bindgen_55817c18c0450b2c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_release@
foreign import ccall safe "hs_bindgen_1f112138da3258fb" hs_bindgen_1f112138da3258fb_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_release@
hs_bindgen_1f112138da3258fb ::
     RIP.Ptr Wl_data_device
  -> IO ()
hs_bindgen_1f112138da3258fb =
  RIP.fromFFIType hs_bindgen_1f112138da3258fb_base

{-| __C declaration:__ @wl_data_device_release@

    __defined at:__ @wayland-client-protocol.h 3001:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_release ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> IO ()
wl_data_device_release = hs_bindgen_1f112138da3258fb

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_set_user_data@
foreign import ccall safe "hs_bindgen_e080b45ed0712390" hs_bindgen_e080b45ed0712390_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_set_user_data@
hs_bindgen_e080b45ed0712390 ::
     RIP.Ptr Wl_data_device_manager
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_e080b45ed0712390 =
  RIP.fromFFIType hs_bindgen_e080b45ed0712390_base

{-| __C declaration:__ @wl_data_device_manager_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3072:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_set_user_data ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_data_device_manager_set_user_data =
  hs_bindgen_e080b45ed0712390

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_get_user_data@
foreign import ccall safe "hs_bindgen_89e0dd9f1d8879bb" hs_bindgen_89e0dd9f1d8879bb_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_get_user_data@
hs_bindgen_89e0dd9f1d8879bb ::
     RIP.Ptr Wl_data_device_manager
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_89e0dd9f1d8879bb =
  RIP.fromFFIType hs_bindgen_89e0dd9f1d8879bb_base

{-| __C declaration:__ @wl_data_device_manager_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3079:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_user_data ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO (RIP.Ptr RIP.Void)
wl_data_device_manager_get_user_data =
  hs_bindgen_89e0dd9f1d8879bb

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_get_version@
foreign import ccall safe "hs_bindgen_f1ab9ef79222200b" hs_bindgen_f1ab9ef79222200b_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_get_version@
hs_bindgen_f1ab9ef79222200b ::
     RIP.Ptr Wl_data_device_manager
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_f1ab9ef79222200b =
  RIP.fromFFIType hs_bindgen_f1ab9ef79222200b_base

{-| __C declaration:__ @wl_data_device_manager_get_version@

    __defined at:__ @wayland-client-protocol.h 3085:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_version ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_device_manager_get_version =
  hs_bindgen_f1ab9ef79222200b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_destroy@
foreign import ccall safe "hs_bindgen_07fe2d3a922c2c91" hs_bindgen_07fe2d3a922c2c91_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_destroy@
hs_bindgen_07fe2d3a922c2c91 ::
     RIP.Ptr Wl_data_device_manager
  -> IO ()
hs_bindgen_07fe2d3a922c2c91 =
  RIP.fromFFIType hs_bindgen_07fe2d3a922c2c91_base

{-| __C declaration:__ @wl_data_device_manager_destroy@

    __defined at:__ @wayland-client-protocol.h 3092:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_destroy ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO ()
wl_data_device_manager_destroy =
  hs_bindgen_07fe2d3a922c2c91

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_create_data_source@
foreign import ccall safe "hs_bindgen_6822fd7201522b09" hs_bindgen_6822fd7201522b09_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_create_data_source@
hs_bindgen_6822fd7201522b09 ::
     RIP.Ptr Wl_data_device_manager
  -> IO (RIP.Ptr Wl_data_source)
hs_bindgen_6822fd7201522b09 =
  RIP.fromFFIType hs_bindgen_6822fd7201522b09_base

{-| __C declaration:__ @wl_data_device_manager_create_data_source@

    __defined at:__ @wayland-client-protocol.h 3103:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_create_data_source ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO (RIP.Ptr Wl_data_source)
wl_data_device_manager_create_data_source =
  hs_bindgen_6822fd7201522b09

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_get_data_device@
foreign import ccall safe "hs_bindgen_135584503dd2fe83" hs_bindgen_135584503dd2fe83_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_get_data_device@
hs_bindgen_135584503dd2fe83 ::
     RIP.Ptr Wl_data_device_manager
  -> RIP.Ptr Wl_seat
  -> IO (RIP.Ptr Wl_data_device)
hs_bindgen_135584503dd2fe83 =
  RIP.fromFFIType hs_bindgen_135584503dd2fe83_base

{-| __C declaration:__ @wl_data_device_manager_get_data_device@

    __defined at:__ @wayland-client-protocol.h 3119:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_data_device ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @seat@
  -> IO (RIP.Ptr Wl_data_device)
wl_data_device_manager_get_data_device =
  hs_bindgen_135584503dd2fe83

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_set_user_data@
foreign import ccall safe "hs_bindgen_3489a21d9ef9a295" hs_bindgen_3489a21d9ef9a295_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_set_user_data@
hs_bindgen_3489a21d9ef9a295 ::
     RIP.Ptr Wl_shell
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_3489a21d9ef9a295 =
  RIP.fromFFIType hs_bindgen_3489a21d9ef9a295_base

{-| __C declaration:__ @wl_shell_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3149:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_set_user_data ::
     RIP.Ptr Wl_shell
     -- ^ __C declaration:__ @wl_shell@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_shell_set_user_data = hs_bindgen_3489a21d9ef9a295

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_get_user_data@
foreign import ccall safe "hs_bindgen_1d08abbfdb10bdee" hs_bindgen_1d08abbfdb10bdee_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_get_user_data@
hs_bindgen_1d08abbfdb10bdee ::
     RIP.Ptr Wl_shell
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_1d08abbfdb10bdee =
  RIP.fromFFIType hs_bindgen_1d08abbfdb10bdee_base

{-| __C declaration:__ @wl_shell_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3156:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_get_user_data ::
     RIP.Ptr Wl_shell
     -- ^ __C declaration:__ @wl_shell@
  -> IO (RIP.Ptr RIP.Void)
wl_shell_get_user_data = hs_bindgen_1d08abbfdb10bdee

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_get_version@
foreign import ccall safe "hs_bindgen_570e6265686b5081" hs_bindgen_570e6265686b5081_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_get_version@
hs_bindgen_570e6265686b5081 ::
     RIP.Ptr Wl_shell
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_570e6265686b5081 =
  RIP.fromFFIType hs_bindgen_570e6265686b5081_base

{-| __C declaration:__ @wl_shell_get_version@

    __defined at:__ @wayland-client-protocol.h 3162:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_get_version ::
     RIP.Ptr Wl_shell
     -- ^ __C declaration:__ @wl_shell@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shell_get_version = hs_bindgen_570e6265686b5081

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_destroy@
foreign import ccall safe "hs_bindgen_ec5dea43b5498e0b" hs_bindgen_ec5dea43b5498e0b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_destroy@
hs_bindgen_ec5dea43b5498e0b ::
     RIP.Ptr Wl_shell
  -> IO ()
hs_bindgen_ec5dea43b5498e0b =
  RIP.fromFFIType hs_bindgen_ec5dea43b5498e0b_base

{-| __C declaration:__ @wl_shell_destroy@

    __defined at:__ @wayland-client-protocol.h 3169:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_destroy ::
     RIP.Ptr Wl_shell
     -- ^ __C declaration:__ @wl_shell@
  -> IO ()
wl_shell_destroy = hs_bindgen_ec5dea43b5498e0b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_get_shell_surface@
foreign import ccall safe "hs_bindgen_3f4c200d8e7126ea" hs_bindgen_3f4c200d8e7126ea_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_get_shell_surface@
hs_bindgen_3f4c200d8e7126ea ::
     RIP.Ptr Wl_shell
  -> RIP.Ptr Wl_surface
  -> IO (RIP.Ptr Wl_shell_surface)
hs_bindgen_3f4c200d8e7126ea =
  RIP.fromFFIType hs_bindgen_3f4c200d8e7126ea_base

{-| __C declaration:__ @wl_shell_get_shell_surface@

    __defined at:__ @wayland-client-protocol.h 3184:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_get_shell_surface ::
     RIP.Ptr Wl_shell
     -- ^ __C declaration:__ @wl_shell@
  -> RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @surface@
  -> IO (RIP.Ptr Wl_shell_surface)
wl_shell_get_shell_surface =
  hs_bindgen_3f4c200d8e7126ea

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_add_listener@
foreign import ccall safe "hs_bindgen_d662922bb98fce55" hs_bindgen_d662922bb98fce55_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_add_listener@
hs_bindgen_d662922bb98fce55 ::
     RIP.Ptr Wl_shell_surface
  -> PtrConst.PtrConst Wl_shell_surface_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_d662922bb98fce55 =
  RIP.fromFFIType hs_bindgen_d662922bb98fce55_base

{-| __C declaration:__ @wl_shell_surface_add_listener@

    __defined at:__ @wayland-client-protocol.h 3351:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_add_listener ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> PtrConst.PtrConst Wl_shell_surface_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_shell_surface_add_listener =
  hs_bindgen_d662922bb98fce55

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_user_data@
foreign import ccall safe "hs_bindgen_a0a052e8a3e0ae8b" hs_bindgen_a0a052e8a3e0ae8b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_user_data@
hs_bindgen_a0a052e8a3e0ae8b ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_a0a052e8a3e0ae8b =
  RIP.fromFFIType hs_bindgen_a0a052e8a3e0ae8b_base

{-| __C declaration:__ @wl_shell_surface_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3425:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_user_data ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_shell_surface_set_user_data =
  hs_bindgen_a0a052e8a3e0ae8b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_get_user_data@
foreign import ccall safe "hs_bindgen_25dc36ecc4bbd0c7" hs_bindgen_25dc36ecc4bbd0c7_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_get_user_data@
hs_bindgen_25dc36ecc4bbd0c7 ::
     RIP.Ptr Wl_shell_surface
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_25dc36ecc4bbd0c7 =
  RIP.fromFFIType hs_bindgen_25dc36ecc4bbd0c7_base

{-| __C declaration:__ @wl_shell_surface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3432:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_get_user_data ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO (RIP.Ptr RIP.Void)
wl_shell_surface_get_user_data =
  hs_bindgen_25dc36ecc4bbd0c7

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_get_version@
foreign import ccall safe "hs_bindgen_211afcaf3eaf723d" hs_bindgen_211afcaf3eaf723d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_get_version@
hs_bindgen_211afcaf3eaf723d ::
     RIP.Ptr Wl_shell_surface
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_211afcaf3eaf723d =
  RIP.fromFFIType hs_bindgen_211afcaf3eaf723d_base

{-| __C declaration:__ @wl_shell_surface_get_version@

    __defined at:__ @wayland-client-protocol.h 3438:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_get_version ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shell_surface_get_version =
  hs_bindgen_211afcaf3eaf723d

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_destroy@
foreign import ccall safe "hs_bindgen_0cb59d081da222fc" hs_bindgen_0cb59d081da222fc_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_destroy@
hs_bindgen_0cb59d081da222fc ::
     RIP.Ptr Wl_shell_surface
  -> IO ()
hs_bindgen_0cb59d081da222fc =
  RIP.fromFFIType hs_bindgen_0cb59d081da222fc_base

{-| __C declaration:__ @wl_shell_surface_destroy@

    __defined at:__ @wayland-client-protocol.h 3445:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_destroy ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO ()
wl_shell_surface_destroy =
  hs_bindgen_0cb59d081da222fc

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_pong@
foreign import ccall safe "hs_bindgen_dd7702f8d9a7a2ce" hs_bindgen_dd7702f8d9a7a2ce_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_pong@
hs_bindgen_dd7702f8d9a7a2ce ::
     RIP.Ptr Wl_shell_surface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_dd7702f8d9a7a2ce =
  RIP.fromFFIType hs_bindgen_dd7702f8d9a7a2ce_base

{-| __C declaration:__ @wl_shell_surface_pong@

    __defined at:__ @wayland-client-protocol.h 3457:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_pong ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> IO ()
wl_shell_surface_pong = hs_bindgen_dd7702f8d9a7a2ce

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_move@
foreign import ccall safe "hs_bindgen_a096ff2aa00f2c66" hs_bindgen_a096ff2aa00f2c66_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_move@
hs_bindgen_a096ff2aa00f2c66 ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_seat
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_a096ff2aa00f2c66 =
  RIP.fromFFIType hs_bindgen_a096ff2aa00f2c66_base

{-| __C declaration:__ @wl_shell_surface_move@

    __defined at:__ @wayland-client-protocol.h 3473:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_move ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @seat@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> IO ()
wl_shell_surface_move = hs_bindgen_a096ff2aa00f2c66

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_resize@
foreign import ccall safe "hs_bindgen_64785b2bf4651646" hs_bindgen_64785b2bf4651646_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_resize@
hs_bindgen_64785b2bf4651646 ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_seat
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_64785b2bf4651646 =
  RIP.fromFFIType hs_bindgen_64785b2bf4651646_base

{-| __C declaration:__ @wl_shell_surface_resize@

    __defined at:__ @wayland-client-protocol.h 3489:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_resize ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @seat@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @edges@
  -> IO ()
wl_shell_surface_resize = hs_bindgen_64785b2bf4651646

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_toplevel@
foreign import ccall safe "hs_bindgen_165a04f74f6a8227" hs_bindgen_165a04f74f6a8227_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_toplevel@
hs_bindgen_165a04f74f6a8227 ::
     RIP.Ptr Wl_shell_surface
  -> IO ()
hs_bindgen_165a04f74f6a8227 =
  RIP.fromFFIType hs_bindgen_165a04f74f6a8227_base

{-| __C declaration:__ @wl_shell_surface_set_toplevel@

    __defined at:__ @wayland-client-protocol.h 3503:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_toplevel ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO ()
wl_shell_surface_set_toplevel =
  hs_bindgen_165a04f74f6a8227

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_transient@
foreign import ccall safe "hs_bindgen_aa7e47c238e28c08" hs_bindgen_aa7e47c238e28c08_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_transient@
hs_bindgen_aa7e47c238e28c08 ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_aa7e47c238e28c08 =
  RIP.fromFFIType hs_bindgen_aa7e47c238e28c08_base

{-| __C declaration:__ @wl_shell_surface_set_transient@

    __defined at:__ @wayland-client-protocol.h 3521:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_transient ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @parent@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @flags@
  -> IO ()
wl_shell_surface_set_transient =
  hs_bindgen_aa7e47c238e28c08

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_fullscreen@
foreign import ccall safe "hs_bindgen_13bad46dbf7103fc" hs_bindgen_13bad46dbf7103fc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_fullscreen@
hs_bindgen_13bad46dbf7103fc ::
     RIP.Ptr Wl_shell_surface
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Wl_output
  -> IO ()
hs_bindgen_13bad46dbf7103fc =
  RIP.fromFFIType hs_bindgen_13bad46dbf7103fc_base

{-| __C declaration:__ @wl_shell_surface_set_fullscreen@

    __defined at:__ @wayland-client-protocol.h 3565:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_fullscreen ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @method@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @framerate@
  -> RIP.Ptr Wl_output
     -- ^ __C declaration:__ @output@
  -> IO ()
wl_shell_surface_set_fullscreen =
  hs_bindgen_13bad46dbf7103fc

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_popup@
foreign import ccall safe "hs_bindgen_25a280775305e83c" hs_bindgen_25a280775305e83c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_popup@
hs_bindgen_25a280775305e83c ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_seat
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_25a280775305e83c =
  RIP.fromFFIType hs_bindgen_25a280775305e83c_base

{-| __C declaration:__ @wl_shell_surface_set_popup@

    __defined at:__ @wayland-client-protocol.h 3595:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_popup ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @seat@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @parent@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @flags@
  -> IO ()
wl_shell_surface_set_popup =
  hs_bindgen_25a280775305e83c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_maximized@
foreign import ccall safe "hs_bindgen_7e34584d62a2b43a" hs_bindgen_7e34584d62a2b43a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_maximized@
hs_bindgen_7e34584d62a2b43a ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_output
  -> IO ()
hs_bindgen_7e34584d62a2b43a =
  RIP.fromFFIType hs_bindgen_7e34584d62a2b43a_base

{-| __C declaration:__ @wl_shell_surface_set_maximized@

    __defined at:__ @wayland-client-protocol.h 3624:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_maximized ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> RIP.Ptr Wl_output
     -- ^ __C declaration:__ @output@
  -> IO ()
wl_shell_surface_set_maximized =
  hs_bindgen_7e34584d62a2b43a

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_title@
foreign import ccall safe "hs_bindgen_ebabb07cfa2b8fbc" hs_bindgen_ebabb07cfa2b8fbc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_title@
hs_bindgen_ebabb07cfa2b8fbc ::
     RIP.Ptr Wl_shell_surface
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_ebabb07cfa2b8fbc =
  RIP.fromFFIType hs_bindgen_ebabb07cfa2b8fbc_base

{-| __C declaration:__ @wl_shell_surface_set_title@

    __defined at:__ @wayland-client-protocol.h 3642:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_title ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @title@
  -> IO ()
wl_shell_surface_set_title =
  hs_bindgen_ebabb07cfa2b8fbc

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_class@
foreign import ccall safe "hs_bindgen_20515759484937bc" hs_bindgen_20515759484937bc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_class@
hs_bindgen_20515759484937bc ::
     RIP.Ptr Wl_shell_surface
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_20515759484937bc =
  RIP.fromFFIType hs_bindgen_20515759484937bc_base

{-| __C declaration:__ @wl_shell_surface_set_class@

    __defined at:__ @wayland-client-protocol.h 3659:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_class ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @class_@
  -> IO ()
wl_shell_surface_set_class =
  hs_bindgen_20515759484937bc

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_add_listener@
foreign import ccall safe "hs_bindgen_740ab6aac9194efc" hs_bindgen_740ab6aac9194efc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_add_listener@
hs_bindgen_740ab6aac9194efc ::
     RIP.Ptr Wl_surface
  -> PtrConst.PtrConst Wl_surface_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_740ab6aac9194efc =
  RIP.fromFFIType hs_bindgen_740ab6aac9194efc_base

{-| __C declaration:__ @wl_surface_add_listener@

    __defined at:__ @wayland-client-protocol.h 3780:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_add_listener ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> PtrConst.PtrConst Wl_surface_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_surface_add_listener = hs_bindgen_740ab6aac9194efc

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_set_user_data@
foreign import ccall safe "hs_bindgen_f0a8a4b4e271bc0f" hs_bindgen_f0a8a4b4e271bc0f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_set_user_data@
hs_bindgen_f0a8a4b4e271bc0f ::
     RIP.Ptr Wl_surface
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_f0a8a4b4e271bc0f =
  RIP.fromFFIType hs_bindgen_f0a8a4b4e271bc0f_base

{-| __C declaration:__ @wl_surface_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3863:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_set_user_data ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_surface_set_user_data =
  hs_bindgen_f0a8a4b4e271bc0f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_get_user_data@
foreign import ccall safe "hs_bindgen_28cd0198105d0fef" hs_bindgen_28cd0198105d0fef_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_get_user_data@
hs_bindgen_28cd0198105d0fef ::
     RIP.Ptr Wl_surface
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_28cd0198105d0fef =
  RIP.fromFFIType hs_bindgen_28cd0198105d0fef_base

{-| __C declaration:__ @wl_surface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3870:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_get_user_data ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO (RIP.Ptr RIP.Void)
wl_surface_get_user_data =
  hs_bindgen_28cd0198105d0fef

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_get_version@
foreign import ccall safe "hs_bindgen_59c22f98a7bc4627" hs_bindgen_59c22f98a7bc4627_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_get_version@
hs_bindgen_59c22f98a7bc4627 ::
     RIP.Ptr Wl_surface
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_59c22f98a7bc4627 =
  RIP.fromFFIType hs_bindgen_59c22f98a7bc4627_base

{-| __C declaration:__ @wl_surface_get_version@

    __defined at:__ @wayland-client-protocol.h 3876:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_get_version ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_surface_get_version = hs_bindgen_59c22f98a7bc4627

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_destroy@
foreign import ccall safe "hs_bindgen_4989313584df6b73" hs_bindgen_4989313584df6b73_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_destroy@
hs_bindgen_4989313584df6b73 ::
     RIP.Ptr Wl_surface
  -> IO ()
hs_bindgen_4989313584df6b73 =
  RIP.fromFFIType hs_bindgen_4989313584df6b73_base

{-| __C declaration:__ @wl_surface_destroy@

    __defined at:__ @wayland-client-protocol.h 3887:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_destroy ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO ()
wl_surface_destroy = hs_bindgen_4989313584df6b73

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_attach@
foreign import ccall safe "hs_bindgen_658e93f198624474" hs_bindgen_658e93f198624474_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_attach@
hs_bindgen_658e93f198624474 ::
     RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_buffer
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_658e93f198624474 =
  RIP.fromFFIType hs_bindgen_658e93f198624474_base

{-| __C declaration:__ @wl_surface_attach@

    __defined at:__ @wayland-client-protocol.h 3963:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_attach ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> RIP.Ptr Wl_buffer
     -- ^ __C declaration:__ @buffer@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> IO ()
wl_surface_attach = hs_bindgen_658e93f198624474

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_damage@
foreign import ccall safe "hs_bindgen_e979d71d02ff28f4" hs_bindgen_e979d71d02ff28f4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_damage@
hs_bindgen_e979d71d02ff28f4 ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_e979d71d02ff28f4 =
  RIP.fromFFIType hs_bindgen_e979d71d02ff28f4_base

{-| __C declaration:__ @wl_surface_damage@

    __defined at:__ @wayland-client-protocol.h 3995:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_damage ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @height@
  -> IO ()
wl_surface_damage = hs_bindgen_e979d71d02ff28f4

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_frame@
foreign import ccall safe "hs_bindgen_506173ce127930e8" hs_bindgen_506173ce127930e8_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_frame@
hs_bindgen_506173ce127930e8 ::
     RIP.Ptr Wl_surface
  -> IO (RIP.Ptr Wl_callback)
hs_bindgen_506173ce127930e8 =
  RIP.fromFFIType hs_bindgen_506173ce127930e8_base

{-| __C declaration:__ @wl_surface_frame@

    __defined at:__ @wayland-client-protocol.h 4038:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_frame ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO (RIP.Ptr Wl_callback)
wl_surface_frame = hs_bindgen_506173ce127930e8

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_set_opaque_region@
foreign import ccall safe "hs_bindgen_c833338257941a59" hs_bindgen_c833338257941a59_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_set_opaque_region@
hs_bindgen_c833338257941a59 ::
     RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_region
  -> IO ()
hs_bindgen_c833338257941a59 =
  RIP.fromFFIType hs_bindgen_c833338257941a59_base

{-| __C declaration:__ @wl_surface_set_opaque_region@

    __defined at:__ @wayland-client-protocol.h 4077:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_set_opaque_region ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> RIP.Ptr Wl_region
     -- ^ __C declaration:__ @region@
  -> IO ()
wl_surface_set_opaque_region =
  hs_bindgen_c833338257941a59

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_set_input_region@
foreign import ccall safe "hs_bindgen_a58701948293ae17" hs_bindgen_a58701948293ae17_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_set_input_region@
hs_bindgen_a58701948293ae17 ::
     RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_region
  -> IO ()
hs_bindgen_a58701948293ae17 =
  RIP.fromFFIType hs_bindgen_a58701948293ae17_base

{-| __C declaration:__ @wl_surface_set_input_region@

    __defined at:__ @wayland-client-protocol.h 4110:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_set_input_region ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> RIP.Ptr Wl_region
     -- ^ __C declaration:__ @region@
  -> IO ()
wl_surface_set_input_region =
  hs_bindgen_a58701948293ae17

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_commit@
foreign import ccall safe "hs_bindgen_4a2c0ae850cf12aa" hs_bindgen_4a2c0ae850cf12aa_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_commit@
hs_bindgen_4a2c0ae850cf12aa ::
     RIP.Ptr Wl_surface
  -> IO ()
hs_bindgen_4a2c0ae850cf12aa =
  RIP.fromFFIType hs_bindgen_4a2c0ae850cf12aa_base

{-| __C declaration:__ @wl_surface_commit@

    __defined at:__ @wayland-client-protocol.h 4140:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_commit ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO ()
wl_surface_commit = hs_bindgen_4a2c0ae850cf12aa

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_set_buffer_transform@
foreign import ccall safe "hs_bindgen_95792d267cb501ff" hs_bindgen_95792d267cb501ff_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_set_buffer_transform@
hs_bindgen_95792d267cb501ff ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_95792d267cb501ff =
  RIP.fromFFIType hs_bindgen_95792d267cb501ff_base

{-| __C declaration:__ @wl_surface_set_buffer_transform@

    __defined at:__ @wayland-client-protocol.h 4182:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_set_buffer_transform ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @transform@
  -> IO ()
wl_surface_set_buffer_transform =
  hs_bindgen_95792d267cb501ff

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_set_buffer_scale@
foreign import ccall safe "hs_bindgen_1b0414c7a35c0f03" hs_bindgen_1b0414c7a35c0f03_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_set_buffer_scale@
hs_bindgen_1b0414c7a35c0f03 ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_1b0414c7a35c0f03 =
  RIP.fromFFIType hs_bindgen_1b0414c7a35c0f03_base

{-| __C declaration:__ @wl_surface_set_buffer_scale@

    __defined at:__ @wayland-client-protocol.h 4216:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_set_buffer_scale ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @scale@
  -> IO ()
wl_surface_set_buffer_scale =
  hs_bindgen_1b0414c7a35c0f03

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_damage_buffer@
foreign import ccall safe "hs_bindgen_894788ac87fc702b" hs_bindgen_894788ac87fc702b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_damage_buffer@
hs_bindgen_894788ac87fc702b ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_894788ac87fc702b =
  RIP.fromFFIType hs_bindgen_894788ac87fc702b_base

{-| __C declaration:__ @wl_surface_damage_buffer@

    __defined at:__ @wayland-client-protocol.h 4259:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_damage_buffer ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @height@
  -> IO ()
wl_surface_damage_buffer =
  hs_bindgen_894788ac87fc702b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_offset@
foreign import ccall safe "hs_bindgen_95843727e4e49924" hs_bindgen_95843727e4e49924_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_surface_offset@
hs_bindgen_95843727e4e49924 ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_95843727e4e49924 =
  RIP.fromFFIType hs_bindgen_95843727e4e49924_base

{-| __C declaration:__ @wl_surface_offset@

    __defined at:__ @wayland-client-protocol.h 4285:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_offset ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> IO ()
wl_surface_offset = hs_bindgen_95843727e4e49924

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_seat_add_listener@
foreign import ccall safe "hs_bindgen_b7d2eae7b29ef34d" hs_bindgen_b7d2eae7b29ef34d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_seat_add_listener@
hs_bindgen_b7d2eae7b29ef34d ::
     RIP.Ptr Wl_seat
  -> PtrConst.PtrConst Wl_seat_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_b7d2eae7b29ef34d =
  RIP.fromFFIType hs_bindgen_b7d2eae7b29ef34d_base

{-| __C declaration:__ @wl_seat_add_listener@

    __defined at:__ @wayland-client-protocol.h 4406:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_add_listener ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> PtrConst.PtrConst Wl_seat_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_seat_add_listener = hs_bindgen_b7d2eae7b29ef34d

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_seat_set_user_data@
foreign import ccall safe "hs_bindgen_88808ecd9fad0924" hs_bindgen_88808ecd9fad0924_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_seat_set_user_data@
hs_bindgen_88808ecd9fad0924 ::
     RIP.Ptr Wl_seat
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_88808ecd9fad0924 =
  RIP.fromFFIType hs_bindgen_88808ecd9fad0924_base

{-| __C declaration:__ @wl_seat_set_user_data@

    __defined at:__ @wayland-client-protocol.h 4446:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_set_user_data ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_seat_set_user_data = hs_bindgen_88808ecd9fad0924

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_seat_get_user_data@
foreign import ccall safe "hs_bindgen_f3c9aeb257be87fe" hs_bindgen_f3c9aeb257be87fe_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_seat_get_user_data@
hs_bindgen_f3c9aeb257be87fe ::
     RIP.Ptr Wl_seat
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_f3c9aeb257be87fe =
  RIP.fromFFIType hs_bindgen_f3c9aeb257be87fe_base

{-| __C declaration:__ @wl_seat_get_user_data@

    __defined at:__ @wayland-client-protocol.h 4453:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_user_data ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO (RIP.Ptr RIP.Void)
wl_seat_get_user_data = hs_bindgen_f3c9aeb257be87fe

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_seat_get_version@
foreign import ccall safe "hs_bindgen_808a43c633c732eb" hs_bindgen_808a43c633c732eb_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_seat_get_version@
hs_bindgen_808a43c633c732eb ::
     RIP.Ptr Wl_seat
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_808a43c633c732eb =
  RIP.fromFFIType hs_bindgen_808a43c633c732eb_base

{-| __C declaration:__ @wl_seat_get_version@

    __defined at:__ @wayland-client-protocol.h 4459:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_version ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_seat_get_version = hs_bindgen_808a43c633c732eb

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_seat_destroy@
foreign import ccall safe "hs_bindgen_5090d492fcc2ded5" hs_bindgen_5090d492fcc2ded5_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_seat_destroy@
hs_bindgen_5090d492fcc2ded5 ::
     RIP.Ptr Wl_seat
  -> IO ()
hs_bindgen_5090d492fcc2ded5 =
  RIP.fromFFIType hs_bindgen_5090d492fcc2ded5_base

{-| __C declaration:__ @wl_seat_destroy@

    __defined at:__ @wayland-client-protocol.h 4466:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_destroy ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO ()
wl_seat_destroy = hs_bindgen_5090d492fcc2ded5

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_seat_get_pointer@
foreign import ccall safe "hs_bindgen_8bc3b746a7121aa3" hs_bindgen_8bc3b746a7121aa3_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_seat_get_pointer@
hs_bindgen_8bc3b746a7121aa3 ::
     RIP.Ptr Wl_seat
  -> IO (RIP.Ptr Wl_pointer)
hs_bindgen_8bc3b746a7121aa3 =
  RIP.fromFFIType hs_bindgen_8bc3b746a7121aa3_base

{-| __C declaration:__ @wl_seat_get_pointer@

    __defined at:__ @wayland-client-protocol.h 4484:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_pointer ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO (RIP.Ptr Wl_pointer)
wl_seat_get_pointer = hs_bindgen_8bc3b746a7121aa3

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_seat_get_keyboard@
foreign import ccall safe "hs_bindgen_e247290689fa6d2d" hs_bindgen_e247290689fa6d2d_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_seat_get_keyboard@
hs_bindgen_e247290689fa6d2d ::
     RIP.Ptr Wl_seat
  -> IO (RIP.Ptr Wl_keyboard)
hs_bindgen_e247290689fa6d2d =
  RIP.fromFFIType hs_bindgen_e247290689fa6d2d_base

{-| __C declaration:__ @wl_seat_get_keyboard@

    __defined at:__ @wayland-client-protocol.h 4507:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_keyboard ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO (RIP.Ptr Wl_keyboard)
wl_seat_get_keyboard = hs_bindgen_e247290689fa6d2d

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_seat_get_touch@
foreign import ccall safe "hs_bindgen_d00b6ce2f7e21cad" hs_bindgen_d00b6ce2f7e21cad_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_seat_get_touch@
hs_bindgen_d00b6ce2f7e21cad ::
     RIP.Ptr Wl_seat
  -> IO (RIP.Ptr Wl_touch)
hs_bindgen_d00b6ce2f7e21cad =
  RIP.fromFFIType hs_bindgen_d00b6ce2f7e21cad_base

{-| __C declaration:__ @wl_seat_get_touch@

    __defined at:__ @wayland-client-protocol.h 4530:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_touch ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO (RIP.Ptr Wl_touch)
wl_seat_get_touch = hs_bindgen_d00b6ce2f7e21cad

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_seat_release@
foreign import ccall safe "hs_bindgen_b3451dfa9d411051" hs_bindgen_b3451dfa9d411051_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_seat_release@
hs_bindgen_b3451dfa9d411051 ::
     RIP.Ptr Wl_seat
  -> IO ()
hs_bindgen_b3451dfa9d411051 =
  RIP.fromFFIType hs_bindgen_b3451dfa9d411051_base

{-| __C declaration:__ @wl_seat_release@

    __defined at:__ @wayland-client-protocol.h 4547:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_release ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO ()
wl_seat_release = hs_bindgen_b3451dfa9d411051

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_pointer_add_listener@
foreign import ccall safe "hs_bindgen_594f1b233a027c8b" hs_bindgen_594f1b233a027c8b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_pointer_add_listener@
hs_bindgen_594f1b233a027c8b ::
     RIP.Ptr Wl_pointer
  -> PtrConst.PtrConst Wl_pointer_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_594f1b233a027c8b =
  RIP.fromFFIType hs_bindgen_594f1b233a027c8b_base

{-| __C declaration:__ @wl_pointer_add_listener@

    __defined at:__ @wayland-client-protocol.h 5010:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_add_listener ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> PtrConst.PtrConst Wl_pointer_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_pointer_add_listener = hs_bindgen_594f1b233a027c8b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_pointer_set_user_data@
foreign import ccall safe "hs_bindgen_8f7a8e7647a408dd" hs_bindgen_8f7a8e7647a408dd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_pointer_set_user_data@
hs_bindgen_8f7a8e7647a408dd ::
     RIP.Ptr Wl_pointer
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_8f7a8e7647a408dd =
  RIP.fromFFIType hs_bindgen_8f7a8e7647a408dd_base

{-| __C declaration:__ @wl_pointer_set_user_data@

    __defined at:__ @wayland-client-protocol.h 5076:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_set_user_data ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_pointer_set_user_data =
  hs_bindgen_8f7a8e7647a408dd

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_pointer_get_user_data@
foreign import ccall safe "hs_bindgen_f421e01e3e8d95a9" hs_bindgen_f421e01e3e8d95a9_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_pointer_get_user_data@
hs_bindgen_f421e01e3e8d95a9 ::
     RIP.Ptr Wl_pointer
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_f421e01e3e8d95a9 =
  RIP.fromFFIType hs_bindgen_f421e01e3e8d95a9_base

{-| __C declaration:__ @wl_pointer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5083:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_get_user_data ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO (RIP.Ptr RIP.Void)
wl_pointer_get_user_data =
  hs_bindgen_f421e01e3e8d95a9

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_pointer_get_version@
foreign import ccall safe "hs_bindgen_6613d6229317f3ea" hs_bindgen_6613d6229317f3ea_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_pointer_get_version@
hs_bindgen_6613d6229317f3ea ::
     RIP.Ptr Wl_pointer
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_6613d6229317f3ea =
  RIP.fromFFIType hs_bindgen_6613d6229317f3ea_base

{-| __C declaration:__ @wl_pointer_get_version@

    __defined at:__ @wayland-client-protocol.h 5089:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_get_version ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_pointer_get_version = hs_bindgen_6613d6229317f3ea

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_pointer_destroy@
foreign import ccall safe "hs_bindgen_acf8de268c201589" hs_bindgen_acf8de268c201589_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_pointer_destroy@
hs_bindgen_acf8de268c201589 ::
     RIP.Ptr Wl_pointer
  -> IO ()
hs_bindgen_acf8de268c201589 =
  RIP.fromFFIType hs_bindgen_acf8de268c201589_base

{-| __C declaration:__ @wl_pointer_destroy@

    __defined at:__ @wayland-client-protocol.h 5096:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_destroy ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO ()
wl_pointer_destroy = hs_bindgen_acf8de268c201589

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_pointer_set_cursor@
foreign import ccall safe "hs_bindgen_7133668453b731cc" hs_bindgen_7133668453b731cc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_pointer_set_cursor@
hs_bindgen_7133668453b731cc ::
     RIP.Ptr Wl_pointer
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_7133668453b731cc =
  RIP.fromFFIType hs_bindgen_7133668453b731cc_base

{-| __C declaration:__ @wl_pointer_set_cursor@

    __defined at:__ @wayland-client-protocol.h 5139:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_set_cursor ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @surface@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @hotspot_x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @hotspot_y@
  -> IO ()
wl_pointer_set_cursor = hs_bindgen_7133668453b731cc

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_pointer_release@
foreign import ccall safe "hs_bindgen_585683dab0b07401" hs_bindgen_585683dab0b07401_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_pointer_release@
hs_bindgen_585683dab0b07401 ::
     RIP.Ptr Wl_pointer
  -> IO ()
hs_bindgen_585683dab0b07401 =
  RIP.fromFFIType hs_bindgen_585683dab0b07401_base

{-| __C declaration:__ @wl_pointer_release@

    __defined at:__ @wayland-client-protocol.h 5155:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_release ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO ()
wl_pointer_release = hs_bindgen_585683dab0b07401

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_add_listener@
foreign import ccall safe "hs_bindgen_62f58e11f3712370" hs_bindgen_62f58e11f3712370_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_add_listener@
hs_bindgen_62f58e11f3712370 ::
     RIP.Ptr Wl_keyboard
  -> PtrConst.PtrConst Wl_keyboard_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_62f58e11f3712370 =
  RIP.fromFFIType hs_bindgen_62f58e11f3712370_base

{-| __C declaration:__ @wl_keyboard_add_listener@

    __defined at:__ @wayland-client-protocol.h 5385:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_add_listener ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> PtrConst.PtrConst Wl_keyboard_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_keyboard_add_listener =
  hs_bindgen_62f58e11f3712370

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_set_user_data@
foreign import ccall safe "hs_bindgen_5d5286a3ed5d6318" hs_bindgen_5d5286a3ed5d6318_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_set_user_data@
hs_bindgen_5d5286a3ed5d6318 ::
     RIP.Ptr Wl_keyboard
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_5d5286a3ed5d6318 =
  RIP.fromFFIType hs_bindgen_5d5286a3ed5d6318_base

{-| __C declaration:__ @wl_keyboard_set_user_data@

    __defined at:__ @wayland-client-protocol.h 5426:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_set_user_data ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_keyboard_set_user_data =
  hs_bindgen_5d5286a3ed5d6318

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_get_user_data@
foreign import ccall safe "hs_bindgen_fc4797b1ce93eba8" hs_bindgen_fc4797b1ce93eba8_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_get_user_data@
hs_bindgen_fc4797b1ce93eba8 ::
     RIP.Ptr Wl_keyboard
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_fc4797b1ce93eba8 =
  RIP.fromFFIType hs_bindgen_fc4797b1ce93eba8_base

{-| __C declaration:__ @wl_keyboard_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5433:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_get_user_data ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO (RIP.Ptr RIP.Void)
wl_keyboard_get_user_data =
  hs_bindgen_fc4797b1ce93eba8

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_get_version@
foreign import ccall safe "hs_bindgen_02a917aa47448a5e" hs_bindgen_02a917aa47448a5e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_get_version@
hs_bindgen_02a917aa47448a5e ::
     RIP.Ptr Wl_keyboard
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_02a917aa47448a5e =
  RIP.fromFFIType hs_bindgen_02a917aa47448a5e_base

{-| __C declaration:__ @wl_keyboard_get_version@

    __defined at:__ @wayland-client-protocol.h 5439:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_get_version ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_keyboard_get_version = hs_bindgen_02a917aa47448a5e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_destroy@
foreign import ccall safe "hs_bindgen_179d3832b06d2227" hs_bindgen_179d3832b06d2227_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_destroy@
hs_bindgen_179d3832b06d2227 ::
     RIP.Ptr Wl_keyboard
  -> IO ()
hs_bindgen_179d3832b06d2227 =
  RIP.fromFFIType hs_bindgen_179d3832b06d2227_base

{-| __C declaration:__ @wl_keyboard_destroy@

    __defined at:__ @wayland-client-protocol.h 5446:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_destroy ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO ()
wl_keyboard_destroy = hs_bindgen_179d3832b06d2227

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_release@
foreign import ccall safe "hs_bindgen_70e622747762269c" hs_bindgen_70e622747762269c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_release@
hs_bindgen_70e622747762269c ::
     RIP.Ptr Wl_keyboard
  -> IO ()
hs_bindgen_70e622747762269c =
  RIP.fromFFIType hs_bindgen_70e622747762269c_base

{-| __C declaration:__ @wl_keyboard_release@

    __defined at:__ @wayland-client-protocol.h 5455:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_release ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO ()
wl_keyboard_release = hs_bindgen_70e622747762269c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_touch_add_listener@
foreign import ccall safe "hs_bindgen_77cb6a25b6b04995" hs_bindgen_77cb6a25b6b04995_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_touch_add_listener@
hs_bindgen_77cb6a25b6b04995 ::
     RIP.Ptr Wl_touch
  -> PtrConst.PtrConst Wl_touch_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_77cb6a25b6b04995 =
  RIP.fromFFIType hs_bindgen_77cb6a25b6b04995_base

{-| __C declaration:__ @wl_touch_add_listener@

    __defined at:__ @wayland-client-protocol.h 5625:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_add_listener ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> PtrConst.PtrConst Wl_touch_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_touch_add_listener = hs_bindgen_77cb6a25b6b04995

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_touch_set_user_data@
foreign import ccall safe "hs_bindgen_ab718dcf3a6be53a" hs_bindgen_ab718dcf3a6be53a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_touch_set_user_data@
hs_bindgen_ab718dcf3a6be53a ::
     RIP.Ptr Wl_touch
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_ab718dcf3a6be53a =
  RIP.fromFFIType hs_bindgen_ab718dcf3a6be53a_base

{-| __C declaration:__ @wl_touch_set_user_data@

    __defined at:__ @wayland-client-protocol.h 5670:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_set_user_data ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_touch_set_user_data = hs_bindgen_ab718dcf3a6be53a

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_touch_get_user_data@
foreign import ccall safe "hs_bindgen_542bd062da0bad43" hs_bindgen_542bd062da0bad43_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_touch_get_user_data@
hs_bindgen_542bd062da0bad43 ::
     RIP.Ptr Wl_touch
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_542bd062da0bad43 =
  RIP.fromFFIType hs_bindgen_542bd062da0bad43_base

{-| __C declaration:__ @wl_touch_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5677:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_get_user_data ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> IO (RIP.Ptr RIP.Void)
wl_touch_get_user_data = hs_bindgen_542bd062da0bad43

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_touch_get_version@
foreign import ccall safe "hs_bindgen_7a6a12134b703c32" hs_bindgen_7a6a12134b703c32_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_touch_get_version@
hs_bindgen_7a6a12134b703c32 ::
     RIP.Ptr Wl_touch
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_7a6a12134b703c32 =
  RIP.fromFFIType hs_bindgen_7a6a12134b703c32_base

{-| __C declaration:__ @wl_touch_get_version@

    __defined at:__ @wayland-client-protocol.h 5683:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_get_version ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_touch_get_version = hs_bindgen_7a6a12134b703c32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_touch_destroy@
foreign import ccall safe "hs_bindgen_580e270b86a3fb07" hs_bindgen_580e270b86a3fb07_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_touch_destroy@
hs_bindgen_580e270b86a3fb07 ::
     RIP.Ptr Wl_touch
  -> IO ()
hs_bindgen_580e270b86a3fb07 =
  RIP.fromFFIType hs_bindgen_580e270b86a3fb07_base

{-| __C declaration:__ @wl_touch_destroy@

    __defined at:__ @wayland-client-protocol.h 5690:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_destroy ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> IO ()
wl_touch_destroy = hs_bindgen_580e270b86a3fb07

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_touch_release@
foreign import ccall safe "hs_bindgen_e0e224d796cc81d5" hs_bindgen_e0e224d796cc81d5_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_touch_release@
hs_bindgen_e0e224d796cc81d5 ::
     RIP.Ptr Wl_touch
  -> IO ()
hs_bindgen_e0e224d796cc81d5 =
  RIP.fromFFIType hs_bindgen_e0e224d796cc81d5_base

{-| __C declaration:__ @wl_touch_release@

    __defined at:__ @wayland-client-protocol.h 5699:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_release ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> IO ()
wl_touch_release = hs_bindgen_e0e224d796cc81d5

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_output_add_listener@
foreign import ccall safe "hs_bindgen_73f035cf11576742" hs_bindgen_73f035cf11576742_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_output_add_listener@
hs_bindgen_73f035cf11576742 ::
     RIP.Ptr Wl_output
  -> PtrConst.PtrConst Wl_output_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_73f035cf11576742 =
  RIP.fromFFIType hs_bindgen_73f035cf11576742_base

{-| __C declaration:__ @wl_output_add_listener@

    __defined at:__ @wayland-client-protocol.h 6018:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_add_listener ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> PtrConst.PtrConst Wl_output_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_output_add_listener = hs_bindgen_73f035cf11576742

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_output_set_user_data@
foreign import ccall safe "hs_bindgen_e021d4f42256cbb6" hs_bindgen_e021d4f42256cbb6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_output_set_user_data@
hs_bindgen_e021d4f42256cbb6 ::
     RIP.Ptr Wl_output
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_e021d4f42256cbb6 =
  RIP.fromFFIType hs_bindgen_e021d4f42256cbb6_base

{-| __C declaration:__ @wl_output_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6059:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_set_user_data ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_output_set_user_data = hs_bindgen_e021d4f42256cbb6

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_output_get_user_data@
foreign import ccall safe "hs_bindgen_787d77feac2aaf61" hs_bindgen_787d77feac2aaf61_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_output_get_user_data@
hs_bindgen_787d77feac2aaf61 ::
     RIP.Ptr Wl_output
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_787d77feac2aaf61 =
  RIP.fromFFIType hs_bindgen_787d77feac2aaf61_base

{-| __C declaration:__ @wl_output_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6066:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_get_user_data ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> IO (RIP.Ptr RIP.Void)
wl_output_get_user_data = hs_bindgen_787d77feac2aaf61

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_output_get_version@
foreign import ccall safe "hs_bindgen_d01dca2ac608e0ea" hs_bindgen_d01dca2ac608e0ea_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_output_get_version@
hs_bindgen_d01dca2ac608e0ea ::
     RIP.Ptr Wl_output
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_d01dca2ac608e0ea =
  RIP.fromFFIType hs_bindgen_d01dca2ac608e0ea_base

{-| __C declaration:__ @wl_output_get_version@

    __defined at:__ @wayland-client-protocol.h 6072:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_get_version ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_output_get_version = hs_bindgen_d01dca2ac608e0ea

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_output_destroy@
foreign import ccall safe "hs_bindgen_041afde8e1eb0da9" hs_bindgen_041afde8e1eb0da9_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_output_destroy@
hs_bindgen_041afde8e1eb0da9 ::
     RIP.Ptr Wl_output
  -> IO ()
hs_bindgen_041afde8e1eb0da9 =
  RIP.fromFFIType hs_bindgen_041afde8e1eb0da9_base

{-| __C declaration:__ @wl_output_destroy@

    __defined at:__ @wayland-client-protocol.h 6079:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_destroy ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> IO ()
wl_output_destroy = hs_bindgen_041afde8e1eb0da9

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_output_release@
foreign import ccall safe "hs_bindgen_fe842249c88c98fd" hs_bindgen_fe842249c88c98fd_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_output_release@
hs_bindgen_fe842249c88c98fd ::
     RIP.Ptr Wl_output
  -> IO ()
hs_bindgen_fe842249c88c98fd =
  RIP.fromFFIType hs_bindgen_fe842249c88c98fd_base

{-| __C declaration:__ @wl_output_release@

    __defined at:__ @wayland-client-protocol.h 6091:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_release ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> IO ()
wl_output_release = hs_bindgen_fe842249c88c98fd

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_region_set_user_data@
foreign import ccall safe "hs_bindgen_bdaeae23c436cb2b" hs_bindgen_bdaeae23c436cb2b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_region_set_user_data@
hs_bindgen_bdaeae23c436cb2b ::
     RIP.Ptr Wl_region
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_bdaeae23c436cb2b =
  RIP.fromFFIType hs_bindgen_bdaeae23c436cb2b_base

{-| __C declaration:__ @wl_region_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6117:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_set_user_data ::
     RIP.Ptr Wl_region
     -- ^ __C declaration:__ @wl_region@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_region_set_user_data = hs_bindgen_bdaeae23c436cb2b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_region_get_user_data@
foreign import ccall safe "hs_bindgen_f7d71ae40b2dda30" hs_bindgen_f7d71ae40b2dda30_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_region_get_user_data@
hs_bindgen_f7d71ae40b2dda30 ::
     RIP.Ptr Wl_region
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_f7d71ae40b2dda30 =
  RIP.fromFFIType hs_bindgen_f7d71ae40b2dda30_base

{-| __C declaration:__ @wl_region_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6124:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_get_user_data ::
     RIP.Ptr Wl_region
     -- ^ __C declaration:__ @wl_region@
  -> IO (RIP.Ptr RIP.Void)
wl_region_get_user_data = hs_bindgen_f7d71ae40b2dda30

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_region_get_version@
foreign import ccall safe "hs_bindgen_40639ff56454a1e7" hs_bindgen_40639ff56454a1e7_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_region_get_version@
hs_bindgen_40639ff56454a1e7 ::
     RIP.Ptr Wl_region
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_40639ff56454a1e7 =
  RIP.fromFFIType hs_bindgen_40639ff56454a1e7_base

{-| __C declaration:__ @wl_region_get_version@

    __defined at:__ @wayland-client-protocol.h 6130:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_get_version ::
     RIP.Ptr Wl_region
     -- ^ __C declaration:__ @wl_region@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_region_get_version = hs_bindgen_40639ff56454a1e7

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_region_destroy@
foreign import ccall safe "hs_bindgen_486eb03f44d362ac" hs_bindgen_486eb03f44d362ac_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_region_destroy@
hs_bindgen_486eb03f44d362ac ::
     RIP.Ptr Wl_region
  -> IO ()
hs_bindgen_486eb03f44d362ac =
  RIP.fromFFIType hs_bindgen_486eb03f44d362ac_base

{-| __C declaration:__ @wl_region_destroy@

    __defined at:__ @wayland-client-protocol.h 6141:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_destroy ::
     RIP.Ptr Wl_region
     -- ^ __C declaration:__ @wl_region@
  -> IO ()
wl_region_destroy = hs_bindgen_486eb03f44d362ac

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_region_add@
foreign import ccall safe "hs_bindgen_fde387363e9d6750" hs_bindgen_fde387363e9d6750_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_region_add@
hs_bindgen_fde387363e9d6750 ::
     RIP.Ptr Wl_region
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_fde387363e9d6750 =
  RIP.fromFFIType hs_bindgen_fde387363e9d6750_base

{-| __C declaration:__ @wl_region_add@

    __defined at:__ @wayland-client-protocol.h 6153:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_add ::
     RIP.Ptr Wl_region
     -- ^ __C declaration:__ @wl_region@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @height@
  -> IO ()
wl_region_add = hs_bindgen_fde387363e9d6750

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_region_subtract@
foreign import ccall safe "hs_bindgen_39e278d8c0c6ecb5" hs_bindgen_39e278d8c0c6ecb5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_region_subtract@
hs_bindgen_39e278d8c0c6ecb5 ::
     RIP.Ptr Wl_region
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_39e278d8c0c6ecb5 =
  RIP.fromFFIType hs_bindgen_39e278d8c0c6ecb5_base

{-| __C declaration:__ @wl_region_subtract@

    __defined at:__ @wayland-client-protocol.h 6165:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_subtract ::
     RIP.Ptr Wl_region
     -- ^ __C declaration:__ @wl_region@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @height@
  -> IO ()
wl_region_subtract = hs_bindgen_39e278d8c0c6ecb5

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subcompositor_set_user_data@
foreign import ccall safe "hs_bindgen_4b0a19ab9107f836" hs_bindgen_4b0a19ab9107f836_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subcompositor_set_user_data@
hs_bindgen_4b0a19ab9107f836 ::
     RIP.Ptr Wl_subcompositor
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_4b0a19ab9107f836 =
  RIP.fromFFIType hs_bindgen_4b0a19ab9107f836_base

{-| __C declaration:__ @wl_subcompositor_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6200:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_set_user_data ::
     RIP.Ptr Wl_subcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_subcompositor_set_user_data =
  hs_bindgen_4b0a19ab9107f836

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subcompositor_get_user_data@
foreign import ccall safe "hs_bindgen_b2fc646a1b90bca5" hs_bindgen_b2fc646a1b90bca5_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subcompositor_get_user_data@
hs_bindgen_b2fc646a1b90bca5 ::
     RIP.Ptr Wl_subcompositor
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_b2fc646a1b90bca5 =
  RIP.fromFFIType hs_bindgen_b2fc646a1b90bca5_base

{-| __C declaration:__ @wl_subcompositor_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6207:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_user_data ::
     RIP.Ptr Wl_subcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> IO (RIP.Ptr RIP.Void)
wl_subcompositor_get_user_data =
  hs_bindgen_b2fc646a1b90bca5

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subcompositor_get_version@
foreign import ccall safe "hs_bindgen_5db42aa79d4ad119" hs_bindgen_5db42aa79d4ad119_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subcompositor_get_version@
hs_bindgen_5db42aa79d4ad119 ::
     RIP.Ptr Wl_subcompositor
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_5db42aa79d4ad119 =
  RIP.fromFFIType hs_bindgen_5db42aa79d4ad119_base

{-| __C declaration:__ @wl_subcompositor_get_version@

    __defined at:__ @wayland-client-protocol.h 6213:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_version ::
     RIP.Ptr Wl_subcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_subcompositor_get_version =
  hs_bindgen_5db42aa79d4ad119

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subcompositor_destroy@
foreign import ccall safe "hs_bindgen_0d72467af65a33a9" hs_bindgen_0d72467af65a33a9_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subcompositor_destroy@
hs_bindgen_0d72467af65a33a9 ::
     RIP.Ptr Wl_subcompositor
  -> IO ()
hs_bindgen_0d72467af65a33a9 =
  RIP.fromFFIType hs_bindgen_0d72467af65a33a9_base

{-| __C declaration:__ @wl_subcompositor_destroy@

    __defined at:__ @wayland-client-protocol.h 6226:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_destroy ::
     RIP.Ptr Wl_subcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> IO ()
wl_subcompositor_destroy =
  hs_bindgen_0d72467af65a33a9

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subcompositor_get_subsurface@
foreign import ccall safe "hs_bindgen_b7f245376e840582" hs_bindgen_b7f245376e840582_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subcompositor_get_subsurface@
hs_bindgen_b7f245376e840582 ::
     RIP.Ptr Wl_subcompositor
  -> RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_surface
  -> IO (RIP.Ptr Wl_subsurface)
hs_bindgen_b7f245376e840582 =
  RIP.fromFFIType hs_bindgen_b7f245376e840582_base

{-| __C declaration:__ @wl_subcompositor_get_subsurface@

    __defined at:__ @wayland-client-protocol.h 6256:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_subsurface ::
     RIP.Ptr Wl_subcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @surface@
  -> RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @parent@
  -> IO (RIP.Ptr Wl_subsurface)
wl_subcompositor_get_subsurface =
  hs_bindgen_b7f245376e840582

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_set_user_data@
foreign import ccall safe "hs_bindgen_764b7062a3535be8" hs_bindgen_764b7062a3535be8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_set_user_data@
hs_bindgen_764b7062a3535be8 ::
     RIP.Ptr Wl_subsurface
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_764b7062a3535be8 =
  RIP.fromFFIType hs_bindgen_764b7062a3535be8_base

{-| __C declaration:__ @wl_subsurface_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6311:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_user_data ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_subsurface_set_user_data =
  hs_bindgen_764b7062a3535be8

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_get_user_data@
foreign import ccall safe "hs_bindgen_f241379e3c8b9f02" hs_bindgen_f241379e3c8b9f02_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_get_user_data@
hs_bindgen_f241379e3c8b9f02 ::
     RIP.Ptr Wl_subsurface
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_f241379e3c8b9f02 =
  RIP.fromFFIType hs_bindgen_f241379e3c8b9f02_base

{-| __C declaration:__ @wl_subsurface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6318:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_get_user_data ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO (RIP.Ptr RIP.Void)
wl_subsurface_get_user_data =
  hs_bindgen_f241379e3c8b9f02

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_get_version@
foreign import ccall safe "hs_bindgen_28df81db98d48446" hs_bindgen_28df81db98d48446_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_get_version@
hs_bindgen_28df81db98d48446 ::
     RIP.Ptr Wl_subsurface
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_28df81db98d48446 =
  RIP.fromFFIType hs_bindgen_28df81db98d48446_base

{-| __C declaration:__ @wl_subsurface_get_version@

    __defined at:__ @wayland-client-protocol.h 6324:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_get_version ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_subsurface_get_version =
  hs_bindgen_28df81db98d48446

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_destroy@
foreign import ccall safe "hs_bindgen_af686a13ccd7fb4f" hs_bindgen_af686a13ccd7fb4f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_destroy@
hs_bindgen_af686a13ccd7fb4f ::
     RIP.Ptr Wl_subsurface
  -> IO ()
hs_bindgen_af686a13ccd7fb4f =
  RIP.fromFFIType hs_bindgen_af686a13ccd7fb4f_base

{-| __C declaration:__ @wl_subsurface_destroy@

    __defined at:__ @wayland-client-protocol.h 6338:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_destroy ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO ()
wl_subsurface_destroy = hs_bindgen_af686a13ccd7fb4f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_set_position@
foreign import ccall safe "hs_bindgen_3564871cb45445d6" hs_bindgen_3564871cb45445d6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_set_position@
hs_bindgen_3564871cb45445d6 ::
     RIP.Ptr Wl_subsurface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_3564871cb45445d6 =
  RIP.fromFFIType hs_bindgen_3564871cb45445d6_base

{-| __C declaration:__ @wl_subsurface_set_position@

    __defined at:__ @wayland-client-protocol.h 6363:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_position ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> IO ()
wl_subsurface_set_position =
  hs_bindgen_3564871cb45445d6

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_place_above@
foreign import ccall safe "hs_bindgen_9ad02e881e03fe7e" hs_bindgen_9ad02e881e03fe7e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_place_above@
hs_bindgen_9ad02e881e03fe7e ::
     RIP.Ptr Wl_subsurface
  -> RIP.Ptr Wl_surface
  -> IO ()
hs_bindgen_9ad02e881e03fe7e =
  RIP.fromFFIType hs_bindgen_9ad02e881e03fe7e_base

{-| __C declaration:__ @wl_subsurface_place_above@

    __defined at:__ @wayland-client-protocol.h 6387:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_place_above ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @sibling@
  -> IO ()
wl_subsurface_place_above =
  hs_bindgen_9ad02e881e03fe7e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_place_below@
foreign import ccall safe "hs_bindgen_1246e6c9c9bf3418" hs_bindgen_1246e6c9c9bf3418_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_place_below@
hs_bindgen_1246e6c9c9bf3418 ::
     RIP.Ptr Wl_subsurface
  -> RIP.Ptr Wl_surface
  -> IO ()
hs_bindgen_1246e6c9c9bf3418 =
  RIP.fromFFIType hs_bindgen_1246e6c9c9bf3418_base

{-| __C declaration:__ @wl_subsurface_place_below@

    __defined at:__ @wayland-client-protocol.h 6400:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_place_below ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @sibling@
  -> IO ()
wl_subsurface_place_below =
  hs_bindgen_1246e6c9c9bf3418

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_set_sync@
foreign import ccall safe "hs_bindgen_8d6eb88781020f2c" hs_bindgen_8d6eb88781020f2c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_set_sync@
hs_bindgen_8d6eb88781020f2c ::
     RIP.Ptr Wl_subsurface
  -> IO ()
hs_bindgen_8d6eb88781020f2c =
  RIP.fromFFIType hs_bindgen_8d6eb88781020f2c_base

{-| __C declaration:__ @wl_subsurface_set_sync@

    __defined at:__ @wayland-client-protocol.h 6424:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_sync ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO ()
wl_subsurface_set_sync = hs_bindgen_8d6eb88781020f2c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_set_desync@
foreign import ccall safe "hs_bindgen_67d9f17f7bd5a4d2" hs_bindgen_67d9f17f7bd5a4d2_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_set_desync@
hs_bindgen_67d9f17f7bd5a4d2 ::
     RIP.Ptr Wl_subsurface
  -> IO ()
hs_bindgen_67d9f17f7bd5a4d2 =
  RIP.fromFFIType hs_bindgen_67d9f17f7bd5a4d2_base

{-| __C declaration:__ @wl_subsurface_set_desync@

    __defined at:__ @wayland-client-protocol.h 6454:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_desync ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO ()
wl_subsurface_set_desync =
  hs_bindgen_67d9f17f7bd5a4d2

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_fixes_set_user_data@
foreign import ccall safe "hs_bindgen_5b3a62b9834e9038" hs_bindgen_5b3a62b9834e9038_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_fixes_set_user_data@
hs_bindgen_5b3a62b9834e9038 ::
     RIP.Ptr Wl_fixes
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_5b3a62b9834e9038 =
  RIP.fromFFIType hs_bindgen_5b3a62b9834e9038_base

{-| __C declaration:__ @wl_fixes_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6475:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_set_user_data ::
     RIP.Ptr Wl_fixes
     -- ^ __C declaration:__ @wl_fixes@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_fixes_set_user_data = hs_bindgen_5b3a62b9834e9038

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_fixes_get_user_data@
foreign import ccall safe "hs_bindgen_37c64b4ea2946ea1" hs_bindgen_37c64b4ea2946ea1_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_fixes_get_user_data@
hs_bindgen_37c64b4ea2946ea1 ::
     RIP.Ptr Wl_fixes
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_37c64b4ea2946ea1 =
  RIP.fromFFIType hs_bindgen_37c64b4ea2946ea1_base

{-| __C declaration:__ @wl_fixes_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6482:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_get_user_data ::
     RIP.Ptr Wl_fixes
     -- ^ __C declaration:__ @wl_fixes@
  -> IO (RIP.Ptr RIP.Void)
wl_fixes_get_user_data = hs_bindgen_37c64b4ea2946ea1

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_fixes_get_version@
foreign import ccall safe "hs_bindgen_3fd907c72a6c22bd" hs_bindgen_3fd907c72a6c22bd_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_fixes_get_version@
hs_bindgen_3fd907c72a6c22bd ::
     RIP.Ptr Wl_fixes
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_3fd907c72a6c22bd =
  RIP.fromFFIType hs_bindgen_3fd907c72a6c22bd_base

{-| __C declaration:__ @wl_fixes_get_version@

    __defined at:__ @wayland-client-protocol.h 6488:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_get_version ::
     RIP.Ptr Wl_fixes
     -- ^ __C declaration:__ @wl_fixes@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_fixes_get_version = hs_bindgen_3fd907c72a6c22bd

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_fixes_destroy@
foreign import ccall safe "hs_bindgen_81addaac0e4cc879" hs_bindgen_81addaac0e4cc879_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_fixes_destroy@
hs_bindgen_81addaac0e4cc879 ::
     RIP.Ptr Wl_fixes
  -> IO ()
hs_bindgen_81addaac0e4cc879 =
  RIP.fromFFIType hs_bindgen_81addaac0e4cc879_base

{-| __C declaration:__ @wl_fixes_destroy@

    __defined at:__ @wayland-client-protocol.h 6497:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_destroy ::
     RIP.Ptr Wl_fixes
     -- ^ __C declaration:__ @wl_fixes@
  -> IO ()
wl_fixes_destroy = hs_bindgen_81addaac0e4cc879

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_fixes_destroy_registry@
foreign import ccall safe "hs_bindgen_9472505275067d51" hs_bindgen_9472505275067d51_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Safe_wl_fixes_destroy_registry@
hs_bindgen_9472505275067d51 ::
     RIP.Ptr Wl_fixes
  -> RIP.Ptr Wl_registry
  -> IO ()
hs_bindgen_9472505275067d51 =
  RIP.fromFFIType hs_bindgen_9472505275067d51_base

{-| __C declaration:__ @wl_fixes_destroy_registry@

    __defined at:__ @wayland-client-protocol.h 6517:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_destroy_registry ::
     RIP.Ptr Wl_fixes
     -- ^ __C declaration:__ @wl_fixes@
  -> RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @registry@
  -> IO ()
wl_fixes_destroy_registry =
  hs_bindgen_9472505275067d51
