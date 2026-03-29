{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Wayland.Client.Safe
    ( Generated.Wayland.Client.Safe.wl_event_queue_destroy
    , Generated.Wayland.Client.Safe.wl_proxy_create
    , Generated.Wayland.Client.Safe.wl_proxy_create_wrapper
    , Generated.Wayland.Client.Safe.wl_proxy_wrapper_destroy
    , Generated.Wayland.Client.Safe.wl_proxy_destroy
    , Generated.Wayland.Client.Safe.wl_proxy_add_listener
    , Generated.Wayland.Client.Safe.wl_proxy_get_listener
    , Generated.Wayland.Client.Safe.wl_proxy_add_dispatcher
    , Generated.Wayland.Client.Safe.wl_proxy_set_user_data
    , Generated.Wayland.Client.Safe.wl_proxy_get_user_data
    , Generated.Wayland.Client.Safe.wl_proxy_get_version
    , Generated.Wayland.Client.Safe.wl_proxy_get_id
    , Generated.Wayland.Client.Safe.wl_proxy_set_tag
    , Generated.Wayland.Client.Safe.wl_proxy_get_tag
    , Generated.Wayland.Client.Safe.wl_proxy_get_class
    , Generated.Wayland.Client.Safe.wl_proxy_get_interface
    , Generated.Wayland.Client.Safe.wl_proxy_get_display
    , Generated.Wayland.Client.Safe.wl_proxy_set_queue
    , Generated.Wayland.Client.Safe.wl_proxy_get_queue
    , Generated.Wayland.Client.Safe.wl_event_queue_get_name
    , Generated.Wayland.Client.Safe.wl_display_connect
    , Generated.Wayland.Client.Safe.wl_display_connect_to_fd
    , Generated.Wayland.Client.Safe.wl_display_disconnect
    , Generated.Wayland.Client.Safe.wl_display_get_fd
    , Generated.Wayland.Client.Safe.wl_display_dispatch
    , Generated.Wayland.Client.Safe.wl_display_dispatch_queue
    , Generated.Wayland.Client.Safe.wl_display_dispatch_timeout
    , Generated.Wayland.Client.Safe.wl_display_dispatch_queue_timeout
    , Generated.Wayland.Client.Safe.wl_display_dispatch_queue_pending
    , Generated.Wayland.Client.Safe.wl_display_dispatch_pending
    , Generated.Wayland.Client.Safe.wl_display_get_error
    , Generated.Wayland.Client.Safe.wl_display_get_protocol_error
    , Generated.Wayland.Client.Safe.wl_display_flush
    , Generated.Wayland.Client.Safe.wl_display_roundtrip_queue
    , Generated.Wayland.Client.Safe.wl_display_roundtrip
    , Generated.Wayland.Client.Safe.wl_display_create_queue
    , Generated.Wayland.Client.Safe.wl_display_create_queue_with_name
    , Generated.Wayland.Client.Safe.wl_display_prepare_read_queue
    , Generated.Wayland.Client.Safe.wl_display_prepare_read
    , Generated.Wayland.Client.Safe.wl_display_cancel_read
    , Generated.Wayland.Client.Safe.wl_display_read_events
    , Generated.Wayland.Client.Safe.wl_display_set_max_buffer_size
    , Generated.Wayland.Client.Safe.wl_display_add_listener
    , Generated.Wayland.Client.Safe.wl_display_set_user_data
    , Generated.Wayland.Client.Safe.wl_display_get_user_data
    , Generated.Wayland.Client.Safe.wl_display_get_version
    , Generated.Wayland.Client.Safe.wl_display_sync
    , Generated.Wayland.Client.Safe.wl_display_get_registry
    , Generated.Wayland.Client.Safe.wl_registry_add_listener
    , Generated.Wayland.Client.Safe.wl_registry_set_user_data
    , Generated.Wayland.Client.Safe.wl_registry_get_user_data
    , Generated.Wayland.Client.Safe.wl_registry_get_version
    , Generated.Wayland.Client.Safe.wl_registry_destroy
    , Generated.Wayland.Client.Safe.wl_registry_bind
    , Generated.Wayland.Client.Safe.wl_callback_add_listener
    , Generated.Wayland.Client.Safe.wl_callback_set_user_data
    , Generated.Wayland.Client.Safe.wl_callback_get_user_data
    , Generated.Wayland.Client.Safe.wl_callback_get_version
    , Generated.Wayland.Client.Safe.wl_callback_destroy
    , Generated.Wayland.Client.Safe.wl_compositor_set_user_data
    , Generated.Wayland.Client.Safe.wl_compositor_get_user_data
    , Generated.Wayland.Client.Safe.wl_compositor_get_version
    , Generated.Wayland.Client.Safe.wl_compositor_destroy
    , Generated.Wayland.Client.Safe.wl_compositor_create_surface
    , Generated.Wayland.Client.Safe.wl_compositor_create_region
    , Generated.Wayland.Client.Safe.wl_shm_pool_set_user_data
    , Generated.Wayland.Client.Safe.wl_shm_pool_get_user_data
    , Generated.Wayland.Client.Safe.wl_shm_pool_get_version
    , Generated.Wayland.Client.Safe.wl_shm_pool_create_buffer
    , Generated.Wayland.Client.Safe.wl_shm_pool_destroy
    , Generated.Wayland.Client.Safe.wl_shm_pool_resize
    , Generated.Wayland.Client.Safe.wl_shm_add_listener
    , Generated.Wayland.Client.Safe.wl_shm_set_user_data
    , Generated.Wayland.Client.Safe.wl_shm_get_user_data
    , Generated.Wayland.Client.Safe.wl_shm_get_version
    , Generated.Wayland.Client.Safe.wl_shm_destroy
    , Generated.Wayland.Client.Safe.wl_shm_create_pool
    , Generated.Wayland.Client.Safe.wl_shm_release
    , Generated.Wayland.Client.Safe.wl_buffer_add_listener
    , Generated.Wayland.Client.Safe.wl_buffer_set_user_data
    , Generated.Wayland.Client.Safe.wl_buffer_get_user_data
    , Generated.Wayland.Client.Safe.wl_buffer_get_version
    , Generated.Wayland.Client.Safe.wl_buffer_destroy
    , Generated.Wayland.Client.Safe.wl_data_offer_add_listener
    , Generated.Wayland.Client.Safe.wl_data_offer_set_user_data
    , Generated.Wayland.Client.Safe.wl_data_offer_get_user_data
    , Generated.Wayland.Client.Safe.wl_data_offer_get_version
    , Generated.Wayland.Client.Safe.wl_data_offer_accept
    , Generated.Wayland.Client.Safe.wl_data_offer_receive
    , Generated.Wayland.Client.Safe.wl_data_offer_destroy
    , Generated.Wayland.Client.Safe.wl_data_offer_finish
    , Generated.Wayland.Client.Safe.wl_data_offer_set_actions
    , Generated.Wayland.Client.Safe.wl_data_source_add_listener
    , Generated.Wayland.Client.Safe.wl_data_source_set_user_data
    , Generated.Wayland.Client.Safe.wl_data_source_get_user_data
    , Generated.Wayland.Client.Safe.wl_data_source_get_version
    , Generated.Wayland.Client.Safe.wl_data_source_offer
    , Generated.Wayland.Client.Safe.wl_data_source_destroy
    , Generated.Wayland.Client.Safe.wl_data_source_set_actions
    , Generated.Wayland.Client.Safe.wl_data_device_add_listener
    , Generated.Wayland.Client.Safe.wl_data_device_set_user_data
    , Generated.Wayland.Client.Safe.wl_data_device_get_user_data
    , Generated.Wayland.Client.Safe.wl_data_device_get_version
    , Generated.Wayland.Client.Safe.wl_data_device_destroy
    , Generated.Wayland.Client.Safe.wl_data_device_start_drag
    , Generated.Wayland.Client.Safe.wl_data_device_set_selection
    , Generated.Wayland.Client.Safe.wl_data_device_release
    , Generated.Wayland.Client.Safe.wl_data_device_manager_set_user_data
    , Generated.Wayland.Client.Safe.wl_data_device_manager_get_user_data
    , Generated.Wayland.Client.Safe.wl_data_device_manager_get_version
    , Generated.Wayland.Client.Safe.wl_data_device_manager_destroy
    , Generated.Wayland.Client.Safe.wl_data_device_manager_create_data_source
    , Generated.Wayland.Client.Safe.wl_data_device_manager_get_data_device
    , Generated.Wayland.Client.Safe.wl_shell_set_user_data
    , Generated.Wayland.Client.Safe.wl_shell_get_user_data
    , Generated.Wayland.Client.Safe.wl_shell_get_version
    , Generated.Wayland.Client.Safe.wl_shell_destroy
    , Generated.Wayland.Client.Safe.wl_shell_get_shell_surface
    , Generated.Wayland.Client.Safe.wl_shell_surface_add_listener
    , Generated.Wayland.Client.Safe.wl_shell_surface_set_user_data
    , Generated.Wayland.Client.Safe.wl_shell_surface_get_user_data
    , Generated.Wayland.Client.Safe.wl_shell_surface_get_version
    , Generated.Wayland.Client.Safe.wl_shell_surface_destroy
    , Generated.Wayland.Client.Safe.wl_shell_surface_pong
    , Generated.Wayland.Client.Safe.wl_shell_surface_move
    , Generated.Wayland.Client.Safe.wl_shell_surface_resize
    , Generated.Wayland.Client.Safe.wl_shell_surface_set_toplevel
    , Generated.Wayland.Client.Safe.wl_shell_surface_set_transient
    , Generated.Wayland.Client.Safe.wl_shell_surface_set_fullscreen
    , Generated.Wayland.Client.Safe.wl_shell_surface_set_popup
    , Generated.Wayland.Client.Safe.wl_shell_surface_set_maximized
    , Generated.Wayland.Client.Safe.wl_shell_surface_set_title
    , Generated.Wayland.Client.Safe.wl_shell_surface_set_class
    , Generated.Wayland.Client.Safe.wl_surface_add_listener
    , Generated.Wayland.Client.Safe.wl_surface_set_user_data
    , Generated.Wayland.Client.Safe.wl_surface_get_user_data
    , Generated.Wayland.Client.Safe.wl_surface_get_version
    , Generated.Wayland.Client.Safe.wl_surface_destroy
    , Generated.Wayland.Client.Safe.wl_surface_attach
    , Generated.Wayland.Client.Safe.wl_surface_damage
    , Generated.Wayland.Client.Safe.wl_surface_frame
    , Generated.Wayland.Client.Safe.wl_surface_set_opaque_region
    , Generated.Wayland.Client.Safe.wl_surface_set_input_region
    , Generated.Wayland.Client.Safe.wl_surface_commit
    , Generated.Wayland.Client.Safe.wl_surface_set_buffer_transform
    , Generated.Wayland.Client.Safe.wl_surface_set_buffer_scale
    , Generated.Wayland.Client.Safe.wl_surface_damage_buffer
    , Generated.Wayland.Client.Safe.wl_surface_offset
    , Generated.Wayland.Client.Safe.wl_seat_add_listener
    , Generated.Wayland.Client.Safe.wl_seat_set_user_data
    , Generated.Wayland.Client.Safe.wl_seat_get_user_data
    , Generated.Wayland.Client.Safe.wl_seat_get_version
    , Generated.Wayland.Client.Safe.wl_seat_destroy
    , Generated.Wayland.Client.Safe.wl_seat_get_pointer
    , Generated.Wayland.Client.Safe.wl_seat_get_keyboard
    , Generated.Wayland.Client.Safe.wl_seat_get_touch
    , Generated.Wayland.Client.Safe.wl_seat_release
    , Generated.Wayland.Client.Safe.wl_pointer_add_listener
    , Generated.Wayland.Client.Safe.wl_pointer_set_user_data
    , Generated.Wayland.Client.Safe.wl_pointer_get_user_data
    , Generated.Wayland.Client.Safe.wl_pointer_get_version
    , Generated.Wayland.Client.Safe.wl_pointer_destroy
    , Generated.Wayland.Client.Safe.wl_pointer_set_cursor
    , Generated.Wayland.Client.Safe.wl_pointer_release
    , Generated.Wayland.Client.Safe.wl_keyboard_add_listener
    , Generated.Wayland.Client.Safe.wl_keyboard_set_user_data
    , Generated.Wayland.Client.Safe.wl_keyboard_get_user_data
    , Generated.Wayland.Client.Safe.wl_keyboard_get_version
    , Generated.Wayland.Client.Safe.wl_keyboard_destroy
    , Generated.Wayland.Client.Safe.wl_keyboard_release
    , Generated.Wayland.Client.Safe.wl_touch_add_listener
    , Generated.Wayland.Client.Safe.wl_touch_set_user_data
    , Generated.Wayland.Client.Safe.wl_touch_get_user_data
    , Generated.Wayland.Client.Safe.wl_touch_get_version
    , Generated.Wayland.Client.Safe.wl_touch_destroy
    , Generated.Wayland.Client.Safe.wl_touch_release
    , Generated.Wayland.Client.Safe.wl_output_add_listener
    , Generated.Wayland.Client.Safe.wl_output_set_user_data
    , Generated.Wayland.Client.Safe.wl_output_get_user_data
    , Generated.Wayland.Client.Safe.wl_output_get_version
    , Generated.Wayland.Client.Safe.wl_output_destroy
    , Generated.Wayland.Client.Safe.wl_output_release
    , Generated.Wayland.Client.Safe.wl_region_set_user_data
    , Generated.Wayland.Client.Safe.wl_region_get_user_data
    , Generated.Wayland.Client.Safe.wl_region_get_version
    , Generated.Wayland.Client.Safe.wl_region_destroy
    , Generated.Wayland.Client.Safe.wl_region_add
    , Generated.Wayland.Client.Safe.wl_region_subtract
    , Generated.Wayland.Client.Safe.wl_subcompositor_set_user_data
    , Generated.Wayland.Client.Safe.wl_subcompositor_get_user_data
    , Generated.Wayland.Client.Safe.wl_subcompositor_get_version
    , Generated.Wayland.Client.Safe.wl_subcompositor_destroy
    , Generated.Wayland.Client.Safe.wl_subcompositor_get_subsurface
    , Generated.Wayland.Client.Safe.wl_subsurface_set_user_data
    , Generated.Wayland.Client.Safe.wl_subsurface_get_user_data
    , Generated.Wayland.Client.Safe.wl_subsurface_get_version
    , Generated.Wayland.Client.Safe.wl_subsurface_destroy
    , Generated.Wayland.Client.Safe.wl_subsurface_set_position
    , Generated.Wayland.Client.Safe.wl_subsurface_place_above
    , Generated.Wayland.Client.Safe.wl_subsurface_place_below
    , Generated.Wayland.Client.Safe.wl_subsurface_set_sync
    , Generated.Wayland.Client.Safe.wl_subsurface_set_desync
    , Generated.Wayland.Client.Safe.wl_fixes_set_user_data
    , Generated.Wayland.Client.Safe.wl_fixes_get_user_data
    , Generated.Wayland.Client.Safe.wl_fixes_get_version
    , Generated.Wayland.Client.Safe.wl_fixes_destroy
    , Generated.Wayland.Client.Safe.wl_fixes_destroy_registry
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
  , "void hs_bindgen_5ebeecae413f01f9 ("
  , "  struct wl_event_queue *arg1"
  , ")"
  , "{"
  , "  (wl_event_queue_destroy)(arg1);"
  , "}"
  , "struct wl_proxy *hs_bindgen_8199d45aa144a23b ("
  , "  struct wl_proxy *arg1,"
  , "  struct wl_interface const *arg2"
  , ")"
  , "{"
  , "  return (wl_proxy_create)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_b6b8f7183338de04 ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_create_wrapper)(arg1);"
  , "}"
  , "void hs_bindgen_7e7d0caa8dca8694 ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  (wl_proxy_wrapper_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_78b1f53e207bbb98 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  (wl_proxy_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_fdfe0efec5e9e62f ("
  , "  struct wl_proxy *arg1,"
  , "  void (**arg2) (void),"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_proxy_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void const *hs_bindgen_29207e3052b0dbb3 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_listener)(arg1);"
  , "}"
  , "signed int hs_bindgen_798f4f4cf867bc7c ("
  , "  struct wl_proxy *arg1,"
  , "  wl_dispatcher_func_t arg2,"
  , "  void const *arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (wl_proxy_add_dispatcher)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_8d16d7d1b6b57ee8 ("
  , "  struct wl_proxy *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_proxy_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_857f71dca5806186 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_d726346bcc0448af ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_version)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_4d240ea9bf646973 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_id)(arg1);"
  , "}"
  , "void hs_bindgen_b088580783ba7315 ("
  , "  struct wl_proxy *arg1,"
  , "  char const *const *arg2"
  , ")"
  , "{"
  , "  (wl_proxy_set_tag)(arg1, arg2);"
  , "}"
  , "char const *const *hs_bindgen_4b532791cccf6aa5 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_tag)(arg1);"
  , "}"
  , "char const *hs_bindgen_00efc47d9f30405b ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_class)(arg1);"
  , "}"
  , "struct wl_interface const *hs_bindgen_e5008e351f9f1dc2 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_interface)(arg1);"
  , "}"
  , "struct wl_display *hs_bindgen_3682b21de0179ce2 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_display)(arg1);"
  , "}"
  , "void hs_bindgen_0846929db2947861 ("
  , "  struct wl_proxy *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  (wl_proxy_set_queue)(arg1, arg2);"
  , "}"
  , "struct wl_event_queue *hs_bindgen_ee42b12603109931 ("
  , "  struct wl_proxy const *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_queue)(arg1);"
  , "}"
  , "char const *hs_bindgen_f9388f7f4c8de6b2 ("
  , "  struct wl_event_queue const *arg1"
  , ")"
  , "{"
  , "  return (wl_event_queue_get_name)(arg1);"
  , "}"
  , "struct wl_display *hs_bindgen_7cf3e4ea8858b778 ("
  , "  char const *arg1"
  , ")"
  , "{"
  , "  return (wl_display_connect)(arg1);"
  , "}"
  , "struct wl_display *hs_bindgen_5607abb4d7cda4a0 ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return (wl_display_connect_to_fd)(arg1);"
  , "}"
  , "void hs_bindgen_469c03d63291887d ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  (wl_display_disconnect)(arg1);"
  , "}"
  , "signed int hs_bindgen_7da2505aa8b19190 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_fd)(arg1);"
  , "}"
  , "signed int hs_bindgen_7115669300b93884 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_dispatch)(arg1);"
  , "}"
  , "signed int hs_bindgen_8f7d3b5b79eaf9d9 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_queue)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_2e37f1d7a4018fea ("
  , "  struct wl_display *arg1,"
  , "  struct timespec const *arg2"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_timeout)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_28b0095a81aeb389 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2,"
  , "  struct timespec const *arg3"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_queue_timeout)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_2a4b034b946190c7 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_queue_pending)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_afb72ec6ad8d73f7 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_pending)(arg1);"
  , "}"
  , "signed int hs_bindgen_b280d8deb8212475 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_error)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_b4a59f397f428dd5 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_interface const **arg2,"
  , "  uint32_t *arg3"
  , ")"
  , "{"
  , "  return (wl_display_get_protocol_error)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_88cb4066c7076cff ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_flush)(arg1);"
  , "}"
  , "signed int hs_bindgen_5c4d6a94f5df2e39 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_roundtrip_queue)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_26add8181931227f ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_roundtrip)(arg1);"
  , "}"
  , "struct wl_event_queue *hs_bindgen_ce0a241b3fb6a093 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_create_queue)(arg1);"
  , "}"
  , "struct wl_event_queue *hs_bindgen_9493c3160e129438 ("
  , "  struct wl_display *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return (wl_display_create_queue_with_name)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_eae41fdacfe57fbb ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_prepare_read_queue)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_9b51f7ee6753ac8b ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_prepare_read)(arg1);"
  , "}"
  , "void hs_bindgen_0565d6bf14049263 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  (wl_display_cancel_read)(arg1);"
  , "}"
  , "signed int hs_bindgen_50b0a9739cb8b160 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_read_events)(arg1);"
  , "}"
  , "void hs_bindgen_f12a9d8934f09f77 ("
  , "  struct wl_display *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  (wl_display_set_max_buffer_size)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_51760b48fee61189 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_display_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_display_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_90a487f306661628 ("
  , "  struct wl_display *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_display_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_f2a9eec1928750c3 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_24a7e63d76d1dea6 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_version)(arg1);"
  , "}"
  , "struct wl_callback *hs_bindgen_b065d14a1fdf9997 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_sync)(arg1);"
  , "}"
  , "struct wl_registry *hs_bindgen_f30b452ce579c7c1 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_registry)(arg1);"
  , "}"
  , "signed int hs_bindgen_771dfdeeb5bf2636 ("
  , "  struct wl_registry *arg1,"
  , "  struct wl_registry_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_registry_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_a67e7191753040fe ("
  , "  struct wl_registry *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_registry_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_9c2cdd2f9d121cb1 ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  return (wl_registry_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_97b18ad97e4c7baa ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  return (wl_registry_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_d16f79bac855ff13 ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  (wl_registry_destroy)(arg1);"
  , "}"
  , "void *hs_bindgen_cd31e8bfb5ba67c2 ("
  , "  struct wl_registry *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_interface const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return (wl_registry_bind)(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_ead8b2ad1b9e4949 ("
  , "  struct wl_callback *arg1,"
  , "  struct wl_callback_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_callback_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_48cb6ec61a4862d8 ("
  , "  struct wl_callback *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_callback_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_78f880136af92a3d ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  return (wl_callback_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_e2bb397503cbb903 ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  return (wl_callback_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_e1d146dccf03c2d5 ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  (wl_callback_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_cc86534765b9d845 ("
  , "  struct wl_compositor *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_compositor_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_1e354746d7d579c3 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_95562384022c9964 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_6bf4039c7eee44d5 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  (wl_compositor_destroy)(arg1);"
  , "}"
  , "struct wl_surface *hs_bindgen_9695cf0d11af8e76 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_create_surface)(arg1);"
  , "}"
  , "struct wl_region *hs_bindgen_a96cb96520f11273 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_create_region)(arg1);"
  , "}"
  , "void hs_bindgen_758aa6a36e86a4ca ("
  , "  struct wl_shm_pool *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shm_pool_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_2600d7c5cd8b0604 ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_pool_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_72d506b8d0dd46a6 ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_pool_get_version)(arg1);"
  , "}"
  , "struct wl_buffer *hs_bindgen_a75e517db04e1507 ("
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
  , "void hs_bindgen_ab6fc8f9a74b551b ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  (wl_shm_pool_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_d83e6cb9ea9dfe14 ("
  , "  struct wl_shm_pool *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (wl_shm_pool_resize)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_bb37a2ebdc4b0b2a ("
  , "  struct wl_shm *arg1,"
  , "  struct wl_shm_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_shm_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_e76cc7bb546014d5 ("
  , "  struct wl_shm *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shm_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_5595969be2b7817d ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_07cc933ad3cbf911 ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_fd98e84e34c52a21 ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  (wl_shm_destroy)(arg1);"
  , "}"
  , "struct wl_shm_pool *hs_bindgen_0e170780cd3a592f ("
  , "  struct wl_shm *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return (wl_shm_create_pool)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_53c1fa23a7295db9 ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  (wl_shm_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_a2e8546e608b5f4c ("
  , "  struct wl_buffer *arg1,"
  , "  struct wl_buffer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_buffer_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_0721bfa12a9b44b2 ("
  , "  struct wl_buffer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_buffer_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_9b2066cdbb8333ad ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  return (wl_buffer_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_5c8cfa7b14098e57 ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  return (wl_buffer_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_797f428c8d3ea036 ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  (wl_buffer_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_5872f68981d2e678 ("
  , "  struct wl_data_offer *arg1,"
  , "  struct wl_data_offer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_data_offer_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_cae488e41a411724 ("
  , "  struct wl_data_offer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_offer_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_a47dc913a515c547 ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return (wl_data_offer_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_e89f4f899d3a1b70 ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return (wl_data_offer_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_27c165401030170b ("
  , "  struct wl_data_offer *arg1,"
  , "  uint32_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  (wl_data_offer_accept)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_efa26781730d1bad ("
  , "  struct wl_data_offer *arg1,"
  , "  char const *arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (wl_data_offer_receive)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_908dbf29d95c4523 ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  (wl_data_offer_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_9d8846ab29d49cf3 ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  (wl_data_offer_finish)(arg1);"
  , "}"
  , "void hs_bindgen_a699a2a02cfda4ff ("
  , "  struct wl_data_offer *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (wl_data_offer_set_actions)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_0e667a7854860c7a ("
  , "  struct wl_data_source *arg1,"
  , "  struct wl_data_source_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_data_source_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_93133bea5ef124c3 ("
  , "  struct wl_data_source *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_source_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_7630b7ebbea0c896 ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  return (wl_data_source_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_77d74f7a0627df79 ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  return (wl_data_source_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_1985ed7bd5f0dfec ("
  , "  struct wl_data_source *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (wl_data_source_offer)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_d608ea27788e33b5 ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  (wl_data_source_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_0cb2124aeae70b67 ("
  , "  struct wl_data_source *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (wl_data_source_set_actions)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_746cbd0f3254a1e6 ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_device_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_data_device_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_9e60191540838e4e ("
  , "  struct wl_data_device *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_device_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_6e3684ee1eb1b357 ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_b4baf875c501b087 ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_3f478ce50c6e8506 ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  (wl_data_device_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_ff1d5b01947c44bd ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_source *arg2,"
  , "  struct wl_surface *arg3,"
  , "  struct wl_surface *arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  (wl_data_device_start_drag)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_11649586a39a57e1 ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_source *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (wl_data_device_set_selection)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_d51a349208a712fc ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  (wl_data_device_release)(arg1);"
  , "}"
  , "void hs_bindgen_0dc072135e8b0350 ("
  , "  struct wl_data_device_manager *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_device_manager_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_63117dfe8274ca85 ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_9f58fa41ec49e836 ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_e08bd6254e8a7e5d ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  (wl_data_device_manager_destroy)(arg1);"
  , "}"
  , "struct wl_data_source *hs_bindgen_23fafc42c7e1854d ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_create_data_source)(arg1);"
  , "}"
  , "struct wl_data_device *hs_bindgen_e120e82c35274301 ("
  , "  struct wl_data_device_manager *arg1,"
  , "  struct wl_seat *arg2"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_get_data_device)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_695c1ad434413afa ("
  , "  struct wl_shell *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shell_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_ee42c863ccd4eb54 ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_4e3971f150ca6332 ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_32301d95137798dd ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  (wl_shell_destroy)(arg1);"
  , "}"
  , "struct wl_shell_surface *hs_bindgen_47c1306fa6c080b7 ("
  , "  struct wl_shell *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (wl_shell_get_shell_surface)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_90772497ee3fbad9 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_shell_surface_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_shell_surface_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_cf6d5264aba98bc3 ("
  , "  struct wl_shell_surface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_13cf98e9e8d453c4 ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_surface_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_a61f91b64a4d7bb4 ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_surface_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_44afe2992799b859 ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  (wl_shell_surface_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_a74758e202a97178 ("
  , "  struct wl_shell_surface *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_pong)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_7f14621f999f1300 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (wl_shell_surface_move)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_1ddb8923aa067408 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  (wl_shell_surface_resize)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_98a9d8823a489a5b ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_toplevel)(arg1);"
  , "}"
  , "void hs_bindgen_25e67cf5bd6acc99 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_surface *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_transient)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_fcef197ee3f053f9 ("
  , "  struct wl_shell_surface *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3,"
  , "  struct wl_output *arg4"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_fullscreen)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_24ddbe3593ef374b ("
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
  , "void hs_bindgen_2dc7234c70c05214 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_output *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_maximized)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_9850501b8c554fb8 ("
  , "  struct wl_shell_surface *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_title)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_e1d1e6f75341f6a4 ("
  , "  struct wl_shell_surface *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_class)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_3ec6774108b4fd10 ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_surface_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_surface_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_2fcbaed2a6cd62af ("
  , "  struct wl_surface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_03360de5f837e83a ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_surface_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_d25f85442b98dcb2 ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_surface_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_f2e3abc0980c36ad ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  (wl_surface_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_101b2d435865cc6a ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_buffer *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4"
  , ")"
  , "{"
  , "  (wl_surface_attach)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_c84e7ba3e4015e7d ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_surface_damage)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "struct wl_callback *hs_bindgen_dd3bfad4fdff558b ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_surface_frame)(arg1);"
  , "}"
  , "void hs_bindgen_acdedf6b2942b497 ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_region *arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_opaque_region)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_539cb9d434d5dd3f ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_region *arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_input_region)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_de9341a8898f01c8 ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  (wl_surface_commit)(arg1);"
  , "}"
  , "void hs_bindgen_97a2bbe3ca07d770 ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_buffer_transform)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_118541ff98da8d31 ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_buffer_scale)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_97596bda6c78785a ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_surface_damage_buffer)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_90ca4b2dbbe658c3 ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (wl_surface_offset)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_806c7c15d6106e10 ("
  , "  struct wl_seat *arg1,"
  , "  struct wl_seat_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_seat_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_233a5383cb30f609 ("
  , "  struct wl_seat *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_seat_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_df7e124a0a5324a2 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_2e5680bb4d0972a4 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_ca031ed59c2687dc ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  (wl_seat_destroy)(arg1);"
  , "}"
  , "struct wl_pointer *hs_bindgen_202bb165428f5072 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_pointer)(arg1);"
  , "}"
  , "struct wl_keyboard *hs_bindgen_1213744edd239188 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_keyboard)(arg1);"
  , "}"
  , "struct wl_touch *hs_bindgen_199f47ea06a30f63 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_touch)(arg1);"
  , "}"
  , "void hs_bindgen_970d8527938c5528 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  (wl_seat_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_d3ec24c8ce0a2711 ("
  , "  struct wl_pointer *arg1,"
  , "  struct wl_pointer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_pointer_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_2107ffa3207af4aa ("
  , "  struct wl_pointer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_pointer_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_6e3a1ee9ff811448 ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return (wl_pointer_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_f25b993bd8b89759 ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return (wl_pointer_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_44082231d4c1e03d ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  (wl_pointer_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_9fff84543f5eaf73 ("
  , "  struct wl_pointer *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_surface *arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_pointer_set_cursor)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_001b9a1173b3ba87 ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  (wl_pointer_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_171e6441366c2761 ("
  , "  struct wl_keyboard *arg1,"
  , "  struct wl_keyboard_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_keyboard_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_b04631f5492fa94b ("
  , "  struct wl_keyboard *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_keyboard_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_70a6d377462a5121 ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return (wl_keyboard_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_798dfaa1b78de66c ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return (wl_keyboard_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_62b4e233189e1ea8 ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  (wl_keyboard_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_4e45d0bdb9d1fd67 ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  (wl_keyboard_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_ae9bf0e4e73abb3d ("
  , "  struct wl_touch *arg1,"
  , "  struct wl_touch_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_touch_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_f973b0f9972f4bce ("
  , "  struct wl_touch *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_touch_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_527e52d0cd2911d2 ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return (wl_touch_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_9357f344c69f2027 ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return (wl_touch_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_d3bdb2cbf6a46318 ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  (wl_touch_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_399ad3793f1f4495 ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  (wl_touch_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_cb5eab775b9670e6 ("
  , "  struct wl_output *arg1,"
  , "  struct wl_output_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_output_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_c2245b79cfcfb62c ("
  , "  struct wl_output *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_output_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_5ff14f01443d3e8f ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return (wl_output_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_abdd91b9bc75e151 ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return (wl_output_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_c25df5b1f97f7695 ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  (wl_output_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_7980bbe93524b7f3 ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  (wl_output_release)(arg1);"
  , "}"
  , "void hs_bindgen_b1039fece4ca235c ("
  , "  struct wl_region *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_region_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_e554a15f2ea923fb ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  return (wl_region_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_db4f0b624029a031 ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  return (wl_region_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_6c9605de12c89a2c ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  (wl_region_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_5244523a3f3c2626 ("
  , "  struct wl_region *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_region_add)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_f56fa08fdd944cef ("
  , "  struct wl_region *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_region_subtract)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_4639cfab24c01c72 ("
  , "  struct wl_subcompositor *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_subcompositor_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_a3a2a307862bf5cb ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  return (wl_subcompositor_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_4865388d0d458fb3 ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  return (wl_subcompositor_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_369530ecf040602d ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  (wl_subcompositor_destroy)(arg1);"
  , "}"
  , "struct wl_subsurface *hs_bindgen_dc1ee564f1901e28 ("
  , "  struct wl_subcompositor *arg1,"
  , "  struct wl_surface *arg2,"
  , "  struct wl_surface *arg3"
  , ")"
  , "{"
  , "  return (wl_subcompositor_get_subsurface)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_8965c858fdfb9784 ("
  , "  struct wl_subsurface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_subsurface_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_c73ad4b80223b74a ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return (wl_subsurface_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_dce45cadff291a6c ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return (wl_subsurface_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_3752430a1e1fefc5 ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  (wl_subsurface_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_f9acf02a1acee6b7 ("
  , "  struct wl_subsurface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (wl_subsurface_set_position)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_e5234444c4c99606 ("
  , "  struct wl_subsurface *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  (wl_subsurface_place_above)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_d926657b1851f5cd ("
  , "  struct wl_subsurface *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  (wl_subsurface_place_below)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_9526cd8f5a4fb80d ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  (wl_subsurface_set_sync)(arg1);"
  , "}"
  , "void hs_bindgen_7e70ff871972b4ee ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  (wl_subsurface_set_desync)(arg1);"
  , "}"
  , "void hs_bindgen_5290cce9763b3c57 ("
  , "  struct wl_fixes *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_fixes_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_69787fcf98b763aa ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  return (wl_fixes_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_4f0ff00948fcc40d ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  return (wl_fixes_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_f8f0ead293d52f77 ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  (wl_fixes_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_f65a9d6abf874493 ("
  , "  struct wl_fixes *arg1,"
  , "  struct wl_registry *arg2"
  , ")"
  , "{"
  , "  (wl_fixes_destroy_registry)(arg1, arg2);"
  , "}"
  ]))

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_event_queue_destroy@
foreign import ccall safe "hs_bindgen_5ebeecae413f01f9" hs_bindgen_5ebeecae413f01f9_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_event_queue_destroy@
hs_bindgen_5ebeecae413f01f9 ::
     RIP.Ptr WlEventQueue
  -> IO ()
