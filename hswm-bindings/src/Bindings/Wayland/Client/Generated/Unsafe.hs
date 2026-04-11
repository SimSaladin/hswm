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
  [ "#include <wayland-client.h>"
  , "void hs_bindgen_8c7f405c0d99df2c ("
  , "  struct wl_event_queue *arg1"
  , ")"
  , "{"
  , "  (wl_event_queue_destroy)(arg1);"
  , "}"
  , "struct wl_proxy *hs_bindgen_c47b58296afbaef2 ("
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
  , "void hs_bindgen_2887c22e86ef96ee ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  union wl_argument *arg3"
  , ")"
  , "{"
  , "  (wl_proxy_marshal_array)(arg1, arg2, arg3);"
  , "}"
  , "struct wl_proxy *hs_bindgen_3f7aa603c9051466 ("
  , "  struct wl_proxy *arg1,"
  , "  struct wl_interface const *arg2"
  , ")"
  , "{"
  , "  return (wl_proxy_create)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_94d7b7483aee416c ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_create_wrapper)(arg1);"
  , "}"
  , "void hs_bindgen_257a09dd743338e4 ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  (wl_proxy_wrapper_destroy)(arg1);"
  , "}"
  , "struct wl_proxy *hs_bindgen_f09ae081c235a55e ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  union wl_argument *arg3,"
  , "  struct wl_interface const *arg4"
  , ")"
  , "{"
  , "  return (wl_proxy_marshal_array_constructor)(arg1, arg2, arg3, arg4);"
  , "}"
  , "struct wl_proxy *hs_bindgen_9e8ed5b3c7d7d32b ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  union wl_argument *arg3,"
  , "  struct wl_interface const *arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  return (wl_proxy_marshal_array_constructor_versioned)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_fcee4c959f66791f ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  (wl_proxy_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_0ea4d9b22ed8fd72 ("
  , "  struct wl_proxy *arg1,"
  , "  void (**arg2) (void),"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_proxy_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void const *hs_bindgen_8ecd4b45c4ef2837 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_listener)(arg1);"
  , "}"
  , "signed int hs_bindgen_71cb36f085258d20 ("
  , "  struct wl_proxy *arg1,"
  , "  wl_dispatcher_func_t arg2,"
  , "  void const *arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (wl_proxy_add_dispatcher)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_97f72d2f591f9cd6 ("
  , "  struct wl_proxy *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_proxy_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_ee7a58c7619fcc81 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_6c902324ae57909b ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_version)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_6067e978daedf317 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_id)(arg1);"
  , "}"
  , "void hs_bindgen_5a62b129675ca5dc ("
  , "  struct wl_proxy *arg1,"
  , "  char const *const *arg2"
  , ")"
  , "{"
  , "  (wl_proxy_set_tag)(arg1, arg2);"
  , "}"
  , "char const *const *hs_bindgen_da1f3de9a1d97cfb ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_tag)(arg1);"
  , "}"
  , "char const *hs_bindgen_81119a2f90490dcb ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_class)(arg1);"
  , "}"
  , "struct wl_interface const *hs_bindgen_f036c0791932bed2 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_interface)(arg1);"
  , "}"
  , "struct wl_display *hs_bindgen_d9d2e981ba8de79b ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_display)(arg1);"
  , "}"
  , "void hs_bindgen_9b0e76fa59cfc19a ("
  , "  struct wl_proxy *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  (wl_proxy_set_queue)(arg1, arg2);"
  , "}"
  , "struct wl_event_queue *hs_bindgen_ed02759f5e05dea3 ("
  , "  struct wl_proxy const *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_queue)(arg1);"
  , "}"
  , "char const *hs_bindgen_976055829b4830ab ("
  , "  struct wl_event_queue const *arg1"
  , ")"
  , "{"
  , "  return (wl_event_queue_get_name)(arg1);"
  , "}"
  , "struct wl_display *hs_bindgen_24cfe0dc18052004 ("
  , "  char const *arg1"
  , ")"
  , "{"
  , "  return (wl_display_connect)(arg1);"
  , "}"
  , "struct wl_display *hs_bindgen_4320aae704306ba3 ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return (wl_display_connect_to_fd)(arg1);"
  , "}"
  , "void hs_bindgen_aae127460157f032 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  (wl_display_disconnect)(arg1);"
  , "}"
  , "signed int hs_bindgen_0494b6d2703ee39b ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_fd)(arg1);"
  , "}"
  , "signed int hs_bindgen_5ec7b95272b07b1d ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_dispatch)(arg1);"
  , "}"
  , "signed int hs_bindgen_95d0e98f956193df ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_queue)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_8ffc6239b84da680 ("
  , "  struct wl_display *arg1,"
  , "  struct timespec const *arg2"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_timeout)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_b17d9292ae60faf5 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2,"
  , "  struct timespec const *arg3"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_queue_timeout)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_9b5b302d68193094 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_queue_pending)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_1dfa9002069f1f14 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_pending)(arg1);"
  , "}"
  , "signed int hs_bindgen_9137eeafa3d19bd8 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_error)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_e3519eb5ac3dd091 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_interface const **arg2,"
  , "  uint32_t *arg3"
  , ")"
  , "{"
  , "  return (wl_display_get_protocol_error)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_f742d877089e4e96 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_flush)(arg1);"
  , "}"
  , "signed int hs_bindgen_dd22add692558932 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_roundtrip_queue)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e52fa05031f37b94 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_roundtrip)(arg1);"
  , "}"
  , "struct wl_event_queue *hs_bindgen_19d3a5535d8f2aaa ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_create_queue)(arg1);"
  , "}"
  , "struct wl_event_queue *hs_bindgen_ea4e5027156f2399 ("
  , "  struct wl_display *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return (wl_display_create_queue_with_name)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_3a0695e70bdfd74b ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_prepare_read_queue)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_ce1517c406f4e399 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_prepare_read)(arg1);"
  , "}"
  , "void hs_bindgen_56f7be5c4637cbe1 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  (wl_display_cancel_read)(arg1);"
  , "}"
  , "signed int hs_bindgen_6fa882430e46749f ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_read_events)(arg1);"
  , "}"
  , "void hs_bindgen_5b7511352d575dda ("
  , "  struct wl_display *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  (wl_display_set_max_buffer_size)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_453b4ed58777d773 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_display_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_display_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_c0ac8387cc3c08f9 ("
  , "  struct wl_display *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_display_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_2ee490b0b42b7b98 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_7c84b9524785d1db ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_version)(arg1);"
  , "}"
  , "struct wl_callback *hs_bindgen_001f14693c06b606 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_sync)(arg1);"
  , "}"
  , "struct wl_registry *hs_bindgen_86e972696a38874c ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_registry)(arg1);"
  , "}"
  , "signed int hs_bindgen_cb885e15efb7957f ("
  , "  struct wl_registry *arg1,"
  , "  struct wl_registry_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_registry_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_397b9120ee370df5 ("
  , "  struct wl_registry *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_registry_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_5c311be36c2eb161 ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  return (wl_registry_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_2466ee8cba81177c ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  return (wl_registry_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_b2e3b38aca6f9cdc ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  (wl_registry_destroy)(arg1);"
  , "}"
  , "void *hs_bindgen_202f3363e0f70088 ("
  , "  struct wl_registry *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_interface const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return (wl_registry_bind)(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_897cdbed2b2f76bc ("
  , "  struct wl_callback *arg1,"
  , "  struct wl_callback_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_callback_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_7cd70bc2baac81ad ("
  , "  struct wl_callback *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_callback_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_9897db02c035a725 ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  return (wl_callback_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_77568f1c1be0d02f ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  return (wl_callback_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_ec8b58f3f853ebed ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  (wl_callback_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_dba5fd42e5826309 ("
  , "  struct wl_compositor *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_compositor_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_7a20efa275a6b13d ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_7ec5bfecd0fdf6d9 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_d489f1daf387d5a7 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  (wl_compositor_destroy)(arg1);"
  , "}"
  , "struct wl_surface *hs_bindgen_f9d590aa077da3a4 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_create_surface)(arg1);"
  , "}"
  , "struct wl_region *hs_bindgen_32a4512f2a0776b6 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_create_region)(arg1);"
  , "}"
  , "void hs_bindgen_2400ae30b36148de ("
  , "  struct wl_shm_pool *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shm_pool_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_b27e243af8957e55 ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_pool_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_eed8fe7e39446506 ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_pool_get_version)(arg1);"
  , "}"
  , "struct wl_buffer *hs_bindgen_3ff6993ecbc98498 ("
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
  , "void hs_bindgen_2724ca15be9f6b25 ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  (wl_shm_pool_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_97e6898aaf12d2ab ("
  , "  struct wl_shm_pool *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (wl_shm_pool_resize)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_8455df6c7003d0aa ("
  , "  struct wl_shm *arg1,"
  , "  struct wl_shm_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_shm_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_58f0cb7f6b2c7fa4 ("
  , "  struct wl_shm *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shm_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_92ca625652c703bc ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_f567df84aacebc20 ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_af49d8c3777fc08b ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  (wl_shm_destroy)(arg1);"
  , "}"
  , "struct wl_shm_pool *hs_bindgen_ed52f0b1dbf0e840 ("
  , "  struct wl_shm *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return (wl_shm_create_pool)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_0d0bd1378691d9cc ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  (wl_shm_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_a3090b670fcf0dc2 ("
  , "  struct wl_buffer *arg1,"
  , "  struct wl_buffer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_buffer_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_957de01260f109c6 ("
  , "  struct wl_buffer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_buffer_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_76a30c36714bc2f0 ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  return (wl_buffer_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_d08078963afca782 ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  return (wl_buffer_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_65c9ccc64649380f ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  (wl_buffer_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_56cf0cfd1264b955 ("
  , "  struct wl_data_offer *arg1,"
  , "  struct wl_data_offer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_data_offer_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_541486baa81fe126 ("
  , "  struct wl_data_offer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_offer_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_866c121c1427ab5d ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return (wl_data_offer_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_f53c310a64889e09 ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return (wl_data_offer_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_bf611ac397a9eb51 ("
  , "  struct wl_data_offer *arg1,"
  , "  uint32_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  (wl_data_offer_accept)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_49a6446400f8abeb ("
  , "  struct wl_data_offer *arg1,"
  , "  char const *arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (wl_data_offer_receive)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_794a1c35862e696f ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  (wl_data_offer_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_89eaa24cb441f0ab ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  (wl_data_offer_finish)(arg1);"
  , "}"
  , "void hs_bindgen_012a3ec84be9eb1c ("
  , "  struct wl_data_offer *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (wl_data_offer_set_actions)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_981b64c6b86de64b ("
  , "  struct wl_data_source *arg1,"
  , "  struct wl_data_source_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_data_source_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_b3ddc13f2139d6a2 ("
  , "  struct wl_data_source *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_source_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_3b2f1be8cd422d5b ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  return (wl_data_source_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_73171f49ffc71d36 ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  return (wl_data_source_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_b1dec1df15032ab4 ("
  , "  struct wl_data_source *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (wl_data_source_offer)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_b330d6a39cfbd27e ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  (wl_data_source_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_1e09070537852185 ("
  , "  struct wl_data_source *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (wl_data_source_set_actions)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_2227eeb7f3943412 ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_device_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_data_device_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_2363ecc34688345e ("
  , "  struct wl_data_device *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_device_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_5982453688f26eb9 ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_2608ac0d9cd7f90e ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_88ac432ab9450088 ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  (wl_data_device_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_043e446b3d597a6c ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_source *arg2,"
  , "  struct wl_surface *arg3,"
  , "  struct wl_surface *arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  (wl_data_device_start_drag)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_0124f0d597b6d223 ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_source *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (wl_data_device_set_selection)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_5434614e66e338a9 ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  (wl_data_device_release)(arg1);"
  , "}"
  , "void hs_bindgen_362bd987605ddfd9 ("
  , "  struct wl_data_device_manager *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_device_manager_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_f67d725157c5e7b2 ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_85fb934dbf01e9c8 ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_88786a568a7ad482 ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  (wl_data_device_manager_destroy)(arg1);"
  , "}"
  , "struct wl_data_source *hs_bindgen_ac6513fe2bc77eb1 ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_create_data_source)(arg1);"
  , "}"
  , "struct wl_data_device *hs_bindgen_60e764d50d85c235 ("
  , "  struct wl_data_device_manager *arg1,"
  , "  struct wl_seat *arg2"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_get_data_device)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_d162e8cb2e3560fc ("
  , "  struct wl_shell *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shell_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_b28db5864205eb94 ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_4d49bf44616d118d ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_473bad880b37beb8 ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  (wl_shell_destroy)(arg1);"
  , "}"
  , "struct wl_shell_surface *hs_bindgen_d3fa51c24c244b5c ("
  , "  struct wl_shell *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (wl_shell_get_shell_surface)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_038881fa4427be82 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_shell_surface_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_shell_surface_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_0f70ec230319370f ("
  , "  struct wl_shell_surface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_7558d7e1d36c10b9 ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_surface_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_14d299f7ce65c936 ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_surface_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_ed2e5b2a42071ef2 ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  (wl_shell_surface_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_9b90dbc9dcd495e8 ("
  , "  struct wl_shell_surface *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_pong)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_fe56ad755d76e760 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (wl_shell_surface_move)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_11d658bba3228fd2 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  (wl_shell_surface_resize)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_a9cf393389a087c2 ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_toplevel)(arg1);"
  , "}"
  , "void hs_bindgen_c89bb6b11c76d01e ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_surface *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_transient)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_2d5955e522c46fdf ("
  , "  struct wl_shell_surface *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3,"
  , "  struct wl_output *arg4"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_fullscreen)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_e10cd53a7c989f5b ("
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
  , "void hs_bindgen_8db127e65c54c463 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_output *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_maximized)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_1f2295d5cafeaa10 ("
  , "  struct wl_shell_surface *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_title)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_e3875849e94046a4 ("
  , "  struct wl_shell_surface *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_class)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_630f4da0a2cba4a5 ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_surface_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_surface_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_41cdf70ef95672cf ("
  , "  struct wl_surface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_c6454ba3f2f75e78 ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_surface_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_5eabba8b62dbed0a ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_surface_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_dd079fee26bec459 ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  (wl_surface_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_905aca9576c29ccd ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_buffer *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4"
  , ")"
  , "{"
  , "  (wl_surface_attach)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_dda7daa629fb73ec ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_surface_damage)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "struct wl_callback *hs_bindgen_316b8205b1f0fd27 ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_surface_frame)(arg1);"
  , "}"
  , "void hs_bindgen_bf43ac51c11a3698 ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_region *arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_opaque_region)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_2c4159de55b53d4d ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_region *arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_input_region)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_16a31bbfdf956986 ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  (wl_surface_commit)(arg1);"
  , "}"
  , "void hs_bindgen_4d321da7569349ed ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_buffer_transform)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_a6919e7df5d81548 ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_buffer_scale)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_696b284d7ccd0526 ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_surface_damage_buffer)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_88c1528a19a3c113 ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (wl_surface_offset)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_08156a315d06d69d ("
  , "  struct wl_seat *arg1,"
  , "  struct wl_seat_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_seat_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_f60c691a6bdec8b3 ("
  , "  struct wl_seat *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_seat_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_8ba199c3e122749c ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_663ce2d373fe3612 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_38e82fd4f1c4279b ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  (wl_seat_destroy)(arg1);"
  , "}"
  , "struct wl_pointer *hs_bindgen_2b8007bf0d98f3fb ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_pointer)(arg1);"
  , "}"
  , "struct wl_keyboard *hs_bindgen_0680a78b63429413 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_keyboard)(arg1);"
  , "}"
  , "struct wl_touch *hs_bindgen_b156af21ae597204 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_touch)(arg1);"
  , "}"
  , "void hs_bindgen_103f12d6392690ad ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  (wl_seat_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_cfd62670964bbe6b ("
  , "  struct wl_pointer *arg1,"
  , "  struct wl_pointer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_pointer_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_e6536f0e5ec86149 ("
  , "  struct wl_pointer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_pointer_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_f052cf16a0e3797f ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return (wl_pointer_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_469601baf4fc5c17 ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return (wl_pointer_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_c574d0405d7320fb ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  (wl_pointer_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_9eff03809e1adc7e ("
  , "  struct wl_pointer *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_surface *arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_pointer_set_cursor)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_2198319038473511 ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  (wl_pointer_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_6951a1ada1ad6b0b ("
  , "  struct wl_keyboard *arg1,"
  , "  struct wl_keyboard_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_keyboard_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_d5d6d187cda45a41 ("
  , "  struct wl_keyboard *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_keyboard_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_3d960a027e1cc67d ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return (wl_keyboard_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_d06e955c4dac6e7c ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return (wl_keyboard_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_53a5e569f5487c6c ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  (wl_keyboard_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_3097afd73d31a15b ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  (wl_keyboard_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_c821195588e2a154 ("
  , "  struct wl_touch *arg1,"
  , "  struct wl_touch_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_touch_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_ec4b34b230e4e3a2 ("
  , "  struct wl_touch *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_touch_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_d6f8219a3601d0be ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return (wl_touch_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_b8ffcadf63ffedef ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return (wl_touch_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_47914352c34ef06c ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  (wl_touch_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_7822f28095ddbad9 ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  (wl_touch_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_81dd685afb18dfc5 ("
  , "  struct wl_output *arg1,"
  , "  struct wl_output_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_output_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_69f7c0977ae10e95 ("
  , "  struct wl_output *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_output_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_a758d0b45ec9d1f3 ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return (wl_output_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_0b0e923db544cd47 ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return (wl_output_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_8c73e6dd2e08e154 ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  (wl_output_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_76431c04f7d5a982 ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  (wl_output_release)(arg1);"
  , "}"
  , "void hs_bindgen_dac23f3d96ec4690 ("
  , "  struct wl_region *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_region_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_476505c660c24026 ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  return (wl_region_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_9ccb86aa16748c2e ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  return (wl_region_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_c6746ea55ffea9f4 ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  (wl_region_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_7c55bed8ee63cdcf ("
  , "  struct wl_region *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_region_add)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_2e6bcc98186c4cf3 ("
  , "  struct wl_region *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_region_subtract)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_4f9f4b7917e2f26c ("
  , "  struct wl_subcompositor *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_subcompositor_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_296f89acae74e603 ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  return (wl_subcompositor_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_4e7f72060d6ea7d5 ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  return (wl_subcompositor_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_12e6f79b6dcefe4b ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  (wl_subcompositor_destroy)(arg1);"
  , "}"
  , "struct wl_subsurface *hs_bindgen_2f12d094530242fd ("
  , "  struct wl_subcompositor *arg1,"
  , "  struct wl_surface *arg2,"
  , "  struct wl_surface *arg3"
  , ")"
  , "{"
  , "  return (wl_subcompositor_get_subsurface)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_295ff36cd7eeb4ed ("
  , "  struct wl_subsurface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_subsurface_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_9fdc564ae3b33fd5 ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return (wl_subsurface_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_d156b01262c95c67 ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return (wl_subsurface_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_a6b0494129d60543 ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  (wl_subsurface_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_af413b0b86fc4feb ("
  , "  struct wl_subsurface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (wl_subsurface_set_position)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_4050b6d06f2d8a07 ("
  , "  struct wl_subsurface *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  (wl_subsurface_place_above)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_98c3c00986eb6dff ("
  , "  struct wl_subsurface *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  (wl_subsurface_place_below)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_50d131366bdb2f4c ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  (wl_subsurface_set_sync)(arg1);"
  , "}"
  , "void hs_bindgen_bc67a1c070cfdf3b ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  (wl_subsurface_set_desync)(arg1);"
  , "}"
  , "void hs_bindgen_a6c4206fe6d7132c ("
  , "  struct wl_fixes *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_fixes_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_2d45389bbb88b596 ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  return (wl_fixes_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_cb871f896a9e951c ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  return (wl_fixes_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_9b011d24caada8c6 ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  (wl_fixes_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_3a87ec4417a1fb1a ("
  , "  struct wl_fixes *arg1,"
  , "  struct wl_registry *arg2"
  , ")"
  , "{"
  , "  (wl_fixes_destroy_registry)(arg1, arg2);"
  , "}"
  ]))

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_event_queue_destroy@
foreign import ccall unsafe "hs_bindgen_8c7f405c0d99df2c" hs_bindgen_8c7f405c0d99df2c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_event_queue_destroy@
hs_bindgen_8c7f405c0d99df2c ::
     RIP.Ptr Wl_event_queue
  -> IO ()
