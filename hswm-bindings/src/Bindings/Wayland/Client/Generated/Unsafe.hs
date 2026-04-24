{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.Client.Generated.Unsafe
    ( Bindings.Wayland.Client.Generated.Unsafe.wl_event_queue_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_marshal_array_flags
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_marshal_array
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_create
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_create_wrapper
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_wrapper_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_marshal_array_constructor
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_marshal_array_constructor_versioned
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_add_listener
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_get_listener
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_add_dispatcher
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_get_id
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_set_tag
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_get_tag
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_get_class
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_get_interface
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_get_display
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_set_queue
    , Bindings.Wayland.Client.Generated.Unsafe.wl_proxy_get_queue
    , Bindings.Wayland.Client.Generated.Unsafe.wl_event_queue_get_name
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_connect
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_connect_to_fd
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_disconnect
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_get_fd
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_dispatch
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_dispatch_queue
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_dispatch_timeout
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_dispatch_queue_timeout
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_dispatch_queue_pending
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_dispatch_pending
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_get_error
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_get_protocol_error
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_flush
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_roundtrip_queue
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_roundtrip
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_create_queue
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_create_queue_with_name
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_prepare_read_queue
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_prepare_read
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_cancel_read
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_read_events
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_set_max_buffer_size
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_add_listener
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_sync
    , Bindings.Wayland.Client.Generated.Unsafe.wl_display_get_registry
    , Bindings.Wayland.Client.Generated.Unsafe.wl_registry_add_listener
    , Bindings.Wayland.Client.Generated.Unsafe.wl_registry_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_registry_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_registry_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_registry_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_registry_bind
    , Bindings.Wayland.Client.Generated.Unsafe.wl_callback_add_listener
    , Bindings.Wayland.Client.Generated.Unsafe.wl_callback_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_callback_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_callback_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_callback_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_compositor_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_compositor_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_compositor_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_compositor_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_compositor_create_surface
    , Bindings.Wayland.Client.Generated.Unsafe.wl_compositor_create_region
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shm_pool_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shm_pool_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shm_pool_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shm_pool_create_buffer
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shm_pool_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shm_pool_resize
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shm_add_listener
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shm_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shm_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shm_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shm_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shm_create_pool
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shm_release
    , Bindings.Wayland.Client.Generated.Unsafe.wl_buffer_add_listener
    , Bindings.Wayland.Client.Generated.Unsafe.wl_buffer_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_buffer_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_buffer_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_buffer_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_offer_add_listener
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_offer_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_offer_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_offer_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_offer_accept
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_offer_receive
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_offer_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_offer_finish
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_offer_set_actions
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_source_add_listener
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_source_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_source_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_source_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_source_offer
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_source_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_source_set_actions
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_device_add_listener
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_device_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_device_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_device_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_device_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_device_start_drag
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_device_set_selection
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_device_release
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_device_manager_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_device_manager_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_device_manager_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_device_manager_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_device_manager_create_data_source
    , Bindings.Wayland.Client.Generated.Unsafe.wl_data_device_manager_get_data_device
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shell_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shell_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shell_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shell_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shell_get_shell_surface
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shell_surface_add_listener
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shell_surface_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shell_surface_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shell_surface_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shell_surface_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shell_surface_pong
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shell_surface_move
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shell_surface_resize
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shell_surface_set_toplevel
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shell_surface_set_transient
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shell_surface_set_fullscreen
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shell_surface_set_popup
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shell_surface_set_maximized
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shell_surface_set_title
    , Bindings.Wayland.Client.Generated.Unsafe.wl_shell_surface_set_class
    , Bindings.Wayland.Client.Generated.Unsafe.wl_surface_add_listener
    , Bindings.Wayland.Client.Generated.Unsafe.wl_surface_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_surface_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_surface_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_surface_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_surface_attach
    , Bindings.Wayland.Client.Generated.Unsafe.wl_surface_damage
    , Bindings.Wayland.Client.Generated.Unsafe.wl_surface_frame
    , Bindings.Wayland.Client.Generated.Unsafe.wl_surface_set_opaque_region
    , Bindings.Wayland.Client.Generated.Unsafe.wl_surface_set_input_region
    , Bindings.Wayland.Client.Generated.Unsafe.wl_surface_commit
    , Bindings.Wayland.Client.Generated.Unsafe.wl_surface_set_buffer_transform
    , Bindings.Wayland.Client.Generated.Unsafe.wl_surface_set_buffer_scale
    , Bindings.Wayland.Client.Generated.Unsafe.wl_surface_damage_buffer
    , Bindings.Wayland.Client.Generated.Unsafe.wl_surface_offset
    , Bindings.Wayland.Client.Generated.Unsafe.wl_seat_add_listener
    , Bindings.Wayland.Client.Generated.Unsafe.wl_seat_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_seat_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_seat_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_seat_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_seat_get_pointer
    , Bindings.Wayland.Client.Generated.Unsafe.wl_seat_get_keyboard
    , Bindings.Wayland.Client.Generated.Unsafe.wl_seat_get_touch
    , Bindings.Wayland.Client.Generated.Unsafe.wl_seat_release
    , Bindings.Wayland.Client.Generated.Unsafe.wl_pointer_add_listener
    , Bindings.Wayland.Client.Generated.Unsafe.wl_pointer_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_pointer_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_pointer_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_pointer_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_pointer_set_cursor
    , Bindings.Wayland.Client.Generated.Unsafe.wl_pointer_release
    , Bindings.Wayland.Client.Generated.Unsafe.wl_keyboard_add_listener
    , Bindings.Wayland.Client.Generated.Unsafe.wl_keyboard_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_keyboard_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_keyboard_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_keyboard_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_keyboard_release
    , Bindings.Wayland.Client.Generated.Unsafe.wl_touch_add_listener
    , Bindings.Wayland.Client.Generated.Unsafe.wl_touch_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_touch_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_touch_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_touch_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_touch_release
    , Bindings.Wayland.Client.Generated.Unsafe.wl_output_add_listener
    , Bindings.Wayland.Client.Generated.Unsafe.wl_output_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_output_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_output_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_output_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_output_release
    , Bindings.Wayland.Client.Generated.Unsafe.wl_region_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_region_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_region_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_region_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_region_add
    , Bindings.Wayland.Client.Generated.Unsafe.wl_region_subtract
    , Bindings.Wayland.Client.Generated.Unsafe.wl_subcompositor_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_subcompositor_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_subcompositor_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_subcompositor_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_subcompositor_get_subsurface
    , Bindings.Wayland.Client.Generated.Unsafe.wl_subsurface_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_subsurface_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_subsurface_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_subsurface_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_subsurface_set_position
    , Bindings.Wayland.Client.Generated.Unsafe.wl_subsurface_place_above
    , Bindings.Wayland.Client.Generated.Unsafe.wl_subsurface_place_below
    , Bindings.Wayland.Client.Generated.Unsafe.wl_subsurface_set_sync
    , Bindings.Wayland.Client.Generated.Unsafe.wl_subsurface_set_desync
    , Bindings.Wayland.Client.Generated.Unsafe.wl_fixes_set_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_fixes_get_user_data
    , Bindings.Wayland.Client.Generated.Unsafe.wl_fixes_get_version
    , Bindings.Wayland.Client.Generated.Unsafe.wl_fixes_destroy
    , Bindings.Wayland.Client.Generated.Unsafe.wl_fixes_destroy_registry
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
  , "void hs_bindgen_c0388837cb3840ed ("
  , "  struct wl_event_queue *arg1"
  , ")"
  , "{"
  , "  (wl_event_queue_destroy)(arg1);"
  , "}"
  , "struct wl_proxy *hs_bindgen_6d7017b940b017b9 ("
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
  , "void hs_bindgen_68044c025b9e3280 ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  union wl_argument *arg3"
  , ")"
  , "{"
  , "  (wl_proxy_marshal_array)(arg1, arg2, arg3);"
  , "}"
  , "struct wl_proxy *hs_bindgen_7393b25844c10e75 ("
  , "  struct wl_proxy *arg1,"
  , "  struct wl_interface const *arg2"
  , ")"
  , "{"
  , "  return (wl_proxy_create)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_b7e95dd2fa3f7dfe ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_create_wrapper)(arg1);"
  , "}"
  , "void hs_bindgen_d63473222f7a24ec ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  (wl_proxy_wrapper_destroy)(arg1);"
  , "}"
  , "struct wl_proxy *hs_bindgen_6d03300682f7f682 ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  union wl_argument *arg3,"
  , "  struct wl_interface const *arg4"
  , ")"
  , "{"
  , "  return (wl_proxy_marshal_array_constructor)(arg1, arg2, arg3, arg4);"
  , "}"
  , "struct wl_proxy *hs_bindgen_423fddcc59ee334d ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  union wl_argument *arg3,"
  , "  struct wl_interface const *arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  return (wl_proxy_marshal_array_constructor_versioned)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_b743cdc366fc3faa ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  (wl_proxy_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_7690cc4901000e4a ("
  , "  struct wl_proxy *arg1,"
  , "  void (**arg2) (void),"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_proxy_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void const *hs_bindgen_0492013db798ee67 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_listener)(arg1);"
  , "}"
  , "signed int hs_bindgen_0637c5404c1cd12b ("
  , "  struct wl_proxy *arg1,"
  , "  wl_dispatcher_func_t arg2,"
  , "  void const *arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (wl_proxy_add_dispatcher)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_50a01d3fde30456a ("
  , "  struct wl_proxy *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_proxy_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_c8bbd78eaaa34308 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_976d1db71f9ecc8c ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_version)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_6ed7b0ab40f0325d ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_id)(arg1);"
  , "}"
  , "void hs_bindgen_cdd18c99eed1321f ("
  , "  struct wl_proxy *arg1,"
  , "  char const *const *arg2"
  , ")"
  , "{"
  , "  (wl_proxy_set_tag)(arg1, arg2);"
  , "}"
  , "char const *const *hs_bindgen_b9bc682a1c93f78c ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_tag)(arg1);"
  , "}"
  , "char const *hs_bindgen_abf1dc1eb368aca7 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_class)(arg1);"
  , "}"
  , "struct wl_interface const *hs_bindgen_0118e949dee574d8 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_interface)(arg1);"
  , "}"
  , "struct wl_display *hs_bindgen_7b6673ed9ab7c9f0 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_display)(arg1);"
  , "}"
  , "void hs_bindgen_7533da8ddfa932fa ("
  , "  struct wl_proxy *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  (wl_proxy_set_queue)(arg1, arg2);"
  , "}"
  , "struct wl_event_queue *hs_bindgen_3e030cfe015f0f9f ("
  , "  struct wl_proxy const *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_queue)(arg1);"
  , "}"
  , "char const *hs_bindgen_41c2a84b6c8dafd2 ("
  , "  struct wl_event_queue const *arg1"
  , ")"
  , "{"
  , "  return (wl_event_queue_get_name)(arg1);"
  , "}"
  , "struct wl_display *hs_bindgen_c5e19798bc4639dc ("
  , "  char const *arg1"
  , ")"
  , "{"
  , "  return (wl_display_connect)(arg1);"
  , "}"
  , "struct wl_display *hs_bindgen_55d60da342655531 ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return (wl_display_connect_to_fd)(arg1);"
  , "}"
  , "void hs_bindgen_dd5abd9167723c2d ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  (wl_display_disconnect)(arg1);"
  , "}"
  , "signed int hs_bindgen_c74c6e8c40f440e8 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_fd)(arg1);"
  , "}"
  , "signed int hs_bindgen_12f67434b716a725 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_dispatch)(arg1);"
  , "}"
  , "signed int hs_bindgen_a21de4859d9869f0 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_queue)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_6e062bfb8b154cfc ("
  , "  struct wl_display *arg1,"
  , "  struct timespec const *arg2"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_timeout)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_38b3e50b2e0d1243 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2,"
  , "  struct timespec const *arg3"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_queue_timeout)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_c20c179814201dae ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_queue_pending)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_23485b881cfcbc16 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_pending)(arg1);"
  , "}"
  , "signed int hs_bindgen_2cb713d19866b580 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_error)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_a4c908588761da56 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_interface const **arg2,"
  , "  uint32_t *arg3"
  , ")"
  , "{"
  , "  return (wl_display_get_protocol_error)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_0f30a71f68b6ddd0 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_flush)(arg1);"
  , "}"
  , "signed int hs_bindgen_00ee8f58a7f82cd5 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_roundtrip_queue)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_5348f12bb437b82b ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_roundtrip)(arg1);"
  , "}"
  , "struct wl_event_queue *hs_bindgen_7333b63fccff9722 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_create_queue)(arg1);"
  , "}"
  , "struct wl_event_queue *hs_bindgen_31acb16b2e1f41fd ("
  , "  struct wl_display *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return (wl_display_create_queue_with_name)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_3f796bd9eb943ef7 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_prepare_read_queue)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_cc8be32e0b40198f ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_prepare_read)(arg1);"
  , "}"
  , "void hs_bindgen_838b92c5aaec4742 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  (wl_display_cancel_read)(arg1);"
  , "}"
  , "signed int hs_bindgen_e5f95d6ef6fe7278 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_read_events)(arg1);"
  , "}"
  , "void hs_bindgen_8d7cab53e4fcb170 ("
  , "  struct wl_display *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  (wl_display_set_max_buffer_size)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_bf29f3eee179ff1d ("
  , "  struct wl_display *arg1,"
  , "  struct wl_display_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_display_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_0bae63f38098a27f ("
  , "  struct wl_display *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_display_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_587917b549defda5 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_a3d56d3aaedd71a9 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_version)(arg1);"
  , "}"
  , "struct wl_callback *hs_bindgen_7703cd12322e5c25 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_sync)(arg1);"
  , "}"
  , "struct wl_registry *hs_bindgen_363a017a6f90fc52 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_registry)(arg1);"
  , "}"
  , "signed int hs_bindgen_d915ca2070ee32ed ("
  , "  struct wl_registry *arg1,"
  , "  struct wl_registry_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_registry_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_ec2d1a3930e9f0c4 ("
  , "  struct wl_registry *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_registry_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_14eea5d36faa779e ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  return (wl_registry_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_099845409eabb519 ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  return (wl_registry_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_c513efa16d46d8f0 ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  (wl_registry_destroy)(arg1);"
  , "}"
  , "void *hs_bindgen_4dd74d23d4f8da2e ("
  , "  struct wl_registry *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_interface const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return (wl_registry_bind)(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_7203537434096f0f ("
  , "  struct wl_callback *arg1,"
  , "  struct wl_callback_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_callback_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_c750f3f7dcc0886a ("
  , "  struct wl_callback *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_callback_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_b432aa3c2929faae ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  return (wl_callback_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_365435cff9c642a6 ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  return (wl_callback_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_df73d99ec7bb43ac ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  (wl_callback_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_4ac544d5d160691e ("
  , "  struct wl_compositor *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_compositor_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_3b2c70650227fe52 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_92a66bbe2c003c69 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_901061393c1d1849 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  (wl_compositor_destroy)(arg1);"
  , "}"
  , "struct wl_surface *hs_bindgen_15ca37c6fa1b6d61 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_create_surface)(arg1);"
  , "}"
  , "struct wl_region *hs_bindgen_43461638ecc75908 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_create_region)(arg1);"
  , "}"
  , "void hs_bindgen_0677cfa1412c5a14 ("
  , "  struct wl_shm_pool *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shm_pool_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_89c4138c8ffe03a0 ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_pool_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_f5fb78c241356467 ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_pool_get_version)(arg1);"
  , "}"
  , "struct wl_buffer *hs_bindgen_3974b85f9ba8b605 ("
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
  , "void hs_bindgen_5889ab30206040a3 ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  (wl_shm_pool_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_8a627e0c9e453b06 ("
  , "  struct wl_shm_pool *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (wl_shm_pool_resize)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_33e3f1723567a99f ("
  , "  struct wl_shm *arg1,"
  , "  struct wl_shm_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_shm_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_99a1deee7314866a ("
  , "  struct wl_shm *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shm_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_ae1ff1fe07e8a740 ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_cc3dcc44caccfeee ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_5ef425827ecd834d ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  (wl_shm_destroy)(arg1);"
  , "}"
  , "struct wl_shm_pool *hs_bindgen_8c4086f59ca3a872 ("
  , "  struct wl_shm *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return (wl_shm_create_pool)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_d88560bdb97810bb ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  (wl_shm_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_1d576d28065eb17d ("
  , "  struct wl_buffer *arg1,"
  , "  struct wl_buffer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_buffer_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_91126bb1743aad39 ("
  , "  struct wl_buffer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_buffer_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_278cb52b6692d44e ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  return (wl_buffer_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_6d1433669435b309 ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  return (wl_buffer_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_276fbe8cb0850b69 ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  (wl_buffer_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_ea5246eb7890d417 ("
  , "  struct wl_data_offer *arg1,"
  , "  struct wl_data_offer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_data_offer_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_d6caffdd1217e3ae ("
  , "  struct wl_data_offer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_offer_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_09fde85cb91417d4 ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return (wl_data_offer_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_ed45dcc66b59f0f0 ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return (wl_data_offer_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_6ff8e4db332d0aa8 ("
  , "  struct wl_data_offer *arg1,"
  , "  uint32_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  (wl_data_offer_accept)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_885275e21716e677 ("
  , "  struct wl_data_offer *arg1,"
  , "  char const *arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (wl_data_offer_receive)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_2fb57445cbb7e00b ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  (wl_data_offer_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_7850c44aa5b02ea1 ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  (wl_data_offer_finish)(arg1);"
  , "}"
  , "void hs_bindgen_c55195529c24ef90 ("
  , "  struct wl_data_offer *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (wl_data_offer_set_actions)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_e566cd1d98199064 ("
  , "  struct wl_data_source *arg1,"
  , "  struct wl_data_source_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_data_source_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_2fd0ff3cc9436e9c ("
  , "  struct wl_data_source *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_source_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_a26207178f093080 ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  return (wl_data_source_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_97dec80f0ad00430 ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  return (wl_data_source_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_610b56020eead1da ("
  , "  struct wl_data_source *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (wl_data_source_offer)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_96f458e272b44a47 ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  (wl_data_source_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_5f9651e1c63205f7 ("
  , "  struct wl_data_source *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (wl_data_source_set_actions)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_08bce99837c93787 ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_device_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_data_device_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_006d301ba3a52a5e ("
  , "  struct wl_data_device *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_device_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_1037ea72f6fce511 ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_65ec0d864e846d2e ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_d98d70204a294872 ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  (wl_data_device_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_39d2bb3f7083d7c2 ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_source *arg2,"
  , "  struct wl_surface *arg3,"
  , "  struct wl_surface *arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  (wl_data_device_start_drag)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_4382577358af4b8a ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_source *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (wl_data_device_set_selection)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_14e7bbd785e48b18 ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  (wl_data_device_release)(arg1);"
  , "}"
  , "void hs_bindgen_f462a3ff1a547ac3 ("
  , "  struct wl_data_device_manager *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_device_manager_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_cfe0dc032d08b5d2 ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_c8463b75e767c5e9 ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_21456986b335e177 ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  (wl_data_device_manager_destroy)(arg1);"
  , "}"
  , "struct wl_data_source *hs_bindgen_34a273fda3051d34 ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_create_data_source)(arg1);"
  , "}"
  , "struct wl_data_device *hs_bindgen_2f9e9140eab18d0b ("
  , "  struct wl_data_device_manager *arg1,"
  , "  struct wl_seat *arg2"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_get_data_device)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_4e4c7266fcb1eb23 ("
  , "  struct wl_shell *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shell_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_5d871f273a55b163 ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_8637c714c31cd402 ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_cf7bb0680ad077d5 ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  (wl_shell_destroy)(arg1);"
  , "}"
  , "struct wl_shell_surface *hs_bindgen_c2297ce9ae229360 ("
  , "  struct wl_shell *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (wl_shell_get_shell_surface)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_954479603f8329bd ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_shell_surface_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_shell_surface_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_547a1a3995c63eca ("
  , "  struct wl_shell_surface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_0ead2c2f5c314b54 ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_surface_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_12a934bba84c3a62 ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_surface_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_2eb4ae1be699ebb9 ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  (wl_shell_surface_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_2d7c2aa3da9df105 ("
  , "  struct wl_shell_surface *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_pong)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_a8f9a1895878c2a2 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (wl_shell_surface_move)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_4231c259adaa299d ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  (wl_shell_surface_resize)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_1e6e0d3a382170e3 ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_toplevel)(arg1);"
  , "}"
  , "void hs_bindgen_5ac5efab1cab1aeb ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_surface *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_transient)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_c28dc1f5fef8800b ("
  , "  struct wl_shell_surface *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3,"
  , "  struct wl_output *arg4"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_fullscreen)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_545dc1d9911af50d ("
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
  , "void hs_bindgen_99f8d3be3d6dd675 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_output *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_maximized)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_260f4c6e77a72f9b ("
  , "  struct wl_shell_surface *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_title)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_6265669007a918e2 ("
  , "  struct wl_shell_surface *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_class)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_1d38b390046f5669 ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_surface_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_surface_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_164334442259c81c ("
  , "  struct wl_surface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_bf81736f8bacc49b ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_surface_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_ea892a7db75826a1 ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_surface_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_fb464699899cd00e ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  (wl_surface_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_f058a4ec3eb0bd81 ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_buffer *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4"
  , ")"
  , "{"
  , "  (wl_surface_attach)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_e67d2e69a4529473 ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_surface_damage)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "struct wl_callback *hs_bindgen_349b0a3b9f1abc41 ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_surface_frame)(arg1);"
  , "}"
  , "void hs_bindgen_ad9eccc3b6b156f4 ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_region *arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_opaque_region)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_3353bcd502b9fee1 ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_region *arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_input_region)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_27338c576ab202ac ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  (wl_surface_commit)(arg1);"
  , "}"
  , "void hs_bindgen_be71d8c01b214e26 ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_buffer_transform)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_177a44fe834fb37b ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_buffer_scale)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_2aa56255948e63c7 ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_surface_damage_buffer)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_dd901bddc9b47863 ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (wl_surface_offset)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_7a6480fb86b10913 ("
  , "  struct wl_seat *arg1,"
  , "  struct wl_seat_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_seat_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_8eda8aec3c115e6b ("
  , "  struct wl_seat *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_seat_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_e997631dc09aee2e ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_21400e8b3fb632a1 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_690b8ff7f2387af5 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  (wl_seat_destroy)(arg1);"
  , "}"
  , "struct wl_pointer *hs_bindgen_6c1ffd009deddb3c ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_pointer)(arg1);"
  , "}"
  , "struct wl_keyboard *hs_bindgen_338c4477e8e554fe ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_keyboard)(arg1);"
  , "}"
  , "struct wl_touch *hs_bindgen_95d89b33dc8cf8e8 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_touch)(arg1);"
  , "}"
  , "void hs_bindgen_47784b3cdbeb35e0 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  (wl_seat_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_e3a756f6757d7896 ("
  , "  struct wl_pointer *arg1,"
  , "  struct wl_pointer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_pointer_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_0a47af221bf6ed6f ("
  , "  struct wl_pointer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_pointer_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_2912b040d73727cb ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return (wl_pointer_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_827101fd7efdfda9 ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return (wl_pointer_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_9fba91c1f511c785 ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  (wl_pointer_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_ba1ba653297db2b2 ("
  , "  struct wl_pointer *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_surface *arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_pointer_set_cursor)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_4f8702919e12249f ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  (wl_pointer_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_1b73cdca489cad45 ("
  , "  struct wl_keyboard *arg1,"
  , "  struct wl_keyboard_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_keyboard_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_558cd2337ec81157 ("
  , "  struct wl_keyboard *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_keyboard_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_bf65382390466fe8 ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return (wl_keyboard_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_6b83a04234ac1b3c ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return (wl_keyboard_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_526329ca067a7411 ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  (wl_keyboard_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_1d88dbf9293fb0a2 ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  (wl_keyboard_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_5b386a3595042abd ("
  , "  struct wl_touch *arg1,"
  , "  struct wl_touch_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_touch_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_d61c5e13a95d9d99 ("
  , "  struct wl_touch *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_touch_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_b2ef5cf0329b5752 ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return (wl_touch_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_dcde1833312d24ac ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return (wl_touch_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_3acf9cb883de85ec ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  (wl_touch_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_f6c88fbdd8492a0d ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  (wl_touch_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_05706740de558f4c ("
  , "  struct wl_output *arg1,"
  , "  struct wl_output_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_output_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_92a5ee30cfe56481 ("
  , "  struct wl_output *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_output_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_8a38d30444034e5d ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return (wl_output_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_6e8c234869fcf3ec ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return (wl_output_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_bf43c8bf0591fd0a ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  (wl_output_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_ab07eb8b7ec72840 ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  (wl_output_release)(arg1);"
  , "}"
  , "void hs_bindgen_82825f8930c2ca34 ("
  , "  struct wl_region *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_region_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_a1211daa5c5cb8cf ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  return (wl_region_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_736a7c402e32957f ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  return (wl_region_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_75d43b8eee224193 ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  (wl_region_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_1661545efe194fd5 ("
  , "  struct wl_region *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_region_add)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_042ccfa17db116dd ("
  , "  struct wl_region *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_region_subtract)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_5dcb0c963e42b98d ("
  , "  struct wl_subcompositor *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_subcompositor_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_92061dd23cbaedd3 ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  return (wl_subcompositor_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_8c9e6d18efe00b64 ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  return (wl_subcompositor_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_afd334eea0d39898 ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  (wl_subcompositor_destroy)(arg1);"
  , "}"
  , "struct wl_subsurface *hs_bindgen_0a0bd92fd58bd78a ("
  , "  struct wl_subcompositor *arg1,"
  , "  struct wl_surface *arg2,"
  , "  struct wl_surface *arg3"
  , ")"
  , "{"
  , "  return (wl_subcompositor_get_subsurface)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_c7aca1a502fb200e ("
  , "  struct wl_subsurface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_subsurface_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_2cee939f9c08f68c ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return (wl_subsurface_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_cd1627957a6faa84 ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return (wl_subsurface_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_293b99ea7e6090d0 ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  (wl_subsurface_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_e085bdfd656e7ab7 ("
  , "  struct wl_subsurface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (wl_subsurface_set_position)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_26240ec5ec861980 ("
  , "  struct wl_subsurface *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  (wl_subsurface_place_above)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_b793e1b7f6eea854 ("
  , "  struct wl_subsurface *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  (wl_subsurface_place_below)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_b61ba3819c8344eb ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  (wl_subsurface_set_sync)(arg1);"
  , "}"
  , "void hs_bindgen_5ea901b11a239386 ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  (wl_subsurface_set_desync)(arg1);"
  , "}"
  , "void hs_bindgen_48bf43869a6842eb ("
  , "  struct wl_fixes *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_fixes_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_90db223121eeaaca ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  return (wl_fixes_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_3ef376c297cebd75 ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  return (wl_fixes_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_4783446e642c8297 ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  (wl_fixes_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_6b5104feef7f97e6 ("
  , "  struct wl_fixes *arg1,"
  , "  struct wl_registry *arg2"
  , ")"
  , "{"
  , "  (wl_fixes_destroy_registry)(arg1, arg2);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_event_queue_destroy@