hs_bindgen_5ebeecae413f01f9 =
  RIP.fromFFIType hs_bindgen_5ebeecae413f01f9_base

{-| __C declaration:__ @wl_event_queue_destroy@

    __defined at:__ @wayland-client-core.h 130:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_event_queue_destroy ::
     RIP.Ptr WlEventQueue
     -- ^ __C declaration:__ @queue@
  -> IO ()
wl_event_queue_destroy = hs_bindgen_5ebeecae413f01f9

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_create@
foreign import ccall safe "hs_bindgen_8199d45aa144a23b" hs_bindgen_8199d45aa144a23b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_create@
hs_bindgen_8199d45aa144a23b ::
     RIP.Ptr WlProxy
  -> PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
  -> IO (RIP.Ptr WlProxy)
hs_bindgen_8199d45aa144a23b =
  RIP.fromFFIType hs_bindgen_8199d45aa144a23b_base

{-| __C declaration:__ @wl_proxy_create@

    __defined at:__ @wayland-client-core.h 153:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_create ::
     RIP.Ptr WlProxy
     -- ^ __C declaration:__ @factory@
  -> PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
     -- ^ __C declaration:__ @interface@
  -> IO (RIP.Ptr WlProxy)
wl_proxy_create = hs_bindgen_8199d45aa144a23b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_create_wrapper@
foreign import ccall safe "hs_bindgen_b6b8f7183338de04" hs_bindgen_b6b8f7183338de04_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_create_wrapper@
hs_bindgen_b6b8f7183338de04 ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_b6b8f7183338de04 =
  RIP.fromFFIType hs_bindgen_b6b8f7183338de04_base

{-| __C declaration:__ @wl_proxy_create_wrapper@

    __defined at:__ @wayland-client-core.h 157:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_create_wrapper ::
     RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr RIP.Void)
wl_proxy_create_wrapper = hs_bindgen_b6b8f7183338de04

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_wrapper_destroy@
foreign import ccall safe "hs_bindgen_7e7d0caa8dca8694" hs_bindgen_7e7d0caa8dca8694_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_wrapper_destroy@
hs_bindgen_7e7d0caa8dca8694 ::
     RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_7e7d0caa8dca8694 =
  RIP.fromFFIType hs_bindgen_7e7d0caa8dca8694_base

{-| __C declaration:__ @wl_proxy_wrapper_destroy@

    __defined at:__ @wayland-client-core.h 160:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_wrapper_destroy ::
     RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @proxy_wrapper@
  -> IO ()
wl_proxy_wrapper_destroy =
  hs_bindgen_7e7d0caa8dca8694

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_destroy@
foreign import ccall safe "hs_bindgen_78b1f53e207bbb98" hs_bindgen_78b1f53e207bbb98_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_destroy@
hs_bindgen_78b1f53e207bbb98 ::
     RIP.Ptr WlProxy
  -> IO ()
hs_bindgen_78b1f53e207bbb98 =
  RIP.fromFFIType hs_bindgen_78b1f53e207bbb98_base

{-| __C declaration:__ @wl_proxy_destroy@

    __defined at:__ @wayland-client-core.h 188:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_destroy ::
     RIP.Ptr WlProxy
     -- ^ __C declaration:__ @proxy@
  -> IO ()
wl_proxy_destroy = hs_bindgen_78b1f53e207bbb98

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_add_listener@
foreign import ccall safe "hs_bindgen_fdfe0efec5e9e62f" hs_bindgen_fdfe0efec5e9e62f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_add_listener@
hs_bindgen_fdfe0efec5e9e62f ::
     RIP.Ptr WlProxy
  -> RIP.Ptr (RIP.FunPtr (IO ()))
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_fdfe0efec5e9e62f =
  RIP.fromFFIType hs_bindgen_fdfe0efec5e9e62f_base

{-| __C declaration:__ @wl_proxy_add_listener@

    __defined at:__ @wayland-client-core.h 191:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_add_listener ::
     RIP.Ptr WlProxy
     -- ^ __C declaration:__ @proxy@
  -> RIP.Ptr (RIP.FunPtr (IO ()))
     -- ^ __C declaration:__ @implementation@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_proxy_add_listener = hs_bindgen_fdfe0efec5e9e62f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_get_listener@
foreign import ccall safe "hs_bindgen_29207e3052b0dbb3" hs_bindgen_29207e3052b0dbb3_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_get_listener@
hs_bindgen_29207e3052b0dbb3 ::
     RIP.Ptr WlProxy
  -> IO (PtrConst.PtrConst RIP.Void)
hs_bindgen_29207e3052b0dbb3 =
  RIP.fromFFIType hs_bindgen_29207e3052b0dbb3_base

{-| __C declaration:__ @wl_proxy_get_listener@

    __defined at:__ @wayland-client-core.h 195:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_listener ::
     RIP.Ptr WlProxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst RIP.Void)
wl_proxy_get_listener = hs_bindgen_29207e3052b0dbb3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_add_dispatcher@
foreign import ccall safe "hs_bindgen_798f4f4cf867bc7c" hs_bindgen_798f4f4cf867bc7c_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_add_dispatcher@
hs_bindgen_798f4f4cf867bc7c ::
     RIP.Ptr WlProxy
  -> Generated.Wayland.Util.Wl_dispatcher_func_t
  -> PtrConst.PtrConst RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_798f4f4cf867bc7c =
  RIP.fromFFIType hs_bindgen_798f4f4cf867bc7c_base

{-| __C declaration:__ @wl_proxy_add_dispatcher@

    __defined at:__ @wayland-client-core.h 198:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_add_dispatcher ::
     RIP.Ptr WlProxy
     -- ^ __C declaration:__ @proxy@
  -> Generated.Wayland.Util.Wl_dispatcher_func_t
     -- ^ __C declaration:__ @dispatcher_func@
  -> PtrConst.PtrConst RIP.Void
     -- ^ __C declaration:__ @dispatcher_data@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_proxy_add_dispatcher = hs_bindgen_798f4f4cf867bc7c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_set_user_data@
foreign import ccall safe "hs_bindgen_8d16d7d1b6b57ee8" hs_bindgen_8d16d7d1b6b57ee8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_set_user_data@
hs_bindgen_8d16d7d1b6b57ee8 ::
     RIP.Ptr WlProxy
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_8d16d7d1b6b57ee8 =
  RIP.fromFFIType hs_bindgen_8d16d7d1b6b57ee8_base

{-| __C declaration:__ @wl_proxy_set_user_data@

    __defined at:__ @wayland-client-core.h 203:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_set_user_data ::
     RIP.Ptr WlProxy
     -- ^ __C declaration:__ @proxy@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_proxy_set_user_data = hs_bindgen_8d16d7d1b6b57ee8

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_get_user_data@
foreign import ccall safe "hs_bindgen_857f71dca5806186" hs_bindgen_857f71dca5806186_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_get_user_data@
hs_bindgen_857f71dca5806186 ::
     RIP.Ptr WlProxy
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_857f71dca5806186 =
  RIP.fromFFIType hs_bindgen_857f71dca5806186_base

{-| __C declaration:__ @wl_proxy_get_user_data@

    __defined at:__ @wayland-client-core.h 206:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_user_data ::
     RIP.Ptr WlProxy
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr RIP.Void)
wl_proxy_get_user_data = hs_bindgen_857f71dca5806186

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_get_version@
foreign import ccall safe "hs_bindgen_d726346bcc0448af" hs_bindgen_d726346bcc0448af_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_get_version@
hs_bindgen_d726346bcc0448af ::
     RIP.Ptr WlProxy
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_d726346bcc0448af =
  RIP.fromFFIType hs_bindgen_d726346bcc0448af_base

{-| __C declaration:__ @wl_proxy_get_version@

    __defined at:__ @wayland-client-core.h 209:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_version ::
     RIP.Ptr WlProxy
     -- ^ __C declaration:__ @proxy@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_proxy_get_version = hs_bindgen_d726346bcc0448af

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_get_id@
foreign import ccall safe "hs_bindgen_4d240ea9bf646973" hs_bindgen_4d240ea9bf646973_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_get_id@
hs_bindgen_4d240ea9bf646973 ::
     RIP.Ptr WlProxy
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_4d240ea9bf646973 =
  RIP.fromFFIType hs_bindgen_4d240ea9bf646973_base

{-| __C declaration:__ @wl_proxy_get_id@

    __defined at:__ @wayland-client-core.h 212:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_id ::
     RIP.Ptr WlProxy
     -- ^ __C declaration:__ @proxy@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_proxy_get_id = hs_bindgen_4d240ea9bf646973

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_set_tag@
foreign import ccall safe "hs_bindgen_b088580783ba7315" hs_bindgen_b088580783ba7315_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_set_tag@
hs_bindgen_b088580783ba7315 ::
     RIP.Ptr WlProxy
  -> PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar)
  -> IO ()
hs_bindgen_b088580783ba7315 =
  RIP.fromFFIType hs_bindgen_b088580783ba7315_base

{-| __C declaration:__ @wl_proxy_set_tag@

    __defined at:__ @wayland-client-core.h 215:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_set_tag ::
     RIP.Ptr WlProxy
     -- ^ __C declaration:__ @proxy@
  -> PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar)
     -- ^ __C declaration:__ @tag@
  -> IO ()
wl_proxy_set_tag = hs_bindgen_b088580783ba7315

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_get_tag@
foreign import ccall safe "hs_bindgen_4b532791cccf6aa5" hs_bindgen_4b532791cccf6aa5_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_get_tag@
hs_bindgen_4b532791cccf6aa5 ::
     RIP.Ptr WlProxy
  -> IO (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar))
hs_bindgen_4b532791cccf6aa5 =
  RIP.fromFFIType hs_bindgen_4b532791cccf6aa5_base

{-| __C declaration:__ @wl_proxy_get_tag@

    __defined at:__ @wayland-client-core.h 219:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_tag ::
     RIP.Ptr WlProxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar))
wl_proxy_get_tag = hs_bindgen_4b532791cccf6aa5

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_get_class@
foreign import ccall safe "hs_bindgen_00efc47d9f30405b" hs_bindgen_00efc47d9f30405b_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_get_class@
hs_bindgen_00efc47d9f30405b ::
     RIP.Ptr WlProxy
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_00efc47d9f30405b =
  RIP.fromFFIType hs_bindgen_00efc47d9f30405b_base

{-| __C declaration:__ @wl_proxy_get_class@

    __defined at:__ @wayland-client-core.h 222:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_class ::
     RIP.Ptr WlProxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst RIP.CChar)
wl_proxy_get_class = hs_bindgen_00efc47d9f30405b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_get_interface@
foreign import ccall safe "hs_bindgen_e5008e351f9f1dc2" hs_bindgen_e5008e351f9f1dc2_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_get_interface@
hs_bindgen_e5008e351f9f1dc2 ::
     RIP.Ptr WlProxy
  -> IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_e5008e351f9f1dc2 =
  RIP.fromFFIType hs_bindgen_e5008e351f9f1dc2_base

{-| __C declaration:__ @wl_proxy_get_interface@

    __defined at:__ @wayland-client-core.h 225:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_interface ::
     RIP.Ptr WlProxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
wl_proxy_get_interface = hs_bindgen_e5008e351f9f1dc2

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_get_display@
foreign import ccall safe "hs_bindgen_3682b21de0179ce2" hs_bindgen_3682b21de0179ce2_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_get_display@
hs_bindgen_3682b21de0179ce2 ::
     RIP.Ptr WlProxy
  -> IO (RIP.Ptr WlDisplay)
hs_bindgen_3682b21de0179ce2 =
  RIP.fromFFIType hs_bindgen_3682b21de0179ce2_base

{-| __C declaration:__ @wl_proxy_get_display@

    __defined at:__ @wayland-client-core.h 228:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_display ::
     RIP.Ptr WlProxy
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr WlDisplay)
wl_proxy_get_display = hs_bindgen_3682b21de0179ce2

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_set_queue@
foreign import ccall safe "hs_bindgen_0846929db2947861" hs_bindgen_0846929db2947861_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_set_queue@
hs_bindgen_0846929db2947861 ::
     RIP.Ptr WlProxy
  -> RIP.Ptr WlEventQueue
  -> IO ()
hs_bindgen_0846929db2947861 =
  RIP.fromFFIType hs_bindgen_0846929db2947861_base

{-| __C declaration:__ @wl_proxy_set_queue@

    __defined at:__ @wayland-client-core.h 231:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_set_queue ::
     RIP.Ptr WlProxy
     -- ^ __C declaration:__ @proxy@
  -> RIP.Ptr WlEventQueue
     -- ^ __C declaration:__ @queue@
  -> IO ()
wl_proxy_set_queue = hs_bindgen_0846929db2947861

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_get_queue@
foreign import ccall safe "hs_bindgen_ee42b12603109931" hs_bindgen_ee42b12603109931_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_proxy_get_queue@
hs_bindgen_ee42b12603109931 ::
     PtrConst.PtrConst WlProxy
  -> IO (RIP.Ptr WlEventQueue)
hs_bindgen_ee42b12603109931 =
  RIP.fromFFIType hs_bindgen_ee42b12603109931_base

{-| __C declaration:__ @wl_proxy_get_queue@

    __defined at:__ @wayland-client-core.h 234:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_queue ::
     PtrConst.PtrConst WlProxy
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr WlEventQueue)
wl_proxy_get_queue = hs_bindgen_ee42b12603109931

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_event_queue_get_name@
foreign import ccall safe "hs_bindgen_f9388f7f4c8de6b2" hs_bindgen_f9388f7f4c8de6b2_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_event_queue_get_name@
hs_bindgen_f9388f7f4c8de6b2 ::
     PtrConst.PtrConst WlEventQueue
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_f9388f7f4c8de6b2 =
  RIP.fromFFIType hs_bindgen_f9388f7f4c8de6b2_base

{-| __C declaration:__ @wl_event_queue_get_name@

    __defined at:__ @wayland-client-core.h 237:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_event_queue_get_name ::
     PtrConst.PtrConst WlEventQueue
     -- ^ __C declaration:__ @queue@
  -> IO (PtrConst.PtrConst RIP.CChar)
wl_event_queue_get_name = hs_bindgen_f9388f7f4c8de6b2

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_connect@
foreign import ccall safe "hs_bindgen_7cf3e4ea8858b778" hs_bindgen_7cf3e4ea8858b778_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_connect@
hs_bindgen_7cf3e4ea8858b778 ::
     PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr WlDisplay)
hs_bindgen_7cf3e4ea8858b778 =
  RIP.fromFFIType hs_bindgen_7cf3e4ea8858b778_base

{-| __C declaration:__ @wl_display_connect@

    __defined at:__ @wayland-client-core.h 240:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_connect ::
     PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @name@
  -> IO (RIP.Ptr WlDisplay)
wl_display_connect = hs_bindgen_7cf3e4ea8858b778

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_connect_to_fd@
foreign import ccall safe "hs_bindgen_5607abb4d7cda4a0" hs_bindgen_5607abb4d7cda4a0_base ::
     RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_connect_to_fd@
hs_bindgen_5607abb4d7cda4a0 ::
     RIP.CInt
  -> IO (RIP.Ptr WlDisplay)
hs_bindgen_5607abb4d7cda4a0 =
  RIP.fromFFIType hs_bindgen_5607abb4d7cda4a0_base

{-| __C declaration:__ @wl_display_connect_to_fd@

    __defined at:__ @wayland-client-core.h 243:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_connect_to_fd ::
     RIP.CInt
     -- ^ __C declaration:__ @fd@
  -> IO (RIP.Ptr WlDisplay)
wl_display_connect_to_fd =
  hs_bindgen_5607abb4d7cda4a0

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_disconnect@
foreign import ccall safe "hs_bindgen_469c03d63291887d" hs_bindgen_469c03d63291887d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_disconnect@
hs_bindgen_469c03d63291887d ::
     RIP.Ptr WlDisplay
  -> IO ()
hs_bindgen_469c03d63291887d =
  RIP.fromFFIType hs_bindgen_469c03d63291887d_base

{-| __C declaration:__ @wl_display_disconnect@

    __defined at:__ @wayland-client-core.h 246:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_disconnect ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @display@
  -> IO ()
wl_display_disconnect = hs_bindgen_469c03d63291887d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_get_fd@
foreign import ccall safe "hs_bindgen_7da2505aa8b19190" hs_bindgen_7da2505aa8b19190_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_get_fd@
hs_bindgen_7da2505aa8b19190 ::
     RIP.Ptr WlDisplay
  -> IO RIP.CInt
hs_bindgen_7da2505aa8b19190 =
  RIP.fromFFIType hs_bindgen_7da2505aa8b19190_base

{-| __C declaration:__ @wl_display_get_fd@

    __defined at:__ @wayland-client-core.h 249:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_get_fd ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_get_fd = hs_bindgen_7da2505aa8b19190

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_dispatch@
foreign import ccall safe "hs_bindgen_7115669300b93884" hs_bindgen_7115669300b93884_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_dispatch@
hs_bindgen_7115669300b93884 ::
     RIP.Ptr WlDisplay
  -> IO RIP.CInt
hs_bindgen_7115669300b93884 =
  RIP.fromFFIType hs_bindgen_7115669300b93884_base

{-| __C declaration:__ @wl_display_dispatch@

    __defined at:__ @wayland-client-core.h 252:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_dispatch = hs_bindgen_7115669300b93884

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_dispatch_queue@
foreign import ccall safe "hs_bindgen_8f7d3b5b79eaf9d9" hs_bindgen_8f7d3b5b79eaf9d9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_dispatch_queue@
hs_bindgen_8f7d3b5b79eaf9d9 ::
     RIP.Ptr WlDisplay
  -> RIP.Ptr WlEventQueue
  -> IO RIP.CInt
hs_bindgen_8f7d3b5b79eaf9d9 =
  RIP.fromFFIType hs_bindgen_8f7d3b5b79eaf9d9_base

{-| __C declaration:__ @wl_display_dispatch_queue@

    __defined at:__ @wayland-client-core.h 255:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_queue ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @display@
  -> RIP.Ptr WlEventQueue
     -- ^ __C declaration:__ @queue@
  -> IO RIP.CInt
wl_display_dispatch_queue =
  hs_bindgen_8f7d3b5b79eaf9d9

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_dispatch_timeout@
foreign import ccall safe "hs_bindgen_2e37f1d7a4018fea" hs_bindgen_2e37f1d7a4018fea_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_dispatch_timeout@
hs_bindgen_2e37f1d7a4018fea ::
     RIP.Ptr WlDisplay
  -> PtrConst.PtrConst Timespec
  -> IO RIP.CInt
hs_bindgen_2e37f1d7a4018fea =
  RIP.fromFFIType hs_bindgen_2e37f1d7a4018fea_base

{-| __C declaration:__ @wl_display_dispatch_timeout@

    __defined at:__ @wayland-client-core.h 259:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_timeout ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @display@
  -> PtrConst.PtrConst Timespec
     -- ^ __C declaration:__ @timeout@
  -> IO RIP.CInt
wl_display_dispatch_timeout =
  hs_bindgen_2e37f1d7a4018fea

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_dispatch_queue_timeout@
foreign import ccall safe "hs_bindgen_28b0095a81aeb389" hs_bindgen_28b0095a81aeb389_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_dispatch_queue_timeout@
hs_bindgen_28b0095a81aeb389 ::
     RIP.Ptr WlDisplay
  -> RIP.Ptr WlEventQueue
  -> PtrConst.PtrConst Timespec
  -> IO RIP.CInt
hs_bindgen_28b0095a81aeb389 =
  RIP.fromFFIType hs_bindgen_28b0095a81aeb389_base

{-| __C declaration:__ @wl_display_dispatch_queue_timeout@

    __defined at:__ @wayland-client-core.h 263:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_queue_timeout ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @display@
  -> RIP.Ptr WlEventQueue
     -- ^ __C declaration:__ @queue@
  -> PtrConst.PtrConst Timespec
     -- ^ __C declaration:__ @timeout@
  -> IO RIP.CInt
wl_display_dispatch_queue_timeout =
  hs_bindgen_28b0095a81aeb389

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_dispatch_queue_pending@
foreign import ccall safe "hs_bindgen_2a4b034b946190c7" hs_bindgen_2a4b034b946190c7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_dispatch_queue_pending@
hs_bindgen_2a4b034b946190c7 ::
     RIP.Ptr WlDisplay
  -> RIP.Ptr WlEventQueue
  -> IO RIP.CInt
hs_bindgen_2a4b034b946190c7 =
  RIP.fromFFIType hs_bindgen_2a4b034b946190c7_base

{-| __C declaration:__ @wl_display_dispatch_queue_pending@

    __defined at:__ @wayland-client-core.h 268:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_queue_pending ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @display@
  -> RIP.Ptr WlEventQueue
     -- ^ __C declaration:__ @queue@
  -> IO RIP.CInt
wl_display_dispatch_queue_pending =
  hs_bindgen_2a4b034b946190c7

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_dispatch_pending@
foreign import ccall safe "hs_bindgen_afb72ec6ad8d73f7" hs_bindgen_afb72ec6ad8d73f7_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_dispatch_pending@
hs_bindgen_afb72ec6ad8d73f7 ::
     RIP.Ptr WlDisplay
  -> IO RIP.CInt
hs_bindgen_afb72ec6ad8d73f7 =
  RIP.fromFFIType hs_bindgen_afb72ec6ad8d73f7_base

{-| __C declaration:__ @wl_display_dispatch_pending@

    __defined at:__ @wayland-client-core.h 272:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_pending ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_dispatch_pending =
  hs_bindgen_afb72ec6ad8d73f7

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_get_error@
foreign import ccall safe "hs_bindgen_b280d8deb8212475" hs_bindgen_b280d8deb8212475_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_get_error@
hs_bindgen_b280d8deb8212475 ::
     RIP.Ptr WlDisplay
  -> IO RIP.CInt
hs_bindgen_b280d8deb8212475 =
  RIP.fromFFIType hs_bindgen_b280d8deb8212475_base

{-| __C declaration:__ @wl_display_get_error@

    __defined at:__ @wayland-client-core.h 275:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_get_error ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_get_error = hs_bindgen_b280d8deb8212475

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_get_protocol_error@
foreign import ccall safe "hs_bindgen_b4a59f397f428dd5" hs_bindgen_b4a59f397f428dd5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_get_protocol_error@
hs_bindgen_b4a59f397f428dd5 ::
     RIP.Ptr WlDisplay
  -> RIP.Ptr (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_b4a59f397f428dd5 =
  RIP.fromFFIType hs_bindgen_b4a59f397f428dd5_base

{-| __C declaration:__ @wl_display_get_protocol_error@

    __defined at:__ @wayland-client-core.h 278:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_get_protocol_error ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @display@
  -> RIP.Ptr (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
     -- ^ __C declaration:__ @interface@
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @id@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_display_get_protocol_error =
  hs_bindgen_b4a59f397f428dd5

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_flush@
foreign import ccall safe "hs_bindgen_88cb4066c7076cff" hs_bindgen_88cb4066c7076cff_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_flush@
hs_bindgen_88cb4066c7076cff ::
     RIP.Ptr WlDisplay
  -> IO RIP.CInt
hs_bindgen_88cb4066c7076cff =
  RIP.fromFFIType hs_bindgen_88cb4066c7076cff_base

{-| __C declaration:__ @wl_display_flush@

    __defined at:__ @wayland-client-core.h 283:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_flush ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_flush = hs_bindgen_88cb4066c7076cff

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_roundtrip_queue@
foreign import ccall safe "hs_bindgen_5c4d6a94f5df2e39" hs_bindgen_5c4d6a94f5df2e39_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_roundtrip_queue@
hs_bindgen_5c4d6a94f5df2e39 ::
     RIP.Ptr WlDisplay
  -> RIP.Ptr WlEventQueue
  -> IO RIP.CInt
hs_bindgen_5c4d6a94f5df2e39 =
  RIP.fromFFIType hs_bindgen_5c4d6a94f5df2e39_base

{-| __C declaration:__ @wl_display_roundtrip_queue@

    __defined at:__ @wayland-client-core.h 286:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_roundtrip_queue ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @display@
  -> RIP.Ptr WlEventQueue
     -- ^ __C declaration:__ @queue@
  -> IO RIP.CInt
wl_display_roundtrip_queue =
  hs_bindgen_5c4d6a94f5df2e39

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_roundtrip@
foreign import ccall safe "hs_bindgen_26add8181931227f" hs_bindgen_26add8181931227f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_roundtrip@
hs_bindgen_26add8181931227f ::
     RIP.Ptr WlDisplay
  -> IO RIP.CInt
hs_bindgen_26add8181931227f =
  RIP.fromFFIType hs_bindgen_26add8181931227f_base

{-| __C declaration:__ @wl_display_roundtrip@

    __defined at:__ @wayland-client-core.h 290:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_roundtrip ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_roundtrip = hs_bindgen_26add8181931227f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_create_queue@
foreign import ccall safe "hs_bindgen_ce0a241b3fb6a093" hs_bindgen_ce0a241b3fb6a093_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_create_queue@
hs_bindgen_ce0a241b3fb6a093 ::
     RIP.Ptr WlDisplay
  -> IO (RIP.Ptr WlEventQueue)
hs_bindgen_ce0a241b3fb6a093 =
  RIP.fromFFIType hs_bindgen_ce0a241b3fb6a093_base

{-| __C declaration:__ @wl_display_create_queue@

    __defined at:__ @wayland-client-core.h 293:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_create_queue ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @display@
  -> IO (RIP.Ptr WlEventQueue)
wl_display_create_queue = hs_bindgen_ce0a241b3fb6a093

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_create_queue_with_name@
foreign import ccall safe "hs_bindgen_9493c3160e129438" hs_bindgen_9493c3160e129438_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_create_queue_with_name@
hs_bindgen_9493c3160e129438 ::
     RIP.Ptr WlDisplay
  -> PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr WlEventQueue)
hs_bindgen_9493c3160e129438 =
  RIP.fromFFIType hs_bindgen_9493c3160e129438_base

{-| __C declaration:__ @wl_display_create_queue_with_name@

    __defined at:__ @wayland-client-core.h 296:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_create_queue_with_name ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @display@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @name@
  -> IO (RIP.Ptr WlEventQueue)
wl_display_create_queue_with_name =
  hs_bindgen_9493c3160e129438

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_prepare_read_queue@
foreign import ccall safe "hs_bindgen_eae41fdacfe57fbb" hs_bindgen_eae41fdacfe57fbb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_prepare_read_queue@
hs_bindgen_eae41fdacfe57fbb ::
     RIP.Ptr WlDisplay
  -> RIP.Ptr WlEventQueue
  -> IO RIP.CInt
hs_bindgen_eae41fdacfe57fbb =
  RIP.fromFFIType hs_bindgen_eae41fdacfe57fbb_base

{-| __C declaration:__ @wl_display_prepare_read_queue@

    __defined at:__ @wayland-client-core.h 300:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_prepare_read_queue ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @display@
  -> RIP.Ptr WlEventQueue
     -- ^ __C declaration:__ @queue@
  -> IO RIP.CInt
wl_display_prepare_read_queue =
  hs_bindgen_eae41fdacfe57fbb

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_prepare_read@
foreign import ccall safe "hs_bindgen_9b51f7ee6753ac8b" hs_bindgen_9b51f7ee6753ac8b_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_prepare_read@
hs_bindgen_9b51f7ee6753ac8b ::
     RIP.Ptr WlDisplay
  -> IO RIP.CInt
hs_bindgen_9b51f7ee6753ac8b =
  RIP.fromFFIType hs_bindgen_9b51f7ee6753ac8b_base

{-| __C declaration:__ @wl_display_prepare_read@

    __defined at:__ @wayland-client-core.h 304:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_prepare_read ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_prepare_read = hs_bindgen_9b51f7ee6753ac8b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_cancel_read@
foreign import ccall safe "hs_bindgen_0565d6bf14049263" hs_bindgen_0565d6bf14049263_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_cancel_read@
hs_bindgen_0565d6bf14049263 ::
     RIP.Ptr WlDisplay
  -> IO ()
hs_bindgen_0565d6bf14049263 =
  RIP.fromFFIType hs_bindgen_0565d6bf14049263_base

{-| __C declaration:__ @wl_display_cancel_read@

    __defined at:__ @wayland-client-core.h 307:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_cancel_read ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @display@
  -> IO ()
wl_display_cancel_read = hs_bindgen_0565d6bf14049263

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_read_events@
foreign import ccall safe "hs_bindgen_50b0a9739cb8b160" hs_bindgen_50b0a9739cb8b160_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_read_events@
hs_bindgen_50b0a9739cb8b160 ::
     RIP.Ptr WlDisplay
  -> IO RIP.CInt
hs_bindgen_50b0a9739cb8b160 =
  RIP.fromFFIType hs_bindgen_50b0a9739cb8b160_base

{-| __C declaration:__ @wl_display_read_events@

    __defined at:__ @wayland-client-core.h 310:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_read_events ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_read_events = hs_bindgen_50b0a9739cb8b160

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_set_max_buffer_size@
foreign import ccall safe "hs_bindgen_f12a9d8934f09f77" hs_bindgen_f12a9d8934f09f77_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_set_max_buffer_size@
hs_bindgen_f12a9d8934f09f77 ::
     RIP.Ptr WlDisplay
  -> HsBindgen.Runtime.LibC.CSize
  -> IO ()
hs_bindgen_f12a9d8934f09f77 =
  RIP.fromFFIType hs_bindgen_f12a9d8934f09f77_base

{-| __C declaration:__ @wl_display_set_max_buffer_size@

    __defined at:__ @wayland-client-core.h 316:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_set_max_buffer_size ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @display@
  -> HsBindgen.Runtime.LibC.CSize
     -- ^ __C declaration:__ @max_buffer_size@
  -> IO ()
wl_display_set_max_buffer_size =
  hs_bindgen_f12a9d8934f09f77

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_add_listener@
foreign import ccall safe "hs_bindgen_51760b48fee61189" hs_bindgen_51760b48fee61189_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_add_listener@
hs_bindgen_51760b48fee61189 ::
     RIP.Ptr WlDisplay
  -> PtrConst.PtrConst WlDisplayListener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_51760b48fee61189 =
  RIP.fromFFIType hs_bindgen_51760b48fee61189_base

{-| __C declaration:__ @wl_display_add_listener@

    __defined at:__ @wayland-client-protocol.h 1037:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_add_listener ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @wl_display@
  -> PtrConst.PtrConst WlDisplayListener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_display_add_listener = hs_bindgen_51760b48fee61189

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_set_user_data@
foreign import ccall safe "hs_bindgen_90a487f306661628" hs_bindgen_90a487f306661628_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_set_user_data@
hs_bindgen_90a487f306661628 ::
     RIP.Ptr WlDisplay
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_90a487f306661628 =
  RIP.fromFFIType hs_bindgen_90a487f306661628_base

{-| __C declaration:__ @wl_display_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1067:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_set_user_data ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @wl_display@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_display_set_user_data =
  hs_bindgen_90a487f306661628

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_get_user_data@
foreign import ccall safe "hs_bindgen_f2a9eec1928750c3" hs_bindgen_f2a9eec1928750c3_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_get_user_data@
hs_bindgen_f2a9eec1928750c3 ::
     RIP.Ptr WlDisplay
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_f2a9eec1928750c3 =
  RIP.fromFFIType hs_bindgen_f2a9eec1928750c3_base

{-| __C declaration:__ @wl_display_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1074:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_get_user_data ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @wl_display@
  -> IO (RIP.Ptr RIP.Void)
wl_display_get_user_data =
  hs_bindgen_f2a9eec1928750c3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_get_version@
foreign import ccall safe "hs_bindgen_24a7e63d76d1dea6" hs_bindgen_24a7e63d76d1dea6_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_get_version@
hs_bindgen_24a7e63d76d1dea6 ::
     RIP.Ptr WlDisplay
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_24a7e63d76d1dea6 =
  RIP.fromFFIType hs_bindgen_24a7e63d76d1dea6_base

{-| __C declaration:__ @wl_display_get_version@

    __defined at:__ @wayland-client-protocol.h 1080:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_get_version ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @wl_display@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_display_get_version = hs_bindgen_24a7e63d76d1dea6

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_sync@
foreign import ccall safe "hs_bindgen_b065d14a1fdf9997" hs_bindgen_b065d14a1fdf9997_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_sync@
hs_bindgen_b065d14a1fdf9997 ::
     RIP.Ptr WlDisplay
  -> IO (RIP.Ptr WlCallback)
hs_bindgen_b065d14a1fdf9997 =
  RIP.fromFFIType hs_bindgen_b065d14a1fdf9997_base

{-| __C declaration:__ @wl_display_sync@

    __defined at:__ @wayland-client-protocol.h 1101:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_sync ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @wl_display@
  -> IO (RIP.Ptr WlCallback)
wl_display_sync = hs_bindgen_b065d14a1fdf9997

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_get_registry@
foreign import ccall safe "hs_bindgen_f30b452ce579c7c1" hs_bindgen_f30b452ce579c7c1_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_display_get_registry@
hs_bindgen_f30b452ce579c7c1 ::
     RIP.Ptr WlDisplay
  -> IO (RIP.Ptr WlRegistry)
hs_bindgen_f30b452ce579c7c1 =
  RIP.fromFFIType hs_bindgen_f30b452ce579c7c1_base

{-| __C declaration:__ @wl_display_get_registry@

    __defined at:__ @wayland-client-protocol.h 1125:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_get_registry ::
     RIP.Ptr WlDisplay
     -- ^ __C declaration:__ @wl_display@
  -> IO (RIP.Ptr WlRegistry)
wl_display_get_registry = hs_bindgen_f30b452ce579c7c1

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_registry_add_listener@
foreign import ccall safe "hs_bindgen_771dfdeeb5bf2636" hs_bindgen_771dfdeeb5bf2636_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_registry_add_listener@
hs_bindgen_771dfdeeb5bf2636 ::
     RIP.Ptr WlRegistry
  -> PtrConst.PtrConst WlRegistryListener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_771dfdeeb5bf2636 =
  RIP.fromFFIType hs_bindgen_771dfdeeb5bf2636_base

{-| __C declaration:__ @wl_registry_add_listener@

    __defined at:__ @wayland-client-protocol.h 1181:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_add_listener ::
     RIP.Ptr WlRegistry
     -- ^ __C declaration:__ @wl_registry@
  -> PtrConst.PtrConst WlRegistryListener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_registry_add_listener =
  hs_bindgen_771dfdeeb5bf2636

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_registry_set_user_data@
foreign import ccall safe "hs_bindgen_a67e7191753040fe" hs_bindgen_a67e7191753040fe_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_registry_set_user_data@
hs_bindgen_a67e7191753040fe ::
     RIP.Ptr WlRegistry
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_a67e7191753040fe =
  RIP.fromFFIType hs_bindgen_a67e7191753040fe_base

{-| __C declaration:__ @wl_registry_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1206:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_set_user_data ::
     RIP.Ptr WlRegistry
     -- ^ __C declaration:__ @wl_registry@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_registry_set_user_data =
  hs_bindgen_a67e7191753040fe

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_registry_get_user_data@
foreign import ccall safe "hs_bindgen_9c2cdd2f9d121cb1" hs_bindgen_9c2cdd2f9d121cb1_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_registry_get_user_data@
hs_bindgen_9c2cdd2f9d121cb1 ::
     RIP.Ptr WlRegistry
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_9c2cdd2f9d121cb1 =
  RIP.fromFFIType hs_bindgen_9c2cdd2f9d121cb1_base

{-| __C declaration:__ @wl_registry_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1213:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_get_user_data ::
     RIP.Ptr WlRegistry
     -- ^ __C declaration:__ @wl_registry@
  -> IO (RIP.Ptr RIP.Void)
wl_registry_get_user_data =
  hs_bindgen_9c2cdd2f9d121cb1

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_registry_get_version@
foreign import ccall safe "hs_bindgen_97b18ad97e4c7baa" hs_bindgen_97b18ad97e4c7baa_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_registry_get_version@
hs_bindgen_97b18ad97e4c7baa ::
     RIP.Ptr WlRegistry
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_97b18ad97e4c7baa =
  RIP.fromFFIType hs_bindgen_97b18ad97e4c7baa_base

{-| __C declaration:__ @wl_registry_get_version@

    __defined at:__ @wayland-client-protocol.h 1219:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_get_version ::
     RIP.Ptr WlRegistry
     -- ^ __C declaration:__ @wl_registry@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_registry_get_version = hs_bindgen_97b18ad97e4c7baa

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_registry_destroy@
foreign import ccall safe "hs_bindgen_d16f79bac855ff13" hs_bindgen_d16f79bac855ff13_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_registry_destroy@
hs_bindgen_d16f79bac855ff13 ::
     RIP.Ptr WlRegistry
  -> IO ()
hs_bindgen_d16f79bac855ff13 =
  RIP.fromFFIType hs_bindgen_d16f79bac855ff13_base

{-| __C declaration:__ @wl_registry_destroy@

    __defined at:__ @wayland-client-protocol.h 1226:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_destroy ::
     RIP.Ptr WlRegistry
     -- ^ __C declaration:__ @wl_registry@
  -> IO ()
wl_registry_destroy = hs_bindgen_d16f79bac855ff13

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_registry_bind@
foreign import ccall safe "hs_bindgen_cd31e8bfb5ba67c2" hs_bindgen_cd31e8bfb5ba67c2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_registry_bind@
hs_bindgen_cd31e8bfb5ba67c2 ::
     RIP.Ptr WlRegistry
  -> HsBindgen.Runtime.LibC.Word32
  -> PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_cd31e8bfb5ba67c2 =
  RIP.fromFFIType hs_bindgen_cd31e8bfb5ba67c2_base

{-| __C declaration:__ @wl_registry_bind@

    __defined at:__ @wayland-client-protocol.h 1238:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_bind ::
     RIP.Ptr WlRegistry
     -- ^ __C declaration:__ @wl_registry@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @name@
  -> PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
     -- ^ __C declaration:__ @interface@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @version@
  -> IO (RIP.Ptr RIP.Void)
wl_registry_bind = hs_bindgen_cd31e8bfb5ba67c2

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_callback_add_listener@
foreign import ccall safe "hs_bindgen_ead8b2ad1b9e4949" hs_bindgen_ead8b2ad1b9e4949_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_callback_add_listener@
hs_bindgen_ead8b2ad1b9e4949 ::
     RIP.Ptr WlCallback
  -> PtrConst.PtrConst WlCallbackListener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_ead8b2ad1b9e4949 =
  RIP.fromFFIType hs_bindgen_ead8b2ad1b9e4949_base

{-| __C declaration:__ @wl_callback_add_listener@

    __defined at:__ @wayland-client-protocol.h 1268:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_add_listener ::
     RIP.Ptr WlCallback
     -- ^ __C declaration:__ @wl_callback@
  -> PtrConst.PtrConst WlCallbackListener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_callback_add_listener =
  hs_bindgen_ead8b2ad1b9e4949

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_callback_set_user_data@
foreign import ccall safe "hs_bindgen_48cb6ec61a4862d8" hs_bindgen_48cb6ec61a4862d8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_callback_set_user_data@
hs_bindgen_48cb6ec61a4862d8 ::
     RIP.Ptr WlCallback
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_48cb6ec61a4862d8 =
  RIP.fromFFIType hs_bindgen_48cb6ec61a4862d8_base

{-| __C declaration:__ @wl_callback_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1283:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_set_user_data ::
     RIP.Ptr WlCallback
     -- ^ __C declaration:__ @wl_callback@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_callback_set_user_data =
  hs_bindgen_48cb6ec61a4862d8

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_callback_get_user_data@
foreign import ccall safe "hs_bindgen_78f880136af92a3d" hs_bindgen_78f880136af92a3d_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_callback_get_user_data@
hs_bindgen_78f880136af92a3d ::
     RIP.Ptr WlCallback
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_78f880136af92a3d =
  RIP.fromFFIType hs_bindgen_78f880136af92a3d_base

{-| __C declaration:__ @wl_callback_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1290:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_get_user_data ::
     RIP.Ptr WlCallback
     -- ^ __C declaration:__ @wl_callback@
  -> IO (RIP.Ptr RIP.Void)
wl_callback_get_user_data =
  hs_bindgen_78f880136af92a3d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_callback_get_version@
foreign import ccall safe "hs_bindgen_e2bb397503cbb903" hs_bindgen_e2bb397503cbb903_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_callback_get_version@
hs_bindgen_e2bb397503cbb903 ::
     RIP.Ptr WlCallback
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_e2bb397503cbb903 =
  RIP.fromFFIType hs_bindgen_e2bb397503cbb903_base

{-| __C declaration:__ @wl_callback_get_version@

    __defined at:__ @wayland-client-protocol.h 1296:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_get_version ::
     RIP.Ptr WlCallback
     -- ^ __C declaration:__ @wl_callback@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_callback_get_version = hs_bindgen_e2bb397503cbb903

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_callback_destroy@
foreign import ccall safe "hs_bindgen_e1d146dccf03c2d5" hs_bindgen_e1d146dccf03c2d5_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_callback_destroy@
hs_bindgen_e1d146dccf03c2d5 ::
     RIP.Ptr WlCallback
  -> IO ()
hs_bindgen_e1d146dccf03c2d5 =
  RIP.fromFFIType hs_bindgen_e1d146dccf03c2d5_base

{-| __C declaration:__ @wl_callback_destroy@

    __defined at:__ @wayland-client-protocol.h 1303:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_destroy ::
     RIP.Ptr WlCallback
     -- ^ __C declaration:__ @wl_callback@
  -> IO ()
wl_callback_destroy = hs_bindgen_e1d146dccf03c2d5

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_compositor_set_user_data@
foreign import ccall safe "hs_bindgen_cc86534765b9d845" hs_bindgen_cc86534765b9d845_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_compositor_set_user_data@
hs_bindgen_cc86534765b9d845 ::
     RIP.Ptr WlCompositor
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_cc86534765b9d845 =
  RIP.fromFFIType hs_bindgen_cc86534765b9d845_base

{-| __C declaration:__ @wl_compositor_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1323:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_set_user_data ::
     RIP.Ptr WlCompositor
     -- ^ __C declaration:__ @wl_compositor@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_compositor_set_user_data =
  hs_bindgen_cc86534765b9d845

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_compositor_get_user_data@
foreign import ccall safe "hs_bindgen_1e354746d7d579c3" hs_bindgen_1e354746d7d579c3_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_compositor_get_user_data@
hs_bindgen_1e354746d7d579c3 ::
     RIP.Ptr WlCompositor
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_1e354746d7d579c3 =
  RIP.fromFFIType hs_bindgen_1e354746d7d579c3_base

{-| __C declaration:__ @wl_compositor_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1330:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_get_user_data ::
     RIP.Ptr WlCompositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO (RIP.Ptr RIP.Void)
wl_compositor_get_user_data =
  hs_bindgen_1e354746d7d579c3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_compositor_get_version@
foreign import ccall safe "hs_bindgen_95562384022c9964" hs_bindgen_95562384022c9964_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_compositor_get_version@
hs_bindgen_95562384022c9964 ::
     RIP.Ptr WlCompositor
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_95562384022c9964 =
  RIP.fromFFIType hs_bindgen_95562384022c9964_base

{-| __C declaration:__ @wl_compositor_get_version@

    __defined at:__ @wayland-client-protocol.h 1336:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_get_version ::
     RIP.Ptr WlCompositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_compositor_get_version =
  hs_bindgen_95562384022c9964

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_compositor_destroy@
foreign import ccall safe "hs_bindgen_6bf4039c7eee44d5" hs_bindgen_6bf4039c7eee44d5_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_compositor_destroy@
hs_bindgen_6bf4039c7eee44d5 ::
     RIP.Ptr WlCompositor
  -> IO ()
hs_bindgen_6bf4039c7eee44d5 =
  RIP.fromFFIType hs_bindgen_6bf4039c7eee44d5_base

{-| __C declaration:__ @wl_compositor_destroy@

    __defined at:__ @wayland-client-protocol.h 1343:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_destroy ::
     RIP.Ptr WlCompositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO ()
wl_compositor_destroy = hs_bindgen_6bf4039c7eee44d5

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_compositor_create_surface@
foreign import ccall safe "hs_bindgen_9695cf0d11af8e76" hs_bindgen_9695cf0d11af8e76_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_compositor_create_surface@
hs_bindgen_9695cf0d11af8e76 ::
     RIP.Ptr WlCompositor
  -> IO (RIP.Ptr WlSurface)
hs_bindgen_9695cf0d11af8e76 =
  RIP.fromFFIType hs_bindgen_9695cf0d11af8e76_base

{-| __C declaration:__ @wl_compositor_create_surface@

    __defined at:__ @wayland-client-protocol.h 1354:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_create_surface ::
     RIP.Ptr WlCompositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO (RIP.Ptr WlSurface)
wl_compositor_create_surface =
  hs_bindgen_9695cf0d11af8e76

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_compositor_create_region@
foreign import ccall safe "hs_bindgen_a96cb96520f11273" hs_bindgen_a96cb96520f11273_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_compositor_create_region@
hs_bindgen_a96cb96520f11273 ::
     RIP.Ptr WlCompositor
  -> IO (RIP.Ptr WlRegion)
hs_bindgen_a96cb96520f11273 =
  RIP.fromFFIType hs_bindgen_a96cb96520f11273_base

{-| __C declaration:__ @wl_compositor_create_region@

    __defined at:__ @wayland-client-protocol.h 1370:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_create_region ::
     RIP.Ptr WlCompositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO (RIP.Ptr WlRegion)
wl_compositor_create_region =
  hs_bindgen_a96cb96520f11273

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_pool_set_user_data@
foreign import ccall safe "hs_bindgen_758aa6a36e86a4ca" hs_bindgen_758aa6a36e86a4ca_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_pool_set_user_data@
hs_bindgen_758aa6a36e86a4ca ::
     RIP.Ptr WlShmPool
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_758aa6a36e86a4ca =
  RIP.fromFFIType hs_bindgen_758aa6a36e86a4ca_base

{-| __C declaration:__ @wl_shm_pool_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1400:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_set_user_data ::
     RIP.Ptr WlShmPool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_shm_pool_set_user_data =
  hs_bindgen_758aa6a36e86a4ca

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_pool_get_user_data@
foreign import ccall safe "hs_bindgen_2600d7c5cd8b0604" hs_bindgen_2600d7c5cd8b0604_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_pool_get_user_data@
hs_bindgen_2600d7c5cd8b0604 ::
     RIP.Ptr WlShmPool
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_2600d7c5cd8b0604 =
  RIP.fromFFIType hs_bindgen_2600d7c5cd8b0604_base

{-| __C declaration:__ @wl_shm_pool_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1407:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_get_user_data ::
     RIP.Ptr WlShmPool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> IO (RIP.Ptr RIP.Void)
wl_shm_pool_get_user_data =
  hs_bindgen_2600d7c5cd8b0604

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_pool_get_version@
foreign import ccall safe "hs_bindgen_72d506b8d0dd46a6" hs_bindgen_72d506b8d0dd46a6_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_pool_get_version@
hs_bindgen_72d506b8d0dd46a6 ::
     RIP.Ptr WlShmPool
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_72d506b8d0dd46a6 =
  RIP.fromFFIType hs_bindgen_72d506b8d0dd46a6_base

{-| __C declaration:__ @wl_shm_pool_get_version@

    __defined at:__ @wayland-client-protocol.h 1413:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_get_version ::
     RIP.Ptr WlShmPool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shm_pool_get_version = hs_bindgen_72d506b8d0dd46a6

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_pool_create_buffer@
foreign import ccall safe "hs_bindgen_a75e517db04e1507" hs_bindgen_a75e517db04e1507_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_pool_create_buffer@
hs_bindgen_a75e517db04e1507 ::
     RIP.Ptr WlShmPool
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr WlBuffer)
hs_bindgen_a75e517db04e1507 =
  RIP.fromFFIType hs_bindgen_a75e517db04e1507_base

{-| __C declaration:__ @wl_shm_pool_create_buffer@

    __defined at:__ @wayland-client-protocol.h 1434:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_create_buffer ::
     RIP.Ptr WlShmPool
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
  -> IO (RIP.Ptr WlBuffer)
wl_shm_pool_create_buffer =
  hs_bindgen_a75e517db04e1507

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_pool_destroy@
foreign import ccall safe "hs_bindgen_ab6fc8f9a74b551b" hs_bindgen_ab6fc8f9a74b551b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_pool_destroy@
hs_bindgen_ab6fc8f9a74b551b ::
     RIP.Ptr WlShmPool
  -> IO ()
hs_bindgen_ab6fc8f9a74b551b =
  RIP.fromFFIType hs_bindgen_ab6fc8f9a74b551b_base

{-| __C declaration:__ @wl_shm_pool_destroy@

    __defined at:__ @wayland-client-protocol.h 1454:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_destroy ::
     RIP.Ptr WlShmPool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> IO ()
wl_shm_pool_destroy = hs_bindgen_ab6fc8f9a74b551b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_pool_resize@
foreign import ccall safe "hs_bindgen_d83e6cb9ea9dfe14" hs_bindgen_d83e6cb9ea9dfe14_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_pool_resize@
hs_bindgen_d83e6cb9ea9dfe14 ::
     RIP.Ptr WlShmPool
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_d83e6cb9ea9dfe14 =
  RIP.fromFFIType hs_bindgen_d83e6cb9ea9dfe14_base

{-| __C declaration:__ @wl_shm_pool_resize@

    __defined at:__ @wayland-client-protocol.h 1475:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_resize ::
     RIP.Ptr WlShmPool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @size@
  -> IO ()
wl_shm_pool_resize = hs_bindgen_d83e6cb9ea9dfe14

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_add_listener@
foreign import ccall safe "hs_bindgen_bb37a2ebdc4b0b2a" hs_bindgen_bb37a2ebdc4b0b2a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_add_listener@
hs_bindgen_bb37a2ebdc4b0b2a ::
     RIP.Ptr WlShm
  -> PtrConst.PtrConst WlShmListener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_bb37a2ebdc4b0b2a =
  RIP.fromFFIType hs_bindgen_bb37a2ebdc4b0b2a_base

{-| __C declaration:__ @wl_shm_add_listener@

    __defined at:__ @wayland-client-protocol.h 2005:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_add_listener ::
     RIP.Ptr WlShm
     -- ^ __C declaration:__ @wl_shm@
  -> PtrConst.PtrConst WlShmListener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_shm_add_listener = hs_bindgen_bb37a2ebdc4b0b2a

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_set_user_data@
foreign import ccall safe "hs_bindgen_e76cc7bb546014d5" hs_bindgen_e76cc7bb546014d5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_set_user_data@
hs_bindgen_e76cc7bb546014d5 ::
     RIP.Ptr WlShm
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_e76cc7bb546014d5 =
  RIP.fromFFIType hs_bindgen_e76cc7bb546014d5_base

{-| __C declaration:__ @wl_shm_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2031:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_set_user_data ::
     RIP.Ptr WlShm
     -- ^ __C declaration:__ @wl_shm@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_shm_set_user_data = hs_bindgen_e76cc7bb546014d5

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_get_user_data@
foreign import ccall safe "hs_bindgen_5595969be2b7817d" hs_bindgen_5595969be2b7817d_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_get_user_data@
hs_bindgen_5595969be2b7817d ::
     RIP.Ptr WlShm
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_5595969be2b7817d =
  RIP.fromFFIType hs_bindgen_5595969be2b7817d_base

{-| __C declaration:__ @wl_shm_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2038:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_get_user_data ::
     RIP.Ptr WlShm
     -- ^ __C declaration:__ @wl_shm@
  -> IO (RIP.Ptr RIP.Void)
wl_shm_get_user_data = hs_bindgen_5595969be2b7817d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_get_version@
foreign import ccall safe "hs_bindgen_07cc933ad3cbf911" hs_bindgen_07cc933ad3cbf911_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_get_version@
hs_bindgen_07cc933ad3cbf911 ::
     RIP.Ptr WlShm
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_07cc933ad3cbf911 =
  RIP.fromFFIType hs_bindgen_07cc933ad3cbf911_base

{-| __C declaration:__ @wl_shm_get_version@

    __defined at:__ @wayland-client-protocol.h 2044:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_get_version ::
     RIP.Ptr WlShm
     -- ^ __C declaration:__ @wl_shm@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shm_get_version = hs_bindgen_07cc933ad3cbf911

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_destroy@
foreign import ccall safe "hs_bindgen_fd98e84e34c52a21" hs_bindgen_fd98e84e34c52a21_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_destroy@
hs_bindgen_fd98e84e34c52a21 ::
     RIP.Ptr WlShm
  -> IO ()
hs_bindgen_fd98e84e34c52a21 =
  RIP.fromFFIType hs_bindgen_fd98e84e34c52a21_base

{-| __C declaration:__ @wl_shm_destroy@

    __defined at:__ @wayland-client-protocol.h 2051:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_destroy ::
     RIP.Ptr WlShm
     -- ^ __C declaration:__ @wl_shm@
  -> IO ()
wl_shm_destroy = hs_bindgen_fd98e84e34c52a21

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_create_pool@
foreign import ccall safe "hs_bindgen_0e170780cd3a592f" hs_bindgen_0e170780cd3a592f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_create_pool@
hs_bindgen_0e170780cd3a592f ::
     RIP.Ptr WlShm
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO (RIP.Ptr WlShmPool)
hs_bindgen_0e170780cd3a592f =
  RIP.fromFFIType hs_bindgen_0e170780cd3a592f_base

{-| __C declaration:__ @wl_shm_create_pool@

    __defined at:__ @wayland-client-protocol.h 2066:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_create_pool ::
     RIP.Ptr WlShm
     -- ^ __C declaration:__ @wl_shm@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @fd@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @size@
  -> IO (RIP.Ptr WlShmPool)
wl_shm_create_pool = hs_bindgen_0e170780cd3a592f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_release@
foreign import ccall safe "hs_bindgen_53c1fa23a7295db9" hs_bindgen_53c1fa23a7295db9_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shm_release@
hs_bindgen_53c1fa23a7295db9 ::
     RIP.Ptr WlShm
  -> IO ()
hs_bindgen_53c1fa23a7295db9 =
  RIP.fromFFIType hs_bindgen_53c1fa23a7295db9_base

{-| __C declaration:__ @wl_shm_release@

    __defined at:__ @wayland-client-protocol.h 2085:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_release ::
     RIP.Ptr WlShm
     -- ^ __C declaration:__ @wl_shm@
  -> IO ()
wl_shm_release = hs_bindgen_53c1fa23a7295db9

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_buffer_add_listener@
foreign import ccall safe "hs_bindgen_a2e8546e608b5f4c" hs_bindgen_a2e8546e608b5f4c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_buffer_add_listener@
hs_bindgen_a2e8546e608b5f4c ::
     RIP.Ptr WlBuffer
  -> PtrConst.PtrConst WlBufferListener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_a2e8546e608b5f4c =
  RIP.fromFFIType hs_bindgen_a2e8546e608b5f4c_base

{-| __C declaration:__ @wl_buffer_add_listener@

    __defined at:__ @wayland-client-protocol.h 2122:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_add_listener ::
     RIP.Ptr WlBuffer
     -- ^ __C declaration:__ @wl_buffer@
  -> PtrConst.PtrConst WlBufferListener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_buffer_add_listener = hs_bindgen_a2e8546e608b5f4c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_buffer_set_user_data@
foreign import ccall safe "hs_bindgen_0721bfa12a9b44b2" hs_bindgen_0721bfa12a9b44b2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_buffer_set_user_data@
hs_bindgen_0721bfa12a9b44b2 ::
     RIP.Ptr WlBuffer
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_0721bfa12a9b44b2 =
  RIP.fromFFIType hs_bindgen_0721bfa12a9b44b2_base

{-| __C declaration:__ @wl_buffer_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2143:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_set_user_data ::
     RIP.Ptr WlBuffer
     -- ^ __C declaration:__ @wl_buffer@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_buffer_set_user_data = hs_bindgen_0721bfa12a9b44b2

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_buffer_get_user_data@
foreign import ccall safe "hs_bindgen_9b2066cdbb8333ad" hs_bindgen_9b2066cdbb8333ad_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_buffer_get_user_data@
hs_bindgen_9b2066cdbb8333ad ::
     RIP.Ptr WlBuffer
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_9b2066cdbb8333ad =
  RIP.fromFFIType hs_bindgen_9b2066cdbb8333ad_base

{-| __C declaration:__ @wl_buffer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2150:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_get_user_data ::
     RIP.Ptr WlBuffer
     -- ^ __C declaration:__ @wl_buffer@
  -> IO (RIP.Ptr RIP.Void)
wl_buffer_get_user_data = hs_bindgen_9b2066cdbb8333ad

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_buffer_get_version@
foreign import ccall safe "hs_bindgen_5c8cfa7b14098e57" hs_bindgen_5c8cfa7b14098e57_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_buffer_get_version@
hs_bindgen_5c8cfa7b14098e57 ::
     RIP.Ptr WlBuffer
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_5c8cfa7b14098e57 =
  RIP.fromFFIType hs_bindgen_5c8cfa7b14098e57_base

{-| __C declaration:__ @wl_buffer_get_version@

    __defined at:__ @wayland-client-protocol.h 2156:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_get_version ::
     RIP.Ptr WlBuffer
     -- ^ __C declaration:__ @wl_buffer@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_buffer_get_version = hs_bindgen_5c8cfa7b14098e57

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_buffer_destroy@
foreign import ccall safe "hs_bindgen_797f428c8d3ea036" hs_bindgen_797f428c8d3ea036_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_buffer_destroy@
hs_bindgen_797f428c8d3ea036 ::
     RIP.Ptr WlBuffer
  -> IO ()
hs_bindgen_797f428c8d3ea036 =
  RIP.fromFFIType hs_bindgen_797f428c8d3ea036_base

{-| __C declaration:__ @wl_buffer_destroy@

    __defined at:__ @wayland-client-protocol.h 2170:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_destroy ::
     RIP.Ptr WlBuffer
     -- ^ __C declaration:__ @wl_buffer@
  -> IO ()
wl_buffer_destroy = hs_bindgen_797f428c8d3ea036

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_offer_add_listener@
foreign import ccall safe "hs_bindgen_5872f68981d2e678" hs_bindgen_5872f68981d2e678_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_offer_add_listener@
hs_bindgen_5872f68981d2e678 ::
     RIP.Ptr WlDataOffer
  -> PtrConst.PtrConst WlDataOfferListener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_5872f68981d2e678 =
  RIP.fromFFIType hs_bindgen_5872f68981d2e678_base

{-| __C declaration:__ @wl_data_offer_add_listener@

    __defined at:__ @wayland-client-protocol.h 2278:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_add_listener ::
     RIP.Ptr WlDataOffer
     -- ^ __C declaration:__ @wl_data_offer@
  -> PtrConst.PtrConst WlDataOfferListener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_data_offer_add_listener =
  hs_bindgen_5872f68981d2e678

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_offer_set_user_data@
foreign import ccall safe "hs_bindgen_cae488e41a411724" hs_bindgen_cae488e41a411724_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_offer_set_user_data@
hs_bindgen_cae488e41a411724 ::
     RIP.Ptr WlDataOffer
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_cae488e41a411724 =
  RIP.fromFFIType hs_bindgen_cae488e41a411724_base

{-| __C declaration:__ @wl_data_offer_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2327:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_set_user_data ::
     RIP.Ptr WlDataOffer
     -- ^ __C declaration:__ @wl_data_offer@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_data_offer_set_user_data =
  hs_bindgen_cae488e41a411724

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_offer_get_user_data@
foreign import ccall safe "hs_bindgen_a47dc913a515c547" hs_bindgen_a47dc913a515c547_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_offer_get_user_data@
hs_bindgen_a47dc913a515c547 ::
     RIP.Ptr WlDataOffer
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_a47dc913a515c547 =
  RIP.fromFFIType hs_bindgen_a47dc913a515c547_base

{-| __C declaration:__ @wl_data_offer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2334:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_get_user_data ::
     RIP.Ptr WlDataOffer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO (RIP.Ptr RIP.Void)
wl_data_offer_get_user_data =
  hs_bindgen_a47dc913a515c547

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_offer_get_version@
foreign import ccall safe "hs_bindgen_e89f4f899d3a1b70" hs_bindgen_e89f4f899d3a1b70_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_offer_get_version@
hs_bindgen_e89f4f899d3a1b70 ::
     RIP.Ptr WlDataOffer
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_e89f4f899d3a1b70 =
  RIP.fromFFIType hs_bindgen_e89f4f899d3a1b70_base

{-| __C declaration:__ @wl_data_offer_get_version@

    __defined at:__ @wayland-client-protocol.h 2340:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_get_version ::
     RIP.Ptr WlDataOffer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_offer_get_version =
  hs_bindgen_e89f4f899d3a1b70

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_offer_accept@
foreign import ccall safe "hs_bindgen_27c165401030170b" hs_bindgen_27c165401030170b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_offer_accept@
hs_bindgen_27c165401030170b ::
     RIP.Ptr WlDataOffer
  -> HsBindgen.Runtime.LibC.Word32
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_27c165401030170b =
  RIP.fromFFIType hs_bindgen_27c165401030170b_base

{-| __C declaration:__ @wl_data_offer_accept@

    __defined at:__ @wayland-client-protocol.h 2364:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_accept ::
     RIP.Ptr WlDataOffer
     -- ^ __C declaration:__ @wl_data_offer@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @mime_type@
  -> IO ()
wl_data_offer_accept = hs_bindgen_27c165401030170b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_offer_receive@
foreign import ccall safe "hs_bindgen_efa26781730d1bad" hs_bindgen_efa26781730d1bad_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_offer_receive@
hs_bindgen_efa26781730d1bad ::
     RIP.Ptr WlDataOffer
  -> PtrConst.PtrConst RIP.CChar
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_efa26781730d1bad =
  RIP.fromFFIType hs_bindgen_efa26781730d1bad_base

{-| __C declaration:__ @wl_data_offer_receive@

    __defined at:__ @wayland-client-protocol.h 2390:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_receive ::
     RIP.Ptr WlDataOffer
     -- ^ __C declaration:__ @wl_data_offer@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @mime_type@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @fd@
  -> IO ()
wl_data_offer_receive = hs_bindgen_efa26781730d1bad

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_offer_destroy@
foreign import ccall safe "hs_bindgen_908dbf29d95c4523" hs_bindgen_908dbf29d95c4523_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_offer_destroy@
hs_bindgen_908dbf29d95c4523 ::
     RIP.Ptr WlDataOffer
  -> IO ()
hs_bindgen_908dbf29d95c4523 =
  RIP.fromFFIType hs_bindgen_908dbf29d95c4523_base

{-| __C declaration:__ @wl_data_offer_destroy@

    __defined at:__ @wayland-client-protocol.h 2402:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_destroy ::
     RIP.Ptr WlDataOffer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO ()
wl_data_offer_destroy = hs_bindgen_908dbf29d95c4523

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_offer_finish@
foreign import ccall safe "hs_bindgen_9d8846ab29d49cf3" hs_bindgen_9d8846ab29d49cf3_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_offer_finish@
hs_bindgen_9d8846ab29d49cf3 ::
     RIP.Ptr WlDataOffer
  -> IO ()
hs_bindgen_9d8846ab29d49cf3 =
  RIP.fromFFIType hs_bindgen_9d8846ab29d49cf3_base

{-| __C declaration:__ @wl_data_offer_finish@

    __defined at:__ @wayland-client-protocol.h 2427:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_finish ::
     RIP.Ptr WlDataOffer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO ()
wl_data_offer_finish = hs_bindgen_9d8846ab29d49cf3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_offer_set_actions@
foreign import ccall safe "hs_bindgen_a699a2a02cfda4ff" hs_bindgen_a699a2a02cfda4ff_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_offer_set_actions@
hs_bindgen_a699a2a02cfda4ff ::
     RIP.Ptr WlDataOffer
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_a699a2a02cfda4ff =
  RIP.fromFFIType hs_bindgen_a699a2a02cfda4ff_base

{-| __C declaration:__ @wl_data_offer_set_actions@

    __defined at:__ @wayland-client-protocol.h 2469:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_set_actions ::
     RIP.Ptr WlDataOffer
     -- ^ __C declaration:__ @wl_data_offer@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @dnd_actions@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @preferred_action@
  -> IO ()
wl_data_offer_set_actions =
  hs_bindgen_a699a2a02cfda4ff

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_source_add_listener@
foreign import ccall safe "hs_bindgen_0e667a7854860c7a" hs_bindgen_0e667a7854860c7a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_source_add_listener@
hs_bindgen_0e667a7854860c7a ::
     RIP.Ptr WlDataSource
  -> PtrConst.PtrConst WlDataSourceListener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_0e667a7854860c7a =
  RIP.fromFFIType hs_bindgen_0e667a7854860c7a_base

{-| __C declaration:__ @wl_data_source_add_listener@

    __defined at:__ @wayland-client-protocol.h 2617:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_add_listener ::
     RIP.Ptr WlDataSource
     -- ^ __C declaration:__ @wl_data_source@
  -> PtrConst.PtrConst WlDataSourceListener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_data_source_add_listener =
  hs_bindgen_0e667a7854860c7a

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_source_set_user_data@
foreign import ccall safe "hs_bindgen_93133bea5ef124c3" hs_bindgen_93133bea5ef124c3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_source_set_user_data@
hs_bindgen_93133bea5ef124c3 ::
     RIP.Ptr WlDataSource
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_93133bea5ef124c3 =
  RIP.fromFFIType hs_bindgen_93133bea5ef124c3_base

{-| __C declaration:__ @wl_data_source_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2668:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_set_user_data ::
     RIP.Ptr WlDataSource
     -- ^ __C declaration:__ @wl_data_source@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_data_source_set_user_data =
  hs_bindgen_93133bea5ef124c3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_source_get_user_data@
foreign import ccall safe "hs_bindgen_7630b7ebbea0c896" hs_bindgen_7630b7ebbea0c896_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_source_get_user_data@
hs_bindgen_7630b7ebbea0c896 ::
     RIP.Ptr WlDataSource
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_7630b7ebbea0c896 =
  RIP.fromFFIType hs_bindgen_7630b7ebbea0c896_base

{-| __C declaration:__ @wl_data_source_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2675:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_get_user_data ::
     RIP.Ptr WlDataSource
     -- ^ __C declaration:__ @wl_data_source@
  -> IO (RIP.Ptr RIP.Void)
wl_data_source_get_user_data =
  hs_bindgen_7630b7ebbea0c896

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_source_get_version@
foreign import ccall safe "hs_bindgen_77d74f7a0627df79" hs_bindgen_77d74f7a0627df79_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_source_get_version@
hs_bindgen_77d74f7a0627df79 ::
     RIP.Ptr WlDataSource
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_77d74f7a0627df79 =
  RIP.fromFFIType hs_bindgen_77d74f7a0627df79_base

{-| __C declaration:__ @wl_data_source_get_version@

    __defined at:__ @wayland-client-protocol.h 2681:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_get_version ::
     RIP.Ptr WlDataSource
     -- ^ __C declaration:__ @wl_data_source@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_source_get_version =
  hs_bindgen_77d74f7a0627df79

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_source_offer@
foreign import ccall safe "hs_bindgen_1985ed7bd5f0dfec" hs_bindgen_1985ed7bd5f0dfec_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_source_offer@
hs_bindgen_1985ed7bd5f0dfec ::
     RIP.Ptr WlDataSource
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_1985ed7bd5f0dfec =
  RIP.fromFFIType hs_bindgen_1985ed7bd5f0dfec_base

{-| __C declaration:__ @wl_data_source_offer@

    __defined at:__ @wayland-client-protocol.h 2694:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_offer ::
     RIP.Ptr WlDataSource
     -- ^ __C declaration:__ @wl_data_source@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @mime_type@
  -> IO ()
wl_data_source_offer = hs_bindgen_1985ed7bd5f0dfec

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_source_destroy@
foreign import ccall safe "hs_bindgen_d608ea27788e33b5" hs_bindgen_d608ea27788e33b5_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_source_destroy@
hs_bindgen_d608ea27788e33b5 ::
     RIP.Ptr WlDataSource
  -> IO ()
hs_bindgen_d608ea27788e33b5 =
  RIP.fromFFIType hs_bindgen_d608ea27788e33b5_base

{-| __C declaration:__ @wl_data_source_destroy@

    __defined at:__ @wayland-client-protocol.h 2706:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_destroy ::
     RIP.Ptr WlDataSource
     -- ^ __C declaration:__ @wl_data_source@
  -> IO ()
wl_data_source_destroy = hs_bindgen_d608ea27788e33b5

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_source_set_actions@
foreign import ccall safe "hs_bindgen_0cb2124aeae70b67" hs_bindgen_0cb2124aeae70b67_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_source_set_actions@
hs_bindgen_0cb2124aeae70b67 ::
     RIP.Ptr WlDataSource
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_0cb2124aeae70b67 =
  RIP.fromFFIType hs_bindgen_0cb2124aeae70b67_base

{-| __C declaration:__ @wl_data_source_set_actions@

    __defined at:__ @wayland-client-protocol.h 2730:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_set_actions ::
     RIP.Ptr WlDataSource
     -- ^ __C declaration:__ @wl_data_source@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @dnd_actions@
  -> IO ()
wl_data_source_set_actions =
  hs_bindgen_0cb2124aeae70b67

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_add_listener@
foreign import ccall safe "hs_bindgen_746cbd0f3254a1e6" hs_bindgen_746cbd0f3254a1e6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_add_listener@
hs_bindgen_746cbd0f3254a1e6 ::
     RIP.Ptr WlDataDevice
  -> PtrConst.PtrConst WlDataDeviceListener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_746cbd0f3254a1e6 =
  RIP.fromFFIType hs_bindgen_746cbd0f3254a1e6_base

{-| __C declaration:__ @wl_data_device_add_listener@

    __defined at:__ @wayland-client-protocol.h 2860:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_add_listener ::
     RIP.Ptr WlDataDevice
     -- ^ __C declaration:__ @wl_data_device@
  -> PtrConst.PtrConst WlDataDeviceListener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_data_device_add_listener =
  hs_bindgen_746cbd0f3254a1e6

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_set_user_data@
foreign import ccall safe "hs_bindgen_9e60191540838e4e" hs_bindgen_9e60191540838e4e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_set_user_data@
hs_bindgen_9e60191540838e4e ::
     RIP.Ptr WlDataDevice
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_9e60191540838e4e =
  RIP.fromFFIType hs_bindgen_9e60191540838e4e_base

{-| __C declaration:__ @wl_data_device_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2911:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_set_user_data ::
     RIP.Ptr WlDataDevice
     -- ^ __C declaration:__ @wl_data_device@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_data_device_set_user_data =
  hs_bindgen_9e60191540838e4e

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_get_user_data@
foreign import ccall safe "hs_bindgen_6e3684ee1eb1b357" hs_bindgen_6e3684ee1eb1b357_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_get_user_data@
hs_bindgen_6e3684ee1eb1b357 ::
     RIP.Ptr WlDataDevice
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_6e3684ee1eb1b357 =
  RIP.fromFFIType hs_bindgen_6e3684ee1eb1b357_base

{-| __C declaration:__ @wl_data_device_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2918:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_get_user_data ::
     RIP.Ptr WlDataDevice
     -- ^ __C declaration:__ @wl_data_device@
  -> IO (RIP.Ptr RIP.Void)
wl_data_device_get_user_data =
  hs_bindgen_6e3684ee1eb1b357

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_get_version@
foreign import ccall safe "hs_bindgen_b4baf875c501b087" hs_bindgen_b4baf875c501b087_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_get_version@
hs_bindgen_b4baf875c501b087 ::
     RIP.Ptr WlDataDevice
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_b4baf875c501b087 =
  RIP.fromFFIType hs_bindgen_b4baf875c501b087_base

{-| __C declaration:__ @wl_data_device_get_version@

    __defined at:__ @wayland-client-protocol.h 2924:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_get_version ::
     RIP.Ptr WlDataDevice
     -- ^ __C declaration:__ @wl_data_device@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_device_get_version =
  hs_bindgen_b4baf875c501b087

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_destroy@
foreign import ccall safe "hs_bindgen_3f478ce50c6e8506" hs_bindgen_3f478ce50c6e8506_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_destroy@
hs_bindgen_3f478ce50c6e8506 ::
     RIP.Ptr WlDataDevice
  -> IO ()
hs_bindgen_3f478ce50c6e8506 =
  RIP.fromFFIType hs_bindgen_3f478ce50c6e8506_base

{-| __C declaration:__ @wl_data_device_destroy@

    __defined at:__ @wayland-client-protocol.h 2931:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_destroy ::
     RIP.Ptr WlDataDevice
     -- ^ __C declaration:__ @wl_data_device@
  -> IO ()
wl_data_device_destroy = hs_bindgen_3f478ce50c6e8506

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_start_drag@
foreign import ccall safe "hs_bindgen_ff1d5b01947c44bd" hs_bindgen_ff1d5b01947c44bd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_start_drag@
hs_bindgen_ff1d5b01947c44bd ::
     RIP.Ptr WlDataDevice
  -> RIP.Ptr WlDataSource
  -> RIP.Ptr WlSurface
  -> RIP.Ptr WlSurface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_ff1d5b01947c44bd =
  RIP.fromFFIType hs_bindgen_ff1d5b01947c44bd_base

{-| __C declaration:__ @wl_data_device_start_drag@

    __defined at:__ @wayland-client-protocol.h 2970:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_start_drag ::
     RIP.Ptr WlDataDevice
     -- ^ __C declaration:__ @wl_data_device@
  -> RIP.Ptr WlDataSource
     -- ^ __C declaration:__ @source@
  -> RIP.Ptr WlSurface
     -- ^ __C declaration:__ @origin@
  -> RIP.Ptr WlSurface
     -- ^ __C declaration:__ @icon@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> IO ()
wl_data_device_start_drag =
  hs_bindgen_ff1d5b01947c44bd

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_set_selection@
foreign import ccall safe "hs_bindgen_11649586a39a57e1" hs_bindgen_11649586a39a57e1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_set_selection@
hs_bindgen_11649586a39a57e1 ::
     RIP.Ptr WlDataDevice
  -> RIP.Ptr WlDataSource
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_11649586a39a57e1 =
  RIP.fromFFIType hs_bindgen_11649586a39a57e1_base

{-| __C declaration:__ @wl_data_device_set_selection@

    __defined at:__ @wayland-client-protocol.h 2989:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_set_selection ::
     RIP.Ptr WlDataDevice
     -- ^ __C declaration:__ @wl_data_device@
  -> RIP.Ptr WlDataSource
     -- ^ __C declaration:__ @source@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> IO ()
wl_data_device_set_selection =
  hs_bindgen_11649586a39a57e1

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_release@
foreign import ccall safe "hs_bindgen_d51a349208a712fc" hs_bindgen_d51a349208a712fc_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_release@
hs_bindgen_d51a349208a712fc ::
     RIP.Ptr WlDataDevice
  -> IO ()
hs_bindgen_d51a349208a712fc =
  RIP.fromFFIType hs_bindgen_d51a349208a712fc_base

{-| __C declaration:__ @wl_data_device_release@

    __defined at:__ @wayland-client-protocol.h 3001:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_release ::
     RIP.Ptr WlDataDevice
     -- ^ __C declaration:__ @wl_data_device@
  -> IO ()
wl_data_device_release = hs_bindgen_d51a349208a712fc

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_manager_set_user_data@
foreign import ccall safe "hs_bindgen_0dc072135e8b0350" hs_bindgen_0dc072135e8b0350_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_manager_set_user_data@
hs_bindgen_0dc072135e8b0350 ::
     RIP.Ptr WlDataDeviceManager
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_0dc072135e8b0350 =
  RIP.fromFFIType hs_bindgen_0dc072135e8b0350_base

{-| __C declaration:__ @wl_data_device_manager_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3072:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_set_user_data ::
     RIP.Ptr WlDataDeviceManager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_data_device_manager_set_user_data =
  hs_bindgen_0dc072135e8b0350

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_manager_get_user_data@
foreign import ccall safe "hs_bindgen_63117dfe8274ca85" hs_bindgen_63117dfe8274ca85_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_manager_get_user_data@
hs_bindgen_63117dfe8274ca85 ::
     RIP.Ptr WlDataDeviceManager
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_63117dfe8274ca85 =
  RIP.fromFFIType hs_bindgen_63117dfe8274ca85_base

{-| __C declaration:__ @wl_data_device_manager_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3079:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_user_data ::
     RIP.Ptr WlDataDeviceManager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO (RIP.Ptr RIP.Void)
wl_data_device_manager_get_user_data =
  hs_bindgen_63117dfe8274ca85

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_manager_get_version@
foreign import ccall safe "hs_bindgen_9f58fa41ec49e836" hs_bindgen_9f58fa41ec49e836_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_manager_get_version@
hs_bindgen_9f58fa41ec49e836 ::
     RIP.Ptr WlDataDeviceManager
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_9f58fa41ec49e836 =
  RIP.fromFFIType hs_bindgen_9f58fa41ec49e836_base

{-| __C declaration:__ @wl_data_device_manager_get_version@

    __defined at:__ @wayland-client-protocol.h 3085:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_version ::
     RIP.Ptr WlDataDeviceManager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_device_manager_get_version =
  hs_bindgen_9f58fa41ec49e836

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_manager_destroy@
foreign import ccall safe "hs_bindgen_e08bd6254e8a7e5d" hs_bindgen_e08bd6254e8a7e5d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_manager_destroy@
hs_bindgen_e08bd6254e8a7e5d ::
     RIP.Ptr WlDataDeviceManager
  -> IO ()
hs_bindgen_e08bd6254e8a7e5d =
  RIP.fromFFIType hs_bindgen_e08bd6254e8a7e5d_base

{-| __C declaration:__ @wl_data_device_manager_destroy@

    __defined at:__ @wayland-client-protocol.h 3092:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_destroy ::
     RIP.Ptr WlDataDeviceManager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO ()
wl_data_device_manager_destroy =
  hs_bindgen_e08bd6254e8a7e5d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_manager_create_data_source@
foreign import ccall safe "hs_bindgen_23fafc42c7e1854d" hs_bindgen_23fafc42c7e1854d_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_manager_create_data_source@
hs_bindgen_23fafc42c7e1854d ::
     RIP.Ptr WlDataDeviceManager
  -> IO (RIP.Ptr WlDataSource)
hs_bindgen_23fafc42c7e1854d =
  RIP.fromFFIType hs_bindgen_23fafc42c7e1854d_base

{-| __C declaration:__ @wl_data_device_manager_create_data_source@

    __defined at:__ @wayland-client-protocol.h 3103:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_create_data_source ::
     RIP.Ptr WlDataDeviceManager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO (RIP.Ptr WlDataSource)
wl_data_device_manager_create_data_source =
  hs_bindgen_23fafc42c7e1854d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_manager_get_data_device@
foreign import ccall safe "hs_bindgen_e120e82c35274301" hs_bindgen_e120e82c35274301_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_data_device_manager_get_data_device@
hs_bindgen_e120e82c35274301 ::
     RIP.Ptr WlDataDeviceManager
  -> RIP.Ptr WlSeat
  -> IO (RIP.Ptr WlDataDevice)
hs_bindgen_e120e82c35274301 =
  RIP.fromFFIType hs_bindgen_e120e82c35274301_base

{-| __C declaration:__ @wl_data_device_manager_get_data_device@

    __defined at:__ @wayland-client-protocol.h 3119:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_data_device ::
     RIP.Ptr WlDataDeviceManager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> RIP.Ptr WlSeat
     -- ^ __C declaration:__ @seat@
  -> IO (RIP.Ptr WlDataDevice)
wl_data_device_manager_get_data_device =
  hs_bindgen_e120e82c35274301

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_set_user_data@
foreign import ccall safe "hs_bindgen_695c1ad434413afa" hs_bindgen_695c1ad434413afa_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_set_user_data@
hs_bindgen_695c1ad434413afa ::
     RIP.Ptr WlShell
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_695c1ad434413afa =
  RIP.fromFFIType hs_bindgen_695c1ad434413afa_base

{-| __C declaration:__ @wl_shell_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3149:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_set_user_data ::
     RIP.Ptr WlShell
     -- ^ __C declaration:__ @wl_shell@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_shell_set_user_data = hs_bindgen_695c1ad434413afa

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_get_user_data@
foreign import ccall safe "hs_bindgen_ee42c863ccd4eb54" hs_bindgen_ee42c863ccd4eb54_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_get_user_data@
hs_bindgen_ee42c863ccd4eb54 ::
     RIP.Ptr WlShell
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_ee42c863ccd4eb54 =
  RIP.fromFFIType hs_bindgen_ee42c863ccd4eb54_base

{-| __C declaration:__ @wl_shell_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3156:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_get_user_data ::
     RIP.Ptr WlShell
     -- ^ __C declaration:__ @wl_shell@
  -> IO (RIP.Ptr RIP.Void)
wl_shell_get_user_data = hs_bindgen_ee42c863ccd4eb54

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_get_version@
foreign import ccall safe "hs_bindgen_4e3971f150ca6332" hs_bindgen_4e3971f150ca6332_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_get_version@
hs_bindgen_4e3971f150ca6332 ::
     RIP.Ptr WlShell
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_4e3971f150ca6332 =
  RIP.fromFFIType hs_bindgen_4e3971f150ca6332_base

{-| __C declaration:__ @wl_shell_get_version@

    __defined at:__ @wayland-client-protocol.h 3162:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_get_version ::
     RIP.Ptr WlShell
     -- ^ __C declaration:__ @wl_shell@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shell_get_version = hs_bindgen_4e3971f150ca6332

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_destroy@
foreign import ccall safe "hs_bindgen_32301d95137798dd" hs_bindgen_32301d95137798dd_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_destroy@
hs_bindgen_32301d95137798dd ::
     RIP.Ptr WlShell
  -> IO ()
hs_bindgen_32301d95137798dd =
  RIP.fromFFIType hs_bindgen_32301d95137798dd_base

{-| __C declaration:__ @wl_shell_destroy@

    __defined at:__ @wayland-client-protocol.h 3169:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_destroy ::
     RIP.Ptr WlShell
     -- ^ __C declaration:__ @wl_shell@
  -> IO ()
wl_shell_destroy = hs_bindgen_32301d95137798dd

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_get_shell_surface@
foreign import ccall safe "hs_bindgen_47c1306fa6c080b7" hs_bindgen_47c1306fa6c080b7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_get_shell_surface@
hs_bindgen_47c1306fa6c080b7 ::
     RIP.Ptr WlShell
  -> RIP.Ptr WlSurface
  -> IO (RIP.Ptr WlShellSurface)
hs_bindgen_47c1306fa6c080b7 =
  RIP.fromFFIType hs_bindgen_47c1306fa6c080b7_base

{-| __C declaration:__ @wl_shell_get_shell_surface@

    __defined at:__ @wayland-client-protocol.h 3184:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_get_shell_surface ::
     RIP.Ptr WlShell
     -- ^ __C declaration:__ @wl_shell@
  -> RIP.Ptr WlSurface
     -- ^ __C declaration:__ @surface@
  -> IO (RIP.Ptr WlShellSurface)
wl_shell_get_shell_surface =
  hs_bindgen_47c1306fa6c080b7

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_add_listener@
foreign import ccall safe "hs_bindgen_90772497ee3fbad9" hs_bindgen_90772497ee3fbad9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_add_listener@
hs_bindgen_90772497ee3fbad9 ::
     RIP.Ptr WlShellSurface
  -> PtrConst.PtrConst WlShellSurfaceListener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_90772497ee3fbad9 =
  RIP.fromFFIType hs_bindgen_90772497ee3fbad9_base

{-| __C declaration:__ @wl_shell_surface_add_listener@

    __defined at:__ @wayland-client-protocol.h 3351:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_add_listener ::
     RIP.Ptr WlShellSurface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> PtrConst.PtrConst WlShellSurfaceListener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_shell_surface_add_listener =
  hs_bindgen_90772497ee3fbad9

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_set_user_data@
foreign import ccall safe "hs_bindgen_cf6d5264aba98bc3" hs_bindgen_cf6d5264aba98bc3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_set_user_data@
hs_bindgen_cf6d5264aba98bc3 ::
     RIP.Ptr WlShellSurface
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_cf6d5264aba98bc3 =
  RIP.fromFFIType hs_bindgen_cf6d5264aba98bc3_base

{-| __C declaration:__ @wl_shell_surface_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3425:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_user_data ::
     RIP.Ptr WlShellSurface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_shell_surface_set_user_data =
  hs_bindgen_cf6d5264aba98bc3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_get_user_data@
foreign import ccall safe "hs_bindgen_13cf98e9e8d453c4" hs_bindgen_13cf98e9e8d453c4_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_get_user_data@
hs_bindgen_13cf98e9e8d453c4 ::
     RIP.Ptr WlShellSurface
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_13cf98e9e8d453c4 =
  RIP.fromFFIType hs_bindgen_13cf98e9e8d453c4_base

{-| __C declaration:__ @wl_shell_surface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3432:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_get_user_data ::
     RIP.Ptr WlShellSurface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO (RIP.Ptr RIP.Void)
wl_shell_surface_get_user_data =
  hs_bindgen_13cf98e9e8d453c4

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_get_version@
foreign import ccall safe "hs_bindgen_a61f91b64a4d7bb4" hs_bindgen_a61f91b64a4d7bb4_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_get_version@
hs_bindgen_a61f91b64a4d7bb4 ::
     RIP.Ptr WlShellSurface
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_a61f91b64a4d7bb4 =
  RIP.fromFFIType hs_bindgen_a61f91b64a4d7bb4_base

{-| __C declaration:__ @wl_shell_surface_get_version@

    __defined at:__ @wayland-client-protocol.h 3438:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_get_version ::
     RIP.Ptr WlShellSurface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shell_surface_get_version =
  hs_bindgen_a61f91b64a4d7bb4

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_destroy@
foreign import ccall safe "hs_bindgen_44afe2992799b859" hs_bindgen_44afe2992799b859_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_destroy@
hs_bindgen_44afe2992799b859 ::
     RIP.Ptr WlShellSurface
  -> IO ()
hs_bindgen_44afe2992799b859 =
  RIP.fromFFIType hs_bindgen_44afe2992799b859_base

{-| __C declaration:__ @wl_shell_surface_destroy@

    __defined at:__ @wayland-client-protocol.h 3445:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_destroy ::
     RIP.Ptr WlShellSurface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO ()
wl_shell_surface_destroy =
  hs_bindgen_44afe2992799b859

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_pong@
foreign import ccall safe "hs_bindgen_a74758e202a97178" hs_bindgen_a74758e202a97178_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_pong@
hs_bindgen_a74758e202a97178 ::
     RIP.Ptr WlShellSurface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_a74758e202a97178 =
  RIP.fromFFIType hs_bindgen_a74758e202a97178_base

{-| __C declaration:__ @wl_shell_surface_pong@

    __defined at:__ @wayland-client-protocol.h 3457:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_pong ::
     RIP.Ptr WlShellSurface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> IO ()
wl_shell_surface_pong = hs_bindgen_a74758e202a97178

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_move@
foreign import ccall safe "hs_bindgen_7f14621f999f1300" hs_bindgen_7f14621f999f1300_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_move@
hs_bindgen_7f14621f999f1300 ::
     RIP.Ptr WlShellSurface
  -> RIP.Ptr WlSeat
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_7f14621f999f1300 =
  RIP.fromFFIType hs_bindgen_7f14621f999f1300_base

{-| __C declaration:__ @wl_shell_surface_move@

    __defined at:__ @wayland-client-protocol.h 3473:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_move ::
     RIP.Ptr WlShellSurface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> RIP.Ptr WlSeat
     -- ^ __C declaration:__ @seat@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> IO ()
wl_shell_surface_move = hs_bindgen_7f14621f999f1300

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_resize@
foreign import ccall safe "hs_bindgen_1ddb8923aa067408" hs_bindgen_1ddb8923aa067408_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_resize@
hs_bindgen_1ddb8923aa067408 ::
     RIP.Ptr WlShellSurface
  -> RIP.Ptr WlSeat
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_1ddb8923aa067408 =
  RIP.fromFFIType hs_bindgen_1ddb8923aa067408_base

{-| __C declaration:__ @wl_shell_surface_resize@

    __defined at:__ @wayland-client-protocol.h 3489:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_resize ::
     RIP.Ptr WlShellSurface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> RIP.Ptr WlSeat
     -- ^ __C declaration:__ @seat@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @edges@
  -> IO ()
wl_shell_surface_resize = hs_bindgen_1ddb8923aa067408

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_set_toplevel@
foreign import ccall safe "hs_bindgen_98a9d8823a489a5b" hs_bindgen_98a9d8823a489a5b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_set_toplevel@
hs_bindgen_98a9d8823a489a5b ::
     RIP.Ptr WlShellSurface
  -> IO ()
hs_bindgen_98a9d8823a489a5b =
  RIP.fromFFIType hs_bindgen_98a9d8823a489a5b_base

{-| __C declaration:__ @wl_shell_surface_set_toplevel@

    __defined at:__ @wayland-client-protocol.h 3503:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_toplevel ::
     RIP.Ptr WlShellSurface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO ()
wl_shell_surface_set_toplevel =
  hs_bindgen_98a9d8823a489a5b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_set_transient@
foreign import ccall safe "hs_bindgen_25e67cf5bd6acc99" hs_bindgen_25e67cf5bd6acc99_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_set_transient@
hs_bindgen_25e67cf5bd6acc99 ::
     RIP.Ptr WlShellSurface
  -> RIP.Ptr WlSurface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_25e67cf5bd6acc99 =
  RIP.fromFFIType hs_bindgen_25e67cf5bd6acc99_base

{-| __C declaration:__ @wl_shell_surface_set_transient@

    __defined at:__ @wayland-client-protocol.h 3521:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_transient ::
     RIP.Ptr WlShellSurface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> RIP.Ptr WlSurface
     -- ^ __C declaration:__ @parent@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @flags@
  -> IO ()
wl_shell_surface_set_transient =
  hs_bindgen_25e67cf5bd6acc99

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_set_fullscreen@
foreign import ccall safe "hs_bindgen_fcef197ee3f053f9" hs_bindgen_fcef197ee3f053f9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_set_fullscreen@
hs_bindgen_fcef197ee3f053f9 ::
     RIP.Ptr WlShellSurface
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr WlOutput
  -> IO ()
hs_bindgen_fcef197ee3f053f9 =
  RIP.fromFFIType hs_bindgen_fcef197ee3f053f9_base

{-| __C declaration:__ @wl_shell_surface_set_fullscreen@

    __defined at:__ @wayland-client-protocol.h 3565:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_fullscreen ::
     RIP.Ptr WlShellSurface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @method@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @framerate@
  -> RIP.Ptr WlOutput
     -- ^ __C declaration:__ @output@
  -> IO ()
wl_shell_surface_set_fullscreen =
  hs_bindgen_fcef197ee3f053f9

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_set_popup@
foreign import ccall safe "hs_bindgen_24ddbe3593ef374b" hs_bindgen_24ddbe3593ef374b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_set_popup@
hs_bindgen_24ddbe3593ef374b ::
     RIP.Ptr WlShellSurface
  -> RIP.Ptr WlSeat
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr WlSurface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_24ddbe3593ef374b =
  RIP.fromFFIType hs_bindgen_24ddbe3593ef374b_base

{-| __C declaration:__ @wl_shell_surface_set_popup@

    __defined at:__ @wayland-client-protocol.h 3595:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_popup ::
     RIP.Ptr WlShellSurface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> RIP.Ptr WlSeat
     -- ^ __C declaration:__ @seat@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> RIP.Ptr WlSurface
     -- ^ __C declaration:__ @parent@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @flags@
  -> IO ()
wl_shell_surface_set_popup =
  hs_bindgen_24ddbe3593ef374b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_set_maximized@
foreign import ccall safe "hs_bindgen_2dc7234c70c05214" hs_bindgen_2dc7234c70c05214_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_set_maximized@
hs_bindgen_2dc7234c70c05214 ::
     RIP.Ptr WlShellSurface
  -> RIP.Ptr WlOutput
  -> IO ()
hs_bindgen_2dc7234c70c05214 =
  RIP.fromFFIType hs_bindgen_2dc7234c70c05214_base

{-| __C declaration:__ @wl_shell_surface_set_maximized@

    __defined at:__ @wayland-client-protocol.h 3624:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_maximized ::
     RIP.Ptr WlShellSurface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> RIP.Ptr WlOutput
     -- ^ __C declaration:__ @output@
  -> IO ()
wl_shell_surface_set_maximized =
  hs_bindgen_2dc7234c70c05214

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_set_title@
foreign import ccall safe "hs_bindgen_9850501b8c554fb8" hs_bindgen_9850501b8c554fb8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_set_title@
hs_bindgen_9850501b8c554fb8 ::
     RIP.Ptr WlShellSurface
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_9850501b8c554fb8 =
  RIP.fromFFIType hs_bindgen_9850501b8c554fb8_base

{-| __C declaration:__ @wl_shell_surface_set_title@

    __defined at:__ @wayland-client-protocol.h 3642:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_title ::
     RIP.Ptr WlShellSurface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @title@
  -> IO ()
wl_shell_surface_set_title =
  hs_bindgen_9850501b8c554fb8

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_set_class@
foreign import ccall safe "hs_bindgen_e1d1e6f75341f6a4" hs_bindgen_e1d1e6f75341f6a4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_shell_surface_set_class@
hs_bindgen_e1d1e6f75341f6a4 ::
     RIP.Ptr WlShellSurface
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_e1d1e6f75341f6a4 =
  RIP.fromFFIType hs_bindgen_e1d1e6f75341f6a4_base

{-| __C declaration:__ @wl_shell_surface_set_class@

    __defined at:__ @wayland-client-protocol.h 3659:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_class ::
     RIP.Ptr WlShellSurface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @class_@
  -> IO ()
wl_shell_surface_set_class =
  hs_bindgen_e1d1e6f75341f6a4

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_add_listener@
foreign import ccall safe "hs_bindgen_3ec6774108b4fd10" hs_bindgen_3ec6774108b4fd10_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_add_listener@
hs_bindgen_3ec6774108b4fd10 ::
     RIP.Ptr WlSurface
  -> PtrConst.PtrConst WlSurfaceListener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_3ec6774108b4fd10 =
  RIP.fromFFIType hs_bindgen_3ec6774108b4fd10_base

{-| __C declaration:__ @wl_surface_add_listener@

    __defined at:__ @wayland-client-protocol.h 3780:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_add_listener ::
     RIP.Ptr WlSurface
     -- ^ __C declaration:__ @wl_surface@
  -> PtrConst.PtrConst WlSurfaceListener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_surface_add_listener = hs_bindgen_3ec6774108b4fd10

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_set_user_data@
foreign import ccall safe "hs_bindgen_2fcbaed2a6cd62af" hs_bindgen_2fcbaed2a6cd62af_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_set_user_data@
hs_bindgen_2fcbaed2a6cd62af ::
     RIP.Ptr WlSurface
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_2fcbaed2a6cd62af =
  RIP.fromFFIType hs_bindgen_2fcbaed2a6cd62af_base

{-| __C declaration:__ @wl_surface_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3863:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_set_user_data ::
     RIP.Ptr WlSurface
     -- ^ __C declaration:__ @wl_surface@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_surface_set_user_data =
  hs_bindgen_2fcbaed2a6cd62af

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_get_user_data@
foreign import ccall safe "hs_bindgen_03360de5f837e83a" hs_bindgen_03360de5f837e83a_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_get_user_data@
hs_bindgen_03360de5f837e83a ::
     RIP.Ptr WlSurface
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_03360de5f837e83a =
  RIP.fromFFIType hs_bindgen_03360de5f837e83a_base

{-| __C declaration:__ @wl_surface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3870:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_get_user_data ::
     RIP.Ptr WlSurface
     -- ^ __C declaration:__ @wl_surface@
  -> IO (RIP.Ptr RIP.Void)
wl_surface_get_user_data =
  hs_bindgen_03360de5f837e83a

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_get_version@
foreign import ccall safe "hs_bindgen_d25f85442b98dcb2" hs_bindgen_d25f85442b98dcb2_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_get_version@
hs_bindgen_d25f85442b98dcb2 ::
     RIP.Ptr WlSurface
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_d25f85442b98dcb2 =
  RIP.fromFFIType hs_bindgen_d25f85442b98dcb2_base

{-| __C declaration:__ @wl_surface_get_version@

    __defined at:__ @wayland-client-protocol.h 3876:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_get_version ::
     RIP.Ptr WlSurface
     -- ^ __C declaration:__ @wl_surface@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_surface_get_version = hs_bindgen_d25f85442b98dcb2

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_destroy@
foreign import ccall safe "hs_bindgen_f2e3abc0980c36ad" hs_bindgen_f2e3abc0980c36ad_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_destroy@
hs_bindgen_f2e3abc0980c36ad ::
     RIP.Ptr WlSurface
  -> IO ()
hs_bindgen_f2e3abc0980c36ad =
  RIP.fromFFIType hs_bindgen_f2e3abc0980c36ad_base

{-| __C declaration:__ @wl_surface_destroy@

    __defined at:__ @wayland-client-protocol.h 3887:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_destroy ::
     RIP.Ptr WlSurface
     -- ^ __C declaration:__ @wl_surface@
  -> IO ()
wl_surface_destroy = hs_bindgen_f2e3abc0980c36ad

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_attach@
foreign import ccall safe "hs_bindgen_101b2d435865cc6a" hs_bindgen_101b2d435865cc6a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_attach@
hs_bindgen_101b2d435865cc6a ::
     RIP.Ptr WlSurface
  -> RIP.Ptr WlBuffer
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_101b2d435865cc6a =
  RIP.fromFFIType hs_bindgen_101b2d435865cc6a_base

{-| __C declaration:__ @wl_surface_attach@

    __defined at:__ @wayland-client-protocol.h 3963:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_attach ::
     RIP.Ptr WlSurface
     -- ^ __C declaration:__ @wl_surface@
  -> RIP.Ptr WlBuffer
     -- ^ __C declaration:__ @buffer@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> IO ()
wl_surface_attach = hs_bindgen_101b2d435865cc6a

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_damage@
foreign import ccall safe "hs_bindgen_c84e7ba3e4015e7d" hs_bindgen_c84e7ba3e4015e7d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_damage@
hs_bindgen_c84e7ba3e4015e7d ::
     RIP.Ptr WlSurface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_c84e7ba3e4015e7d =
  RIP.fromFFIType hs_bindgen_c84e7ba3e4015e7d_base

{-| __C declaration:__ @wl_surface_damage@

    __defined at:__ @wayland-client-protocol.h 3995:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_damage ::
     RIP.Ptr WlSurface
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
wl_surface_damage = hs_bindgen_c84e7ba3e4015e7d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_frame@
foreign import ccall safe "hs_bindgen_dd3bfad4fdff558b" hs_bindgen_dd3bfad4fdff558b_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_frame@
hs_bindgen_dd3bfad4fdff558b ::
     RIP.Ptr WlSurface
  -> IO (RIP.Ptr WlCallback)
hs_bindgen_dd3bfad4fdff558b =
  RIP.fromFFIType hs_bindgen_dd3bfad4fdff558b_base

{-| __C declaration:__ @wl_surface_frame@

    __defined at:__ @wayland-client-protocol.h 4038:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_frame ::
     RIP.Ptr WlSurface
     -- ^ __C declaration:__ @wl_surface@
  -> IO (RIP.Ptr WlCallback)
wl_surface_frame = hs_bindgen_dd3bfad4fdff558b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_set_opaque_region@
foreign import ccall safe "hs_bindgen_acdedf6b2942b497" hs_bindgen_acdedf6b2942b497_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_set_opaque_region@
hs_bindgen_acdedf6b2942b497 ::
     RIP.Ptr WlSurface
  -> RIP.Ptr WlRegion
  -> IO ()
hs_bindgen_acdedf6b2942b497 =
  RIP.fromFFIType hs_bindgen_acdedf6b2942b497_base

{-| __C declaration:__ @wl_surface_set_opaque_region@

    __defined at:__ @wayland-client-protocol.h 4077:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_set_opaque_region ::
     RIP.Ptr WlSurface
     -- ^ __C declaration:__ @wl_surface@
  -> RIP.Ptr WlRegion
     -- ^ __C declaration:__ @region@
  -> IO ()
wl_surface_set_opaque_region =
  hs_bindgen_acdedf6b2942b497

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_set_input_region@
foreign import ccall safe "hs_bindgen_539cb9d434d5dd3f" hs_bindgen_539cb9d434d5dd3f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_set_input_region@
hs_bindgen_539cb9d434d5dd3f ::
     RIP.Ptr WlSurface
  -> RIP.Ptr WlRegion
  -> IO ()
hs_bindgen_539cb9d434d5dd3f =
  RIP.fromFFIType hs_bindgen_539cb9d434d5dd3f_base

{-| __C declaration:__ @wl_surface_set_input_region@

    __defined at:__ @wayland-client-protocol.h 4110:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_set_input_region ::
     RIP.Ptr WlSurface
     -- ^ __C declaration:__ @wl_surface@
  -> RIP.Ptr WlRegion
     -- ^ __C declaration:__ @region@
  -> IO ()
wl_surface_set_input_region =
  hs_bindgen_539cb9d434d5dd3f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_commit@
foreign import ccall safe "hs_bindgen_de9341a8898f01c8" hs_bindgen_de9341a8898f01c8_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_commit@
hs_bindgen_de9341a8898f01c8 ::
     RIP.Ptr WlSurface
  -> IO ()
hs_bindgen_de9341a8898f01c8 =
  RIP.fromFFIType hs_bindgen_de9341a8898f01c8_base

{-| __C declaration:__ @wl_surface_commit@

    __defined at:__ @wayland-client-protocol.h 4140:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_commit ::
     RIP.Ptr WlSurface
     -- ^ __C declaration:__ @wl_surface@
  -> IO ()
wl_surface_commit = hs_bindgen_de9341a8898f01c8

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_set_buffer_transform@
foreign import ccall safe "hs_bindgen_97a2bbe3ca07d770" hs_bindgen_97a2bbe3ca07d770_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_set_buffer_transform@
hs_bindgen_97a2bbe3ca07d770 ::
     RIP.Ptr WlSurface
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_97a2bbe3ca07d770 =
  RIP.fromFFIType hs_bindgen_97a2bbe3ca07d770_base

{-| __C declaration:__ @wl_surface_set_buffer_transform@

    __defined at:__ @wayland-client-protocol.h 4182:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_set_buffer_transform ::
     RIP.Ptr WlSurface
     -- ^ __C declaration:__ @wl_surface@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @transform@
  -> IO ()
wl_surface_set_buffer_transform =
  hs_bindgen_97a2bbe3ca07d770

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_set_buffer_scale@
foreign import ccall safe "hs_bindgen_118541ff98da8d31" hs_bindgen_118541ff98da8d31_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_set_buffer_scale@
hs_bindgen_118541ff98da8d31 ::
     RIP.Ptr WlSurface
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_118541ff98da8d31 =
  RIP.fromFFIType hs_bindgen_118541ff98da8d31_base

{-| __C declaration:__ @wl_surface_set_buffer_scale@

    __defined at:__ @wayland-client-protocol.h 4216:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_set_buffer_scale ::
     RIP.Ptr WlSurface
     -- ^ __C declaration:__ @wl_surface@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @scale@
  -> IO ()
wl_surface_set_buffer_scale =
  hs_bindgen_118541ff98da8d31

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_damage_buffer@
foreign import ccall safe "hs_bindgen_97596bda6c78785a" hs_bindgen_97596bda6c78785a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_damage_buffer@
hs_bindgen_97596bda6c78785a ::
     RIP.Ptr WlSurface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_97596bda6c78785a =
  RIP.fromFFIType hs_bindgen_97596bda6c78785a_base

{-| __C declaration:__ @wl_surface_damage_buffer@

    __defined at:__ @wayland-client-protocol.h 4259:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_damage_buffer ::
     RIP.Ptr WlSurface
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
  hs_bindgen_97596bda6c78785a

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_offset@
foreign import ccall safe "hs_bindgen_90ca4b2dbbe658c3" hs_bindgen_90ca4b2dbbe658c3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_surface_offset@
hs_bindgen_90ca4b2dbbe658c3 ::
     RIP.Ptr WlSurface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_90ca4b2dbbe658c3 =
  RIP.fromFFIType hs_bindgen_90ca4b2dbbe658c3_base

{-| __C declaration:__ @wl_surface_offset@

    __defined at:__ @wayland-client-protocol.h 4285:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_offset ::
     RIP.Ptr WlSurface
     -- ^ __C declaration:__ @wl_surface@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> IO ()
wl_surface_offset = hs_bindgen_90ca4b2dbbe658c3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_seat_add_listener@
foreign import ccall safe "hs_bindgen_806c7c15d6106e10" hs_bindgen_806c7c15d6106e10_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_seat_add_listener@
hs_bindgen_806c7c15d6106e10 ::
     RIP.Ptr WlSeat
  -> PtrConst.PtrConst WlSeatListener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_806c7c15d6106e10 =
  RIP.fromFFIType hs_bindgen_806c7c15d6106e10_base

{-| __C declaration:__ @wl_seat_add_listener@

    __defined at:__ @wayland-client-protocol.h 4406:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_add_listener ::
     RIP.Ptr WlSeat
     -- ^ __C declaration:__ @wl_seat@
  -> PtrConst.PtrConst WlSeatListener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_seat_add_listener = hs_bindgen_806c7c15d6106e10

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_seat_set_user_data@
foreign import ccall safe "hs_bindgen_233a5383cb30f609" hs_bindgen_233a5383cb30f609_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_seat_set_user_data@
hs_bindgen_233a5383cb30f609 ::
     RIP.Ptr WlSeat
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_233a5383cb30f609 =
  RIP.fromFFIType hs_bindgen_233a5383cb30f609_base

{-| __C declaration:__ @wl_seat_set_user_data@

    __defined at:__ @wayland-client-protocol.h 4446:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_set_user_data ::
     RIP.Ptr WlSeat
     -- ^ __C declaration:__ @wl_seat@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_seat_set_user_data = hs_bindgen_233a5383cb30f609

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_seat_get_user_data@
foreign import ccall safe "hs_bindgen_df7e124a0a5324a2" hs_bindgen_df7e124a0a5324a2_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_seat_get_user_data@
hs_bindgen_df7e124a0a5324a2 ::
     RIP.Ptr WlSeat
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_df7e124a0a5324a2 =
  RIP.fromFFIType hs_bindgen_df7e124a0a5324a2_base

{-| __C declaration:__ @wl_seat_get_user_data@

    __defined at:__ @wayland-client-protocol.h 4453:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_user_data ::
     RIP.Ptr WlSeat
     -- ^ __C declaration:__ @wl_seat@
  -> IO (RIP.Ptr RIP.Void)
wl_seat_get_user_data = hs_bindgen_df7e124a0a5324a2

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_seat_get_version@
foreign import ccall safe "hs_bindgen_2e5680bb4d0972a4" hs_bindgen_2e5680bb4d0972a4_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_seat_get_version@
hs_bindgen_2e5680bb4d0972a4 ::
     RIP.Ptr WlSeat
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_2e5680bb4d0972a4 =
  RIP.fromFFIType hs_bindgen_2e5680bb4d0972a4_base

{-| __C declaration:__ @wl_seat_get_version@

    __defined at:__ @wayland-client-protocol.h 4459:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_version ::
     RIP.Ptr WlSeat
     -- ^ __C declaration:__ @wl_seat@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_seat_get_version = hs_bindgen_2e5680bb4d0972a4

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_seat_destroy@
foreign import ccall safe "hs_bindgen_ca031ed59c2687dc" hs_bindgen_ca031ed59c2687dc_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_seat_destroy@
hs_bindgen_ca031ed59c2687dc ::
     RIP.Ptr WlSeat
  -> IO ()
hs_bindgen_ca031ed59c2687dc =
  RIP.fromFFIType hs_bindgen_ca031ed59c2687dc_base

{-| __C declaration:__ @wl_seat_destroy@

    __defined at:__ @wayland-client-protocol.h 4466:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_destroy ::
     RIP.Ptr WlSeat
     -- ^ __C declaration:__ @wl_seat@
  -> IO ()
wl_seat_destroy = hs_bindgen_ca031ed59c2687dc

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_seat_get_pointer@
foreign import ccall safe "hs_bindgen_202bb165428f5072" hs_bindgen_202bb165428f5072_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_seat_get_pointer@
hs_bindgen_202bb165428f5072 ::
     RIP.Ptr WlSeat
  -> IO (RIP.Ptr WlPointer)
hs_bindgen_202bb165428f5072 =
  RIP.fromFFIType hs_bindgen_202bb165428f5072_base

{-| __C declaration:__ @wl_seat_get_pointer@

    __defined at:__ @wayland-client-protocol.h 4484:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_pointer ::
     RIP.Ptr WlSeat
     -- ^ __C declaration:__ @wl_seat@
  -> IO (RIP.Ptr WlPointer)
wl_seat_get_pointer = hs_bindgen_202bb165428f5072

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_seat_get_keyboard@
foreign import ccall safe "hs_bindgen_1213744edd239188" hs_bindgen_1213744edd239188_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_seat_get_keyboard@
hs_bindgen_1213744edd239188 ::
     RIP.Ptr WlSeat
  -> IO (RIP.Ptr WlKeyboard)
hs_bindgen_1213744edd239188 =
  RIP.fromFFIType hs_bindgen_1213744edd239188_base

{-| __C declaration:__ @wl_seat_get_keyboard@

    __defined at:__ @wayland-client-protocol.h 4507:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_keyboard ::
     RIP.Ptr WlSeat
     -- ^ __C declaration:__ @wl_seat@
  -> IO (RIP.Ptr WlKeyboard)
wl_seat_get_keyboard = hs_bindgen_1213744edd239188

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_seat_get_touch@
foreign import ccall safe "hs_bindgen_199f47ea06a30f63" hs_bindgen_199f47ea06a30f63_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_seat_get_touch@
hs_bindgen_199f47ea06a30f63 ::
     RIP.Ptr WlSeat
  -> IO (RIP.Ptr WlTouch)
hs_bindgen_199f47ea06a30f63 =
  RIP.fromFFIType hs_bindgen_199f47ea06a30f63_base

{-| __C declaration:__ @wl_seat_get_touch@

    __defined at:__ @wayland-client-protocol.h 4530:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_touch ::
     RIP.Ptr WlSeat
     -- ^ __C declaration:__ @wl_seat@
  -> IO (RIP.Ptr WlTouch)
wl_seat_get_touch = hs_bindgen_199f47ea06a30f63

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_seat_release@
foreign import ccall safe "hs_bindgen_970d8527938c5528" hs_bindgen_970d8527938c5528_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_seat_release@
hs_bindgen_970d8527938c5528 ::
     RIP.Ptr WlSeat
  -> IO ()
hs_bindgen_970d8527938c5528 =
  RIP.fromFFIType hs_bindgen_970d8527938c5528_base

{-| __C declaration:__ @wl_seat_release@

    __defined at:__ @wayland-client-protocol.h 4547:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_release ::
     RIP.Ptr WlSeat
     -- ^ __C declaration:__ @wl_seat@
  -> IO ()
wl_seat_release = hs_bindgen_970d8527938c5528

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_pointer_add_listener@
foreign import ccall safe "hs_bindgen_d3ec24c8ce0a2711" hs_bindgen_d3ec24c8ce0a2711_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_pointer_add_listener@
hs_bindgen_d3ec24c8ce0a2711 ::
     RIP.Ptr WlPointer
  -> PtrConst.PtrConst WlPointerListener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_d3ec24c8ce0a2711 =
  RIP.fromFFIType hs_bindgen_d3ec24c8ce0a2711_base

{-| __C declaration:__ @wl_pointer_add_listener@

    __defined at:__ @wayland-client-protocol.h 5010:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_add_listener ::
     RIP.Ptr WlPointer
     -- ^ __C declaration:__ @wl_pointer@
  -> PtrConst.PtrConst WlPointerListener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_pointer_add_listener = hs_bindgen_d3ec24c8ce0a2711

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_pointer_set_user_data@
foreign import ccall safe "hs_bindgen_2107ffa3207af4aa" hs_bindgen_2107ffa3207af4aa_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_pointer_set_user_data@
hs_bindgen_2107ffa3207af4aa ::
     RIP.Ptr WlPointer
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_2107ffa3207af4aa =
  RIP.fromFFIType hs_bindgen_2107ffa3207af4aa_base

{-| __C declaration:__ @wl_pointer_set_user_data@

    __defined at:__ @wayland-client-protocol.h 5076:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_set_user_data ::
     RIP.Ptr WlPointer
     -- ^ __C declaration:__ @wl_pointer@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_pointer_set_user_data =
  hs_bindgen_2107ffa3207af4aa

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_pointer_get_user_data@
foreign import ccall safe "hs_bindgen_6e3a1ee9ff811448" hs_bindgen_6e3a1ee9ff811448_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_pointer_get_user_data@
hs_bindgen_6e3a1ee9ff811448 ::
     RIP.Ptr WlPointer
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_6e3a1ee9ff811448 =
  RIP.fromFFIType hs_bindgen_6e3a1ee9ff811448_base

{-| __C declaration:__ @wl_pointer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5083:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_get_user_data ::
     RIP.Ptr WlPointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO (RIP.Ptr RIP.Void)
wl_pointer_get_user_data =
  hs_bindgen_6e3a1ee9ff811448

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_pointer_get_version@
foreign import ccall safe "hs_bindgen_f25b993bd8b89759" hs_bindgen_f25b993bd8b89759_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_pointer_get_version@
hs_bindgen_f25b993bd8b89759 ::
     RIP.Ptr WlPointer
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_f25b993bd8b89759 =
  RIP.fromFFIType hs_bindgen_f25b993bd8b89759_base

{-| __C declaration:__ @wl_pointer_get_version@

    __defined at:__ @wayland-client-protocol.h 5089:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_get_version ::
     RIP.Ptr WlPointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_pointer_get_version = hs_bindgen_f25b993bd8b89759

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_pointer_destroy@
foreign import ccall safe "hs_bindgen_44082231d4c1e03d" hs_bindgen_44082231d4c1e03d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_pointer_destroy@
hs_bindgen_44082231d4c1e03d ::
     RIP.Ptr WlPointer
  -> IO ()
hs_bindgen_44082231d4c1e03d =
  RIP.fromFFIType hs_bindgen_44082231d4c1e03d_base

{-| __C declaration:__ @wl_pointer_destroy@

    __defined at:__ @wayland-client-protocol.h 5096:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_destroy ::
     RIP.Ptr WlPointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO ()
wl_pointer_destroy = hs_bindgen_44082231d4c1e03d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_pointer_set_cursor@
foreign import ccall safe "hs_bindgen_9fff84543f5eaf73" hs_bindgen_9fff84543f5eaf73_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_pointer_set_cursor@
hs_bindgen_9fff84543f5eaf73 ::
     RIP.Ptr WlPointer
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr WlSurface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_9fff84543f5eaf73 =
  RIP.fromFFIType hs_bindgen_9fff84543f5eaf73_base

{-| __C declaration:__ @wl_pointer_set_cursor@

    __defined at:__ @wayland-client-protocol.h 5139:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_set_cursor ::
     RIP.Ptr WlPointer
     -- ^ __C declaration:__ @wl_pointer@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> RIP.Ptr WlSurface
     -- ^ __C declaration:__ @surface@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @hotspot_x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @hotspot_y@
  -> IO ()
wl_pointer_set_cursor = hs_bindgen_9fff84543f5eaf73

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_pointer_release@
foreign import ccall safe "hs_bindgen_001b9a1173b3ba87" hs_bindgen_001b9a1173b3ba87_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_pointer_release@
hs_bindgen_001b9a1173b3ba87 ::
     RIP.Ptr WlPointer
  -> IO ()
hs_bindgen_001b9a1173b3ba87 =
  RIP.fromFFIType hs_bindgen_001b9a1173b3ba87_base

{-| __C declaration:__ @wl_pointer_release@

    __defined at:__ @wayland-client-protocol.h 5155:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_release ::
     RIP.Ptr WlPointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO ()
wl_pointer_release = hs_bindgen_001b9a1173b3ba87

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_keyboard_add_listener@
foreign import ccall safe "hs_bindgen_171e6441366c2761" hs_bindgen_171e6441366c2761_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_keyboard_add_listener@
hs_bindgen_171e6441366c2761 ::
     RIP.Ptr WlKeyboard
  -> PtrConst.PtrConst WlKeyboardListener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_171e6441366c2761 =
  RIP.fromFFIType hs_bindgen_171e6441366c2761_base

{-| __C declaration:__ @wl_keyboard_add_listener@

    __defined at:__ @wayland-client-protocol.h 5385:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_add_listener ::
     RIP.Ptr WlKeyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> PtrConst.PtrConst WlKeyboardListener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_keyboard_add_listener =
  hs_bindgen_171e6441366c2761

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_keyboard_set_user_data@
foreign import ccall safe "hs_bindgen_b04631f5492fa94b" hs_bindgen_b04631f5492fa94b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_keyboard_set_user_data@
hs_bindgen_b04631f5492fa94b ::
     RIP.Ptr WlKeyboard
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_b04631f5492fa94b =
  RIP.fromFFIType hs_bindgen_b04631f5492fa94b_base

{-| __C declaration:__ @wl_keyboard_set_user_data@

    __defined at:__ @wayland-client-protocol.h 5426:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_set_user_data ::
     RIP.Ptr WlKeyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_keyboard_set_user_data =
  hs_bindgen_b04631f5492fa94b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_keyboard_get_user_data@
foreign import ccall safe "hs_bindgen_70a6d377462a5121" hs_bindgen_70a6d377462a5121_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_keyboard_get_user_data@
hs_bindgen_70a6d377462a5121 ::
     RIP.Ptr WlKeyboard
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_70a6d377462a5121 =
  RIP.fromFFIType hs_bindgen_70a6d377462a5121_base

{-| __C declaration:__ @wl_keyboard_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5433:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_get_user_data ::
     RIP.Ptr WlKeyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO (RIP.Ptr RIP.Void)
wl_keyboard_get_user_data =
  hs_bindgen_70a6d377462a5121

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_keyboard_get_version@
foreign import ccall safe "hs_bindgen_798dfaa1b78de66c" hs_bindgen_798dfaa1b78de66c_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_keyboard_get_version@
hs_bindgen_798dfaa1b78de66c ::
     RIP.Ptr WlKeyboard
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_798dfaa1b78de66c =
  RIP.fromFFIType hs_bindgen_798dfaa1b78de66c_base

{-| __C declaration:__ @wl_keyboard_get_version@

    __defined at:__ @wayland-client-protocol.h 5439:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_get_version ::
     RIP.Ptr WlKeyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_keyboard_get_version = hs_bindgen_798dfaa1b78de66c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_keyboard_destroy@
foreign import ccall safe "hs_bindgen_62b4e233189e1ea8" hs_bindgen_62b4e233189e1ea8_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_keyboard_destroy@
hs_bindgen_62b4e233189e1ea8 ::
     RIP.Ptr WlKeyboard
  -> IO ()
hs_bindgen_62b4e233189e1ea8 =
  RIP.fromFFIType hs_bindgen_62b4e233189e1ea8_base

{-| __C declaration:__ @wl_keyboard_destroy@

    __defined at:__ @wayland-client-protocol.h 5446:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_destroy ::
     RIP.Ptr WlKeyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO ()
wl_keyboard_destroy = hs_bindgen_62b4e233189e1ea8

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_keyboard_release@
foreign import ccall safe "hs_bindgen_4e45d0bdb9d1fd67" hs_bindgen_4e45d0bdb9d1fd67_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_keyboard_release@
hs_bindgen_4e45d0bdb9d1fd67 ::
     RIP.Ptr WlKeyboard
  -> IO ()
hs_bindgen_4e45d0bdb9d1fd67 =
  RIP.fromFFIType hs_bindgen_4e45d0bdb9d1fd67_base

{-| __C declaration:__ @wl_keyboard_release@

    __defined at:__ @wayland-client-protocol.h 5455:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_release ::
     RIP.Ptr WlKeyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO ()
wl_keyboard_release = hs_bindgen_4e45d0bdb9d1fd67

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_touch_add_listener@
foreign import ccall safe "hs_bindgen_ae9bf0e4e73abb3d" hs_bindgen_ae9bf0e4e73abb3d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_touch_add_listener@
hs_bindgen_ae9bf0e4e73abb3d ::
     RIP.Ptr WlTouch
  -> PtrConst.PtrConst WlTouchListener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_ae9bf0e4e73abb3d =
  RIP.fromFFIType hs_bindgen_ae9bf0e4e73abb3d_base

{-| __C declaration:__ @wl_touch_add_listener@

    __defined at:__ @wayland-client-protocol.h 5625:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_add_listener ::
     RIP.Ptr WlTouch
     -- ^ __C declaration:__ @wl_touch@
  -> PtrConst.PtrConst WlTouchListener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_touch_add_listener = hs_bindgen_ae9bf0e4e73abb3d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_touch_set_user_data@
foreign import ccall safe "hs_bindgen_f973b0f9972f4bce" hs_bindgen_f973b0f9972f4bce_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_touch_set_user_data@
hs_bindgen_f973b0f9972f4bce ::
     RIP.Ptr WlTouch
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_f973b0f9972f4bce =
  RIP.fromFFIType hs_bindgen_f973b0f9972f4bce_base

{-| __C declaration:__ @wl_touch_set_user_data@

    __defined at:__ @wayland-client-protocol.h 5670:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_set_user_data ::
     RIP.Ptr WlTouch
     -- ^ __C declaration:__ @wl_touch@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_touch_set_user_data = hs_bindgen_f973b0f9972f4bce

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_touch_get_user_data@
foreign import ccall safe "hs_bindgen_527e52d0cd2911d2" hs_bindgen_527e52d0cd2911d2_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_touch_get_user_data@
hs_bindgen_527e52d0cd2911d2 ::
     RIP.Ptr WlTouch
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_527e52d0cd2911d2 =
  RIP.fromFFIType hs_bindgen_527e52d0cd2911d2_base

{-| __C declaration:__ @wl_touch_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5677:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_get_user_data ::
     RIP.Ptr WlTouch
     -- ^ __C declaration:__ @wl_touch@
  -> IO (RIP.Ptr RIP.Void)
wl_touch_get_user_data = hs_bindgen_527e52d0cd2911d2

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_touch_get_version@
foreign import ccall safe "hs_bindgen_9357f344c69f2027" hs_bindgen_9357f344c69f2027_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_touch_get_version@
hs_bindgen_9357f344c69f2027 ::
     RIP.Ptr WlTouch
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_9357f344c69f2027 =
  RIP.fromFFIType hs_bindgen_9357f344c69f2027_base

{-| __C declaration:__ @wl_touch_get_version@

    __defined at:__ @wayland-client-protocol.h 5683:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_get_version ::
     RIP.Ptr WlTouch
     -- ^ __C declaration:__ @wl_touch@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_touch_get_version = hs_bindgen_9357f344c69f2027

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_touch_destroy@
foreign import ccall safe "hs_bindgen_d3bdb2cbf6a46318" hs_bindgen_d3bdb2cbf6a46318_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_touch_destroy@
hs_bindgen_d3bdb2cbf6a46318 ::
     RIP.Ptr WlTouch
  -> IO ()
hs_bindgen_d3bdb2cbf6a46318 =
  RIP.fromFFIType hs_bindgen_d3bdb2cbf6a46318_base

{-| __C declaration:__ @wl_touch_destroy@

    __defined at:__ @wayland-client-protocol.h 5690:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_destroy ::
     RIP.Ptr WlTouch
     -- ^ __C declaration:__ @wl_touch@
  -> IO ()
wl_touch_destroy = hs_bindgen_d3bdb2cbf6a46318

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_touch_release@
foreign import ccall safe "hs_bindgen_399ad3793f1f4495" hs_bindgen_399ad3793f1f4495_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_touch_release@
hs_bindgen_399ad3793f1f4495 ::
     RIP.Ptr WlTouch
  -> IO ()
hs_bindgen_399ad3793f1f4495 =
  RIP.fromFFIType hs_bindgen_399ad3793f1f4495_base

{-| __C declaration:__ @wl_touch_release@

    __defined at:__ @wayland-client-protocol.h 5699:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_release ::
     RIP.Ptr WlTouch
     -- ^ __C declaration:__ @wl_touch@
  -> IO ()
wl_touch_release = hs_bindgen_399ad3793f1f4495

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_output_add_listener@
foreign import ccall safe "hs_bindgen_cb5eab775b9670e6" hs_bindgen_cb5eab775b9670e6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_output_add_listener@
hs_bindgen_cb5eab775b9670e6 ::
     RIP.Ptr WlOutput
  -> PtrConst.PtrConst WlOutputListener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_cb5eab775b9670e6 =
  RIP.fromFFIType hs_bindgen_cb5eab775b9670e6_base

{-| __C declaration:__ @wl_output_add_listener@

    __defined at:__ @wayland-client-protocol.h 6018:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_add_listener ::
     RIP.Ptr WlOutput
     -- ^ __C declaration:__ @wl_output@
  -> PtrConst.PtrConst WlOutputListener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_output_add_listener = hs_bindgen_cb5eab775b9670e6

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_output_set_user_data@
foreign import ccall safe "hs_bindgen_c2245b79cfcfb62c" hs_bindgen_c2245b79cfcfb62c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_output_set_user_data@
hs_bindgen_c2245b79cfcfb62c ::
     RIP.Ptr WlOutput
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_c2245b79cfcfb62c =
  RIP.fromFFIType hs_bindgen_c2245b79cfcfb62c_base

{-| __C declaration:__ @wl_output_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6059:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_set_user_data ::
     RIP.Ptr WlOutput
     -- ^ __C declaration:__ @wl_output@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_output_set_user_data = hs_bindgen_c2245b79cfcfb62c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_output_get_user_data@
foreign import ccall safe "hs_bindgen_5ff14f01443d3e8f" hs_bindgen_5ff14f01443d3e8f_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_output_get_user_data@
hs_bindgen_5ff14f01443d3e8f ::
     RIP.Ptr WlOutput
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_5ff14f01443d3e8f =
  RIP.fromFFIType hs_bindgen_5ff14f01443d3e8f_base

{-| __C declaration:__ @wl_output_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6066:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_get_user_data ::
     RIP.Ptr WlOutput
     -- ^ __C declaration:__ @wl_output@
  -> IO (RIP.Ptr RIP.Void)
wl_output_get_user_data = hs_bindgen_5ff14f01443d3e8f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_output_get_version@
foreign import ccall safe "hs_bindgen_abdd91b9bc75e151" hs_bindgen_abdd91b9bc75e151_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_output_get_version@
hs_bindgen_abdd91b9bc75e151 ::
     RIP.Ptr WlOutput
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_abdd91b9bc75e151 =
  RIP.fromFFIType hs_bindgen_abdd91b9bc75e151_base

{-| __C declaration:__ @wl_output_get_version@

    __defined at:__ @wayland-client-protocol.h 6072:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_get_version ::
     RIP.Ptr WlOutput
     -- ^ __C declaration:__ @wl_output@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_output_get_version = hs_bindgen_abdd91b9bc75e151

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_output_destroy@
foreign import ccall safe "hs_bindgen_c25df5b1f97f7695" hs_bindgen_c25df5b1f97f7695_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_output_destroy@
hs_bindgen_c25df5b1f97f7695 ::
     RIP.Ptr WlOutput
  -> IO ()
hs_bindgen_c25df5b1f97f7695 =
  RIP.fromFFIType hs_bindgen_c25df5b1f97f7695_base

{-| __C declaration:__ @wl_output_destroy@

    __defined at:__ @wayland-client-protocol.h 6079:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_destroy ::
     RIP.Ptr WlOutput
     -- ^ __C declaration:__ @wl_output@
  -> IO ()
wl_output_destroy = hs_bindgen_c25df5b1f97f7695

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_output_release@
foreign import ccall safe "hs_bindgen_7980bbe93524b7f3" hs_bindgen_7980bbe93524b7f3_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_output_release@
hs_bindgen_7980bbe93524b7f3 ::
     RIP.Ptr WlOutput
  -> IO ()
hs_bindgen_7980bbe93524b7f3 =
  RIP.fromFFIType hs_bindgen_7980bbe93524b7f3_base

{-| __C declaration:__ @wl_output_release@

    __defined at:__ @wayland-client-protocol.h 6091:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_release ::
     RIP.Ptr WlOutput
     -- ^ __C declaration:__ @wl_output@
  -> IO ()
wl_output_release = hs_bindgen_7980bbe93524b7f3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_region_set_user_data@
foreign import ccall safe "hs_bindgen_b1039fece4ca235c" hs_bindgen_b1039fece4ca235c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_region_set_user_data@
hs_bindgen_b1039fece4ca235c ::
     RIP.Ptr WlRegion
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_b1039fece4ca235c =
  RIP.fromFFIType hs_bindgen_b1039fece4ca235c_base

{-| __C declaration:__ @wl_region_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6117:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_set_user_data ::
     RIP.Ptr WlRegion
     -- ^ __C declaration:__ @wl_region@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_region_set_user_data = hs_bindgen_b1039fece4ca235c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_region_get_user_data@
foreign import ccall safe "hs_bindgen_e554a15f2ea923fb" hs_bindgen_e554a15f2ea923fb_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_region_get_user_data@
hs_bindgen_e554a15f2ea923fb ::
     RIP.Ptr WlRegion
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_e554a15f2ea923fb =
  RIP.fromFFIType hs_bindgen_e554a15f2ea923fb_base

{-| __C declaration:__ @wl_region_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6124:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_get_user_data ::
     RIP.Ptr WlRegion
     -- ^ __C declaration:__ @wl_region@
  -> IO (RIP.Ptr RIP.Void)
wl_region_get_user_data = hs_bindgen_e554a15f2ea923fb

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_region_get_version@
foreign import ccall safe "hs_bindgen_db4f0b624029a031" hs_bindgen_db4f0b624029a031_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_region_get_version@
hs_bindgen_db4f0b624029a031 ::
     RIP.Ptr WlRegion
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_db4f0b624029a031 =
  RIP.fromFFIType hs_bindgen_db4f0b624029a031_base

{-| __C declaration:__ @wl_region_get_version@

    __defined at:__ @wayland-client-protocol.h 6130:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_get_version ::
     RIP.Ptr WlRegion
     -- ^ __C declaration:__ @wl_region@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_region_get_version = hs_bindgen_db4f0b624029a031

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_region_destroy@
foreign import ccall safe "hs_bindgen_6c9605de12c89a2c" hs_bindgen_6c9605de12c89a2c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_region_destroy@
hs_bindgen_6c9605de12c89a2c ::
     RIP.Ptr WlRegion
  -> IO ()
hs_bindgen_6c9605de12c89a2c =
  RIP.fromFFIType hs_bindgen_6c9605de12c89a2c_base

{-| __C declaration:__ @wl_region_destroy@

    __defined at:__ @wayland-client-protocol.h 6141:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_destroy ::
     RIP.Ptr WlRegion
     -- ^ __C declaration:__ @wl_region@
  -> IO ()
wl_region_destroy = hs_bindgen_6c9605de12c89a2c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_region_add@
foreign import ccall safe "hs_bindgen_5244523a3f3c2626" hs_bindgen_5244523a3f3c2626_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_region_add@
hs_bindgen_5244523a3f3c2626 ::
     RIP.Ptr WlRegion
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_5244523a3f3c2626 =
  RIP.fromFFIType hs_bindgen_5244523a3f3c2626_base

{-| __C declaration:__ @wl_region_add@

    __defined at:__ @wayland-client-protocol.h 6153:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_add ::
     RIP.Ptr WlRegion
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
wl_region_add = hs_bindgen_5244523a3f3c2626

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_region_subtract@
foreign import ccall safe "hs_bindgen_f56fa08fdd944cef" hs_bindgen_f56fa08fdd944cef_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_region_subtract@
hs_bindgen_f56fa08fdd944cef ::
     RIP.Ptr WlRegion
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_f56fa08fdd944cef =
  RIP.fromFFIType hs_bindgen_f56fa08fdd944cef_base

{-| __C declaration:__ @wl_region_subtract@

    __defined at:__ @wayland-client-protocol.h 6165:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_subtract ::
     RIP.Ptr WlRegion
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
wl_region_subtract = hs_bindgen_f56fa08fdd944cef

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subcompositor_set_user_data@
foreign import ccall safe "hs_bindgen_4639cfab24c01c72" hs_bindgen_4639cfab24c01c72_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subcompositor_set_user_data@
hs_bindgen_4639cfab24c01c72 ::
     RIP.Ptr WlSubcompositor
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_4639cfab24c01c72 =
  RIP.fromFFIType hs_bindgen_4639cfab24c01c72_base

{-| __C declaration:__ @wl_subcompositor_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6200:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_set_user_data ::
     RIP.Ptr WlSubcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_subcompositor_set_user_data =
  hs_bindgen_4639cfab24c01c72

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subcompositor_get_user_data@
foreign import ccall safe "hs_bindgen_a3a2a307862bf5cb" hs_bindgen_a3a2a307862bf5cb_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subcompositor_get_user_data@
hs_bindgen_a3a2a307862bf5cb ::
     RIP.Ptr WlSubcompositor
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_a3a2a307862bf5cb =
  RIP.fromFFIType hs_bindgen_a3a2a307862bf5cb_base

{-| __C declaration:__ @wl_subcompositor_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6207:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_user_data ::
     RIP.Ptr WlSubcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> IO (RIP.Ptr RIP.Void)
wl_subcompositor_get_user_data =
  hs_bindgen_a3a2a307862bf5cb

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subcompositor_get_version@
foreign import ccall safe "hs_bindgen_4865388d0d458fb3" hs_bindgen_4865388d0d458fb3_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subcompositor_get_version@
hs_bindgen_4865388d0d458fb3 ::
     RIP.Ptr WlSubcompositor
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_4865388d0d458fb3 =
  RIP.fromFFIType hs_bindgen_4865388d0d458fb3_base

{-| __C declaration:__ @wl_subcompositor_get_version@

    __defined at:__ @wayland-client-protocol.h 6213:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_version ::
     RIP.Ptr WlSubcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_subcompositor_get_version =
  hs_bindgen_4865388d0d458fb3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subcompositor_destroy@
foreign import ccall safe "hs_bindgen_369530ecf040602d" hs_bindgen_369530ecf040602d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subcompositor_destroy@
hs_bindgen_369530ecf040602d ::
     RIP.Ptr WlSubcompositor
  -> IO ()
hs_bindgen_369530ecf040602d =
  RIP.fromFFIType hs_bindgen_369530ecf040602d_base

{-| __C declaration:__ @wl_subcompositor_destroy@

    __defined at:__ @wayland-client-protocol.h 6226:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_destroy ::
     RIP.Ptr WlSubcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> IO ()
wl_subcompositor_destroy =
  hs_bindgen_369530ecf040602d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subcompositor_get_subsurface@
foreign import ccall safe "hs_bindgen_dc1ee564f1901e28" hs_bindgen_dc1ee564f1901e28_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subcompositor_get_subsurface@
hs_bindgen_dc1ee564f1901e28 ::
     RIP.Ptr WlSubcompositor
  -> RIP.Ptr WlSurface
  -> RIP.Ptr WlSurface
  -> IO (RIP.Ptr WlSubsurface)
hs_bindgen_dc1ee564f1901e28 =
  RIP.fromFFIType hs_bindgen_dc1ee564f1901e28_base

{-| __C declaration:__ @wl_subcompositor_get_subsurface@

    __defined at:__ @wayland-client-protocol.h 6256:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_subsurface ::
     RIP.Ptr WlSubcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> RIP.Ptr WlSurface
     -- ^ __C declaration:__ @surface@
  -> RIP.Ptr WlSurface
     -- ^ __C declaration:__ @parent@
  -> IO (RIP.Ptr WlSubsurface)
wl_subcompositor_get_subsurface =
  hs_bindgen_dc1ee564f1901e28

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subsurface_set_user_data@
foreign import ccall safe "hs_bindgen_8965c858fdfb9784" hs_bindgen_8965c858fdfb9784_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subsurface_set_user_data@
hs_bindgen_8965c858fdfb9784 ::
     RIP.Ptr WlSubsurface
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_8965c858fdfb9784 =
  RIP.fromFFIType hs_bindgen_8965c858fdfb9784_base

{-| __C declaration:__ @wl_subsurface_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6311:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_user_data ::
     RIP.Ptr WlSubsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_subsurface_set_user_data =
  hs_bindgen_8965c858fdfb9784

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subsurface_get_user_data@
foreign import ccall safe "hs_bindgen_c73ad4b80223b74a" hs_bindgen_c73ad4b80223b74a_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subsurface_get_user_data@
hs_bindgen_c73ad4b80223b74a ::
     RIP.Ptr WlSubsurface
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_c73ad4b80223b74a =
  RIP.fromFFIType hs_bindgen_c73ad4b80223b74a_base

{-| __C declaration:__ @wl_subsurface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6318:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_get_user_data ::
     RIP.Ptr WlSubsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO (RIP.Ptr RIP.Void)
wl_subsurface_get_user_data =
  hs_bindgen_c73ad4b80223b74a

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subsurface_get_version@
foreign import ccall safe "hs_bindgen_dce45cadff291a6c" hs_bindgen_dce45cadff291a6c_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subsurface_get_version@
hs_bindgen_dce45cadff291a6c ::
     RIP.Ptr WlSubsurface
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_dce45cadff291a6c =
  RIP.fromFFIType hs_bindgen_dce45cadff291a6c_base

{-| __C declaration:__ @wl_subsurface_get_version@

    __defined at:__ @wayland-client-protocol.h 6324:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_get_version ::
     RIP.Ptr WlSubsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_subsurface_get_version =
  hs_bindgen_dce45cadff291a6c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subsurface_destroy@
foreign import ccall safe "hs_bindgen_3752430a1e1fefc5" hs_bindgen_3752430a1e1fefc5_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subsurface_destroy@
hs_bindgen_3752430a1e1fefc5 ::
     RIP.Ptr WlSubsurface
  -> IO ()
hs_bindgen_3752430a1e1fefc5 =
  RIP.fromFFIType hs_bindgen_3752430a1e1fefc5_base

{-| __C declaration:__ @wl_subsurface_destroy@

    __defined at:__ @wayland-client-protocol.h 6338:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_destroy ::
     RIP.Ptr WlSubsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO ()
wl_subsurface_destroy = hs_bindgen_3752430a1e1fefc5

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subsurface_set_position@
foreign import ccall safe "hs_bindgen_f9acf02a1acee6b7" hs_bindgen_f9acf02a1acee6b7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subsurface_set_position@
hs_bindgen_f9acf02a1acee6b7 ::
     RIP.Ptr WlSubsurface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_f9acf02a1acee6b7 =
  RIP.fromFFIType hs_bindgen_f9acf02a1acee6b7_base

{-| __C declaration:__ @wl_subsurface_set_position@

    __defined at:__ @wayland-client-protocol.h 6363:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_position ::
     RIP.Ptr WlSubsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> IO ()
wl_subsurface_set_position =
  hs_bindgen_f9acf02a1acee6b7

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subsurface_place_above@
foreign import ccall safe "hs_bindgen_e5234444c4c99606" hs_bindgen_e5234444c4c99606_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subsurface_place_above@
hs_bindgen_e5234444c4c99606 ::
     RIP.Ptr WlSubsurface
  -> RIP.Ptr WlSurface
  -> IO ()
hs_bindgen_e5234444c4c99606 =
  RIP.fromFFIType hs_bindgen_e5234444c4c99606_base

{-| __C declaration:__ @wl_subsurface_place_above@

    __defined at:__ @wayland-client-protocol.h 6387:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_place_above ::
     RIP.Ptr WlSubsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> RIP.Ptr WlSurface
     -- ^ __C declaration:__ @sibling@
  -> IO ()
wl_subsurface_place_above =
  hs_bindgen_e5234444c4c99606

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subsurface_place_below@
foreign import ccall safe "hs_bindgen_d926657b1851f5cd" hs_bindgen_d926657b1851f5cd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subsurface_place_below@
hs_bindgen_d926657b1851f5cd ::
     RIP.Ptr WlSubsurface
  -> RIP.Ptr WlSurface
  -> IO ()
hs_bindgen_d926657b1851f5cd =
  RIP.fromFFIType hs_bindgen_d926657b1851f5cd_base

{-| __C declaration:__ @wl_subsurface_place_below@

    __defined at:__ @wayland-client-protocol.h 6400:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_place_below ::
     RIP.Ptr WlSubsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> RIP.Ptr WlSurface
     -- ^ __C declaration:__ @sibling@
  -> IO ()
wl_subsurface_place_below =
  hs_bindgen_d926657b1851f5cd

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subsurface_set_sync@
foreign import ccall safe "hs_bindgen_9526cd8f5a4fb80d" hs_bindgen_9526cd8f5a4fb80d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subsurface_set_sync@
hs_bindgen_9526cd8f5a4fb80d ::
     RIP.Ptr WlSubsurface
  -> IO ()
hs_bindgen_9526cd8f5a4fb80d =
  RIP.fromFFIType hs_bindgen_9526cd8f5a4fb80d_base

{-| __C declaration:__ @wl_subsurface_set_sync@

    __defined at:__ @wayland-client-protocol.h 6424:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_sync ::
     RIP.Ptr WlSubsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO ()
wl_subsurface_set_sync = hs_bindgen_9526cd8f5a4fb80d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subsurface_set_desync@
foreign import ccall safe "hs_bindgen_7e70ff871972b4ee" hs_bindgen_7e70ff871972b4ee_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_subsurface_set_desync@
hs_bindgen_7e70ff871972b4ee ::
     RIP.Ptr WlSubsurface
  -> IO ()
hs_bindgen_7e70ff871972b4ee =
  RIP.fromFFIType hs_bindgen_7e70ff871972b4ee_base

{-| __C declaration:__ @wl_subsurface_set_desync@

    __defined at:__ @wayland-client-protocol.h 6454:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_desync ::
     RIP.Ptr WlSubsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO ()
wl_subsurface_set_desync =
  hs_bindgen_7e70ff871972b4ee

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_fixes_set_user_data@
foreign import ccall safe "hs_bindgen_5290cce9763b3c57" hs_bindgen_5290cce9763b3c57_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_fixes_set_user_data@
hs_bindgen_5290cce9763b3c57 ::
     RIP.Ptr WlFixes
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_5290cce9763b3c57 =
  RIP.fromFFIType hs_bindgen_5290cce9763b3c57_base

{-| __C declaration:__ @wl_fixes_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6475:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_set_user_data ::
     RIP.Ptr WlFixes
     -- ^ __C declaration:__ @wl_fixes@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_fixes_set_user_data = hs_bindgen_5290cce9763b3c57

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_fixes_get_user_data@
foreign import ccall safe "hs_bindgen_69787fcf98b763aa" hs_bindgen_69787fcf98b763aa_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_fixes_get_user_data@
hs_bindgen_69787fcf98b763aa ::
     RIP.Ptr WlFixes
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_69787fcf98b763aa =
  RIP.fromFFIType hs_bindgen_69787fcf98b763aa_base

{-| __C declaration:__ @wl_fixes_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6482:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_get_user_data ::
     RIP.Ptr WlFixes
     -- ^ __C declaration:__ @wl_fixes@
  -> IO (RIP.Ptr RIP.Void)
wl_fixes_get_user_data = hs_bindgen_69787fcf98b763aa

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_fixes_get_version@
foreign import ccall safe "hs_bindgen_4f0ff00948fcc40d" hs_bindgen_4f0ff00948fcc40d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_fixes_get_version@
hs_bindgen_4f0ff00948fcc40d ::
     RIP.Ptr WlFixes
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_4f0ff00948fcc40d =
  RIP.fromFFIType hs_bindgen_4f0ff00948fcc40d_base

{-| __C declaration:__ @wl_fixes_get_version@

    __defined at:__ @wayland-client-protocol.h 6488:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_get_version ::
     RIP.Ptr WlFixes
     -- ^ __C declaration:__ @wl_fixes@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_fixes_get_version = hs_bindgen_4f0ff00948fcc40d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_fixes_destroy@
foreign import ccall safe "hs_bindgen_f8f0ead293d52f77" hs_bindgen_f8f0ead293d52f77_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_fixes_destroy@
hs_bindgen_f8f0ead293d52f77 ::
     RIP.Ptr WlFixes
  -> IO ()
hs_bindgen_f8f0ead293d52f77 =
  RIP.fromFFIType hs_bindgen_f8f0ead293d52f77_base

{-| __C declaration:__ @wl_fixes_destroy@

    __defined at:__ @wayland-client-protocol.h 6497:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_destroy ::
     RIP.Ptr WlFixes
     -- ^ __C declaration:__ @wl_fixes@
  -> IO ()
wl_fixes_destroy = hs_bindgen_f8f0ead293d52f77

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_fixes_destroy_registry@
foreign import ccall safe "hs_bindgen_f65a9d6abf874493" hs_bindgen_f65a9d6abf874493_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_Safe_wl_fixes_destroy_registry@
hs_bindgen_f65a9d6abf874493 ::
     RIP.Ptr WlFixes
  -> RIP.Ptr WlRegistry
  -> IO ()
hs_bindgen_f65a9d6abf874493 =
  RIP.fromFFIType hs_bindgen_f65a9d6abf874493_base

{-| __C declaration:__ @wl_fixes_destroy_registry@

    __defined at:__ @wayland-client-protocol.h 6517:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_destroy_registry ::
     RIP.Ptr WlFixes
     -- ^ __C declaration:__ @wl_fixes@
  -> RIP.Ptr WlRegistry
     -- ^ __C declaration:__ @registry@
  -> IO ()
wl_fixes_destroy_registry =
  hs_bindgen_f65a9d6abf874493
