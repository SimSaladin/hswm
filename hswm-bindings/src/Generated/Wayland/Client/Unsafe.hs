{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Wayland.Client.Unsafe
    ( Generated.Wayland.Client.Unsafe.wl_event_queue_destroy
    , Generated.Wayland.Client.Unsafe.wl_proxy_marshal_array_flags
    , Generated.Wayland.Client.Unsafe.wl_proxy_marshal_array
    , Generated.Wayland.Client.Unsafe.wl_proxy_create
    , Generated.Wayland.Client.Unsafe.wl_proxy_create_wrapper
    , Generated.Wayland.Client.Unsafe.wl_proxy_wrapper_destroy
    , Generated.Wayland.Client.Unsafe.wl_proxy_marshal_array_constructor
    , Generated.Wayland.Client.Unsafe.wl_proxy_marshal_array_constructor_versioned
    , Generated.Wayland.Client.Unsafe.wl_proxy_destroy
    , Generated.Wayland.Client.Unsafe.wl_proxy_add_listener
    , Generated.Wayland.Client.Unsafe.wl_proxy_get_listener
    , Generated.Wayland.Client.Unsafe.wl_proxy_add_dispatcher
    , Generated.Wayland.Client.Unsafe.wl_proxy_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_proxy_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_proxy_get_version
    , Generated.Wayland.Client.Unsafe.wl_proxy_get_id
    , Generated.Wayland.Client.Unsafe.wl_proxy_set_tag
    , Generated.Wayland.Client.Unsafe.wl_proxy_get_tag
    , Generated.Wayland.Client.Unsafe.wl_proxy_get_class
    , Generated.Wayland.Client.Unsafe.wl_proxy_get_interface
    , Generated.Wayland.Client.Unsafe.wl_proxy_get_display
    , Generated.Wayland.Client.Unsafe.wl_proxy_set_queue
    , Generated.Wayland.Client.Unsafe.wl_proxy_get_queue
    , Generated.Wayland.Client.Unsafe.wl_event_queue_get_name
    , Generated.Wayland.Client.Unsafe.wl_display_connect
    , Generated.Wayland.Client.Unsafe.wl_display_connect_to_fd
    , Generated.Wayland.Client.Unsafe.wl_display_disconnect
    , Generated.Wayland.Client.Unsafe.wl_display_get_fd
    , Generated.Wayland.Client.Unsafe.wl_display_dispatch
    , Generated.Wayland.Client.Unsafe.wl_display_dispatch_queue
    , Generated.Wayland.Client.Unsafe.wl_display_dispatch_timeout
    , Generated.Wayland.Client.Unsafe.wl_display_dispatch_queue_timeout
    , Generated.Wayland.Client.Unsafe.wl_display_dispatch_queue_pending
    , Generated.Wayland.Client.Unsafe.wl_display_dispatch_pending
    , Generated.Wayland.Client.Unsafe.wl_display_get_error
    , Generated.Wayland.Client.Unsafe.wl_display_get_protocol_error
    , Generated.Wayland.Client.Unsafe.wl_display_flush
    , Generated.Wayland.Client.Unsafe.wl_display_roundtrip_queue
    , Generated.Wayland.Client.Unsafe.wl_display_roundtrip
    , Generated.Wayland.Client.Unsafe.wl_display_create_queue
    , Generated.Wayland.Client.Unsafe.wl_display_create_queue_with_name
    , Generated.Wayland.Client.Unsafe.wl_display_prepare_read_queue
    , Generated.Wayland.Client.Unsafe.wl_display_prepare_read
    , Generated.Wayland.Client.Unsafe.wl_display_cancel_read
    , Generated.Wayland.Client.Unsafe.wl_display_read_events
    , Generated.Wayland.Client.Unsafe.wl_display_set_max_buffer_size
    , Generated.Wayland.Client.Unsafe.wl_display_add_listener
    , Generated.Wayland.Client.Unsafe.wl_display_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_display_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_display_get_version
    , Generated.Wayland.Client.Unsafe.wl_display_sync
    , Generated.Wayland.Client.Unsafe.wl_display_get_registry
    , Generated.Wayland.Client.Unsafe.wl_registry_add_listener
    , Generated.Wayland.Client.Unsafe.wl_registry_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_registry_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_registry_get_version
    , Generated.Wayland.Client.Unsafe.wl_registry_destroy
    , Generated.Wayland.Client.Unsafe.wl_registry_bind
    , Generated.Wayland.Client.Unsafe.wl_callback_add_listener
    , Generated.Wayland.Client.Unsafe.wl_callback_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_callback_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_callback_get_version
    , Generated.Wayland.Client.Unsafe.wl_callback_destroy
    , Generated.Wayland.Client.Unsafe.wl_compositor_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_compositor_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_compositor_get_version
    , Generated.Wayland.Client.Unsafe.wl_compositor_destroy
    , Generated.Wayland.Client.Unsafe.wl_compositor_create_surface
    , Generated.Wayland.Client.Unsafe.wl_compositor_create_region
    , Generated.Wayland.Client.Unsafe.wl_shm_pool_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_shm_pool_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_shm_pool_get_version
    , Generated.Wayland.Client.Unsafe.wl_shm_pool_create_buffer
    , Generated.Wayland.Client.Unsafe.wl_shm_pool_destroy
    , Generated.Wayland.Client.Unsafe.wl_shm_pool_resize
    , Generated.Wayland.Client.Unsafe.wl_shm_add_listener
    , Generated.Wayland.Client.Unsafe.wl_shm_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_shm_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_shm_get_version
    , Generated.Wayland.Client.Unsafe.wl_shm_destroy
    , Generated.Wayland.Client.Unsafe.wl_shm_create_pool
    , Generated.Wayland.Client.Unsafe.wl_shm_release
    , Generated.Wayland.Client.Unsafe.wl_buffer_add_listener
    , Generated.Wayland.Client.Unsafe.wl_buffer_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_buffer_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_buffer_get_version
    , Generated.Wayland.Client.Unsafe.wl_buffer_destroy
    , Generated.Wayland.Client.Unsafe.wl_data_offer_add_listener
    , Generated.Wayland.Client.Unsafe.wl_data_offer_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_data_offer_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_data_offer_get_version
    , Generated.Wayland.Client.Unsafe.wl_data_offer_accept
    , Generated.Wayland.Client.Unsafe.wl_data_offer_receive
    , Generated.Wayland.Client.Unsafe.wl_data_offer_destroy
    , Generated.Wayland.Client.Unsafe.wl_data_offer_finish
    , Generated.Wayland.Client.Unsafe.wl_data_offer_set_actions
    , Generated.Wayland.Client.Unsafe.wl_data_source_add_listener
    , Generated.Wayland.Client.Unsafe.wl_data_source_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_data_source_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_data_source_get_version
    , Generated.Wayland.Client.Unsafe.wl_data_source_offer
    , Generated.Wayland.Client.Unsafe.wl_data_source_destroy
    , Generated.Wayland.Client.Unsafe.wl_data_source_set_actions
    , Generated.Wayland.Client.Unsafe.wl_data_device_add_listener
    , Generated.Wayland.Client.Unsafe.wl_data_device_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_data_device_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_data_device_get_version
    , Generated.Wayland.Client.Unsafe.wl_data_device_destroy
    , Generated.Wayland.Client.Unsafe.wl_data_device_start_drag
    , Generated.Wayland.Client.Unsafe.wl_data_device_set_selection
    , Generated.Wayland.Client.Unsafe.wl_data_device_release
    , Generated.Wayland.Client.Unsafe.wl_data_device_manager_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_data_device_manager_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_data_device_manager_get_version
    , Generated.Wayland.Client.Unsafe.wl_data_device_manager_destroy
    , Generated.Wayland.Client.Unsafe.wl_data_device_manager_create_data_source
    , Generated.Wayland.Client.Unsafe.wl_data_device_manager_get_data_device
    , Generated.Wayland.Client.Unsafe.wl_shell_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_shell_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_shell_get_version
    , Generated.Wayland.Client.Unsafe.wl_shell_destroy
    , Generated.Wayland.Client.Unsafe.wl_shell_get_shell_surface
    , Generated.Wayland.Client.Unsafe.wl_shell_surface_add_listener
    , Generated.Wayland.Client.Unsafe.wl_shell_surface_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_shell_surface_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_shell_surface_get_version
    , Generated.Wayland.Client.Unsafe.wl_shell_surface_destroy
    , Generated.Wayland.Client.Unsafe.wl_shell_surface_pong
    , Generated.Wayland.Client.Unsafe.wl_shell_surface_move
    , Generated.Wayland.Client.Unsafe.wl_shell_surface_resize
    , Generated.Wayland.Client.Unsafe.wl_shell_surface_set_toplevel
    , Generated.Wayland.Client.Unsafe.wl_shell_surface_set_transient
    , Generated.Wayland.Client.Unsafe.wl_shell_surface_set_fullscreen
    , Generated.Wayland.Client.Unsafe.wl_shell_surface_set_popup
    , Generated.Wayland.Client.Unsafe.wl_shell_surface_set_maximized
    , Generated.Wayland.Client.Unsafe.wl_shell_surface_set_title
    , Generated.Wayland.Client.Unsafe.wl_shell_surface_set_class
    , Generated.Wayland.Client.Unsafe.wl_surface_add_listener
    , Generated.Wayland.Client.Unsafe.wl_surface_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_surface_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_surface_get_version
    , Generated.Wayland.Client.Unsafe.wl_surface_destroy
    , Generated.Wayland.Client.Unsafe.wl_surface_attach
    , Generated.Wayland.Client.Unsafe.wl_surface_damage
    , Generated.Wayland.Client.Unsafe.wl_surface_frame
    , Generated.Wayland.Client.Unsafe.wl_surface_set_opaque_region
    , Generated.Wayland.Client.Unsafe.wl_surface_set_input_region
    , Generated.Wayland.Client.Unsafe.wl_surface_commit
    , Generated.Wayland.Client.Unsafe.wl_surface_set_buffer_transform
    , Generated.Wayland.Client.Unsafe.wl_surface_set_buffer_scale
    , Generated.Wayland.Client.Unsafe.wl_surface_damage_buffer
    , Generated.Wayland.Client.Unsafe.wl_surface_offset
    , Generated.Wayland.Client.Unsafe.wl_seat_add_listener
    , Generated.Wayland.Client.Unsafe.wl_seat_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_seat_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_seat_get_version
    , Generated.Wayland.Client.Unsafe.wl_seat_destroy
    , Generated.Wayland.Client.Unsafe.wl_seat_get_pointer
    , Generated.Wayland.Client.Unsafe.wl_seat_get_keyboard
    , Generated.Wayland.Client.Unsafe.wl_seat_get_touch
    , Generated.Wayland.Client.Unsafe.wl_seat_release
    , Generated.Wayland.Client.Unsafe.wl_pointer_add_listener
    , Generated.Wayland.Client.Unsafe.wl_pointer_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_pointer_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_pointer_get_version
    , Generated.Wayland.Client.Unsafe.wl_pointer_destroy
    , Generated.Wayland.Client.Unsafe.wl_pointer_set_cursor
    , Generated.Wayland.Client.Unsafe.wl_pointer_release
    , Generated.Wayland.Client.Unsafe.wl_keyboard_add_listener
    , Generated.Wayland.Client.Unsafe.wl_keyboard_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_keyboard_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_keyboard_get_version
    , Generated.Wayland.Client.Unsafe.wl_keyboard_destroy
    , Generated.Wayland.Client.Unsafe.wl_keyboard_release
    , Generated.Wayland.Client.Unsafe.wl_touch_add_listener
    , Generated.Wayland.Client.Unsafe.wl_touch_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_touch_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_touch_get_version
    , Generated.Wayland.Client.Unsafe.wl_touch_destroy
    , Generated.Wayland.Client.Unsafe.wl_touch_release
    , Generated.Wayland.Client.Unsafe.wl_output_add_listener
    , Generated.Wayland.Client.Unsafe.wl_output_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_output_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_output_get_version
    , Generated.Wayland.Client.Unsafe.wl_output_destroy
    , Generated.Wayland.Client.Unsafe.wl_output_release
    , Generated.Wayland.Client.Unsafe.wl_region_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_region_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_region_get_version
    , Generated.Wayland.Client.Unsafe.wl_region_destroy
    , Generated.Wayland.Client.Unsafe.wl_region_add
    , Generated.Wayland.Client.Unsafe.wl_region_subtract
    , Generated.Wayland.Client.Unsafe.wl_subcompositor_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_subcompositor_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_subcompositor_get_version
    , Generated.Wayland.Client.Unsafe.wl_subcompositor_destroy
    , Generated.Wayland.Client.Unsafe.wl_subcompositor_get_subsurface
    , Generated.Wayland.Client.Unsafe.wl_subsurface_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_subsurface_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_subsurface_get_version
    , Generated.Wayland.Client.Unsafe.wl_subsurface_destroy
    , Generated.Wayland.Client.Unsafe.wl_subsurface_set_position
    , Generated.Wayland.Client.Unsafe.wl_subsurface_place_above
    , Generated.Wayland.Client.Unsafe.wl_subsurface_place_below
    , Generated.Wayland.Client.Unsafe.wl_subsurface_set_sync
    , Generated.Wayland.Client.Unsafe.wl_subsurface_set_desync
    , Generated.Wayland.Client.Unsafe.wl_fixes_set_user_data
    , Generated.Wayland.Client.Unsafe.wl_fixes_get_user_data
    , Generated.Wayland.Client.Unsafe.wl_fixes_get_version
    , Generated.Wayland.Client.Unsafe.wl_fixes_destroy
    , Generated.Wayland.Client.Unsafe.wl_fixes_destroy_registry
    )
  where

import qualified Generated.Wayland.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Wayland.Client

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <wayland-client.h>"
  , "void hs_bindgen_e31c4274050bd669 ("
  , "  struct wl_event_queue *arg1"
  , ")"
  , "{"
  , "  (wl_event_queue_destroy)(arg1);"
  , "}"
  , "struct wl_proxy *hs_bindgen_7f05288a646be2fa ("
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
  , "void hs_bindgen_9a82baee5015cdfe ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  union wl_argument *arg3"
  , ")"
  , "{"
  , "  (wl_proxy_marshal_array)(arg1, arg2, arg3);"
  , "}"
  , "struct wl_proxy *hs_bindgen_c031af1829d0e38b ("
  , "  struct wl_proxy *arg1,"
  , "  struct wl_interface const *arg2"
  , ")"
  , "{"
  , "  return (wl_proxy_create)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_9c8dda579eafa327 ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_create_wrapper)(arg1);"
  , "}"
  , "void hs_bindgen_8abb8ac14753be5f ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  (wl_proxy_wrapper_destroy)(arg1);"
  , "}"
  , "struct wl_proxy *hs_bindgen_bf5683d638da9977 ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  union wl_argument *arg3,"
  , "  struct wl_interface const *arg4"
  , ")"
  , "{"
  , "  return (wl_proxy_marshal_array_constructor)(arg1, arg2, arg3, arg4);"
  , "}"
  , "struct wl_proxy *hs_bindgen_f0b31ca80af65d80 ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  union wl_argument *arg3,"
  , "  struct wl_interface const *arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  return (wl_proxy_marshal_array_constructor_versioned)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_31b039cc9846eb82 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  (wl_proxy_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_f8af85ea0c3ccaff ("
  , "  struct wl_proxy *arg1,"
  , "  void (**arg2) (void),"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_proxy_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void const *hs_bindgen_f6f20c8f0a297066 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_listener)(arg1);"
  , "}"
  , "signed int hs_bindgen_f4285bc56c6d29bf ("
  , "  struct wl_proxy *arg1,"
  , "  wl_dispatcher_func_t arg2,"
  , "  void const *arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (wl_proxy_add_dispatcher)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_f387ee216ea88ae1 ("
  , "  struct wl_proxy *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_proxy_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_46faa6c0d5056f8b ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_953a6d6fc78dae9f ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_version)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_f6bb9c2776cadc0c ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_id)(arg1);"
  , "}"
  , "void hs_bindgen_39a4c290d46cab74 ("
  , "  struct wl_proxy *arg1,"
  , "  char const *const *arg2"
  , ")"
  , "{"
  , "  (wl_proxy_set_tag)(arg1, arg2);"
  , "}"
  , "char const *const *hs_bindgen_5971bc7632926cb5 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_tag)(arg1);"
  , "}"
  , "char const *hs_bindgen_0bec017c8edd6eb3 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_class)(arg1);"
  , "}"
  , "struct wl_interface const *hs_bindgen_9fcda131746b282c ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_interface)(arg1);"
  , "}"
  , "struct wl_display *hs_bindgen_2a5116695cf56f48 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_display)(arg1);"
  , "}"
  , "void hs_bindgen_47c0101ebeb02847 ("
  , "  struct wl_proxy *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  (wl_proxy_set_queue)(arg1, arg2);"
  , "}"
  , "struct wl_event_queue *hs_bindgen_791dcb15c2aeb56f ("
  , "  struct wl_proxy const *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_queue)(arg1);"
  , "}"
  , "char const *hs_bindgen_f55d3122842682ee ("
  , "  struct wl_event_queue const *arg1"
  , ")"
  , "{"
  , "  return (wl_event_queue_get_name)(arg1);"
  , "}"
  , "struct wl_display *hs_bindgen_e5c91f5613e21c49 ("
  , "  char const *arg1"
  , ")"
  , "{"
  , "  return (wl_display_connect)(arg1);"
  , "}"
  , "struct wl_display *hs_bindgen_e563d2329cd558b1 ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return (wl_display_connect_to_fd)(arg1);"
  , "}"
  , "void hs_bindgen_4d12d93271c08edb ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  (wl_display_disconnect)(arg1);"
  , "}"
  , "signed int hs_bindgen_f64b98243464cf43 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_fd)(arg1);"
  , "}"
  , "signed int hs_bindgen_e7fe5521b28424ad ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_dispatch)(arg1);"
  , "}"
  , "signed int hs_bindgen_221b580a616a20ad ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_queue)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_25aeeb99d91f164b ("
  , "  struct wl_display *arg1,"
  , "  struct timespec const *arg2"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_timeout)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_66dfd451b2e6f52c ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2,"
  , "  struct timespec const *arg3"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_queue_timeout)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_cc959f9be8d2d40d ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_queue_pending)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_464a9ad690da8913 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_pending)(arg1);"
  , "}"
  , "signed int hs_bindgen_025da0df8cd4d000 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_error)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_c5323f91c10e8294 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_interface const **arg2,"
  , "  uint32_t *arg3"
  , ")"
  , "{"
  , "  return (wl_display_get_protocol_error)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_f1f6876dfa3d0024 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_flush)(arg1);"
  , "}"
  , "signed int hs_bindgen_0a236d70a33b8ed8 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_roundtrip_queue)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_53fd31c6a3fa7f1c ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_roundtrip)(arg1);"
  , "}"
  , "struct wl_event_queue *hs_bindgen_68bceac3e7a87cfb ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_create_queue)(arg1);"
  , "}"
  , "struct wl_event_queue *hs_bindgen_4d1b46360880642f ("
  , "  struct wl_display *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return (wl_display_create_queue_with_name)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_4ffbfc74d5ff165b ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_prepare_read_queue)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_2364c3a1a930a96d ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_prepare_read)(arg1);"
  , "}"
  , "void hs_bindgen_eb12ff038f791497 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  (wl_display_cancel_read)(arg1);"
  , "}"
  , "signed int hs_bindgen_7a4a028bf15849b5 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_read_events)(arg1);"
  , "}"
  , "void hs_bindgen_c76822bb881f9f01 ("
  , "  struct wl_display *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  (wl_display_set_max_buffer_size)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_01ccc7609ee66990 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_display_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_display_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_0530d5406486b1a7 ("
  , "  struct wl_display *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_display_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_4f069428a8721071 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_4e956d7e0484c70c ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_version)(arg1);"
  , "}"
  , "struct wl_callback *hs_bindgen_2e4e0c59315621ae ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_sync)(arg1);"
  , "}"
  , "struct wl_registry *hs_bindgen_7ffee6997cb91d50 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_registry)(arg1);"
  , "}"
  , "signed int hs_bindgen_4e40f59c1e25859a ("
  , "  struct wl_registry *arg1,"
  , "  struct wl_registry_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_registry_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_007cfd03b6363fd9 ("
  , "  struct wl_registry *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_registry_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_91b7ed9a90bfa863 ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  return (wl_registry_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_743260d1077485c4 ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  return (wl_registry_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_e2ed04319d3c93b1 ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  (wl_registry_destroy)(arg1);"
  , "}"
  , "void *hs_bindgen_1343566a1f4a4af1 ("
  , "  struct wl_registry *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_interface const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return (wl_registry_bind)(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_d61870610b55158c ("
  , "  struct wl_callback *arg1,"
  , "  struct wl_callback_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_callback_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_0ce1cd2171985047 ("
  , "  struct wl_callback *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_callback_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_f8d49a8b2fcc07ef ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  return (wl_callback_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_a182c0d96c826fab ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  return (wl_callback_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_4aac6b06a6a20d47 ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  (wl_callback_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_2cba6635e505541f ("
  , "  struct wl_compositor *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_compositor_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_150d9d87dab90fe4 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_bd8533a1fa7e96d1 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_8167792d74f9c4fc ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  (wl_compositor_destroy)(arg1);"
  , "}"
  , "struct wl_surface *hs_bindgen_995cfb5e3cc991f5 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_create_surface)(arg1);"
  , "}"
  , "struct wl_region *hs_bindgen_f6642c069ea461ff ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_create_region)(arg1);"
  , "}"
  , "void hs_bindgen_1b6805ad642644c6 ("
  , "  struct wl_shm_pool *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shm_pool_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_de47fc9921c8ea8f ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_pool_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_b8234e608b70de1d ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_pool_get_version)(arg1);"
  , "}"
  , "struct wl_buffer *hs_bindgen_5c0265445ae89f50 ("
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
  , "void hs_bindgen_2f65deb6e361fc72 ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  (wl_shm_pool_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_b7b74fa097c7a7c8 ("
  , "  struct wl_shm_pool *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (wl_shm_pool_resize)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_54d41896cbe11786 ("
  , "  struct wl_shm *arg1,"
  , "  struct wl_shm_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_shm_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_928af0f62e108764 ("
  , "  struct wl_shm *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shm_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_db8eb581679778a8 ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_f62814df290df6ec ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_3357de8656934fdc ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  (wl_shm_destroy)(arg1);"
  , "}"
  , "struct wl_shm_pool *hs_bindgen_0518dd7ac98f33da ("
  , "  struct wl_shm *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return (wl_shm_create_pool)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_0e54eca4b81f941b ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  (wl_shm_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_1e316409a0696a9a ("
  , "  struct wl_buffer *arg1,"
  , "  struct wl_buffer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_buffer_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_5c6a25269ef07707 ("
  , "  struct wl_buffer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_buffer_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_ad244219f5d04a3e ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  return (wl_buffer_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_f91f54024821be39 ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  return (wl_buffer_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_2557c5f74bad1488 ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  (wl_buffer_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_2348f52c14657a23 ("
  , "  struct wl_data_offer *arg1,"
  , "  struct wl_data_offer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_data_offer_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_b163c6ea8f7623c3 ("
  , "  struct wl_data_offer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_offer_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_568c0010eaaf0802 ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return (wl_data_offer_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_e8e3b060e8046647 ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return (wl_data_offer_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_d5607688382b4c57 ("
  , "  struct wl_data_offer *arg1,"
  , "  uint32_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  (wl_data_offer_accept)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_c2eaa2819dc01e45 ("
  , "  struct wl_data_offer *arg1,"
  , "  char const *arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (wl_data_offer_receive)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_d92aafa12eacf403 ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  (wl_data_offer_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_e8ae5c0538f6a5da ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  (wl_data_offer_finish)(arg1);"
  , "}"
  , "void hs_bindgen_ceed7c00d9ad6edf ("
  , "  struct wl_data_offer *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (wl_data_offer_set_actions)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_d578746817f01912 ("
  , "  struct wl_data_source *arg1,"
  , "  struct wl_data_source_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_data_source_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_a2ae807b76602fa8 ("
  , "  struct wl_data_source *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_source_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_34aa45f9f3b4291e ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  return (wl_data_source_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_d886817c1b5d38ad ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  return (wl_data_source_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_2d922ccc7a4e9446 ("
  , "  struct wl_data_source *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (wl_data_source_offer)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_cb32e7259e6fe058 ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  (wl_data_source_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_54c9b7c4fa67bcaf ("
  , "  struct wl_data_source *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (wl_data_source_set_actions)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_b6f1e2452922469d ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_device_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_data_device_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_7d8b5c6bf105fdc3 ("
  , "  struct wl_data_device *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_device_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_5ec82ff186dc8232 ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_8f2496804a16bc35 ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_14179014bf1b5bb7 ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  (wl_data_device_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_91001ef68e6a60af ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_source *arg2,"
  , "  struct wl_surface *arg3,"
  , "  struct wl_surface *arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  (wl_data_device_start_drag)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_070d8a3528706b69 ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_source *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (wl_data_device_set_selection)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_38e74e9638e08f5e ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  (wl_data_device_release)(arg1);"
  , "}"
  , "void hs_bindgen_8152872f456f5287 ("
  , "  struct wl_data_device_manager *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_device_manager_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_d3c8ce678dc0ad52 ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_d029d4af87c1aa78 ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_5a62d6f47d05fb28 ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  (wl_data_device_manager_destroy)(arg1);"
  , "}"
  , "struct wl_data_source *hs_bindgen_b4c658c3e7dcf77e ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_create_data_source)(arg1);"
  , "}"
  , "struct wl_data_device *hs_bindgen_80ec432b902085ca ("
  , "  struct wl_data_device_manager *arg1,"
  , "  struct wl_seat *arg2"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_get_data_device)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_0fccd809f9994bc6 ("
  , "  struct wl_shell *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shell_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_3cf7c45e171d421e ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_f070157f0842ccc3 ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_4dadb7128012df51 ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  (wl_shell_destroy)(arg1);"
  , "}"
  , "struct wl_shell_surface *hs_bindgen_a1c97d581e7e4c29 ("
  , "  struct wl_shell *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (wl_shell_get_shell_surface)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_0f4678c39a9f2bdc ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_shell_surface_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_shell_surface_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_78d02b70c75c31a3 ("
  , "  struct wl_shell_surface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_ecc6400f9dfc9f6b ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_surface_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_f24466c8ca6081f2 ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_surface_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_30c4c021f210a7f0 ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  (wl_shell_surface_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_11a038ba1cef7ea5 ("
  , "  struct wl_shell_surface *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_pong)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_4cfda3233b31074d ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (wl_shell_surface_move)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_e4c3a017786c3db8 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  (wl_shell_surface_resize)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_8fc50c5f27341fe2 ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_toplevel)(arg1);"
  , "}"
  , "void hs_bindgen_f4552c4632c38bb4 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_surface *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_transient)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_47d31ac7b30e5aec ("
  , "  struct wl_shell_surface *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3,"
  , "  struct wl_output *arg4"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_fullscreen)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_daed8d7ef8089e6f ("
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
  , "void hs_bindgen_ab2babe6682b31e5 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_output *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_maximized)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_1e5b1a7205971c01 ("
  , "  struct wl_shell_surface *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_title)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_7f48dedc5d60625d ("
  , "  struct wl_shell_surface *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_class)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_baec3b45a720312b ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_surface_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_surface_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_6ad676b77c843a6c ("
  , "  struct wl_surface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_37c22271237dfb58 ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_surface_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_94d3c9428d5ee2ca ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_surface_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_2a016345e7256d69 ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  (wl_surface_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_7367d72b03195ed8 ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_buffer *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4"
  , ")"
  , "{"
  , "  (wl_surface_attach)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_e3795e6603b0aac3 ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_surface_damage)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "struct wl_callback *hs_bindgen_bb2ced2e94a6738f ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_surface_frame)(arg1);"
  , "}"
  , "void hs_bindgen_55f5bd5ac592b84c ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_region *arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_opaque_region)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_b2c3d07cf202e087 ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_region *arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_input_region)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_9c0e2ccdbc35e1dd ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  (wl_surface_commit)(arg1);"
  , "}"
  , "void hs_bindgen_01beb2ceb496e9f4 ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_buffer_transform)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_9c081061f236dcc8 ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_buffer_scale)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_5d1bd315329f0cfc ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_surface_damage_buffer)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_c63ba36f04fd7475 ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (wl_surface_offset)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_bc8d145f656d4c35 ("
  , "  struct wl_seat *arg1,"
  , "  struct wl_seat_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_seat_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_6505430e0c1ab895 ("
  , "  struct wl_seat *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_seat_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_4079676cb950a7f2 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_c1f8755a4a95e421 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_c66ab893016b6e0e ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  (wl_seat_destroy)(arg1);"
  , "}"
  , "struct wl_pointer *hs_bindgen_797b086785aa1f98 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_pointer)(arg1);"
  , "}"
  , "struct wl_keyboard *hs_bindgen_b3143c914c0f438e ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_keyboard)(arg1);"
  , "}"
  , "struct wl_touch *hs_bindgen_17c96e2e4c8162be ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_touch)(arg1);"
  , "}"
  , "void hs_bindgen_d62348ee593d2801 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  (wl_seat_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_8acd14641ec1414d ("
  , "  struct wl_pointer *arg1,"
  , "  struct wl_pointer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_pointer_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_12a794b38456324c ("
  , "  struct wl_pointer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_pointer_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_fd439fa0f891e45e ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return (wl_pointer_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_2f438c1e5bcfb393 ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return (wl_pointer_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_1017e40eee319704 ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  (wl_pointer_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_1b043c7c828c1a3b ("
  , "  struct wl_pointer *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_surface *arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_pointer_set_cursor)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_3a643dca694746bf ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  (wl_pointer_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_9be01c8cfd4b0abb ("
  , "  struct wl_keyboard *arg1,"
  , "  struct wl_keyboard_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_keyboard_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_f03ebc4ba3ad8705 ("
  , "  struct wl_keyboard *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_keyboard_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_8695eb600a44d593 ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return (wl_keyboard_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_89362ab7289bfcf4 ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return (wl_keyboard_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_65462ed56c289918 ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  (wl_keyboard_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_09f7ad2e5bbca9f1 ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  (wl_keyboard_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_21616e7d023c0d5e ("
  , "  struct wl_touch *arg1,"
  , "  struct wl_touch_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_touch_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_b575f6550c4f43ac ("
  , "  struct wl_touch *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_touch_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_7dc82568c21f0cbe ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return (wl_touch_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_1d4bd1750a31f06a ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return (wl_touch_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_56069c9e34016ab5 ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  (wl_touch_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_64754e076d0edf01 ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  (wl_touch_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_ac4b6380d17be779 ("
  , "  struct wl_output *arg1,"
  , "  struct wl_output_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_output_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_46cfa8f7e5801066 ("
  , "  struct wl_output *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_output_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_69924cbc0fbb5c15 ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return (wl_output_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_01f42adefb41778f ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return (wl_output_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_05dc7565589f5028 ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  (wl_output_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_a9fe9a89d87a977f ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  (wl_output_release)(arg1);"
  , "}"
  , "void hs_bindgen_896c2c47972f09f6 ("
  , "  struct wl_region *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_region_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_769c9e02432a243c ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  return (wl_region_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_8e7d8a12c617fc7d ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  return (wl_region_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_7001b9ae9b83d59a ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  (wl_region_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_e4a30fec132e43e0 ("
  , "  struct wl_region *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_region_add)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_8c3b5794c4529575 ("
  , "  struct wl_region *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_region_subtract)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_72b792a508148d9b ("
  , "  struct wl_subcompositor *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_subcompositor_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_0ce140bf223e5e17 ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  return (wl_subcompositor_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_5e48add09092c624 ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  return (wl_subcompositor_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_efe9b69733a0fd23 ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  (wl_subcompositor_destroy)(arg1);"
  , "}"
  , "struct wl_subsurface *hs_bindgen_f2f9e5324a78ddfd ("
  , "  struct wl_subcompositor *arg1,"
  , "  struct wl_surface *arg2,"
  , "  struct wl_surface *arg3"
  , ")"
  , "{"
  , "  return (wl_subcompositor_get_subsurface)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_d1ce410591c25970 ("
  , "  struct wl_subsurface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_subsurface_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_d60dab0afa591c19 ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return (wl_subsurface_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_59d583e78c746e98 ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return (wl_subsurface_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_8499305bb86ef812 ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  (wl_subsurface_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_f0aad23f243e4548 ("
  , "  struct wl_subsurface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (wl_subsurface_set_position)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_b0b750ad3ba406d3 ("
  , "  struct wl_subsurface *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  (wl_subsurface_place_above)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_f267ccafdb9c4457 ("
  , "  struct wl_subsurface *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  (wl_subsurface_place_below)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_22595f56de33b737 ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  (wl_subsurface_set_sync)(arg1);"
  , "}"
  , "void hs_bindgen_e4c1b723867c07a1 ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  (wl_subsurface_set_desync)(arg1);"
  , "}"
  , "void hs_bindgen_49432ae7537539f5 ("
  , "  struct wl_fixes *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_fixes_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_f3e0751ab94d485f ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  return (wl_fixes_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_552cc0e7700d86fa ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  return (wl_fixes_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_044a17d87ee2fc77 ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  (wl_fixes_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_bfcc07010d9b062b ("
  , "  struct wl_fixes *arg1,"
  , "  struct wl_registry *arg2"
  , ")"
  , "{"
  , "  (wl_fixes_destroy_registry)(arg1, arg2);"
  , "}"
  ]))

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_event_queue_destroy@
foreign import ccall unsafe "hs_bindgen_e31c4274050bd669" hs_bindgen_e31c4274050bd669_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_event_queue_destroy@
hs_bindgen_e31c4274050bd669 ::
     RIP.Ptr Wl_event_queue
  -> IO ()