foreign import ccall unsafe "hs_bindgen_c0388837cb3840ed" hs_bindgen_c0388837cb3840ed_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_event_queue_destroy@
hs_bindgen_c0388837cb3840ed ::
     RIP.Ptr Wl_event_queue
  -> IO ()
hs_bindgen_c0388837cb3840ed =
  RIP.fromFFIType hs_bindgen_c0388837cb3840ed_base

{-| __C declaration:__ @wl_event_queue_destroy@

    __defined at:__ @wayland-client-core.h 130:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_event_queue_destroy ::
     RIP.Ptr Wl_event_queue
     -- ^ __C declaration:__ @queue@
  -> IO ()
wl_event_queue_destroy = hs_bindgen_c0388837cb3840ed

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_marshal_array_flags@
foreign import ccall unsafe "hs_bindgen_6d7017b940b017b9" hs_bindgen_6d7017b940b017b9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_marshal_array_flags@
hs_bindgen_6d7017b940b017b9 ::
     RIP.Ptr Wl_proxy
  -> HsBindgen.Runtime.LibC.Word32
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument
  -> IO (RIP.Ptr Wl_proxy)
hs_bindgen_6d7017b940b017b9 =
  RIP.fromFFIType hs_bindgen_6d7017b940b017b9_base

{-| __C declaration:__ @wl_proxy_marshal_array_flags@

    __defined at:__ @wayland-client-core.h 139:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
  hs_bindgen_6d7017b940b017b9

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_marshal_array@
foreign import ccall unsafe "hs_bindgen_68044c025b9e3280" hs_bindgen_68044c025b9e3280_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_marshal_array@
hs_bindgen_68044c025b9e3280 ::
     RIP.Ptr Wl_proxy
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument
  -> IO ()
hs_bindgen_68044c025b9e3280 =
  RIP.fromFFIType hs_bindgen_68044c025b9e3280_base

{-| __C declaration:__ @wl_proxy_marshal_array@

    __defined at:__ @wayland-client-core.h 149:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_marshal_array ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @p@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @opcode@
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument
     -- ^ __C declaration:__ @args@
  -> IO ()
wl_proxy_marshal_array = hs_bindgen_68044c025b9e3280

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_create@
foreign import ccall unsafe "hs_bindgen_7393b25844c10e75" hs_bindgen_7393b25844c10e75_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_create@
hs_bindgen_7393b25844c10e75 ::
     RIP.Ptr Wl_proxy
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
  -> IO (RIP.Ptr Wl_proxy)
hs_bindgen_7393b25844c10e75 =
  RIP.fromFFIType hs_bindgen_7393b25844c10e75_base

{-| __C declaration:__ @wl_proxy_create@

    __defined at:__ @wayland-client-core.h 153:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_create ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @factory@
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
     -- ^ __C declaration:__ @interface@
  -> IO (RIP.Ptr Wl_proxy)
wl_proxy_create = hs_bindgen_7393b25844c10e75

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_create_wrapper@
foreign import ccall unsafe "hs_bindgen_b7e95dd2fa3f7dfe" hs_bindgen_b7e95dd2fa3f7dfe_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_create_wrapper@
hs_bindgen_b7e95dd2fa3f7dfe ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_b7e95dd2fa3f7dfe =
  RIP.fromFFIType hs_bindgen_b7e95dd2fa3f7dfe_base

{-| __C declaration:__ @wl_proxy_create_wrapper@

    __defined at:__ @wayland-client-core.h 157:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_create_wrapper ::
     RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr RIP.Void)
wl_proxy_create_wrapper = hs_bindgen_b7e95dd2fa3f7dfe

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_wrapper_destroy@
foreign import ccall unsafe "hs_bindgen_d63473222f7a24ec" hs_bindgen_d63473222f7a24ec_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_wrapper_destroy@
hs_bindgen_d63473222f7a24ec ::
     RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_d63473222f7a24ec =
  RIP.fromFFIType hs_bindgen_d63473222f7a24ec_base

{-| __C declaration:__ @wl_proxy_wrapper_destroy@

    __defined at:__ @wayland-client-core.h 160:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_wrapper_destroy ::
     RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @proxy_wrapper@
  -> IO ()
wl_proxy_wrapper_destroy =
  hs_bindgen_d63473222f7a24ec

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_marshal_array_constructor@
foreign import ccall unsafe "hs_bindgen_6d03300682f7f682" hs_bindgen_6d03300682f7f682_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_marshal_array_constructor@
hs_bindgen_6d03300682f7f682 ::
     RIP.Ptr Wl_proxy
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
  -> IO (RIP.Ptr Wl_proxy)
hs_bindgen_6d03300682f7f682 =
  RIP.fromFFIType hs_bindgen_6d03300682f7f682_base

{-| __C declaration:__ @wl_proxy_marshal_array_constructor@

    __defined at:__ @wayland-client-core.h 176:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
  hs_bindgen_6d03300682f7f682

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_marshal_array_constructor_versioned@
foreign import ccall unsafe "hs_bindgen_423fddcc59ee334d" hs_bindgen_423fddcc59ee334d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_marshal_array_constructor_versioned@
hs_bindgen_423fddcc59ee334d ::
     RIP.Ptr Wl_proxy
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr Wl_proxy)
hs_bindgen_423fddcc59ee334d =
  RIP.fromFFIType hs_bindgen_423fddcc59ee334d_base

{-| __C declaration:__ @wl_proxy_marshal_array_constructor_versioned@

    __defined at:__ @wayland-client-core.h 181:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
  hs_bindgen_423fddcc59ee334d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_destroy@
foreign import ccall unsafe "hs_bindgen_b743cdc366fc3faa" hs_bindgen_b743cdc366fc3faa_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_destroy@
hs_bindgen_b743cdc366fc3faa ::
     RIP.Ptr Wl_proxy
  -> IO ()
hs_bindgen_b743cdc366fc3faa =
  RIP.fromFFIType hs_bindgen_b743cdc366fc3faa_base

{-| __C declaration:__ @wl_proxy_destroy@

    __defined at:__ @wayland-client-core.h 188:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_destroy ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO ()
wl_proxy_destroy = hs_bindgen_b743cdc366fc3faa

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_add_listener@
foreign import ccall unsafe "hs_bindgen_7690cc4901000e4a" hs_bindgen_7690cc4901000e4a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_add_listener@
hs_bindgen_7690cc4901000e4a ::
     RIP.Ptr Wl_proxy
  -> RIP.Ptr (RIP.FunPtr (IO ()))
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_7690cc4901000e4a =
  RIP.fromFFIType hs_bindgen_7690cc4901000e4a_base

{-| __C declaration:__ @wl_proxy_add_listener@

    __defined at:__ @wayland-client-core.h 191:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_add_listener ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> RIP.Ptr (RIP.FunPtr (IO ()))
     -- ^ __C declaration:__ @implementation@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_proxy_add_listener = hs_bindgen_7690cc4901000e4a

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_listener@
foreign import ccall unsafe "hs_bindgen_0492013db798ee67" hs_bindgen_0492013db798ee67_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_listener@
hs_bindgen_0492013db798ee67 ::
     RIP.Ptr Wl_proxy
  -> IO (PtrConst.PtrConst RIP.Void)
hs_bindgen_0492013db798ee67 =
  RIP.fromFFIType hs_bindgen_0492013db798ee67_base

{-| __C declaration:__ @wl_proxy_get_listener@

    __defined at:__ @wayland-client-core.h 195:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_listener ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst RIP.Void)
wl_proxy_get_listener = hs_bindgen_0492013db798ee67

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_add_dispatcher@
foreign import ccall unsafe "hs_bindgen_0637c5404c1cd12b" hs_bindgen_0637c5404c1cd12b_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_add_dispatcher@
hs_bindgen_0637c5404c1cd12b ::
     RIP.Ptr Wl_proxy
  -> Bindings.Wayland.Util.Generated.Wl_dispatcher_func_t
  -> PtrConst.PtrConst RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_0637c5404c1cd12b =
  RIP.fromFFIType hs_bindgen_0637c5404c1cd12b_base

{-| __C declaration:__ @wl_proxy_add_dispatcher@

    __defined at:__ @wayland-client-core.h 198:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
wl_proxy_add_dispatcher = hs_bindgen_0637c5404c1cd12b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_set_user_data@
foreign import ccall unsafe "hs_bindgen_50a01d3fde30456a" hs_bindgen_50a01d3fde30456a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_set_user_data@
hs_bindgen_50a01d3fde30456a ::
     RIP.Ptr Wl_proxy
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_50a01d3fde30456a =
  RIP.fromFFIType hs_bindgen_50a01d3fde30456a_base

{-| __C declaration:__ @wl_proxy_set_user_data@

    __defined at:__ @wayland-client-core.h 203:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_set_user_data ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_proxy_set_user_data = hs_bindgen_50a01d3fde30456a

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_user_data@
foreign import ccall unsafe "hs_bindgen_c8bbd78eaaa34308" hs_bindgen_c8bbd78eaaa34308_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_user_data@
hs_bindgen_c8bbd78eaaa34308 ::
     RIP.Ptr Wl_proxy
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_c8bbd78eaaa34308 =
  RIP.fromFFIType hs_bindgen_c8bbd78eaaa34308_base

{-| __C declaration:__ @wl_proxy_get_user_data@

    __defined at:__ @wayland-client-core.h 206:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_user_data ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr RIP.Void)
wl_proxy_get_user_data = hs_bindgen_c8bbd78eaaa34308

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_version@
foreign import ccall unsafe "hs_bindgen_976d1db71f9ecc8c" hs_bindgen_976d1db71f9ecc8c_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_version@
hs_bindgen_976d1db71f9ecc8c ::
     RIP.Ptr Wl_proxy
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_976d1db71f9ecc8c =
  RIP.fromFFIType hs_bindgen_976d1db71f9ecc8c_base

{-| __C declaration:__ @wl_proxy_get_version@

    __defined at:__ @wayland-client-core.h 209:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_version ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_proxy_get_version = hs_bindgen_976d1db71f9ecc8c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_id@
foreign import ccall unsafe "hs_bindgen_6ed7b0ab40f0325d" hs_bindgen_6ed7b0ab40f0325d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_id@
hs_bindgen_6ed7b0ab40f0325d ::
     RIP.Ptr Wl_proxy
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_6ed7b0ab40f0325d =
  RIP.fromFFIType hs_bindgen_6ed7b0ab40f0325d_base

{-| __C declaration:__ @wl_proxy_get_id@

    __defined at:__ @wayland-client-core.h 212:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_id ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_proxy_get_id = hs_bindgen_6ed7b0ab40f0325d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_set_tag@
foreign import ccall unsafe "hs_bindgen_cdd18c99eed1321f" hs_bindgen_cdd18c99eed1321f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_set_tag@
hs_bindgen_cdd18c99eed1321f ::
     RIP.Ptr Wl_proxy
  -> PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar)
  -> IO ()
hs_bindgen_cdd18c99eed1321f =
  RIP.fromFFIType hs_bindgen_cdd18c99eed1321f_base

{-| __C declaration:__ @wl_proxy_set_tag@

    __defined at:__ @wayland-client-core.h 215:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_set_tag ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar)
     -- ^ __C declaration:__ @tag@
  -> IO ()
wl_proxy_set_tag = hs_bindgen_cdd18c99eed1321f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_tag@
foreign import ccall unsafe "hs_bindgen_b9bc682a1c93f78c" hs_bindgen_b9bc682a1c93f78c_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_tag@
hs_bindgen_b9bc682a1c93f78c ::
     RIP.Ptr Wl_proxy
  -> IO (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar))
hs_bindgen_b9bc682a1c93f78c =
  RIP.fromFFIType hs_bindgen_b9bc682a1c93f78c_base

{-| __C declaration:__ @wl_proxy_get_tag@

    __defined at:__ @wayland-client-core.h 219:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_tag ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar))
wl_proxy_get_tag = hs_bindgen_b9bc682a1c93f78c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_class@
foreign import ccall unsafe "hs_bindgen_abf1dc1eb368aca7" hs_bindgen_abf1dc1eb368aca7_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_class@
hs_bindgen_abf1dc1eb368aca7 ::
     RIP.Ptr Wl_proxy
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_abf1dc1eb368aca7 =
  RIP.fromFFIType hs_bindgen_abf1dc1eb368aca7_base

{-| __C declaration:__ @wl_proxy_get_class@

    __defined at:__ @wayland-client-core.h 222:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_class ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst RIP.CChar)
wl_proxy_get_class = hs_bindgen_abf1dc1eb368aca7

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_interface@
foreign import ccall unsafe "hs_bindgen_0118e949dee574d8" hs_bindgen_0118e949dee574d8_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_interface@
hs_bindgen_0118e949dee574d8 ::
     RIP.Ptr Wl_proxy
  -> IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_0118e949dee574d8 =
  RIP.fromFFIType hs_bindgen_0118e949dee574d8_base

{-| __C declaration:__ @wl_proxy_get_interface@

    __defined at:__ @wayland-client-core.h 225:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_interface ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
wl_proxy_get_interface = hs_bindgen_0118e949dee574d8

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_display@
foreign import ccall unsafe "hs_bindgen_7b6673ed9ab7c9f0" hs_bindgen_7b6673ed9ab7c9f0_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_display@
hs_bindgen_7b6673ed9ab7c9f0 ::
     RIP.Ptr Wl_proxy
  -> IO (RIP.Ptr Wl_display)
hs_bindgen_7b6673ed9ab7c9f0 =
  RIP.fromFFIType hs_bindgen_7b6673ed9ab7c9f0_base

{-| __C declaration:__ @wl_proxy_get_display@

    __defined at:__ @wayland-client-core.h 228:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_display ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr Wl_display)
wl_proxy_get_display = hs_bindgen_7b6673ed9ab7c9f0

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_set_queue@
foreign import ccall unsafe "hs_bindgen_7533da8ddfa932fa" hs_bindgen_7533da8ddfa932fa_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_set_queue@
hs_bindgen_7533da8ddfa932fa ::
     RIP.Ptr Wl_proxy
  -> RIP.Ptr Wl_event_queue
  -> IO ()
hs_bindgen_7533da8ddfa932fa =
  RIP.fromFFIType hs_bindgen_7533da8ddfa932fa_base

{-| __C declaration:__ @wl_proxy_set_queue@

    __defined at:__ @wayland-client-core.h 231:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_set_queue ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> RIP.Ptr Wl_event_queue
     -- ^ __C declaration:__ @queue@
  -> IO ()
wl_proxy_set_queue = hs_bindgen_7533da8ddfa932fa

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_queue@
foreign import ccall unsafe "hs_bindgen_3e030cfe015f0f9f" hs_bindgen_3e030cfe015f0f9f_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_queue@
hs_bindgen_3e030cfe015f0f9f ::
     PtrConst.PtrConst Wl_proxy
  -> IO (RIP.Ptr Wl_event_queue)
hs_bindgen_3e030cfe015f0f9f =
  RIP.fromFFIType hs_bindgen_3e030cfe015f0f9f_base

{-| __C declaration:__ @wl_proxy_get_queue@

    __defined at:__ @wayland-client-core.h 234:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_queue ::
     PtrConst.PtrConst Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr Wl_event_queue)
wl_proxy_get_queue = hs_bindgen_3e030cfe015f0f9f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_event_queue_get_name@
foreign import ccall unsafe "hs_bindgen_41c2a84b6c8dafd2" hs_bindgen_41c2a84b6c8dafd2_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_event_queue_get_name@
hs_bindgen_41c2a84b6c8dafd2 ::
     PtrConst.PtrConst Wl_event_queue
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_41c2a84b6c8dafd2 =
  RIP.fromFFIType hs_bindgen_41c2a84b6c8dafd2_base

{-| __C declaration:__ @wl_event_queue_get_name@

    __defined at:__ @wayland-client-core.h 237:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_event_queue_get_name ::
     PtrConst.PtrConst Wl_event_queue
     -- ^ __C declaration:__ @queue@
  -> IO (PtrConst.PtrConst RIP.CChar)
wl_event_queue_get_name = hs_bindgen_41c2a84b6c8dafd2

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_connect@
foreign import ccall unsafe "hs_bindgen_c5e19798bc4639dc" hs_bindgen_c5e19798bc4639dc_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_connect@
hs_bindgen_c5e19798bc4639dc ::
     PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Wl_display)
hs_bindgen_c5e19798bc4639dc =
  RIP.fromFFIType hs_bindgen_c5e19798bc4639dc_base

{-| __C declaration:__ @wl_display_connect@

    __defined at:__ @wayland-client-core.h 240:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_connect ::
     PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @name@
  -> IO (RIP.Ptr Wl_display)
wl_display_connect = hs_bindgen_c5e19798bc4639dc

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_connect_to_fd@
foreign import ccall unsafe "hs_bindgen_55d60da342655531" hs_bindgen_55d60da342655531_base ::
     RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_connect_to_fd@
hs_bindgen_55d60da342655531 ::
     RIP.CInt
  -> IO (RIP.Ptr Wl_display)
hs_bindgen_55d60da342655531 =
  RIP.fromFFIType hs_bindgen_55d60da342655531_base

{-| __C declaration:__ @wl_display_connect_to_fd@

    __defined at:__ @wayland-client-core.h 243:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_connect_to_fd ::
     RIP.CInt
     -- ^ __C declaration:__ @fd@
  -> IO (RIP.Ptr Wl_display)
wl_display_connect_to_fd =
  hs_bindgen_55d60da342655531

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_disconnect@
foreign import ccall unsafe "hs_bindgen_dd5abd9167723c2d" hs_bindgen_dd5abd9167723c2d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_disconnect@
hs_bindgen_dd5abd9167723c2d ::
     RIP.Ptr Wl_display
  -> IO ()
hs_bindgen_dd5abd9167723c2d =
  RIP.fromFFIType hs_bindgen_dd5abd9167723c2d_base

{-| __C declaration:__ @wl_display_disconnect@

    __defined at:__ @wayland-client-core.h 246:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_disconnect ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO ()
wl_display_disconnect = hs_bindgen_dd5abd9167723c2d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_fd@
foreign import ccall unsafe "hs_bindgen_c74c6e8c40f440e8" hs_bindgen_c74c6e8c40f440e8_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_fd@
hs_bindgen_c74c6e8c40f440e8 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_c74c6e8c40f440e8 =
  RIP.fromFFIType hs_bindgen_c74c6e8c40f440e8_base

{-| __C declaration:__ @wl_display_get_fd@

    __defined at:__ @wayland-client-core.h 249:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_get_fd ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_get_fd = hs_bindgen_c74c6e8c40f440e8

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch@
foreign import ccall unsafe "hs_bindgen_12f67434b716a725" hs_bindgen_12f67434b716a725_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch@
hs_bindgen_12f67434b716a725 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_12f67434b716a725 =
  RIP.fromFFIType hs_bindgen_12f67434b716a725_base

{-| __C declaration:__ @wl_display_dispatch@

    __defined at:__ @wayland-client-core.h 252:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_dispatch ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_dispatch = hs_bindgen_12f67434b716a725

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch_queue@
foreign import ccall unsafe "hs_bindgen_a21de4859d9869f0" hs_bindgen_a21de4859d9869f0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch_queue@
hs_bindgen_a21de4859d9869f0 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> IO RIP.CInt
hs_bindgen_a21de4859d9869f0 =
  RIP.fromFFIType hs_bindgen_a21de4859d9869f0_base

{-| __C declaration:__ @wl_display_dispatch_queue@

    __defined at:__ @wayland-client-core.h 255:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_dispatch_queue ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> RIP.Ptr Wl_event_queue
     -- ^ __C declaration:__ @queue@
  -> IO RIP.CInt
wl_display_dispatch_queue =
  hs_bindgen_a21de4859d9869f0

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch_timeout@
foreign import ccall unsafe "hs_bindgen_6e062bfb8b154cfc" hs_bindgen_6e062bfb8b154cfc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch_timeout@
hs_bindgen_6e062bfb8b154cfc ::
     RIP.Ptr Wl_display
  -> PtrConst.PtrConst Timespec
  -> IO RIP.CInt
hs_bindgen_6e062bfb8b154cfc =
  RIP.fromFFIType hs_bindgen_6e062bfb8b154cfc_base

{-| __C declaration:__ @wl_display_dispatch_timeout@

    __defined at:__ @wayland-client-core.h 259:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_dispatch_timeout ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> PtrConst.PtrConst Timespec
     -- ^ __C declaration:__ @timeout@
  -> IO RIP.CInt
wl_display_dispatch_timeout =
  hs_bindgen_6e062bfb8b154cfc

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch_queue_timeout@
foreign import ccall unsafe "hs_bindgen_38b3e50b2e0d1243" hs_bindgen_38b3e50b2e0d1243_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch_queue_timeout@
hs_bindgen_38b3e50b2e0d1243 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> PtrConst.PtrConst Timespec
  -> IO RIP.CInt
hs_bindgen_38b3e50b2e0d1243 =
  RIP.fromFFIType hs_bindgen_38b3e50b2e0d1243_base

{-| __C declaration:__ @wl_display_dispatch_queue_timeout@

    __defined at:__ @wayland-client-core.h 263:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
  hs_bindgen_38b3e50b2e0d1243

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch_queue_pending@
foreign import ccall unsafe "hs_bindgen_c20c179814201dae" hs_bindgen_c20c179814201dae_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch_queue_pending@
hs_bindgen_c20c179814201dae ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> IO RIP.CInt
hs_bindgen_c20c179814201dae =
  RIP.fromFFIType hs_bindgen_c20c179814201dae_base

{-| __C declaration:__ @wl_display_dispatch_queue_pending@

    __defined at:__ @wayland-client-core.h 268:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_dispatch_queue_pending ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> RIP.Ptr Wl_event_queue
     -- ^ __C declaration:__ @queue@
  -> IO RIP.CInt
wl_display_dispatch_queue_pending =
  hs_bindgen_c20c179814201dae

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch_pending@
foreign import ccall unsafe "hs_bindgen_23485b881cfcbc16" hs_bindgen_23485b881cfcbc16_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch_pending@
hs_bindgen_23485b881cfcbc16 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_23485b881cfcbc16 =
  RIP.fromFFIType hs_bindgen_23485b881cfcbc16_base

{-| __C declaration:__ @wl_display_dispatch_pending@

    __defined at:__ @wayland-client-core.h 272:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_dispatch_pending ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_dispatch_pending =
  hs_bindgen_23485b881cfcbc16

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_error@
foreign import ccall unsafe "hs_bindgen_2cb713d19866b580" hs_bindgen_2cb713d19866b580_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_error@
hs_bindgen_2cb713d19866b580 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_2cb713d19866b580 =
  RIP.fromFFIType hs_bindgen_2cb713d19866b580_base

{-| __C declaration:__ @wl_display_get_error@

    __defined at:__ @wayland-client-core.h 275:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_get_error ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_get_error = hs_bindgen_2cb713d19866b580

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_protocol_error@
foreign import ccall unsafe "hs_bindgen_a4c908588761da56" hs_bindgen_a4c908588761da56_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_protocol_error@
hs_bindgen_a4c908588761da56 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_a4c908588761da56 =
  RIP.fromFFIType hs_bindgen_a4c908588761da56_base

{-| __C declaration:__ @wl_display_get_protocol_error@

    __defined at:__ @wayland-client-core.h 278:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
  hs_bindgen_a4c908588761da56

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_flush@
foreign import ccall unsafe "hs_bindgen_0f30a71f68b6ddd0" hs_bindgen_0f30a71f68b6ddd0_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_flush@
hs_bindgen_0f30a71f68b6ddd0 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_0f30a71f68b6ddd0 =
  RIP.fromFFIType hs_bindgen_0f30a71f68b6ddd0_base

{-| __C declaration:__ @wl_display_flush@

    __defined at:__ @wayland-client-core.h 283:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_flush ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_flush = hs_bindgen_0f30a71f68b6ddd0

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_roundtrip_queue@
foreign import ccall unsafe "hs_bindgen_00ee8f58a7f82cd5" hs_bindgen_00ee8f58a7f82cd5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_roundtrip_queue@
hs_bindgen_00ee8f58a7f82cd5 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> IO RIP.CInt
hs_bindgen_00ee8f58a7f82cd5 =
  RIP.fromFFIType hs_bindgen_00ee8f58a7f82cd5_base

{-| __C declaration:__ @wl_display_roundtrip_queue@

    __defined at:__ @wayland-client-core.h 286:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_roundtrip_queue ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> RIP.Ptr Wl_event_queue
     -- ^ __C declaration:__ @queue@
  -> IO RIP.CInt
wl_display_roundtrip_queue =
  hs_bindgen_00ee8f58a7f82cd5

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_roundtrip@
foreign import ccall unsafe "hs_bindgen_5348f12bb437b82b" hs_bindgen_5348f12bb437b82b_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_roundtrip@
hs_bindgen_5348f12bb437b82b ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_5348f12bb437b82b =
  RIP.fromFFIType hs_bindgen_5348f12bb437b82b_base

{-| __C declaration:__ @wl_display_roundtrip@

    __defined at:__ @wayland-client-core.h 290:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_roundtrip ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_roundtrip = hs_bindgen_5348f12bb437b82b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_create_queue@
foreign import ccall unsafe "hs_bindgen_7333b63fccff9722" hs_bindgen_7333b63fccff9722_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_create_queue@
hs_bindgen_7333b63fccff9722 ::
     RIP.Ptr Wl_display
  -> IO (RIP.Ptr Wl_event_queue)
hs_bindgen_7333b63fccff9722 =
  RIP.fromFFIType hs_bindgen_7333b63fccff9722_base

{-| __C declaration:__ @wl_display_create_queue@

    __defined at:__ @wayland-client-core.h 293:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_create_queue ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO (RIP.Ptr Wl_event_queue)
wl_display_create_queue = hs_bindgen_7333b63fccff9722

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_create_queue_with_name@
foreign import ccall unsafe "hs_bindgen_31acb16b2e1f41fd" hs_bindgen_31acb16b2e1f41fd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_create_queue_with_name@
hs_bindgen_31acb16b2e1f41fd ::
     RIP.Ptr Wl_display
  -> PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Wl_event_queue)
hs_bindgen_31acb16b2e1f41fd =
  RIP.fromFFIType hs_bindgen_31acb16b2e1f41fd_base

{-| __C declaration:__ @wl_display_create_queue_with_name@

    __defined at:__ @wayland-client-core.h 296:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_create_queue_with_name ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @name@
  -> IO (RIP.Ptr Wl_event_queue)
wl_display_create_queue_with_name =
  hs_bindgen_31acb16b2e1f41fd

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_prepare_read_queue@
foreign import ccall unsafe "hs_bindgen_3f796bd9eb943ef7" hs_bindgen_3f796bd9eb943ef7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_prepare_read_queue@
hs_bindgen_3f796bd9eb943ef7 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> IO RIP.CInt
hs_bindgen_3f796bd9eb943ef7 =
  RIP.fromFFIType hs_bindgen_3f796bd9eb943ef7_base

{-| __C declaration:__ @wl_display_prepare_read_queue@

    __defined at:__ @wayland-client-core.h 300:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_prepare_read_queue ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> RIP.Ptr Wl_event_queue
     -- ^ __C declaration:__ @queue@
  -> IO RIP.CInt
wl_display_prepare_read_queue =
  hs_bindgen_3f796bd9eb943ef7

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_prepare_read@
foreign import ccall unsafe "hs_bindgen_cc8be32e0b40198f" hs_bindgen_cc8be32e0b40198f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_prepare_read@
hs_bindgen_cc8be32e0b40198f ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_cc8be32e0b40198f =
  RIP.fromFFIType hs_bindgen_cc8be32e0b40198f_base

{-| __C declaration:__ @wl_display_prepare_read@

    __defined at:__ @wayland-client-core.h 304:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_prepare_read ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_prepare_read = hs_bindgen_cc8be32e0b40198f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_cancel_read@
foreign import ccall unsafe "hs_bindgen_838b92c5aaec4742" hs_bindgen_838b92c5aaec4742_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_cancel_read@
hs_bindgen_838b92c5aaec4742 ::
     RIP.Ptr Wl_display
  -> IO ()
hs_bindgen_838b92c5aaec4742 =
  RIP.fromFFIType hs_bindgen_838b92c5aaec4742_base

{-| __C declaration:__ @wl_display_cancel_read@

    __defined at:__ @wayland-client-core.h 307:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_cancel_read ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO ()
wl_display_cancel_read = hs_bindgen_838b92c5aaec4742

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_read_events@
foreign import ccall unsafe "hs_bindgen_e5f95d6ef6fe7278" hs_bindgen_e5f95d6ef6fe7278_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_read_events@
hs_bindgen_e5f95d6ef6fe7278 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_e5f95d6ef6fe7278 =
  RIP.fromFFIType hs_bindgen_e5f95d6ef6fe7278_base

{-| __C declaration:__ @wl_display_read_events@

    __defined at:__ @wayland-client-core.h 310:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_read_events ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_read_events = hs_bindgen_e5f95d6ef6fe7278

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_set_max_buffer_size@
foreign import ccall unsafe "hs_bindgen_8d7cab53e4fcb170" hs_bindgen_8d7cab53e4fcb170_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_set_max_buffer_size@
hs_bindgen_8d7cab53e4fcb170 ::
     RIP.Ptr Wl_display
  -> HsBindgen.Runtime.LibC.CSize
  -> IO ()
hs_bindgen_8d7cab53e4fcb170 =
  RIP.fromFFIType hs_bindgen_8d7cab53e4fcb170_base

{-| __C declaration:__ @wl_display_set_max_buffer_size@

    __defined at:__ @wayland-client-core.h 316:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_set_max_buffer_size ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> HsBindgen.Runtime.LibC.CSize
     -- ^ __C declaration:__ @max_buffer_size@
  -> IO ()
wl_display_set_max_buffer_size =
  hs_bindgen_8d7cab53e4fcb170

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_add_listener@
foreign import ccall unsafe "hs_bindgen_bf29f3eee179ff1d" hs_bindgen_bf29f3eee179ff1d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_add_listener@
hs_bindgen_bf29f3eee179ff1d ::
     RIP.Ptr Wl_display
  -> PtrConst.PtrConst Wl_display_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_bf29f3eee179ff1d =
  RIP.fromFFIType hs_bindgen_bf29f3eee179ff1d_base

{-| __C declaration:__ @wl_display_add_listener@

    __defined at:__ @wayland-client-protocol.h 1037:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_add_listener ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> PtrConst.PtrConst Wl_display_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_display_add_listener = hs_bindgen_bf29f3eee179ff1d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_set_user_data@
foreign import ccall unsafe "hs_bindgen_0bae63f38098a27f" hs_bindgen_0bae63f38098a27f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_set_user_data@
hs_bindgen_0bae63f38098a27f ::
     RIP.Ptr Wl_display
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_0bae63f38098a27f =
  RIP.fromFFIType hs_bindgen_0bae63f38098a27f_base

{-| __C declaration:__ @wl_display_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1067:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_set_user_data ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_display_set_user_data =
  hs_bindgen_0bae63f38098a27f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_user_data@
foreign import ccall unsafe "hs_bindgen_587917b549defda5" hs_bindgen_587917b549defda5_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_user_data@
hs_bindgen_587917b549defda5 ::
     RIP.Ptr Wl_display
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_587917b549defda5 =
  RIP.fromFFIType hs_bindgen_587917b549defda5_base

{-| __C declaration:__ @wl_display_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1074:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_get_user_data ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> IO (RIP.Ptr RIP.Void)
wl_display_get_user_data =
  hs_bindgen_587917b549defda5

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_version@
foreign import ccall unsafe "hs_bindgen_a3d56d3aaedd71a9" hs_bindgen_a3d56d3aaedd71a9_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_version@
hs_bindgen_a3d56d3aaedd71a9 ::
     RIP.Ptr Wl_display
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_a3d56d3aaedd71a9 =
  RIP.fromFFIType hs_bindgen_a3d56d3aaedd71a9_base

{-| __C declaration:__ @wl_display_get_version@

    __defined at:__ @wayland-client-protocol.h 1080:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_get_version ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_display_get_version = hs_bindgen_a3d56d3aaedd71a9

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_sync@
foreign import ccall unsafe "hs_bindgen_7703cd12322e5c25" hs_bindgen_7703cd12322e5c25_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_sync@
hs_bindgen_7703cd12322e5c25 ::
     RIP.Ptr Wl_display
  -> IO (RIP.Ptr Wl_callback)
hs_bindgen_7703cd12322e5c25 =
  RIP.fromFFIType hs_bindgen_7703cd12322e5c25_base

{-| The sync request asks the server to emit the 'done' event on the returned wl_callback object. Since requests are handled in-order and events are delivered in-order, this can be used as a barrier to ensure all previous requests and the resulting events have been handled.

    The object returned by this request will be destroyed by the compositor after the callback is fired and as such the client must not attempt to use it after that point.

    The callback_data passed in the callback is undefined and should be ignored.

    __C declaration:__ @wl_display_sync@

    __defined at:__ @wayland-client-protocol.h 1101:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_sync ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> IO (RIP.Ptr Wl_callback)
wl_display_sync = hs_bindgen_7703cd12322e5c25

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_registry@
foreign import ccall unsafe "hs_bindgen_363a017a6f90fc52" hs_bindgen_363a017a6f90fc52_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_registry@
hs_bindgen_363a017a6f90fc52 ::
     RIP.Ptr Wl_display
  -> IO (RIP.Ptr Wl_registry)
hs_bindgen_363a017a6f90fc52 =
  RIP.fromFFIType hs_bindgen_363a017a6f90fc52_base

{-| This request creates a registry object that allows the client to list and bind the global objects available from the compositor.

    It should be noted that the server side resources consumed in response to a get_registry request can only be released when the client disconnects, not when the client side proxy is destroyed. Therefore, clients should invoke get_registry as infrequently as possible to avoid wasting memory.

    __C declaration:__ @wl_display_get_registry@

    __defined at:__ @wayland-client-protocol.h 1125:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_get_registry ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> IO (RIP.Ptr Wl_registry)
wl_display_get_registry = hs_bindgen_363a017a6f90fc52

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_add_listener@
foreign import ccall unsafe "hs_bindgen_d915ca2070ee32ed" hs_bindgen_d915ca2070ee32ed_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_add_listener@
hs_bindgen_d915ca2070ee32ed ::
     RIP.Ptr Wl_registry
  -> PtrConst.PtrConst Wl_registry_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_d915ca2070ee32ed =
  RIP.fromFFIType hs_bindgen_d915ca2070ee32ed_base

{-| __C declaration:__ @wl_registry_add_listener@

    __defined at:__ @wayland-client-protocol.h 1181:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
  hs_bindgen_d915ca2070ee32ed

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_set_user_data@
foreign import ccall unsafe "hs_bindgen_ec2d1a3930e9f0c4" hs_bindgen_ec2d1a3930e9f0c4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_set_user_data@
hs_bindgen_ec2d1a3930e9f0c4 ::
     RIP.Ptr Wl_registry
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_ec2d1a3930e9f0c4 =
  RIP.fromFFIType hs_bindgen_ec2d1a3930e9f0c4_base

{-| __C declaration:__ @wl_registry_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1206:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_registry_set_user_data ::
     RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @wl_registry@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_registry_set_user_data =
  hs_bindgen_ec2d1a3930e9f0c4

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_get_user_data@
foreign import ccall unsafe "hs_bindgen_14eea5d36faa779e" hs_bindgen_14eea5d36faa779e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_get_user_data@
hs_bindgen_14eea5d36faa779e ::
     RIP.Ptr Wl_registry
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_14eea5d36faa779e =
  RIP.fromFFIType hs_bindgen_14eea5d36faa779e_base

{-| __C declaration:__ @wl_registry_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1213:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_registry_get_user_data ::
     RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @wl_registry@
  -> IO (RIP.Ptr RIP.Void)
wl_registry_get_user_data =
  hs_bindgen_14eea5d36faa779e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_get_version@
foreign import ccall unsafe "hs_bindgen_099845409eabb519" hs_bindgen_099845409eabb519_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_get_version@
hs_bindgen_099845409eabb519 ::
     RIP.Ptr Wl_registry
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_099845409eabb519 =
  RIP.fromFFIType hs_bindgen_099845409eabb519_base

{-| __C declaration:__ @wl_registry_get_version@

    __defined at:__ @wayland-client-protocol.h 1219:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_registry_get_version ::
     RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @wl_registry@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_registry_get_version = hs_bindgen_099845409eabb519

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_destroy@
foreign import ccall unsafe "hs_bindgen_c513efa16d46d8f0" hs_bindgen_c513efa16d46d8f0_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_destroy@
hs_bindgen_c513efa16d46d8f0 ::
     RIP.Ptr Wl_registry
  -> IO ()
hs_bindgen_c513efa16d46d8f0 =
  RIP.fromFFIType hs_bindgen_c513efa16d46d8f0_base

{-| __C declaration:__ @wl_registry_destroy@

    __defined at:__ @wayland-client-protocol.h 1226:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_registry_destroy ::
     RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @wl_registry@
  -> IO ()
wl_registry_destroy = hs_bindgen_c513efa16d46d8f0

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_bind@
foreign import ccall unsafe "hs_bindgen_4dd74d23d4f8da2e" hs_bindgen_4dd74d23d4f8da2e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_bind@
hs_bindgen_4dd74d23d4f8da2e ::
     RIP.Ptr Wl_registry
  -> HsBindgen.Runtime.LibC.Word32
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_4dd74d23d4f8da2e =
  RIP.fromFFIType hs_bindgen_4dd74d23d4f8da2e_base

{-| Binds a new, client-created object to the server using the specified name as the identifier.

    __C declaration:__ @wl_registry_bind@

    __defined at:__ @wayland-client-protocol.h 1238:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
wl_registry_bind = hs_bindgen_4dd74d23d4f8da2e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_callback_add_listener@
foreign import ccall unsafe "hs_bindgen_7203537434096f0f" hs_bindgen_7203537434096f0f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_callback_add_listener@
hs_bindgen_7203537434096f0f ::
     RIP.Ptr Wl_callback
  -> PtrConst.PtrConst Wl_callback_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_7203537434096f0f =
  RIP.fromFFIType hs_bindgen_7203537434096f0f_base

{-| __C declaration:__ @wl_callback_add_listener@

    __defined at:__ @wayland-client-protocol.h 1268:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
  hs_bindgen_7203537434096f0f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_callback_set_user_data@
foreign import ccall unsafe "hs_bindgen_c750f3f7dcc0886a" hs_bindgen_c750f3f7dcc0886a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_callback_set_user_data@
hs_bindgen_c750f3f7dcc0886a ::
     RIP.Ptr Wl_callback
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_c750f3f7dcc0886a =
  RIP.fromFFIType hs_bindgen_c750f3f7dcc0886a_base

{-| __C declaration:__ @wl_callback_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1283:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_callback_set_user_data ::
     RIP.Ptr Wl_callback
     -- ^ __C declaration:__ @wl_callback@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_callback_set_user_data =
  hs_bindgen_c750f3f7dcc0886a

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_callback_get_user_data@
foreign import ccall unsafe "hs_bindgen_b432aa3c2929faae" hs_bindgen_b432aa3c2929faae_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_callback_get_user_data@
hs_bindgen_b432aa3c2929faae ::
     RIP.Ptr Wl_callback
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_b432aa3c2929faae =
  RIP.fromFFIType hs_bindgen_b432aa3c2929faae_base

{-| __C declaration:__ @wl_callback_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1290:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_callback_get_user_data ::
     RIP.Ptr Wl_callback
     -- ^ __C declaration:__ @wl_callback@
  -> IO (RIP.Ptr RIP.Void)
wl_callback_get_user_data =
  hs_bindgen_b432aa3c2929faae

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_callback_get_version@
foreign import ccall unsafe "hs_bindgen_365435cff9c642a6" hs_bindgen_365435cff9c642a6_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_callback_get_version@
hs_bindgen_365435cff9c642a6 ::
     RIP.Ptr Wl_callback
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_365435cff9c642a6 =
  RIP.fromFFIType hs_bindgen_365435cff9c642a6_base

{-| __C declaration:__ @wl_callback_get_version@

    __defined at:__ @wayland-client-protocol.h 1296:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_callback_get_version ::
     RIP.Ptr Wl_callback
     -- ^ __C declaration:__ @wl_callback@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_callback_get_version = hs_bindgen_365435cff9c642a6

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_callback_destroy@
foreign import ccall unsafe "hs_bindgen_df73d99ec7bb43ac" hs_bindgen_df73d99ec7bb43ac_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_callback_destroy@
hs_bindgen_df73d99ec7bb43ac ::
     RIP.Ptr Wl_callback
  -> IO ()
hs_bindgen_df73d99ec7bb43ac =
  RIP.fromFFIType hs_bindgen_df73d99ec7bb43ac_base

{-| __C declaration:__ @wl_callback_destroy@

    __defined at:__ @wayland-client-protocol.h 1303:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_callback_destroy ::
     RIP.Ptr Wl_callback
     -- ^ __C declaration:__ @wl_callback@
  -> IO ()
wl_callback_destroy = hs_bindgen_df73d99ec7bb43ac

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_set_user_data@
foreign import ccall unsafe "hs_bindgen_4ac544d5d160691e" hs_bindgen_4ac544d5d160691e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_set_user_data@
hs_bindgen_4ac544d5d160691e ::
     RIP.Ptr Wl_compositor
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_4ac544d5d160691e =
  RIP.fromFFIType hs_bindgen_4ac544d5d160691e_base

{-| __C declaration:__ @wl_compositor_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1323:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_compositor_set_user_data ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_compositor_set_user_data =
  hs_bindgen_4ac544d5d160691e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_get_user_data@
foreign import ccall unsafe "hs_bindgen_3b2c70650227fe52" hs_bindgen_3b2c70650227fe52_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_get_user_data@
hs_bindgen_3b2c70650227fe52 ::
     RIP.Ptr Wl_compositor
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_3b2c70650227fe52 =
  RIP.fromFFIType hs_bindgen_3b2c70650227fe52_base

{-| __C declaration:__ @wl_compositor_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1330:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_compositor_get_user_data ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO (RIP.Ptr RIP.Void)
wl_compositor_get_user_data =
  hs_bindgen_3b2c70650227fe52

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_get_version@
foreign import ccall unsafe "hs_bindgen_92a66bbe2c003c69" hs_bindgen_92a66bbe2c003c69_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_get_version@
hs_bindgen_92a66bbe2c003c69 ::
     RIP.Ptr Wl_compositor
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_92a66bbe2c003c69 =
  RIP.fromFFIType hs_bindgen_92a66bbe2c003c69_base

{-| __C declaration:__ @wl_compositor_get_version@

    __defined at:__ @wayland-client-protocol.h 1336:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_compositor_get_version ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_compositor_get_version =
  hs_bindgen_92a66bbe2c003c69

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_destroy@
foreign import ccall unsafe "hs_bindgen_901061393c1d1849" hs_bindgen_901061393c1d1849_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_destroy@
hs_bindgen_901061393c1d1849 ::
     RIP.Ptr Wl_compositor
  -> IO ()
hs_bindgen_901061393c1d1849 =
  RIP.fromFFIType hs_bindgen_901061393c1d1849_base

{-| __C declaration:__ @wl_compositor_destroy@

    __defined at:__ @wayland-client-protocol.h 1343:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_compositor_destroy ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO ()
wl_compositor_destroy = hs_bindgen_901061393c1d1849

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_create_surface@
foreign import ccall unsafe "hs_bindgen_15ca37c6fa1b6d61" hs_bindgen_15ca37c6fa1b6d61_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_create_surface@
hs_bindgen_15ca37c6fa1b6d61 ::
     RIP.Ptr Wl_compositor
  -> IO (RIP.Ptr Wl_surface)
hs_bindgen_15ca37c6fa1b6d61 =
  RIP.fromFFIType hs_bindgen_15ca37c6fa1b6d61_base

{-| Ask the compositor to create a new surface.

    __C declaration:__ @wl_compositor_create_surface@

    __defined at:__ @wayland-client-protocol.h 1354:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_compositor_create_surface ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO (RIP.Ptr Wl_surface)
wl_compositor_create_surface =
  hs_bindgen_15ca37c6fa1b6d61

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_create_region@
foreign import ccall unsafe "hs_bindgen_43461638ecc75908" hs_bindgen_43461638ecc75908_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_create_region@
hs_bindgen_43461638ecc75908 ::
     RIP.Ptr Wl_compositor
  -> IO (RIP.Ptr Wl_region)
hs_bindgen_43461638ecc75908 =
  RIP.fromFFIType hs_bindgen_43461638ecc75908_base

{-| Ask the compositor to create a new region.

    __C declaration:__ @wl_compositor_create_region@

    __defined at:__ @wayland-client-protocol.h 1370:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_compositor_create_region ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO (RIP.Ptr Wl_region)
wl_compositor_create_region =
  hs_bindgen_43461638ecc75908

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_set_user_data@
foreign import ccall unsafe "hs_bindgen_0677cfa1412c5a14" hs_bindgen_0677cfa1412c5a14_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_set_user_data@
hs_bindgen_0677cfa1412c5a14 ::
     RIP.Ptr Wl_shm_pool
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_0677cfa1412c5a14 =
  RIP.fromFFIType hs_bindgen_0677cfa1412c5a14_base

{-| __C declaration:__ @wl_shm_pool_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1400:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_set_user_data ::
     RIP.Ptr Wl_shm_pool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_shm_pool_set_user_data =
  hs_bindgen_0677cfa1412c5a14

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_get_user_data@
foreign import ccall unsafe "hs_bindgen_89c4138c8ffe03a0" hs_bindgen_89c4138c8ffe03a0_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_get_user_data@
hs_bindgen_89c4138c8ffe03a0 ::
     RIP.Ptr Wl_shm_pool
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_89c4138c8ffe03a0 =
  RIP.fromFFIType hs_bindgen_89c4138c8ffe03a0_base

{-| __C declaration:__ @wl_shm_pool_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1407:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_get_user_data ::
     RIP.Ptr Wl_shm_pool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> IO (RIP.Ptr RIP.Void)
wl_shm_pool_get_user_data =
  hs_bindgen_89c4138c8ffe03a0

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_get_version@
foreign import ccall unsafe "hs_bindgen_f5fb78c241356467" hs_bindgen_f5fb78c241356467_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_get_version@
hs_bindgen_f5fb78c241356467 ::
     RIP.Ptr Wl_shm_pool
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_f5fb78c241356467 =
  RIP.fromFFIType hs_bindgen_f5fb78c241356467_base

{-| __C declaration:__ @wl_shm_pool_get_version@

    __defined at:__ @wayland-client-protocol.h 1413:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_get_version ::
     RIP.Ptr Wl_shm_pool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shm_pool_get_version = hs_bindgen_f5fb78c241356467

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_create_buffer@
foreign import ccall unsafe "hs_bindgen_3974b85f9ba8b605" hs_bindgen_3974b85f9ba8b605_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_create_buffer@
hs_bindgen_3974b85f9ba8b605 ::
     RIP.Ptr Wl_shm_pool
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr Wl_buffer)
hs_bindgen_3974b85f9ba8b605 =
  RIP.fromFFIType hs_bindgen_3974b85f9ba8b605_base

{-| Create a wl_buffer object from the pool.

    The buffer is created offset bytes into the pool and has width and height as specified. The stride argument specifies the number of bytes from the beginning of one row to the beginning of the next. The format is the pixel format of the buffer and must be one of those advertised through the wl_shm.format event.

    A buffer will keep a reference to the pool it was created from so it is valid to destroy the pool immediately after creating a buffer from it.

    __C declaration:__ @wl_shm_pool_create_buffer@

    __defined at:__ @wayland-client-protocol.h 1434:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
  hs_bindgen_3974b85f9ba8b605

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_destroy@
foreign import ccall unsafe "hs_bindgen_5889ab30206040a3" hs_bindgen_5889ab30206040a3_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_destroy@
hs_bindgen_5889ab30206040a3 ::
     RIP.Ptr Wl_shm_pool
  -> IO ()
hs_bindgen_5889ab30206040a3 =
  RIP.fromFFIType hs_bindgen_5889ab30206040a3_base

{-| Destroy the shared memory pool.

    The mmapped memory will be released when all buffers that have been created from this pool are gone.

    __C declaration:__ @wl_shm_pool_destroy@

    __defined at:__ @wayland-client-protocol.h 1454:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_destroy ::
     RIP.Ptr Wl_shm_pool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> IO ()
wl_shm_pool_destroy = hs_bindgen_5889ab30206040a3

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_resize@
foreign import ccall unsafe "hs_bindgen_8a627e0c9e453b06" hs_bindgen_8a627e0c9e453b06_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_resize@
hs_bindgen_8a627e0c9e453b06 ::
     RIP.Ptr Wl_shm_pool
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_8a627e0c9e453b06 =
  RIP.fromFFIType hs_bindgen_8a627e0c9e453b06_base

{-| This request will cause the server to remap the backing memory for the pool from the file descriptor passed when the pool was created, but using the new size. This request can only be used to make the pool bigger.

    This request only changes the amount of bytes that are mmapped by the server and does not touch the file corresponding to the file descriptor passed at creation time. It is the client's responsibility to ensure that the file is at least as big as the new pool size.

    __C declaration:__ @wl_shm_pool_resize@

    __defined at:__ @wayland-client-protocol.h 1475:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_resize ::
     RIP.Ptr Wl_shm_pool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @size@
  -> IO ()
wl_shm_pool_resize = hs_bindgen_8a627e0c9e453b06

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_add_listener@
foreign import ccall unsafe "hs_bindgen_33e3f1723567a99f" hs_bindgen_33e3f1723567a99f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_add_listener@
hs_bindgen_33e3f1723567a99f ::
     RIP.Ptr Wl_shm
  -> PtrConst.PtrConst Wl_shm_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_33e3f1723567a99f =
  RIP.fromFFIType hs_bindgen_33e3f1723567a99f_base

{-| __C declaration:__ @wl_shm_add_listener@

    __defined at:__ @wayland-client-protocol.h 2005:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_add_listener ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> PtrConst.PtrConst Wl_shm_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_shm_add_listener = hs_bindgen_33e3f1723567a99f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_set_user_data@
foreign import ccall unsafe "hs_bindgen_99a1deee7314866a" hs_bindgen_99a1deee7314866a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_set_user_data@
hs_bindgen_99a1deee7314866a ::
     RIP.Ptr Wl_shm
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_99a1deee7314866a =
  RIP.fromFFIType hs_bindgen_99a1deee7314866a_base

{-| __C declaration:__ @wl_shm_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2031:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_set_user_data ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_shm_set_user_data = hs_bindgen_99a1deee7314866a

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_get_user_data@
foreign import ccall unsafe "hs_bindgen_ae1ff1fe07e8a740" hs_bindgen_ae1ff1fe07e8a740_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_get_user_data@
hs_bindgen_ae1ff1fe07e8a740 ::
     RIP.Ptr Wl_shm
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_ae1ff1fe07e8a740 =
  RIP.fromFFIType hs_bindgen_ae1ff1fe07e8a740_base

{-| __C declaration:__ @wl_shm_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2038:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_get_user_data ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> IO (RIP.Ptr RIP.Void)
wl_shm_get_user_data = hs_bindgen_ae1ff1fe07e8a740

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_get_version@
foreign import ccall unsafe "hs_bindgen_cc3dcc44caccfeee" hs_bindgen_cc3dcc44caccfeee_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_get_version@
hs_bindgen_cc3dcc44caccfeee ::
     RIP.Ptr Wl_shm
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_cc3dcc44caccfeee =
  RIP.fromFFIType hs_bindgen_cc3dcc44caccfeee_base

{-| __C declaration:__ @wl_shm_get_version@

    __defined at:__ @wayland-client-protocol.h 2044:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_get_version ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shm_get_version = hs_bindgen_cc3dcc44caccfeee

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_destroy@
foreign import ccall unsafe "hs_bindgen_5ef425827ecd834d" hs_bindgen_5ef425827ecd834d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_destroy@
hs_bindgen_5ef425827ecd834d ::
     RIP.Ptr Wl_shm
  -> IO ()
hs_bindgen_5ef425827ecd834d =
  RIP.fromFFIType hs_bindgen_5ef425827ecd834d_base

{-| __C declaration:__ @wl_shm_destroy@

    __defined at:__ @wayland-client-protocol.h 2051:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_destroy ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> IO ()
wl_shm_destroy = hs_bindgen_5ef425827ecd834d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_create_pool@
foreign import ccall unsafe "hs_bindgen_8c4086f59ca3a872" hs_bindgen_8c4086f59ca3a872_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_create_pool@
hs_bindgen_8c4086f59ca3a872 ::
     RIP.Ptr Wl_shm
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO (RIP.Ptr Wl_shm_pool)
hs_bindgen_8c4086f59ca3a872 =
  RIP.fromFFIType hs_bindgen_8c4086f59ca3a872_base

{-| Create a new wl_shm_pool object.

    The pool can be used to create shared memory based buffer objects. The server will mmap size bytes of the passed file descriptor, to use as backing memory for the pool.

    __C declaration:__ @wl_shm_create_pool@

    __defined at:__ @wayland-client-protocol.h 2066:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_create_pool ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @fd@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @size@
  -> IO (RIP.Ptr Wl_shm_pool)
wl_shm_create_pool = hs_bindgen_8c4086f59ca3a872

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_release@
foreign import ccall unsafe "hs_bindgen_d88560bdb97810bb" hs_bindgen_d88560bdb97810bb_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_release@
hs_bindgen_d88560bdb97810bb ::
     RIP.Ptr Wl_shm
  -> IO ()
hs_bindgen_d88560bdb97810bb =
  RIP.fromFFIType hs_bindgen_d88560bdb97810bb_base

{-| Using this request a client can tell the server that it is not going to use the shm object anymore.

    Objects created via this interface remain unaffected.

    __C declaration:__ @wl_shm_release@

    __defined at:__ @wayland-client-protocol.h 2085:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_release ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> IO ()
wl_shm_release = hs_bindgen_d88560bdb97810bb

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_buffer_add_listener@
foreign import ccall unsafe "hs_bindgen_1d576d28065eb17d" hs_bindgen_1d576d28065eb17d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_buffer_add_listener@
hs_bindgen_1d576d28065eb17d ::
     RIP.Ptr Wl_buffer
  -> PtrConst.PtrConst Wl_buffer_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_1d576d28065eb17d =
  RIP.fromFFIType hs_bindgen_1d576d28065eb17d_base

{-| __C declaration:__ @wl_buffer_add_listener@

    __defined at:__ @wayland-client-protocol.h 2122:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_buffer_add_listener ::
     RIP.Ptr Wl_buffer
     -- ^ __C declaration:__ @wl_buffer@
  -> PtrConst.PtrConst Wl_buffer_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_buffer_add_listener = hs_bindgen_1d576d28065eb17d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_buffer_set_user_data@
foreign import ccall unsafe "hs_bindgen_91126bb1743aad39" hs_bindgen_91126bb1743aad39_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_buffer_set_user_data@
hs_bindgen_91126bb1743aad39 ::
     RIP.Ptr Wl_buffer
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_91126bb1743aad39 =
  RIP.fromFFIType hs_bindgen_91126bb1743aad39_base

{-| __C declaration:__ @wl_buffer_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2143:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_buffer_set_user_data ::
     RIP.Ptr Wl_buffer
     -- ^ __C declaration:__ @wl_buffer@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_buffer_set_user_data = hs_bindgen_91126bb1743aad39

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_buffer_get_user_data@
foreign import ccall unsafe "hs_bindgen_278cb52b6692d44e" hs_bindgen_278cb52b6692d44e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_buffer_get_user_data@
hs_bindgen_278cb52b6692d44e ::
     RIP.Ptr Wl_buffer
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_278cb52b6692d44e =
  RIP.fromFFIType hs_bindgen_278cb52b6692d44e_base

{-| __C declaration:__ @wl_buffer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2150:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_buffer_get_user_data ::
     RIP.Ptr Wl_buffer
     -- ^ __C declaration:__ @wl_buffer@
  -> IO (RIP.Ptr RIP.Void)
wl_buffer_get_user_data = hs_bindgen_278cb52b6692d44e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_buffer_get_version@
foreign import ccall unsafe "hs_bindgen_6d1433669435b309" hs_bindgen_6d1433669435b309_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_buffer_get_version@
hs_bindgen_6d1433669435b309 ::
     RIP.Ptr Wl_buffer
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_6d1433669435b309 =
  RIP.fromFFIType hs_bindgen_6d1433669435b309_base

{-| __C declaration:__ @wl_buffer_get_version@

    __defined at:__ @wayland-client-protocol.h 2156:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_buffer_get_version ::
     RIP.Ptr Wl_buffer
     -- ^ __C declaration:__ @wl_buffer@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_buffer_get_version = hs_bindgen_6d1433669435b309

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_buffer_destroy@
foreign import ccall unsafe "hs_bindgen_276fbe8cb0850b69" hs_bindgen_276fbe8cb0850b69_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_buffer_destroy@
hs_bindgen_276fbe8cb0850b69 ::
     RIP.Ptr Wl_buffer
  -> IO ()
hs_bindgen_276fbe8cb0850b69 =
  RIP.fromFFIType hs_bindgen_276fbe8cb0850b69_base

{-| Destroy a buffer. If and how you need to release the backing storage is defined by the buffer factory interface.

    For possible side-effects to a surface, see wl_surface.attach.

    __C declaration:__ @wl_buffer_destroy@

    __defined at:__ @wayland-client-protocol.h 2170:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_buffer_destroy ::
     RIP.Ptr Wl_buffer
     -- ^ __C declaration:__ @wl_buffer@
  -> IO ()
wl_buffer_destroy = hs_bindgen_276fbe8cb0850b69

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_add_listener@
foreign import ccall unsafe "hs_bindgen_ea5246eb7890d417" hs_bindgen_ea5246eb7890d417_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_add_listener@
hs_bindgen_ea5246eb7890d417 ::
     RIP.Ptr Wl_data_offer
  -> PtrConst.PtrConst Wl_data_offer_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_ea5246eb7890d417 =
  RIP.fromFFIType hs_bindgen_ea5246eb7890d417_base

{-| __C declaration:__ @wl_data_offer_add_listener@

    __defined at:__ @wayland-client-protocol.h 2278:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
  hs_bindgen_ea5246eb7890d417

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_set_user_data@
foreign import ccall unsafe "hs_bindgen_d6caffdd1217e3ae" hs_bindgen_d6caffdd1217e3ae_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_set_user_data@
hs_bindgen_d6caffdd1217e3ae ::
     RIP.Ptr Wl_data_offer
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_d6caffdd1217e3ae =
  RIP.fromFFIType hs_bindgen_d6caffdd1217e3ae_base

{-| __C declaration:__ @wl_data_offer_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2327:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_offer_set_user_data ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_data_offer_set_user_data =
  hs_bindgen_d6caffdd1217e3ae

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_get_user_data@
foreign import ccall unsafe "hs_bindgen_09fde85cb91417d4" hs_bindgen_09fde85cb91417d4_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_get_user_data@
hs_bindgen_09fde85cb91417d4 ::
     RIP.Ptr Wl_data_offer
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_09fde85cb91417d4 =
  RIP.fromFFIType hs_bindgen_09fde85cb91417d4_base

{-| __C declaration:__ @wl_data_offer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2334:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_offer_get_user_data ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO (RIP.Ptr RIP.Void)
wl_data_offer_get_user_data =
  hs_bindgen_09fde85cb91417d4

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_get_version@
foreign import ccall unsafe "hs_bindgen_ed45dcc66b59f0f0" hs_bindgen_ed45dcc66b59f0f0_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_get_version@
hs_bindgen_ed45dcc66b59f0f0 ::
     RIP.Ptr Wl_data_offer
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_ed45dcc66b59f0f0 =
  RIP.fromFFIType hs_bindgen_ed45dcc66b59f0f0_base

{-| __C declaration:__ @wl_data_offer_get_version@

    __defined at:__ @wayland-client-protocol.h 2340:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_offer_get_version ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_offer_get_version =
  hs_bindgen_ed45dcc66b59f0f0

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_accept@
foreign import ccall unsafe "hs_bindgen_6ff8e4db332d0aa8" hs_bindgen_6ff8e4db332d0aa8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_accept@
hs_bindgen_6ff8e4db332d0aa8 ::
     RIP.Ptr Wl_data_offer
  -> HsBindgen.Runtime.LibC.Word32
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_6ff8e4db332d0aa8 =
  RIP.fromFFIType hs_bindgen_6ff8e4db332d0aa8_base

{-| Indicate that the client can accept the given mime type, or NULL for not accepted.

    For objects of version 2 or older, this request is used by the client to give feedback whether the client can receive the given mime type, or NULL if none is accepted; the feedback does not determine whether the drag-and-drop operation succeeds or not.

    For objects of version 3 or newer, this request determines the final result of the drag-and-drop operation. If the end result is that no mime types were accepted, the drag-and-drop operation will be cancelled and the corresponding drag source will receive wl_data_source.cancelled. Clients may still use this event in conjunction with wl_data_source.action for feedback.

    __C declaration:__ @wl_data_offer_accept@

    __defined at:__ @wayland-client-protocol.h 2364:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_offer_accept ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @mime_type@
  -> IO ()
wl_data_offer_accept = hs_bindgen_6ff8e4db332d0aa8

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_receive@
foreign import ccall unsafe "hs_bindgen_885275e21716e677" hs_bindgen_885275e21716e677_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_receive@
hs_bindgen_885275e21716e677 ::
     RIP.Ptr Wl_data_offer
  -> PtrConst.PtrConst RIP.CChar
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_885275e21716e677 =
  RIP.fromFFIType hs_bindgen_885275e21716e677_base

{-| To transfer the offered data, the client issues this request and indicates the mime type it wants to receive. The transfer happens through the passed file descriptor (typically created with the pipe system call). The source client writes the data in the mime type representation requested and then closes the file descriptor.

    The receiving client reads from the read end of the pipe until EOF and then closes its end, at which point the transfer is complete.

    This request may happen multiple times for different mime types, both before and after wl_data_device.drop. Drag-and-drop destination clients may preemptively fetch data or examine it more closely to determine acceptance.

    __C declaration:__ @wl_data_offer_receive@

    __defined at:__ @wayland-client-protocol.h 2390:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_offer_receive ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @mime_type@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @fd@
  -> IO ()
wl_data_offer_receive = hs_bindgen_885275e21716e677

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_destroy@
foreign import ccall unsafe "hs_bindgen_2fb57445cbb7e00b" hs_bindgen_2fb57445cbb7e00b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_destroy@
hs_bindgen_2fb57445cbb7e00b ::
     RIP.Ptr Wl_data_offer
  -> IO ()
hs_bindgen_2fb57445cbb7e00b =
  RIP.fromFFIType hs_bindgen_2fb57445cbb7e00b_base

{-| Destroy the data offer.

    __C declaration:__ @wl_data_offer_destroy@

    __defined at:__ @wayland-client-protocol.h 2402:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_offer_destroy ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO ()
wl_data_offer_destroy = hs_bindgen_2fb57445cbb7e00b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_finish@
foreign import ccall unsafe "hs_bindgen_7850c44aa5b02ea1" hs_bindgen_7850c44aa5b02ea1_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_finish@
hs_bindgen_7850c44aa5b02ea1 ::
     RIP.Ptr Wl_data_offer
  -> IO ()
hs_bindgen_7850c44aa5b02ea1 =
  RIP.fromFFIType hs_bindgen_7850c44aa5b02ea1_base

{-| Notifies the compositor that the drag destination successfully finished the drag-and-drop operation.

    Upon receiving this request, the compositor will emit wl_data_source.dnd_finished on the drag source client.

    It is a client error to perform other requests than wl_data_offer.destroy after this one. It is also an error to perform this request after a NULL mime type has been set in wl_data_offer.accept or no action was received through wl_data_offer.action.

    If wl_data_offer.finish request is received for a non drag and drop operation, the invalid_finish protocol error is raised.

    __C declaration:__ @wl_data_offer_finish@

    __defined at:__ @wayland-client-protocol.h 2427:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_offer_finish ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO ()
wl_data_offer_finish = hs_bindgen_7850c44aa5b02ea1

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_set_actions@
foreign import ccall unsafe "hs_bindgen_c55195529c24ef90" hs_bindgen_c55195529c24ef90_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_set_actions@
hs_bindgen_c55195529c24ef90 ::
     RIP.Ptr Wl_data_offer
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_c55195529c24ef90 =
  RIP.fromFFIType hs_bindgen_c55195529c24ef90_base

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
wl_data_offer_set_actions ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @dnd_actions@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @preferred_action@
  -> IO ()
wl_data_offer_set_actions =
  hs_bindgen_c55195529c24ef90

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_add_listener@
foreign import ccall unsafe "hs_bindgen_e566cd1d98199064" hs_bindgen_e566cd1d98199064_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_add_listener@
hs_bindgen_e566cd1d98199064 ::
     RIP.Ptr Wl_data_source
  -> PtrConst.PtrConst Wl_data_source_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_e566cd1d98199064 =
  RIP.fromFFIType hs_bindgen_e566cd1d98199064_base

{-| __C declaration:__ @wl_data_source_add_listener@

    __defined at:__ @wayland-client-protocol.h 2617:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
  hs_bindgen_e566cd1d98199064

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_set_user_data@
foreign import ccall unsafe "hs_bindgen_2fd0ff3cc9436e9c" hs_bindgen_2fd0ff3cc9436e9c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_set_user_data@
hs_bindgen_2fd0ff3cc9436e9c ::
     RIP.Ptr Wl_data_source
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_2fd0ff3cc9436e9c =
  RIP.fromFFIType hs_bindgen_2fd0ff3cc9436e9c_base

{-| __C declaration:__ @wl_data_source_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2668:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_source_set_user_data ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_data_source_set_user_data =
  hs_bindgen_2fd0ff3cc9436e9c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_get_user_data@
foreign import ccall unsafe "hs_bindgen_a26207178f093080" hs_bindgen_a26207178f093080_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_get_user_data@
hs_bindgen_a26207178f093080 ::
     RIP.Ptr Wl_data_source
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_a26207178f093080 =
  RIP.fromFFIType hs_bindgen_a26207178f093080_base

{-| __C declaration:__ @wl_data_source_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2675:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_source_get_user_data ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> IO (RIP.Ptr RIP.Void)
wl_data_source_get_user_data =
  hs_bindgen_a26207178f093080

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_get_version@
foreign import ccall unsafe "hs_bindgen_97dec80f0ad00430" hs_bindgen_97dec80f0ad00430_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_get_version@
hs_bindgen_97dec80f0ad00430 ::
     RIP.Ptr Wl_data_source
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_97dec80f0ad00430 =
  RIP.fromFFIType hs_bindgen_97dec80f0ad00430_base

{-| __C declaration:__ @wl_data_source_get_version@

    __defined at:__ @wayland-client-protocol.h 2681:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_source_get_version ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_source_get_version =
  hs_bindgen_97dec80f0ad00430

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_offer@
foreign import ccall unsafe "hs_bindgen_610b56020eead1da" hs_bindgen_610b56020eead1da_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_offer@
hs_bindgen_610b56020eead1da ::
     RIP.Ptr Wl_data_source
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_610b56020eead1da =
  RIP.fromFFIType hs_bindgen_610b56020eead1da_base

{-| This request adds a mime type to the set of mime types advertised to targets. Can be called several times to offer multiple types.

    __C declaration:__ @wl_data_source_offer@

    __defined at:__ @wayland-client-protocol.h 2694:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_source_offer ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @mime_type@
  -> IO ()
wl_data_source_offer = hs_bindgen_610b56020eead1da

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_destroy@
foreign import ccall unsafe "hs_bindgen_96f458e272b44a47" hs_bindgen_96f458e272b44a47_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_destroy@
hs_bindgen_96f458e272b44a47 ::
     RIP.Ptr Wl_data_source
  -> IO ()
hs_bindgen_96f458e272b44a47 =
  RIP.fromFFIType hs_bindgen_96f458e272b44a47_base

{-| Destroy the data source.

    __C declaration:__ @wl_data_source_destroy@

    __defined at:__ @wayland-client-protocol.h 2706:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_source_destroy ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> IO ()
wl_data_source_destroy = hs_bindgen_96f458e272b44a47

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_set_actions@
foreign import ccall unsafe "hs_bindgen_5f9651e1c63205f7" hs_bindgen_5f9651e1c63205f7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_set_actions@
hs_bindgen_5f9651e1c63205f7 ::
     RIP.Ptr Wl_data_source
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_5f9651e1c63205f7 =
  RIP.fromFFIType hs_bindgen_5f9651e1c63205f7_base

{-| Sets the actions that the source side client supports for this operation. This request may trigger wl_data_source.action and wl_data_offer.action events if the compositor needs to change the selected action.

    The dnd_actions argument must contain only values expressed in the wl_data_device_manager.dnd_actions enum, otherwise it will result in a protocol error.

    This request must be made once only, and can only be made on sources used in drag-and-drop, so it must be performed before wl_data_device.start_drag. Attempting to use the source other than for drag-and-drop will raise a protocol error.

    __C declaration:__ @wl_data_source_set_actions@

    __defined at:__ @wayland-client-protocol.h 2730:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_source_set_actions ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @dnd_actions@
  -> IO ()
wl_data_source_set_actions =
  hs_bindgen_5f9651e1c63205f7

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_add_listener@
foreign import ccall unsafe "hs_bindgen_08bce99837c93787" hs_bindgen_08bce99837c93787_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_add_listener@
hs_bindgen_08bce99837c93787 ::
     RIP.Ptr Wl_data_device
  -> PtrConst.PtrConst Wl_data_device_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_08bce99837c93787 =
  RIP.fromFFIType hs_bindgen_08bce99837c93787_base

{-| __C declaration:__ @wl_data_device_add_listener@

    __defined at:__ @wayland-client-protocol.h 2860:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
  hs_bindgen_08bce99837c93787

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_set_user_data@
foreign import ccall unsafe "hs_bindgen_006d301ba3a52a5e" hs_bindgen_006d301ba3a52a5e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_set_user_data@
hs_bindgen_006d301ba3a52a5e ::
     RIP.Ptr Wl_data_device
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_006d301ba3a52a5e =
  RIP.fromFFIType hs_bindgen_006d301ba3a52a5e_base

{-| __C declaration:__ @wl_data_device_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2911:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_set_user_data ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_data_device_set_user_data =
  hs_bindgen_006d301ba3a52a5e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_get_user_data@
foreign import ccall unsafe "hs_bindgen_1037ea72f6fce511" hs_bindgen_1037ea72f6fce511_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_get_user_data@
hs_bindgen_1037ea72f6fce511 ::
     RIP.Ptr Wl_data_device
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_1037ea72f6fce511 =
  RIP.fromFFIType hs_bindgen_1037ea72f6fce511_base

{-| __C declaration:__ @wl_data_device_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2918:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_get_user_data ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> IO (RIP.Ptr RIP.Void)
wl_data_device_get_user_data =
  hs_bindgen_1037ea72f6fce511

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_get_version@
foreign import ccall unsafe "hs_bindgen_65ec0d864e846d2e" hs_bindgen_65ec0d864e846d2e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_get_version@
hs_bindgen_65ec0d864e846d2e ::
     RIP.Ptr Wl_data_device
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_65ec0d864e846d2e =
  RIP.fromFFIType hs_bindgen_65ec0d864e846d2e_base

{-| __C declaration:__ @wl_data_device_get_version@

    __defined at:__ @wayland-client-protocol.h 2924:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_get_version ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_device_get_version =
  hs_bindgen_65ec0d864e846d2e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_destroy@
foreign import ccall unsafe "hs_bindgen_d98d70204a294872" hs_bindgen_d98d70204a294872_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_destroy@
hs_bindgen_d98d70204a294872 ::
     RIP.Ptr Wl_data_device
  -> IO ()
hs_bindgen_d98d70204a294872 =
  RIP.fromFFIType hs_bindgen_d98d70204a294872_base

{-| __C declaration:__ @wl_data_device_destroy@

    __defined at:__ @wayland-client-protocol.h 2931:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_destroy ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> IO ()
wl_data_device_destroy = hs_bindgen_d98d70204a294872

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_start_drag@
foreign import ccall unsafe "hs_bindgen_39d2bb3f7083d7c2" hs_bindgen_39d2bb3f7083d7c2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_start_drag@
hs_bindgen_39d2bb3f7083d7c2 ::
     RIP.Ptr Wl_data_device
  -> RIP.Ptr Wl_data_source
  -> RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_39d2bb3f7083d7c2 =
  RIP.fromFFIType hs_bindgen_39d2bb3f7083d7c2_base

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
  hs_bindgen_39d2bb3f7083d7c2

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_set_selection@
foreign import ccall unsafe "hs_bindgen_4382577358af4b8a" hs_bindgen_4382577358af4b8a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_set_selection@
hs_bindgen_4382577358af4b8a ::
     RIP.Ptr Wl_data_device
  -> RIP.Ptr Wl_data_source
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_4382577358af4b8a =
  RIP.fromFFIType hs_bindgen_4382577358af4b8a_base

{-| This request asks the compositor to set the selection to the data from the source on behalf of the client.

    To unset the selection, set the source to NULL.

    The given source may not be used in any further set_selection or start_drag requests. Attempting to reuse a previously-used source may send a used_source error.

    __C declaration:__ @wl_data_device_set_selection@

    __defined at:__ @wayland-client-protocol.h 2989:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
  hs_bindgen_4382577358af4b8a

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_release@
foreign import ccall unsafe "hs_bindgen_14e7bbd785e48b18" hs_bindgen_14e7bbd785e48b18_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_release@
hs_bindgen_14e7bbd785e48b18 ::
     RIP.Ptr Wl_data_device
  -> IO ()
hs_bindgen_14e7bbd785e48b18 =
  RIP.fromFFIType hs_bindgen_14e7bbd785e48b18_base

{-| This request destroys the data device.

    __C declaration:__ @wl_data_device_release@

    __defined at:__ @wayland-client-protocol.h 3001:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_release ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> IO ()
wl_data_device_release = hs_bindgen_14e7bbd785e48b18

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_set_user_data@
foreign import ccall unsafe "hs_bindgen_f462a3ff1a547ac3" hs_bindgen_f462a3ff1a547ac3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_set_user_data@
hs_bindgen_f462a3ff1a547ac3 ::
     RIP.Ptr Wl_data_device_manager
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_f462a3ff1a547ac3 =
  RIP.fromFFIType hs_bindgen_f462a3ff1a547ac3_base

{-| __C declaration:__ @wl_data_device_manager_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3072:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_set_user_data ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_data_device_manager_set_user_data =
  hs_bindgen_f462a3ff1a547ac3

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_get_user_data@
foreign import ccall unsafe "hs_bindgen_cfe0dc032d08b5d2" hs_bindgen_cfe0dc032d08b5d2_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_get_user_data@
hs_bindgen_cfe0dc032d08b5d2 ::
     RIP.Ptr Wl_data_device_manager
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_cfe0dc032d08b5d2 =
  RIP.fromFFIType hs_bindgen_cfe0dc032d08b5d2_base

{-| __C declaration:__ @wl_data_device_manager_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3079:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_user_data ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO (RIP.Ptr RIP.Void)
wl_data_device_manager_get_user_data =
  hs_bindgen_cfe0dc032d08b5d2

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_get_version@
foreign import ccall unsafe "hs_bindgen_c8463b75e767c5e9" hs_bindgen_c8463b75e767c5e9_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_get_version@
hs_bindgen_c8463b75e767c5e9 ::
     RIP.Ptr Wl_data_device_manager
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_c8463b75e767c5e9 =
  RIP.fromFFIType hs_bindgen_c8463b75e767c5e9_base

{-| __C declaration:__ @wl_data_device_manager_get_version@

    __defined at:__ @wayland-client-protocol.h 3085:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_version ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_device_manager_get_version =
  hs_bindgen_c8463b75e767c5e9

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_destroy@
foreign import ccall unsafe "hs_bindgen_21456986b335e177" hs_bindgen_21456986b335e177_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_destroy@
hs_bindgen_21456986b335e177 ::
     RIP.Ptr Wl_data_device_manager
  -> IO ()
hs_bindgen_21456986b335e177 =
  RIP.fromFFIType hs_bindgen_21456986b335e177_base

{-| __C declaration:__ @wl_data_device_manager_destroy@

    __defined at:__ @wayland-client-protocol.h 3092:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_destroy ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO ()
wl_data_device_manager_destroy =
  hs_bindgen_21456986b335e177

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_create_data_source@
foreign import ccall unsafe "hs_bindgen_34a273fda3051d34" hs_bindgen_34a273fda3051d34_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_create_data_source@
hs_bindgen_34a273fda3051d34 ::
     RIP.Ptr Wl_data_device_manager
  -> IO (RIP.Ptr Wl_data_source)
hs_bindgen_34a273fda3051d34 =
  RIP.fromFFIType hs_bindgen_34a273fda3051d34_base

{-| Create a new data source.

    __C declaration:__ @wl_data_device_manager_create_data_source@

    __defined at:__ @wayland-client-protocol.h 3103:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_create_data_source ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO (RIP.Ptr Wl_data_source)
wl_data_device_manager_create_data_source =
  hs_bindgen_34a273fda3051d34

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_get_data_device@
foreign import ccall unsafe "hs_bindgen_2f9e9140eab18d0b" hs_bindgen_2f9e9140eab18d0b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_get_data_device@
hs_bindgen_2f9e9140eab18d0b ::
     RIP.Ptr Wl_data_device_manager
  -> RIP.Ptr Wl_seat
  -> IO (RIP.Ptr Wl_data_device)
hs_bindgen_2f9e9140eab18d0b =
  RIP.fromFFIType hs_bindgen_2f9e9140eab18d0b_base

{-| Create a new data device for a given seat.

    __C declaration:__ @wl_data_device_manager_get_data_device@

    __defined at:__ @wayland-client-protocol.h 3119:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_data_device ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @seat@
  -> IO (RIP.Ptr Wl_data_device)
wl_data_device_manager_get_data_device =
  hs_bindgen_2f9e9140eab18d0b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_set_user_data@
foreign import ccall unsafe "hs_bindgen_4e4c7266fcb1eb23" hs_bindgen_4e4c7266fcb1eb23_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_set_user_data@
hs_bindgen_4e4c7266fcb1eb23 ::
     RIP.Ptr Wl_shell
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_4e4c7266fcb1eb23 =
  RIP.fromFFIType hs_bindgen_4e4c7266fcb1eb23_base

{-| __C declaration:__ @wl_shell_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3149:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_set_user_data ::
     RIP.Ptr Wl_shell
     -- ^ __C declaration:__ @wl_shell@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_shell_set_user_data = hs_bindgen_4e4c7266fcb1eb23

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_get_user_data@
foreign import ccall unsafe "hs_bindgen_5d871f273a55b163" hs_bindgen_5d871f273a55b163_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_get_user_data@
hs_bindgen_5d871f273a55b163 ::
     RIP.Ptr Wl_shell
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_5d871f273a55b163 =
  RIP.fromFFIType hs_bindgen_5d871f273a55b163_base

{-| __C declaration:__ @wl_shell_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3156:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_get_user_data ::
     RIP.Ptr Wl_shell
     -- ^ __C declaration:__ @wl_shell@
  -> IO (RIP.Ptr RIP.Void)
wl_shell_get_user_data = hs_bindgen_5d871f273a55b163

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_get_version@
foreign import ccall unsafe "hs_bindgen_8637c714c31cd402" hs_bindgen_8637c714c31cd402_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_get_version@
hs_bindgen_8637c714c31cd402 ::
     RIP.Ptr Wl_shell
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_8637c714c31cd402 =
  RIP.fromFFIType hs_bindgen_8637c714c31cd402_base

{-| __C declaration:__ @wl_shell_get_version@

    __defined at:__ @wayland-client-protocol.h 3162:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_get_version ::
     RIP.Ptr Wl_shell
     -- ^ __C declaration:__ @wl_shell@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shell_get_version = hs_bindgen_8637c714c31cd402

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_destroy@
foreign import ccall unsafe "hs_bindgen_cf7bb0680ad077d5" hs_bindgen_cf7bb0680ad077d5_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_destroy@
hs_bindgen_cf7bb0680ad077d5 ::
     RIP.Ptr Wl_shell
  -> IO ()
hs_bindgen_cf7bb0680ad077d5 =
  RIP.fromFFIType hs_bindgen_cf7bb0680ad077d5_base

{-| __C declaration:__ @wl_shell_destroy@

    __defined at:__ @wayland-client-protocol.h 3169:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_destroy ::
     RIP.Ptr Wl_shell
     -- ^ __C declaration:__ @wl_shell@
  -> IO ()
wl_shell_destroy = hs_bindgen_cf7bb0680ad077d5

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_get_shell_surface@
foreign import ccall unsafe "hs_bindgen_c2297ce9ae229360" hs_bindgen_c2297ce9ae229360_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_get_shell_surface@
hs_bindgen_c2297ce9ae229360 ::
     RIP.Ptr Wl_shell
  -> RIP.Ptr Wl_surface
  -> IO (RIP.Ptr Wl_shell_surface)
hs_bindgen_c2297ce9ae229360 =
  RIP.fromFFIType hs_bindgen_c2297ce9ae229360_base

{-| Create a shell surface for an existing surface. This gives the wl_surface the role of a shell surface. If the wl_surface already has another role, it raises a protocol error.

    Only one shell surface can be associated with a given surface.

    __C declaration:__ @wl_shell_get_shell_surface@

    __defined at:__ @wayland-client-protocol.h 3184:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_get_shell_surface ::
     RIP.Ptr Wl_shell
     -- ^ __C declaration:__ @wl_shell@
  -> RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @surface@
  -> IO (RIP.Ptr Wl_shell_surface)
wl_shell_get_shell_surface =
  hs_bindgen_c2297ce9ae229360

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_add_listener@
foreign import ccall unsafe "hs_bindgen_954479603f8329bd" hs_bindgen_954479603f8329bd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_add_listener@
hs_bindgen_954479603f8329bd ::
     RIP.Ptr Wl_shell_surface
  -> PtrConst.PtrConst Wl_shell_surface_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_954479603f8329bd =
  RIP.fromFFIType hs_bindgen_954479603f8329bd_base

{-| __C declaration:__ @wl_shell_surface_add_listener@

    __defined at:__ @wayland-client-protocol.h 3351:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
  hs_bindgen_954479603f8329bd

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_user_data@
foreign import ccall unsafe "hs_bindgen_547a1a3995c63eca" hs_bindgen_547a1a3995c63eca_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_user_data@
hs_bindgen_547a1a3995c63eca ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_547a1a3995c63eca =
  RIP.fromFFIType hs_bindgen_547a1a3995c63eca_base

{-| __C declaration:__ @wl_shell_surface_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3425:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_user_data ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_shell_surface_set_user_data =
  hs_bindgen_547a1a3995c63eca

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_get_user_data@
foreign import ccall unsafe "hs_bindgen_0ead2c2f5c314b54" hs_bindgen_0ead2c2f5c314b54_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_get_user_data@
hs_bindgen_0ead2c2f5c314b54 ::
     RIP.Ptr Wl_shell_surface
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_0ead2c2f5c314b54 =
  RIP.fromFFIType hs_bindgen_0ead2c2f5c314b54_base

{-| __C declaration:__ @wl_shell_surface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3432:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_get_user_data ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO (RIP.Ptr RIP.Void)
wl_shell_surface_get_user_data =
  hs_bindgen_0ead2c2f5c314b54

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_get_version@
foreign import ccall unsafe "hs_bindgen_12a934bba84c3a62" hs_bindgen_12a934bba84c3a62_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_get_version@
hs_bindgen_12a934bba84c3a62 ::
     RIP.Ptr Wl_shell_surface
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_12a934bba84c3a62 =
  RIP.fromFFIType hs_bindgen_12a934bba84c3a62_base

{-| __C declaration:__ @wl_shell_surface_get_version@

    __defined at:__ @wayland-client-protocol.h 3438:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_get_version ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shell_surface_get_version =
  hs_bindgen_12a934bba84c3a62

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_destroy@
foreign import ccall unsafe "hs_bindgen_2eb4ae1be699ebb9" hs_bindgen_2eb4ae1be699ebb9_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_destroy@
hs_bindgen_2eb4ae1be699ebb9 ::
     RIP.Ptr Wl_shell_surface
  -> IO ()
hs_bindgen_2eb4ae1be699ebb9 =
  RIP.fromFFIType hs_bindgen_2eb4ae1be699ebb9_base

{-| __C declaration:__ @wl_shell_surface_destroy@

    __defined at:__ @wayland-client-protocol.h 3445:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_destroy ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO ()
wl_shell_surface_destroy =
  hs_bindgen_2eb4ae1be699ebb9

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_pong@
foreign import ccall unsafe "hs_bindgen_2d7c2aa3da9df105" hs_bindgen_2d7c2aa3da9df105_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_pong@
hs_bindgen_2d7c2aa3da9df105 ::
     RIP.Ptr Wl_shell_surface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_2d7c2aa3da9df105 =
  RIP.fromFFIType hs_bindgen_2d7c2aa3da9df105_base

{-| A client must respond to a ping event with a pong request or the client may be deemed unresponsive.

    __C declaration:__ @wl_shell_surface_pong@

    __defined at:__ @wayland-client-protocol.h 3457:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_pong ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> IO ()
wl_shell_surface_pong = hs_bindgen_2d7c2aa3da9df105

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_move@
foreign import ccall unsafe "hs_bindgen_a8f9a1895878c2a2" hs_bindgen_a8f9a1895878c2a2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_move@
hs_bindgen_a8f9a1895878c2a2 ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_seat
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_a8f9a1895878c2a2 =
  RIP.fromFFIType hs_bindgen_a8f9a1895878c2a2_base

{-| Start a pointer-driven move of the surface.

    This request must be used in response to a button press event. The server may ignore move requests depending on the state of the surface (e.g. fullscreen or maximized).

    __C declaration:__ @wl_shell_surface_move@

    __defined at:__ @wayland-client-protocol.h 3473:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_move ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @seat@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> IO ()
wl_shell_surface_move = hs_bindgen_a8f9a1895878c2a2

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_resize@
foreign import ccall unsafe "hs_bindgen_4231c259adaa299d" hs_bindgen_4231c259adaa299d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_resize@
hs_bindgen_4231c259adaa299d ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_seat
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_4231c259adaa299d =
  RIP.fromFFIType hs_bindgen_4231c259adaa299d_base

{-| Start a pointer-driven resizing of the surface.

    This request must be used in response to a button press event. The server may ignore resize requests depending on the state of the surface (e.g. fullscreen or maximized).

    __C declaration:__ @wl_shell_surface_resize@

    __defined at:__ @wayland-client-protocol.h 3489:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
wl_shell_surface_resize = hs_bindgen_4231c259adaa299d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_toplevel@
foreign import ccall unsafe "hs_bindgen_1e6e0d3a382170e3" hs_bindgen_1e6e0d3a382170e3_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_toplevel@
hs_bindgen_1e6e0d3a382170e3 ::
     RIP.Ptr Wl_shell_surface
  -> IO ()
hs_bindgen_1e6e0d3a382170e3 =
  RIP.fromFFIType hs_bindgen_1e6e0d3a382170e3_base

{-| Map the surface as a toplevel surface.

    A toplevel surface is not fullscreen, maximized or transient.

    __C declaration:__ @wl_shell_surface_set_toplevel@

    __defined at:__ @wayland-client-protocol.h 3503:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_toplevel ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO ()
wl_shell_surface_set_toplevel =
  hs_bindgen_1e6e0d3a382170e3

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_transient@
foreign import ccall unsafe "hs_bindgen_5ac5efab1cab1aeb" hs_bindgen_5ac5efab1cab1aeb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_transient@
hs_bindgen_5ac5efab1cab1aeb ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_5ac5efab1cab1aeb =
  RIP.fromFFIType hs_bindgen_5ac5efab1cab1aeb_base

{-| Map the surface relative to an existing surface.

    The x and y arguments specify the location of the upper left corner of the surface relative to the upper left corner of the parent surface, in surface-local coordinates.

    The flags argument controls details of the transient behaviour.

    __C declaration:__ @wl_shell_surface_set_transient@

    __defined at:__ @wayland-client-protocol.h 3521:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
  hs_bindgen_5ac5efab1cab1aeb

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_fullscreen@
foreign import ccall unsafe "hs_bindgen_c28dc1f5fef8800b" hs_bindgen_c28dc1f5fef8800b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_fullscreen@
hs_bindgen_c28dc1f5fef8800b ::
     RIP.Ptr Wl_shell_surface
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Wl_output
  -> IO ()
hs_bindgen_c28dc1f5fef8800b =
  RIP.fromFFIType hs_bindgen_c28dc1f5fef8800b_base

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
  hs_bindgen_c28dc1f5fef8800b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_popup@
foreign import ccall unsafe "hs_bindgen_545dc1d9911af50d" hs_bindgen_545dc1d9911af50d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_popup@
hs_bindgen_545dc1d9911af50d ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_seat
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_545dc1d9911af50d =
  RIP.fromFFIType hs_bindgen_545dc1d9911af50d_base

{-| Map the surface as a popup.

    A popup surface is a transient surface with an added pointer grab.

    An existing implicit grab will be changed to owner-events mode, and the popup grab will continue after the implicit grab ends (i.e. releasing the mouse button does not cause the popup to be unmapped).

    The popup grab continues until the window is destroyed or a mouse button is pressed in any other client's window. A click in any of the client's surfaces is reported as normal, however, clicks in other clients' surfaces will be discarded and trigger the callback.

    The x and y arguments specify the location of the upper left corner of the surface relative to the upper left corner of the parent surface, in surface-local coordinates.

    __C declaration:__ @wl_shell_surface_set_popup@

    __defined at:__ @wayland-client-protocol.h 3595:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
  hs_bindgen_545dc1d9911af50d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_maximized@
foreign import ccall unsafe "hs_bindgen_99f8d3be3d6dd675" hs_bindgen_99f8d3be3d6dd675_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_maximized@
hs_bindgen_99f8d3be3d6dd675 ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_output
  -> IO ()
hs_bindgen_99f8d3be3d6dd675 =
  RIP.fromFFIType hs_bindgen_99f8d3be3d6dd675_base

{-| Map the surface as a maximized surface.

    If an output parameter is given then the surface will be maximized on that output. If the client does not specify the output then the compositor will apply its policy - usually choosing the output on which the surface has the biggest surface area.

    The compositor will reply with a configure event telling the expected new surface size. The operation is completed on the next buffer attach to this surface.

    A maximized surface typically fills the entire output it is bound to, except for desktop elements such as panels. This is the main difference between a maximized shell surface and a fullscreen shell surface.

    The details depend on the compositor implementation.

    __C declaration:__ @wl_shell_surface_set_maximized@

    __defined at:__ @wayland-client-protocol.h 3624:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_maximized ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> RIP.Ptr Wl_output
     -- ^ __C declaration:__ @output@
  -> IO ()
wl_shell_surface_set_maximized =
  hs_bindgen_99f8d3be3d6dd675

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_title@
foreign import ccall unsafe "hs_bindgen_260f4c6e77a72f9b" hs_bindgen_260f4c6e77a72f9b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_title@
hs_bindgen_260f4c6e77a72f9b ::
     RIP.Ptr Wl_shell_surface
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_260f4c6e77a72f9b =
  RIP.fromFFIType hs_bindgen_260f4c6e77a72f9b_base

{-| Set a short title for the surface.

    This string may be used to identify the surface in a task bar, window list, or other user interface elements provided by the compositor.

    The string must be encoded in UTF-8.

    __C declaration:__ @wl_shell_surface_set_title@

    __defined at:__ @wayland-client-protocol.h 3642:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_title ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @title@
  -> IO ()
wl_shell_surface_set_title =
  hs_bindgen_260f4c6e77a72f9b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_class@
foreign import ccall unsafe "hs_bindgen_6265669007a918e2" hs_bindgen_6265669007a918e2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_class@
hs_bindgen_6265669007a918e2 ::
     RIP.Ptr Wl_shell_surface
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_6265669007a918e2 =
  RIP.fromFFIType hs_bindgen_6265669007a918e2_base

{-| Set a class for the surface.

    The surface class identifies the general class of applications to which the surface belongs. A common convention is to use the file name (or the full path if it is a non-standard location) of the application's .desktop file as the class.

    __C declaration:__ @wl_shell_surface_set_class@

    __defined at:__ @wayland-client-protocol.h 3659:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_class ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @class_@
  -> IO ()
wl_shell_surface_set_class =
  hs_bindgen_6265669007a918e2

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_add_listener@
foreign import ccall unsafe "hs_bindgen_1d38b390046f5669" hs_bindgen_1d38b390046f5669_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_add_listener@
hs_bindgen_1d38b390046f5669 ::
     RIP.Ptr Wl_surface
  -> PtrConst.PtrConst Wl_surface_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_1d38b390046f5669 =
  RIP.fromFFIType hs_bindgen_1d38b390046f5669_base

{-| __C declaration:__ @wl_surface_add_listener@

    __defined at:__ @wayland-client-protocol.h 3780:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_add_listener ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> PtrConst.PtrConst Wl_surface_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_surface_add_listener = hs_bindgen_1d38b390046f5669

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_set_user_data@
foreign import ccall unsafe "hs_bindgen_164334442259c81c" hs_bindgen_164334442259c81c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_set_user_data@
hs_bindgen_164334442259c81c ::
     RIP.Ptr Wl_surface
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_164334442259c81c =
  RIP.fromFFIType hs_bindgen_164334442259c81c_base

{-| __C declaration:__ @wl_surface_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3863:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_set_user_data ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_surface_set_user_data =
  hs_bindgen_164334442259c81c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_get_user_data@
foreign import ccall unsafe "hs_bindgen_bf81736f8bacc49b" hs_bindgen_bf81736f8bacc49b_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_get_user_data@
hs_bindgen_bf81736f8bacc49b ::
     RIP.Ptr Wl_surface
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_bf81736f8bacc49b =
  RIP.fromFFIType hs_bindgen_bf81736f8bacc49b_base

{-| __C declaration:__ @wl_surface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3870:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_get_user_data ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO (RIP.Ptr RIP.Void)
wl_surface_get_user_data =
  hs_bindgen_bf81736f8bacc49b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_get_version@
foreign import ccall unsafe "hs_bindgen_ea892a7db75826a1" hs_bindgen_ea892a7db75826a1_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_get_version@
hs_bindgen_ea892a7db75826a1 ::
     RIP.Ptr Wl_surface
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_ea892a7db75826a1 =
  RIP.fromFFIType hs_bindgen_ea892a7db75826a1_base

{-| __C declaration:__ @wl_surface_get_version@

    __defined at:__ @wayland-client-protocol.h 3876:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_get_version ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_surface_get_version = hs_bindgen_ea892a7db75826a1

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_destroy@
foreign import ccall unsafe "hs_bindgen_fb464699899cd00e" hs_bindgen_fb464699899cd00e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_destroy@
hs_bindgen_fb464699899cd00e ::
     RIP.Ptr Wl_surface
  -> IO ()
hs_bindgen_fb464699899cd00e =
  RIP.fromFFIType hs_bindgen_fb464699899cd00e_base

{-| Deletes the surface and invalidates its object ID.

    __C declaration:__ @wl_surface_destroy@

    __defined at:__ @wayland-client-protocol.h 3887:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_destroy ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO ()
wl_surface_destroy = hs_bindgen_fb464699899cd00e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_attach@
foreign import ccall unsafe "hs_bindgen_f058a4ec3eb0bd81" hs_bindgen_f058a4ec3eb0bd81_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_attach@
hs_bindgen_f058a4ec3eb0bd81 ::
     RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_buffer
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_f058a4ec3eb0bd81 =
  RIP.fromFFIType hs_bindgen_f058a4ec3eb0bd81_base

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
wl_surface_attach = hs_bindgen_f058a4ec3eb0bd81

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_damage@
foreign import ccall unsafe "hs_bindgen_e67d2e69a4529473" hs_bindgen_e67d2e69a4529473_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_damage@
hs_bindgen_e67d2e69a4529473 ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_e67d2e69a4529473 =
  RIP.fromFFIType hs_bindgen_e67d2e69a4529473_base

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
wl_surface_damage = hs_bindgen_e67d2e69a4529473

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_frame@
foreign import ccall unsafe "hs_bindgen_349b0a3b9f1abc41" hs_bindgen_349b0a3b9f1abc41_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_frame@
hs_bindgen_349b0a3b9f1abc41 ::
     RIP.Ptr Wl_surface
  -> IO (RIP.Ptr Wl_callback)
hs_bindgen_349b0a3b9f1abc41 =
  RIP.fromFFIType hs_bindgen_349b0a3b9f1abc41_base

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
wl_surface_frame ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO (RIP.Ptr Wl_callback)
wl_surface_frame = hs_bindgen_349b0a3b9f1abc41

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_set_opaque_region@
foreign import ccall unsafe "hs_bindgen_ad9eccc3b6b156f4" hs_bindgen_ad9eccc3b6b156f4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_set_opaque_region@
hs_bindgen_ad9eccc3b6b156f4 ::
     RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_region
  -> IO ()
hs_bindgen_ad9eccc3b6b156f4 =
  RIP.fromFFIType hs_bindgen_ad9eccc3b6b156f4_base

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
wl_surface_set_opaque_region ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> RIP.Ptr Wl_region
     -- ^ __C declaration:__ @region@
  -> IO ()
wl_surface_set_opaque_region =
  hs_bindgen_ad9eccc3b6b156f4

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_set_input_region@
foreign import ccall unsafe "hs_bindgen_3353bcd502b9fee1" hs_bindgen_3353bcd502b9fee1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_set_input_region@
hs_bindgen_3353bcd502b9fee1 ::
     RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_region
  -> IO ()
hs_bindgen_3353bcd502b9fee1 =
  RIP.fromFFIType hs_bindgen_3353bcd502b9fee1_base

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
wl_surface_set_input_region ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> RIP.Ptr Wl_region
     -- ^ __C declaration:__ @region@
  -> IO ()
wl_surface_set_input_region =
  hs_bindgen_3353bcd502b9fee1

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_commit@
foreign import ccall unsafe "hs_bindgen_27338c576ab202ac" hs_bindgen_27338c576ab202ac_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_commit@
hs_bindgen_27338c576ab202ac ::
     RIP.Ptr Wl_surface
  -> IO ()
hs_bindgen_27338c576ab202ac =
  RIP.fromFFIType hs_bindgen_27338c576ab202ac_base

{-| Surface state (input, opaque, and damage regions, attached buffers, etc.) is double-buffered. Protocol requests modify the pending state, as opposed to the active state in use by the compositor.

    A commit request atomically creates a content update from the pending state, even if the pending state has not been touched. The content update is placed in a queue until it becomes active. After commit, the new pending state is as documented for each related request.

    When the content update is applied, the wl_buffer is applied before all other state. This means that all coordinates in double-buffered state are relative to the newly attached wl_buffers, except for wl_surface.attach itself. If there is no newly attached wl_buffer, the coordinates are relative to the previous content update.

    All requests that need a commit to become effective are documented to affect double-buffered state.

    Other interfaces may add further double-buffered surface state.

    __C declaration:__ @wl_surface_commit@

    __defined at:__ @wayland-client-protocol.h 4140:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_commit ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO ()
wl_surface_commit = hs_bindgen_27338c576ab202ac

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_set_buffer_transform@
foreign import ccall unsafe "hs_bindgen_be71d8c01b214e26" hs_bindgen_be71d8c01b214e26_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_set_buffer_transform@
hs_bindgen_be71d8c01b214e26 ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_be71d8c01b214e26 =
  RIP.fromFFIType hs_bindgen_be71d8c01b214e26_base

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
wl_surface_set_buffer_transform ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @transform@
  -> IO ()
wl_surface_set_buffer_transform =
  hs_bindgen_be71d8c01b214e26

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_set_buffer_scale@
foreign import ccall unsafe "hs_bindgen_177a44fe834fb37b" hs_bindgen_177a44fe834fb37b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_set_buffer_scale@
hs_bindgen_177a44fe834fb37b ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_177a44fe834fb37b =
  RIP.fromFFIType hs_bindgen_177a44fe834fb37b_base

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
wl_surface_set_buffer_scale ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @scale@
  -> IO ()
wl_surface_set_buffer_scale =
  hs_bindgen_177a44fe834fb37b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_damage_buffer@
foreign import ccall unsafe "hs_bindgen_2aa56255948e63c7" hs_bindgen_2aa56255948e63c7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_damage_buffer@
hs_bindgen_2aa56255948e63c7 ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_2aa56255948e63c7 =
  RIP.fromFFIType hs_bindgen_2aa56255948e63c7_base

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
  hs_bindgen_2aa56255948e63c7

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_offset@
foreign import ccall unsafe "hs_bindgen_dd901bddc9b47863" hs_bindgen_dd901bddc9b47863_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_offset@
hs_bindgen_dd901bddc9b47863 ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_dd901bddc9b47863 =
  RIP.fromFFIType hs_bindgen_dd901bddc9b47863_base

{-| The x and y arguments specify the location of the new pending buffer's upper left corner, relative to the current buffer's upper left corner, in surface-local coordinates. In other words, the x and y, combined with the new surface size define in which directions the surface's size changes.

    The exact semantics of wl_surface.offset are role-specific. Refer to the documentation of specific roles for more information.

    Surface location offset is double-buffered state, see wl_surface.commit.

    This request is semantically equivalent to and the replaces the x and y arguments in the wl_surface.attach request in wl_surface versions prior to 5. See wl_surface.attach for details.

    __C declaration:__ @wl_surface_offset@

    __defined at:__ @wayland-client-protocol.h 4285:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_offset ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> IO ()
wl_surface_offset = hs_bindgen_dd901bddc9b47863

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_add_listener@
foreign import ccall unsafe "hs_bindgen_7a6480fb86b10913" hs_bindgen_7a6480fb86b10913_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_add_listener@
hs_bindgen_7a6480fb86b10913 ::
     RIP.Ptr Wl_seat
  -> PtrConst.PtrConst Wl_seat_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_7a6480fb86b10913 =
  RIP.fromFFIType hs_bindgen_7a6480fb86b10913_base

{-| __C declaration:__ @wl_seat_add_listener@

    __defined at:__ @wayland-client-protocol.h 4406:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_add_listener ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> PtrConst.PtrConst Wl_seat_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_seat_add_listener = hs_bindgen_7a6480fb86b10913

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_set_user_data@
foreign import ccall unsafe "hs_bindgen_8eda8aec3c115e6b" hs_bindgen_8eda8aec3c115e6b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_set_user_data@
hs_bindgen_8eda8aec3c115e6b ::
     RIP.Ptr Wl_seat
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_8eda8aec3c115e6b =
  RIP.fromFFIType hs_bindgen_8eda8aec3c115e6b_base

{-| __C declaration:__ @wl_seat_set_user_data@

    __defined at:__ @wayland-client-protocol.h 4446:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_set_user_data ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_seat_set_user_data = hs_bindgen_8eda8aec3c115e6b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_get_user_data@
foreign import ccall unsafe "hs_bindgen_e997631dc09aee2e" hs_bindgen_e997631dc09aee2e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_get_user_data@
hs_bindgen_e997631dc09aee2e ::
     RIP.Ptr Wl_seat
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_e997631dc09aee2e =
  RIP.fromFFIType hs_bindgen_e997631dc09aee2e_base

{-| __C declaration:__ @wl_seat_get_user_data@

    __defined at:__ @wayland-client-protocol.h 4453:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_get_user_data ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO (RIP.Ptr RIP.Void)
wl_seat_get_user_data = hs_bindgen_e997631dc09aee2e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_get_version@
foreign import ccall unsafe "hs_bindgen_21400e8b3fb632a1" hs_bindgen_21400e8b3fb632a1_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_get_version@
hs_bindgen_21400e8b3fb632a1 ::
     RIP.Ptr Wl_seat
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_21400e8b3fb632a1 =
  RIP.fromFFIType hs_bindgen_21400e8b3fb632a1_base

{-| __C declaration:__ @wl_seat_get_version@

    __defined at:__ @wayland-client-protocol.h 4459:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_get_version ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_seat_get_version = hs_bindgen_21400e8b3fb632a1

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_destroy@
foreign import ccall unsafe "hs_bindgen_690b8ff7f2387af5" hs_bindgen_690b8ff7f2387af5_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_destroy@
hs_bindgen_690b8ff7f2387af5 ::
     RIP.Ptr Wl_seat
  -> IO ()
hs_bindgen_690b8ff7f2387af5 =
  RIP.fromFFIType hs_bindgen_690b8ff7f2387af5_base

{-| __C declaration:__ @wl_seat_destroy@

    __defined at:__ @wayland-client-protocol.h 4466:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_destroy ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO ()
wl_seat_destroy = hs_bindgen_690b8ff7f2387af5

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_get_pointer@
foreign import ccall unsafe "hs_bindgen_6c1ffd009deddb3c" hs_bindgen_6c1ffd009deddb3c_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_get_pointer@
hs_bindgen_6c1ffd009deddb3c ::
     RIP.Ptr Wl_seat
  -> IO (RIP.Ptr Wl_pointer)
hs_bindgen_6c1ffd009deddb3c =
  RIP.fromFFIType hs_bindgen_6c1ffd009deddb3c_base

{-| The ID provided will be initialized to the wl_pointer interface for this seat.

    This request only takes effect if the seat has the pointer capability, or has had the pointer capability in the past. It is a protocol violation to issue this request on a seat that has never had the pointer capability. The missing_capability error will be sent in this case.

    __C declaration:__ @wl_seat_get_pointer@

    __defined at:__ @wayland-client-protocol.h 4484:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_get_pointer ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO (RIP.Ptr Wl_pointer)
wl_seat_get_pointer = hs_bindgen_6c1ffd009deddb3c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_get_keyboard@
foreign import ccall unsafe "hs_bindgen_338c4477e8e554fe" hs_bindgen_338c4477e8e554fe_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_get_keyboard@
hs_bindgen_338c4477e8e554fe ::
     RIP.Ptr Wl_seat
  -> IO (RIP.Ptr Wl_keyboard)
hs_bindgen_338c4477e8e554fe =
  RIP.fromFFIType hs_bindgen_338c4477e8e554fe_base

{-| The ID provided will be initialized to the wl_keyboard interface for this seat.

    This request only takes effect if the seat has the keyboard capability, or has had the keyboard capability in the past. It is a protocol violation to issue this request on a seat that has never had the keyboard capability. The missing_capability error will be sent in this case.

    __C declaration:__ @wl_seat_get_keyboard@

    __defined at:__ @wayland-client-protocol.h 4507:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_get_keyboard ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO (RIP.Ptr Wl_keyboard)
wl_seat_get_keyboard = hs_bindgen_338c4477e8e554fe

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_get_touch@
foreign import ccall unsafe "hs_bindgen_95d89b33dc8cf8e8" hs_bindgen_95d89b33dc8cf8e8_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_get_touch@
hs_bindgen_95d89b33dc8cf8e8 ::
     RIP.Ptr Wl_seat
  -> IO (RIP.Ptr Wl_touch)
hs_bindgen_95d89b33dc8cf8e8 =
  RIP.fromFFIType hs_bindgen_95d89b33dc8cf8e8_base

{-| The ID provided will be initialized to the wl_touch interface for this seat.

    This request only takes effect if the seat has the touch capability, or has had the touch capability in the past. It is a protocol violation to issue this request on a seat that has never had the touch capability. The missing_capability error will be sent in this case.

    __C declaration:__ @wl_seat_get_touch@

    __defined at:__ @wayland-client-protocol.h 4530:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_get_touch ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO (RIP.Ptr Wl_touch)
wl_seat_get_touch = hs_bindgen_95d89b33dc8cf8e8

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_release@
foreign import ccall unsafe "hs_bindgen_47784b3cdbeb35e0" hs_bindgen_47784b3cdbeb35e0_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_release@
hs_bindgen_47784b3cdbeb35e0 ::
     RIP.Ptr Wl_seat
  -> IO ()
hs_bindgen_47784b3cdbeb35e0 =
  RIP.fromFFIType hs_bindgen_47784b3cdbeb35e0_base

{-| Using this request a client can tell the server that it is not going to use the seat object anymore.

    __C declaration:__ @wl_seat_release@

    __defined at:__ @wayland-client-protocol.h 4547:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_release ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO ()
wl_seat_release = hs_bindgen_47784b3cdbeb35e0

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_add_listener@
foreign import ccall unsafe "hs_bindgen_e3a756f6757d7896" hs_bindgen_e3a756f6757d7896_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_add_listener@
hs_bindgen_e3a756f6757d7896 ::
     RIP.Ptr Wl_pointer
  -> PtrConst.PtrConst Wl_pointer_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_e3a756f6757d7896 =
  RIP.fromFFIType hs_bindgen_e3a756f6757d7896_base

{-| __C declaration:__ @wl_pointer_add_listener@

    __defined at:__ @wayland-client-protocol.h 5010:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_pointer_add_listener ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> PtrConst.PtrConst Wl_pointer_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_pointer_add_listener = hs_bindgen_e3a756f6757d7896

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_set_user_data@
foreign import ccall unsafe "hs_bindgen_0a47af221bf6ed6f" hs_bindgen_0a47af221bf6ed6f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_set_user_data@
hs_bindgen_0a47af221bf6ed6f ::
     RIP.Ptr Wl_pointer
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_0a47af221bf6ed6f =
  RIP.fromFFIType hs_bindgen_0a47af221bf6ed6f_base

{-| __C declaration:__ @wl_pointer_set_user_data@

    __defined at:__ @wayland-client-protocol.h 5076:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_pointer_set_user_data ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_pointer_set_user_data =
  hs_bindgen_0a47af221bf6ed6f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_get_user_data@
foreign import ccall unsafe "hs_bindgen_2912b040d73727cb" hs_bindgen_2912b040d73727cb_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_get_user_data@
hs_bindgen_2912b040d73727cb ::
     RIP.Ptr Wl_pointer
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_2912b040d73727cb =
  RIP.fromFFIType hs_bindgen_2912b040d73727cb_base

{-| __C declaration:__ @wl_pointer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5083:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_pointer_get_user_data ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO (RIP.Ptr RIP.Void)
wl_pointer_get_user_data =
  hs_bindgen_2912b040d73727cb

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_get_version@
foreign import ccall unsafe "hs_bindgen_827101fd7efdfda9" hs_bindgen_827101fd7efdfda9_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_get_version@
hs_bindgen_827101fd7efdfda9 ::
     RIP.Ptr Wl_pointer
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_827101fd7efdfda9 =
  RIP.fromFFIType hs_bindgen_827101fd7efdfda9_base

{-| __C declaration:__ @wl_pointer_get_version@

    __defined at:__ @wayland-client-protocol.h 5089:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_pointer_get_version ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_pointer_get_version = hs_bindgen_827101fd7efdfda9

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_destroy@
foreign import ccall unsafe "hs_bindgen_9fba91c1f511c785" hs_bindgen_9fba91c1f511c785_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_destroy@
hs_bindgen_9fba91c1f511c785 ::
     RIP.Ptr Wl_pointer
  -> IO ()
hs_bindgen_9fba91c1f511c785 =
  RIP.fromFFIType hs_bindgen_9fba91c1f511c785_base

{-| __C declaration:__ @wl_pointer_destroy@

    __defined at:__ @wayland-client-protocol.h 5096:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_pointer_destroy ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO ()
wl_pointer_destroy = hs_bindgen_9fba91c1f511c785

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_set_cursor@
foreign import ccall unsafe "hs_bindgen_ba1ba653297db2b2" hs_bindgen_ba1ba653297db2b2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_set_cursor@
hs_bindgen_ba1ba653297db2b2 ::
     RIP.Ptr Wl_pointer
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_ba1ba653297db2b2 =
  RIP.fromFFIType hs_bindgen_ba1ba653297db2b2_base

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
wl_pointer_set_cursor = hs_bindgen_ba1ba653297db2b2

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_release@
foreign import ccall unsafe "hs_bindgen_4f8702919e12249f" hs_bindgen_4f8702919e12249f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_release@
hs_bindgen_4f8702919e12249f ::
     RIP.Ptr Wl_pointer
  -> IO ()
hs_bindgen_4f8702919e12249f =
  RIP.fromFFIType hs_bindgen_4f8702919e12249f_base

{-| Using this request a client can tell the server that it is not going to use the pointer object anymore.

    This request destroys the pointer proxy object, so clients must not call wl_pointer_destroy() after using this request.

    __C declaration:__ @wl_pointer_release@

    __defined at:__ @wayland-client-protocol.h 5155:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_pointer_release ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO ()
wl_pointer_release = hs_bindgen_4f8702919e12249f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_add_listener@
foreign import ccall unsafe "hs_bindgen_1b73cdca489cad45" hs_bindgen_1b73cdca489cad45_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_add_listener@
hs_bindgen_1b73cdca489cad45 ::
     RIP.Ptr Wl_keyboard
  -> PtrConst.PtrConst Wl_keyboard_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_1b73cdca489cad45 =
  RIP.fromFFIType hs_bindgen_1b73cdca489cad45_base

{-| __C declaration:__ @wl_keyboard_add_listener@

    __defined at:__ @wayland-client-protocol.h 5385:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
  hs_bindgen_1b73cdca489cad45

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_set_user_data@
foreign import ccall unsafe "hs_bindgen_558cd2337ec81157" hs_bindgen_558cd2337ec81157_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_set_user_data@
hs_bindgen_558cd2337ec81157 ::
     RIP.Ptr Wl_keyboard
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_558cd2337ec81157 =
  RIP.fromFFIType hs_bindgen_558cd2337ec81157_base

{-| __C declaration:__ @wl_keyboard_set_user_data@

    __defined at:__ @wayland-client-protocol.h 5426:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_keyboard_set_user_data ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_keyboard_set_user_data =
  hs_bindgen_558cd2337ec81157

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_get_user_data@
foreign import ccall unsafe "hs_bindgen_bf65382390466fe8" hs_bindgen_bf65382390466fe8_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_get_user_data@
hs_bindgen_bf65382390466fe8 ::
     RIP.Ptr Wl_keyboard
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_bf65382390466fe8 =
  RIP.fromFFIType hs_bindgen_bf65382390466fe8_base

{-| __C declaration:__ @wl_keyboard_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5433:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_keyboard_get_user_data ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO (RIP.Ptr RIP.Void)
wl_keyboard_get_user_data =
  hs_bindgen_bf65382390466fe8

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_get_version@
foreign import ccall unsafe "hs_bindgen_6b83a04234ac1b3c" hs_bindgen_6b83a04234ac1b3c_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_get_version@
hs_bindgen_6b83a04234ac1b3c ::
     RIP.Ptr Wl_keyboard
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_6b83a04234ac1b3c =
  RIP.fromFFIType hs_bindgen_6b83a04234ac1b3c_base

{-| __C declaration:__ @wl_keyboard_get_version@

    __defined at:__ @wayland-client-protocol.h 5439:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_keyboard_get_version ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_keyboard_get_version = hs_bindgen_6b83a04234ac1b3c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_destroy@
foreign import ccall unsafe "hs_bindgen_526329ca067a7411" hs_bindgen_526329ca067a7411_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_destroy@
hs_bindgen_526329ca067a7411 ::
     RIP.Ptr Wl_keyboard
  -> IO ()
hs_bindgen_526329ca067a7411 =
  RIP.fromFFIType hs_bindgen_526329ca067a7411_base

{-| __C declaration:__ @wl_keyboard_destroy@

    __defined at:__ @wayland-client-protocol.h 5446:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_keyboard_destroy ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO ()
wl_keyboard_destroy = hs_bindgen_526329ca067a7411

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_release@
foreign import ccall unsafe "hs_bindgen_1d88dbf9293fb0a2" hs_bindgen_1d88dbf9293fb0a2_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_release@
hs_bindgen_1d88dbf9293fb0a2 ::
     RIP.Ptr Wl_keyboard
  -> IO ()
hs_bindgen_1d88dbf9293fb0a2 =
  RIP.fromFFIType hs_bindgen_1d88dbf9293fb0a2_base

{-| __C declaration:__ @wl_keyboard_release@

    __defined at:__ @wayland-client-protocol.h 5455:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_keyboard_release ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO ()
wl_keyboard_release = hs_bindgen_1d88dbf9293fb0a2

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_add_listener@
foreign import ccall unsafe "hs_bindgen_5b386a3595042abd" hs_bindgen_5b386a3595042abd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_add_listener@
hs_bindgen_5b386a3595042abd ::
     RIP.Ptr Wl_touch
  -> PtrConst.PtrConst Wl_touch_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_5b386a3595042abd =
  RIP.fromFFIType hs_bindgen_5b386a3595042abd_base

{-| __C declaration:__ @wl_touch_add_listener@

    __defined at:__ @wayland-client-protocol.h 5625:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_touch_add_listener ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> PtrConst.PtrConst Wl_touch_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_touch_add_listener = hs_bindgen_5b386a3595042abd

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_set_user_data@
foreign import ccall unsafe "hs_bindgen_d61c5e13a95d9d99" hs_bindgen_d61c5e13a95d9d99_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_set_user_data@
hs_bindgen_d61c5e13a95d9d99 ::
     RIP.Ptr Wl_touch
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_d61c5e13a95d9d99 =
  RIP.fromFFIType hs_bindgen_d61c5e13a95d9d99_base

{-| __C declaration:__ @wl_touch_set_user_data@

    __defined at:__ @wayland-client-protocol.h 5670:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_touch_set_user_data ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_touch_set_user_data = hs_bindgen_d61c5e13a95d9d99

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_get_user_data@
foreign import ccall unsafe "hs_bindgen_b2ef5cf0329b5752" hs_bindgen_b2ef5cf0329b5752_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_get_user_data@
hs_bindgen_b2ef5cf0329b5752 ::
     RIP.Ptr Wl_touch
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_b2ef5cf0329b5752 =
  RIP.fromFFIType hs_bindgen_b2ef5cf0329b5752_base

{-| __C declaration:__ @wl_touch_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5677:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_touch_get_user_data ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> IO (RIP.Ptr RIP.Void)
wl_touch_get_user_data = hs_bindgen_b2ef5cf0329b5752

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_get_version@
foreign import ccall unsafe "hs_bindgen_dcde1833312d24ac" hs_bindgen_dcde1833312d24ac_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_get_version@
hs_bindgen_dcde1833312d24ac ::
     RIP.Ptr Wl_touch
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_dcde1833312d24ac =
  RIP.fromFFIType hs_bindgen_dcde1833312d24ac_base

{-| __C declaration:__ @wl_touch_get_version@

    __defined at:__ @wayland-client-protocol.h 5683:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_touch_get_version ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_touch_get_version = hs_bindgen_dcde1833312d24ac

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_destroy@
foreign import ccall unsafe "hs_bindgen_3acf9cb883de85ec" hs_bindgen_3acf9cb883de85ec_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_destroy@
hs_bindgen_3acf9cb883de85ec ::
     RIP.Ptr Wl_touch
  -> IO ()
hs_bindgen_3acf9cb883de85ec =
  RIP.fromFFIType hs_bindgen_3acf9cb883de85ec_base

{-| __C declaration:__ @wl_touch_destroy@

    __defined at:__ @wayland-client-protocol.h 5690:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_touch_destroy ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> IO ()
wl_touch_destroy = hs_bindgen_3acf9cb883de85ec

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_release@
foreign import ccall unsafe "hs_bindgen_f6c88fbdd8492a0d" hs_bindgen_f6c88fbdd8492a0d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_release@
hs_bindgen_f6c88fbdd8492a0d ::
     RIP.Ptr Wl_touch
  -> IO ()
hs_bindgen_f6c88fbdd8492a0d =
  RIP.fromFFIType hs_bindgen_f6c88fbdd8492a0d_base

{-| __C declaration:__ @wl_touch_release@

    __defined at:__ @wayland-client-protocol.h 5699:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_touch_release ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> IO ()
wl_touch_release = hs_bindgen_f6c88fbdd8492a0d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_output_add_listener@
foreign import ccall unsafe "hs_bindgen_05706740de558f4c" hs_bindgen_05706740de558f4c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_output_add_listener@
hs_bindgen_05706740de558f4c ::
     RIP.Ptr Wl_output
  -> PtrConst.PtrConst Wl_output_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_05706740de558f4c =
  RIP.fromFFIType hs_bindgen_05706740de558f4c_base

{-| __C declaration:__ @wl_output_add_listener@

    __defined at:__ @wayland-client-protocol.h 6018:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_output_add_listener ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> PtrConst.PtrConst Wl_output_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wl_output_add_listener = hs_bindgen_05706740de558f4c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_output_set_user_data@
foreign import ccall unsafe "hs_bindgen_92a5ee30cfe56481" hs_bindgen_92a5ee30cfe56481_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_output_set_user_data@
hs_bindgen_92a5ee30cfe56481 ::
     RIP.Ptr Wl_output
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_92a5ee30cfe56481 =
  RIP.fromFFIType hs_bindgen_92a5ee30cfe56481_base

{-| __C declaration:__ @wl_output_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6059:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_output_set_user_data ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_output_set_user_data = hs_bindgen_92a5ee30cfe56481

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_output_get_user_data@
foreign import ccall unsafe "hs_bindgen_8a38d30444034e5d" hs_bindgen_8a38d30444034e5d_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_output_get_user_data@
hs_bindgen_8a38d30444034e5d ::
     RIP.Ptr Wl_output
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_8a38d30444034e5d =
  RIP.fromFFIType hs_bindgen_8a38d30444034e5d_base

{-| __C declaration:__ @wl_output_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6066:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_output_get_user_data ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> IO (RIP.Ptr RIP.Void)
wl_output_get_user_data = hs_bindgen_8a38d30444034e5d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_output_get_version@
foreign import ccall unsafe "hs_bindgen_6e8c234869fcf3ec" hs_bindgen_6e8c234869fcf3ec_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_output_get_version@
hs_bindgen_6e8c234869fcf3ec ::
     RIP.Ptr Wl_output
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_6e8c234869fcf3ec =
  RIP.fromFFIType hs_bindgen_6e8c234869fcf3ec_base

{-| __C declaration:__ @wl_output_get_version@

    __defined at:__ @wayland-client-protocol.h 6072:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_output_get_version ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_output_get_version = hs_bindgen_6e8c234869fcf3ec

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_output_destroy@
foreign import ccall unsafe "hs_bindgen_bf43c8bf0591fd0a" hs_bindgen_bf43c8bf0591fd0a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_output_destroy@
hs_bindgen_bf43c8bf0591fd0a ::
     RIP.Ptr Wl_output
  -> IO ()
hs_bindgen_bf43c8bf0591fd0a =
  RIP.fromFFIType hs_bindgen_bf43c8bf0591fd0a_base

{-| __C declaration:__ @wl_output_destroy@

    __defined at:__ @wayland-client-protocol.h 6079:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_output_destroy ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> IO ()
wl_output_destroy = hs_bindgen_bf43c8bf0591fd0a

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_output_release@
foreign import ccall unsafe "hs_bindgen_ab07eb8b7ec72840" hs_bindgen_ab07eb8b7ec72840_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_output_release@
hs_bindgen_ab07eb8b7ec72840 ::
     RIP.Ptr Wl_output
  -> IO ()
hs_bindgen_ab07eb8b7ec72840 =
  RIP.fromFFIType hs_bindgen_ab07eb8b7ec72840_base

{-| Using this request a client can tell the server that it is not going to use the output object anymore.

    __C declaration:__ @wl_output_release@

    __defined at:__ @wayland-client-protocol.h 6091:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_output_release ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> IO ()
wl_output_release = hs_bindgen_ab07eb8b7ec72840

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_region_set_user_data@
foreign import ccall unsafe "hs_bindgen_82825f8930c2ca34" hs_bindgen_82825f8930c2ca34_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_region_set_user_data@
hs_bindgen_82825f8930c2ca34 ::
     RIP.Ptr Wl_region
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_82825f8930c2ca34 =
  RIP.fromFFIType hs_bindgen_82825f8930c2ca34_base

{-| __C declaration:__ @wl_region_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6117:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_region_set_user_data ::
     RIP.Ptr Wl_region
     -- ^ __C declaration:__ @wl_region@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_region_set_user_data = hs_bindgen_82825f8930c2ca34

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_region_get_user_data@
foreign import ccall unsafe "hs_bindgen_a1211daa5c5cb8cf" hs_bindgen_a1211daa5c5cb8cf_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_region_get_user_data@
hs_bindgen_a1211daa5c5cb8cf ::
     RIP.Ptr Wl_region
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_a1211daa5c5cb8cf =
  RIP.fromFFIType hs_bindgen_a1211daa5c5cb8cf_base

{-| __C declaration:__ @wl_region_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6124:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_region_get_user_data ::
     RIP.Ptr Wl_region
     -- ^ __C declaration:__ @wl_region@
  -> IO (RIP.Ptr RIP.Void)
wl_region_get_user_data = hs_bindgen_a1211daa5c5cb8cf

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_region_get_version@
foreign import ccall unsafe "hs_bindgen_736a7c402e32957f" hs_bindgen_736a7c402e32957f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_region_get_version@
hs_bindgen_736a7c402e32957f ::
     RIP.Ptr Wl_region
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_736a7c402e32957f =
  RIP.fromFFIType hs_bindgen_736a7c402e32957f_base

{-| __C declaration:__ @wl_region_get_version@

    __defined at:__ @wayland-client-protocol.h 6130:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_region_get_version ::
     RIP.Ptr Wl_region
     -- ^ __C declaration:__ @wl_region@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_region_get_version = hs_bindgen_736a7c402e32957f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_region_destroy@
foreign import ccall unsafe "hs_bindgen_75d43b8eee224193" hs_bindgen_75d43b8eee224193_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_region_destroy@
hs_bindgen_75d43b8eee224193 ::
     RIP.Ptr Wl_region
  -> IO ()
hs_bindgen_75d43b8eee224193 =
  RIP.fromFFIType hs_bindgen_75d43b8eee224193_base

{-| Destroy the region. This will invalidate the object ID.

    __C declaration:__ @wl_region_destroy@

    __defined at:__ @wayland-client-protocol.h 6141:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_region_destroy ::
     RIP.Ptr Wl_region
     -- ^ __C declaration:__ @wl_region@
  -> IO ()
wl_region_destroy = hs_bindgen_75d43b8eee224193

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_region_add@
foreign import ccall unsafe "hs_bindgen_1661545efe194fd5" hs_bindgen_1661545efe194fd5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_region_add@
hs_bindgen_1661545efe194fd5 ::
     RIP.Ptr Wl_region
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_1661545efe194fd5 =
  RIP.fromFFIType hs_bindgen_1661545efe194fd5_base

{-| Add the specified rectangle to the region.

    __C declaration:__ @wl_region_add@

    __defined at:__ @wayland-client-protocol.h 6153:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
wl_region_add = hs_bindgen_1661545efe194fd5

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_region_subtract@
foreign import ccall unsafe "hs_bindgen_042ccfa17db116dd" hs_bindgen_042ccfa17db116dd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_region_subtract@
hs_bindgen_042ccfa17db116dd ::
     RIP.Ptr Wl_region
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_042ccfa17db116dd =
  RIP.fromFFIType hs_bindgen_042ccfa17db116dd_base

{-| Subtract the specified rectangle from the region.

    __C declaration:__ @wl_region_subtract@

    __defined at:__ @wayland-client-protocol.h 6165:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
wl_region_subtract = hs_bindgen_042ccfa17db116dd

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subcompositor_set_user_data@
foreign import ccall unsafe "hs_bindgen_5dcb0c963e42b98d" hs_bindgen_5dcb0c963e42b98d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subcompositor_set_user_data@
hs_bindgen_5dcb0c963e42b98d ::
     RIP.Ptr Wl_subcompositor
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_5dcb0c963e42b98d =
  RIP.fromFFIType hs_bindgen_5dcb0c963e42b98d_base

{-| __C declaration:__ @wl_subcompositor_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6200:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_set_user_data ::
     RIP.Ptr Wl_subcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_subcompositor_set_user_data =
  hs_bindgen_5dcb0c963e42b98d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subcompositor_get_user_data@
foreign import ccall unsafe "hs_bindgen_92061dd23cbaedd3" hs_bindgen_92061dd23cbaedd3_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subcompositor_get_user_data@
hs_bindgen_92061dd23cbaedd3 ::
     RIP.Ptr Wl_subcompositor
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_92061dd23cbaedd3 =
  RIP.fromFFIType hs_bindgen_92061dd23cbaedd3_base

{-| __C declaration:__ @wl_subcompositor_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6207:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_user_data ::
     RIP.Ptr Wl_subcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> IO (RIP.Ptr RIP.Void)
wl_subcompositor_get_user_data =
  hs_bindgen_92061dd23cbaedd3

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subcompositor_get_version@
foreign import ccall unsafe "hs_bindgen_8c9e6d18efe00b64" hs_bindgen_8c9e6d18efe00b64_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subcompositor_get_version@
hs_bindgen_8c9e6d18efe00b64 ::
     RIP.Ptr Wl_subcompositor
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_8c9e6d18efe00b64 =
  RIP.fromFFIType hs_bindgen_8c9e6d18efe00b64_base

{-| __C declaration:__ @wl_subcompositor_get_version@

    __defined at:__ @wayland-client-protocol.h 6213:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_version ::
     RIP.Ptr Wl_subcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_subcompositor_get_version =
  hs_bindgen_8c9e6d18efe00b64

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subcompositor_destroy@
foreign import ccall unsafe "hs_bindgen_afd334eea0d39898" hs_bindgen_afd334eea0d39898_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subcompositor_destroy@
hs_bindgen_afd334eea0d39898 ::
     RIP.Ptr Wl_subcompositor
  -> IO ()
hs_bindgen_afd334eea0d39898 =
  RIP.fromFFIType hs_bindgen_afd334eea0d39898_base

{-| Informs the server that the client will not be using this protocol object anymore. This does not affect any other objects, wl_subsurface objects included.

    __C declaration:__ @wl_subcompositor_destroy@

    __defined at:__ @wayland-client-protocol.h 6226:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_destroy ::
     RIP.Ptr Wl_subcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> IO ()
wl_subcompositor_destroy =
  hs_bindgen_afd334eea0d39898

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subcompositor_get_subsurface@
foreign import ccall unsafe "hs_bindgen_0a0bd92fd58bd78a" hs_bindgen_0a0bd92fd58bd78a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subcompositor_get_subsurface@
hs_bindgen_0a0bd92fd58bd78a ::
     RIP.Ptr Wl_subcompositor
  -> RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_surface
  -> IO (RIP.Ptr Wl_subsurface)
hs_bindgen_0a0bd92fd58bd78a =
  RIP.fromFFIType hs_bindgen_0a0bd92fd58bd78a_base

{-| Create a sub-surface interface for the given surface, and associate it with the given parent surface. This turns a plain wl_surface into a sub-surface.

    The to-be sub-surface must not already have another role, and it must not have an existing wl_subsurface object. Otherwise the bad_surface protocol error is raised.

    Adding sub-surfaces to a parent is a double-buffered operation on the parent (see wl_surface.commit). The effect of adding a sub-surface becomes visible on the next time the state of the parent surface is applied.

    The parent surface must not be one of the child surface's descendants, and the parent must be different from the child surface, otherwise the bad_parent protocol error is raised.

    This request modifies the behaviour of wl_surface.commit request on the sub-surface, see the documentation on wl_subsurface interface.

    __C declaration:__ @wl_subcompositor_get_subsurface@

    __defined at:__ @wayland-client-protocol.h 6256:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
  hs_bindgen_0a0bd92fd58bd78a

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_set_user_data@
foreign import ccall unsafe "hs_bindgen_c7aca1a502fb200e" hs_bindgen_c7aca1a502fb200e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_set_user_data@
hs_bindgen_c7aca1a502fb200e ::
     RIP.Ptr Wl_subsurface
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_c7aca1a502fb200e =
  RIP.fromFFIType hs_bindgen_c7aca1a502fb200e_base

{-| __C declaration:__ @wl_subsurface_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6311:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_user_data ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_subsurface_set_user_data =
  hs_bindgen_c7aca1a502fb200e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_get_user_data@
foreign import ccall unsafe "hs_bindgen_2cee939f9c08f68c" hs_bindgen_2cee939f9c08f68c_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_get_user_data@
hs_bindgen_2cee939f9c08f68c ::
     RIP.Ptr Wl_subsurface
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_2cee939f9c08f68c =
  RIP.fromFFIType hs_bindgen_2cee939f9c08f68c_base

{-| __C declaration:__ @wl_subsurface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6318:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subsurface_get_user_data ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO (RIP.Ptr RIP.Void)
wl_subsurface_get_user_data =
  hs_bindgen_2cee939f9c08f68c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_get_version@
foreign import ccall unsafe "hs_bindgen_cd1627957a6faa84" hs_bindgen_cd1627957a6faa84_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_get_version@
hs_bindgen_cd1627957a6faa84 ::
     RIP.Ptr Wl_subsurface
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_cd1627957a6faa84 =
  RIP.fromFFIType hs_bindgen_cd1627957a6faa84_base

{-| __C declaration:__ @wl_subsurface_get_version@

    __defined at:__ @wayland-client-protocol.h 6324:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subsurface_get_version ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_subsurface_get_version =
  hs_bindgen_cd1627957a6faa84

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_destroy@
foreign import ccall unsafe "hs_bindgen_293b99ea7e6090d0" hs_bindgen_293b99ea7e6090d0_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_destroy@
hs_bindgen_293b99ea7e6090d0 ::
     RIP.Ptr Wl_subsurface
  -> IO ()
hs_bindgen_293b99ea7e6090d0 =
  RIP.fromFFIType hs_bindgen_293b99ea7e6090d0_base

{-| The sub-surface interface is removed from the wl_surface object that was turned into a sub-surface with a wl_subcompositor.get_subsurface request. The wl_surface's association to the parent is deleted. The wl_surface is unmapped immediately.

    __C declaration:__ @wl_subsurface_destroy@

    __defined at:__ @wayland-client-protocol.h 6338:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subsurface_destroy ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO ()
wl_subsurface_destroy = hs_bindgen_293b99ea7e6090d0

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_set_position@
foreign import ccall unsafe "hs_bindgen_e085bdfd656e7ab7" hs_bindgen_e085bdfd656e7ab7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_set_position@
hs_bindgen_e085bdfd656e7ab7 ::
     RIP.Ptr Wl_subsurface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_e085bdfd656e7ab7 =
  RIP.fromFFIType hs_bindgen_e085bdfd656e7ab7_base

{-| This schedules a sub-surface position change. The sub-surface will be moved so that its origin (top left corner pixel) will be at the location x, y of the parent surface coordinate system. The coordinates are not restricted to the parent surface area. Negative values are allowed.

    The scheduled coordinates will take effect whenever the state of the parent surface is applied.

    If more than one set_position request is invoked by the client before the commit of the parent surface, the position of a new request always replaces the scheduled position from any previous request.

    The initial position is 0, 0.

    __C declaration:__ @wl_subsurface_set_position@

    __defined at:__ @wayland-client-protocol.h 6363:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
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
  hs_bindgen_e085bdfd656e7ab7

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_place_above@
foreign import ccall unsafe "hs_bindgen_26240ec5ec861980" hs_bindgen_26240ec5ec861980_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_place_above@
hs_bindgen_26240ec5ec861980 ::
     RIP.Ptr Wl_subsurface
  -> RIP.Ptr Wl_surface
  -> IO ()
hs_bindgen_26240ec5ec861980 =
  RIP.fromFFIType hs_bindgen_26240ec5ec861980_base

{-| This sub-surface is taken from the stack, and put back just above the reference surface, changing the z-order of the sub-surfaces. The reference surface must be one of the sibling surfaces, or the parent surface. Using any other surface, including this sub-surface, will cause a protocol error.

    The z-order is double-buffered. Requests are handled in order and applied immediately to a pending state. The final pending state is copied to the active state the next time the state of the parent surface is applied.

    A new sub-surface is initially added as the top-most in the stack of its siblings and parent.

    __C declaration:__ @wl_subsurface_place_above@

    __defined at:__ @wayland-client-protocol.h 6387:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subsurface_place_above ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @sibling@
  -> IO ()
wl_subsurface_place_above =
  hs_bindgen_26240ec5ec861980

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_place_below@
foreign import ccall unsafe "hs_bindgen_b793e1b7f6eea854" hs_bindgen_b793e1b7f6eea854_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_place_below@
hs_bindgen_b793e1b7f6eea854 ::
     RIP.Ptr Wl_subsurface
  -> RIP.Ptr Wl_surface
  -> IO ()
hs_bindgen_b793e1b7f6eea854 =
  RIP.fromFFIType hs_bindgen_b793e1b7f6eea854_base

{-| The sub-surface is placed just below the reference surface. See wl_subsurface.place_above.

    __C declaration:__ @wl_subsurface_place_below@

    __defined at:__ @wayland-client-protocol.h 6400:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subsurface_place_below ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @sibling@
  -> IO ()
wl_subsurface_place_below =
  hs_bindgen_b793e1b7f6eea854

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_set_sync@
foreign import ccall unsafe "hs_bindgen_b61ba3819c8344eb" hs_bindgen_b61ba3819c8344eb_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_set_sync@
hs_bindgen_b61ba3819c8344eb ::
     RIP.Ptr Wl_subsurface
  -> IO ()
hs_bindgen_b61ba3819c8344eb =
  RIP.fromFFIType hs_bindgen_b61ba3819c8344eb_base

{-| Change the commit behaviour of the sub-surface to synchronized mode, also described as the parent dependent mode.

    In synchronized mode, wl_surface.commit on a sub-surface will accumulate the committed state in a cache, but the state will not be applied and hence will not change the compositor output. The cached state is applied to the sub-surface immediately after the parent surface's state is applied. This ensures atomic updates of the parent and all its synchronized sub-surfaces. Applying the cached state will invalidate the cache, so further parent surface commits do not (re-)apply old state.

    See wl_subsurface for the recursive effect of this mode.

    __C declaration:__ @wl_subsurface_set_sync@

    __defined at:__ @wayland-client-protocol.h 6424:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_sync ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO ()
wl_subsurface_set_sync = hs_bindgen_b61ba3819c8344eb

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_set_desync@
foreign import ccall unsafe "hs_bindgen_5ea901b11a239386" hs_bindgen_5ea901b11a239386_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_set_desync@
hs_bindgen_5ea901b11a239386 ::
     RIP.Ptr Wl_subsurface
  -> IO ()
hs_bindgen_5ea901b11a239386 =
  RIP.fromFFIType hs_bindgen_5ea901b11a239386_base

{-| Change the commit behaviour of the sub-surface to desynchronized mode, also described as independent or freely running mode.

    In desynchronized mode, wl_surface.commit on a sub-surface will apply the pending state directly, without caching, as happens normally with a wl_surface. Calling wl_surface.commit on the parent surface has no effect on the sub-surface's wl_surface state. This mode allows a sub-surface to be updated on its own.

    If cached state exists when wl_surface.commit is called in desynchronized mode, the pending state is added to the cached state, and applied as a whole. This invalidates the cache.

    Note: even if a sub-surface is set to desynchronized, a parent sub-surface may override it to behave as synchronized. For details, see wl_subsurface.

    If a surface's parent surface behaves as desynchronized, then the cached state is applied on set_desync.

    __C declaration:__ @wl_subsurface_set_desync@

    __defined at:__ @wayland-client-protocol.h 6454:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_desync ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO ()
wl_subsurface_set_desync =
  hs_bindgen_5ea901b11a239386

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_fixes_set_user_data@
foreign import ccall unsafe "hs_bindgen_48bf43869a6842eb" hs_bindgen_48bf43869a6842eb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_fixes_set_user_data@
hs_bindgen_48bf43869a6842eb ::
     RIP.Ptr Wl_fixes
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_48bf43869a6842eb =
  RIP.fromFFIType hs_bindgen_48bf43869a6842eb_base

{-| __C declaration:__ @wl_fixes_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6475:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_fixes_set_user_data ::
     RIP.Ptr Wl_fixes
     -- ^ __C declaration:__ @wl_fixes@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wl_fixes_set_user_data = hs_bindgen_48bf43869a6842eb

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_fixes_get_user_data@
foreign import ccall unsafe "hs_bindgen_90db223121eeaaca" hs_bindgen_90db223121eeaaca_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_fixes_get_user_data@
hs_bindgen_90db223121eeaaca ::
     RIP.Ptr Wl_fixes
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_90db223121eeaaca =
  RIP.fromFFIType hs_bindgen_90db223121eeaaca_base

{-| __C declaration:__ @wl_fixes_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6482:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_fixes_get_user_data ::
     RIP.Ptr Wl_fixes
     -- ^ __C declaration:__ @wl_fixes@
  -> IO (RIP.Ptr RIP.Void)
wl_fixes_get_user_data = hs_bindgen_90db223121eeaaca

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_fixes_get_version@
foreign import ccall unsafe "hs_bindgen_3ef376c297cebd75" hs_bindgen_3ef376c297cebd75_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_fixes_get_version@
hs_bindgen_3ef376c297cebd75 ::
     RIP.Ptr Wl_fixes
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_3ef376c297cebd75 =
  RIP.fromFFIType hs_bindgen_3ef376c297cebd75_base

{-| __C declaration:__ @wl_fixes_get_version@

    __defined at:__ @wayland-client-protocol.h 6488:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_fixes_get_version ::
     RIP.Ptr Wl_fixes
     -- ^ __C declaration:__ @wl_fixes@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_fixes_get_version = hs_bindgen_3ef376c297cebd75

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_fixes_destroy@
foreign import ccall unsafe "hs_bindgen_4783446e642c8297" hs_bindgen_4783446e642c8297_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_fixes_destroy@
hs_bindgen_4783446e642c8297 ::
     RIP.Ptr Wl_fixes
  -> IO ()
hs_bindgen_4783446e642c8297 =
  RIP.fromFFIType hs_bindgen_4783446e642c8297_base

{-| __C declaration:__ @wl_fixes_destroy@

    __defined at:__ @wayland-client-protocol.h 6497:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_fixes_destroy ::
     RIP.Ptr Wl_fixes
     -- ^ __C declaration:__ @wl_fixes@
  -> IO ()
wl_fixes_destroy = hs_bindgen_4783446e642c8297

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_fixes_destroy_registry@
foreign import ccall unsafe "hs_bindgen_6b5104feef7f97e6" hs_bindgen_6b5104feef7f97e6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Unsafe_wl_fixes_destroy_registry@
hs_bindgen_6b5104feef7f97e6 ::
     RIP.Ptr Wl_fixes
  -> RIP.Ptr Wl_registry
  -> IO ()
hs_bindgen_6b5104feef7f97e6 =
  RIP.fromFFIType hs_bindgen_6b5104feef7f97e6_base

{-| This request destroys a wl_registry object.

    The client should no longer use the wl_registry after making this request.

    The compositor will emit a wl_display.delete_id event with the object ID of the registry and will no longer emit any events on the registry. The client should re-use the object ID once it receives the wl_display.delete_id event.

    __C declaration:__ @wl_fixes_destroy_registry@

    __defined at:__ @wayland-client-protocol.h 6517:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_fixes_destroy_registry ::
     RIP.Ptr Wl_fixes
     -- ^ __C declaration:__ @wl_fixes@
  -> RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @registry@
  -> IO ()
wl_fixes_destroy_registry =
  hs_bindgen_6b5104feef7f97e6