hs_bindgen_8c7f405c0d99df2c =
  RIP.fromFFIType hs_bindgen_8c7f405c0d99df2c_base

{-| __C declaration:__ @wl_event_queue_destroy@

    __defined at:__ @wayland-client-core.h 130:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_event_queue_destroy ::
     RIP.Ptr Wl_event_queue
     -- ^ __C declaration:__ @queue@
  -> IO ()
wl_event_queue_destroy = hs_bindgen_8c7f405c0d99df2c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_marshal_array_flags@
foreign import ccall unsafe "hs_bindgen_c47b58296afbaef2" hs_bindgen_c47b58296afbaef2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_marshal_array_flags@
hs_bindgen_c47b58296afbaef2 ::
     RIP.Ptr Wl_proxy
  -> HsBindgen.Runtime.LibC.Word32
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument
  -> IO (RIP.Ptr Wl_proxy)
hs_bindgen_c47b58296afbaef2 =
  RIP.fromFFIType hs_bindgen_c47b58296afbaef2_base

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
  hs_bindgen_c47b58296afbaef2

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_marshal_array@
foreign import ccall unsafe "hs_bindgen_2887c22e86ef96ee" hs_bindgen_2887c22e86ef96ee_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_marshal_array@
hs_bindgen_2887c22e86ef96ee ::
     RIP.Ptr Wl_proxy
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument
  -> IO ()
hs_bindgen_2887c22e86ef96ee =
  RIP.fromFFIType hs_bindgen_2887c22e86ef96ee_base

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
wl_proxy_marshal_array = hs_bindgen_2887c22e86ef96ee

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_create@
foreign import ccall unsafe "hs_bindgen_3f7aa603c9051466" hs_bindgen_3f7aa603c9051466_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_create@
hs_bindgen_3f7aa603c9051466 ::
     RIP.Ptr Wl_proxy
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
  -> IO (RIP.Ptr Wl_proxy)
hs_bindgen_3f7aa603c9051466 =
  RIP.fromFFIType hs_bindgen_3f7aa603c9051466_base

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
wl_proxy_create = hs_bindgen_3f7aa603c9051466

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_create_wrapper@
foreign import ccall unsafe "hs_bindgen_94d7b7483aee416c" hs_bindgen_94d7b7483aee416c_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_create_wrapper@
hs_bindgen_94d7b7483aee416c ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_94d7b7483aee416c =
  RIP.fromFFIType hs_bindgen_94d7b7483aee416c_base

{-| __C declaration:__ @wl_proxy_create_wrapper@

    __defined at:__ @wayland-client-core.h 157:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_create_wrapper ::
     RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr RIP.Void)
wl_proxy_create_wrapper = hs_bindgen_94d7b7483aee416c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_wrapper_destroy@
foreign import ccall unsafe "hs_bindgen_257a09dd743338e4" hs_bindgen_257a09dd743338e4_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_wrapper_destroy@
hs_bindgen_257a09dd743338e4 ::
     RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_257a09dd743338e4 =
  RIP.fromFFIType hs_bindgen_257a09dd743338e4_base

{-| __C declaration:__ @wl_proxy_wrapper_destroy@

    __defined at:__ @wayland-client-core.h 160:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_wrapper_destroy ::
     RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @proxy_wrapper@
  -> IO ()
wl_proxy_wrapper_destroy =
  hs_bindgen_257a09dd743338e4

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_marshal_array_constructor@
foreign import ccall unsafe "hs_bindgen_f09ae081c235a55e" hs_bindgen_f09ae081c235a55e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_marshal_array_constructor@
hs_bindgen_f09ae081c235a55e ::
     RIP.Ptr Wl_proxy
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
  -> IO (RIP.Ptr Wl_proxy)
hs_bindgen_f09ae081c235a55e =
  RIP.fromFFIType hs_bindgen_f09ae081c235a55e_base

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
  hs_bindgen_f09ae081c235a55e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_marshal_array_constructor_versioned@
foreign import ccall unsafe "hs_bindgen_9e8ed5b3c7d7d32b" hs_bindgen_9e8ed5b3c7d7d32b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_marshal_array_constructor_versioned@
hs_bindgen_9e8ed5b3c7d7d32b ::
     RIP.Ptr Wl_proxy
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr Wl_proxy)
hs_bindgen_9e8ed5b3c7d7d32b =
  RIP.fromFFIType hs_bindgen_9e8ed5b3c7d7d32b_base

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
  hs_bindgen_9e8ed5b3c7d7d32b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_destroy@
foreign import ccall unsafe "hs_bindgen_fcee4c959f66791f" hs_bindgen_fcee4c959f66791f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_destroy@
hs_bindgen_fcee4c959f66791f ::
     RIP.Ptr Wl_proxy
  -> IO ()
hs_bindgen_fcee4c959f66791f =
  RIP.fromFFIType hs_bindgen_fcee4c959f66791f_base

{-| __C declaration:__ @wl_proxy_destroy@

    __defined at:__ @wayland-client-core.h 188:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_destroy ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO ()
wl_proxy_destroy = hs_bindgen_fcee4c959f66791f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_add_listener@
foreign import ccall unsafe "hs_bindgen_0ea4d9b22ed8fd72" hs_bindgen_0ea4d9b22ed8fd72_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_add_listener@
hs_bindgen_0ea4d9b22ed8fd72 ::
     RIP.Ptr Wl_proxy
  -> RIP.Ptr (RIP.FunPtr (IO ()))
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_0ea4d9b22ed8fd72 =
  RIP.fromFFIType hs_bindgen_0ea4d9b22ed8fd72_base

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
wl_proxy_add_listener = hs_bindgen_0ea4d9b22ed8fd72

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_listener@
foreign import ccall unsafe "hs_bindgen_8ecd4b45c4ef2837" hs_bindgen_8ecd4b45c4ef2837_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_listener@
hs_bindgen_8ecd4b45c4ef2837 ::
     RIP.Ptr Wl_proxy
  -> IO (PtrConst.PtrConst RIP.Void)
hs_bindgen_8ecd4b45c4ef2837 =
  RIP.fromFFIType hs_bindgen_8ecd4b45c4ef2837_base

{-| __C declaration:__ @wl_proxy_get_listener@

    __defined at:__ @wayland-client-core.h 195:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_listener ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst RIP.Void)
wl_proxy_get_listener = hs_bindgen_8ecd4b45c4ef2837

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_add_dispatcher@
foreign import ccall unsafe "hs_bindgen_71cb36f085258d20" hs_bindgen_71cb36f085258d20_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_add_dispatcher@
hs_bindgen_71cb36f085258d20 ::
     RIP.Ptr Wl_proxy
  -> Bindings.Wayland.Util.Generated.Wl_dispatcher_func_t
  -> PtrConst.PtrConst RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_71cb36f085258d20 =
  RIP.fromFFIType hs_bindgen_71cb36f085258d20_base

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
wl_proxy_add_dispatcher = hs_bindgen_71cb36f085258d20

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_set_user_data@
foreign import ccall unsafe "hs_bindgen_97f72d2f591f9cd6" hs_bindgen_97f72d2f591f9cd6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_set_user_data@
hs_bindgen_97f72d2f591f9cd6 ::
     RIP.Ptr Wl_proxy
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_97f72d2f591f9cd6 =
  RIP.fromFFIType hs_bindgen_97f72d2f591f9cd6_base

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
wl_proxy_set_user_data = hs_bindgen_97f72d2f591f9cd6

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_user_data@
foreign import ccall unsafe "hs_bindgen_ee7a58c7619fcc81" hs_bindgen_ee7a58c7619fcc81_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_user_data@
hs_bindgen_ee7a58c7619fcc81 ::
     RIP.Ptr Wl_proxy
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_ee7a58c7619fcc81 =
  RIP.fromFFIType hs_bindgen_ee7a58c7619fcc81_base

{-| __C declaration:__ @wl_proxy_get_user_data@

    __defined at:__ @wayland-client-core.h 206:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_user_data ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr RIP.Void)
wl_proxy_get_user_data = hs_bindgen_ee7a58c7619fcc81

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_version@
foreign import ccall unsafe "hs_bindgen_6c902324ae57909b" hs_bindgen_6c902324ae57909b_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_version@
hs_bindgen_6c902324ae57909b ::
     RIP.Ptr Wl_proxy
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_6c902324ae57909b =
  RIP.fromFFIType hs_bindgen_6c902324ae57909b_base

{-| __C declaration:__ @wl_proxy_get_version@

    __defined at:__ @wayland-client-core.h 209:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_version ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_proxy_get_version = hs_bindgen_6c902324ae57909b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_id@
foreign import ccall unsafe "hs_bindgen_6067e978daedf317" hs_bindgen_6067e978daedf317_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_id@
hs_bindgen_6067e978daedf317 ::
     RIP.Ptr Wl_proxy
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_6067e978daedf317 =
  RIP.fromFFIType hs_bindgen_6067e978daedf317_base

{-| __C declaration:__ @wl_proxy_get_id@

    __defined at:__ @wayland-client-core.h 212:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_id ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_proxy_get_id = hs_bindgen_6067e978daedf317

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_set_tag@
foreign import ccall unsafe "hs_bindgen_5a62b129675ca5dc" hs_bindgen_5a62b129675ca5dc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_set_tag@
hs_bindgen_5a62b129675ca5dc ::
     RIP.Ptr Wl_proxy
  -> PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar)
  -> IO ()
hs_bindgen_5a62b129675ca5dc =
  RIP.fromFFIType hs_bindgen_5a62b129675ca5dc_base

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
wl_proxy_set_tag = hs_bindgen_5a62b129675ca5dc

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_tag@
foreign import ccall unsafe "hs_bindgen_da1f3de9a1d97cfb" hs_bindgen_da1f3de9a1d97cfb_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_tag@
hs_bindgen_da1f3de9a1d97cfb ::
     RIP.Ptr Wl_proxy
  -> IO (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar))
hs_bindgen_da1f3de9a1d97cfb =
  RIP.fromFFIType hs_bindgen_da1f3de9a1d97cfb_base

{-| __C declaration:__ @wl_proxy_get_tag@

    __defined at:__ @wayland-client-core.h 219:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_tag ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar))
wl_proxy_get_tag = hs_bindgen_da1f3de9a1d97cfb

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_class@
foreign import ccall unsafe "hs_bindgen_81119a2f90490dcb" hs_bindgen_81119a2f90490dcb_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_class@
hs_bindgen_81119a2f90490dcb ::
     RIP.Ptr Wl_proxy
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_81119a2f90490dcb =
  RIP.fromFFIType hs_bindgen_81119a2f90490dcb_base

{-| __C declaration:__ @wl_proxy_get_class@

    __defined at:__ @wayland-client-core.h 222:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_class ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst RIP.CChar)
wl_proxy_get_class = hs_bindgen_81119a2f90490dcb

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_interface@
foreign import ccall unsafe "hs_bindgen_f036c0791932bed2" hs_bindgen_f036c0791932bed2_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_interface@
hs_bindgen_f036c0791932bed2 ::
     RIP.Ptr Wl_proxy
  -> IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_f036c0791932bed2 =
  RIP.fromFFIType hs_bindgen_f036c0791932bed2_base

{-| __C declaration:__ @wl_proxy_get_interface@

    __defined at:__ @wayland-client-core.h 225:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_interface ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
wl_proxy_get_interface = hs_bindgen_f036c0791932bed2

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_display@
foreign import ccall unsafe "hs_bindgen_d9d2e981ba8de79b" hs_bindgen_d9d2e981ba8de79b_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_display@
hs_bindgen_d9d2e981ba8de79b ::
     RIP.Ptr Wl_proxy
  -> IO (RIP.Ptr Wl_display)
hs_bindgen_d9d2e981ba8de79b =
  RIP.fromFFIType hs_bindgen_d9d2e981ba8de79b_base

{-| __C declaration:__ @wl_proxy_get_display@

    __defined at:__ @wayland-client-core.h 228:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_display ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr Wl_display)
wl_proxy_get_display = hs_bindgen_d9d2e981ba8de79b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_set_queue@
foreign import ccall unsafe "hs_bindgen_9b0e76fa59cfc19a" hs_bindgen_9b0e76fa59cfc19a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_set_queue@
hs_bindgen_9b0e76fa59cfc19a ::
     RIP.Ptr Wl_proxy
  -> RIP.Ptr Wl_event_queue
  -> IO ()
hs_bindgen_9b0e76fa59cfc19a =
  RIP.fromFFIType hs_bindgen_9b0e76fa59cfc19a_base

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
wl_proxy_set_queue = hs_bindgen_9b0e76fa59cfc19a

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_queue@
foreign import ccall unsafe "hs_bindgen_ed02759f5e05dea3" hs_bindgen_ed02759f5e05dea3_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_proxy_get_queue@
hs_bindgen_ed02759f5e05dea3 ::
     PtrConst.PtrConst Wl_proxy
  -> IO (RIP.Ptr Wl_event_queue)
hs_bindgen_ed02759f5e05dea3 =
  RIP.fromFFIType hs_bindgen_ed02759f5e05dea3_base

{-| __C declaration:__ @wl_proxy_get_queue@

    __defined at:__ @wayland-client-core.h 234:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_queue ::
     PtrConst.PtrConst Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr Wl_event_queue)
wl_proxy_get_queue = hs_bindgen_ed02759f5e05dea3

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_event_queue_get_name@
foreign import ccall unsafe "hs_bindgen_976055829b4830ab" hs_bindgen_976055829b4830ab_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_event_queue_get_name@
hs_bindgen_976055829b4830ab ::
     PtrConst.PtrConst Wl_event_queue
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_976055829b4830ab =
  RIP.fromFFIType hs_bindgen_976055829b4830ab_base

{-| __C declaration:__ @wl_event_queue_get_name@

    __defined at:__ @wayland-client-core.h 237:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_event_queue_get_name ::
     PtrConst.PtrConst Wl_event_queue
     -- ^ __C declaration:__ @queue@
  -> IO (PtrConst.PtrConst RIP.CChar)
wl_event_queue_get_name = hs_bindgen_976055829b4830ab

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_connect@
foreign import ccall unsafe "hs_bindgen_24cfe0dc18052004" hs_bindgen_24cfe0dc18052004_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_connect@
hs_bindgen_24cfe0dc18052004 ::
     PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Wl_display)
hs_bindgen_24cfe0dc18052004 =
  RIP.fromFFIType hs_bindgen_24cfe0dc18052004_base

{-| __C declaration:__ @wl_display_connect@

    __defined at:__ @wayland-client-core.h 240:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_connect ::
     PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @name@
  -> IO (RIP.Ptr Wl_display)
wl_display_connect = hs_bindgen_24cfe0dc18052004

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_connect_to_fd@
foreign import ccall unsafe "hs_bindgen_4320aae704306ba3" hs_bindgen_4320aae704306ba3_base ::
     RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_connect_to_fd@
hs_bindgen_4320aae704306ba3 ::
     RIP.CInt
  -> IO (RIP.Ptr Wl_display)
hs_bindgen_4320aae704306ba3 =
  RIP.fromFFIType hs_bindgen_4320aae704306ba3_base

{-| __C declaration:__ @wl_display_connect_to_fd@

    __defined at:__ @wayland-client-core.h 243:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_connect_to_fd ::
     RIP.CInt
     -- ^ __C declaration:__ @fd@
  -> IO (RIP.Ptr Wl_display)
wl_display_connect_to_fd =
  hs_bindgen_4320aae704306ba3

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_disconnect@
foreign import ccall unsafe "hs_bindgen_aae127460157f032" hs_bindgen_aae127460157f032_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_disconnect@
hs_bindgen_aae127460157f032 ::
     RIP.Ptr Wl_display
  -> IO ()
hs_bindgen_aae127460157f032 =
  RIP.fromFFIType hs_bindgen_aae127460157f032_base

{-| __C declaration:__ @wl_display_disconnect@

    __defined at:__ @wayland-client-core.h 246:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_disconnect ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO ()
wl_display_disconnect = hs_bindgen_aae127460157f032

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_fd@
foreign import ccall unsafe "hs_bindgen_0494b6d2703ee39b" hs_bindgen_0494b6d2703ee39b_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_fd@
hs_bindgen_0494b6d2703ee39b ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_0494b6d2703ee39b =
  RIP.fromFFIType hs_bindgen_0494b6d2703ee39b_base

{-| __C declaration:__ @wl_display_get_fd@

    __defined at:__ @wayland-client-core.h 249:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_get_fd ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_get_fd = hs_bindgen_0494b6d2703ee39b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch@
foreign import ccall unsafe "hs_bindgen_5ec7b95272b07b1d" hs_bindgen_5ec7b95272b07b1d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch@
hs_bindgen_5ec7b95272b07b1d ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_5ec7b95272b07b1d =
  RIP.fromFFIType hs_bindgen_5ec7b95272b07b1d_base

{-| __C declaration:__ @wl_display_dispatch@

    __defined at:__ @wayland-client-core.h 252:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_dispatch = hs_bindgen_5ec7b95272b07b1d

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch_queue@
foreign import ccall unsafe "hs_bindgen_95d0e98f956193df" hs_bindgen_95d0e98f956193df_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch_queue@
hs_bindgen_95d0e98f956193df ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> IO RIP.CInt
hs_bindgen_95d0e98f956193df =
  RIP.fromFFIType hs_bindgen_95d0e98f956193df_base

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
  hs_bindgen_95d0e98f956193df

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch_timeout@
foreign import ccall unsafe "hs_bindgen_8ffc6239b84da680" hs_bindgen_8ffc6239b84da680_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch_timeout@
hs_bindgen_8ffc6239b84da680 ::
     RIP.Ptr Wl_display
  -> PtrConst.PtrConst Timespec
  -> IO RIP.CInt
hs_bindgen_8ffc6239b84da680 =
  RIP.fromFFIType hs_bindgen_8ffc6239b84da680_base

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
  hs_bindgen_8ffc6239b84da680

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch_queue_timeout@
foreign import ccall unsafe "hs_bindgen_b17d9292ae60faf5" hs_bindgen_b17d9292ae60faf5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch_queue_timeout@
hs_bindgen_b17d9292ae60faf5 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> PtrConst.PtrConst Timespec
  -> IO RIP.CInt
hs_bindgen_b17d9292ae60faf5 =
  RIP.fromFFIType hs_bindgen_b17d9292ae60faf5_base

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
  hs_bindgen_b17d9292ae60faf5

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch_queue_pending@
foreign import ccall unsafe "hs_bindgen_9b5b302d68193094" hs_bindgen_9b5b302d68193094_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch_queue_pending@
hs_bindgen_9b5b302d68193094 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> IO RIP.CInt
hs_bindgen_9b5b302d68193094 =
  RIP.fromFFIType hs_bindgen_9b5b302d68193094_base

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
  hs_bindgen_9b5b302d68193094

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch_pending@
foreign import ccall unsafe "hs_bindgen_1dfa9002069f1f14" hs_bindgen_1dfa9002069f1f14_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_dispatch_pending@
hs_bindgen_1dfa9002069f1f14 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_1dfa9002069f1f14 =
  RIP.fromFFIType hs_bindgen_1dfa9002069f1f14_base

{-| __C declaration:__ @wl_display_dispatch_pending@

    __defined at:__ @wayland-client-core.h 272:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_pending ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_dispatch_pending =
  hs_bindgen_1dfa9002069f1f14

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_error@
foreign import ccall unsafe "hs_bindgen_9137eeafa3d19bd8" hs_bindgen_9137eeafa3d19bd8_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_error@
hs_bindgen_9137eeafa3d19bd8 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_9137eeafa3d19bd8 =
  RIP.fromFFIType hs_bindgen_9137eeafa3d19bd8_base

{-| __C declaration:__ @wl_display_get_error@

    __defined at:__ @wayland-client-core.h 275:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_get_error ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_get_error = hs_bindgen_9137eeafa3d19bd8

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_protocol_error@
foreign import ccall unsafe "hs_bindgen_e3519eb5ac3dd091" hs_bindgen_e3519eb5ac3dd091_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_protocol_error@
hs_bindgen_e3519eb5ac3dd091 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_e3519eb5ac3dd091 =
  RIP.fromFFIType hs_bindgen_e3519eb5ac3dd091_base

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
  hs_bindgen_e3519eb5ac3dd091

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_flush@
foreign import ccall unsafe "hs_bindgen_f742d877089e4e96" hs_bindgen_f742d877089e4e96_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_flush@
hs_bindgen_f742d877089e4e96 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_f742d877089e4e96 =
  RIP.fromFFIType hs_bindgen_f742d877089e4e96_base

{-| __C declaration:__ @wl_display_flush@

    __defined at:__ @wayland-client-core.h 283:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_flush ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_flush = hs_bindgen_f742d877089e4e96

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_roundtrip_queue@
foreign import ccall unsafe "hs_bindgen_dd22add692558932" hs_bindgen_dd22add692558932_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_roundtrip_queue@
hs_bindgen_dd22add692558932 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> IO RIP.CInt
hs_bindgen_dd22add692558932 =
  RIP.fromFFIType hs_bindgen_dd22add692558932_base

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
  hs_bindgen_dd22add692558932

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_roundtrip@
foreign import ccall unsafe "hs_bindgen_e52fa05031f37b94" hs_bindgen_e52fa05031f37b94_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_roundtrip@
hs_bindgen_e52fa05031f37b94 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_e52fa05031f37b94 =
  RIP.fromFFIType hs_bindgen_e52fa05031f37b94_base

{-| __C declaration:__ @wl_display_roundtrip@

    __defined at:__ @wayland-client-core.h 290:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_roundtrip ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_roundtrip = hs_bindgen_e52fa05031f37b94

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_create_queue@
foreign import ccall unsafe "hs_bindgen_19d3a5535d8f2aaa" hs_bindgen_19d3a5535d8f2aaa_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_create_queue@
hs_bindgen_19d3a5535d8f2aaa ::
     RIP.Ptr Wl_display
  -> IO (RIP.Ptr Wl_event_queue)
hs_bindgen_19d3a5535d8f2aaa =
  RIP.fromFFIType hs_bindgen_19d3a5535d8f2aaa_base

{-| __C declaration:__ @wl_display_create_queue@

    __defined at:__ @wayland-client-core.h 293:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_create_queue ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO (RIP.Ptr Wl_event_queue)
wl_display_create_queue = hs_bindgen_19d3a5535d8f2aaa

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_create_queue_with_name@
foreign import ccall unsafe "hs_bindgen_ea4e5027156f2399" hs_bindgen_ea4e5027156f2399_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_create_queue_with_name@
hs_bindgen_ea4e5027156f2399 ::
     RIP.Ptr Wl_display
  -> PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Wl_event_queue)
hs_bindgen_ea4e5027156f2399 =
  RIP.fromFFIType hs_bindgen_ea4e5027156f2399_base

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
  hs_bindgen_ea4e5027156f2399

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_prepare_read_queue@
foreign import ccall unsafe "hs_bindgen_3a0695e70bdfd74b" hs_bindgen_3a0695e70bdfd74b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_prepare_read_queue@
hs_bindgen_3a0695e70bdfd74b ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> IO RIP.CInt
hs_bindgen_3a0695e70bdfd74b =
  RIP.fromFFIType hs_bindgen_3a0695e70bdfd74b_base

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
  hs_bindgen_3a0695e70bdfd74b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_prepare_read@
foreign import ccall unsafe "hs_bindgen_ce1517c406f4e399" hs_bindgen_ce1517c406f4e399_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_prepare_read@
hs_bindgen_ce1517c406f4e399 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_ce1517c406f4e399 =
  RIP.fromFFIType hs_bindgen_ce1517c406f4e399_base

{-| __C declaration:__ @wl_display_prepare_read@

    __defined at:__ @wayland-client-core.h 304:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_prepare_read ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_prepare_read = hs_bindgen_ce1517c406f4e399

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_cancel_read@
foreign import ccall unsafe "hs_bindgen_56f7be5c4637cbe1" hs_bindgen_56f7be5c4637cbe1_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_cancel_read@
hs_bindgen_56f7be5c4637cbe1 ::
     RIP.Ptr Wl_display
  -> IO ()
hs_bindgen_56f7be5c4637cbe1 =
  RIP.fromFFIType hs_bindgen_56f7be5c4637cbe1_base

{-| __C declaration:__ @wl_display_cancel_read@

    __defined at:__ @wayland-client-core.h 307:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_cancel_read ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO ()
wl_display_cancel_read = hs_bindgen_56f7be5c4637cbe1

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_read_events@
foreign import ccall unsafe "hs_bindgen_6fa882430e46749f" hs_bindgen_6fa882430e46749f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_read_events@
hs_bindgen_6fa882430e46749f ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_6fa882430e46749f =
  RIP.fromFFIType hs_bindgen_6fa882430e46749f_base

{-| __C declaration:__ @wl_display_read_events@

    __defined at:__ @wayland-client-core.h 310:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_read_events ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_read_events = hs_bindgen_6fa882430e46749f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_set_max_buffer_size@
foreign import ccall unsafe "hs_bindgen_5b7511352d575dda" hs_bindgen_5b7511352d575dda_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_set_max_buffer_size@
hs_bindgen_5b7511352d575dda ::
     RIP.Ptr Wl_display
  -> HsBindgen.Runtime.LibC.CSize
  -> IO ()
hs_bindgen_5b7511352d575dda =
  RIP.fromFFIType hs_bindgen_5b7511352d575dda_base

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
  hs_bindgen_5b7511352d575dda

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_add_listener@
foreign import ccall unsafe "hs_bindgen_453b4ed58777d773" hs_bindgen_453b4ed58777d773_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_add_listener@
hs_bindgen_453b4ed58777d773 ::
     RIP.Ptr Wl_display
  -> PtrConst.PtrConst Wl_display_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_453b4ed58777d773 =
  RIP.fromFFIType hs_bindgen_453b4ed58777d773_base

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
wl_display_add_listener = hs_bindgen_453b4ed58777d773

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_set_user_data@
foreign import ccall unsafe "hs_bindgen_c0ac8387cc3c08f9" hs_bindgen_c0ac8387cc3c08f9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_set_user_data@
hs_bindgen_c0ac8387cc3c08f9 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_c0ac8387cc3c08f9 =
  RIP.fromFFIType hs_bindgen_c0ac8387cc3c08f9_base

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
  hs_bindgen_c0ac8387cc3c08f9

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_user_data@
foreign import ccall unsafe "hs_bindgen_2ee490b0b42b7b98" hs_bindgen_2ee490b0b42b7b98_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_user_data@
hs_bindgen_2ee490b0b42b7b98 ::
     RIP.Ptr Wl_display
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_2ee490b0b42b7b98 =
  RIP.fromFFIType hs_bindgen_2ee490b0b42b7b98_base

{-| __C declaration:__ @wl_display_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1074:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_get_user_data ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> IO (RIP.Ptr RIP.Void)
wl_display_get_user_data =
  hs_bindgen_2ee490b0b42b7b98

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_version@
foreign import ccall unsafe "hs_bindgen_7c84b9524785d1db" hs_bindgen_7c84b9524785d1db_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_version@
hs_bindgen_7c84b9524785d1db ::
     RIP.Ptr Wl_display
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_7c84b9524785d1db =
  RIP.fromFFIType hs_bindgen_7c84b9524785d1db_base

{-| __C declaration:__ @wl_display_get_version@

    __defined at:__ @wayland-client-protocol.h 1080:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_get_version ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_display_get_version = hs_bindgen_7c84b9524785d1db

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_sync@
foreign import ccall unsafe "hs_bindgen_001f14693c06b606" hs_bindgen_001f14693c06b606_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_sync@
hs_bindgen_001f14693c06b606 ::
     RIP.Ptr Wl_display
  -> IO (RIP.Ptr Wl_callback)
hs_bindgen_001f14693c06b606 =
  RIP.fromFFIType hs_bindgen_001f14693c06b606_base

{-| __C declaration:__ @wl_display_sync@

    __defined at:__ @wayland-client-protocol.h 1101:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_sync ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> IO (RIP.Ptr Wl_callback)
wl_display_sync = hs_bindgen_001f14693c06b606

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_registry@
foreign import ccall unsafe "hs_bindgen_86e972696a38874c" hs_bindgen_86e972696a38874c_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_display_get_registry@
hs_bindgen_86e972696a38874c ::
     RIP.Ptr Wl_display
  -> IO (RIP.Ptr Wl_registry)
hs_bindgen_86e972696a38874c =
  RIP.fromFFIType hs_bindgen_86e972696a38874c_base

{-| __C declaration:__ @wl_display_get_registry@

    __defined at:__ @wayland-client-protocol.h 1125:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_get_registry ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> IO (RIP.Ptr Wl_registry)
wl_display_get_registry = hs_bindgen_86e972696a38874c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_add_listener@
foreign import ccall unsafe "hs_bindgen_cb885e15efb7957f" hs_bindgen_cb885e15efb7957f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_add_listener@
hs_bindgen_cb885e15efb7957f ::
     RIP.Ptr Wl_registry
  -> PtrConst.PtrConst Wl_registry_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_cb885e15efb7957f =
  RIP.fromFFIType hs_bindgen_cb885e15efb7957f_base

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
  hs_bindgen_cb885e15efb7957f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_set_user_data@
foreign import ccall unsafe "hs_bindgen_397b9120ee370df5" hs_bindgen_397b9120ee370df5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_set_user_data@
hs_bindgen_397b9120ee370df5 ::
     RIP.Ptr Wl_registry
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_397b9120ee370df5 =
  RIP.fromFFIType hs_bindgen_397b9120ee370df5_base

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
  hs_bindgen_397b9120ee370df5

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_get_user_data@
foreign import ccall unsafe "hs_bindgen_5c311be36c2eb161" hs_bindgen_5c311be36c2eb161_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_get_user_data@
hs_bindgen_5c311be36c2eb161 ::
     RIP.Ptr Wl_registry
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_5c311be36c2eb161 =
  RIP.fromFFIType hs_bindgen_5c311be36c2eb161_base

{-| __C declaration:__ @wl_registry_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1213:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_get_user_data ::
     RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @wl_registry@
  -> IO (RIP.Ptr RIP.Void)
wl_registry_get_user_data =
  hs_bindgen_5c311be36c2eb161

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_get_version@
foreign import ccall unsafe "hs_bindgen_2466ee8cba81177c" hs_bindgen_2466ee8cba81177c_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_get_version@
hs_bindgen_2466ee8cba81177c ::
     RIP.Ptr Wl_registry
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_2466ee8cba81177c =
  RIP.fromFFIType hs_bindgen_2466ee8cba81177c_base

{-| __C declaration:__ @wl_registry_get_version@

    __defined at:__ @wayland-client-protocol.h 1219:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_get_version ::
     RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @wl_registry@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_registry_get_version = hs_bindgen_2466ee8cba81177c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_destroy@
foreign import ccall unsafe "hs_bindgen_b2e3b38aca6f9cdc" hs_bindgen_b2e3b38aca6f9cdc_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_destroy@
hs_bindgen_b2e3b38aca6f9cdc ::
     RIP.Ptr Wl_registry
  -> IO ()
hs_bindgen_b2e3b38aca6f9cdc =
  RIP.fromFFIType hs_bindgen_b2e3b38aca6f9cdc_base

{-| __C declaration:__ @wl_registry_destroy@

    __defined at:__ @wayland-client-protocol.h 1226:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_destroy ::
     RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @wl_registry@
  -> IO ()
wl_registry_destroy = hs_bindgen_b2e3b38aca6f9cdc

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_bind@
foreign import ccall unsafe "hs_bindgen_202f3363e0f70088" hs_bindgen_202f3363e0f70088_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_registry_bind@
hs_bindgen_202f3363e0f70088 ::
     RIP.Ptr Wl_registry
  -> HsBindgen.Runtime.LibC.Word32
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_202f3363e0f70088 =
  RIP.fromFFIType hs_bindgen_202f3363e0f70088_base

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
wl_registry_bind = hs_bindgen_202f3363e0f70088

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_callback_add_listener@
foreign import ccall unsafe "hs_bindgen_897cdbed2b2f76bc" hs_bindgen_897cdbed2b2f76bc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_callback_add_listener@
hs_bindgen_897cdbed2b2f76bc ::
     RIP.Ptr Wl_callback
  -> PtrConst.PtrConst Wl_callback_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_897cdbed2b2f76bc =
  RIP.fromFFIType hs_bindgen_897cdbed2b2f76bc_base

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
  hs_bindgen_897cdbed2b2f76bc

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_callback_set_user_data@
foreign import ccall unsafe "hs_bindgen_7cd70bc2baac81ad" hs_bindgen_7cd70bc2baac81ad_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_callback_set_user_data@
hs_bindgen_7cd70bc2baac81ad ::
     RIP.Ptr Wl_callback
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_7cd70bc2baac81ad =
  RIP.fromFFIType hs_bindgen_7cd70bc2baac81ad_base

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
  hs_bindgen_7cd70bc2baac81ad

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_callback_get_user_data@
foreign import ccall unsafe "hs_bindgen_9897db02c035a725" hs_bindgen_9897db02c035a725_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_callback_get_user_data@
hs_bindgen_9897db02c035a725 ::
     RIP.Ptr Wl_callback
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_9897db02c035a725 =
  RIP.fromFFIType hs_bindgen_9897db02c035a725_base

{-| __C declaration:__ @wl_callback_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1290:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_get_user_data ::
     RIP.Ptr Wl_callback
     -- ^ __C declaration:__ @wl_callback@
  -> IO (RIP.Ptr RIP.Void)
wl_callback_get_user_data =
  hs_bindgen_9897db02c035a725

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_callback_get_version@
foreign import ccall unsafe "hs_bindgen_77568f1c1be0d02f" hs_bindgen_77568f1c1be0d02f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_callback_get_version@
hs_bindgen_77568f1c1be0d02f ::
     RIP.Ptr Wl_callback
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_77568f1c1be0d02f =
  RIP.fromFFIType hs_bindgen_77568f1c1be0d02f_base

{-| __C declaration:__ @wl_callback_get_version@

    __defined at:__ @wayland-client-protocol.h 1296:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_get_version ::
     RIP.Ptr Wl_callback
     -- ^ __C declaration:__ @wl_callback@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_callback_get_version = hs_bindgen_77568f1c1be0d02f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_callback_destroy@
foreign import ccall unsafe "hs_bindgen_ec8b58f3f853ebed" hs_bindgen_ec8b58f3f853ebed_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_callback_destroy@
hs_bindgen_ec8b58f3f853ebed ::
     RIP.Ptr Wl_callback
  -> IO ()
hs_bindgen_ec8b58f3f853ebed =
  RIP.fromFFIType hs_bindgen_ec8b58f3f853ebed_base

{-| __C declaration:__ @wl_callback_destroy@

    __defined at:__ @wayland-client-protocol.h 1303:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_destroy ::
     RIP.Ptr Wl_callback
     -- ^ __C declaration:__ @wl_callback@
  -> IO ()
wl_callback_destroy = hs_bindgen_ec8b58f3f853ebed

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_set_user_data@
foreign import ccall unsafe "hs_bindgen_dba5fd42e5826309" hs_bindgen_dba5fd42e5826309_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_set_user_data@
hs_bindgen_dba5fd42e5826309 ::
     RIP.Ptr Wl_compositor
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_dba5fd42e5826309 =
  RIP.fromFFIType hs_bindgen_dba5fd42e5826309_base

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
  hs_bindgen_dba5fd42e5826309

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_get_user_data@
foreign import ccall unsafe "hs_bindgen_7a20efa275a6b13d" hs_bindgen_7a20efa275a6b13d_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_get_user_data@
hs_bindgen_7a20efa275a6b13d ::
     RIP.Ptr Wl_compositor
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_7a20efa275a6b13d =
  RIP.fromFFIType hs_bindgen_7a20efa275a6b13d_base

{-| __C declaration:__ @wl_compositor_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1330:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_get_user_data ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO (RIP.Ptr RIP.Void)
wl_compositor_get_user_data =
  hs_bindgen_7a20efa275a6b13d

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_get_version@
foreign import ccall unsafe "hs_bindgen_7ec5bfecd0fdf6d9" hs_bindgen_7ec5bfecd0fdf6d9_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_get_version@
hs_bindgen_7ec5bfecd0fdf6d9 ::
     RIP.Ptr Wl_compositor
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_7ec5bfecd0fdf6d9 =
  RIP.fromFFIType hs_bindgen_7ec5bfecd0fdf6d9_base

{-| __C declaration:__ @wl_compositor_get_version@

    __defined at:__ @wayland-client-protocol.h 1336:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_get_version ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_compositor_get_version =
  hs_bindgen_7ec5bfecd0fdf6d9

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_destroy@
foreign import ccall unsafe "hs_bindgen_d489f1daf387d5a7" hs_bindgen_d489f1daf387d5a7_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_destroy@
hs_bindgen_d489f1daf387d5a7 ::
     RIP.Ptr Wl_compositor
  -> IO ()
hs_bindgen_d489f1daf387d5a7 =
  RIP.fromFFIType hs_bindgen_d489f1daf387d5a7_base

{-| __C declaration:__ @wl_compositor_destroy@

    __defined at:__ @wayland-client-protocol.h 1343:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_destroy ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO ()
wl_compositor_destroy = hs_bindgen_d489f1daf387d5a7

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_create_surface@
foreign import ccall unsafe "hs_bindgen_f9d590aa077da3a4" hs_bindgen_f9d590aa077da3a4_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_create_surface@
hs_bindgen_f9d590aa077da3a4 ::
     RIP.Ptr Wl_compositor
  -> IO (RIP.Ptr Wl_surface)
hs_bindgen_f9d590aa077da3a4 =
  RIP.fromFFIType hs_bindgen_f9d590aa077da3a4_base

{-| __C declaration:__ @wl_compositor_create_surface@

    __defined at:__ @wayland-client-protocol.h 1354:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_create_surface ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO (RIP.Ptr Wl_surface)
wl_compositor_create_surface =
  hs_bindgen_f9d590aa077da3a4

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_create_region@
foreign import ccall unsafe "hs_bindgen_32a4512f2a0776b6" hs_bindgen_32a4512f2a0776b6_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_compositor_create_region@
hs_bindgen_32a4512f2a0776b6 ::
     RIP.Ptr Wl_compositor
  -> IO (RIP.Ptr Wl_region)
hs_bindgen_32a4512f2a0776b6 =
  RIP.fromFFIType hs_bindgen_32a4512f2a0776b6_base

{-| __C declaration:__ @wl_compositor_create_region@

    __defined at:__ @wayland-client-protocol.h 1370:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_create_region ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO (RIP.Ptr Wl_region)
wl_compositor_create_region =
  hs_bindgen_32a4512f2a0776b6

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_set_user_data@
foreign import ccall unsafe "hs_bindgen_2400ae30b36148de" hs_bindgen_2400ae30b36148de_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_set_user_data@
hs_bindgen_2400ae30b36148de ::
     RIP.Ptr Wl_shm_pool
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_2400ae30b36148de =
  RIP.fromFFIType hs_bindgen_2400ae30b36148de_base

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
  hs_bindgen_2400ae30b36148de

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_get_user_data@
foreign import ccall unsafe "hs_bindgen_b27e243af8957e55" hs_bindgen_b27e243af8957e55_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_get_user_data@
hs_bindgen_b27e243af8957e55 ::
     RIP.Ptr Wl_shm_pool
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_b27e243af8957e55 =
  RIP.fromFFIType hs_bindgen_b27e243af8957e55_base

{-| __C declaration:__ @wl_shm_pool_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1407:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_get_user_data ::
     RIP.Ptr Wl_shm_pool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> IO (RIP.Ptr RIP.Void)
wl_shm_pool_get_user_data =
  hs_bindgen_b27e243af8957e55

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_get_version@
foreign import ccall unsafe "hs_bindgen_eed8fe7e39446506" hs_bindgen_eed8fe7e39446506_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_get_version@
hs_bindgen_eed8fe7e39446506 ::
     RIP.Ptr Wl_shm_pool
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_eed8fe7e39446506 =
  RIP.fromFFIType hs_bindgen_eed8fe7e39446506_base

{-| __C declaration:__ @wl_shm_pool_get_version@

    __defined at:__ @wayland-client-protocol.h 1413:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_get_version ::
     RIP.Ptr Wl_shm_pool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shm_pool_get_version = hs_bindgen_eed8fe7e39446506

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_create_buffer@
foreign import ccall unsafe "hs_bindgen_3ff6993ecbc98498" hs_bindgen_3ff6993ecbc98498_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_create_buffer@
hs_bindgen_3ff6993ecbc98498 ::
     RIP.Ptr Wl_shm_pool
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr Wl_buffer)
hs_bindgen_3ff6993ecbc98498 =
  RIP.fromFFIType hs_bindgen_3ff6993ecbc98498_base

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
  hs_bindgen_3ff6993ecbc98498

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_destroy@
foreign import ccall unsafe "hs_bindgen_2724ca15be9f6b25" hs_bindgen_2724ca15be9f6b25_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_destroy@
hs_bindgen_2724ca15be9f6b25 ::
     RIP.Ptr Wl_shm_pool
  -> IO ()
hs_bindgen_2724ca15be9f6b25 =
  RIP.fromFFIType hs_bindgen_2724ca15be9f6b25_base

{-| __C declaration:__ @wl_shm_pool_destroy@

    __defined at:__ @wayland-client-protocol.h 1454:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_destroy ::
     RIP.Ptr Wl_shm_pool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> IO ()
wl_shm_pool_destroy = hs_bindgen_2724ca15be9f6b25

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_resize@
foreign import ccall unsafe "hs_bindgen_97e6898aaf12d2ab" hs_bindgen_97e6898aaf12d2ab_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_pool_resize@
hs_bindgen_97e6898aaf12d2ab ::
     RIP.Ptr Wl_shm_pool
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_97e6898aaf12d2ab =
  RIP.fromFFIType hs_bindgen_97e6898aaf12d2ab_base

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
wl_shm_pool_resize = hs_bindgen_97e6898aaf12d2ab

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_add_listener@
foreign import ccall unsafe "hs_bindgen_8455df6c7003d0aa" hs_bindgen_8455df6c7003d0aa_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_add_listener@
hs_bindgen_8455df6c7003d0aa ::
     RIP.Ptr Wl_shm
  -> PtrConst.PtrConst Wl_shm_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_8455df6c7003d0aa =
  RIP.fromFFIType hs_bindgen_8455df6c7003d0aa_base

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
wl_shm_add_listener = hs_bindgen_8455df6c7003d0aa

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_set_user_data@
foreign import ccall unsafe "hs_bindgen_58f0cb7f6b2c7fa4" hs_bindgen_58f0cb7f6b2c7fa4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_set_user_data@
hs_bindgen_58f0cb7f6b2c7fa4 ::
     RIP.Ptr Wl_shm
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_58f0cb7f6b2c7fa4 =
  RIP.fromFFIType hs_bindgen_58f0cb7f6b2c7fa4_base

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
wl_shm_set_user_data = hs_bindgen_58f0cb7f6b2c7fa4

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_get_user_data@
foreign import ccall unsafe "hs_bindgen_92ca625652c703bc" hs_bindgen_92ca625652c703bc_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_get_user_data@
hs_bindgen_92ca625652c703bc ::
     RIP.Ptr Wl_shm
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_92ca625652c703bc =
  RIP.fromFFIType hs_bindgen_92ca625652c703bc_base

{-| __C declaration:__ @wl_shm_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2038:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_get_user_data ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> IO (RIP.Ptr RIP.Void)
wl_shm_get_user_data = hs_bindgen_92ca625652c703bc

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_get_version@
foreign import ccall unsafe "hs_bindgen_f567df84aacebc20" hs_bindgen_f567df84aacebc20_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_get_version@
hs_bindgen_f567df84aacebc20 ::
     RIP.Ptr Wl_shm
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_f567df84aacebc20 =
  RIP.fromFFIType hs_bindgen_f567df84aacebc20_base

{-| __C declaration:__ @wl_shm_get_version@

    __defined at:__ @wayland-client-protocol.h 2044:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_get_version ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shm_get_version = hs_bindgen_f567df84aacebc20

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_destroy@
foreign import ccall unsafe "hs_bindgen_af49d8c3777fc08b" hs_bindgen_af49d8c3777fc08b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_destroy@
hs_bindgen_af49d8c3777fc08b ::
     RIP.Ptr Wl_shm
  -> IO ()
hs_bindgen_af49d8c3777fc08b =
  RIP.fromFFIType hs_bindgen_af49d8c3777fc08b_base

{-| __C declaration:__ @wl_shm_destroy@

    __defined at:__ @wayland-client-protocol.h 2051:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_destroy ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> IO ()
wl_shm_destroy = hs_bindgen_af49d8c3777fc08b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_create_pool@
foreign import ccall unsafe "hs_bindgen_ed52f0b1dbf0e840" hs_bindgen_ed52f0b1dbf0e840_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_create_pool@
hs_bindgen_ed52f0b1dbf0e840 ::
     RIP.Ptr Wl_shm
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO (RIP.Ptr Wl_shm_pool)
hs_bindgen_ed52f0b1dbf0e840 =
  RIP.fromFFIType hs_bindgen_ed52f0b1dbf0e840_base

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
wl_shm_create_pool = hs_bindgen_ed52f0b1dbf0e840

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_release@
foreign import ccall unsafe "hs_bindgen_0d0bd1378691d9cc" hs_bindgen_0d0bd1378691d9cc_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shm_release@
hs_bindgen_0d0bd1378691d9cc ::
     RIP.Ptr Wl_shm
  -> IO ()
hs_bindgen_0d0bd1378691d9cc =
  RIP.fromFFIType hs_bindgen_0d0bd1378691d9cc_base

{-| __C declaration:__ @wl_shm_release@

    __defined at:__ @wayland-client-protocol.h 2085:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_release ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> IO ()
wl_shm_release = hs_bindgen_0d0bd1378691d9cc

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_buffer_add_listener@
foreign import ccall unsafe "hs_bindgen_a3090b670fcf0dc2" hs_bindgen_a3090b670fcf0dc2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_buffer_add_listener@
hs_bindgen_a3090b670fcf0dc2 ::
     RIP.Ptr Wl_buffer
  -> PtrConst.PtrConst Wl_buffer_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_a3090b670fcf0dc2 =
  RIP.fromFFIType hs_bindgen_a3090b670fcf0dc2_base

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
wl_buffer_add_listener = hs_bindgen_a3090b670fcf0dc2

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_buffer_set_user_data@
foreign import ccall unsafe "hs_bindgen_957de01260f109c6" hs_bindgen_957de01260f109c6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_buffer_set_user_data@
hs_bindgen_957de01260f109c6 ::
     RIP.Ptr Wl_buffer
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_957de01260f109c6 =
  RIP.fromFFIType hs_bindgen_957de01260f109c6_base

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
wl_buffer_set_user_data = hs_bindgen_957de01260f109c6

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_buffer_get_user_data@
foreign import ccall unsafe "hs_bindgen_76a30c36714bc2f0" hs_bindgen_76a30c36714bc2f0_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_buffer_get_user_data@
hs_bindgen_76a30c36714bc2f0 ::
     RIP.Ptr Wl_buffer
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_76a30c36714bc2f0 =
  RIP.fromFFIType hs_bindgen_76a30c36714bc2f0_base

{-| __C declaration:__ @wl_buffer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2150:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_get_user_data ::
     RIP.Ptr Wl_buffer
     -- ^ __C declaration:__ @wl_buffer@
  -> IO (RIP.Ptr RIP.Void)
wl_buffer_get_user_data = hs_bindgen_76a30c36714bc2f0

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_buffer_get_version@
foreign import ccall unsafe "hs_bindgen_d08078963afca782" hs_bindgen_d08078963afca782_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_buffer_get_version@
hs_bindgen_d08078963afca782 ::
     RIP.Ptr Wl_buffer
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_d08078963afca782 =
  RIP.fromFFIType hs_bindgen_d08078963afca782_base

{-| __C declaration:__ @wl_buffer_get_version@

    __defined at:__ @wayland-client-protocol.h 2156:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_get_version ::
     RIP.Ptr Wl_buffer
     -- ^ __C declaration:__ @wl_buffer@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_buffer_get_version = hs_bindgen_d08078963afca782

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_buffer_destroy@
foreign import ccall unsafe "hs_bindgen_65c9ccc64649380f" hs_bindgen_65c9ccc64649380f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_buffer_destroy@
hs_bindgen_65c9ccc64649380f ::
     RIP.Ptr Wl_buffer
  -> IO ()
hs_bindgen_65c9ccc64649380f =
  RIP.fromFFIType hs_bindgen_65c9ccc64649380f_base

{-| __C declaration:__ @wl_buffer_destroy@

    __defined at:__ @wayland-client-protocol.h 2170:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_destroy ::
     RIP.Ptr Wl_buffer
     -- ^ __C declaration:__ @wl_buffer@
  -> IO ()
wl_buffer_destroy = hs_bindgen_65c9ccc64649380f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_add_listener@
foreign import ccall unsafe "hs_bindgen_56cf0cfd1264b955" hs_bindgen_56cf0cfd1264b955_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_add_listener@
hs_bindgen_56cf0cfd1264b955 ::
     RIP.Ptr Wl_data_offer
  -> PtrConst.PtrConst Wl_data_offer_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_56cf0cfd1264b955 =
  RIP.fromFFIType hs_bindgen_56cf0cfd1264b955_base

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
  hs_bindgen_56cf0cfd1264b955

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_set_user_data@
foreign import ccall unsafe "hs_bindgen_541486baa81fe126" hs_bindgen_541486baa81fe126_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_set_user_data@
hs_bindgen_541486baa81fe126 ::
     RIP.Ptr Wl_data_offer
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_541486baa81fe126 =
  RIP.fromFFIType hs_bindgen_541486baa81fe126_base

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
  hs_bindgen_541486baa81fe126

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_get_user_data@
foreign import ccall unsafe "hs_bindgen_866c121c1427ab5d" hs_bindgen_866c121c1427ab5d_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_get_user_data@
hs_bindgen_866c121c1427ab5d ::
     RIP.Ptr Wl_data_offer
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_866c121c1427ab5d =
  RIP.fromFFIType hs_bindgen_866c121c1427ab5d_base

{-| __C declaration:__ @wl_data_offer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2334:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_get_user_data ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO (RIP.Ptr RIP.Void)
wl_data_offer_get_user_data =
  hs_bindgen_866c121c1427ab5d

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_get_version@
foreign import ccall unsafe "hs_bindgen_f53c310a64889e09" hs_bindgen_f53c310a64889e09_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_get_version@
hs_bindgen_f53c310a64889e09 ::
     RIP.Ptr Wl_data_offer
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_f53c310a64889e09 =
  RIP.fromFFIType hs_bindgen_f53c310a64889e09_base

{-| __C declaration:__ @wl_data_offer_get_version@

    __defined at:__ @wayland-client-protocol.h 2340:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_get_version ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_offer_get_version =
  hs_bindgen_f53c310a64889e09

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_accept@
foreign import ccall unsafe "hs_bindgen_bf611ac397a9eb51" hs_bindgen_bf611ac397a9eb51_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_accept@
hs_bindgen_bf611ac397a9eb51 ::
     RIP.Ptr Wl_data_offer
  -> HsBindgen.Runtime.LibC.Word32
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_bf611ac397a9eb51 =
  RIP.fromFFIType hs_bindgen_bf611ac397a9eb51_base

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
wl_data_offer_accept = hs_bindgen_bf611ac397a9eb51

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_receive@
foreign import ccall unsafe "hs_bindgen_49a6446400f8abeb" hs_bindgen_49a6446400f8abeb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_receive@
hs_bindgen_49a6446400f8abeb ::
     RIP.Ptr Wl_data_offer
  -> PtrConst.PtrConst RIP.CChar
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_49a6446400f8abeb =
  RIP.fromFFIType hs_bindgen_49a6446400f8abeb_base

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
wl_data_offer_receive = hs_bindgen_49a6446400f8abeb

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_destroy@
foreign import ccall unsafe "hs_bindgen_794a1c35862e696f" hs_bindgen_794a1c35862e696f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_destroy@
hs_bindgen_794a1c35862e696f ::
     RIP.Ptr Wl_data_offer
  -> IO ()
hs_bindgen_794a1c35862e696f =
  RIP.fromFFIType hs_bindgen_794a1c35862e696f_base

{-| __C declaration:__ @wl_data_offer_destroy@

    __defined at:__ @wayland-client-protocol.h 2402:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_destroy ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO ()
wl_data_offer_destroy = hs_bindgen_794a1c35862e696f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_finish@
foreign import ccall unsafe "hs_bindgen_89eaa24cb441f0ab" hs_bindgen_89eaa24cb441f0ab_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_finish@
hs_bindgen_89eaa24cb441f0ab ::
     RIP.Ptr Wl_data_offer
  -> IO ()
hs_bindgen_89eaa24cb441f0ab =
  RIP.fromFFIType hs_bindgen_89eaa24cb441f0ab_base

{-| __C declaration:__ @wl_data_offer_finish@

    __defined at:__ @wayland-client-protocol.h 2427:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_finish ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO ()
wl_data_offer_finish = hs_bindgen_89eaa24cb441f0ab

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_set_actions@
foreign import ccall unsafe "hs_bindgen_012a3ec84be9eb1c" hs_bindgen_012a3ec84be9eb1c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_offer_set_actions@
hs_bindgen_012a3ec84be9eb1c ::
     RIP.Ptr Wl_data_offer
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_012a3ec84be9eb1c =
  RIP.fromFFIType hs_bindgen_012a3ec84be9eb1c_base

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
  hs_bindgen_012a3ec84be9eb1c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_add_listener@
foreign import ccall unsafe "hs_bindgen_981b64c6b86de64b" hs_bindgen_981b64c6b86de64b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_add_listener@
hs_bindgen_981b64c6b86de64b ::
     RIP.Ptr Wl_data_source
  -> PtrConst.PtrConst Wl_data_source_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_981b64c6b86de64b =
  RIP.fromFFIType hs_bindgen_981b64c6b86de64b_base

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
  hs_bindgen_981b64c6b86de64b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_set_user_data@
foreign import ccall unsafe "hs_bindgen_b3ddc13f2139d6a2" hs_bindgen_b3ddc13f2139d6a2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_set_user_data@
hs_bindgen_b3ddc13f2139d6a2 ::
     RIP.Ptr Wl_data_source
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_b3ddc13f2139d6a2 =
  RIP.fromFFIType hs_bindgen_b3ddc13f2139d6a2_base

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
  hs_bindgen_b3ddc13f2139d6a2

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_get_user_data@
foreign import ccall unsafe "hs_bindgen_3b2f1be8cd422d5b" hs_bindgen_3b2f1be8cd422d5b_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_get_user_data@
hs_bindgen_3b2f1be8cd422d5b ::
     RIP.Ptr Wl_data_source
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_3b2f1be8cd422d5b =
  RIP.fromFFIType hs_bindgen_3b2f1be8cd422d5b_base

{-| __C declaration:__ @wl_data_source_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2675:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_get_user_data ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> IO (RIP.Ptr RIP.Void)
wl_data_source_get_user_data =
  hs_bindgen_3b2f1be8cd422d5b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_get_version@
foreign import ccall unsafe "hs_bindgen_73171f49ffc71d36" hs_bindgen_73171f49ffc71d36_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_get_version@
hs_bindgen_73171f49ffc71d36 ::
     RIP.Ptr Wl_data_source
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_73171f49ffc71d36 =
  RIP.fromFFIType hs_bindgen_73171f49ffc71d36_base

{-| __C declaration:__ @wl_data_source_get_version@

    __defined at:__ @wayland-client-protocol.h 2681:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_get_version ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_source_get_version =
  hs_bindgen_73171f49ffc71d36

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_offer@
foreign import ccall unsafe "hs_bindgen_b1dec1df15032ab4" hs_bindgen_b1dec1df15032ab4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_offer@
hs_bindgen_b1dec1df15032ab4 ::
     RIP.Ptr Wl_data_source
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_b1dec1df15032ab4 =
  RIP.fromFFIType hs_bindgen_b1dec1df15032ab4_base

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
wl_data_source_offer = hs_bindgen_b1dec1df15032ab4

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_destroy@
foreign import ccall unsafe "hs_bindgen_b330d6a39cfbd27e" hs_bindgen_b330d6a39cfbd27e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_destroy@
hs_bindgen_b330d6a39cfbd27e ::
     RIP.Ptr Wl_data_source
  -> IO ()
hs_bindgen_b330d6a39cfbd27e =
  RIP.fromFFIType hs_bindgen_b330d6a39cfbd27e_base

{-| __C declaration:__ @wl_data_source_destroy@

    __defined at:__ @wayland-client-protocol.h 2706:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_destroy ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> IO ()
wl_data_source_destroy = hs_bindgen_b330d6a39cfbd27e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_set_actions@
foreign import ccall unsafe "hs_bindgen_1e09070537852185" hs_bindgen_1e09070537852185_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_source_set_actions@
hs_bindgen_1e09070537852185 ::
     RIP.Ptr Wl_data_source
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_1e09070537852185 =
  RIP.fromFFIType hs_bindgen_1e09070537852185_base

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
  hs_bindgen_1e09070537852185

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_add_listener@
foreign import ccall unsafe "hs_bindgen_2227eeb7f3943412" hs_bindgen_2227eeb7f3943412_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_add_listener@
hs_bindgen_2227eeb7f3943412 ::
     RIP.Ptr Wl_data_device
  -> PtrConst.PtrConst Wl_data_device_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_2227eeb7f3943412 =
  RIP.fromFFIType hs_bindgen_2227eeb7f3943412_base

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
  hs_bindgen_2227eeb7f3943412

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_set_user_data@
foreign import ccall unsafe "hs_bindgen_2363ecc34688345e" hs_bindgen_2363ecc34688345e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_set_user_data@
hs_bindgen_2363ecc34688345e ::
     RIP.Ptr Wl_data_device
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_2363ecc34688345e =
  RIP.fromFFIType hs_bindgen_2363ecc34688345e_base

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
  hs_bindgen_2363ecc34688345e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_get_user_data@
foreign import ccall unsafe "hs_bindgen_5982453688f26eb9" hs_bindgen_5982453688f26eb9_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_get_user_data@
hs_bindgen_5982453688f26eb9 ::
     RIP.Ptr Wl_data_device
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_5982453688f26eb9 =
  RIP.fromFFIType hs_bindgen_5982453688f26eb9_base

{-| __C declaration:__ @wl_data_device_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2918:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_get_user_data ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> IO (RIP.Ptr RIP.Void)
wl_data_device_get_user_data =
  hs_bindgen_5982453688f26eb9

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_get_version@
foreign import ccall unsafe "hs_bindgen_2608ac0d9cd7f90e" hs_bindgen_2608ac0d9cd7f90e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_get_version@
hs_bindgen_2608ac0d9cd7f90e ::
     RIP.Ptr Wl_data_device
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_2608ac0d9cd7f90e =
  RIP.fromFFIType hs_bindgen_2608ac0d9cd7f90e_base

{-| __C declaration:__ @wl_data_device_get_version@

    __defined at:__ @wayland-client-protocol.h 2924:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_get_version ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_device_get_version =
  hs_bindgen_2608ac0d9cd7f90e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_destroy@
foreign import ccall unsafe "hs_bindgen_88ac432ab9450088" hs_bindgen_88ac432ab9450088_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_destroy@
hs_bindgen_88ac432ab9450088 ::
     RIP.Ptr Wl_data_device
  -> IO ()
hs_bindgen_88ac432ab9450088 =
  RIP.fromFFIType hs_bindgen_88ac432ab9450088_base

{-| __C declaration:__ @wl_data_device_destroy@

    __defined at:__ @wayland-client-protocol.h 2931:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_destroy ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> IO ()
wl_data_device_destroy = hs_bindgen_88ac432ab9450088

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_start_drag@
foreign import ccall unsafe "hs_bindgen_043e446b3d597a6c" hs_bindgen_043e446b3d597a6c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_start_drag@
hs_bindgen_043e446b3d597a6c ::
     RIP.Ptr Wl_data_device
  -> RIP.Ptr Wl_data_source
  -> RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_043e446b3d597a6c =
  RIP.fromFFIType hs_bindgen_043e446b3d597a6c_base

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
  hs_bindgen_043e446b3d597a6c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_set_selection@
foreign import ccall unsafe "hs_bindgen_0124f0d597b6d223" hs_bindgen_0124f0d597b6d223_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_set_selection@
hs_bindgen_0124f0d597b6d223 ::
     RIP.Ptr Wl_data_device
  -> RIP.Ptr Wl_data_source
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_0124f0d597b6d223 =
  RIP.fromFFIType hs_bindgen_0124f0d597b6d223_base

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
  hs_bindgen_0124f0d597b6d223

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_release@
foreign import ccall unsafe "hs_bindgen_5434614e66e338a9" hs_bindgen_5434614e66e338a9_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_release@
hs_bindgen_5434614e66e338a9 ::
     RIP.Ptr Wl_data_device
  -> IO ()
hs_bindgen_5434614e66e338a9 =
  RIP.fromFFIType hs_bindgen_5434614e66e338a9_base

{-| __C declaration:__ @wl_data_device_release@

    __defined at:__ @wayland-client-protocol.h 3001:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_release ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> IO ()
wl_data_device_release = hs_bindgen_5434614e66e338a9

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_set_user_data@
foreign import ccall unsafe "hs_bindgen_362bd987605ddfd9" hs_bindgen_362bd987605ddfd9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_set_user_data@
hs_bindgen_362bd987605ddfd9 ::
     RIP.Ptr Wl_data_device_manager
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_362bd987605ddfd9 =
  RIP.fromFFIType hs_bindgen_362bd987605ddfd9_base

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
  hs_bindgen_362bd987605ddfd9

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_get_user_data@
foreign import ccall unsafe "hs_bindgen_f67d725157c5e7b2" hs_bindgen_f67d725157c5e7b2_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_get_user_data@
hs_bindgen_f67d725157c5e7b2 ::
     RIP.Ptr Wl_data_device_manager
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_f67d725157c5e7b2 =
  RIP.fromFFIType hs_bindgen_f67d725157c5e7b2_base

{-| __C declaration:__ @wl_data_device_manager_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3079:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_user_data ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO (RIP.Ptr RIP.Void)
wl_data_device_manager_get_user_data =
  hs_bindgen_f67d725157c5e7b2

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_get_version@
foreign import ccall unsafe "hs_bindgen_85fb934dbf01e9c8" hs_bindgen_85fb934dbf01e9c8_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_get_version@
hs_bindgen_85fb934dbf01e9c8 ::
     RIP.Ptr Wl_data_device_manager
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_85fb934dbf01e9c8 =
  RIP.fromFFIType hs_bindgen_85fb934dbf01e9c8_base

{-| __C declaration:__ @wl_data_device_manager_get_version@

    __defined at:__ @wayland-client-protocol.h 3085:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_version ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_device_manager_get_version =
  hs_bindgen_85fb934dbf01e9c8

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_destroy@
foreign import ccall unsafe "hs_bindgen_88786a568a7ad482" hs_bindgen_88786a568a7ad482_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_destroy@
hs_bindgen_88786a568a7ad482 ::
     RIP.Ptr Wl_data_device_manager
  -> IO ()
hs_bindgen_88786a568a7ad482 =
  RIP.fromFFIType hs_bindgen_88786a568a7ad482_base

{-| __C declaration:__ @wl_data_device_manager_destroy@

    __defined at:__ @wayland-client-protocol.h 3092:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_destroy ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO ()
wl_data_device_manager_destroy =
  hs_bindgen_88786a568a7ad482

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_create_data_source@
foreign import ccall unsafe "hs_bindgen_ac6513fe2bc77eb1" hs_bindgen_ac6513fe2bc77eb1_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_create_data_source@
hs_bindgen_ac6513fe2bc77eb1 ::
     RIP.Ptr Wl_data_device_manager
  -> IO (RIP.Ptr Wl_data_source)
hs_bindgen_ac6513fe2bc77eb1 =
  RIP.fromFFIType hs_bindgen_ac6513fe2bc77eb1_base

{-| __C declaration:__ @wl_data_device_manager_create_data_source@

    __defined at:__ @wayland-client-protocol.h 3103:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_create_data_source ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO (RIP.Ptr Wl_data_source)
wl_data_device_manager_create_data_source =
  hs_bindgen_ac6513fe2bc77eb1

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_get_data_device@
foreign import ccall unsafe "hs_bindgen_60e764d50d85c235" hs_bindgen_60e764d50d85c235_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_data_device_manager_get_data_device@
hs_bindgen_60e764d50d85c235 ::
     RIP.Ptr Wl_data_device_manager
  -> RIP.Ptr Wl_seat
  -> IO (RIP.Ptr Wl_data_device)
hs_bindgen_60e764d50d85c235 =
  RIP.fromFFIType hs_bindgen_60e764d50d85c235_base

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
  hs_bindgen_60e764d50d85c235

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_set_user_data@
foreign import ccall unsafe "hs_bindgen_d162e8cb2e3560fc" hs_bindgen_d162e8cb2e3560fc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_set_user_data@
hs_bindgen_d162e8cb2e3560fc ::
     RIP.Ptr Wl_shell
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_d162e8cb2e3560fc =
  RIP.fromFFIType hs_bindgen_d162e8cb2e3560fc_base

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
wl_shell_set_user_data = hs_bindgen_d162e8cb2e3560fc

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_get_user_data@
foreign import ccall unsafe "hs_bindgen_b28db5864205eb94" hs_bindgen_b28db5864205eb94_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_get_user_data@
hs_bindgen_b28db5864205eb94 ::
     RIP.Ptr Wl_shell
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_b28db5864205eb94 =
  RIP.fromFFIType hs_bindgen_b28db5864205eb94_base

{-| __C declaration:__ @wl_shell_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3156:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_get_user_data ::
     RIP.Ptr Wl_shell
     -- ^ __C declaration:__ @wl_shell@
  -> IO (RIP.Ptr RIP.Void)
wl_shell_get_user_data = hs_bindgen_b28db5864205eb94

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_get_version@
foreign import ccall unsafe "hs_bindgen_4d49bf44616d118d" hs_bindgen_4d49bf44616d118d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_get_version@
hs_bindgen_4d49bf44616d118d ::
     RIP.Ptr Wl_shell
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_4d49bf44616d118d =
  RIP.fromFFIType hs_bindgen_4d49bf44616d118d_base

{-| __C declaration:__ @wl_shell_get_version@

    __defined at:__ @wayland-client-protocol.h 3162:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_get_version ::
     RIP.Ptr Wl_shell
     -- ^ __C declaration:__ @wl_shell@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shell_get_version = hs_bindgen_4d49bf44616d118d

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_destroy@
foreign import ccall unsafe "hs_bindgen_473bad880b37beb8" hs_bindgen_473bad880b37beb8_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_destroy@
hs_bindgen_473bad880b37beb8 ::
     RIP.Ptr Wl_shell
  -> IO ()
hs_bindgen_473bad880b37beb8 =
  RIP.fromFFIType hs_bindgen_473bad880b37beb8_base

{-| __C declaration:__ @wl_shell_destroy@

    __defined at:__ @wayland-client-protocol.h 3169:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_destroy ::
     RIP.Ptr Wl_shell
     -- ^ __C declaration:__ @wl_shell@
  -> IO ()
wl_shell_destroy = hs_bindgen_473bad880b37beb8

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_get_shell_surface@
foreign import ccall unsafe "hs_bindgen_d3fa51c24c244b5c" hs_bindgen_d3fa51c24c244b5c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_get_shell_surface@
hs_bindgen_d3fa51c24c244b5c ::
     RIP.Ptr Wl_shell
  -> RIP.Ptr Wl_surface
  -> IO (RIP.Ptr Wl_shell_surface)
hs_bindgen_d3fa51c24c244b5c =
  RIP.fromFFIType hs_bindgen_d3fa51c24c244b5c_base

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
  hs_bindgen_d3fa51c24c244b5c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_add_listener@
foreign import ccall unsafe "hs_bindgen_038881fa4427be82" hs_bindgen_038881fa4427be82_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_add_listener@
hs_bindgen_038881fa4427be82 ::
     RIP.Ptr Wl_shell_surface
  -> PtrConst.PtrConst Wl_shell_surface_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_038881fa4427be82 =
  RIP.fromFFIType hs_bindgen_038881fa4427be82_base

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
  hs_bindgen_038881fa4427be82

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_user_data@
foreign import ccall unsafe "hs_bindgen_0f70ec230319370f" hs_bindgen_0f70ec230319370f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_user_data@
hs_bindgen_0f70ec230319370f ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_0f70ec230319370f =
  RIP.fromFFIType hs_bindgen_0f70ec230319370f_base

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
  hs_bindgen_0f70ec230319370f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_get_user_data@
foreign import ccall unsafe "hs_bindgen_7558d7e1d36c10b9" hs_bindgen_7558d7e1d36c10b9_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_get_user_data@
hs_bindgen_7558d7e1d36c10b9 ::
     RIP.Ptr Wl_shell_surface
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_7558d7e1d36c10b9 =
  RIP.fromFFIType hs_bindgen_7558d7e1d36c10b9_base

{-| __C declaration:__ @wl_shell_surface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3432:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_get_user_data ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO (RIP.Ptr RIP.Void)
wl_shell_surface_get_user_data =
  hs_bindgen_7558d7e1d36c10b9

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_get_version@
foreign import ccall unsafe "hs_bindgen_14d299f7ce65c936" hs_bindgen_14d299f7ce65c936_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_get_version@
hs_bindgen_14d299f7ce65c936 ::
     RIP.Ptr Wl_shell_surface
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_14d299f7ce65c936 =
  RIP.fromFFIType hs_bindgen_14d299f7ce65c936_base

{-| __C declaration:__ @wl_shell_surface_get_version@

    __defined at:__ @wayland-client-protocol.h 3438:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_get_version ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shell_surface_get_version =
  hs_bindgen_14d299f7ce65c936

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_destroy@
foreign import ccall unsafe "hs_bindgen_ed2e5b2a42071ef2" hs_bindgen_ed2e5b2a42071ef2_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_destroy@
hs_bindgen_ed2e5b2a42071ef2 ::
     RIP.Ptr Wl_shell_surface
  -> IO ()
hs_bindgen_ed2e5b2a42071ef2 =
  RIP.fromFFIType hs_bindgen_ed2e5b2a42071ef2_base

{-| __C declaration:__ @wl_shell_surface_destroy@

    __defined at:__ @wayland-client-protocol.h 3445:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_destroy ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO ()
wl_shell_surface_destroy =
  hs_bindgen_ed2e5b2a42071ef2

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_pong@
foreign import ccall unsafe "hs_bindgen_9b90dbc9dcd495e8" hs_bindgen_9b90dbc9dcd495e8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_pong@
hs_bindgen_9b90dbc9dcd495e8 ::
     RIP.Ptr Wl_shell_surface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_9b90dbc9dcd495e8 =
  RIP.fromFFIType hs_bindgen_9b90dbc9dcd495e8_base

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
wl_shell_surface_pong = hs_bindgen_9b90dbc9dcd495e8

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_move@
foreign import ccall unsafe "hs_bindgen_fe56ad755d76e760" hs_bindgen_fe56ad755d76e760_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_move@
hs_bindgen_fe56ad755d76e760 ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_seat
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_fe56ad755d76e760 =
  RIP.fromFFIType hs_bindgen_fe56ad755d76e760_base

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
wl_shell_surface_move = hs_bindgen_fe56ad755d76e760

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_resize@
foreign import ccall unsafe "hs_bindgen_11d658bba3228fd2" hs_bindgen_11d658bba3228fd2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_resize@
hs_bindgen_11d658bba3228fd2 ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_seat
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_11d658bba3228fd2 =
  RIP.fromFFIType hs_bindgen_11d658bba3228fd2_base

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
wl_shell_surface_resize = hs_bindgen_11d658bba3228fd2

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_toplevel@
foreign import ccall unsafe "hs_bindgen_a9cf393389a087c2" hs_bindgen_a9cf393389a087c2_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_toplevel@
hs_bindgen_a9cf393389a087c2 ::
     RIP.Ptr Wl_shell_surface
  -> IO ()
hs_bindgen_a9cf393389a087c2 =
  RIP.fromFFIType hs_bindgen_a9cf393389a087c2_base

{-| __C declaration:__ @wl_shell_surface_set_toplevel@

    __defined at:__ @wayland-client-protocol.h 3503:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_toplevel ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO ()
wl_shell_surface_set_toplevel =
  hs_bindgen_a9cf393389a087c2

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_transient@
foreign import ccall unsafe "hs_bindgen_c89bb6b11c76d01e" hs_bindgen_c89bb6b11c76d01e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_transient@
hs_bindgen_c89bb6b11c76d01e ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_c89bb6b11c76d01e =
  RIP.fromFFIType hs_bindgen_c89bb6b11c76d01e_base

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
  hs_bindgen_c89bb6b11c76d01e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_fullscreen@
foreign import ccall unsafe "hs_bindgen_2d5955e522c46fdf" hs_bindgen_2d5955e522c46fdf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_fullscreen@
hs_bindgen_2d5955e522c46fdf ::
     RIP.Ptr Wl_shell_surface
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Wl_output
  -> IO ()
hs_bindgen_2d5955e522c46fdf =
  RIP.fromFFIType hs_bindgen_2d5955e522c46fdf_base

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
  hs_bindgen_2d5955e522c46fdf

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_popup@
foreign import ccall unsafe "hs_bindgen_e10cd53a7c989f5b" hs_bindgen_e10cd53a7c989f5b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_popup@
hs_bindgen_e10cd53a7c989f5b ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_seat
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_e10cd53a7c989f5b =
  RIP.fromFFIType hs_bindgen_e10cd53a7c989f5b_base

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
  hs_bindgen_e10cd53a7c989f5b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_maximized@
foreign import ccall unsafe "hs_bindgen_8db127e65c54c463" hs_bindgen_8db127e65c54c463_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_maximized@
hs_bindgen_8db127e65c54c463 ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_output
  -> IO ()
hs_bindgen_8db127e65c54c463 =
  RIP.fromFFIType hs_bindgen_8db127e65c54c463_base

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
  hs_bindgen_8db127e65c54c463

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_title@
foreign import ccall unsafe "hs_bindgen_1f2295d5cafeaa10" hs_bindgen_1f2295d5cafeaa10_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_title@
hs_bindgen_1f2295d5cafeaa10 ::
     RIP.Ptr Wl_shell_surface
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_1f2295d5cafeaa10 =
  RIP.fromFFIType hs_bindgen_1f2295d5cafeaa10_base

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
  hs_bindgen_1f2295d5cafeaa10

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_class@
foreign import ccall unsafe "hs_bindgen_e3875849e94046a4" hs_bindgen_e3875849e94046a4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_shell_surface_set_class@
hs_bindgen_e3875849e94046a4 ::
     RIP.Ptr Wl_shell_surface
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_e3875849e94046a4 =
  RIP.fromFFIType hs_bindgen_e3875849e94046a4_base

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
  hs_bindgen_e3875849e94046a4

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_add_listener@
foreign import ccall unsafe "hs_bindgen_630f4da0a2cba4a5" hs_bindgen_630f4da0a2cba4a5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_add_listener@
hs_bindgen_630f4da0a2cba4a5 ::
     RIP.Ptr Wl_surface
  -> PtrConst.PtrConst Wl_surface_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_630f4da0a2cba4a5 =
  RIP.fromFFIType hs_bindgen_630f4da0a2cba4a5_base

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
wl_surface_add_listener = hs_bindgen_630f4da0a2cba4a5

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_set_user_data@
foreign import ccall unsafe "hs_bindgen_41cdf70ef95672cf" hs_bindgen_41cdf70ef95672cf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_set_user_data@
hs_bindgen_41cdf70ef95672cf ::
     RIP.Ptr Wl_surface
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_41cdf70ef95672cf =
  RIP.fromFFIType hs_bindgen_41cdf70ef95672cf_base

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
  hs_bindgen_41cdf70ef95672cf

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_get_user_data@
foreign import ccall unsafe "hs_bindgen_c6454ba3f2f75e78" hs_bindgen_c6454ba3f2f75e78_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_get_user_data@
hs_bindgen_c6454ba3f2f75e78 ::
     RIP.Ptr Wl_surface
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_c6454ba3f2f75e78 =
  RIP.fromFFIType hs_bindgen_c6454ba3f2f75e78_base

{-| __C declaration:__ @wl_surface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3870:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_get_user_data ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO (RIP.Ptr RIP.Void)
wl_surface_get_user_data =
  hs_bindgen_c6454ba3f2f75e78

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_get_version@
foreign import ccall unsafe "hs_bindgen_5eabba8b62dbed0a" hs_bindgen_5eabba8b62dbed0a_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_get_version@
hs_bindgen_5eabba8b62dbed0a ::
     RIP.Ptr Wl_surface
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_5eabba8b62dbed0a =
  RIP.fromFFIType hs_bindgen_5eabba8b62dbed0a_base

{-| __C declaration:__ @wl_surface_get_version@

    __defined at:__ @wayland-client-protocol.h 3876:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_get_version ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_surface_get_version = hs_bindgen_5eabba8b62dbed0a

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_destroy@
foreign import ccall unsafe "hs_bindgen_dd079fee26bec459" hs_bindgen_dd079fee26bec459_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_destroy@
hs_bindgen_dd079fee26bec459 ::
     RIP.Ptr Wl_surface
  -> IO ()
hs_bindgen_dd079fee26bec459 =
  RIP.fromFFIType hs_bindgen_dd079fee26bec459_base

{-| __C declaration:__ @wl_surface_destroy@

    __defined at:__ @wayland-client-protocol.h 3887:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_destroy ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO ()
wl_surface_destroy = hs_bindgen_dd079fee26bec459

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_attach@
foreign import ccall unsafe "hs_bindgen_905aca9576c29ccd" hs_bindgen_905aca9576c29ccd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_attach@
hs_bindgen_905aca9576c29ccd ::
     RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_buffer
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_905aca9576c29ccd =
  RIP.fromFFIType hs_bindgen_905aca9576c29ccd_base

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
wl_surface_attach = hs_bindgen_905aca9576c29ccd

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_damage@
foreign import ccall unsafe "hs_bindgen_dda7daa629fb73ec" hs_bindgen_dda7daa629fb73ec_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_damage@
hs_bindgen_dda7daa629fb73ec ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_dda7daa629fb73ec =
  RIP.fromFFIType hs_bindgen_dda7daa629fb73ec_base

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
wl_surface_damage = hs_bindgen_dda7daa629fb73ec

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_frame@
foreign import ccall unsafe "hs_bindgen_316b8205b1f0fd27" hs_bindgen_316b8205b1f0fd27_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_frame@
hs_bindgen_316b8205b1f0fd27 ::
     RIP.Ptr Wl_surface
  -> IO (RIP.Ptr Wl_callback)
hs_bindgen_316b8205b1f0fd27 =
  RIP.fromFFIType hs_bindgen_316b8205b1f0fd27_base

{-| __C declaration:__ @wl_surface_frame@

    __defined at:__ @wayland-client-protocol.h 4038:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_frame ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO (RIP.Ptr Wl_callback)
wl_surface_frame = hs_bindgen_316b8205b1f0fd27

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_set_opaque_region@
foreign import ccall unsafe "hs_bindgen_bf43ac51c11a3698" hs_bindgen_bf43ac51c11a3698_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_set_opaque_region@
hs_bindgen_bf43ac51c11a3698 ::
     RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_region
  -> IO ()
hs_bindgen_bf43ac51c11a3698 =
  RIP.fromFFIType hs_bindgen_bf43ac51c11a3698_base

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
  hs_bindgen_bf43ac51c11a3698

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_set_input_region@
foreign import ccall unsafe "hs_bindgen_2c4159de55b53d4d" hs_bindgen_2c4159de55b53d4d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_set_input_region@
hs_bindgen_2c4159de55b53d4d ::
     RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_region
  -> IO ()
hs_bindgen_2c4159de55b53d4d =
  RIP.fromFFIType hs_bindgen_2c4159de55b53d4d_base

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
  hs_bindgen_2c4159de55b53d4d

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_commit@
foreign import ccall unsafe "hs_bindgen_16a31bbfdf956986" hs_bindgen_16a31bbfdf956986_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_commit@
hs_bindgen_16a31bbfdf956986 ::
     RIP.Ptr Wl_surface
  -> IO ()
hs_bindgen_16a31bbfdf956986 =
  RIP.fromFFIType hs_bindgen_16a31bbfdf956986_base

{-| __C declaration:__ @wl_surface_commit@

    __defined at:__ @wayland-client-protocol.h 4140:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_commit ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO ()
wl_surface_commit = hs_bindgen_16a31bbfdf956986

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_set_buffer_transform@
foreign import ccall unsafe "hs_bindgen_4d321da7569349ed" hs_bindgen_4d321da7569349ed_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_set_buffer_transform@
hs_bindgen_4d321da7569349ed ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_4d321da7569349ed =
  RIP.fromFFIType hs_bindgen_4d321da7569349ed_base

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
  hs_bindgen_4d321da7569349ed

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_set_buffer_scale@
foreign import ccall unsafe "hs_bindgen_a6919e7df5d81548" hs_bindgen_a6919e7df5d81548_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_set_buffer_scale@
hs_bindgen_a6919e7df5d81548 ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_a6919e7df5d81548 =
  RIP.fromFFIType hs_bindgen_a6919e7df5d81548_base

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
  hs_bindgen_a6919e7df5d81548

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_damage_buffer@
foreign import ccall unsafe "hs_bindgen_696b284d7ccd0526" hs_bindgen_696b284d7ccd0526_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_damage_buffer@
hs_bindgen_696b284d7ccd0526 ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_696b284d7ccd0526 =
  RIP.fromFFIType hs_bindgen_696b284d7ccd0526_base

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
  hs_bindgen_696b284d7ccd0526

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_offset@
foreign import ccall unsafe "hs_bindgen_88c1528a19a3c113" hs_bindgen_88c1528a19a3c113_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_surface_offset@
hs_bindgen_88c1528a19a3c113 ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_88c1528a19a3c113 =
  RIP.fromFFIType hs_bindgen_88c1528a19a3c113_base

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
wl_surface_offset = hs_bindgen_88c1528a19a3c113

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_add_listener@
foreign import ccall unsafe "hs_bindgen_08156a315d06d69d" hs_bindgen_08156a315d06d69d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_add_listener@
hs_bindgen_08156a315d06d69d ::
     RIP.Ptr Wl_seat
  -> PtrConst.PtrConst Wl_seat_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_08156a315d06d69d =
  RIP.fromFFIType hs_bindgen_08156a315d06d69d_base

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
wl_seat_add_listener = hs_bindgen_08156a315d06d69d

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_set_user_data@
foreign import ccall unsafe "hs_bindgen_f60c691a6bdec8b3" hs_bindgen_f60c691a6bdec8b3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_set_user_data@
hs_bindgen_f60c691a6bdec8b3 ::
     RIP.Ptr Wl_seat
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_f60c691a6bdec8b3 =
  RIP.fromFFIType hs_bindgen_f60c691a6bdec8b3_base

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
wl_seat_set_user_data = hs_bindgen_f60c691a6bdec8b3

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_get_user_data@
foreign import ccall unsafe "hs_bindgen_8ba199c3e122749c" hs_bindgen_8ba199c3e122749c_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_get_user_data@
hs_bindgen_8ba199c3e122749c ::
     RIP.Ptr Wl_seat
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_8ba199c3e122749c =
  RIP.fromFFIType hs_bindgen_8ba199c3e122749c_base

{-| __C declaration:__ @wl_seat_get_user_data@

    __defined at:__ @wayland-client-protocol.h 4453:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_user_data ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO (RIP.Ptr RIP.Void)
wl_seat_get_user_data = hs_bindgen_8ba199c3e122749c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_get_version@
foreign import ccall unsafe "hs_bindgen_663ce2d373fe3612" hs_bindgen_663ce2d373fe3612_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_get_version@
hs_bindgen_663ce2d373fe3612 ::
     RIP.Ptr Wl_seat
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_663ce2d373fe3612 =
  RIP.fromFFIType hs_bindgen_663ce2d373fe3612_base

{-| __C declaration:__ @wl_seat_get_version@

    __defined at:__ @wayland-client-protocol.h 4459:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_version ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_seat_get_version = hs_bindgen_663ce2d373fe3612

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_destroy@
foreign import ccall unsafe "hs_bindgen_38e82fd4f1c4279b" hs_bindgen_38e82fd4f1c4279b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_destroy@
hs_bindgen_38e82fd4f1c4279b ::
     RIP.Ptr Wl_seat
  -> IO ()
hs_bindgen_38e82fd4f1c4279b =
  RIP.fromFFIType hs_bindgen_38e82fd4f1c4279b_base

{-| __C declaration:__ @wl_seat_destroy@

    __defined at:__ @wayland-client-protocol.h 4466:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_destroy ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO ()
wl_seat_destroy = hs_bindgen_38e82fd4f1c4279b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_get_pointer@
foreign import ccall unsafe "hs_bindgen_2b8007bf0d98f3fb" hs_bindgen_2b8007bf0d98f3fb_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_get_pointer@
hs_bindgen_2b8007bf0d98f3fb ::
     RIP.Ptr Wl_seat
  -> IO (RIP.Ptr Wl_pointer)
hs_bindgen_2b8007bf0d98f3fb =
  RIP.fromFFIType hs_bindgen_2b8007bf0d98f3fb_base

{-| __C declaration:__ @wl_seat_get_pointer@

    __defined at:__ @wayland-client-protocol.h 4484:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_pointer ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO (RIP.Ptr Wl_pointer)
wl_seat_get_pointer = hs_bindgen_2b8007bf0d98f3fb

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_get_keyboard@
foreign import ccall unsafe "hs_bindgen_0680a78b63429413" hs_bindgen_0680a78b63429413_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_get_keyboard@
hs_bindgen_0680a78b63429413 ::
     RIP.Ptr Wl_seat
  -> IO (RIP.Ptr Wl_keyboard)
hs_bindgen_0680a78b63429413 =
  RIP.fromFFIType hs_bindgen_0680a78b63429413_base

{-| __C declaration:__ @wl_seat_get_keyboard@

    __defined at:__ @wayland-client-protocol.h 4507:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_keyboard ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO (RIP.Ptr Wl_keyboard)
wl_seat_get_keyboard = hs_bindgen_0680a78b63429413

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_get_touch@
foreign import ccall unsafe "hs_bindgen_b156af21ae597204" hs_bindgen_b156af21ae597204_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_get_touch@
hs_bindgen_b156af21ae597204 ::
     RIP.Ptr Wl_seat
  -> IO (RIP.Ptr Wl_touch)
hs_bindgen_b156af21ae597204 =
  RIP.fromFFIType hs_bindgen_b156af21ae597204_base

{-| __C declaration:__ @wl_seat_get_touch@

    __defined at:__ @wayland-client-protocol.h 4530:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_touch ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO (RIP.Ptr Wl_touch)
wl_seat_get_touch = hs_bindgen_b156af21ae597204

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_release@
foreign import ccall unsafe "hs_bindgen_103f12d6392690ad" hs_bindgen_103f12d6392690ad_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_seat_release@
hs_bindgen_103f12d6392690ad ::
     RIP.Ptr Wl_seat
  -> IO ()
hs_bindgen_103f12d6392690ad =
  RIP.fromFFIType hs_bindgen_103f12d6392690ad_base

{-| __C declaration:__ @wl_seat_release@

    __defined at:__ @wayland-client-protocol.h 4547:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_release ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO ()
wl_seat_release = hs_bindgen_103f12d6392690ad

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_add_listener@
foreign import ccall unsafe "hs_bindgen_cfd62670964bbe6b" hs_bindgen_cfd62670964bbe6b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_add_listener@
hs_bindgen_cfd62670964bbe6b ::
     RIP.Ptr Wl_pointer
  -> PtrConst.PtrConst Wl_pointer_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_cfd62670964bbe6b =
  RIP.fromFFIType hs_bindgen_cfd62670964bbe6b_base

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
wl_pointer_add_listener = hs_bindgen_cfd62670964bbe6b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_set_user_data@
foreign import ccall unsafe "hs_bindgen_e6536f0e5ec86149" hs_bindgen_e6536f0e5ec86149_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_set_user_data@
hs_bindgen_e6536f0e5ec86149 ::
     RIP.Ptr Wl_pointer
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_e6536f0e5ec86149 =
  RIP.fromFFIType hs_bindgen_e6536f0e5ec86149_base

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
  hs_bindgen_e6536f0e5ec86149

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_get_user_data@
foreign import ccall unsafe "hs_bindgen_f052cf16a0e3797f" hs_bindgen_f052cf16a0e3797f_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_get_user_data@
hs_bindgen_f052cf16a0e3797f ::
     RIP.Ptr Wl_pointer
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_f052cf16a0e3797f =
  RIP.fromFFIType hs_bindgen_f052cf16a0e3797f_base

{-| __C declaration:__ @wl_pointer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5083:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_get_user_data ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO (RIP.Ptr RIP.Void)
wl_pointer_get_user_data =
  hs_bindgen_f052cf16a0e3797f

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_get_version@
foreign import ccall unsafe "hs_bindgen_469601baf4fc5c17" hs_bindgen_469601baf4fc5c17_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_get_version@
hs_bindgen_469601baf4fc5c17 ::
     RIP.Ptr Wl_pointer
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_469601baf4fc5c17 =
  RIP.fromFFIType hs_bindgen_469601baf4fc5c17_base

{-| __C declaration:__ @wl_pointer_get_version@

    __defined at:__ @wayland-client-protocol.h 5089:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_get_version ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_pointer_get_version = hs_bindgen_469601baf4fc5c17

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_destroy@
foreign import ccall unsafe "hs_bindgen_c574d0405d7320fb" hs_bindgen_c574d0405d7320fb_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_destroy@
hs_bindgen_c574d0405d7320fb ::
     RIP.Ptr Wl_pointer
  -> IO ()
hs_bindgen_c574d0405d7320fb =
  RIP.fromFFIType hs_bindgen_c574d0405d7320fb_base

{-| __C declaration:__ @wl_pointer_destroy@

    __defined at:__ @wayland-client-protocol.h 5096:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_destroy ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO ()
wl_pointer_destroy = hs_bindgen_c574d0405d7320fb

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_set_cursor@
foreign import ccall unsafe "hs_bindgen_9eff03809e1adc7e" hs_bindgen_9eff03809e1adc7e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_set_cursor@
hs_bindgen_9eff03809e1adc7e ::
     RIP.Ptr Wl_pointer
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_9eff03809e1adc7e =
  RIP.fromFFIType hs_bindgen_9eff03809e1adc7e_base

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
wl_pointer_set_cursor = hs_bindgen_9eff03809e1adc7e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_release@
foreign import ccall unsafe "hs_bindgen_2198319038473511" hs_bindgen_2198319038473511_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_pointer_release@
hs_bindgen_2198319038473511 ::
     RIP.Ptr Wl_pointer
  -> IO ()
hs_bindgen_2198319038473511 =
  RIP.fromFFIType hs_bindgen_2198319038473511_base

{-| __C declaration:__ @wl_pointer_release@

    __defined at:__ @wayland-client-protocol.h 5155:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_release ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO ()
wl_pointer_release = hs_bindgen_2198319038473511

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_add_listener@
foreign import ccall unsafe "hs_bindgen_6951a1ada1ad6b0b" hs_bindgen_6951a1ada1ad6b0b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_add_listener@
hs_bindgen_6951a1ada1ad6b0b ::
     RIP.Ptr Wl_keyboard
  -> PtrConst.PtrConst Wl_keyboard_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_6951a1ada1ad6b0b =
  RIP.fromFFIType hs_bindgen_6951a1ada1ad6b0b_base

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
  hs_bindgen_6951a1ada1ad6b0b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_set_user_data@
foreign import ccall unsafe "hs_bindgen_d5d6d187cda45a41" hs_bindgen_d5d6d187cda45a41_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_set_user_data@
hs_bindgen_d5d6d187cda45a41 ::
     RIP.Ptr Wl_keyboard
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_d5d6d187cda45a41 =
  RIP.fromFFIType hs_bindgen_d5d6d187cda45a41_base

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
  hs_bindgen_d5d6d187cda45a41

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_get_user_data@
foreign import ccall unsafe "hs_bindgen_3d960a027e1cc67d" hs_bindgen_3d960a027e1cc67d_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_get_user_data@
hs_bindgen_3d960a027e1cc67d ::
     RIP.Ptr Wl_keyboard
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_3d960a027e1cc67d =
  RIP.fromFFIType hs_bindgen_3d960a027e1cc67d_base

{-| __C declaration:__ @wl_keyboard_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5433:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_get_user_data ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO (RIP.Ptr RIP.Void)
wl_keyboard_get_user_data =
  hs_bindgen_3d960a027e1cc67d

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_get_version@
foreign import ccall unsafe "hs_bindgen_d06e955c4dac6e7c" hs_bindgen_d06e955c4dac6e7c_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_get_version@
hs_bindgen_d06e955c4dac6e7c ::
     RIP.Ptr Wl_keyboard
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_d06e955c4dac6e7c =
  RIP.fromFFIType hs_bindgen_d06e955c4dac6e7c_base

{-| __C declaration:__ @wl_keyboard_get_version@

    __defined at:__ @wayland-client-protocol.h 5439:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_get_version ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_keyboard_get_version = hs_bindgen_d06e955c4dac6e7c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_destroy@
foreign import ccall unsafe "hs_bindgen_53a5e569f5487c6c" hs_bindgen_53a5e569f5487c6c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_destroy@
hs_bindgen_53a5e569f5487c6c ::
     RIP.Ptr Wl_keyboard
  -> IO ()
hs_bindgen_53a5e569f5487c6c =
  RIP.fromFFIType hs_bindgen_53a5e569f5487c6c_base

{-| __C declaration:__ @wl_keyboard_destroy@

    __defined at:__ @wayland-client-protocol.h 5446:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_destroy ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO ()
wl_keyboard_destroy = hs_bindgen_53a5e569f5487c6c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_release@
foreign import ccall unsafe "hs_bindgen_3097afd73d31a15b" hs_bindgen_3097afd73d31a15b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_keyboard_release@
hs_bindgen_3097afd73d31a15b ::
     RIP.Ptr Wl_keyboard
  -> IO ()
hs_bindgen_3097afd73d31a15b =
  RIP.fromFFIType hs_bindgen_3097afd73d31a15b_base

{-| __C declaration:__ @wl_keyboard_release@

    __defined at:__ @wayland-client-protocol.h 5455:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_release ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO ()
wl_keyboard_release = hs_bindgen_3097afd73d31a15b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_add_listener@
foreign import ccall unsafe "hs_bindgen_c821195588e2a154" hs_bindgen_c821195588e2a154_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_add_listener@
hs_bindgen_c821195588e2a154 ::
     RIP.Ptr Wl_touch
  -> PtrConst.PtrConst Wl_touch_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_c821195588e2a154 =
  RIP.fromFFIType hs_bindgen_c821195588e2a154_base

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
wl_touch_add_listener = hs_bindgen_c821195588e2a154

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_set_user_data@
foreign import ccall unsafe "hs_bindgen_ec4b34b230e4e3a2" hs_bindgen_ec4b34b230e4e3a2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_set_user_data@
hs_bindgen_ec4b34b230e4e3a2 ::
     RIP.Ptr Wl_touch
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_ec4b34b230e4e3a2 =
  RIP.fromFFIType hs_bindgen_ec4b34b230e4e3a2_base

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
wl_touch_set_user_data = hs_bindgen_ec4b34b230e4e3a2

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_get_user_data@
foreign import ccall unsafe "hs_bindgen_d6f8219a3601d0be" hs_bindgen_d6f8219a3601d0be_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_get_user_data@
hs_bindgen_d6f8219a3601d0be ::
     RIP.Ptr Wl_touch
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_d6f8219a3601d0be =
  RIP.fromFFIType hs_bindgen_d6f8219a3601d0be_base

{-| __C declaration:__ @wl_touch_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5677:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_get_user_data ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> IO (RIP.Ptr RIP.Void)
wl_touch_get_user_data = hs_bindgen_d6f8219a3601d0be

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_get_version@
foreign import ccall unsafe "hs_bindgen_b8ffcadf63ffedef" hs_bindgen_b8ffcadf63ffedef_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_get_version@
hs_bindgen_b8ffcadf63ffedef ::
     RIP.Ptr Wl_touch
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_b8ffcadf63ffedef =
  RIP.fromFFIType hs_bindgen_b8ffcadf63ffedef_base

{-| __C declaration:__ @wl_touch_get_version@

    __defined at:__ @wayland-client-protocol.h 5683:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_get_version ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_touch_get_version = hs_bindgen_b8ffcadf63ffedef

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_destroy@
foreign import ccall unsafe "hs_bindgen_47914352c34ef06c" hs_bindgen_47914352c34ef06c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_destroy@
hs_bindgen_47914352c34ef06c ::
     RIP.Ptr Wl_touch
  -> IO ()
hs_bindgen_47914352c34ef06c =
  RIP.fromFFIType hs_bindgen_47914352c34ef06c_base

{-| __C declaration:__ @wl_touch_destroy@

    __defined at:__ @wayland-client-protocol.h 5690:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_destroy ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> IO ()
wl_touch_destroy = hs_bindgen_47914352c34ef06c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_release@
foreign import ccall unsafe "hs_bindgen_7822f28095ddbad9" hs_bindgen_7822f28095ddbad9_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_touch_release@
hs_bindgen_7822f28095ddbad9 ::
     RIP.Ptr Wl_touch
  -> IO ()
hs_bindgen_7822f28095ddbad9 =
  RIP.fromFFIType hs_bindgen_7822f28095ddbad9_base

{-| __C declaration:__ @wl_touch_release@

    __defined at:__ @wayland-client-protocol.h 5699:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_release ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> IO ()
wl_touch_release = hs_bindgen_7822f28095ddbad9

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_output_add_listener@
foreign import ccall unsafe "hs_bindgen_81dd685afb18dfc5" hs_bindgen_81dd685afb18dfc5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_output_add_listener@
hs_bindgen_81dd685afb18dfc5 ::
     RIP.Ptr Wl_output
  -> PtrConst.PtrConst Wl_output_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_81dd685afb18dfc5 =
  RIP.fromFFIType hs_bindgen_81dd685afb18dfc5_base

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
wl_output_add_listener = hs_bindgen_81dd685afb18dfc5

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_output_set_user_data@
foreign import ccall unsafe "hs_bindgen_69f7c0977ae10e95" hs_bindgen_69f7c0977ae10e95_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_output_set_user_data@
hs_bindgen_69f7c0977ae10e95 ::
     RIP.Ptr Wl_output
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_69f7c0977ae10e95 =
  RIP.fromFFIType hs_bindgen_69f7c0977ae10e95_base

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
wl_output_set_user_data = hs_bindgen_69f7c0977ae10e95

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_output_get_user_data@
foreign import ccall unsafe "hs_bindgen_a758d0b45ec9d1f3" hs_bindgen_a758d0b45ec9d1f3_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_output_get_user_data@
hs_bindgen_a758d0b45ec9d1f3 ::
     RIP.Ptr Wl_output
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_a758d0b45ec9d1f3 =
  RIP.fromFFIType hs_bindgen_a758d0b45ec9d1f3_base

{-| __C declaration:__ @wl_output_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6066:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_get_user_data ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> IO (RIP.Ptr RIP.Void)
wl_output_get_user_data = hs_bindgen_a758d0b45ec9d1f3

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_output_get_version@
foreign import ccall unsafe "hs_bindgen_0b0e923db544cd47" hs_bindgen_0b0e923db544cd47_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_output_get_version@
hs_bindgen_0b0e923db544cd47 ::
     RIP.Ptr Wl_output
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_0b0e923db544cd47 =
  RIP.fromFFIType hs_bindgen_0b0e923db544cd47_base

{-| __C declaration:__ @wl_output_get_version@

    __defined at:__ @wayland-client-protocol.h 6072:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_get_version ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_output_get_version = hs_bindgen_0b0e923db544cd47

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_output_destroy@
foreign import ccall unsafe "hs_bindgen_8c73e6dd2e08e154" hs_bindgen_8c73e6dd2e08e154_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_output_destroy@
hs_bindgen_8c73e6dd2e08e154 ::
     RIP.Ptr Wl_output
  -> IO ()
hs_bindgen_8c73e6dd2e08e154 =
  RIP.fromFFIType hs_bindgen_8c73e6dd2e08e154_base

{-| __C declaration:__ @wl_output_destroy@

    __defined at:__ @wayland-client-protocol.h 6079:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_destroy ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> IO ()
wl_output_destroy = hs_bindgen_8c73e6dd2e08e154

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_output_release@
foreign import ccall unsafe "hs_bindgen_76431c04f7d5a982" hs_bindgen_76431c04f7d5a982_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_output_release@
hs_bindgen_76431c04f7d5a982 ::
     RIP.Ptr Wl_output
  -> IO ()
hs_bindgen_76431c04f7d5a982 =
  RIP.fromFFIType hs_bindgen_76431c04f7d5a982_base

{-| __C declaration:__ @wl_output_release@

    __defined at:__ @wayland-client-protocol.h 6091:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_release ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> IO ()
wl_output_release = hs_bindgen_76431c04f7d5a982

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_region_set_user_data@
foreign import ccall unsafe "hs_bindgen_dac23f3d96ec4690" hs_bindgen_dac23f3d96ec4690_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_region_set_user_data@
hs_bindgen_dac23f3d96ec4690 ::
     RIP.Ptr Wl_region
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_dac23f3d96ec4690 =
  RIP.fromFFIType hs_bindgen_dac23f3d96ec4690_base

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
wl_region_set_user_data = hs_bindgen_dac23f3d96ec4690

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_region_get_user_data@
foreign import ccall unsafe "hs_bindgen_476505c660c24026" hs_bindgen_476505c660c24026_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_region_get_user_data@
hs_bindgen_476505c660c24026 ::
     RIP.Ptr Wl_region
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_476505c660c24026 =
  RIP.fromFFIType hs_bindgen_476505c660c24026_base

{-| __C declaration:__ @wl_region_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6124:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_get_user_data ::
     RIP.Ptr Wl_region
     -- ^ __C declaration:__ @wl_region@
  -> IO (RIP.Ptr RIP.Void)
wl_region_get_user_data = hs_bindgen_476505c660c24026

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_region_get_version@
foreign import ccall unsafe "hs_bindgen_9ccb86aa16748c2e" hs_bindgen_9ccb86aa16748c2e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_region_get_version@
hs_bindgen_9ccb86aa16748c2e ::
     RIP.Ptr Wl_region
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_9ccb86aa16748c2e =
  RIP.fromFFIType hs_bindgen_9ccb86aa16748c2e_base

{-| __C declaration:__ @wl_region_get_version@

    __defined at:__ @wayland-client-protocol.h 6130:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_get_version ::
     RIP.Ptr Wl_region
     -- ^ __C declaration:__ @wl_region@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_region_get_version = hs_bindgen_9ccb86aa16748c2e

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_region_destroy@
foreign import ccall unsafe "hs_bindgen_c6746ea55ffea9f4" hs_bindgen_c6746ea55ffea9f4_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_region_destroy@
hs_bindgen_c6746ea55ffea9f4 ::
     RIP.Ptr Wl_region
  -> IO ()
hs_bindgen_c6746ea55ffea9f4 =
  RIP.fromFFIType hs_bindgen_c6746ea55ffea9f4_base

{-| __C declaration:__ @wl_region_destroy@

    __defined at:__ @wayland-client-protocol.h 6141:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_destroy ::
     RIP.Ptr Wl_region
     -- ^ __C declaration:__ @wl_region@
  -> IO ()
wl_region_destroy = hs_bindgen_c6746ea55ffea9f4

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_region_add@
foreign import ccall unsafe "hs_bindgen_7c55bed8ee63cdcf" hs_bindgen_7c55bed8ee63cdcf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_region_add@
hs_bindgen_7c55bed8ee63cdcf ::
     RIP.Ptr Wl_region
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_7c55bed8ee63cdcf =
  RIP.fromFFIType hs_bindgen_7c55bed8ee63cdcf_base

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
wl_region_add = hs_bindgen_7c55bed8ee63cdcf

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_region_subtract@
foreign import ccall unsafe "hs_bindgen_2e6bcc98186c4cf3" hs_bindgen_2e6bcc98186c4cf3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_region_subtract@
hs_bindgen_2e6bcc98186c4cf3 ::
     RIP.Ptr Wl_region
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_2e6bcc98186c4cf3 =
  RIP.fromFFIType hs_bindgen_2e6bcc98186c4cf3_base

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
wl_region_subtract = hs_bindgen_2e6bcc98186c4cf3

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subcompositor_set_user_data@
foreign import ccall unsafe "hs_bindgen_4f9f4b7917e2f26c" hs_bindgen_4f9f4b7917e2f26c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subcompositor_set_user_data@
hs_bindgen_4f9f4b7917e2f26c ::
     RIP.Ptr Wl_subcompositor
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_4f9f4b7917e2f26c =
  RIP.fromFFIType hs_bindgen_4f9f4b7917e2f26c_base

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
  hs_bindgen_4f9f4b7917e2f26c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subcompositor_get_user_data@
foreign import ccall unsafe "hs_bindgen_296f89acae74e603" hs_bindgen_296f89acae74e603_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subcompositor_get_user_data@
hs_bindgen_296f89acae74e603 ::
     RIP.Ptr Wl_subcompositor
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_296f89acae74e603 =
  RIP.fromFFIType hs_bindgen_296f89acae74e603_base

{-| __C declaration:__ @wl_subcompositor_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6207:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_user_data ::
     RIP.Ptr Wl_subcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> IO (RIP.Ptr RIP.Void)
wl_subcompositor_get_user_data =
  hs_bindgen_296f89acae74e603

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subcompositor_get_version@
foreign import ccall unsafe "hs_bindgen_4e7f72060d6ea7d5" hs_bindgen_4e7f72060d6ea7d5_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subcompositor_get_version@
hs_bindgen_4e7f72060d6ea7d5 ::
     RIP.Ptr Wl_subcompositor
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_4e7f72060d6ea7d5 =
  RIP.fromFFIType hs_bindgen_4e7f72060d6ea7d5_base

{-| __C declaration:__ @wl_subcompositor_get_version@

    __defined at:__ @wayland-client-protocol.h 6213:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_version ::
     RIP.Ptr Wl_subcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_subcompositor_get_version =
  hs_bindgen_4e7f72060d6ea7d5

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subcompositor_destroy@
foreign import ccall unsafe "hs_bindgen_12e6f79b6dcefe4b" hs_bindgen_12e6f79b6dcefe4b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subcompositor_destroy@
hs_bindgen_12e6f79b6dcefe4b ::
     RIP.Ptr Wl_subcompositor
  -> IO ()
hs_bindgen_12e6f79b6dcefe4b =
  RIP.fromFFIType hs_bindgen_12e6f79b6dcefe4b_base

{-| __C declaration:__ @wl_subcompositor_destroy@

    __defined at:__ @wayland-client-protocol.h 6226:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_destroy ::
     RIP.Ptr Wl_subcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> IO ()
wl_subcompositor_destroy =
  hs_bindgen_12e6f79b6dcefe4b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subcompositor_get_subsurface@
foreign import ccall unsafe "hs_bindgen_2f12d094530242fd" hs_bindgen_2f12d094530242fd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subcompositor_get_subsurface@
hs_bindgen_2f12d094530242fd ::
     RIP.Ptr Wl_subcompositor
  -> RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_surface
  -> IO (RIP.Ptr Wl_subsurface)
hs_bindgen_2f12d094530242fd =
  RIP.fromFFIType hs_bindgen_2f12d094530242fd_base

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
  hs_bindgen_2f12d094530242fd

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_set_user_data@
foreign import ccall unsafe "hs_bindgen_295ff36cd7eeb4ed" hs_bindgen_295ff36cd7eeb4ed_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_set_user_data@
hs_bindgen_295ff36cd7eeb4ed ::
     RIP.Ptr Wl_subsurface
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_295ff36cd7eeb4ed =
  RIP.fromFFIType hs_bindgen_295ff36cd7eeb4ed_base

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
  hs_bindgen_295ff36cd7eeb4ed

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_get_user_data@
foreign import ccall unsafe "hs_bindgen_9fdc564ae3b33fd5" hs_bindgen_9fdc564ae3b33fd5_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_get_user_data@
hs_bindgen_9fdc564ae3b33fd5 ::
     RIP.Ptr Wl_subsurface
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_9fdc564ae3b33fd5 =
  RIP.fromFFIType hs_bindgen_9fdc564ae3b33fd5_base

{-| __C declaration:__ @wl_subsurface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6318:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_get_user_data ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO (RIP.Ptr RIP.Void)
wl_subsurface_get_user_data =
  hs_bindgen_9fdc564ae3b33fd5

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_get_version@
foreign import ccall unsafe "hs_bindgen_d156b01262c95c67" hs_bindgen_d156b01262c95c67_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_get_version@
hs_bindgen_d156b01262c95c67 ::
     RIP.Ptr Wl_subsurface
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_d156b01262c95c67 =
  RIP.fromFFIType hs_bindgen_d156b01262c95c67_base

{-| __C declaration:__ @wl_subsurface_get_version@

    __defined at:__ @wayland-client-protocol.h 6324:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_get_version ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_subsurface_get_version =
  hs_bindgen_d156b01262c95c67

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_destroy@
foreign import ccall unsafe "hs_bindgen_a6b0494129d60543" hs_bindgen_a6b0494129d60543_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_destroy@
hs_bindgen_a6b0494129d60543 ::
     RIP.Ptr Wl_subsurface
  -> IO ()
hs_bindgen_a6b0494129d60543 =
  RIP.fromFFIType hs_bindgen_a6b0494129d60543_base

{-| __C declaration:__ @wl_subsurface_destroy@

    __defined at:__ @wayland-client-protocol.h 6338:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_destroy ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO ()
wl_subsurface_destroy = hs_bindgen_a6b0494129d60543

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_set_position@
foreign import ccall unsafe "hs_bindgen_af413b0b86fc4feb" hs_bindgen_af413b0b86fc4feb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_set_position@
hs_bindgen_af413b0b86fc4feb ::
     RIP.Ptr Wl_subsurface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_af413b0b86fc4feb =
  RIP.fromFFIType hs_bindgen_af413b0b86fc4feb_base

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
  hs_bindgen_af413b0b86fc4feb

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_place_above@
foreign import ccall unsafe "hs_bindgen_4050b6d06f2d8a07" hs_bindgen_4050b6d06f2d8a07_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_place_above@
hs_bindgen_4050b6d06f2d8a07 ::
     RIP.Ptr Wl_subsurface
  -> RIP.Ptr Wl_surface
  -> IO ()
hs_bindgen_4050b6d06f2d8a07 =
  RIP.fromFFIType hs_bindgen_4050b6d06f2d8a07_base

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
  hs_bindgen_4050b6d06f2d8a07

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_place_below@
foreign import ccall unsafe "hs_bindgen_98c3c00986eb6dff" hs_bindgen_98c3c00986eb6dff_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_place_below@
hs_bindgen_98c3c00986eb6dff ::
     RIP.Ptr Wl_subsurface
  -> RIP.Ptr Wl_surface
  -> IO ()
hs_bindgen_98c3c00986eb6dff =
  RIP.fromFFIType hs_bindgen_98c3c00986eb6dff_base

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
  hs_bindgen_98c3c00986eb6dff

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_set_sync@
foreign import ccall unsafe "hs_bindgen_50d131366bdb2f4c" hs_bindgen_50d131366bdb2f4c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_set_sync@
hs_bindgen_50d131366bdb2f4c ::
     RIP.Ptr Wl_subsurface
  -> IO ()
hs_bindgen_50d131366bdb2f4c =
  RIP.fromFFIType hs_bindgen_50d131366bdb2f4c_base

{-| __C declaration:__ @wl_subsurface_set_sync@

    __defined at:__ @wayland-client-protocol.h 6424:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_sync ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO ()
wl_subsurface_set_sync = hs_bindgen_50d131366bdb2f4c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_set_desync@
foreign import ccall unsafe "hs_bindgen_bc67a1c070cfdf3b" hs_bindgen_bc67a1c070cfdf3b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_subsurface_set_desync@
hs_bindgen_bc67a1c070cfdf3b ::
     RIP.Ptr Wl_subsurface
  -> IO ()
hs_bindgen_bc67a1c070cfdf3b =
  RIP.fromFFIType hs_bindgen_bc67a1c070cfdf3b_base

{-| __C declaration:__ @wl_subsurface_set_desync@

    __defined at:__ @wayland-client-protocol.h 6454:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_desync ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO ()
wl_subsurface_set_desync =
  hs_bindgen_bc67a1c070cfdf3b

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_fixes_set_user_data@
foreign import ccall unsafe "hs_bindgen_a6c4206fe6d7132c" hs_bindgen_a6c4206fe6d7132c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_fixes_set_user_data@
hs_bindgen_a6c4206fe6d7132c ::
     RIP.Ptr Wl_fixes
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_a6c4206fe6d7132c =
  RIP.fromFFIType hs_bindgen_a6c4206fe6d7132c_base

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
wl_fixes_set_user_data = hs_bindgen_a6c4206fe6d7132c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_fixes_get_user_data@
foreign import ccall unsafe "hs_bindgen_2d45389bbb88b596" hs_bindgen_2d45389bbb88b596_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_fixes_get_user_data@
hs_bindgen_2d45389bbb88b596 ::
     RIP.Ptr Wl_fixes
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_2d45389bbb88b596 =
  RIP.fromFFIType hs_bindgen_2d45389bbb88b596_base

{-| __C declaration:__ @wl_fixes_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6482:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_get_user_data ::
     RIP.Ptr Wl_fixes
     -- ^ __C declaration:__ @wl_fixes@
  -> IO (RIP.Ptr RIP.Void)
wl_fixes_get_user_data = hs_bindgen_2d45389bbb88b596

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_fixes_get_version@
foreign import ccall unsafe "hs_bindgen_cb871f896a9e951c" hs_bindgen_cb871f896a9e951c_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_fixes_get_version@
hs_bindgen_cb871f896a9e951c ::
     RIP.Ptr Wl_fixes
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_cb871f896a9e951c =
  RIP.fromFFIType hs_bindgen_cb871f896a9e951c_base

{-| __C declaration:__ @wl_fixes_get_version@

    __defined at:__ @wayland-client-protocol.h 6488:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_get_version ::
     RIP.Ptr Wl_fixes
     -- ^ __C declaration:__ @wl_fixes@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_fixes_get_version = hs_bindgen_cb871f896a9e951c

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_fixes_destroy@
foreign import ccall unsafe "hs_bindgen_9b011d24caada8c6" hs_bindgen_9b011d24caada8c6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_fixes_destroy@
hs_bindgen_9b011d24caada8c6 ::
     RIP.Ptr Wl_fixes
  -> IO ()
hs_bindgen_9b011d24caada8c6 =
  RIP.fromFFIType hs_bindgen_9b011d24caada8c6_base

{-| __C declaration:__ @wl_fixes_destroy@

    __defined at:__ @wayland-client-protocol.h 6497:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_destroy ::
     RIP.Ptr Wl_fixes
     -- ^ __C declaration:__ @wl_fixes@
  -> IO ()
wl_fixes_destroy = hs_bindgen_9b011d24caada8c6

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_fixes_destroy_registry@
foreign import ccall unsafe "hs_bindgen_3a87ec4417a1fb1a" hs_bindgen_3a87ec4417a1fb1a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_Unsafe_wl_fixes_destroy_registry@
hs_bindgen_3a87ec4417a1fb1a ::
     RIP.Ptr Wl_fixes
  -> RIP.Ptr Wl_registry
  -> IO ()
hs_bindgen_3a87ec4417a1fb1a =
  RIP.fromFFIType hs_bindgen_3a87ec4417a1fb1a_base

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
  hs_bindgen_3a87ec4417a1fb1a