hs_bindgen_e31c4274050bd669 =
  RIP.fromFFIType hs_bindgen_e31c4274050bd669_base

{-| __C declaration:__ @wl_event_queue_destroy@

    __defined at:__ @wayland-client-core.h 130:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_event_queue_destroy ::
     RIP.Ptr Wl_event_queue
     -- ^ __C declaration:__ @queue@
  -> IO ()
wl_event_queue_destroy = hs_bindgen_e31c4274050bd669

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_marshal_array_flags@
foreign import ccall unsafe "hs_bindgen_7f05288a646be2fa" hs_bindgen_7f05288a646be2fa_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_marshal_array_flags@
hs_bindgen_7f05288a646be2fa ::
     RIP.Ptr Wl_proxy
  -> HsBindgen.Runtime.LibC.Word32
  -> PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Generated.Wayland.Util.Wl_argument
  -> IO (RIP.Ptr Wl_proxy)
hs_bindgen_7f05288a646be2fa =
  RIP.fromFFIType hs_bindgen_7f05288a646be2fa_base

{-| __C declaration:__ @wl_proxy_marshal_array_flags@

    __defined at:__ @wayland-client-core.h 139:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_marshal_array_flags ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @opcode@
  -> PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
     -- ^ __C declaration:__ @interface@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @version@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @flags@
  -> RIP.Ptr Generated.Wayland.Util.Wl_argument
     -- ^ __C declaration:__ @args@
  -> IO (RIP.Ptr Wl_proxy)
wl_proxy_marshal_array_flags =
  hs_bindgen_7f05288a646be2fa

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_marshal_array@
foreign import ccall unsafe "hs_bindgen_9a82baee5015cdfe" hs_bindgen_9a82baee5015cdfe_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_marshal_array@
hs_bindgen_9a82baee5015cdfe ::
     RIP.Ptr Wl_proxy
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Generated.Wayland.Util.Wl_argument
  -> IO ()
hs_bindgen_9a82baee5015cdfe =
  RIP.fromFFIType hs_bindgen_9a82baee5015cdfe_base

{-| __C declaration:__ @wl_proxy_marshal_array@

    __defined at:__ @wayland-client-core.h 149:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_marshal_array ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @p@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @opcode@
  -> RIP.Ptr Generated.Wayland.Util.Wl_argument
     -- ^ __C declaration:__ @args@
  -> IO ()
wl_proxy_marshal_array = hs_bindgen_9a82baee5015cdfe

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_create@
foreign import ccall unsafe "hs_bindgen_c031af1829d0e38b" hs_bindgen_c031af1829d0e38b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_create@
hs_bindgen_c031af1829d0e38b ::
     RIP.Ptr Wl_proxy
  -> PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
  -> IO (RIP.Ptr Wl_proxy)
hs_bindgen_c031af1829d0e38b =
  RIP.fromFFIType hs_bindgen_c031af1829d0e38b_base

{-| __C declaration:__ @wl_proxy_create@

    __defined at:__ @wayland-client-core.h 153:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_create ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @factory@
  -> PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
     -- ^ __C declaration:__ @interface@
  -> IO (RIP.Ptr Wl_proxy)
wl_proxy_create = hs_bindgen_c031af1829d0e38b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_create_wrapper@
foreign import ccall unsafe "hs_bindgen_9c8dda579eafa327" hs_bindgen_9c8dda579eafa327_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_create_wrapper@
hs_bindgen_9c8dda579eafa327 ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_9c8dda579eafa327 =
  RIP.fromFFIType hs_bindgen_9c8dda579eafa327_base

{-| __C declaration:__ @wl_proxy_create_wrapper@

    __defined at:__ @wayland-client-core.h 157:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_create_wrapper ::
     RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr RIP.Void)
wl_proxy_create_wrapper = hs_bindgen_9c8dda579eafa327

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_wrapper_destroy@
foreign import ccall unsafe "hs_bindgen_8abb8ac14753be5f" hs_bindgen_8abb8ac14753be5f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_wrapper_destroy@
hs_bindgen_8abb8ac14753be5f ::
     RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_8abb8ac14753be5f =
  RIP.fromFFIType hs_bindgen_8abb8ac14753be5f_base

{-| __C declaration:__ @wl_proxy_wrapper_destroy@

    __defined at:__ @wayland-client-core.h 160:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_wrapper_destroy ::
     RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @proxy_wrapper@
  -> IO ()
wl_proxy_wrapper_destroy =
  hs_bindgen_8abb8ac14753be5f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_marshal_array_constructor@
foreign import ccall unsafe "hs_bindgen_bf5683d638da9977" hs_bindgen_bf5683d638da9977_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_marshal_array_constructor@
hs_bindgen_bf5683d638da9977 ::
     RIP.Ptr Wl_proxy
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Generated.Wayland.Util.Wl_argument
  -> PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
  -> IO (RIP.Ptr Wl_proxy)
hs_bindgen_bf5683d638da9977 =
  RIP.fromFFIType hs_bindgen_bf5683d638da9977_base

{-| __C declaration:__ @wl_proxy_marshal_array_constructor@

    __defined at:__ @wayland-client-core.h 176:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_marshal_array_constructor ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @opcode@
  -> RIP.Ptr Generated.Wayland.Util.Wl_argument
     -- ^ __C declaration:__ @args@
  -> PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
     -- ^ __C declaration:__ @interface@
  -> IO (RIP.Ptr Wl_proxy)
wl_proxy_marshal_array_constructor =
  hs_bindgen_bf5683d638da9977

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_marshal_array_constructor_versioned@
foreign import ccall unsafe "hs_bindgen_f0b31ca80af65d80" hs_bindgen_f0b31ca80af65d80_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_marshal_array_constructor_versioned@
hs_bindgen_f0b31ca80af65d80 ::
     RIP.Ptr Wl_proxy
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Generated.Wayland.Util.Wl_argument
  -> PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr Wl_proxy)
hs_bindgen_f0b31ca80af65d80 =
  RIP.fromFFIType hs_bindgen_f0b31ca80af65d80_base

{-| __C declaration:__ @wl_proxy_marshal_array_constructor_versioned@

    __defined at:__ @wayland-client-core.h 181:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_marshal_array_constructor_versioned ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @opcode@
  -> RIP.Ptr Generated.Wayland.Util.Wl_argument
     -- ^ __C declaration:__ @args@
  -> PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
     -- ^ __C declaration:__ @interface@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @version@
  -> IO (RIP.Ptr Wl_proxy)
wl_proxy_marshal_array_constructor_versioned =
  hs_bindgen_f0b31ca80af65d80

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_destroy@
foreign import ccall unsafe "hs_bindgen_31b039cc9846eb82" hs_bindgen_31b039cc9846eb82_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_destroy@
hs_bindgen_31b039cc9846eb82 ::
     RIP.Ptr Wl_proxy
  -> IO ()
hs_bindgen_31b039cc9846eb82 =
  RIP.fromFFIType hs_bindgen_31b039cc9846eb82_base

{-| __C declaration:__ @wl_proxy_destroy@

    __defined at:__ @wayland-client-core.h 188:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_destroy ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO ()
wl_proxy_destroy = hs_bindgen_31b039cc9846eb82

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_add_listener@
foreign import ccall unsafe "hs_bindgen_f8af85ea0c3ccaff" hs_bindgen_f8af85ea0c3ccaff_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_add_listener@
hs_bindgen_f8af85ea0c3ccaff ::
     RIP.Ptr Wl_proxy
  -> RIP.Ptr (RIP.FunPtr (IO ()))
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_f8af85ea0c3ccaff =
  RIP.fromFFIType hs_bindgen_f8af85ea0c3ccaff_base

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
wl_proxy_add_listener = hs_bindgen_f8af85ea0c3ccaff

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_get_listener@
foreign import ccall unsafe "hs_bindgen_f6f20c8f0a297066" hs_bindgen_f6f20c8f0a297066_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_get_listener@
hs_bindgen_f6f20c8f0a297066 ::
     RIP.Ptr Wl_proxy
  -> IO (PtrConst.PtrConst RIP.Void)
hs_bindgen_f6f20c8f0a297066 =
  RIP.fromFFIType hs_bindgen_f6f20c8f0a297066_base

{-| __C declaration:__ @wl_proxy_get_listener@

    __defined at:__ @wayland-client-core.h 195:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_listener ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst RIP.Void)
wl_proxy_get_listener = hs_bindgen_f6f20c8f0a297066

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_add_dispatcher@
foreign import ccall unsafe "hs_bindgen_f4285bc56c6d29bf" hs_bindgen_f4285bc56c6d29bf_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_add_dispatcher@
hs_bindgen_f4285bc56c6d29bf ::
     RIP.Ptr Wl_proxy
  -> Generated.Wayland.Util.Wl_dispatcher_func_t
  -> PtrConst.PtrConst RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_f4285bc56c6d29bf =
  RIP.fromFFIType hs_bindgen_f4285bc56c6d29bf_base

{-| __C declaration:__ @wl_proxy_add_dispatcher@

    __defined at:__ @wayland-client-core.h 198:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_add_dispatcher ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> Generated.Wayland.Util.Wl_dispatcher_func_t
     -- ^ __C declaration:__ @dispatcher_func@
  -> PtrConst.PtrConst RIP.Void
     -- ^ __C declaration:__ @dispatcher_data@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_proxy_add_dispatcher = hs_bindgen_f4285bc56c6d29bf

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_set_user_data@
foreign import ccall unsafe "hs_bindgen_f387ee216ea88ae1" hs_bindgen_f387ee216ea88ae1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_set_user_data@
hs_bindgen_f387ee216ea88ae1 ::
     RIP.Ptr Wl_proxy
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_f387ee216ea88ae1 =
  RIP.fromFFIType hs_bindgen_f387ee216ea88ae1_base

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
wl_proxy_set_user_data = hs_bindgen_f387ee216ea88ae1

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_get_user_data@
foreign import ccall unsafe "hs_bindgen_46faa6c0d5056f8b" hs_bindgen_46faa6c0d5056f8b_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_get_user_data@
hs_bindgen_46faa6c0d5056f8b ::
     RIP.Ptr Wl_proxy
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_46faa6c0d5056f8b =
  RIP.fromFFIType hs_bindgen_46faa6c0d5056f8b_base

{-| __C declaration:__ @wl_proxy_get_user_data@

    __defined at:__ @wayland-client-core.h 206:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_user_data ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr RIP.Void)
wl_proxy_get_user_data = hs_bindgen_46faa6c0d5056f8b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_get_version@
foreign import ccall unsafe "hs_bindgen_953a6d6fc78dae9f" hs_bindgen_953a6d6fc78dae9f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_get_version@
hs_bindgen_953a6d6fc78dae9f ::
     RIP.Ptr Wl_proxy
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_953a6d6fc78dae9f =
  RIP.fromFFIType hs_bindgen_953a6d6fc78dae9f_base

{-| __C declaration:__ @wl_proxy_get_version@

    __defined at:__ @wayland-client-core.h 209:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_version ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_proxy_get_version = hs_bindgen_953a6d6fc78dae9f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_get_id@
foreign import ccall unsafe "hs_bindgen_f6bb9c2776cadc0c" hs_bindgen_f6bb9c2776cadc0c_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_get_id@
hs_bindgen_f6bb9c2776cadc0c ::
     RIP.Ptr Wl_proxy
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_f6bb9c2776cadc0c =
  RIP.fromFFIType hs_bindgen_f6bb9c2776cadc0c_base

{-| __C declaration:__ @wl_proxy_get_id@

    __defined at:__ @wayland-client-core.h 212:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_id ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_proxy_get_id = hs_bindgen_f6bb9c2776cadc0c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_set_tag@
foreign import ccall unsafe "hs_bindgen_39a4c290d46cab74" hs_bindgen_39a4c290d46cab74_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_set_tag@
hs_bindgen_39a4c290d46cab74 ::
     RIP.Ptr Wl_proxy
  -> PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar)
  -> IO ()
hs_bindgen_39a4c290d46cab74 =
  RIP.fromFFIType hs_bindgen_39a4c290d46cab74_base

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
wl_proxy_set_tag = hs_bindgen_39a4c290d46cab74

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_get_tag@
foreign import ccall unsafe "hs_bindgen_5971bc7632926cb5" hs_bindgen_5971bc7632926cb5_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_get_tag@
hs_bindgen_5971bc7632926cb5 ::
     RIP.Ptr Wl_proxy
  -> IO (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar))
hs_bindgen_5971bc7632926cb5 =
  RIP.fromFFIType hs_bindgen_5971bc7632926cb5_base

{-| __C declaration:__ @wl_proxy_get_tag@

    __defined at:__ @wayland-client-core.h 219:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_tag ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar))
wl_proxy_get_tag = hs_bindgen_5971bc7632926cb5

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_get_class@
foreign import ccall unsafe "hs_bindgen_0bec017c8edd6eb3" hs_bindgen_0bec017c8edd6eb3_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_get_class@
hs_bindgen_0bec017c8edd6eb3 ::
     RIP.Ptr Wl_proxy
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_0bec017c8edd6eb3 =
  RIP.fromFFIType hs_bindgen_0bec017c8edd6eb3_base

{-| __C declaration:__ @wl_proxy_get_class@

    __defined at:__ @wayland-client-core.h 222:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_class ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst RIP.CChar)
wl_proxy_get_class = hs_bindgen_0bec017c8edd6eb3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_get_interface@
foreign import ccall unsafe "hs_bindgen_9fcda131746b282c" hs_bindgen_9fcda131746b282c_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_get_interface@
hs_bindgen_9fcda131746b282c ::
     RIP.Ptr Wl_proxy
  -> IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_9fcda131746b282c =
  RIP.fromFFIType hs_bindgen_9fcda131746b282c_base

{-| __C declaration:__ @wl_proxy_get_interface@

    __defined at:__ @wayland-client-core.h 225:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_interface ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
wl_proxy_get_interface = hs_bindgen_9fcda131746b282c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_get_display@
foreign import ccall unsafe "hs_bindgen_2a5116695cf56f48" hs_bindgen_2a5116695cf56f48_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_get_display@
hs_bindgen_2a5116695cf56f48 ::
     RIP.Ptr Wl_proxy
  -> IO (RIP.Ptr Wl_display)
hs_bindgen_2a5116695cf56f48 =
  RIP.fromFFIType hs_bindgen_2a5116695cf56f48_base

{-| __C declaration:__ @wl_proxy_get_display@

    __defined at:__ @wayland-client-core.h 228:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_display ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr Wl_display)
wl_proxy_get_display = hs_bindgen_2a5116695cf56f48

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_set_queue@
foreign import ccall unsafe "hs_bindgen_47c0101ebeb02847" hs_bindgen_47c0101ebeb02847_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_set_queue@
hs_bindgen_47c0101ebeb02847 ::
     RIP.Ptr Wl_proxy
  -> RIP.Ptr Wl_event_queue
  -> IO ()
hs_bindgen_47c0101ebeb02847 =
  RIP.fromFFIType hs_bindgen_47c0101ebeb02847_base

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
wl_proxy_set_queue = hs_bindgen_47c0101ebeb02847

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_get_queue@
foreign import ccall unsafe "hs_bindgen_791dcb15c2aeb56f" hs_bindgen_791dcb15c2aeb56f_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_proxy_get_queue@
hs_bindgen_791dcb15c2aeb56f ::
     PtrConst.PtrConst Wl_proxy
  -> IO (RIP.Ptr Wl_event_queue)
hs_bindgen_791dcb15c2aeb56f =
  RIP.fromFFIType hs_bindgen_791dcb15c2aeb56f_base

{-| __C declaration:__ @wl_proxy_get_queue@

    __defined at:__ @wayland-client-core.h 234:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_queue ::
     PtrConst.PtrConst Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr Wl_event_queue)
wl_proxy_get_queue = hs_bindgen_791dcb15c2aeb56f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_event_queue_get_name@
foreign import ccall unsafe "hs_bindgen_f55d3122842682ee" hs_bindgen_f55d3122842682ee_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_event_queue_get_name@
hs_bindgen_f55d3122842682ee ::
     PtrConst.PtrConst Wl_event_queue
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_f55d3122842682ee =
  RIP.fromFFIType hs_bindgen_f55d3122842682ee_base

{-| __C declaration:__ @wl_event_queue_get_name@

    __defined at:__ @wayland-client-core.h 237:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_event_queue_get_name ::
     PtrConst.PtrConst Wl_event_queue
     -- ^ __C declaration:__ @queue@
  -> IO (PtrConst.PtrConst RIP.CChar)
wl_event_queue_get_name = hs_bindgen_f55d3122842682ee

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_connect@
foreign import ccall unsafe "hs_bindgen_e5c91f5613e21c49" hs_bindgen_e5c91f5613e21c49_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_connect@
hs_bindgen_e5c91f5613e21c49 ::
     PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Wl_display)
hs_bindgen_e5c91f5613e21c49 =
  RIP.fromFFIType hs_bindgen_e5c91f5613e21c49_base

{-| __C declaration:__ @wl_display_connect@

    __defined at:__ @wayland-client-core.h 240:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_connect ::
     PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @name@
  -> IO (RIP.Ptr Wl_display)
wl_display_connect = hs_bindgen_e5c91f5613e21c49

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_connect_to_fd@
foreign import ccall unsafe "hs_bindgen_e563d2329cd558b1" hs_bindgen_e563d2329cd558b1_base ::
     RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_connect_to_fd@
hs_bindgen_e563d2329cd558b1 ::
     RIP.CInt
  -> IO (RIP.Ptr Wl_display)
hs_bindgen_e563d2329cd558b1 =
  RIP.fromFFIType hs_bindgen_e563d2329cd558b1_base

{-| __C declaration:__ @wl_display_connect_to_fd@

    __defined at:__ @wayland-client-core.h 243:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_connect_to_fd ::
     RIP.CInt
     -- ^ __C declaration:__ @fd@
  -> IO (RIP.Ptr Wl_display)
wl_display_connect_to_fd =
  hs_bindgen_e563d2329cd558b1

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_disconnect@
foreign import ccall unsafe "hs_bindgen_4d12d93271c08edb" hs_bindgen_4d12d93271c08edb_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_disconnect@
hs_bindgen_4d12d93271c08edb ::
     RIP.Ptr Wl_display
  -> IO ()
hs_bindgen_4d12d93271c08edb =
  RIP.fromFFIType hs_bindgen_4d12d93271c08edb_base

{-| __C declaration:__ @wl_display_disconnect@

    __defined at:__ @wayland-client-core.h 246:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_disconnect ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO ()
wl_display_disconnect = hs_bindgen_4d12d93271c08edb

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_get_fd@
foreign import ccall unsafe "hs_bindgen_f64b98243464cf43" hs_bindgen_f64b98243464cf43_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_get_fd@
hs_bindgen_f64b98243464cf43 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_f64b98243464cf43 =
  RIP.fromFFIType hs_bindgen_f64b98243464cf43_base

{-| __C declaration:__ @wl_display_get_fd@

    __defined at:__ @wayland-client-core.h 249:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_get_fd ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_get_fd = hs_bindgen_f64b98243464cf43

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_dispatch@
foreign import ccall unsafe "hs_bindgen_e7fe5521b28424ad" hs_bindgen_e7fe5521b28424ad_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_dispatch@
hs_bindgen_e7fe5521b28424ad ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_e7fe5521b28424ad =
  RIP.fromFFIType hs_bindgen_e7fe5521b28424ad_base

{-| __C declaration:__ @wl_display_dispatch@

    __defined at:__ @wayland-client-core.h 252:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_dispatch = hs_bindgen_e7fe5521b28424ad

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_dispatch_queue@
foreign import ccall unsafe "hs_bindgen_221b580a616a20ad" hs_bindgen_221b580a616a20ad_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_dispatch_queue@
hs_bindgen_221b580a616a20ad ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> IO RIP.CInt
hs_bindgen_221b580a616a20ad =
  RIP.fromFFIType hs_bindgen_221b580a616a20ad_base

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
  hs_bindgen_221b580a616a20ad

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_dispatch_timeout@
foreign import ccall unsafe "hs_bindgen_25aeeb99d91f164b" hs_bindgen_25aeeb99d91f164b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_dispatch_timeout@
hs_bindgen_25aeeb99d91f164b ::
     RIP.Ptr Wl_display
  -> PtrConst.PtrConst Timespec
  -> IO RIP.CInt
hs_bindgen_25aeeb99d91f164b =
  RIP.fromFFIType hs_bindgen_25aeeb99d91f164b_base

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
  hs_bindgen_25aeeb99d91f164b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_dispatch_queue_timeout@
foreign import ccall unsafe "hs_bindgen_66dfd451b2e6f52c" hs_bindgen_66dfd451b2e6f52c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_dispatch_queue_timeout@
hs_bindgen_66dfd451b2e6f52c ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> PtrConst.PtrConst Timespec
  -> IO RIP.CInt
hs_bindgen_66dfd451b2e6f52c =
  RIP.fromFFIType hs_bindgen_66dfd451b2e6f52c_base

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
  hs_bindgen_66dfd451b2e6f52c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_dispatch_queue_pending@
foreign import ccall unsafe "hs_bindgen_cc959f9be8d2d40d" hs_bindgen_cc959f9be8d2d40d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_dispatch_queue_pending@
hs_bindgen_cc959f9be8d2d40d ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> IO RIP.CInt
hs_bindgen_cc959f9be8d2d40d =
  RIP.fromFFIType hs_bindgen_cc959f9be8d2d40d_base

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
  hs_bindgen_cc959f9be8d2d40d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_dispatch_pending@
foreign import ccall unsafe "hs_bindgen_464a9ad690da8913" hs_bindgen_464a9ad690da8913_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_dispatch_pending@
hs_bindgen_464a9ad690da8913 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_464a9ad690da8913 =
  RIP.fromFFIType hs_bindgen_464a9ad690da8913_base

{-| __C declaration:__ @wl_display_dispatch_pending@

    __defined at:__ @wayland-client-core.h 272:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_pending ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_dispatch_pending =
  hs_bindgen_464a9ad690da8913

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_get_error@
foreign import ccall unsafe "hs_bindgen_025da0df8cd4d000" hs_bindgen_025da0df8cd4d000_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_get_error@
hs_bindgen_025da0df8cd4d000 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_025da0df8cd4d000 =
  RIP.fromFFIType hs_bindgen_025da0df8cd4d000_base

{-| __C declaration:__ @wl_display_get_error@

    __defined at:__ @wayland-client-core.h 275:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_get_error ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_get_error = hs_bindgen_025da0df8cd4d000

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_get_protocol_error@
foreign import ccall unsafe "hs_bindgen_c5323f91c10e8294" hs_bindgen_c5323f91c10e8294_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_get_protocol_error@
hs_bindgen_c5323f91c10e8294 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_c5323f91c10e8294 =
  RIP.fromFFIType hs_bindgen_c5323f91c10e8294_base

{-| __C declaration:__ @wl_display_get_protocol_error@

    __defined at:__ @wayland-client-core.h 278:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_get_protocol_error ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> RIP.Ptr (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
     -- ^ __C declaration:__ @interface@
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @id@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_display_get_protocol_error =
  hs_bindgen_c5323f91c10e8294

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_flush@
foreign import ccall unsafe "hs_bindgen_f1f6876dfa3d0024" hs_bindgen_f1f6876dfa3d0024_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_flush@
hs_bindgen_f1f6876dfa3d0024 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_f1f6876dfa3d0024 =
  RIP.fromFFIType hs_bindgen_f1f6876dfa3d0024_base

{-| __C declaration:__ @wl_display_flush@

    __defined at:__ @wayland-client-core.h 283:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_flush ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_flush = hs_bindgen_f1f6876dfa3d0024

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_roundtrip_queue@
foreign import ccall unsafe "hs_bindgen_0a236d70a33b8ed8" hs_bindgen_0a236d70a33b8ed8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_roundtrip_queue@
hs_bindgen_0a236d70a33b8ed8 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> IO RIP.CInt
hs_bindgen_0a236d70a33b8ed8 =
  RIP.fromFFIType hs_bindgen_0a236d70a33b8ed8_base

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
  hs_bindgen_0a236d70a33b8ed8

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_roundtrip@
foreign import ccall unsafe "hs_bindgen_53fd31c6a3fa7f1c" hs_bindgen_53fd31c6a3fa7f1c_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_roundtrip@
hs_bindgen_53fd31c6a3fa7f1c ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_53fd31c6a3fa7f1c =
  RIP.fromFFIType hs_bindgen_53fd31c6a3fa7f1c_base

{-| __C declaration:__ @wl_display_roundtrip@

    __defined at:__ @wayland-client-core.h 290:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_roundtrip ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_roundtrip = hs_bindgen_53fd31c6a3fa7f1c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_create_queue@
foreign import ccall unsafe "hs_bindgen_68bceac3e7a87cfb" hs_bindgen_68bceac3e7a87cfb_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_create_queue@
hs_bindgen_68bceac3e7a87cfb ::
     RIP.Ptr Wl_display
  -> IO (RIP.Ptr Wl_event_queue)
hs_bindgen_68bceac3e7a87cfb =
  RIP.fromFFIType hs_bindgen_68bceac3e7a87cfb_base

{-| __C declaration:__ @wl_display_create_queue@

    __defined at:__ @wayland-client-core.h 293:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_create_queue ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO (RIP.Ptr Wl_event_queue)
wl_display_create_queue = hs_bindgen_68bceac3e7a87cfb

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_create_queue_with_name@
foreign import ccall unsafe "hs_bindgen_4d1b46360880642f" hs_bindgen_4d1b46360880642f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_create_queue_with_name@
hs_bindgen_4d1b46360880642f ::
     RIP.Ptr Wl_display
  -> PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Wl_event_queue)
hs_bindgen_4d1b46360880642f =
  RIP.fromFFIType hs_bindgen_4d1b46360880642f_base

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
  hs_bindgen_4d1b46360880642f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_prepare_read_queue@
foreign import ccall unsafe "hs_bindgen_4ffbfc74d5ff165b" hs_bindgen_4ffbfc74d5ff165b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_prepare_read_queue@
hs_bindgen_4ffbfc74d5ff165b ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> IO RIP.CInt
hs_bindgen_4ffbfc74d5ff165b =
  RIP.fromFFIType hs_bindgen_4ffbfc74d5ff165b_base

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
  hs_bindgen_4ffbfc74d5ff165b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_prepare_read@
foreign import ccall unsafe "hs_bindgen_2364c3a1a930a96d" hs_bindgen_2364c3a1a930a96d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_prepare_read@
hs_bindgen_2364c3a1a930a96d ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_2364c3a1a930a96d =
  RIP.fromFFIType hs_bindgen_2364c3a1a930a96d_base

{-| __C declaration:__ @wl_display_prepare_read@

    __defined at:__ @wayland-client-core.h 304:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_prepare_read ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_prepare_read = hs_bindgen_2364c3a1a930a96d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_cancel_read@
foreign import ccall unsafe "hs_bindgen_eb12ff038f791497" hs_bindgen_eb12ff038f791497_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_cancel_read@
hs_bindgen_eb12ff038f791497 ::
     RIP.Ptr Wl_display
  -> IO ()
hs_bindgen_eb12ff038f791497 =
  RIP.fromFFIType hs_bindgen_eb12ff038f791497_base

{-| __C declaration:__ @wl_display_cancel_read@

    __defined at:__ @wayland-client-core.h 307:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_cancel_read ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO ()
wl_display_cancel_read = hs_bindgen_eb12ff038f791497

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_read_events@
foreign import ccall unsafe "hs_bindgen_7a4a028bf15849b5" hs_bindgen_7a4a028bf15849b5_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_read_events@
hs_bindgen_7a4a028bf15849b5 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_7a4a028bf15849b5 =
  RIP.fromFFIType hs_bindgen_7a4a028bf15849b5_base

{-| __C declaration:__ @wl_display_read_events@

    __defined at:__ @wayland-client-core.h 310:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_read_events ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_read_events = hs_bindgen_7a4a028bf15849b5

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_set_max_buffer_size@
foreign import ccall unsafe "hs_bindgen_c76822bb881f9f01" hs_bindgen_c76822bb881f9f01_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_set_max_buffer_size@
hs_bindgen_c76822bb881f9f01 ::
     RIP.Ptr Wl_display
  -> HsBindgen.Runtime.LibC.CSize
  -> IO ()
hs_bindgen_c76822bb881f9f01 =
  RIP.fromFFIType hs_bindgen_c76822bb881f9f01_base

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
  hs_bindgen_c76822bb881f9f01

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_add_listener@
foreign import ccall unsafe "hs_bindgen_01ccc7609ee66990" hs_bindgen_01ccc7609ee66990_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_add_listener@
hs_bindgen_01ccc7609ee66990 ::
     RIP.Ptr Wl_display
  -> PtrConst.PtrConst Wl_display_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_01ccc7609ee66990 =
  RIP.fromFFIType hs_bindgen_01ccc7609ee66990_base

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
wl_display_add_listener = hs_bindgen_01ccc7609ee66990

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_set_user_data@
foreign import ccall unsafe "hs_bindgen_0530d5406486b1a7" hs_bindgen_0530d5406486b1a7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_set_user_data@
hs_bindgen_0530d5406486b1a7 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_0530d5406486b1a7 =
  RIP.fromFFIType hs_bindgen_0530d5406486b1a7_base

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
  hs_bindgen_0530d5406486b1a7

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_get_user_data@
foreign import ccall unsafe "hs_bindgen_4f069428a8721071" hs_bindgen_4f069428a8721071_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_get_user_data@
hs_bindgen_4f069428a8721071 ::
     RIP.Ptr Wl_display
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_4f069428a8721071 =
  RIP.fromFFIType hs_bindgen_4f069428a8721071_base

{-| __C declaration:__ @wl_display_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1074:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_get_user_data ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> IO (RIP.Ptr RIP.Void)
wl_display_get_user_data =
  hs_bindgen_4f069428a8721071

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_get_version@
foreign import ccall unsafe "hs_bindgen_4e956d7e0484c70c" hs_bindgen_4e956d7e0484c70c_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_get_version@
hs_bindgen_4e956d7e0484c70c ::
     RIP.Ptr Wl_display
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_4e956d7e0484c70c =
  RIP.fromFFIType hs_bindgen_4e956d7e0484c70c_base

{-| __C declaration:__ @wl_display_get_version@

    __defined at:__ @wayland-client-protocol.h 1080:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_get_version ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_display_get_version = hs_bindgen_4e956d7e0484c70c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_sync@
foreign import ccall unsafe "hs_bindgen_2e4e0c59315621ae" hs_bindgen_2e4e0c59315621ae_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_sync@
hs_bindgen_2e4e0c59315621ae ::
     RIP.Ptr Wl_display
  -> IO (RIP.Ptr Wl_callback)
hs_bindgen_2e4e0c59315621ae =
  RIP.fromFFIType hs_bindgen_2e4e0c59315621ae_base

{-| __C declaration:__ @wl_display_sync@

    __defined at:__ @wayland-client-protocol.h 1101:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_sync ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> IO (RIP.Ptr Wl_callback)
wl_display_sync = hs_bindgen_2e4e0c59315621ae

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_get_registry@
foreign import ccall unsafe "hs_bindgen_7ffee6997cb91d50" hs_bindgen_7ffee6997cb91d50_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_display_get_registry@
hs_bindgen_7ffee6997cb91d50 ::
     RIP.Ptr Wl_display
  -> IO (RIP.Ptr Wl_registry)
hs_bindgen_7ffee6997cb91d50 =
  RIP.fromFFIType hs_bindgen_7ffee6997cb91d50_base

{-| __C declaration:__ @wl_display_get_registry@

    __defined at:__ @wayland-client-protocol.h 1125:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_get_registry ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> IO (RIP.Ptr Wl_registry)
wl_display_get_registry = hs_bindgen_7ffee6997cb91d50

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_registry_add_listener@
foreign import ccall unsafe "hs_bindgen_4e40f59c1e25859a" hs_bindgen_4e40f59c1e25859a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_registry_add_listener@
hs_bindgen_4e40f59c1e25859a ::
     RIP.Ptr Wl_registry
  -> PtrConst.PtrConst Wl_registry_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_4e40f59c1e25859a =
  RIP.fromFFIType hs_bindgen_4e40f59c1e25859a_base

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
  hs_bindgen_4e40f59c1e25859a

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_registry_set_user_data@
foreign import ccall unsafe "hs_bindgen_007cfd03b6363fd9" hs_bindgen_007cfd03b6363fd9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_registry_set_user_data@
hs_bindgen_007cfd03b6363fd9 ::
     RIP.Ptr Wl_registry
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_007cfd03b6363fd9 =
  RIP.fromFFIType hs_bindgen_007cfd03b6363fd9_base

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
  hs_bindgen_007cfd03b6363fd9

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_registry_get_user_data@
foreign import ccall unsafe "hs_bindgen_91b7ed9a90bfa863" hs_bindgen_91b7ed9a90bfa863_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_registry_get_user_data@
hs_bindgen_91b7ed9a90bfa863 ::
     RIP.Ptr Wl_registry
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_91b7ed9a90bfa863 =
  RIP.fromFFIType hs_bindgen_91b7ed9a90bfa863_base

{-| __C declaration:__ @wl_registry_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1213:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_get_user_data ::
     RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @wl_registry@
  -> IO (RIP.Ptr RIP.Void)
wl_registry_get_user_data =
  hs_bindgen_91b7ed9a90bfa863

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_registry_get_version@
foreign import ccall unsafe "hs_bindgen_743260d1077485c4" hs_bindgen_743260d1077485c4_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_registry_get_version@
hs_bindgen_743260d1077485c4 ::
     RIP.Ptr Wl_registry
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_743260d1077485c4 =
  RIP.fromFFIType hs_bindgen_743260d1077485c4_base

{-| __C declaration:__ @wl_registry_get_version@

    __defined at:__ @wayland-client-protocol.h 1219:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_get_version ::
     RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @wl_registry@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_registry_get_version = hs_bindgen_743260d1077485c4

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_registry_destroy@
foreign import ccall unsafe "hs_bindgen_e2ed04319d3c93b1" hs_bindgen_e2ed04319d3c93b1_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_registry_destroy@
hs_bindgen_e2ed04319d3c93b1 ::
     RIP.Ptr Wl_registry
  -> IO ()
hs_bindgen_e2ed04319d3c93b1 =
  RIP.fromFFIType hs_bindgen_e2ed04319d3c93b1_base

{-| __C declaration:__ @wl_registry_destroy@

    __defined at:__ @wayland-client-protocol.h 1226:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_destroy ::
     RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @wl_registry@
  -> IO ()
wl_registry_destroy = hs_bindgen_e2ed04319d3c93b1

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_registry_bind@
foreign import ccall unsafe "hs_bindgen_1343566a1f4a4af1" hs_bindgen_1343566a1f4a4af1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_registry_bind@
hs_bindgen_1343566a1f4a4af1 ::
     RIP.Ptr Wl_registry
  -> HsBindgen.Runtime.LibC.Word32
  -> PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_1343566a1f4a4af1 =
  RIP.fromFFIType hs_bindgen_1343566a1f4a4af1_base

{-| __C declaration:__ @wl_registry_bind@

    __defined at:__ @wayland-client-protocol.h 1238:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_bind ::
     RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @wl_registry@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @name@
  -> PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
     -- ^ __C declaration:__ @interface@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @version@
  -> IO (RIP.Ptr RIP.Void)
wl_registry_bind = hs_bindgen_1343566a1f4a4af1

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_callback_add_listener@
foreign import ccall unsafe "hs_bindgen_d61870610b55158c" hs_bindgen_d61870610b55158c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_callback_add_listener@
hs_bindgen_d61870610b55158c ::
     RIP.Ptr Wl_callback
  -> PtrConst.PtrConst Wl_callback_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_d61870610b55158c =
  RIP.fromFFIType hs_bindgen_d61870610b55158c_base

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
  hs_bindgen_d61870610b55158c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_callback_set_user_data@
foreign import ccall unsafe "hs_bindgen_0ce1cd2171985047" hs_bindgen_0ce1cd2171985047_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_callback_set_user_data@
hs_bindgen_0ce1cd2171985047 ::
     RIP.Ptr Wl_callback
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_0ce1cd2171985047 =
  RIP.fromFFIType hs_bindgen_0ce1cd2171985047_base

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
  hs_bindgen_0ce1cd2171985047

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_callback_get_user_data@
foreign import ccall unsafe "hs_bindgen_f8d49a8b2fcc07ef" hs_bindgen_f8d49a8b2fcc07ef_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_callback_get_user_data@
hs_bindgen_f8d49a8b2fcc07ef ::
     RIP.Ptr Wl_callback
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_f8d49a8b2fcc07ef =
  RIP.fromFFIType hs_bindgen_f8d49a8b2fcc07ef_base

{-| __C declaration:__ @wl_callback_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1290:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_get_user_data ::
     RIP.Ptr Wl_callback
     -- ^ __C declaration:__ @wl_callback@
  -> IO (RIP.Ptr RIP.Void)
wl_callback_get_user_data =
  hs_bindgen_f8d49a8b2fcc07ef

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_callback_get_version@
foreign import ccall unsafe "hs_bindgen_a182c0d96c826fab" hs_bindgen_a182c0d96c826fab_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_callback_get_version@
hs_bindgen_a182c0d96c826fab ::
     RIP.Ptr Wl_callback
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_a182c0d96c826fab =
  RIP.fromFFIType hs_bindgen_a182c0d96c826fab_base

{-| __C declaration:__ @wl_callback_get_version@

    __defined at:__ @wayland-client-protocol.h 1296:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_get_version ::
     RIP.Ptr Wl_callback
     -- ^ __C declaration:__ @wl_callback@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_callback_get_version = hs_bindgen_a182c0d96c826fab

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_callback_destroy@
foreign import ccall unsafe "hs_bindgen_4aac6b06a6a20d47" hs_bindgen_4aac6b06a6a20d47_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_callback_destroy@
hs_bindgen_4aac6b06a6a20d47 ::
     RIP.Ptr Wl_callback
  -> IO ()
hs_bindgen_4aac6b06a6a20d47 =
  RIP.fromFFIType hs_bindgen_4aac6b06a6a20d47_base

{-| __C declaration:__ @wl_callback_destroy@

    __defined at:__ @wayland-client-protocol.h 1303:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_destroy ::
     RIP.Ptr Wl_callback
     -- ^ __C declaration:__ @wl_callback@
  -> IO ()
wl_callback_destroy = hs_bindgen_4aac6b06a6a20d47

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_compositor_set_user_data@
foreign import ccall unsafe "hs_bindgen_2cba6635e505541f" hs_bindgen_2cba6635e505541f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_compositor_set_user_data@
hs_bindgen_2cba6635e505541f ::
     RIP.Ptr Wl_compositor
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_2cba6635e505541f =
  RIP.fromFFIType hs_bindgen_2cba6635e505541f_base

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
  hs_bindgen_2cba6635e505541f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_compositor_get_user_data@
foreign import ccall unsafe "hs_bindgen_150d9d87dab90fe4" hs_bindgen_150d9d87dab90fe4_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_compositor_get_user_data@
hs_bindgen_150d9d87dab90fe4 ::
     RIP.Ptr Wl_compositor
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_150d9d87dab90fe4 =
  RIP.fromFFIType hs_bindgen_150d9d87dab90fe4_base

{-| __C declaration:__ @wl_compositor_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1330:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_get_user_data ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO (RIP.Ptr RIP.Void)
wl_compositor_get_user_data =
  hs_bindgen_150d9d87dab90fe4

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_compositor_get_version@
foreign import ccall unsafe "hs_bindgen_bd8533a1fa7e96d1" hs_bindgen_bd8533a1fa7e96d1_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_compositor_get_version@
hs_bindgen_bd8533a1fa7e96d1 ::
     RIP.Ptr Wl_compositor
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_bd8533a1fa7e96d1 =
  RIP.fromFFIType hs_bindgen_bd8533a1fa7e96d1_base

{-| __C declaration:__ @wl_compositor_get_version@

    __defined at:__ @wayland-client-protocol.h 1336:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_get_version ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_compositor_get_version =
  hs_bindgen_bd8533a1fa7e96d1

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_compositor_destroy@
foreign import ccall unsafe "hs_bindgen_8167792d74f9c4fc" hs_bindgen_8167792d74f9c4fc_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_compositor_destroy@
hs_bindgen_8167792d74f9c4fc ::
     RIP.Ptr Wl_compositor
  -> IO ()
hs_bindgen_8167792d74f9c4fc =
  RIP.fromFFIType hs_bindgen_8167792d74f9c4fc_base

{-| __C declaration:__ @wl_compositor_destroy@

    __defined at:__ @wayland-client-protocol.h 1343:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_destroy ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO ()
wl_compositor_destroy = hs_bindgen_8167792d74f9c4fc

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_compositor_create_surface@
foreign import ccall unsafe "hs_bindgen_995cfb5e3cc991f5" hs_bindgen_995cfb5e3cc991f5_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_compositor_create_surface@
hs_bindgen_995cfb5e3cc991f5 ::
     RIP.Ptr Wl_compositor
  -> IO (RIP.Ptr Wl_surface)
hs_bindgen_995cfb5e3cc991f5 =
  RIP.fromFFIType hs_bindgen_995cfb5e3cc991f5_base

{-| __C declaration:__ @wl_compositor_create_surface@

    __defined at:__ @wayland-client-protocol.h 1354:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_create_surface ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO (RIP.Ptr Wl_surface)
wl_compositor_create_surface =
  hs_bindgen_995cfb5e3cc991f5

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_compositor_create_region@
foreign import ccall unsafe "hs_bindgen_f6642c069ea461ff" hs_bindgen_f6642c069ea461ff_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_compositor_create_region@
hs_bindgen_f6642c069ea461ff ::
     RIP.Ptr Wl_compositor
  -> IO (RIP.Ptr Wl_region)
hs_bindgen_f6642c069ea461ff =
  RIP.fromFFIType hs_bindgen_f6642c069ea461ff_base

{-| __C declaration:__ @wl_compositor_create_region@

    __defined at:__ @wayland-client-protocol.h 1370:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_create_region ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO (RIP.Ptr Wl_region)
wl_compositor_create_region =
  hs_bindgen_f6642c069ea461ff

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_pool_set_user_data@
foreign import ccall unsafe "hs_bindgen_1b6805ad642644c6" hs_bindgen_1b6805ad642644c6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_pool_set_user_data@
hs_bindgen_1b6805ad642644c6 ::
     RIP.Ptr Wl_shm_pool
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_1b6805ad642644c6 =
  RIP.fromFFIType hs_bindgen_1b6805ad642644c6_base

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
  hs_bindgen_1b6805ad642644c6

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_pool_get_user_data@
foreign import ccall unsafe "hs_bindgen_de47fc9921c8ea8f" hs_bindgen_de47fc9921c8ea8f_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_pool_get_user_data@
hs_bindgen_de47fc9921c8ea8f ::
     RIP.Ptr Wl_shm_pool
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_de47fc9921c8ea8f =
  RIP.fromFFIType hs_bindgen_de47fc9921c8ea8f_base

{-| __C declaration:__ @wl_shm_pool_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1407:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_get_user_data ::
     RIP.Ptr Wl_shm_pool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> IO (RIP.Ptr RIP.Void)
wl_shm_pool_get_user_data =
  hs_bindgen_de47fc9921c8ea8f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_pool_get_version@
foreign import ccall unsafe "hs_bindgen_b8234e608b70de1d" hs_bindgen_b8234e608b70de1d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_pool_get_version@
hs_bindgen_b8234e608b70de1d ::
     RIP.Ptr Wl_shm_pool
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_b8234e608b70de1d =
  RIP.fromFFIType hs_bindgen_b8234e608b70de1d_base

{-| __C declaration:__ @wl_shm_pool_get_version@

    __defined at:__ @wayland-client-protocol.h 1413:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_get_version ::
     RIP.Ptr Wl_shm_pool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shm_pool_get_version = hs_bindgen_b8234e608b70de1d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_pool_create_buffer@
foreign import ccall unsafe "hs_bindgen_5c0265445ae89f50" hs_bindgen_5c0265445ae89f50_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_pool_create_buffer@
hs_bindgen_5c0265445ae89f50 ::
     RIP.Ptr Wl_shm_pool
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr Wl_buffer)
hs_bindgen_5c0265445ae89f50 =
  RIP.fromFFIType hs_bindgen_5c0265445ae89f50_base

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
  hs_bindgen_5c0265445ae89f50

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_pool_destroy@
foreign import ccall unsafe "hs_bindgen_2f65deb6e361fc72" hs_bindgen_2f65deb6e361fc72_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_pool_destroy@
hs_bindgen_2f65deb6e361fc72 ::
     RIP.Ptr Wl_shm_pool
  -> IO ()
hs_bindgen_2f65deb6e361fc72 =
  RIP.fromFFIType hs_bindgen_2f65deb6e361fc72_base

{-| __C declaration:__ @wl_shm_pool_destroy@

    __defined at:__ @wayland-client-protocol.h 1454:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_destroy ::
     RIP.Ptr Wl_shm_pool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> IO ()
wl_shm_pool_destroy = hs_bindgen_2f65deb6e361fc72

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_pool_resize@
foreign import ccall unsafe "hs_bindgen_b7b74fa097c7a7c8" hs_bindgen_b7b74fa097c7a7c8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_pool_resize@
hs_bindgen_b7b74fa097c7a7c8 ::
     RIP.Ptr Wl_shm_pool
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_b7b74fa097c7a7c8 =
  RIP.fromFFIType hs_bindgen_b7b74fa097c7a7c8_base

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
wl_shm_pool_resize = hs_bindgen_b7b74fa097c7a7c8

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_add_listener@
foreign import ccall unsafe "hs_bindgen_54d41896cbe11786" hs_bindgen_54d41896cbe11786_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_add_listener@
hs_bindgen_54d41896cbe11786 ::
     RIP.Ptr Wl_shm
  -> PtrConst.PtrConst Wl_shm_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_54d41896cbe11786 =
  RIP.fromFFIType hs_bindgen_54d41896cbe11786_base

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
wl_shm_add_listener = hs_bindgen_54d41896cbe11786

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_set_user_data@
foreign import ccall unsafe "hs_bindgen_928af0f62e108764" hs_bindgen_928af0f62e108764_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_set_user_data@
hs_bindgen_928af0f62e108764 ::
     RIP.Ptr Wl_shm
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_928af0f62e108764 =
  RIP.fromFFIType hs_bindgen_928af0f62e108764_base

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
wl_shm_set_user_data = hs_bindgen_928af0f62e108764

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_get_user_data@
foreign import ccall unsafe "hs_bindgen_db8eb581679778a8" hs_bindgen_db8eb581679778a8_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_get_user_data@
hs_bindgen_db8eb581679778a8 ::
     RIP.Ptr Wl_shm
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_db8eb581679778a8 =
  RIP.fromFFIType hs_bindgen_db8eb581679778a8_base

{-| __C declaration:__ @wl_shm_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2038:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_get_user_data ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> IO (RIP.Ptr RIP.Void)
wl_shm_get_user_data = hs_bindgen_db8eb581679778a8

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_get_version@
foreign import ccall unsafe "hs_bindgen_f62814df290df6ec" hs_bindgen_f62814df290df6ec_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_get_version@
hs_bindgen_f62814df290df6ec ::
     RIP.Ptr Wl_shm
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_f62814df290df6ec =
  RIP.fromFFIType hs_bindgen_f62814df290df6ec_base

{-| __C declaration:__ @wl_shm_get_version@

    __defined at:__ @wayland-client-protocol.h 2044:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_get_version ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shm_get_version = hs_bindgen_f62814df290df6ec

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_destroy@
foreign import ccall unsafe "hs_bindgen_3357de8656934fdc" hs_bindgen_3357de8656934fdc_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_destroy@
hs_bindgen_3357de8656934fdc ::
     RIP.Ptr Wl_shm
  -> IO ()
hs_bindgen_3357de8656934fdc =
  RIP.fromFFIType hs_bindgen_3357de8656934fdc_base

{-| __C declaration:__ @wl_shm_destroy@

    __defined at:__ @wayland-client-protocol.h 2051:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_destroy ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> IO ()
wl_shm_destroy = hs_bindgen_3357de8656934fdc

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_create_pool@
foreign import ccall unsafe "hs_bindgen_0518dd7ac98f33da" hs_bindgen_0518dd7ac98f33da_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_create_pool@
hs_bindgen_0518dd7ac98f33da ::
     RIP.Ptr Wl_shm
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO (RIP.Ptr Wl_shm_pool)
hs_bindgen_0518dd7ac98f33da =
  RIP.fromFFIType hs_bindgen_0518dd7ac98f33da_base

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
wl_shm_create_pool = hs_bindgen_0518dd7ac98f33da

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_release@
foreign import ccall unsafe "hs_bindgen_0e54eca4b81f941b" hs_bindgen_0e54eca4b81f941b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shm_release@
hs_bindgen_0e54eca4b81f941b ::
     RIP.Ptr Wl_shm
  -> IO ()
hs_bindgen_0e54eca4b81f941b =
  RIP.fromFFIType hs_bindgen_0e54eca4b81f941b_base

{-| __C declaration:__ @wl_shm_release@

    __defined at:__ @wayland-client-protocol.h 2085:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_release ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> IO ()
wl_shm_release = hs_bindgen_0e54eca4b81f941b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_buffer_add_listener@
foreign import ccall unsafe "hs_bindgen_1e316409a0696a9a" hs_bindgen_1e316409a0696a9a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_buffer_add_listener@
hs_bindgen_1e316409a0696a9a ::
     RIP.Ptr Wl_buffer
  -> PtrConst.PtrConst Wl_buffer_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_1e316409a0696a9a =
  RIP.fromFFIType hs_bindgen_1e316409a0696a9a_base

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
wl_buffer_add_listener = hs_bindgen_1e316409a0696a9a

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_buffer_set_user_data@
foreign import ccall unsafe "hs_bindgen_5c6a25269ef07707" hs_bindgen_5c6a25269ef07707_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_buffer_set_user_data@
hs_bindgen_5c6a25269ef07707 ::
     RIP.Ptr Wl_buffer
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_5c6a25269ef07707 =
  RIP.fromFFIType hs_bindgen_5c6a25269ef07707_base

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
wl_buffer_set_user_data = hs_bindgen_5c6a25269ef07707

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_buffer_get_user_data@
foreign import ccall unsafe "hs_bindgen_ad244219f5d04a3e" hs_bindgen_ad244219f5d04a3e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_buffer_get_user_data@
hs_bindgen_ad244219f5d04a3e ::
     RIP.Ptr Wl_buffer
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_ad244219f5d04a3e =
  RIP.fromFFIType hs_bindgen_ad244219f5d04a3e_base

{-| __C declaration:__ @wl_buffer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2150:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_get_user_data ::
     RIP.Ptr Wl_buffer
     -- ^ __C declaration:__ @wl_buffer@
  -> IO (RIP.Ptr RIP.Void)
wl_buffer_get_user_data = hs_bindgen_ad244219f5d04a3e

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_buffer_get_version@
foreign import ccall unsafe "hs_bindgen_f91f54024821be39" hs_bindgen_f91f54024821be39_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_buffer_get_version@
hs_bindgen_f91f54024821be39 ::
     RIP.Ptr Wl_buffer
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_f91f54024821be39 =
  RIP.fromFFIType hs_bindgen_f91f54024821be39_base

{-| __C declaration:__ @wl_buffer_get_version@

    __defined at:__ @wayland-client-protocol.h 2156:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_get_version ::
     RIP.Ptr Wl_buffer
     -- ^ __C declaration:__ @wl_buffer@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_buffer_get_version = hs_bindgen_f91f54024821be39

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_buffer_destroy@
foreign import ccall unsafe "hs_bindgen_2557c5f74bad1488" hs_bindgen_2557c5f74bad1488_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_buffer_destroy@
hs_bindgen_2557c5f74bad1488 ::
     RIP.Ptr Wl_buffer
  -> IO ()
hs_bindgen_2557c5f74bad1488 =
  RIP.fromFFIType hs_bindgen_2557c5f74bad1488_base

{-| __C declaration:__ @wl_buffer_destroy@

    __defined at:__ @wayland-client-protocol.h 2170:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_destroy ::
     RIP.Ptr Wl_buffer
     -- ^ __C declaration:__ @wl_buffer@
  -> IO ()
wl_buffer_destroy = hs_bindgen_2557c5f74bad1488

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_offer_add_listener@
foreign import ccall unsafe "hs_bindgen_2348f52c14657a23" hs_bindgen_2348f52c14657a23_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_offer_add_listener@
hs_bindgen_2348f52c14657a23 ::
     RIP.Ptr Wl_data_offer
  -> PtrConst.PtrConst Wl_data_offer_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_2348f52c14657a23 =
  RIP.fromFFIType hs_bindgen_2348f52c14657a23_base

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
  hs_bindgen_2348f52c14657a23

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_offer_set_user_data@
foreign import ccall unsafe "hs_bindgen_b163c6ea8f7623c3" hs_bindgen_b163c6ea8f7623c3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_offer_set_user_data@
hs_bindgen_b163c6ea8f7623c3 ::
     RIP.Ptr Wl_data_offer
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_b163c6ea8f7623c3 =
  RIP.fromFFIType hs_bindgen_b163c6ea8f7623c3_base

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
  hs_bindgen_b163c6ea8f7623c3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_offer_get_user_data@
foreign import ccall unsafe "hs_bindgen_568c0010eaaf0802" hs_bindgen_568c0010eaaf0802_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_offer_get_user_data@
hs_bindgen_568c0010eaaf0802 ::
     RIP.Ptr Wl_data_offer
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_568c0010eaaf0802 =
  RIP.fromFFIType hs_bindgen_568c0010eaaf0802_base

{-| __C declaration:__ @wl_data_offer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2334:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_get_user_data ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO (RIP.Ptr RIP.Void)
wl_data_offer_get_user_data =
  hs_bindgen_568c0010eaaf0802

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_offer_get_version@
foreign import ccall unsafe "hs_bindgen_e8e3b060e8046647" hs_bindgen_e8e3b060e8046647_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_offer_get_version@
hs_bindgen_e8e3b060e8046647 ::
     RIP.Ptr Wl_data_offer
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_e8e3b060e8046647 =
  RIP.fromFFIType hs_bindgen_e8e3b060e8046647_base

{-| __C declaration:__ @wl_data_offer_get_version@

    __defined at:__ @wayland-client-protocol.h 2340:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_get_version ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_offer_get_version =
  hs_bindgen_e8e3b060e8046647

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_offer_accept@
foreign import ccall unsafe "hs_bindgen_d5607688382b4c57" hs_bindgen_d5607688382b4c57_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_offer_accept@
hs_bindgen_d5607688382b4c57 ::
     RIP.Ptr Wl_data_offer
  -> HsBindgen.Runtime.LibC.Word32
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_d5607688382b4c57 =
  RIP.fromFFIType hs_bindgen_d5607688382b4c57_base

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
wl_data_offer_accept = hs_bindgen_d5607688382b4c57

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_offer_receive@
foreign import ccall unsafe "hs_bindgen_c2eaa2819dc01e45" hs_bindgen_c2eaa2819dc01e45_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_offer_receive@
hs_bindgen_c2eaa2819dc01e45 ::
     RIP.Ptr Wl_data_offer
  -> PtrConst.PtrConst RIP.CChar
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_c2eaa2819dc01e45 =
  RIP.fromFFIType hs_bindgen_c2eaa2819dc01e45_base

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
wl_data_offer_receive = hs_bindgen_c2eaa2819dc01e45

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_offer_destroy@
foreign import ccall unsafe "hs_bindgen_d92aafa12eacf403" hs_bindgen_d92aafa12eacf403_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_offer_destroy@
hs_bindgen_d92aafa12eacf403 ::
     RIP.Ptr Wl_data_offer
  -> IO ()
hs_bindgen_d92aafa12eacf403 =
  RIP.fromFFIType hs_bindgen_d92aafa12eacf403_base

{-| __C declaration:__ @wl_data_offer_destroy@

    __defined at:__ @wayland-client-protocol.h 2402:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_destroy ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO ()
wl_data_offer_destroy = hs_bindgen_d92aafa12eacf403

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_offer_finish@
foreign import ccall unsafe "hs_bindgen_e8ae5c0538f6a5da" hs_bindgen_e8ae5c0538f6a5da_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_offer_finish@
hs_bindgen_e8ae5c0538f6a5da ::
     RIP.Ptr Wl_data_offer
  -> IO ()
hs_bindgen_e8ae5c0538f6a5da =
  RIP.fromFFIType hs_bindgen_e8ae5c0538f6a5da_base

{-| __C declaration:__ @wl_data_offer_finish@

    __defined at:__ @wayland-client-protocol.h 2427:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_finish ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO ()
wl_data_offer_finish = hs_bindgen_e8ae5c0538f6a5da

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_offer_set_actions@
foreign import ccall unsafe "hs_bindgen_ceed7c00d9ad6edf" hs_bindgen_ceed7c00d9ad6edf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_offer_set_actions@
hs_bindgen_ceed7c00d9ad6edf ::
     RIP.Ptr Wl_data_offer
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_ceed7c00d9ad6edf =
  RIP.fromFFIType hs_bindgen_ceed7c00d9ad6edf_base

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
  hs_bindgen_ceed7c00d9ad6edf

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_source_add_listener@
foreign import ccall unsafe "hs_bindgen_d578746817f01912" hs_bindgen_d578746817f01912_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_source_add_listener@
hs_bindgen_d578746817f01912 ::
     RIP.Ptr Wl_data_source
  -> PtrConst.PtrConst Wl_data_source_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_d578746817f01912 =
  RIP.fromFFIType hs_bindgen_d578746817f01912_base

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
  hs_bindgen_d578746817f01912

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_source_set_user_data@
foreign import ccall unsafe "hs_bindgen_a2ae807b76602fa8" hs_bindgen_a2ae807b76602fa8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_source_set_user_data@
hs_bindgen_a2ae807b76602fa8 ::
     RIP.Ptr Wl_data_source
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_a2ae807b76602fa8 =
  RIP.fromFFIType hs_bindgen_a2ae807b76602fa8_base

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
  hs_bindgen_a2ae807b76602fa8

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_source_get_user_data@
foreign import ccall unsafe "hs_bindgen_34aa45f9f3b4291e" hs_bindgen_34aa45f9f3b4291e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_source_get_user_data@
hs_bindgen_34aa45f9f3b4291e ::
     RIP.Ptr Wl_data_source
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_34aa45f9f3b4291e =
  RIP.fromFFIType hs_bindgen_34aa45f9f3b4291e_base

{-| __C declaration:__ @wl_data_source_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2675:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_get_user_data ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> IO (RIP.Ptr RIP.Void)
wl_data_source_get_user_data =
  hs_bindgen_34aa45f9f3b4291e

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_source_get_version@
foreign import ccall unsafe "hs_bindgen_d886817c1b5d38ad" hs_bindgen_d886817c1b5d38ad_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_source_get_version@
hs_bindgen_d886817c1b5d38ad ::
     RIP.Ptr Wl_data_source
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_d886817c1b5d38ad =
  RIP.fromFFIType hs_bindgen_d886817c1b5d38ad_base

{-| __C declaration:__ @wl_data_source_get_version@

    __defined at:__ @wayland-client-protocol.h 2681:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_get_version ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_source_get_version =
  hs_bindgen_d886817c1b5d38ad

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_source_offer@
foreign import ccall unsafe "hs_bindgen_2d922ccc7a4e9446" hs_bindgen_2d922ccc7a4e9446_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_source_offer@
hs_bindgen_2d922ccc7a4e9446 ::
     RIP.Ptr Wl_data_source
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_2d922ccc7a4e9446 =
  RIP.fromFFIType hs_bindgen_2d922ccc7a4e9446_base

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
wl_data_source_offer = hs_bindgen_2d922ccc7a4e9446

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_source_destroy@
foreign import ccall unsafe "hs_bindgen_cb32e7259e6fe058" hs_bindgen_cb32e7259e6fe058_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_source_destroy@
hs_bindgen_cb32e7259e6fe058 ::
     RIP.Ptr Wl_data_source
  -> IO ()
hs_bindgen_cb32e7259e6fe058 =
  RIP.fromFFIType hs_bindgen_cb32e7259e6fe058_base

{-| __C declaration:__ @wl_data_source_destroy@

    __defined at:__ @wayland-client-protocol.h 2706:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_destroy ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> IO ()
wl_data_source_destroy = hs_bindgen_cb32e7259e6fe058

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_source_set_actions@
foreign import ccall unsafe "hs_bindgen_54c9b7c4fa67bcaf" hs_bindgen_54c9b7c4fa67bcaf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_source_set_actions@
hs_bindgen_54c9b7c4fa67bcaf ::
     RIP.Ptr Wl_data_source
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_54c9b7c4fa67bcaf =
  RIP.fromFFIType hs_bindgen_54c9b7c4fa67bcaf_base

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
  hs_bindgen_54c9b7c4fa67bcaf

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_add_listener@
foreign import ccall unsafe "hs_bindgen_b6f1e2452922469d" hs_bindgen_b6f1e2452922469d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_add_listener@
hs_bindgen_b6f1e2452922469d ::
     RIP.Ptr Wl_data_device
  -> PtrConst.PtrConst Wl_data_device_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_b6f1e2452922469d =
  RIP.fromFFIType hs_bindgen_b6f1e2452922469d_base

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
  hs_bindgen_b6f1e2452922469d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_set_user_data@
foreign import ccall unsafe "hs_bindgen_7d8b5c6bf105fdc3" hs_bindgen_7d8b5c6bf105fdc3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_set_user_data@
hs_bindgen_7d8b5c6bf105fdc3 ::
     RIP.Ptr Wl_data_device
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_7d8b5c6bf105fdc3 =
  RIP.fromFFIType hs_bindgen_7d8b5c6bf105fdc3_base

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
  hs_bindgen_7d8b5c6bf105fdc3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_get_user_data@
foreign import ccall unsafe "hs_bindgen_5ec82ff186dc8232" hs_bindgen_5ec82ff186dc8232_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_get_user_data@
hs_bindgen_5ec82ff186dc8232 ::
     RIP.Ptr Wl_data_device
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_5ec82ff186dc8232 =
  RIP.fromFFIType hs_bindgen_5ec82ff186dc8232_base

{-| __C declaration:__ @wl_data_device_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2918:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_get_user_data ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> IO (RIP.Ptr RIP.Void)
wl_data_device_get_user_data =
  hs_bindgen_5ec82ff186dc8232

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_get_version@
foreign import ccall unsafe "hs_bindgen_8f2496804a16bc35" hs_bindgen_8f2496804a16bc35_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_get_version@
hs_bindgen_8f2496804a16bc35 ::
     RIP.Ptr Wl_data_device
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_8f2496804a16bc35 =
  RIP.fromFFIType hs_bindgen_8f2496804a16bc35_base

{-| __C declaration:__ @wl_data_device_get_version@

    __defined at:__ @wayland-client-protocol.h 2924:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_get_version ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_device_get_version =
  hs_bindgen_8f2496804a16bc35

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_destroy@
foreign import ccall unsafe "hs_bindgen_14179014bf1b5bb7" hs_bindgen_14179014bf1b5bb7_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_destroy@
hs_bindgen_14179014bf1b5bb7 ::
     RIP.Ptr Wl_data_device
  -> IO ()
hs_bindgen_14179014bf1b5bb7 =
  RIP.fromFFIType hs_bindgen_14179014bf1b5bb7_base

{-| __C declaration:__ @wl_data_device_destroy@

    __defined at:__ @wayland-client-protocol.h 2931:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_destroy ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> IO ()
wl_data_device_destroy = hs_bindgen_14179014bf1b5bb7

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_start_drag@
foreign import ccall unsafe "hs_bindgen_91001ef68e6a60af" hs_bindgen_91001ef68e6a60af_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_start_drag@
hs_bindgen_91001ef68e6a60af ::
     RIP.Ptr Wl_data_device
  -> RIP.Ptr Wl_data_source
  -> RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_91001ef68e6a60af =
  RIP.fromFFIType hs_bindgen_91001ef68e6a60af_base

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
  hs_bindgen_91001ef68e6a60af

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_set_selection@
foreign import ccall unsafe "hs_bindgen_070d8a3528706b69" hs_bindgen_070d8a3528706b69_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_set_selection@
hs_bindgen_070d8a3528706b69 ::
     RIP.Ptr Wl_data_device
  -> RIP.Ptr Wl_data_source
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_070d8a3528706b69 =
  RIP.fromFFIType hs_bindgen_070d8a3528706b69_base

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
  hs_bindgen_070d8a3528706b69

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_release@
foreign import ccall unsafe "hs_bindgen_38e74e9638e08f5e" hs_bindgen_38e74e9638e08f5e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_release@
hs_bindgen_38e74e9638e08f5e ::
     RIP.Ptr Wl_data_device
  -> IO ()
hs_bindgen_38e74e9638e08f5e =
  RIP.fromFFIType hs_bindgen_38e74e9638e08f5e_base

{-| __C declaration:__ @wl_data_device_release@

    __defined at:__ @wayland-client-protocol.h 3001:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_release ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> IO ()
wl_data_device_release = hs_bindgen_38e74e9638e08f5e

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_manager_set_user_data@
foreign import ccall unsafe "hs_bindgen_8152872f456f5287" hs_bindgen_8152872f456f5287_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_manager_set_user_data@
hs_bindgen_8152872f456f5287 ::
     RIP.Ptr Wl_data_device_manager
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_8152872f456f5287 =
  RIP.fromFFIType hs_bindgen_8152872f456f5287_base

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
  hs_bindgen_8152872f456f5287

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_manager_get_user_data@
foreign import ccall unsafe "hs_bindgen_d3c8ce678dc0ad52" hs_bindgen_d3c8ce678dc0ad52_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_manager_get_user_data@
hs_bindgen_d3c8ce678dc0ad52 ::
     RIP.Ptr Wl_data_device_manager
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_d3c8ce678dc0ad52 =
  RIP.fromFFIType hs_bindgen_d3c8ce678dc0ad52_base

{-| __C declaration:__ @wl_data_device_manager_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3079:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_user_data ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO (RIP.Ptr RIP.Void)
wl_data_device_manager_get_user_data =
  hs_bindgen_d3c8ce678dc0ad52

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_manager_get_version@
foreign import ccall unsafe "hs_bindgen_d029d4af87c1aa78" hs_bindgen_d029d4af87c1aa78_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_manager_get_version@
hs_bindgen_d029d4af87c1aa78 ::
     RIP.Ptr Wl_data_device_manager
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_d029d4af87c1aa78 =
  RIP.fromFFIType hs_bindgen_d029d4af87c1aa78_base

{-| __C declaration:__ @wl_data_device_manager_get_version@

    __defined at:__ @wayland-client-protocol.h 3085:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_version ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_device_manager_get_version =
  hs_bindgen_d029d4af87c1aa78

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_manager_destroy@
foreign import ccall unsafe "hs_bindgen_5a62d6f47d05fb28" hs_bindgen_5a62d6f47d05fb28_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_manager_destroy@
hs_bindgen_5a62d6f47d05fb28 ::
     RIP.Ptr Wl_data_device_manager
  -> IO ()
hs_bindgen_5a62d6f47d05fb28 =
  RIP.fromFFIType hs_bindgen_5a62d6f47d05fb28_base

{-| __C declaration:__ @wl_data_device_manager_destroy@

    __defined at:__ @wayland-client-protocol.h 3092:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_destroy ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO ()
wl_data_device_manager_destroy =
  hs_bindgen_5a62d6f47d05fb28

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_manager_create_data_source@
foreign import ccall unsafe "hs_bindgen_b4c658c3e7dcf77e" hs_bindgen_b4c658c3e7dcf77e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_manager_create_data_source@
hs_bindgen_b4c658c3e7dcf77e ::
     RIP.Ptr Wl_data_device_manager
  -> IO (RIP.Ptr Wl_data_source)
hs_bindgen_b4c658c3e7dcf77e =
  RIP.fromFFIType hs_bindgen_b4c658c3e7dcf77e_base

{-| __C declaration:__ @wl_data_device_manager_create_data_source@

    __defined at:__ @wayland-client-protocol.h 3103:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_create_data_source ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO (RIP.Ptr Wl_data_source)
wl_data_device_manager_create_data_source =
  hs_bindgen_b4c658c3e7dcf77e

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_manager_get_data_device@
foreign import ccall unsafe "hs_bindgen_80ec432b902085ca" hs_bindgen_80ec432b902085ca_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_data_device_manager_get_data_device@
hs_bindgen_80ec432b902085ca ::
     RIP.Ptr Wl_data_device_manager
  -> RIP.Ptr Wl_seat
  -> IO (RIP.Ptr Wl_data_device)
hs_bindgen_80ec432b902085ca =
  RIP.fromFFIType hs_bindgen_80ec432b902085ca_base

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
  hs_bindgen_80ec432b902085ca

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_set_user_data@
foreign import ccall unsafe "hs_bindgen_0fccd809f9994bc6" hs_bindgen_0fccd809f9994bc6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_set_user_data@
hs_bindgen_0fccd809f9994bc6 ::
     RIP.Ptr Wl_shell
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_0fccd809f9994bc6 =
  RIP.fromFFIType hs_bindgen_0fccd809f9994bc6_base

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
wl_shell_set_user_data = hs_bindgen_0fccd809f9994bc6

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_get_user_data@
foreign import ccall unsafe "hs_bindgen_3cf7c45e171d421e" hs_bindgen_3cf7c45e171d421e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_get_user_data@
hs_bindgen_3cf7c45e171d421e ::
     RIP.Ptr Wl_shell
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_3cf7c45e171d421e =
  RIP.fromFFIType hs_bindgen_3cf7c45e171d421e_base

{-| __C declaration:__ @wl_shell_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3156:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_get_user_data ::
     RIP.Ptr Wl_shell
     -- ^ __C declaration:__ @wl_shell@
  -> IO (RIP.Ptr RIP.Void)
wl_shell_get_user_data = hs_bindgen_3cf7c45e171d421e

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_get_version@
foreign import ccall unsafe "hs_bindgen_f070157f0842ccc3" hs_bindgen_f070157f0842ccc3_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_get_version@
hs_bindgen_f070157f0842ccc3 ::
     RIP.Ptr Wl_shell
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_f070157f0842ccc3 =
  RIP.fromFFIType hs_bindgen_f070157f0842ccc3_base

{-| __C declaration:__ @wl_shell_get_version@

    __defined at:__ @wayland-client-protocol.h 3162:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_get_version ::
     RIP.Ptr Wl_shell
     -- ^ __C declaration:__ @wl_shell@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shell_get_version = hs_bindgen_f070157f0842ccc3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_destroy@
foreign import ccall unsafe "hs_bindgen_4dadb7128012df51" hs_bindgen_4dadb7128012df51_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_destroy@
hs_bindgen_4dadb7128012df51 ::
     RIP.Ptr Wl_shell
  -> IO ()
hs_bindgen_4dadb7128012df51 =
  RIP.fromFFIType hs_bindgen_4dadb7128012df51_base

{-| __C declaration:__ @wl_shell_destroy@

    __defined at:__ @wayland-client-protocol.h 3169:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_destroy ::
     RIP.Ptr Wl_shell
     -- ^ __C declaration:__ @wl_shell@
  -> IO ()
wl_shell_destroy = hs_bindgen_4dadb7128012df51

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_get_shell_surface@
foreign import ccall unsafe "hs_bindgen_a1c97d581e7e4c29" hs_bindgen_a1c97d581e7e4c29_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_get_shell_surface@
hs_bindgen_a1c97d581e7e4c29 ::
     RIP.Ptr Wl_shell
  -> RIP.Ptr Wl_surface
  -> IO (RIP.Ptr Wl_shell_surface)
hs_bindgen_a1c97d581e7e4c29 =
  RIP.fromFFIType hs_bindgen_a1c97d581e7e4c29_base

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
  hs_bindgen_a1c97d581e7e4c29

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_add_listener@
foreign import ccall unsafe "hs_bindgen_0f4678c39a9f2bdc" hs_bindgen_0f4678c39a9f2bdc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_add_listener@
hs_bindgen_0f4678c39a9f2bdc ::
     RIP.Ptr Wl_shell_surface
  -> PtrConst.PtrConst Wl_shell_surface_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_0f4678c39a9f2bdc =
  RIP.fromFFIType hs_bindgen_0f4678c39a9f2bdc_base

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
  hs_bindgen_0f4678c39a9f2bdc

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_set_user_data@
foreign import ccall unsafe "hs_bindgen_78d02b70c75c31a3" hs_bindgen_78d02b70c75c31a3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_set_user_data@
hs_bindgen_78d02b70c75c31a3 ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_78d02b70c75c31a3 =
  RIP.fromFFIType hs_bindgen_78d02b70c75c31a3_base

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
  hs_bindgen_78d02b70c75c31a3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_get_user_data@
foreign import ccall unsafe "hs_bindgen_ecc6400f9dfc9f6b" hs_bindgen_ecc6400f9dfc9f6b_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_get_user_data@
hs_bindgen_ecc6400f9dfc9f6b ::
     RIP.Ptr Wl_shell_surface
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_ecc6400f9dfc9f6b =
  RIP.fromFFIType hs_bindgen_ecc6400f9dfc9f6b_base

{-| __C declaration:__ @wl_shell_surface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3432:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_get_user_data ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO (RIP.Ptr RIP.Void)
wl_shell_surface_get_user_data =
  hs_bindgen_ecc6400f9dfc9f6b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_get_version@
foreign import ccall unsafe "hs_bindgen_f24466c8ca6081f2" hs_bindgen_f24466c8ca6081f2_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_get_version@
hs_bindgen_f24466c8ca6081f2 ::
     RIP.Ptr Wl_shell_surface
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_f24466c8ca6081f2 =
  RIP.fromFFIType hs_bindgen_f24466c8ca6081f2_base

{-| __C declaration:__ @wl_shell_surface_get_version@

    __defined at:__ @wayland-client-protocol.h 3438:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_get_version ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shell_surface_get_version =
  hs_bindgen_f24466c8ca6081f2

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_destroy@
foreign import ccall unsafe "hs_bindgen_30c4c021f210a7f0" hs_bindgen_30c4c021f210a7f0_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_destroy@
hs_bindgen_30c4c021f210a7f0 ::
     RIP.Ptr Wl_shell_surface
  -> IO ()
hs_bindgen_30c4c021f210a7f0 =
  RIP.fromFFIType hs_bindgen_30c4c021f210a7f0_base

{-| __C declaration:__ @wl_shell_surface_destroy@

    __defined at:__ @wayland-client-protocol.h 3445:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_destroy ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO ()
wl_shell_surface_destroy =
  hs_bindgen_30c4c021f210a7f0

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_pong@
foreign import ccall unsafe "hs_bindgen_11a038ba1cef7ea5" hs_bindgen_11a038ba1cef7ea5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_pong@
hs_bindgen_11a038ba1cef7ea5 ::
     RIP.Ptr Wl_shell_surface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_11a038ba1cef7ea5 =
  RIP.fromFFIType hs_bindgen_11a038ba1cef7ea5_base

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
wl_shell_surface_pong = hs_bindgen_11a038ba1cef7ea5

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_move@
foreign import ccall unsafe "hs_bindgen_4cfda3233b31074d" hs_bindgen_4cfda3233b31074d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_move@
hs_bindgen_4cfda3233b31074d ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_seat
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_4cfda3233b31074d =
  RIP.fromFFIType hs_bindgen_4cfda3233b31074d_base

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
wl_shell_surface_move = hs_bindgen_4cfda3233b31074d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_resize@
foreign import ccall unsafe "hs_bindgen_e4c3a017786c3db8" hs_bindgen_e4c3a017786c3db8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_resize@
hs_bindgen_e4c3a017786c3db8 ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_seat
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_e4c3a017786c3db8 =
  RIP.fromFFIType hs_bindgen_e4c3a017786c3db8_base

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
wl_shell_surface_resize = hs_bindgen_e4c3a017786c3db8

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_set_toplevel@
foreign import ccall unsafe "hs_bindgen_8fc50c5f27341fe2" hs_bindgen_8fc50c5f27341fe2_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_set_toplevel@
hs_bindgen_8fc50c5f27341fe2 ::
     RIP.Ptr Wl_shell_surface
  -> IO ()
hs_bindgen_8fc50c5f27341fe2 =
  RIP.fromFFIType hs_bindgen_8fc50c5f27341fe2_base

{-| __C declaration:__ @wl_shell_surface_set_toplevel@

    __defined at:__ @wayland-client-protocol.h 3503:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_toplevel ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO ()
wl_shell_surface_set_toplevel =
  hs_bindgen_8fc50c5f27341fe2

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_set_transient@
foreign import ccall unsafe "hs_bindgen_f4552c4632c38bb4" hs_bindgen_f4552c4632c38bb4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_set_transient@
hs_bindgen_f4552c4632c38bb4 ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_f4552c4632c38bb4 =
  RIP.fromFFIType hs_bindgen_f4552c4632c38bb4_base

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
  hs_bindgen_f4552c4632c38bb4

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_set_fullscreen@
foreign import ccall unsafe "hs_bindgen_47d31ac7b30e5aec" hs_bindgen_47d31ac7b30e5aec_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_set_fullscreen@
hs_bindgen_47d31ac7b30e5aec ::
     RIP.Ptr Wl_shell_surface
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Wl_output
  -> IO ()
hs_bindgen_47d31ac7b30e5aec =
  RIP.fromFFIType hs_bindgen_47d31ac7b30e5aec_base

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
  hs_bindgen_47d31ac7b30e5aec

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_set_popup@
foreign import ccall unsafe "hs_bindgen_daed8d7ef8089e6f" hs_bindgen_daed8d7ef8089e6f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_set_popup@
hs_bindgen_daed8d7ef8089e6f ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_seat
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_daed8d7ef8089e6f =
  RIP.fromFFIType hs_bindgen_daed8d7ef8089e6f_base

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
  hs_bindgen_daed8d7ef8089e6f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_set_maximized@
foreign import ccall unsafe "hs_bindgen_ab2babe6682b31e5" hs_bindgen_ab2babe6682b31e5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_set_maximized@
hs_bindgen_ab2babe6682b31e5 ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_output
  -> IO ()
hs_bindgen_ab2babe6682b31e5 =
  RIP.fromFFIType hs_bindgen_ab2babe6682b31e5_base

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
  hs_bindgen_ab2babe6682b31e5

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_set_title@
foreign import ccall unsafe "hs_bindgen_1e5b1a7205971c01" hs_bindgen_1e5b1a7205971c01_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_set_title@
hs_bindgen_1e5b1a7205971c01 ::
     RIP.Ptr Wl_shell_surface
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_1e5b1a7205971c01 =
  RIP.fromFFIType hs_bindgen_1e5b1a7205971c01_base

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
  hs_bindgen_1e5b1a7205971c01

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_set_class@
foreign import ccall unsafe "hs_bindgen_7f48dedc5d60625d" hs_bindgen_7f48dedc5d60625d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_shell_surface_set_class@
hs_bindgen_7f48dedc5d60625d ::
     RIP.Ptr Wl_shell_surface
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_7f48dedc5d60625d =
  RIP.fromFFIType hs_bindgen_7f48dedc5d60625d_base

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
  hs_bindgen_7f48dedc5d60625d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_add_listener@
foreign import ccall unsafe "hs_bindgen_baec3b45a720312b" hs_bindgen_baec3b45a720312b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_add_listener@
hs_bindgen_baec3b45a720312b ::
     RIP.Ptr Wl_surface
  -> PtrConst.PtrConst Wl_surface_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_baec3b45a720312b =
  RIP.fromFFIType hs_bindgen_baec3b45a720312b_base

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
wl_surface_add_listener = hs_bindgen_baec3b45a720312b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_set_user_data@
foreign import ccall unsafe "hs_bindgen_6ad676b77c843a6c" hs_bindgen_6ad676b77c843a6c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_set_user_data@
hs_bindgen_6ad676b77c843a6c ::
     RIP.Ptr Wl_surface
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_6ad676b77c843a6c =
  RIP.fromFFIType hs_bindgen_6ad676b77c843a6c_base

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
  hs_bindgen_6ad676b77c843a6c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_get_user_data@
foreign import ccall unsafe "hs_bindgen_37c22271237dfb58" hs_bindgen_37c22271237dfb58_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_get_user_data@
hs_bindgen_37c22271237dfb58 ::
     RIP.Ptr Wl_surface
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_37c22271237dfb58 =
  RIP.fromFFIType hs_bindgen_37c22271237dfb58_base

{-| __C declaration:__ @wl_surface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3870:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_get_user_data ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO (RIP.Ptr RIP.Void)
wl_surface_get_user_data =
  hs_bindgen_37c22271237dfb58

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_get_version@
foreign import ccall unsafe "hs_bindgen_94d3c9428d5ee2ca" hs_bindgen_94d3c9428d5ee2ca_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_get_version@
hs_bindgen_94d3c9428d5ee2ca ::
     RIP.Ptr Wl_surface
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_94d3c9428d5ee2ca =
  RIP.fromFFIType hs_bindgen_94d3c9428d5ee2ca_base

{-| __C declaration:__ @wl_surface_get_version@

    __defined at:__ @wayland-client-protocol.h 3876:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_get_version ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_surface_get_version = hs_bindgen_94d3c9428d5ee2ca

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_destroy@
foreign import ccall unsafe "hs_bindgen_2a016345e7256d69" hs_bindgen_2a016345e7256d69_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_destroy@
hs_bindgen_2a016345e7256d69 ::
     RIP.Ptr Wl_surface
  -> IO ()
hs_bindgen_2a016345e7256d69 =
  RIP.fromFFIType hs_bindgen_2a016345e7256d69_base

{-| __C declaration:__ @wl_surface_destroy@

    __defined at:__ @wayland-client-protocol.h 3887:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_destroy ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO ()
wl_surface_destroy = hs_bindgen_2a016345e7256d69

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_attach@
foreign import ccall unsafe "hs_bindgen_7367d72b03195ed8" hs_bindgen_7367d72b03195ed8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_attach@
hs_bindgen_7367d72b03195ed8 ::
     RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_buffer
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_7367d72b03195ed8 =
  RIP.fromFFIType hs_bindgen_7367d72b03195ed8_base

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
wl_surface_attach = hs_bindgen_7367d72b03195ed8

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_damage@
foreign import ccall unsafe "hs_bindgen_e3795e6603b0aac3" hs_bindgen_e3795e6603b0aac3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_damage@
hs_bindgen_e3795e6603b0aac3 ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_e3795e6603b0aac3 =
  RIP.fromFFIType hs_bindgen_e3795e6603b0aac3_base

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
wl_surface_damage = hs_bindgen_e3795e6603b0aac3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_frame@
foreign import ccall unsafe "hs_bindgen_bb2ced2e94a6738f" hs_bindgen_bb2ced2e94a6738f_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_frame@
hs_bindgen_bb2ced2e94a6738f ::
     RIP.Ptr Wl_surface
  -> IO (RIP.Ptr Wl_callback)
hs_bindgen_bb2ced2e94a6738f =
  RIP.fromFFIType hs_bindgen_bb2ced2e94a6738f_base

{-| __C declaration:__ @wl_surface_frame@

    __defined at:__ @wayland-client-protocol.h 4038:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_frame ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO (RIP.Ptr Wl_callback)
wl_surface_frame = hs_bindgen_bb2ced2e94a6738f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_set_opaque_region@
foreign import ccall unsafe "hs_bindgen_55f5bd5ac592b84c" hs_bindgen_55f5bd5ac592b84c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_set_opaque_region@
hs_bindgen_55f5bd5ac592b84c ::
     RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_region
  -> IO ()
hs_bindgen_55f5bd5ac592b84c =
  RIP.fromFFIType hs_bindgen_55f5bd5ac592b84c_base

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
  hs_bindgen_55f5bd5ac592b84c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_set_input_region@
foreign import ccall unsafe "hs_bindgen_b2c3d07cf202e087" hs_bindgen_b2c3d07cf202e087_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_set_input_region@
hs_bindgen_b2c3d07cf202e087 ::
     RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_region
  -> IO ()
hs_bindgen_b2c3d07cf202e087 =
  RIP.fromFFIType hs_bindgen_b2c3d07cf202e087_base

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
  hs_bindgen_b2c3d07cf202e087

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_commit@
foreign import ccall unsafe "hs_bindgen_9c0e2ccdbc35e1dd" hs_bindgen_9c0e2ccdbc35e1dd_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_commit@
hs_bindgen_9c0e2ccdbc35e1dd ::
     RIP.Ptr Wl_surface
  -> IO ()
hs_bindgen_9c0e2ccdbc35e1dd =
  RIP.fromFFIType hs_bindgen_9c0e2ccdbc35e1dd_base

{-| __C declaration:__ @wl_surface_commit@

    __defined at:__ @wayland-client-protocol.h 4140:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_commit ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO ()
wl_surface_commit = hs_bindgen_9c0e2ccdbc35e1dd

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_set_buffer_transform@
foreign import ccall unsafe "hs_bindgen_01beb2ceb496e9f4" hs_bindgen_01beb2ceb496e9f4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_set_buffer_transform@
hs_bindgen_01beb2ceb496e9f4 ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_01beb2ceb496e9f4 =
  RIP.fromFFIType hs_bindgen_01beb2ceb496e9f4_base

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
  hs_bindgen_01beb2ceb496e9f4

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_set_buffer_scale@
foreign import ccall unsafe "hs_bindgen_9c081061f236dcc8" hs_bindgen_9c081061f236dcc8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_set_buffer_scale@
hs_bindgen_9c081061f236dcc8 ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_9c081061f236dcc8 =
  RIP.fromFFIType hs_bindgen_9c081061f236dcc8_base

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
  hs_bindgen_9c081061f236dcc8

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_damage_buffer@
foreign import ccall unsafe "hs_bindgen_5d1bd315329f0cfc" hs_bindgen_5d1bd315329f0cfc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_damage_buffer@
hs_bindgen_5d1bd315329f0cfc ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_5d1bd315329f0cfc =
  RIP.fromFFIType hs_bindgen_5d1bd315329f0cfc_base

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
  hs_bindgen_5d1bd315329f0cfc

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_offset@
foreign import ccall unsafe "hs_bindgen_c63ba36f04fd7475" hs_bindgen_c63ba36f04fd7475_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_surface_offset@
hs_bindgen_c63ba36f04fd7475 ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_c63ba36f04fd7475 =
  RIP.fromFFIType hs_bindgen_c63ba36f04fd7475_base

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
wl_surface_offset = hs_bindgen_c63ba36f04fd7475

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_seat_add_listener@
foreign import ccall unsafe "hs_bindgen_bc8d145f656d4c35" hs_bindgen_bc8d145f656d4c35_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_seat_add_listener@
hs_bindgen_bc8d145f656d4c35 ::
     RIP.Ptr Wl_seat
  -> PtrConst.PtrConst Wl_seat_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_bc8d145f656d4c35 =
  RIP.fromFFIType hs_bindgen_bc8d145f656d4c35_base

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
wl_seat_add_listener = hs_bindgen_bc8d145f656d4c35

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_seat_set_user_data@
foreign import ccall unsafe "hs_bindgen_6505430e0c1ab895" hs_bindgen_6505430e0c1ab895_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_seat_set_user_data@
hs_bindgen_6505430e0c1ab895 ::
     RIP.Ptr Wl_seat
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_6505430e0c1ab895 =
  RIP.fromFFIType hs_bindgen_6505430e0c1ab895_base

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
wl_seat_set_user_data = hs_bindgen_6505430e0c1ab895

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_seat_get_user_data@
foreign import ccall unsafe "hs_bindgen_4079676cb950a7f2" hs_bindgen_4079676cb950a7f2_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_seat_get_user_data@
hs_bindgen_4079676cb950a7f2 ::
     RIP.Ptr Wl_seat
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_4079676cb950a7f2 =
  RIP.fromFFIType hs_bindgen_4079676cb950a7f2_base

{-| __C declaration:__ @wl_seat_get_user_data@

    __defined at:__ @wayland-client-protocol.h 4453:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_user_data ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO (RIP.Ptr RIP.Void)
wl_seat_get_user_data = hs_bindgen_4079676cb950a7f2

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_seat_get_version@
foreign import ccall unsafe "hs_bindgen_c1f8755a4a95e421" hs_bindgen_c1f8755a4a95e421_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_seat_get_version@
hs_bindgen_c1f8755a4a95e421 ::
     RIP.Ptr Wl_seat
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_c1f8755a4a95e421 =
  RIP.fromFFIType hs_bindgen_c1f8755a4a95e421_base

{-| __C declaration:__ @wl_seat_get_version@

    __defined at:__ @wayland-client-protocol.h 4459:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_version ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_seat_get_version = hs_bindgen_c1f8755a4a95e421

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_seat_destroy@
foreign import ccall unsafe "hs_bindgen_c66ab893016b6e0e" hs_bindgen_c66ab893016b6e0e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_seat_destroy@
hs_bindgen_c66ab893016b6e0e ::
     RIP.Ptr Wl_seat
  -> IO ()
hs_bindgen_c66ab893016b6e0e =
  RIP.fromFFIType hs_bindgen_c66ab893016b6e0e_base

{-| __C declaration:__ @wl_seat_destroy@

    __defined at:__ @wayland-client-protocol.h 4466:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_destroy ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO ()
wl_seat_destroy = hs_bindgen_c66ab893016b6e0e

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_seat_get_pointer@
foreign import ccall unsafe "hs_bindgen_797b086785aa1f98" hs_bindgen_797b086785aa1f98_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_seat_get_pointer@
hs_bindgen_797b086785aa1f98 ::
     RIP.Ptr Wl_seat
  -> IO (RIP.Ptr Wl_pointer)
hs_bindgen_797b086785aa1f98 =
  RIP.fromFFIType hs_bindgen_797b086785aa1f98_base

{-| __C declaration:__ @wl_seat_get_pointer@

    __defined at:__ @wayland-client-protocol.h 4484:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_pointer ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO (RIP.Ptr Wl_pointer)
wl_seat_get_pointer = hs_bindgen_797b086785aa1f98

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_seat_get_keyboard@
foreign import ccall unsafe "hs_bindgen_b3143c914c0f438e" hs_bindgen_b3143c914c0f438e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_seat_get_keyboard@
hs_bindgen_b3143c914c0f438e ::
     RIP.Ptr Wl_seat
  -> IO (RIP.Ptr Wl_keyboard)
hs_bindgen_b3143c914c0f438e =
  RIP.fromFFIType hs_bindgen_b3143c914c0f438e_base

{-| __C declaration:__ @wl_seat_get_keyboard@

    __defined at:__ @wayland-client-protocol.h 4507:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_keyboard ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO (RIP.Ptr Wl_keyboard)
wl_seat_get_keyboard = hs_bindgen_b3143c914c0f438e

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_seat_get_touch@
foreign import ccall unsafe "hs_bindgen_17c96e2e4c8162be" hs_bindgen_17c96e2e4c8162be_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_seat_get_touch@
hs_bindgen_17c96e2e4c8162be ::
     RIP.Ptr Wl_seat
  -> IO (RIP.Ptr Wl_touch)
hs_bindgen_17c96e2e4c8162be =
  RIP.fromFFIType hs_bindgen_17c96e2e4c8162be_base

{-| __C declaration:__ @wl_seat_get_touch@

    __defined at:__ @wayland-client-protocol.h 4530:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_touch ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO (RIP.Ptr Wl_touch)
wl_seat_get_touch = hs_bindgen_17c96e2e4c8162be

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_seat_release@
foreign import ccall unsafe "hs_bindgen_d62348ee593d2801" hs_bindgen_d62348ee593d2801_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_seat_release@
hs_bindgen_d62348ee593d2801 ::
     RIP.Ptr Wl_seat
  -> IO ()
hs_bindgen_d62348ee593d2801 =
  RIP.fromFFIType hs_bindgen_d62348ee593d2801_base

{-| __C declaration:__ @wl_seat_release@

    __defined at:__ @wayland-client-protocol.h 4547:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_release ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO ()
wl_seat_release = hs_bindgen_d62348ee593d2801

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_pointer_add_listener@
foreign import ccall unsafe "hs_bindgen_8acd14641ec1414d" hs_bindgen_8acd14641ec1414d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_pointer_add_listener@
hs_bindgen_8acd14641ec1414d ::
     RIP.Ptr Wl_pointer
  -> PtrConst.PtrConst Wl_pointer_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_8acd14641ec1414d =
  RIP.fromFFIType hs_bindgen_8acd14641ec1414d_base

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
wl_pointer_add_listener = hs_bindgen_8acd14641ec1414d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_pointer_set_user_data@
foreign import ccall unsafe "hs_bindgen_12a794b38456324c" hs_bindgen_12a794b38456324c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_pointer_set_user_data@
hs_bindgen_12a794b38456324c ::
     RIP.Ptr Wl_pointer
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_12a794b38456324c =
  RIP.fromFFIType hs_bindgen_12a794b38456324c_base

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
  hs_bindgen_12a794b38456324c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_pointer_get_user_data@
foreign import ccall unsafe "hs_bindgen_fd439fa0f891e45e" hs_bindgen_fd439fa0f891e45e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_pointer_get_user_data@
hs_bindgen_fd439fa0f891e45e ::
     RIP.Ptr Wl_pointer
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_fd439fa0f891e45e =
  RIP.fromFFIType hs_bindgen_fd439fa0f891e45e_base

{-| __C declaration:__ @wl_pointer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5083:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_get_user_data ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO (RIP.Ptr RIP.Void)
wl_pointer_get_user_data =
  hs_bindgen_fd439fa0f891e45e

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_pointer_get_version@
foreign import ccall unsafe "hs_bindgen_2f438c1e5bcfb393" hs_bindgen_2f438c1e5bcfb393_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_pointer_get_version@
hs_bindgen_2f438c1e5bcfb393 ::
     RIP.Ptr Wl_pointer
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_2f438c1e5bcfb393 =
  RIP.fromFFIType hs_bindgen_2f438c1e5bcfb393_base

{-| __C declaration:__ @wl_pointer_get_version@

    __defined at:__ @wayland-client-protocol.h 5089:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_get_version ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_pointer_get_version = hs_bindgen_2f438c1e5bcfb393

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_pointer_destroy@
foreign import ccall unsafe "hs_bindgen_1017e40eee319704" hs_bindgen_1017e40eee319704_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_pointer_destroy@
hs_bindgen_1017e40eee319704 ::
     RIP.Ptr Wl_pointer
  -> IO ()
hs_bindgen_1017e40eee319704 =
  RIP.fromFFIType hs_bindgen_1017e40eee319704_base

{-| __C declaration:__ @wl_pointer_destroy@

    __defined at:__ @wayland-client-protocol.h 5096:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_destroy ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO ()
wl_pointer_destroy = hs_bindgen_1017e40eee319704

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_pointer_set_cursor@
foreign import ccall unsafe "hs_bindgen_1b043c7c828c1a3b" hs_bindgen_1b043c7c828c1a3b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_pointer_set_cursor@
hs_bindgen_1b043c7c828c1a3b ::
     RIP.Ptr Wl_pointer
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_1b043c7c828c1a3b =
  RIP.fromFFIType hs_bindgen_1b043c7c828c1a3b_base

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
wl_pointer_set_cursor = hs_bindgen_1b043c7c828c1a3b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_pointer_release@
foreign import ccall unsafe "hs_bindgen_3a643dca694746bf" hs_bindgen_3a643dca694746bf_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_pointer_release@
hs_bindgen_3a643dca694746bf ::
     RIP.Ptr Wl_pointer
  -> IO ()
hs_bindgen_3a643dca694746bf =
  RIP.fromFFIType hs_bindgen_3a643dca694746bf_base

{-| __C declaration:__ @wl_pointer_release@

    __defined at:__ @wayland-client-protocol.h 5155:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_release ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO ()
wl_pointer_release = hs_bindgen_3a643dca694746bf

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_keyboard_add_listener@
foreign import ccall unsafe "hs_bindgen_9be01c8cfd4b0abb" hs_bindgen_9be01c8cfd4b0abb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_keyboard_add_listener@
hs_bindgen_9be01c8cfd4b0abb ::
     RIP.Ptr Wl_keyboard
  -> PtrConst.PtrConst Wl_keyboard_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_9be01c8cfd4b0abb =
  RIP.fromFFIType hs_bindgen_9be01c8cfd4b0abb_base

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
  hs_bindgen_9be01c8cfd4b0abb

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_keyboard_set_user_data@
foreign import ccall unsafe "hs_bindgen_f03ebc4ba3ad8705" hs_bindgen_f03ebc4ba3ad8705_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_keyboard_set_user_data@
hs_bindgen_f03ebc4ba3ad8705 ::
     RIP.Ptr Wl_keyboard
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_f03ebc4ba3ad8705 =
  RIP.fromFFIType hs_bindgen_f03ebc4ba3ad8705_base

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
  hs_bindgen_f03ebc4ba3ad8705

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_keyboard_get_user_data@
foreign import ccall unsafe "hs_bindgen_8695eb600a44d593" hs_bindgen_8695eb600a44d593_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_keyboard_get_user_data@
hs_bindgen_8695eb600a44d593 ::
     RIP.Ptr Wl_keyboard
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_8695eb600a44d593 =
  RIP.fromFFIType hs_bindgen_8695eb600a44d593_base

{-| __C declaration:__ @wl_keyboard_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5433:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_get_user_data ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO (RIP.Ptr RIP.Void)
wl_keyboard_get_user_data =
  hs_bindgen_8695eb600a44d593

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_keyboard_get_version@
foreign import ccall unsafe "hs_bindgen_89362ab7289bfcf4" hs_bindgen_89362ab7289bfcf4_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_keyboard_get_version@
hs_bindgen_89362ab7289bfcf4 ::
     RIP.Ptr Wl_keyboard
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_89362ab7289bfcf4 =
  RIP.fromFFIType hs_bindgen_89362ab7289bfcf4_base

{-| __C declaration:__ @wl_keyboard_get_version@

    __defined at:__ @wayland-client-protocol.h 5439:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_get_version ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_keyboard_get_version = hs_bindgen_89362ab7289bfcf4

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_keyboard_destroy@
foreign import ccall unsafe "hs_bindgen_65462ed56c289918" hs_bindgen_65462ed56c289918_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_keyboard_destroy@
hs_bindgen_65462ed56c289918 ::
     RIP.Ptr Wl_keyboard
  -> IO ()
hs_bindgen_65462ed56c289918 =
  RIP.fromFFIType hs_bindgen_65462ed56c289918_base

{-| __C declaration:__ @wl_keyboard_destroy@

    __defined at:__ @wayland-client-protocol.h 5446:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_destroy ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO ()
wl_keyboard_destroy = hs_bindgen_65462ed56c289918

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_keyboard_release@
foreign import ccall unsafe "hs_bindgen_09f7ad2e5bbca9f1" hs_bindgen_09f7ad2e5bbca9f1_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_keyboard_release@
hs_bindgen_09f7ad2e5bbca9f1 ::
     RIP.Ptr Wl_keyboard
  -> IO ()
hs_bindgen_09f7ad2e5bbca9f1 =
  RIP.fromFFIType hs_bindgen_09f7ad2e5bbca9f1_base

{-| __C declaration:__ @wl_keyboard_release@

    __defined at:__ @wayland-client-protocol.h 5455:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_release ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO ()
wl_keyboard_release = hs_bindgen_09f7ad2e5bbca9f1

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_touch_add_listener@
foreign import ccall unsafe "hs_bindgen_21616e7d023c0d5e" hs_bindgen_21616e7d023c0d5e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_touch_add_listener@
hs_bindgen_21616e7d023c0d5e ::
     RIP.Ptr Wl_touch
  -> PtrConst.PtrConst Wl_touch_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_21616e7d023c0d5e =
  RIP.fromFFIType hs_bindgen_21616e7d023c0d5e_base

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
wl_touch_add_listener = hs_bindgen_21616e7d023c0d5e

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_touch_set_user_data@
foreign import ccall unsafe "hs_bindgen_b575f6550c4f43ac" hs_bindgen_b575f6550c4f43ac_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_touch_set_user_data@
hs_bindgen_b575f6550c4f43ac ::
     RIP.Ptr Wl_touch
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_b575f6550c4f43ac =
  RIP.fromFFIType hs_bindgen_b575f6550c4f43ac_base

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
wl_touch_set_user_data = hs_bindgen_b575f6550c4f43ac

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_touch_get_user_data@
foreign import ccall unsafe "hs_bindgen_7dc82568c21f0cbe" hs_bindgen_7dc82568c21f0cbe_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_touch_get_user_data@
hs_bindgen_7dc82568c21f0cbe ::
     RIP.Ptr Wl_touch
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_7dc82568c21f0cbe =
  RIP.fromFFIType hs_bindgen_7dc82568c21f0cbe_base

{-| __C declaration:__ @wl_touch_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5677:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_get_user_data ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> IO (RIP.Ptr RIP.Void)
wl_touch_get_user_data = hs_bindgen_7dc82568c21f0cbe

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_touch_get_version@
foreign import ccall unsafe "hs_bindgen_1d4bd1750a31f06a" hs_bindgen_1d4bd1750a31f06a_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_touch_get_version@
hs_bindgen_1d4bd1750a31f06a ::
     RIP.Ptr Wl_touch
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_1d4bd1750a31f06a =
  RIP.fromFFIType hs_bindgen_1d4bd1750a31f06a_base

{-| __C declaration:__ @wl_touch_get_version@

    __defined at:__ @wayland-client-protocol.h 5683:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_get_version ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_touch_get_version = hs_bindgen_1d4bd1750a31f06a

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_touch_destroy@
foreign import ccall unsafe "hs_bindgen_56069c9e34016ab5" hs_bindgen_56069c9e34016ab5_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_touch_destroy@
hs_bindgen_56069c9e34016ab5 ::
     RIP.Ptr Wl_touch
  -> IO ()
hs_bindgen_56069c9e34016ab5 =
  RIP.fromFFIType hs_bindgen_56069c9e34016ab5_base

{-| __C declaration:__ @wl_touch_destroy@

    __defined at:__ @wayland-client-protocol.h 5690:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_destroy ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> IO ()
wl_touch_destroy = hs_bindgen_56069c9e34016ab5

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_touch_release@
foreign import ccall unsafe "hs_bindgen_64754e076d0edf01" hs_bindgen_64754e076d0edf01_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_touch_release@
hs_bindgen_64754e076d0edf01 ::
     RIP.Ptr Wl_touch
  -> IO ()
hs_bindgen_64754e076d0edf01 =
  RIP.fromFFIType hs_bindgen_64754e076d0edf01_base

{-| __C declaration:__ @wl_touch_release@

    __defined at:__ @wayland-client-protocol.h 5699:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_release ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> IO ()
wl_touch_release = hs_bindgen_64754e076d0edf01

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_output_add_listener@
foreign import ccall unsafe "hs_bindgen_ac4b6380d17be779" hs_bindgen_ac4b6380d17be779_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_output_add_listener@
hs_bindgen_ac4b6380d17be779 ::
     RIP.Ptr Wl_output
  -> PtrConst.PtrConst Wl_output_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_ac4b6380d17be779 =
  RIP.fromFFIType hs_bindgen_ac4b6380d17be779_base

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
wl_output_add_listener = hs_bindgen_ac4b6380d17be779

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_output_set_user_data@
foreign import ccall unsafe "hs_bindgen_46cfa8f7e5801066" hs_bindgen_46cfa8f7e5801066_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_output_set_user_data@
hs_bindgen_46cfa8f7e5801066 ::
     RIP.Ptr Wl_output
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_46cfa8f7e5801066 =
  RIP.fromFFIType hs_bindgen_46cfa8f7e5801066_base

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
wl_output_set_user_data = hs_bindgen_46cfa8f7e5801066

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_output_get_user_data@
foreign import ccall unsafe "hs_bindgen_69924cbc0fbb5c15" hs_bindgen_69924cbc0fbb5c15_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_output_get_user_data@
hs_bindgen_69924cbc0fbb5c15 ::
     RIP.Ptr Wl_output
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_69924cbc0fbb5c15 =
  RIP.fromFFIType hs_bindgen_69924cbc0fbb5c15_base

{-| __C declaration:__ @wl_output_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6066:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_get_user_data ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> IO (RIP.Ptr RIP.Void)
wl_output_get_user_data = hs_bindgen_69924cbc0fbb5c15

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_output_get_version@
foreign import ccall unsafe "hs_bindgen_01f42adefb41778f" hs_bindgen_01f42adefb41778f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_output_get_version@
hs_bindgen_01f42adefb41778f ::
     RIP.Ptr Wl_output
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_01f42adefb41778f =
  RIP.fromFFIType hs_bindgen_01f42adefb41778f_base

{-| __C declaration:__ @wl_output_get_version@

    __defined at:__ @wayland-client-protocol.h 6072:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_get_version ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_output_get_version = hs_bindgen_01f42adefb41778f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_output_destroy@
foreign import ccall unsafe "hs_bindgen_05dc7565589f5028" hs_bindgen_05dc7565589f5028_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_output_destroy@
hs_bindgen_05dc7565589f5028 ::
     RIP.Ptr Wl_output
  -> IO ()
hs_bindgen_05dc7565589f5028 =
  RIP.fromFFIType hs_bindgen_05dc7565589f5028_base

{-| __C declaration:__ @wl_output_destroy@

    __defined at:__ @wayland-client-protocol.h 6079:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_destroy ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> IO ()
wl_output_destroy = hs_bindgen_05dc7565589f5028

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_output_release@
foreign import ccall unsafe "hs_bindgen_a9fe9a89d87a977f" hs_bindgen_a9fe9a89d87a977f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_output_release@
hs_bindgen_a9fe9a89d87a977f ::
     RIP.Ptr Wl_output
  -> IO ()
hs_bindgen_a9fe9a89d87a977f =
  RIP.fromFFIType hs_bindgen_a9fe9a89d87a977f_base

{-| __C declaration:__ @wl_output_release@

    __defined at:__ @wayland-client-protocol.h 6091:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_release ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> IO ()
wl_output_release = hs_bindgen_a9fe9a89d87a977f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_region_set_user_data@
foreign import ccall unsafe "hs_bindgen_896c2c47972f09f6" hs_bindgen_896c2c47972f09f6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_region_set_user_data@
hs_bindgen_896c2c47972f09f6 ::
     RIP.Ptr Wl_region
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_896c2c47972f09f6 =
  RIP.fromFFIType hs_bindgen_896c2c47972f09f6_base

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
wl_region_set_user_data = hs_bindgen_896c2c47972f09f6

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_region_get_user_data@
foreign import ccall unsafe "hs_bindgen_769c9e02432a243c" hs_bindgen_769c9e02432a243c_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_region_get_user_data@
hs_bindgen_769c9e02432a243c ::
     RIP.Ptr Wl_region
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_769c9e02432a243c =
  RIP.fromFFIType hs_bindgen_769c9e02432a243c_base

{-| __C declaration:__ @wl_region_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6124:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_get_user_data ::
     RIP.Ptr Wl_region
     -- ^ __C declaration:__ @wl_region@
  -> IO (RIP.Ptr RIP.Void)
wl_region_get_user_data = hs_bindgen_769c9e02432a243c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_region_get_version@
foreign import ccall unsafe "hs_bindgen_8e7d8a12c617fc7d" hs_bindgen_8e7d8a12c617fc7d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_region_get_version@
hs_bindgen_8e7d8a12c617fc7d ::
     RIP.Ptr Wl_region
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_8e7d8a12c617fc7d =
  RIP.fromFFIType hs_bindgen_8e7d8a12c617fc7d_base

{-| __C declaration:__ @wl_region_get_version@

    __defined at:__ @wayland-client-protocol.h 6130:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_get_version ::
     RIP.Ptr Wl_region
     -- ^ __C declaration:__ @wl_region@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_region_get_version = hs_bindgen_8e7d8a12c617fc7d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_region_destroy@
foreign import ccall unsafe "hs_bindgen_7001b9ae9b83d59a" hs_bindgen_7001b9ae9b83d59a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_region_destroy@
hs_bindgen_7001b9ae9b83d59a ::
     RIP.Ptr Wl_region
  -> IO ()
hs_bindgen_7001b9ae9b83d59a =
  RIP.fromFFIType hs_bindgen_7001b9ae9b83d59a_base

{-| __C declaration:__ @wl_region_destroy@

    __defined at:__ @wayland-client-protocol.h 6141:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_destroy ::
     RIP.Ptr Wl_region
     -- ^ __C declaration:__ @wl_region@
  -> IO ()
wl_region_destroy = hs_bindgen_7001b9ae9b83d59a

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_region_add@
foreign import ccall unsafe "hs_bindgen_e4a30fec132e43e0" hs_bindgen_e4a30fec132e43e0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_region_add@
hs_bindgen_e4a30fec132e43e0 ::
     RIP.Ptr Wl_region
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_e4a30fec132e43e0 =
  RIP.fromFFIType hs_bindgen_e4a30fec132e43e0_base

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
wl_region_add = hs_bindgen_e4a30fec132e43e0

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_region_subtract@
foreign import ccall unsafe "hs_bindgen_8c3b5794c4529575" hs_bindgen_8c3b5794c4529575_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_region_subtract@
hs_bindgen_8c3b5794c4529575 ::
     RIP.Ptr Wl_region
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_8c3b5794c4529575 =
  RIP.fromFFIType hs_bindgen_8c3b5794c4529575_base

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
wl_region_subtract = hs_bindgen_8c3b5794c4529575

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subcompositor_set_user_data@
foreign import ccall unsafe "hs_bindgen_72b792a508148d9b" hs_bindgen_72b792a508148d9b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subcompositor_set_user_data@
hs_bindgen_72b792a508148d9b ::
     RIP.Ptr Wl_subcompositor
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_72b792a508148d9b =
  RIP.fromFFIType hs_bindgen_72b792a508148d9b_base

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
  hs_bindgen_72b792a508148d9b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subcompositor_get_user_data@
foreign import ccall unsafe "hs_bindgen_0ce140bf223e5e17" hs_bindgen_0ce140bf223e5e17_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subcompositor_get_user_data@
hs_bindgen_0ce140bf223e5e17 ::
     RIP.Ptr Wl_subcompositor
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_0ce140bf223e5e17 =
  RIP.fromFFIType hs_bindgen_0ce140bf223e5e17_base

{-| __C declaration:__ @wl_subcompositor_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6207:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_user_data ::
     RIP.Ptr Wl_subcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> IO (RIP.Ptr RIP.Void)
wl_subcompositor_get_user_data =
  hs_bindgen_0ce140bf223e5e17

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subcompositor_get_version@
foreign import ccall unsafe "hs_bindgen_5e48add09092c624" hs_bindgen_5e48add09092c624_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subcompositor_get_version@
hs_bindgen_5e48add09092c624 ::
     RIP.Ptr Wl_subcompositor
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_5e48add09092c624 =
  RIP.fromFFIType hs_bindgen_5e48add09092c624_base

{-| __C declaration:__ @wl_subcompositor_get_version@

    __defined at:__ @wayland-client-protocol.h 6213:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_version ::
     RIP.Ptr Wl_subcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_subcompositor_get_version =
  hs_bindgen_5e48add09092c624

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subcompositor_destroy@
foreign import ccall unsafe "hs_bindgen_efe9b69733a0fd23" hs_bindgen_efe9b69733a0fd23_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subcompositor_destroy@
hs_bindgen_efe9b69733a0fd23 ::
     RIP.Ptr Wl_subcompositor
  -> IO ()
hs_bindgen_efe9b69733a0fd23 =
  RIP.fromFFIType hs_bindgen_efe9b69733a0fd23_base

{-| __C declaration:__ @wl_subcompositor_destroy@

    __defined at:__ @wayland-client-protocol.h 6226:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_destroy ::
     RIP.Ptr Wl_subcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> IO ()
wl_subcompositor_destroy =
  hs_bindgen_efe9b69733a0fd23

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subcompositor_get_subsurface@
foreign import ccall unsafe "hs_bindgen_f2f9e5324a78ddfd" hs_bindgen_f2f9e5324a78ddfd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subcompositor_get_subsurface@
hs_bindgen_f2f9e5324a78ddfd ::
     RIP.Ptr Wl_subcompositor
  -> RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_surface
  -> IO (RIP.Ptr Wl_subsurface)
hs_bindgen_f2f9e5324a78ddfd =
  RIP.fromFFIType hs_bindgen_f2f9e5324a78ddfd_base

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
  hs_bindgen_f2f9e5324a78ddfd

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subsurface_set_user_data@
foreign import ccall unsafe "hs_bindgen_d1ce410591c25970" hs_bindgen_d1ce410591c25970_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subsurface_set_user_data@
hs_bindgen_d1ce410591c25970 ::
     RIP.Ptr Wl_subsurface
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_d1ce410591c25970 =
  RIP.fromFFIType hs_bindgen_d1ce410591c25970_base

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
  hs_bindgen_d1ce410591c25970

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subsurface_get_user_data@
foreign import ccall unsafe "hs_bindgen_d60dab0afa591c19" hs_bindgen_d60dab0afa591c19_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subsurface_get_user_data@
hs_bindgen_d60dab0afa591c19 ::
     RIP.Ptr Wl_subsurface
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_d60dab0afa591c19 =
  RIP.fromFFIType hs_bindgen_d60dab0afa591c19_base

{-| __C declaration:__ @wl_subsurface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6318:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_get_user_data ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO (RIP.Ptr RIP.Void)
wl_subsurface_get_user_data =
  hs_bindgen_d60dab0afa591c19

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subsurface_get_version@
foreign import ccall unsafe "hs_bindgen_59d583e78c746e98" hs_bindgen_59d583e78c746e98_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subsurface_get_version@
hs_bindgen_59d583e78c746e98 ::
     RIP.Ptr Wl_subsurface
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_59d583e78c746e98 =
  RIP.fromFFIType hs_bindgen_59d583e78c746e98_base

{-| __C declaration:__ @wl_subsurface_get_version@

    __defined at:__ @wayland-client-protocol.h 6324:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_get_version ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_subsurface_get_version =
  hs_bindgen_59d583e78c746e98

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subsurface_destroy@
foreign import ccall unsafe "hs_bindgen_8499305bb86ef812" hs_bindgen_8499305bb86ef812_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subsurface_destroy@
hs_bindgen_8499305bb86ef812 ::
     RIP.Ptr Wl_subsurface
  -> IO ()
hs_bindgen_8499305bb86ef812 =
  RIP.fromFFIType hs_bindgen_8499305bb86ef812_base

{-| __C declaration:__ @wl_subsurface_destroy@

    __defined at:__ @wayland-client-protocol.h 6338:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_destroy ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO ()
wl_subsurface_destroy = hs_bindgen_8499305bb86ef812

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subsurface_set_position@
foreign import ccall unsafe "hs_bindgen_f0aad23f243e4548" hs_bindgen_f0aad23f243e4548_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subsurface_set_position@
hs_bindgen_f0aad23f243e4548 ::
     RIP.Ptr Wl_subsurface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_f0aad23f243e4548 =
  RIP.fromFFIType hs_bindgen_f0aad23f243e4548_base

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
  hs_bindgen_f0aad23f243e4548

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subsurface_place_above@
foreign import ccall unsafe "hs_bindgen_b0b750ad3ba406d3" hs_bindgen_b0b750ad3ba406d3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subsurface_place_above@
hs_bindgen_b0b750ad3ba406d3 ::
     RIP.Ptr Wl_subsurface
  -> RIP.Ptr Wl_surface
  -> IO ()
hs_bindgen_b0b750ad3ba406d3 =
  RIP.fromFFIType hs_bindgen_b0b750ad3ba406d3_base

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
  hs_bindgen_b0b750ad3ba406d3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subsurface_place_below@
foreign import ccall unsafe "hs_bindgen_f267ccafdb9c4457" hs_bindgen_f267ccafdb9c4457_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subsurface_place_below@
hs_bindgen_f267ccafdb9c4457 ::
     RIP.Ptr Wl_subsurface
  -> RIP.Ptr Wl_surface
  -> IO ()
hs_bindgen_f267ccafdb9c4457 =
  RIP.fromFFIType hs_bindgen_f267ccafdb9c4457_base

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
  hs_bindgen_f267ccafdb9c4457

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subsurface_set_sync@
foreign import ccall unsafe "hs_bindgen_22595f56de33b737" hs_bindgen_22595f56de33b737_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subsurface_set_sync@
hs_bindgen_22595f56de33b737 ::
     RIP.Ptr Wl_subsurface
  -> IO ()
hs_bindgen_22595f56de33b737 =
  RIP.fromFFIType hs_bindgen_22595f56de33b737_base

{-| __C declaration:__ @wl_subsurface_set_sync@

    __defined at:__ @wayland-client-protocol.h 6424:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_sync ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO ()
wl_subsurface_set_sync = hs_bindgen_22595f56de33b737

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subsurface_set_desync@
foreign import ccall unsafe "hs_bindgen_e4c1b723867c07a1" hs_bindgen_e4c1b723867c07a1_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_subsurface_set_desync@
hs_bindgen_e4c1b723867c07a1 ::
     RIP.Ptr Wl_subsurface
  -> IO ()
hs_bindgen_e4c1b723867c07a1 =
  RIP.fromFFIType hs_bindgen_e4c1b723867c07a1_base

{-| __C declaration:__ @wl_subsurface_set_desync@

    __defined at:__ @wayland-client-protocol.h 6454:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_desync ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO ()
wl_subsurface_set_desync =
  hs_bindgen_e4c1b723867c07a1

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_fixes_set_user_data@
foreign import ccall unsafe "hs_bindgen_49432ae7537539f5" hs_bindgen_49432ae7537539f5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_fixes_set_user_data@
hs_bindgen_49432ae7537539f5 ::
     RIP.Ptr Wl_fixes
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_49432ae7537539f5 =
  RIP.fromFFIType hs_bindgen_49432ae7537539f5_base

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
wl_fixes_set_user_data = hs_bindgen_49432ae7537539f5

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_fixes_get_user_data@
foreign import ccall unsafe "hs_bindgen_f3e0751ab94d485f" hs_bindgen_f3e0751ab94d485f_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_fixes_get_user_data@
hs_bindgen_f3e0751ab94d485f ::
     RIP.Ptr Wl_fixes
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_f3e0751ab94d485f =
  RIP.fromFFIType hs_bindgen_f3e0751ab94d485f_base

{-| __C declaration:__ @wl_fixes_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6482:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_get_user_data ::
     RIP.Ptr Wl_fixes
     -- ^ __C declaration:__ @wl_fixes@
  -> IO (RIP.Ptr RIP.Void)
wl_fixes_get_user_data = hs_bindgen_f3e0751ab94d485f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_fixes_get_version@
foreign import ccall unsafe "hs_bindgen_552cc0e7700d86fa" hs_bindgen_552cc0e7700d86fa_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_fixes_get_version@
hs_bindgen_552cc0e7700d86fa ::
     RIP.Ptr Wl_fixes
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_552cc0e7700d86fa =
  RIP.fromFFIType hs_bindgen_552cc0e7700d86fa_base

{-| __C declaration:__ @wl_fixes_get_version@

    __defined at:__ @wayland-client-protocol.h 6488:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_get_version ::
     RIP.Ptr Wl_fixes
     -- ^ __C declaration:__ @wl_fixes@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_fixes_get_version = hs_bindgen_552cc0e7700d86fa

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_fixes_destroy@
foreign import ccall unsafe "hs_bindgen_044a17d87ee2fc77" hs_bindgen_044a17d87ee2fc77_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_fixes_destroy@
hs_bindgen_044a17d87ee2fc77 ::
     RIP.Ptr Wl_fixes
  -> IO ()
hs_bindgen_044a17d87ee2fc77 =
  RIP.fromFFIType hs_bindgen_044a17d87ee2fc77_base

{-| __C declaration:__ @wl_fixes_destroy@

    __defined at:__ @wayland-client-protocol.h 6497:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_destroy ::
     RIP.Ptr Wl_fixes
     -- ^ __C declaration:__ @wl_fixes@
  -> IO ()
wl_fixes_destroy = hs_bindgen_044a17d87ee2fc77

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_fixes_destroy_registry@
foreign import ccall unsafe "hs_bindgen_bfcc07010d9b062b" hs_bindgen_bfcc07010d9b062b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Unsafe_wl_fixes_destroy_registry@
hs_bindgen_bfcc07010d9b062b ::
     RIP.Ptr Wl_fixes
  -> RIP.Ptr Wl_registry
  -> IO ()
hs_bindgen_bfcc07010d9b062b =
  RIP.fromFFIType hs_bindgen_bfcc07010d9b062b_base

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
  hs_bindgen_bfcc07010d9b062b
