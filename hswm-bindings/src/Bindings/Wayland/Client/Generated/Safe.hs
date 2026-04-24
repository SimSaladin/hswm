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
  [ "#include <wayland-client-core.h>"
  , "#include <wayland-client-protocol.h>"
  , "void hs_bindgen_3c7bb572c9738528 ("
  , "  struct wl_event_queue *arg1"
  , ")"
  , "{"
  , "  (wl_event_queue_destroy)(arg1);"
  , "}"
  , "struct wl_proxy *hs_bindgen_947e15003f3dff9b ("
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
  , "void hs_bindgen_f3c9f0398f117735 ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  union wl_argument *arg3"
  , ")"
  , "{"
  , "  (wl_proxy_marshal_array)(arg1, arg2, arg3);"
  , "}"
  , "struct wl_proxy *hs_bindgen_3fba5bc1e147a38c ("
  , "  struct wl_proxy *arg1,"
  , "  struct wl_interface const *arg2"
  , ")"
  , "{"
  , "  return (wl_proxy_create)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_dbcd6f30ea58b40c ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_create_wrapper)(arg1);"
  , "}"
  , "void hs_bindgen_5bcc8bee89b26e03 ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  (wl_proxy_wrapper_destroy)(arg1);"
  , "}"
  , "struct wl_proxy *hs_bindgen_4f1c8f4a68ea4254 ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  union wl_argument *arg3,"
  , "  struct wl_interface const *arg4"
  , ")"
  , "{"
  , "  return (wl_proxy_marshal_array_constructor)(arg1, arg2, arg3, arg4);"
  , "}"
  , "struct wl_proxy *hs_bindgen_304f88178494a08f ("
  , "  struct wl_proxy *arg1,"
  , "  uint32_t arg2,"
  , "  union wl_argument *arg3,"
  , "  struct wl_interface const *arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  return (wl_proxy_marshal_array_constructor_versioned)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_ce5e3926cfe58fe4 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  (wl_proxy_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_d84424767c487f97 ("
  , "  struct wl_proxy *arg1,"
  , "  void (**arg2) (void),"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_proxy_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void const *hs_bindgen_b3c3246cd305657c ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_listener)(arg1);"
  , "}"
  , "signed int hs_bindgen_a01bc9baa0e54e27 ("
  , "  struct wl_proxy *arg1,"
  , "  wl_dispatcher_func_t arg2,"
  , "  void const *arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (wl_proxy_add_dispatcher)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_67a306da31f12964 ("
  , "  struct wl_proxy *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_proxy_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_df97ea19381dccd3 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_bfcc0a98a374dd59 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_version)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_3701976d337a6b34 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_id)(arg1);"
  , "}"
  , "void hs_bindgen_ef6b202bfddcad25 ("
  , "  struct wl_proxy *arg1,"
  , "  char const *const *arg2"
  , ")"
  , "{"
  , "  (wl_proxy_set_tag)(arg1, arg2);"
  , "}"
  , "char const *const *hs_bindgen_7ed78f2b6e0295c5 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_tag)(arg1);"
  , "}"
  , "char const *hs_bindgen_9bb1c2c3f8fc2343 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_class)(arg1);"
  , "}"
  , "struct wl_interface const *hs_bindgen_9a5b4de347d591f4 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_interface)(arg1);"
  , "}"
  , "struct wl_display *hs_bindgen_e0a82752b1b5f1c3 ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_display)(arg1);"
  , "}"
  , "void hs_bindgen_78f4d34a0e2352c7 ("
  , "  struct wl_proxy *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  (wl_proxy_set_queue)(arg1, arg2);"
  , "}"
  , "struct wl_event_queue *hs_bindgen_41f02dc43fdf6011 ("
  , "  struct wl_proxy const *arg1"
  , ")"
  , "{"
  , "  return (wl_proxy_get_queue)(arg1);"
  , "}"
  , "char const *hs_bindgen_0905dcb3b11b1cbd ("
  , "  struct wl_event_queue const *arg1"
  , ")"
  , "{"
  , "  return (wl_event_queue_get_name)(arg1);"
  , "}"
  , "struct wl_display *hs_bindgen_3bbbdb2c96e08e8d ("
  , "  char const *arg1"
  , ")"
  , "{"
  , "  return (wl_display_connect)(arg1);"
  , "}"
  , "struct wl_display *hs_bindgen_3b51ea3473d00146 ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return (wl_display_connect_to_fd)(arg1);"
  , "}"
  , "void hs_bindgen_152ae95b4600ff5e ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  (wl_display_disconnect)(arg1);"
  , "}"
  , "signed int hs_bindgen_5bae4ad19779f87e ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_fd)(arg1);"
  , "}"
  , "signed int hs_bindgen_cbe753ec9bdd44d1 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_dispatch)(arg1);"
  , "}"
  , "signed int hs_bindgen_2c3d038bcac545a8 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_queue)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_5914b7ce9e7beffd ("
  , "  struct wl_display *arg1,"
  , "  struct timespec const *arg2"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_timeout)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_6332fa3c31b0ebac ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2,"
  , "  struct timespec const *arg3"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_queue_timeout)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_57821371522593d2 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_queue_pending)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_22411b5d8bbdaee0 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_dispatch_pending)(arg1);"
  , "}"
  , "signed int hs_bindgen_0a9cad3177f16e15 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_error)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_101c4e5ae7dc7aec ("
  , "  struct wl_display *arg1,"
  , "  struct wl_interface const **arg2,"
  , "  uint32_t *arg3"
  , ")"
  , "{"
  , "  return (wl_display_get_protocol_error)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_b032ae8060087c07 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_flush)(arg1);"
  , "}"
  , "signed int hs_bindgen_c5ce2d24af6cd240 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_roundtrip_queue)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_be5919b56dfc1b74 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_roundtrip)(arg1);"
  , "}"
  , "struct wl_event_queue *hs_bindgen_f2ec36fa20f6c3f9 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_create_queue)(arg1);"
  , "}"
  , "struct wl_event_queue *hs_bindgen_71151f4bcefd4106 ("
  , "  struct wl_display *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return (wl_display_create_queue_with_name)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_426fe23dcd82efb7 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return (wl_display_prepare_read_queue)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_2844e3e03b0b9c45 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_prepare_read)(arg1);"
  , "}"
  , "void hs_bindgen_1ffa88b7c2b6632c ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  (wl_display_cancel_read)(arg1);"
  , "}"
  , "signed int hs_bindgen_a4b4a1bdee0763ed ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_read_events)(arg1);"
  , "}"
  , "void hs_bindgen_06bf5de436a6dada ("
  , "  struct wl_display *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  (wl_display_set_max_buffer_size)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_3f7a4abb192eb298 ("
  , "  struct wl_display *arg1,"
  , "  struct wl_display_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_display_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_41c437e82613ef3e ("
  , "  struct wl_display *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_display_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_51c4c5da64075593 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_e7af0344dc6a74f5 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_version)(arg1);"
  , "}"
  , "struct wl_callback *hs_bindgen_115a707b5dfe411c ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_sync)(arg1);"
  , "}"
  , "struct wl_registry *hs_bindgen_74b57c961c675015 ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return (wl_display_get_registry)(arg1);"
  , "}"
  , "signed int hs_bindgen_5d844f76f29543dc ("
  , "  struct wl_registry *arg1,"
  , "  struct wl_registry_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_registry_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_50eb72f7e8f25245 ("
  , "  struct wl_registry *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_registry_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_7c23e04989be19bf ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  return (wl_registry_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_ca9d9b0cb4fa1262 ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  return (wl_registry_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_31a7af548370136b ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  (wl_registry_destroy)(arg1);"
  , "}"
  , "void *hs_bindgen_09394ba4e23986ec ("
  , "  struct wl_registry *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_interface const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return (wl_registry_bind)(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_cf2d81a9ceec2120 ("
  , "  struct wl_callback *arg1,"
  , "  struct wl_callback_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_callback_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_6f3e3961ed55bcaa ("
  , "  struct wl_callback *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_callback_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_b55277f3407435bb ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  return (wl_callback_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_65ef0b9019f6f659 ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  return (wl_callback_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_439001916611a1f6 ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  (wl_callback_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_f056a5cda8e2f003 ("
  , "  struct wl_compositor *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_compositor_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_db735ca6a7f6d45e ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_9773561407b1d71c ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_660d5ce26a7d0b6a ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  (wl_compositor_destroy)(arg1);"
  , "}"
  , "struct wl_surface *hs_bindgen_06462e38914e2f93 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_create_surface)(arg1);"
  , "}"
  , "struct wl_region *hs_bindgen_673945349eb3a8d6 ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return (wl_compositor_create_region)(arg1);"
  , "}"
  , "void hs_bindgen_ec86ea9bb06ee8a0 ("
  , "  struct wl_shm_pool *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shm_pool_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_aa44e96292477773 ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_pool_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_2b7aa272fd1a9000 ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_pool_get_version)(arg1);"
  , "}"
  , "struct wl_buffer *hs_bindgen_c9d996d5d59ce2c0 ("
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
  , "void hs_bindgen_753817445dd26bba ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  (wl_shm_pool_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_371afa88e2234833 ("
  , "  struct wl_shm_pool *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (wl_shm_pool_resize)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_2e5f6d3587b615d2 ("
  , "  struct wl_shm *arg1,"
  , "  struct wl_shm_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_shm_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_bf55eb0b8cfc7b40 ("
  , "  struct wl_shm *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shm_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_7bcaf18cdc10fc1c ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_ae5791f3423269c4 ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return (wl_shm_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_807c1641277cbc1b ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  (wl_shm_destroy)(arg1);"
  , "}"
  , "struct wl_shm_pool *hs_bindgen_c11571793ff56318 ("
  , "  struct wl_shm *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return (wl_shm_create_pool)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_e445a87906d5346b ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  (wl_shm_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_830dcc56a541fc2c ("
  , "  struct wl_buffer *arg1,"
  , "  struct wl_buffer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_buffer_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_e84b978aa43f62a6 ("
  , "  struct wl_buffer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_buffer_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_06059cd4ce6bf3ab ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  return (wl_buffer_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_8e64c1a5d8acfa43 ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  return (wl_buffer_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_04e3a8c6cc6eb62a ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  (wl_buffer_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_92cf7afddbcf0f53 ("
  , "  struct wl_data_offer *arg1,"
  , "  struct wl_data_offer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_data_offer_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_c1da7dd49677e64d ("
  , "  struct wl_data_offer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_offer_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_4cf38c98e9176fb4 ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return (wl_data_offer_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_ec8bc3678eb0a1a5 ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return (wl_data_offer_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_e7b71a405478e7f1 ("
  , "  struct wl_data_offer *arg1,"
  , "  uint32_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  (wl_data_offer_accept)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_d4c25c3e36bfb92e ("
  , "  struct wl_data_offer *arg1,"
  , "  char const *arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (wl_data_offer_receive)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_205ad9d7a562ea45 ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  (wl_data_offer_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_2e58d7b061f6342f ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  (wl_data_offer_finish)(arg1);"
  , "}"
  , "void hs_bindgen_70759ceaa73c63ff ("
  , "  struct wl_data_offer *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (wl_data_offer_set_actions)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_01cb1a5b39336900 ("
  , "  struct wl_data_source *arg1,"
  , "  struct wl_data_source_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_data_source_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_06214ac9b00d8b0d ("
  , "  struct wl_data_source *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_source_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_c0aca14deeb330e9 ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  return (wl_data_source_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_520eac81f9d46f9d ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  return (wl_data_source_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_7d687807748fe27e ("
  , "  struct wl_data_source *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (wl_data_source_offer)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_a9e2e1f44a2db475 ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  (wl_data_source_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_6837dec7b275f201 ("
  , "  struct wl_data_source *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (wl_data_source_set_actions)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_31a590ba05118335 ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_device_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_data_device_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_328de1d8ca868c03 ("
  , "  struct wl_data_device *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_device_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_a75a5a5405b66afd ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_02718593ddf3ccee ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_0a6352987598ec66 ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  (wl_data_device_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_3f57c768b9bd1cde ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_source *arg2,"
  , "  struct wl_surface *arg3,"
  , "  struct wl_surface *arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  (wl_data_device_start_drag)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_b1df96900a621bf6 ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_source *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (wl_data_device_set_selection)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_73ee32ccdcfd6b12 ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  (wl_data_device_release)(arg1);"
  , "}"
  , "void hs_bindgen_01dab6012bada112 ("
  , "  struct wl_data_device_manager *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_data_device_manager_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_aefba9b75e5f0a45 ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_c22dd5808fce7f68 ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_a55d578c43136dd1 ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  (wl_data_device_manager_destroy)(arg1);"
  , "}"
  , "struct wl_data_source *hs_bindgen_32b134d1e8718a80 ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_create_data_source)(arg1);"
  , "}"
  , "struct wl_data_device *hs_bindgen_7615860cbeef006a ("
  , "  struct wl_data_device_manager *arg1,"
  , "  struct wl_seat *arg2"
  , ")"
  , "{"
  , "  return (wl_data_device_manager_get_data_device)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_fde0d30e84292cca ("
  , "  struct wl_shell *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shell_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_c3312dab353c6144 ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_cd55e4cbdd764627 ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_48e190793403ea32 ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  (wl_shell_destroy)(arg1);"
  , "}"
  , "struct wl_shell_surface *hs_bindgen_8f6c9b886ae18b1b ("
  , "  struct wl_shell *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (wl_shell_get_shell_surface)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_6e4cea4b57d5ef07 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_shell_surface_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_shell_surface_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_a744df44b56d5344 ("
  , "  struct wl_shell_surface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_96e562aead0b5dcd ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_surface_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_4773b9ede4fe6f3d ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_shell_surface_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_ad82d81c7d81b4cb ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  (wl_shell_surface_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_ce39fc8627bb0374 ("
  , "  struct wl_shell_surface *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_pong)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_bbb1a3ddef79d6b4 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (wl_shell_surface_move)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_99160dd35b7970d5 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  (wl_shell_surface_resize)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_5dfc8d7b10149003 ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_toplevel)(arg1);"
  , "}"
  , "void hs_bindgen_ef8c974b79711149 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_surface *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_transient)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_227d0cfe84e7aa00 ("
  , "  struct wl_shell_surface *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3,"
  , "  struct wl_output *arg4"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_fullscreen)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_7e134bc698ae94b2 ("
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
  , "void hs_bindgen_ab8f701829cb19c0 ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_output *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_maximized)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_2e395cb2c1016cac ("
  , "  struct wl_shell_surface *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_title)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_13a02b017187de66 ("
  , "  struct wl_shell_surface *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (wl_shell_surface_set_class)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c895fd9055c307b8 ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_surface_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_surface_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_3936b64fd76ff958 ("
  , "  struct wl_surface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_9d26229495b0b950 ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_surface_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_1959b276d85514a1 ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_surface_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_cf64df6b46cbf0f3 ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  (wl_surface_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_8d56a9cbd337e025 ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_buffer *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4"
  , ")"
  , "{"
  , "  (wl_surface_attach)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_94f85f4dd291199f ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_surface_damage)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "struct wl_callback *hs_bindgen_9d607bd7dc3df487 ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return (wl_surface_frame)(arg1);"
  , "}"
  , "void hs_bindgen_7b42843167a9f969 ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_region *arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_opaque_region)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_98dad4bdb6e3fe91 ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_region *arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_input_region)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_165e76f923bc5268 ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  (wl_surface_commit)(arg1);"
  , "}"
  , "void hs_bindgen_90d4b80a6e0d8a8e ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_buffer_transform)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_e0db11ff6db1719f ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (wl_surface_set_buffer_scale)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_dc0285dd9796a1a4 ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_surface_damage_buffer)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_bf3a36b8d9e3f208 ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (wl_surface_offset)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_45c539fbcd74c0be ("
  , "  struct wl_seat *arg1,"
  , "  struct wl_seat_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_seat_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_a71198b5a9a41e60 ("
  , "  struct wl_seat *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_seat_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_7d01924e8259862f ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_c8567ec4dcfaa98b ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_a516ae81e192cb8b ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  (wl_seat_destroy)(arg1);"
  , "}"
  , "struct wl_pointer *hs_bindgen_835145ef74872cec ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_pointer)(arg1);"
  , "}"
  , "struct wl_keyboard *hs_bindgen_28c834fc368033f4 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_keyboard)(arg1);"
  , "}"
  , "struct wl_touch *hs_bindgen_95f0bafa191ef19e ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return (wl_seat_get_touch)(arg1);"
  , "}"
  , "void hs_bindgen_30156de81ed42fd0 ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  (wl_seat_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_27c5d1bcac16cbe8 ("
  , "  struct wl_pointer *arg1,"
  , "  struct wl_pointer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_pointer_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_be60b9805399b9f5 ("
  , "  struct wl_pointer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_pointer_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_101e597025255d92 ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return (wl_pointer_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_35ae89b84a420880 ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return (wl_pointer_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_9bfd8c27acfb1f04 ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  (wl_pointer_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_266266a9e16876d1 ("
  , "  struct wl_pointer *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_surface *arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_pointer_set_cursor)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_b986ff77d2ba320f ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  (wl_pointer_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_cfef5fb6570ef667 ("
  , "  struct wl_keyboard *arg1,"
  , "  struct wl_keyboard_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_keyboard_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_67735a481956ae4f ("
  , "  struct wl_keyboard *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_keyboard_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_dff44b8d3337f026 ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return (wl_keyboard_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_f85ba1e4935c0a2d ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return (wl_keyboard_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_4fed16fcba3fdd61 ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  (wl_keyboard_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_d3c7e2d4f955cbad ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  (wl_keyboard_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_7a19ac2bfb9ec80b ("
  , "  struct wl_touch *arg1,"
  , "  struct wl_touch_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_touch_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_32b77d7dfd4d549b ("
  , "  struct wl_touch *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_touch_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_862b694e9a2c4879 ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return (wl_touch_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_21c40fba3499b0fc ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return (wl_touch_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_c6821c316356b5ec ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  (wl_touch_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_4ef4852ccfb18485 ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  (wl_touch_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_8a7aa13ea43d96a8 ("
  , "  struct wl_output *arg1,"
  , "  struct wl_output_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wl_output_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_de178bcc6e2652d9 ("
  , "  struct wl_output *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_output_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_9c94962093ed77b5 ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return (wl_output_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_1f90c2cb9b02bf82 ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return (wl_output_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_fe7e6e34b3432edd ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  (wl_output_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_d7d7b32f80272391 ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  (wl_output_release)(arg1);"
  , "}"
  , "void hs_bindgen_f895562b9f5af021 ("
  , "  struct wl_region *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_region_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_752f2874d1327be2 ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  return (wl_region_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_8c7175f2a966ca3c ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  return (wl_region_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_c73110e755195466 ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  (wl_region_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_d5f442993582aa68 ("
  , "  struct wl_region *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_region_add)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_afc4395e5115621b ("
  , "  struct wl_region *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (wl_region_subtract)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_373bf0771aa4ae1a ("
  , "  struct wl_subcompositor *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_subcompositor_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_8e614bdc6f1bcfe3 ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  return (wl_subcompositor_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_302de69bc97141cf ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  return (wl_subcompositor_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_94df15227120bccf ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  (wl_subcompositor_destroy)(arg1);"
  , "}"
  , "struct wl_subsurface *hs_bindgen_e824da3ffd609848 ("
  , "  struct wl_subcompositor *arg1,"
  , "  struct wl_surface *arg2,"
  , "  struct wl_surface *arg3"
  , ")"
  , "{"
  , "  return (wl_subcompositor_get_subsurface)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_f4d820543fccf5ee ("
  , "  struct wl_subsurface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_subsurface_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_a940d815e7c319cc ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return (wl_subsurface_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_f960cabde48332cd ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return (wl_subsurface_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_f4d019fd43b5c322 ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  (wl_subsurface_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_9e2d5b9e7d3e6fd9 ("
  , "  struct wl_subsurface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (wl_subsurface_set_position)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_7ca593576526e1ea ("
  , "  struct wl_subsurface *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  (wl_subsurface_place_above)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_5aa0b922d2108b9c ("
  , "  struct wl_subsurface *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  (wl_subsurface_place_below)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_b50a1cfd29df4785 ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  (wl_subsurface_set_sync)(arg1);"
  , "}"
  , "void hs_bindgen_26cc4b39caf76692 ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  (wl_subsurface_set_desync)(arg1);"
  , "}"
  , "void hs_bindgen_ba5d7d7b9f317540 ("
  , "  struct wl_fixes *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wl_fixes_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_d23ce2c867804f66 ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  return (wl_fixes_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_7a684fc4d5086015 ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  return (wl_fixes_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_112e1a25004793b5 ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  (wl_fixes_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_30bdd2202a993527 ("
  , "  struct wl_fixes *arg1,"
  , "  struct wl_registry *arg2"
  , ")"
  , "{"
  , "  (wl_fixes_destroy_registry)(arg1, arg2);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_event_queue_destroy@
foreign import ccall safe "hs_bindgen_3c7bb572c9738528" hs_bindgen_3c7bb572c9738528_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_event_queue_destroy@
hs_bindgen_3c7bb572c9738528 ::
     RIP.Ptr Wl_event_queue
  -> IO ()
hs_bindgen_3c7bb572c9738528 =
  RIP.fromFFIType hs_bindgen_3c7bb572c9738528_base

{-| __C declaration:__ @wl_event_queue_destroy@

    __defined at:__ @wayland-client-core.h 130:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_event_queue_destroy ::
     RIP.Ptr Wl_event_queue
     -- ^ __C declaration:__ @queue@
  -> IO ()
wl_event_queue_destroy = hs_bindgen_3c7bb572c9738528

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_marshal_array_flags@
foreign import ccall safe "hs_bindgen_947e15003f3dff9b" hs_bindgen_947e15003f3dff9b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_marshal_array_flags@
hs_bindgen_947e15003f3dff9b ::
     RIP.Ptr Wl_proxy
  -> HsBindgen.Runtime.LibC.Word32
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument
  -> IO (RIP.Ptr Wl_proxy)
hs_bindgen_947e15003f3dff9b =
  RIP.fromFFIType hs_bindgen_947e15003f3dff9b_base

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
  hs_bindgen_947e15003f3dff9b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_marshal_array@
foreign import ccall safe "hs_bindgen_f3c9f0398f117735" hs_bindgen_f3c9f0398f117735_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_marshal_array@
hs_bindgen_f3c9f0398f117735 ::
     RIP.Ptr Wl_proxy
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument
  -> IO ()
hs_bindgen_f3c9f0398f117735 =
  RIP.fromFFIType hs_bindgen_f3c9f0398f117735_base

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
wl_proxy_marshal_array = hs_bindgen_f3c9f0398f117735

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_create@
foreign import ccall safe "hs_bindgen_3fba5bc1e147a38c" hs_bindgen_3fba5bc1e147a38c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_create@
hs_bindgen_3fba5bc1e147a38c ::
     RIP.Ptr Wl_proxy
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
  -> IO (RIP.Ptr Wl_proxy)
hs_bindgen_3fba5bc1e147a38c =
  RIP.fromFFIType hs_bindgen_3fba5bc1e147a38c_base

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
wl_proxy_create = hs_bindgen_3fba5bc1e147a38c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_create_wrapper@
foreign import ccall safe "hs_bindgen_dbcd6f30ea58b40c" hs_bindgen_dbcd6f30ea58b40c_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_create_wrapper@
hs_bindgen_dbcd6f30ea58b40c ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_dbcd6f30ea58b40c =
  RIP.fromFFIType hs_bindgen_dbcd6f30ea58b40c_base

{-| __C declaration:__ @wl_proxy_create_wrapper@

    __defined at:__ @wayland-client-core.h 157:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_create_wrapper ::
     RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr RIP.Void)
wl_proxy_create_wrapper = hs_bindgen_dbcd6f30ea58b40c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_wrapper_destroy@
foreign import ccall safe "hs_bindgen_5bcc8bee89b26e03" hs_bindgen_5bcc8bee89b26e03_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_wrapper_destroy@
hs_bindgen_5bcc8bee89b26e03 ::
     RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_5bcc8bee89b26e03 =
  RIP.fromFFIType hs_bindgen_5bcc8bee89b26e03_base

{-| __C declaration:__ @wl_proxy_wrapper_destroy@

    __defined at:__ @wayland-client-core.h 160:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_wrapper_destroy ::
     RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @proxy_wrapper@
  -> IO ()
wl_proxy_wrapper_destroy =
  hs_bindgen_5bcc8bee89b26e03

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_marshal_array_constructor@
foreign import ccall safe "hs_bindgen_4f1c8f4a68ea4254" hs_bindgen_4f1c8f4a68ea4254_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_marshal_array_constructor@
hs_bindgen_4f1c8f4a68ea4254 ::
     RIP.Ptr Wl_proxy
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
  -> IO (RIP.Ptr Wl_proxy)
hs_bindgen_4f1c8f4a68ea4254 =
  RIP.fromFFIType hs_bindgen_4f1c8f4a68ea4254_base

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
  hs_bindgen_4f1c8f4a68ea4254

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_marshal_array_constructor_versioned@
foreign import ccall safe "hs_bindgen_304f88178494a08f" hs_bindgen_304f88178494a08f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_marshal_array_constructor_versioned@
hs_bindgen_304f88178494a08f ::
     RIP.Ptr Wl_proxy
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_argument
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr Wl_proxy)
hs_bindgen_304f88178494a08f =
  RIP.fromFFIType hs_bindgen_304f88178494a08f_base

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
  hs_bindgen_304f88178494a08f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_destroy@
foreign import ccall safe "hs_bindgen_ce5e3926cfe58fe4" hs_bindgen_ce5e3926cfe58fe4_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_destroy@
hs_bindgen_ce5e3926cfe58fe4 ::
     RIP.Ptr Wl_proxy
  -> IO ()
hs_bindgen_ce5e3926cfe58fe4 =
  RIP.fromFFIType hs_bindgen_ce5e3926cfe58fe4_base

{-| __C declaration:__ @wl_proxy_destroy@

    __defined at:__ @wayland-client-core.h 188:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_destroy ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO ()
wl_proxy_destroy = hs_bindgen_ce5e3926cfe58fe4

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_add_listener@
foreign import ccall safe "hs_bindgen_d84424767c487f97" hs_bindgen_d84424767c487f97_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_add_listener@
hs_bindgen_d84424767c487f97 ::
     RIP.Ptr Wl_proxy
  -> RIP.Ptr (RIP.FunPtr (IO ()))
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_d84424767c487f97 =
  RIP.fromFFIType hs_bindgen_d84424767c487f97_base

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
wl_proxy_add_listener = hs_bindgen_d84424767c487f97

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_listener@
foreign import ccall safe "hs_bindgen_b3c3246cd305657c" hs_bindgen_b3c3246cd305657c_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_listener@
hs_bindgen_b3c3246cd305657c ::
     RIP.Ptr Wl_proxy
  -> IO (PtrConst.PtrConst RIP.Void)
hs_bindgen_b3c3246cd305657c =
  RIP.fromFFIType hs_bindgen_b3c3246cd305657c_base

{-| __C declaration:__ @wl_proxy_get_listener@

    __defined at:__ @wayland-client-core.h 195:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_listener ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst RIP.Void)
wl_proxy_get_listener = hs_bindgen_b3c3246cd305657c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_add_dispatcher@
foreign import ccall safe "hs_bindgen_a01bc9baa0e54e27" hs_bindgen_a01bc9baa0e54e27_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_add_dispatcher@
hs_bindgen_a01bc9baa0e54e27 ::
     RIP.Ptr Wl_proxy
  -> Bindings.Wayland.Util.Generated.Wl_dispatcher_func_t
  -> PtrConst.PtrConst RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_a01bc9baa0e54e27 =
  RIP.fromFFIType hs_bindgen_a01bc9baa0e54e27_base

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
wl_proxy_add_dispatcher = hs_bindgen_a01bc9baa0e54e27

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_set_user_data@
foreign import ccall safe "hs_bindgen_67a306da31f12964" hs_bindgen_67a306da31f12964_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_set_user_data@
hs_bindgen_67a306da31f12964 ::
     RIP.Ptr Wl_proxy
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_67a306da31f12964 =
  RIP.fromFFIType hs_bindgen_67a306da31f12964_base

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
wl_proxy_set_user_data = hs_bindgen_67a306da31f12964

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_user_data@
foreign import ccall safe "hs_bindgen_df97ea19381dccd3" hs_bindgen_df97ea19381dccd3_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_user_data@
hs_bindgen_df97ea19381dccd3 ::
     RIP.Ptr Wl_proxy
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_df97ea19381dccd3 =
  RIP.fromFFIType hs_bindgen_df97ea19381dccd3_base

{-| __C declaration:__ @wl_proxy_get_user_data@

    __defined at:__ @wayland-client-core.h 206:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_user_data ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr RIP.Void)
wl_proxy_get_user_data = hs_bindgen_df97ea19381dccd3

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_version@
foreign import ccall safe "hs_bindgen_bfcc0a98a374dd59" hs_bindgen_bfcc0a98a374dd59_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_version@
hs_bindgen_bfcc0a98a374dd59 ::
     RIP.Ptr Wl_proxy
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_bfcc0a98a374dd59 =
  RIP.fromFFIType hs_bindgen_bfcc0a98a374dd59_base

{-| __C declaration:__ @wl_proxy_get_version@

    __defined at:__ @wayland-client-core.h 209:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_version ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_proxy_get_version = hs_bindgen_bfcc0a98a374dd59

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_id@
foreign import ccall safe "hs_bindgen_3701976d337a6b34" hs_bindgen_3701976d337a6b34_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_id@
hs_bindgen_3701976d337a6b34 ::
     RIP.Ptr Wl_proxy
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_3701976d337a6b34 =
  RIP.fromFFIType hs_bindgen_3701976d337a6b34_base

{-| __C declaration:__ @wl_proxy_get_id@

    __defined at:__ @wayland-client-core.h 212:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_id ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_proxy_get_id = hs_bindgen_3701976d337a6b34

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_set_tag@
foreign import ccall safe "hs_bindgen_ef6b202bfddcad25" hs_bindgen_ef6b202bfddcad25_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_set_tag@
hs_bindgen_ef6b202bfddcad25 ::
     RIP.Ptr Wl_proxy
  -> PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar)
  -> IO ()
hs_bindgen_ef6b202bfddcad25 =
  RIP.fromFFIType hs_bindgen_ef6b202bfddcad25_base

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
wl_proxy_set_tag = hs_bindgen_ef6b202bfddcad25

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_tag@
foreign import ccall safe "hs_bindgen_7ed78f2b6e0295c5" hs_bindgen_7ed78f2b6e0295c5_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_tag@
hs_bindgen_7ed78f2b6e0295c5 ::
     RIP.Ptr Wl_proxy
  -> IO (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar))
hs_bindgen_7ed78f2b6e0295c5 =
  RIP.fromFFIType hs_bindgen_7ed78f2b6e0295c5_base

{-| __C declaration:__ @wl_proxy_get_tag@

    __defined at:__ @wayland-client-core.h 219:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_tag ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar))
wl_proxy_get_tag = hs_bindgen_7ed78f2b6e0295c5

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_class@
foreign import ccall safe "hs_bindgen_9bb1c2c3f8fc2343" hs_bindgen_9bb1c2c3f8fc2343_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_class@
hs_bindgen_9bb1c2c3f8fc2343 ::
     RIP.Ptr Wl_proxy
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_9bb1c2c3f8fc2343 =
  RIP.fromFFIType hs_bindgen_9bb1c2c3f8fc2343_base

{-| __C declaration:__ @wl_proxy_get_class@

    __defined at:__ @wayland-client-core.h 222:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_class ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst RIP.CChar)
wl_proxy_get_class = hs_bindgen_9bb1c2c3f8fc2343

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_interface@
foreign import ccall safe "hs_bindgen_9a5b4de347d591f4" hs_bindgen_9a5b4de347d591f4_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_interface@
hs_bindgen_9a5b4de347d591f4 ::
     RIP.Ptr Wl_proxy
  -> IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_9a5b4de347d591f4 =
  RIP.fromFFIType hs_bindgen_9a5b4de347d591f4_base

{-| __C declaration:__ @wl_proxy_get_interface@

    __defined at:__ @wayland-client-core.h 225:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_interface ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
wl_proxy_get_interface = hs_bindgen_9a5b4de347d591f4

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_display@
foreign import ccall safe "hs_bindgen_e0a82752b1b5f1c3" hs_bindgen_e0a82752b1b5f1c3_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_display@
hs_bindgen_e0a82752b1b5f1c3 ::
     RIP.Ptr Wl_proxy
  -> IO (RIP.Ptr Wl_display)
hs_bindgen_e0a82752b1b5f1c3 =
  RIP.fromFFIType hs_bindgen_e0a82752b1b5f1c3_base

{-| __C declaration:__ @wl_proxy_get_display@

    __defined at:__ @wayland-client-core.h 228:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_display ::
     RIP.Ptr Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr Wl_display)
wl_proxy_get_display = hs_bindgen_e0a82752b1b5f1c3

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_set_queue@
foreign import ccall safe "hs_bindgen_78f4d34a0e2352c7" hs_bindgen_78f4d34a0e2352c7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_set_queue@
hs_bindgen_78f4d34a0e2352c7 ::
     RIP.Ptr Wl_proxy
  -> RIP.Ptr Wl_event_queue
  -> IO ()
hs_bindgen_78f4d34a0e2352c7 =
  RIP.fromFFIType hs_bindgen_78f4d34a0e2352c7_base

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
wl_proxy_set_queue = hs_bindgen_78f4d34a0e2352c7

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_queue@
foreign import ccall safe "hs_bindgen_41f02dc43fdf6011" hs_bindgen_41f02dc43fdf6011_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_proxy_get_queue@
hs_bindgen_41f02dc43fdf6011 ::
     PtrConst.PtrConst Wl_proxy
  -> IO (RIP.Ptr Wl_event_queue)
hs_bindgen_41f02dc43fdf6011 =
  RIP.fromFFIType hs_bindgen_41f02dc43fdf6011_base

{-| __C declaration:__ @wl_proxy_get_queue@

    __defined at:__ @wayland-client-core.h 234:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_proxy_get_queue ::
     PtrConst.PtrConst Wl_proxy
     -- ^ __C declaration:__ @proxy@
  -> IO (RIP.Ptr Wl_event_queue)
wl_proxy_get_queue = hs_bindgen_41f02dc43fdf6011

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_event_queue_get_name@
foreign import ccall safe "hs_bindgen_0905dcb3b11b1cbd" hs_bindgen_0905dcb3b11b1cbd_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_event_queue_get_name@
hs_bindgen_0905dcb3b11b1cbd ::
     PtrConst.PtrConst Wl_event_queue
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_0905dcb3b11b1cbd =
  RIP.fromFFIType hs_bindgen_0905dcb3b11b1cbd_base

{-| __C declaration:__ @wl_event_queue_get_name@

    __defined at:__ @wayland-client-core.h 237:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_event_queue_get_name ::
     PtrConst.PtrConst Wl_event_queue
     -- ^ __C declaration:__ @queue@
  -> IO (PtrConst.PtrConst RIP.CChar)
wl_event_queue_get_name = hs_bindgen_0905dcb3b11b1cbd

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_connect@
foreign import ccall safe "hs_bindgen_3bbbdb2c96e08e8d" hs_bindgen_3bbbdb2c96e08e8d_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_connect@
hs_bindgen_3bbbdb2c96e08e8d ::
     PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Wl_display)
hs_bindgen_3bbbdb2c96e08e8d =
  RIP.fromFFIType hs_bindgen_3bbbdb2c96e08e8d_base

{-| __C declaration:__ @wl_display_connect@

    __defined at:__ @wayland-client-core.h 240:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_connect ::
     PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @name@
  -> IO (RIP.Ptr Wl_display)
wl_display_connect = hs_bindgen_3bbbdb2c96e08e8d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_connect_to_fd@
foreign import ccall safe "hs_bindgen_3b51ea3473d00146" hs_bindgen_3b51ea3473d00146_base ::
     RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_connect_to_fd@
hs_bindgen_3b51ea3473d00146 ::
     RIP.CInt
  -> IO (RIP.Ptr Wl_display)
hs_bindgen_3b51ea3473d00146 =
  RIP.fromFFIType hs_bindgen_3b51ea3473d00146_base

{-| __C declaration:__ @wl_display_connect_to_fd@

    __defined at:__ @wayland-client-core.h 243:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_connect_to_fd ::
     RIP.CInt
     -- ^ __C declaration:__ @fd@
  -> IO (RIP.Ptr Wl_display)
wl_display_connect_to_fd =
  hs_bindgen_3b51ea3473d00146

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_disconnect@
foreign import ccall safe "hs_bindgen_152ae95b4600ff5e" hs_bindgen_152ae95b4600ff5e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_disconnect@
hs_bindgen_152ae95b4600ff5e ::
     RIP.Ptr Wl_display
  -> IO ()
hs_bindgen_152ae95b4600ff5e =
  RIP.fromFFIType hs_bindgen_152ae95b4600ff5e_base

{-| __C declaration:__ @wl_display_disconnect@

    __defined at:__ @wayland-client-core.h 246:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_disconnect ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO ()
wl_display_disconnect = hs_bindgen_152ae95b4600ff5e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_get_fd@
foreign import ccall safe "hs_bindgen_5bae4ad19779f87e" hs_bindgen_5bae4ad19779f87e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_get_fd@
hs_bindgen_5bae4ad19779f87e ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_5bae4ad19779f87e =
  RIP.fromFFIType hs_bindgen_5bae4ad19779f87e_base

{-| __C declaration:__ @wl_display_get_fd@

    __defined at:__ @wayland-client-core.h 249:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_get_fd ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_get_fd = hs_bindgen_5bae4ad19779f87e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch@
foreign import ccall safe "hs_bindgen_cbe753ec9bdd44d1" hs_bindgen_cbe753ec9bdd44d1_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch@
hs_bindgen_cbe753ec9bdd44d1 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_cbe753ec9bdd44d1 =
  RIP.fromFFIType hs_bindgen_cbe753ec9bdd44d1_base

{-| __C declaration:__ @wl_display_dispatch@

    __defined at:__ @wayland-client-core.h 252:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_dispatch ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_dispatch = hs_bindgen_cbe753ec9bdd44d1

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch_queue@
foreign import ccall safe "hs_bindgen_2c3d038bcac545a8" hs_bindgen_2c3d038bcac545a8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch_queue@
hs_bindgen_2c3d038bcac545a8 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> IO RIP.CInt
hs_bindgen_2c3d038bcac545a8 =
  RIP.fromFFIType hs_bindgen_2c3d038bcac545a8_base

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
  hs_bindgen_2c3d038bcac545a8

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch_timeout@
foreign import ccall safe "hs_bindgen_5914b7ce9e7beffd" hs_bindgen_5914b7ce9e7beffd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch_timeout@
hs_bindgen_5914b7ce9e7beffd ::
     RIP.Ptr Wl_display
  -> PtrConst.PtrConst Timespec
  -> IO RIP.CInt
hs_bindgen_5914b7ce9e7beffd =
  RIP.fromFFIType hs_bindgen_5914b7ce9e7beffd_base

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
  hs_bindgen_5914b7ce9e7beffd

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch_queue_timeout@
foreign import ccall safe "hs_bindgen_6332fa3c31b0ebac" hs_bindgen_6332fa3c31b0ebac_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch_queue_timeout@
hs_bindgen_6332fa3c31b0ebac ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> PtrConst.PtrConst Timespec
  -> IO RIP.CInt
hs_bindgen_6332fa3c31b0ebac =
  RIP.fromFFIType hs_bindgen_6332fa3c31b0ebac_base

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
  hs_bindgen_6332fa3c31b0ebac

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch_queue_pending@
foreign import ccall safe "hs_bindgen_57821371522593d2" hs_bindgen_57821371522593d2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch_queue_pending@
hs_bindgen_57821371522593d2 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> IO RIP.CInt
hs_bindgen_57821371522593d2 =
  RIP.fromFFIType hs_bindgen_57821371522593d2_base

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
  hs_bindgen_57821371522593d2

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch_pending@
foreign import ccall safe "hs_bindgen_22411b5d8bbdaee0" hs_bindgen_22411b5d8bbdaee0_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_dispatch_pending@
hs_bindgen_22411b5d8bbdaee0 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_22411b5d8bbdaee0 =
  RIP.fromFFIType hs_bindgen_22411b5d8bbdaee0_base

{-| __C declaration:__ @wl_display_dispatch_pending@

    __defined at:__ @wayland-client-core.h 272:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_dispatch_pending ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_dispatch_pending =
  hs_bindgen_22411b5d8bbdaee0

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_get_error@
foreign import ccall safe "hs_bindgen_0a9cad3177f16e15" hs_bindgen_0a9cad3177f16e15_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_get_error@
hs_bindgen_0a9cad3177f16e15 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_0a9cad3177f16e15 =
  RIP.fromFFIType hs_bindgen_0a9cad3177f16e15_base

{-| __C declaration:__ @wl_display_get_error@

    __defined at:__ @wayland-client-core.h 275:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_get_error ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_get_error = hs_bindgen_0a9cad3177f16e15

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_get_protocol_error@
foreign import ccall safe "hs_bindgen_101c4e5ae7dc7aec" hs_bindgen_101c4e5ae7dc7aec_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_get_protocol_error@
hs_bindgen_101c4e5ae7dc7aec ::
     RIP.Ptr Wl_display
  -> RIP.Ptr (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_101c4e5ae7dc7aec =
  RIP.fromFFIType hs_bindgen_101c4e5ae7dc7aec_base

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
  hs_bindgen_101c4e5ae7dc7aec

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_flush@
foreign import ccall safe "hs_bindgen_b032ae8060087c07" hs_bindgen_b032ae8060087c07_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_flush@
hs_bindgen_b032ae8060087c07 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_b032ae8060087c07 =
  RIP.fromFFIType hs_bindgen_b032ae8060087c07_base

{-| __C declaration:__ @wl_display_flush@

    __defined at:__ @wayland-client-core.h 283:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_flush ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_flush = hs_bindgen_b032ae8060087c07

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_roundtrip_queue@
foreign import ccall safe "hs_bindgen_c5ce2d24af6cd240" hs_bindgen_c5ce2d24af6cd240_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_roundtrip_queue@
hs_bindgen_c5ce2d24af6cd240 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> IO RIP.CInt
hs_bindgen_c5ce2d24af6cd240 =
  RIP.fromFFIType hs_bindgen_c5ce2d24af6cd240_base

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
  hs_bindgen_c5ce2d24af6cd240

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_roundtrip@
foreign import ccall safe "hs_bindgen_be5919b56dfc1b74" hs_bindgen_be5919b56dfc1b74_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_roundtrip@
hs_bindgen_be5919b56dfc1b74 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_be5919b56dfc1b74 =
  RIP.fromFFIType hs_bindgen_be5919b56dfc1b74_base

{-| __C declaration:__ @wl_display_roundtrip@

    __defined at:__ @wayland-client-core.h 290:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_roundtrip ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_roundtrip = hs_bindgen_be5919b56dfc1b74

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_create_queue@
foreign import ccall safe "hs_bindgen_f2ec36fa20f6c3f9" hs_bindgen_f2ec36fa20f6c3f9_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_create_queue@
hs_bindgen_f2ec36fa20f6c3f9 ::
     RIP.Ptr Wl_display
  -> IO (RIP.Ptr Wl_event_queue)
hs_bindgen_f2ec36fa20f6c3f9 =
  RIP.fromFFIType hs_bindgen_f2ec36fa20f6c3f9_base

{-| __C declaration:__ @wl_display_create_queue@

    __defined at:__ @wayland-client-core.h 293:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_create_queue ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO (RIP.Ptr Wl_event_queue)
wl_display_create_queue = hs_bindgen_f2ec36fa20f6c3f9

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_create_queue_with_name@
foreign import ccall safe "hs_bindgen_71151f4bcefd4106" hs_bindgen_71151f4bcefd4106_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_create_queue_with_name@
hs_bindgen_71151f4bcefd4106 ::
     RIP.Ptr Wl_display
  -> PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Wl_event_queue)
hs_bindgen_71151f4bcefd4106 =
  RIP.fromFFIType hs_bindgen_71151f4bcefd4106_base

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
  hs_bindgen_71151f4bcefd4106

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_prepare_read_queue@
foreign import ccall safe "hs_bindgen_426fe23dcd82efb7" hs_bindgen_426fe23dcd82efb7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_prepare_read_queue@
hs_bindgen_426fe23dcd82efb7 ::
     RIP.Ptr Wl_display
  -> RIP.Ptr Wl_event_queue
  -> IO RIP.CInt
hs_bindgen_426fe23dcd82efb7 =
  RIP.fromFFIType hs_bindgen_426fe23dcd82efb7_base

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
  hs_bindgen_426fe23dcd82efb7

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_prepare_read@
foreign import ccall safe "hs_bindgen_2844e3e03b0b9c45" hs_bindgen_2844e3e03b0b9c45_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_prepare_read@
hs_bindgen_2844e3e03b0b9c45 ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_2844e3e03b0b9c45 =
  RIP.fromFFIType hs_bindgen_2844e3e03b0b9c45_base

{-| __C declaration:__ @wl_display_prepare_read@

    __defined at:__ @wayland-client-core.h 304:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_prepare_read ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_prepare_read = hs_bindgen_2844e3e03b0b9c45

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_cancel_read@
foreign import ccall safe "hs_bindgen_1ffa88b7c2b6632c" hs_bindgen_1ffa88b7c2b6632c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_cancel_read@
hs_bindgen_1ffa88b7c2b6632c ::
     RIP.Ptr Wl_display
  -> IO ()
hs_bindgen_1ffa88b7c2b6632c =
  RIP.fromFFIType hs_bindgen_1ffa88b7c2b6632c_base

{-| __C declaration:__ @wl_display_cancel_read@

    __defined at:__ @wayland-client-core.h 307:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_cancel_read ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO ()
wl_display_cancel_read = hs_bindgen_1ffa88b7c2b6632c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_read_events@
foreign import ccall safe "hs_bindgen_a4b4a1bdee0763ed" hs_bindgen_a4b4a1bdee0763ed_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_read_events@
hs_bindgen_a4b4a1bdee0763ed ::
     RIP.Ptr Wl_display
  -> IO RIP.CInt
hs_bindgen_a4b4a1bdee0763ed =
  RIP.fromFFIType hs_bindgen_a4b4a1bdee0763ed_base

{-| __C declaration:__ @wl_display_read_events@

    __defined at:__ @wayland-client-core.h 310:1@

    __exported by:__ @wayland-client-core.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_read_events ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @display@
  -> IO RIP.CInt
wl_display_read_events = hs_bindgen_a4b4a1bdee0763ed

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_set_max_buffer_size@
foreign import ccall safe "hs_bindgen_06bf5de436a6dada" hs_bindgen_06bf5de436a6dada_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_set_max_buffer_size@
hs_bindgen_06bf5de436a6dada ::
     RIP.Ptr Wl_display
  -> HsBindgen.Runtime.LibC.CSize
  -> IO ()
hs_bindgen_06bf5de436a6dada =
  RIP.fromFFIType hs_bindgen_06bf5de436a6dada_base

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
  hs_bindgen_06bf5de436a6dada

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_add_listener@
foreign import ccall safe "hs_bindgen_3f7a4abb192eb298" hs_bindgen_3f7a4abb192eb298_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_add_listener@
hs_bindgen_3f7a4abb192eb298 ::
     RIP.Ptr Wl_display
  -> PtrConst.PtrConst Wl_display_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_3f7a4abb192eb298 =
  RIP.fromFFIType hs_bindgen_3f7a4abb192eb298_base

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
wl_display_add_listener = hs_bindgen_3f7a4abb192eb298

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_set_user_data@
foreign import ccall safe "hs_bindgen_41c437e82613ef3e" hs_bindgen_41c437e82613ef3e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_set_user_data@
hs_bindgen_41c437e82613ef3e ::
     RIP.Ptr Wl_display
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_41c437e82613ef3e =
  RIP.fromFFIType hs_bindgen_41c437e82613ef3e_base

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
  hs_bindgen_41c437e82613ef3e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_get_user_data@
foreign import ccall safe "hs_bindgen_51c4c5da64075593" hs_bindgen_51c4c5da64075593_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_get_user_data@
hs_bindgen_51c4c5da64075593 ::
     RIP.Ptr Wl_display
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_51c4c5da64075593 =
  RIP.fromFFIType hs_bindgen_51c4c5da64075593_base

{-| __C declaration:__ @wl_display_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1074:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_get_user_data ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> IO (RIP.Ptr RIP.Void)
wl_display_get_user_data =
  hs_bindgen_51c4c5da64075593

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_get_version@
foreign import ccall safe "hs_bindgen_e7af0344dc6a74f5" hs_bindgen_e7af0344dc6a74f5_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_get_version@
hs_bindgen_e7af0344dc6a74f5 ::
     RIP.Ptr Wl_display
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_e7af0344dc6a74f5 =
  RIP.fromFFIType hs_bindgen_e7af0344dc6a74f5_base

{-| __C declaration:__ @wl_display_get_version@

    __defined at:__ @wayland-client-protocol.h 1080:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_display_get_version ::
     RIP.Ptr Wl_display
     -- ^ __C declaration:__ @wl_display@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_display_get_version = hs_bindgen_e7af0344dc6a74f5

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_sync@
foreign import ccall safe "hs_bindgen_115a707b5dfe411c" hs_bindgen_115a707b5dfe411c_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_sync@
hs_bindgen_115a707b5dfe411c ::
     RIP.Ptr Wl_display
  -> IO (RIP.Ptr Wl_callback)
hs_bindgen_115a707b5dfe411c =
  RIP.fromFFIType hs_bindgen_115a707b5dfe411c_base

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
wl_display_sync = hs_bindgen_115a707b5dfe411c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_get_registry@
foreign import ccall safe "hs_bindgen_74b57c961c675015" hs_bindgen_74b57c961c675015_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_display_get_registry@
hs_bindgen_74b57c961c675015 ::
     RIP.Ptr Wl_display
  -> IO (RIP.Ptr Wl_registry)
hs_bindgen_74b57c961c675015 =
  RIP.fromFFIType hs_bindgen_74b57c961c675015_base

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
wl_display_get_registry = hs_bindgen_74b57c961c675015

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_registry_add_listener@
foreign import ccall safe "hs_bindgen_5d844f76f29543dc" hs_bindgen_5d844f76f29543dc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_registry_add_listener@
hs_bindgen_5d844f76f29543dc ::
     RIP.Ptr Wl_registry
  -> PtrConst.PtrConst Wl_registry_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_5d844f76f29543dc =
  RIP.fromFFIType hs_bindgen_5d844f76f29543dc_base

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
  hs_bindgen_5d844f76f29543dc

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_registry_set_user_data@
foreign import ccall safe "hs_bindgen_50eb72f7e8f25245" hs_bindgen_50eb72f7e8f25245_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_registry_set_user_data@
hs_bindgen_50eb72f7e8f25245 ::
     RIP.Ptr Wl_registry
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_50eb72f7e8f25245 =
  RIP.fromFFIType hs_bindgen_50eb72f7e8f25245_base

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
  hs_bindgen_50eb72f7e8f25245

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_registry_get_user_data@
foreign import ccall safe "hs_bindgen_7c23e04989be19bf" hs_bindgen_7c23e04989be19bf_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_registry_get_user_data@
hs_bindgen_7c23e04989be19bf ::
     RIP.Ptr Wl_registry
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_7c23e04989be19bf =
  RIP.fromFFIType hs_bindgen_7c23e04989be19bf_base

{-| __C declaration:__ @wl_registry_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1213:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_registry_get_user_data ::
     RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @wl_registry@
  -> IO (RIP.Ptr RIP.Void)
wl_registry_get_user_data =
  hs_bindgen_7c23e04989be19bf

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_registry_get_version@
foreign import ccall safe "hs_bindgen_ca9d9b0cb4fa1262" hs_bindgen_ca9d9b0cb4fa1262_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_registry_get_version@
hs_bindgen_ca9d9b0cb4fa1262 ::
     RIP.Ptr Wl_registry
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_ca9d9b0cb4fa1262 =
  RIP.fromFFIType hs_bindgen_ca9d9b0cb4fa1262_base

{-| __C declaration:__ @wl_registry_get_version@

    __defined at:__ @wayland-client-protocol.h 1219:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_registry_get_version ::
     RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @wl_registry@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_registry_get_version = hs_bindgen_ca9d9b0cb4fa1262

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_registry_destroy@
foreign import ccall safe "hs_bindgen_31a7af548370136b" hs_bindgen_31a7af548370136b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_registry_destroy@
hs_bindgen_31a7af548370136b ::
     RIP.Ptr Wl_registry
  -> IO ()
hs_bindgen_31a7af548370136b =
  RIP.fromFFIType hs_bindgen_31a7af548370136b_base

{-| __C declaration:__ @wl_registry_destroy@

    __defined at:__ @wayland-client-protocol.h 1226:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_registry_destroy ::
     RIP.Ptr Wl_registry
     -- ^ __C declaration:__ @wl_registry@
  -> IO ()
wl_registry_destroy = hs_bindgen_31a7af548370136b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_registry_bind@
foreign import ccall safe "hs_bindgen_09394ba4e23986ec" hs_bindgen_09394ba4e23986ec_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_registry_bind@
hs_bindgen_09394ba4e23986ec ::
     RIP.Ptr Wl_registry
  -> HsBindgen.Runtime.LibC.Word32
  -> PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_09394ba4e23986ec =
  RIP.fromFFIType hs_bindgen_09394ba4e23986ec_base

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
wl_registry_bind = hs_bindgen_09394ba4e23986ec

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_callback_add_listener@
foreign import ccall safe "hs_bindgen_cf2d81a9ceec2120" hs_bindgen_cf2d81a9ceec2120_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_callback_add_listener@
hs_bindgen_cf2d81a9ceec2120 ::
     RIP.Ptr Wl_callback
  -> PtrConst.PtrConst Wl_callback_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_cf2d81a9ceec2120 =
  RIP.fromFFIType hs_bindgen_cf2d81a9ceec2120_base

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
  hs_bindgen_cf2d81a9ceec2120

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_callback_set_user_data@
foreign import ccall safe "hs_bindgen_6f3e3961ed55bcaa" hs_bindgen_6f3e3961ed55bcaa_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_callback_set_user_data@
hs_bindgen_6f3e3961ed55bcaa ::
     RIP.Ptr Wl_callback
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_6f3e3961ed55bcaa =
  RIP.fromFFIType hs_bindgen_6f3e3961ed55bcaa_base

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
  hs_bindgen_6f3e3961ed55bcaa

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_callback_get_user_data@
foreign import ccall safe "hs_bindgen_b55277f3407435bb" hs_bindgen_b55277f3407435bb_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_callback_get_user_data@
hs_bindgen_b55277f3407435bb ::
     RIP.Ptr Wl_callback
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_b55277f3407435bb =
  RIP.fromFFIType hs_bindgen_b55277f3407435bb_base

{-| __C declaration:__ @wl_callback_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1290:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_callback_get_user_data ::
     RIP.Ptr Wl_callback
     -- ^ __C declaration:__ @wl_callback@
  -> IO (RIP.Ptr RIP.Void)
wl_callback_get_user_data =
  hs_bindgen_b55277f3407435bb

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_callback_get_version@
foreign import ccall safe "hs_bindgen_65ef0b9019f6f659" hs_bindgen_65ef0b9019f6f659_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_callback_get_version@
hs_bindgen_65ef0b9019f6f659 ::
     RIP.Ptr Wl_callback
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_65ef0b9019f6f659 =
  RIP.fromFFIType hs_bindgen_65ef0b9019f6f659_base

{-| __C declaration:__ @wl_callback_get_version@

    __defined at:__ @wayland-client-protocol.h 1296:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_callback_get_version ::
     RIP.Ptr Wl_callback
     -- ^ __C declaration:__ @wl_callback@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_callback_get_version = hs_bindgen_65ef0b9019f6f659

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_callback_destroy@
foreign import ccall safe "hs_bindgen_439001916611a1f6" hs_bindgen_439001916611a1f6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_callback_destroy@
hs_bindgen_439001916611a1f6 ::
     RIP.Ptr Wl_callback
  -> IO ()
hs_bindgen_439001916611a1f6 =
  RIP.fromFFIType hs_bindgen_439001916611a1f6_base

{-| __C declaration:__ @wl_callback_destroy@

    __defined at:__ @wayland-client-protocol.h 1303:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_callback_destroy ::
     RIP.Ptr Wl_callback
     -- ^ __C declaration:__ @wl_callback@
  -> IO ()
wl_callback_destroy = hs_bindgen_439001916611a1f6

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_compositor_set_user_data@
foreign import ccall safe "hs_bindgen_f056a5cda8e2f003" hs_bindgen_f056a5cda8e2f003_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_compositor_set_user_data@
hs_bindgen_f056a5cda8e2f003 ::
     RIP.Ptr Wl_compositor
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_f056a5cda8e2f003 =
  RIP.fromFFIType hs_bindgen_f056a5cda8e2f003_base

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
  hs_bindgen_f056a5cda8e2f003

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_compositor_get_user_data@
foreign import ccall safe "hs_bindgen_db735ca6a7f6d45e" hs_bindgen_db735ca6a7f6d45e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_compositor_get_user_data@
hs_bindgen_db735ca6a7f6d45e ::
     RIP.Ptr Wl_compositor
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_db735ca6a7f6d45e =
  RIP.fromFFIType hs_bindgen_db735ca6a7f6d45e_base

{-| __C declaration:__ @wl_compositor_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1330:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_compositor_get_user_data ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO (RIP.Ptr RIP.Void)
wl_compositor_get_user_data =
  hs_bindgen_db735ca6a7f6d45e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_compositor_get_version@
foreign import ccall safe "hs_bindgen_9773561407b1d71c" hs_bindgen_9773561407b1d71c_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_compositor_get_version@
hs_bindgen_9773561407b1d71c ::
     RIP.Ptr Wl_compositor
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_9773561407b1d71c =
  RIP.fromFFIType hs_bindgen_9773561407b1d71c_base

{-| __C declaration:__ @wl_compositor_get_version@

    __defined at:__ @wayland-client-protocol.h 1336:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_compositor_get_version ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_compositor_get_version =
  hs_bindgen_9773561407b1d71c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_compositor_destroy@
foreign import ccall safe "hs_bindgen_660d5ce26a7d0b6a" hs_bindgen_660d5ce26a7d0b6a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_compositor_destroy@
hs_bindgen_660d5ce26a7d0b6a ::
     RIP.Ptr Wl_compositor
  -> IO ()
hs_bindgen_660d5ce26a7d0b6a =
  RIP.fromFFIType hs_bindgen_660d5ce26a7d0b6a_base

{-| __C declaration:__ @wl_compositor_destroy@

    __defined at:__ @wayland-client-protocol.h 1343:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_compositor_destroy ::
     RIP.Ptr Wl_compositor
     -- ^ __C declaration:__ @wl_compositor@
  -> IO ()
wl_compositor_destroy = hs_bindgen_660d5ce26a7d0b6a

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_compositor_create_surface@
foreign import ccall safe "hs_bindgen_06462e38914e2f93" hs_bindgen_06462e38914e2f93_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_compositor_create_surface@
hs_bindgen_06462e38914e2f93 ::
     RIP.Ptr Wl_compositor
  -> IO (RIP.Ptr Wl_surface)
hs_bindgen_06462e38914e2f93 =
  RIP.fromFFIType hs_bindgen_06462e38914e2f93_base

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
  hs_bindgen_06462e38914e2f93

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_compositor_create_region@
foreign import ccall safe "hs_bindgen_673945349eb3a8d6" hs_bindgen_673945349eb3a8d6_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_compositor_create_region@
hs_bindgen_673945349eb3a8d6 ::
     RIP.Ptr Wl_compositor
  -> IO (RIP.Ptr Wl_region)
hs_bindgen_673945349eb3a8d6 =
  RIP.fromFFIType hs_bindgen_673945349eb3a8d6_base

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
  hs_bindgen_673945349eb3a8d6

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_set_user_data@
foreign import ccall safe "hs_bindgen_ec86ea9bb06ee8a0" hs_bindgen_ec86ea9bb06ee8a0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_set_user_data@
hs_bindgen_ec86ea9bb06ee8a0 ::
     RIP.Ptr Wl_shm_pool
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_ec86ea9bb06ee8a0 =
  RIP.fromFFIType hs_bindgen_ec86ea9bb06ee8a0_base

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
  hs_bindgen_ec86ea9bb06ee8a0

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_get_user_data@
foreign import ccall safe "hs_bindgen_aa44e96292477773" hs_bindgen_aa44e96292477773_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_get_user_data@
hs_bindgen_aa44e96292477773 ::
     RIP.Ptr Wl_shm_pool
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_aa44e96292477773 =
  RIP.fromFFIType hs_bindgen_aa44e96292477773_base

{-| __C declaration:__ @wl_shm_pool_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1407:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_get_user_data ::
     RIP.Ptr Wl_shm_pool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> IO (RIP.Ptr RIP.Void)
wl_shm_pool_get_user_data =
  hs_bindgen_aa44e96292477773

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_get_version@
foreign import ccall safe "hs_bindgen_2b7aa272fd1a9000" hs_bindgen_2b7aa272fd1a9000_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_get_version@
hs_bindgen_2b7aa272fd1a9000 ::
     RIP.Ptr Wl_shm_pool
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_2b7aa272fd1a9000 =
  RIP.fromFFIType hs_bindgen_2b7aa272fd1a9000_base

{-| __C declaration:__ @wl_shm_pool_get_version@

    __defined at:__ @wayland-client-protocol.h 1413:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_get_version ::
     RIP.Ptr Wl_shm_pool
     -- ^ __C declaration:__ @wl_shm_pool@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shm_pool_get_version = hs_bindgen_2b7aa272fd1a9000

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_create_buffer@
foreign import ccall safe "hs_bindgen_c9d996d5d59ce2c0" hs_bindgen_c9d996d5d59ce2c0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_create_buffer@
hs_bindgen_c9d996d5d59ce2c0 ::
     RIP.Ptr Wl_shm_pool
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr Wl_buffer)
hs_bindgen_c9d996d5d59ce2c0 =
  RIP.fromFFIType hs_bindgen_c9d996d5d59ce2c0_base

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
  hs_bindgen_c9d996d5d59ce2c0

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_destroy@
foreign import ccall safe "hs_bindgen_753817445dd26bba" hs_bindgen_753817445dd26bba_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_destroy@
hs_bindgen_753817445dd26bba ::
     RIP.Ptr Wl_shm_pool
  -> IO ()
hs_bindgen_753817445dd26bba =
  RIP.fromFFIType hs_bindgen_753817445dd26bba_base

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
wl_shm_pool_destroy = hs_bindgen_753817445dd26bba

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_resize@
foreign import ccall safe "hs_bindgen_371afa88e2234833" hs_bindgen_371afa88e2234833_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_pool_resize@
hs_bindgen_371afa88e2234833 ::
     RIP.Ptr Wl_shm_pool
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_371afa88e2234833 =
  RIP.fromFFIType hs_bindgen_371afa88e2234833_base

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
wl_shm_pool_resize = hs_bindgen_371afa88e2234833

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_add_listener@
foreign import ccall safe "hs_bindgen_2e5f6d3587b615d2" hs_bindgen_2e5f6d3587b615d2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_add_listener@
hs_bindgen_2e5f6d3587b615d2 ::
     RIP.Ptr Wl_shm
  -> PtrConst.PtrConst Wl_shm_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_2e5f6d3587b615d2 =
  RIP.fromFFIType hs_bindgen_2e5f6d3587b615d2_base

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
wl_shm_add_listener = hs_bindgen_2e5f6d3587b615d2

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_set_user_data@
foreign import ccall safe "hs_bindgen_bf55eb0b8cfc7b40" hs_bindgen_bf55eb0b8cfc7b40_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_set_user_data@
hs_bindgen_bf55eb0b8cfc7b40 ::
     RIP.Ptr Wl_shm
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_bf55eb0b8cfc7b40 =
  RIP.fromFFIType hs_bindgen_bf55eb0b8cfc7b40_base

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
wl_shm_set_user_data = hs_bindgen_bf55eb0b8cfc7b40

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_get_user_data@
foreign import ccall safe "hs_bindgen_7bcaf18cdc10fc1c" hs_bindgen_7bcaf18cdc10fc1c_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_get_user_data@
hs_bindgen_7bcaf18cdc10fc1c ::
     RIP.Ptr Wl_shm
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_7bcaf18cdc10fc1c =
  RIP.fromFFIType hs_bindgen_7bcaf18cdc10fc1c_base

{-| __C declaration:__ @wl_shm_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2038:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_get_user_data ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> IO (RIP.Ptr RIP.Void)
wl_shm_get_user_data = hs_bindgen_7bcaf18cdc10fc1c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_get_version@
foreign import ccall safe "hs_bindgen_ae5791f3423269c4" hs_bindgen_ae5791f3423269c4_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_get_version@
hs_bindgen_ae5791f3423269c4 ::
     RIP.Ptr Wl_shm
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_ae5791f3423269c4 =
  RIP.fromFFIType hs_bindgen_ae5791f3423269c4_base

{-| __C declaration:__ @wl_shm_get_version@

    __defined at:__ @wayland-client-protocol.h 2044:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_get_version ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shm_get_version = hs_bindgen_ae5791f3423269c4

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_destroy@
foreign import ccall safe "hs_bindgen_807c1641277cbc1b" hs_bindgen_807c1641277cbc1b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_destroy@
hs_bindgen_807c1641277cbc1b ::
     RIP.Ptr Wl_shm
  -> IO ()
hs_bindgen_807c1641277cbc1b =
  RIP.fromFFIType hs_bindgen_807c1641277cbc1b_base

{-| __C declaration:__ @wl_shm_destroy@

    __defined at:__ @wayland-client-protocol.h 2051:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shm_destroy ::
     RIP.Ptr Wl_shm
     -- ^ __C declaration:__ @wl_shm@
  -> IO ()
wl_shm_destroy = hs_bindgen_807c1641277cbc1b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_create_pool@
foreign import ccall safe "hs_bindgen_c11571793ff56318" hs_bindgen_c11571793ff56318_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_create_pool@
hs_bindgen_c11571793ff56318 ::
     RIP.Ptr Wl_shm
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO (RIP.Ptr Wl_shm_pool)
hs_bindgen_c11571793ff56318 =
  RIP.fromFFIType hs_bindgen_c11571793ff56318_base

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
wl_shm_create_pool = hs_bindgen_c11571793ff56318

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_release@
foreign import ccall safe "hs_bindgen_e445a87906d5346b" hs_bindgen_e445a87906d5346b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shm_release@
hs_bindgen_e445a87906d5346b ::
     RIP.Ptr Wl_shm
  -> IO ()
hs_bindgen_e445a87906d5346b =
  RIP.fromFFIType hs_bindgen_e445a87906d5346b_base

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
wl_shm_release = hs_bindgen_e445a87906d5346b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_buffer_add_listener@
foreign import ccall safe "hs_bindgen_830dcc56a541fc2c" hs_bindgen_830dcc56a541fc2c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_buffer_add_listener@
hs_bindgen_830dcc56a541fc2c ::
     RIP.Ptr Wl_buffer
  -> PtrConst.PtrConst Wl_buffer_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_830dcc56a541fc2c =
  RIP.fromFFIType hs_bindgen_830dcc56a541fc2c_base

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
wl_buffer_add_listener = hs_bindgen_830dcc56a541fc2c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_buffer_set_user_data@
foreign import ccall safe "hs_bindgen_e84b978aa43f62a6" hs_bindgen_e84b978aa43f62a6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_buffer_set_user_data@
hs_bindgen_e84b978aa43f62a6 ::
     RIP.Ptr Wl_buffer
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_e84b978aa43f62a6 =
  RIP.fromFFIType hs_bindgen_e84b978aa43f62a6_base

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
wl_buffer_set_user_data = hs_bindgen_e84b978aa43f62a6

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_buffer_get_user_data@
foreign import ccall safe "hs_bindgen_06059cd4ce6bf3ab" hs_bindgen_06059cd4ce6bf3ab_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_buffer_get_user_data@
hs_bindgen_06059cd4ce6bf3ab ::
     RIP.Ptr Wl_buffer
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_06059cd4ce6bf3ab =
  RIP.fromFFIType hs_bindgen_06059cd4ce6bf3ab_base

{-| __C declaration:__ @wl_buffer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2150:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_buffer_get_user_data ::
     RIP.Ptr Wl_buffer
     -- ^ __C declaration:__ @wl_buffer@
  -> IO (RIP.Ptr RIP.Void)
wl_buffer_get_user_data = hs_bindgen_06059cd4ce6bf3ab

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_buffer_get_version@
foreign import ccall safe "hs_bindgen_8e64c1a5d8acfa43" hs_bindgen_8e64c1a5d8acfa43_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_buffer_get_version@
hs_bindgen_8e64c1a5d8acfa43 ::
     RIP.Ptr Wl_buffer
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_8e64c1a5d8acfa43 =
  RIP.fromFFIType hs_bindgen_8e64c1a5d8acfa43_base

{-| __C declaration:__ @wl_buffer_get_version@

    __defined at:__ @wayland-client-protocol.h 2156:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_buffer_get_version ::
     RIP.Ptr Wl_buffer
     -- ^ __C declaration:__ @wl_buffer@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_buffer_get_version = hs_bindgen_8e64c1a5d8acfa43

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_buffer_destroy@
foreign import ccall safe "hs_bindgen_04e3a8c6cc6eb62a" hs_bindgen_04e3a8c6cc6eb62a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_buffer_destroy@
hs_bindgen_04e3a8c6cc6eb62a ::
     RIP.Ptr Wl_buffer
  -> IO ()
hs_bindgen_04e3a8c6cc6eb62a =
  RIP.fromFFIType hs_bindgen_04e3a8c6cc6eb62a_base

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
wl_buffer_destroy = hs_bindgen_04e3a8c6cc6eb62a

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_add_listener@
foreign import ccall safe "hs_bindgen_92cf7afddbcf0f53" hs_bindgen_92cf7afddbcf0f53_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_add_listener@
hs_bindgen_92cf7afddbcf0f53 ::
     RIP.Ptr Wl_data_offer
  -> PtrConst.PtrConst Wl_data_offer_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_92cf7afddbcf0f53 =
  RIP.fromFFIType hs_bindgen_92cf7afddbcf0f53_base

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
  hs_bindgen_92cf7afddbcf0f53

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_set_user_data@
foreign import ccall safe "hs_bindgen_c1da7dd49677e64d" hs_bindgen_c1da7dd49677e64d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_set_user_data@
hs_bindgen_c1da7dd49677e64d ::
     RIP.Ptr Wl_data_offer
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_c1da7dd49677e64d =
  RIP.fromFFIType hs_bindgen_c1da7dd49677e64d_base

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
  hs_bindgen_c1da7dd49677e64d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_get_user_data@
foreign import ccall safe "hs_bindgen_4cf38c98e9176fb4" hs_bindgen_4cf38c98e9176fb4_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_get_user_data@
hs_bindgen_4cf38c98e9176fb4 ::
     RIP.Ptr Wl_data_offer
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_4cf38c98e9176fb4 =
  RIP.fromFFIType hs_bindgen_4cf38c98e9176fb4_base

{-| __C declaration:__ @wl_data_offer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2334:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_offer_get_user_data ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO (RIP.Ptr RIP.Void)
wl_data_offer_get_user_data =
  hs_bindgen_4cf38c98e9176fb4

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_get_version@
foreign import ccall safe "hs_bindgen_ec8bc3678eb0a1a5" hs_bindgen_ec8bc3678eb0a1a5_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_get_version@
hs_bindgen_ec8bc3678eb0a1a5 ::
     RIP.Ptr Wl_data_offer
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_ec8bc3678eb0a1a5 =
  RIP.fromFFIType hs_bindgen_ec8bc3678eb0a1a5_base

{-| __C declaration:__ @wl_data_offer_get_version@

    __defined at:__ @wayland-client-protocol.h 2340:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_offer_get_version ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_offer_get_version =
  hs_bindgen_ec8bc3678eb0a1a5

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_accept@
foreign import ccall safe "hs_bindgen_e7b71a405478e7f1" hs_bindgen_e7b71a405478e7f1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_accept@
hs_bindgen_e7b71a405478e7f1 ::
     RIP.Ptr Wl_data_offer
  -> HsBindgen.Runtime.LibC.Word32
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_e7b71a405478e7f1 =
  RIP.fromFFIType hs_bindgen_e7b71a405478e7f1_base

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
wl_data_offer_accept = hs_bindgen_e7b71a405478e7f1

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_receive@
foreign import ccall safe "hs_bindgen_d4c25c3e36bfb92e" hs_bindgen_d4c25c3e36bfb92e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_receive@
hs_bindgen_d4c25c3e36bfb92e ::
     RIP.Ptr Wl_data_offer
  -> PtrConst.PtrConst RIP.CChar
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_d4c25c3e36bfb92e =
  RIP.fromFFIType hs_bindgen_d4c25c3e36bfb92e_base

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
wl_data_offer_receive = hs_bindgen_d4c25c3e36bfb92e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_destroy@
foreign import ccall safe "hs_bindgen_205ad9d7a562ea45" hs_bindgen_205ad9d7a562ea45_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_destroy@
hs_bindgen_205ad9d7a562ea45 ::
     RIP.Ptr Wl_data_offer
  -> IO ()
hs_bindgen_205ad9d7a562ea45 =
  RIP.fromFFIType hs_bindgen_205ad9d7a562ea45_base

{-| Destroy the data offer.

    __C declaration:__ @wl_data_offer_destroy@

    __defined at:__ @wayland-client-protocol.h 2402:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_offer_destroy ::
     RIP.Ptr Wl_data_offer
     -- ^ __C declaration:__ @wl_data_offer@
  -> IO ()
wl_data_offer_destroy = hs_bindgen_205ad9d7a562ea45

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_finish@
foreign import ccall safe "hs_bindgen_2e58d7b061f6342f" hs_bindgen_2e58d7b061f6342f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_finish@
hs_bindgen_2e58d7b061f6342f ::
     RIP.Ptr Wl_data_offer
  -> IO ()
hs_bindgen_2e58d7b061f6342f =
  RIP.fromFFIType hs_bindgen_2e58d7b061f6342f_base

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
wl_data_offer_finish = hs_bindgen_2e58d7b061f6342f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_set_actions@
foreign import ccall safe "hs_bindgen_70759ceaa73c63ff" hs_bindgen_70759ceaa73c63ff_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_offer_set_actions@
hs_bindgen_70759ceaa73c63ff ::
     RIP.Ptr Wl_data_offer
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_70759ceaa73c63ff =
  RIP.fromFFIType hs_bindgen_70759ceaa73c63ff_base

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
  hs_bindgen_70759ceaa73c63ff

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_source_add_listener@
foreign import ccall safe "hs_bindgen_01cb1a5b39336900" hs_bindgen_01cb1a5b39336900_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_source_add_listener@
hs_bindgen_01cb1a5b39336900 ::
     RIP.Ptr Wl_data_source
  -> PtrConst.PtrConst Wl_data_source_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_01cb1a5b39336900 =
  RIP.fromFFIType hs_bindgen_01cb1a5b39336900_base

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
  hs_bindgen_01cb1a5b39336900

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_source_set_user_data@
foreign import ccall safe "hs_bindgen_06214ac9b00d8b0d" hs_bindgen_06214ac9b00d8b0d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_source_set_user_data@
hs_bindgen_06214ac9b00d8b0d ::
     RIP.Ptr Wl_data_source
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_06214ac9b00d8b0d =
  RIP.fromFFIType hs_bindgen_06214ac9b00d8b0d_base

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
  hs_bindgen_06214ac9b00d8b0d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_source_get_user_data@
foreign import ccall safe "hs_bindgen_c0aca14deeb330e9" hs_bindgen_c0aca14deeb330e9_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_source_get_user_data@
hs_bindgen_c0aca14deeb330e9 ::
     RIP.Ptr Wl_data_source
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_c0aca14deeb330e9 =
  RIP.fromFFIType hs_bindgen_c0aca14deeb330e9_base

{-| __C declaration:__ @wl_data_source_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2675:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_source_get_user_data ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> IO (RIP.Ptr RIP.Void)
wl_data_source_get_user_data =
  hs_bindgen_c0aca14deeb330e9

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_source_get_version@
foreign import ccall safe "hs_bindgen_520eac81f9d46f9d" hs_bindgen_520eac81f9d46f9d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_source_get_version@
hs_bindgen_520eac81f9d46f9d ::
     RIP.Ptr Wl_data_source
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_520eac81f9d46f9d =
  RIP.fromFFIType hs_bindgen_520eac81f9d46f9d_base

{-| __C declaration:__ @wl_data_source_get_version@

    __defined at:__ @wayland-client-protocol.h 2681:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_source_get_version ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_source_get_version =
  hs_bindgen_520eac81f9d46f9d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_source_offer@
foreign import ccall safe "hs_bindgen_7d687807748fe27e" hs_bindgen_7d687807748fe27e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_source_offer@
hs_bindgen_7d687807748fe27e ::
     RIP.Ptr Wl_data_source
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_7d687807748fe27e =
  RIP.fromFFIType hs_bindgen_7d687807748fe27e_base

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
wl_data_source_offer = hs_bindgen_7d687807748fe27e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_source_destroy@
foreign import ccall safe "hs_bindgen_a9e2e1f44a2db475" hs_bindgen_a9e2e1f44a2db475_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_source_destroy@
hs_bindgen_a9e2e1f44a2db475 ::
     RIP.Ptr Wl_data_source
  -> IO ()
hs_bindgen_a9e2e1f44a2db475 =
  RIP.fromFFIType hs_bindgen_a9e2e1f44a2db475_base

{-| Destroy the data source.

    __C declaration:__ @wl_data_source_destroy@

    __defined at:__ @wayland-client-protocol.h 2706:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_source_destroy ::
     RIP.Ptr Wl_data_source
     -- ^ __C declaration:__ @wl_data_source@
  -> IO ()
wl_data_source_destroy = hs_bindgen_a9e2e1f44a2db475

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_source_set_actions@
foreign import ccall safe "hs_bindgen_6837dec7b275f201" hs_bindgen_6837dec7b275f201_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_source_set_actions@
hs_bindgen_6837dec7b275f201 ::
     RIP.Ptr Wl_data_source
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_6837dec7b275f201 =
  RIP.fromFFIType hs_bindgen_6837dec7b275f201_base

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
  hs_bindgen_6837dec7b275f201

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_add_listener@
foreign import ccall safe "hs_bindgen_31a590ba05118335" hs_bindgen_31a590ba05118335_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_add_listener@
hs_bindgen_31a590ba05118335 ::
     RIP.Ptr Wl_data_device
  -> PtrConst.PtrConst Wl_data_device_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_31a590ba05118335 =
  RIP.fromFFIType hs_bindgen_31a590ba05118335_base

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
  hs_bindgen_31a590ba05118335

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_set_user_data@
foreign import ccall safe "hs_bindgen_328de1d8ca868c03" hs_bindgen_328de1d8ca868c03_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_set_user_data@
hs_bindgen_328de1d8ca868c03 ::
     RIP.Ptr Wl_data_device
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_328de1d8ca868c03 =
  RIP.fromFFIType hs_bindgen_328de1d8ca868c03_base

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
  hs_bindgen_328de1d8ca868c03

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_get_user_data@
foreign import ccall safe "hs_bindgen_a75a5a5405b66afd" hs_bindgen_a75a5a5405b66afd_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_get_user_data@
hs_bindgen_a75a5a5405b66afd ::
     RIP.Ptr Wl_data_device
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_a75a5a5405b66afd =
  RIP.fromFFIType hs_bindgen_a75a5a5405b66afd_base

{-| __C declaration:__ @wl_data_device_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2918:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_get_user_data ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> IO (RIP.Ptr RIP.Void)
wl_data_device_get_user_data =
  hs_bindgen_a75a5a5405b66afd

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_get_version@
foreign import ccall safe "hs_bindgen_02718593ddf3ccee" hs_bindgen_02718593ddf3ccee_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_get_version@
hs_bindgen_02718593ddf3ccee ::
     RIP.Ptr Wl_data_device
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_02718593ddf3ccee =
  RIP.fromFFIType hs_bindgen_02718593ddf3ccee_base

{-| __C declaration:__ @wl_data_device_get_version@

    __defined at:__ @wayland-client-protocol.h 2924:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_get_version ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_device_get_version =
  hs_bindgen_02718593ddf3ccee

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_destroy@
foreign import ccall safe "hs_bindgen_0a6352987598ec66" hs_bindgen_0a6352987598ec66_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_destroy@
hs_bindgen_0a6352987598ec66 ::
     RIP.Ptr Wl_data_device
  -> IO ()
hs_bindgen_0a6352987598ec66 =
  RIP.fromFFIType hs_bindgen_0a6352987598ec66_base

{-| __C declaration:__ @wl_data_device_destroy@

    __defined at:__ @wayland-client-protocol.h 2931:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_destroy ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> IO ()
wl_data_device_destroy = hs_bindgen_0a6352987598ec66

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_start_drag@
foreign import ccall safe "hs_bindgen_3f57c768b9bd1cde" hs_bindgen_3f57c768b9bd1cde_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_start_drag@
hs_bindgen_3f57c768b9bd1cde ::
     RIP.Ptr Wl_data_device
  -> RIP.Ptr Wl_data_source
  -> RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_3f57c768b9bd1cde =
  RIP.fromFFIType hs_bindgen_3f57c768b9bd1cde_base

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
  hs_bindgen_3f57c768b9bd1cde

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_set_selection@
foreign import ccall safe "hs_bindgen_b1df96900a621bf6" hs_bindgen_b1df96900a621bf6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_set_selection@
hs_bindgen_b1df96900a621bf6 ::
     RIP.Ptr Wl_data_device
  -> RIP.Ptr Wl_data_source
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_b1df96900a621bf6 =
  RIP.fromFFIType hs_bindgen_b1df96900a621bf6_base

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
  hs_bindgen_b1df96900a621bf6

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_release@
foreign import ccall safe "hs_bindgen_73ee32ccdcfd6b12" hs_bindgen_73ee32ccdcfd6b12_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_release@
hs_bindgen_73ee32ccdcfd6b12 ::
     RIP.Ptr Wl_data_device
  -> IO ()
hs_bindgen_73ee32ccdcfd6b12 =
  RIP.fromFFIType hs_bindgen_73ee32ccdcfd6b12_base

{-| This request destroys the data device.

    __C declaration:__ @wl_data_device_release@

    __defined at:__ @wayland-client-protocol.h 3001:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_release ::
     RIP.Ptr Wl_data_device
     -- ^ __C declaration:__ @wl_data_device@
  -> IO ()
wl_data_device_release = hs_bindgen_73ee32ccdcfd6b12

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_set_user_data@
foreign import ccall safe "hs_bindgen_01dab6012bada112" hs_bindgen_01dab6012bada112_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_set_user_data@
hs_bindgen_01dab6012bada112 ::
     RIP.Ptr Wl_data_device_manager
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_01dab6012bada112 =
  RIP.fromFFIType hs_bindgen_01dab6012bada112_base

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
  hs_bindgen_01dab6012bada112

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_get_user_data@
foreign import ccall safe "hs_bindgen_aefba9b75e5f0a45" hs_bindgen_aefba9b75e5f0a45_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_get_user_data@
hs_bindgen_aefba9b75e5f0a45 ::
     RIP.Ptr Wl_data_device_manager
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_aefba9b75e5f0a45 =
  RIP.fromFFIType hs_bindgen_aefba9b75e5f0a45_base

{-| __C declaration:__ @wl_data_device_manager_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3079:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_user_data ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO (RIP.Ptr RIP.Void)
wl_data_device_manager_get_user_data =
  hs_bindgen_aefba9b75e5f0a45

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_get_version@
foreign import ccall safe "hs_bindgen_c22dd5808fce7f68" hs_bindgen_c22dd5808fce7f68_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_get_version@
hs_bindgen_c22dd5808fce7f68 ::
     RIP.Ptr Wl_data_device_manager
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_c22dd5808fce7f68 =
  RIP.fromFFIType hs_bindgen_c22dd5808fce7f68_base

{-| __C declaration:__ @wl_data_device_manager_get_version@

    __defined at:__ @wayland-client-protocol.h 3085:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_version ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_data_device_manager_get_version =
  hs_bindgen_c22dd5808fce7f68

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_destroy@
foreign import ccall safe "hs_bindgen_a55d578c43136dd1" hs_bindgen_a55d578c43136dd1_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_destroy@
hs_bindgen_a55d578c43136dd1 ::
     RIP.Ptr Wl_data_device_manager
  -> IO ()
hs_bindgen_a55d578c43136dd1 =
  RIP.fromFFIType hs_bindgen_a55d578c43136dd1_base

{-| __C declaration:__ @wl_data_device_manager_destroy@

    __defined at:__ @wayland-client-protocol.h 3092:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_destroy ::
     RIP.Ptr Wl_data_device_manager
     -- ^ __C declaration:__ @wl_data_device_manager@
  -> IO ()
wl_data_device_manager_destroy =
  hs_bindgen_a55d578c43136dd1

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_create_data_source@
foreign import ccall safe "hs_bindgen_32b134d1e8718a80" hs_bindgen_32b134d1e8718a80_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_create_data_source@
hs_bindgen_32b134d1e8718a80 ::
     RIP.Ptr Wl_data_device_manager
  -> IO (RIP.Ptr Wl_data_source)
hs_bindgen_32b134d1e8718a80 =
  RIP.fromFFIType hs_bindgen_32b134d1e8718a80_base

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
  hs_bindgen_32b134d1e8718a80

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_get_data_device@
foreign import ccall safe "hs_bindgen_7615860cbeef006a" hs_bindgen_7615860cbeef006a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_data_device_manager_get_data_device@
hs_bindgen_7615860cbeef006a ::
     RIP.Ptr Wl_data_device_manager
  -> RIP.Ptr Wl_seat
  -> IO (RIP.Ptr Wl_data_device)
hs_bindgen_7615860cbeef006a =
  RIP.fromFFIType hs_bindgen_7615860cbeef006a_base

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
  hs_bindgen_7615860cbeef006a

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_set_user_data@
foreign import ccall safe "hs_bindgen_fde0d30e84292cca" hs_bindgen_fde0d30e84292cca_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_set_user_data@
hs_bindgen_fde0d30e84292cca ::
     RIP.Ptr Wl_shell
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_fde0d30e84292cca =
  RIP.fromFFIType hs_bindgen_fde0d30e84292cca_base

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
wl_shell_set_user_data = hs_bindgen_fde0d30e84292cca

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_get_user_data@
foreign import ccall safe "hs_bindgen_c3312dab353c6144" hs_bindgen_c3312dab353c6144_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_get_user_data@
hs_bindgen_c3312dab353c6144 ::
     RIP.Ptr Wl_shell
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_c3312dab353c6144 =
  RIP.fromFFIType hs_bindgen_c3312dab353c6144_base

{-| __C declaration:__ @wl_shell_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3156:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_get_user_data ::
     RIP.Ptr Wl_shell
     -- ^ __C declaration:__ @wl_shell@
  -> IO (RIP.Ptr RIP.Void)
wl_shell_get_user_data = hs_bindgen_c3312dab353c6144

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_get_version@
foreign import ccall safe "hs_bindgen_cd55e4cbdd764627" hs_bindgen_cd55e4cbdd764627_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_get_version@
hs_bindgen_cd55e4cbdd764627 ::
     RIP.Ptr Wl_shell
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_cd55e4cbdd764627 =
  RIP.fromFFIType hs_bindgen_cd55e4cbdd764627_base

{-| __C declaration:__ @wl_shell_get_version@

    __defined at:__ @wayland-client-protocol.h 3162:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_get_version ::
     RIP.Ptr Wl_shell
     -- ^ __C declaration:__ @wl_shell@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shell_get_version = hs_bindgen_cd55e4cbdd764627

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_destroy@
foreign import ccall safe "hs_bindgen_48e190793403ea32" hs_bindgen_48e190793403ea32_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_destroy@
hs_bindgen_48e190793403ea32 ::
     RIP.Ptr Wl_shell
  -> IO ()
hs_bindgen_48e190793403ea32 =
  RIP.fromFFIType hs_bindgen_48e190793403ea32_base

{-| __C declaration:__ @wl_shell_destroy@

    __defined at:__ @wayland-client-protocol.h 3169:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_destroy ::
     RIP.Ptr Wl_shell
     -- ^ __C declaration:__ @wl_shell@
  -> IO ()
wl_shell_destroy = hs_bindgen_48e190793403ea32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_get_shell_surface@
foreign import ccall safe "hs_bindgen_8f6c9b886ae18b1b" hs_bindgen_8f6c9b886ae18b1b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_get_shell_surface@
hs_bindgen_8f6c9b886ae18b1b ::
     RIP.Ptr Wl_shell
  -> RIP.Ptr Wl_surface
  -> IO (RIP.Ptr Wl_shell_surface)
hs_bindgen_8f6c9b886ae18b1b =
  RIP.fromFFIType hs_bindgen_8f6c9b886ae18b1b_base

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
  hs_bindgen_8f6c9b886ae18b1b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_add_listener@
foreign import ccall safe "hs_bindgen_6e4cea4b57d5ef07" hs_bindgen_6e4cea4b57d5ef07_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_add_listener@
hs_bindgen_6e4cea4b57d5ef07 ::
     RIP.Ptr Wl_shell_surface
  -> PtrConst.PtrConst Wl_shell_surface_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_6e4cea4b57d5ef07 =
  RIP.fromFFIType hs_bindgen_6e4cea4b57d5ef07_base

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
  hs_bindgen_6e4cea4b57d5ef07

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_user_data@
foreign import ccall safe "hs_bindgen_a744df44b56d5344" hs_bindgen_a744df44b56d5344_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_user_data@
hs_bindgen_a744df44b56d5344 ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_a744df44b56d5344 =
  RIP.fromFFIType hs_bindgen_a744df44b56d5344_base

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
  hs_bindgen_a744df44b56d5344

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_get_user_data@
foreign import ccall safe "hs_bindgen_96e562aead0b5dcd" hs_bindgen_96e562aead0b5dcd_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_get_user_data@
hs_bindgen_96e562aead0b5dcd ::
     RIP.Ptr Wl_shell_surface
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_96e562aead0b5dcd =
  RIP.fromFFIType hs_bindgen_96e562aead0b5dcd_base

{-| __C declaration:__ @wl_shell_surface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3432:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_get_user_data ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO (RIP.Ptr RIP.Void)
wl_shell_surface_get_user_data =
  hs_bindgen_96e562aead0b5dcd

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_get_version@
foreign import ccall safe "hs_bindgen_4773b9ede4fe6f3d" hs_bindgen_4773b9ede4fe6f3d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_get_version@
hs_bindgen_4773b9ede4fe6f3d ::
     RIP.Ptr Wl_shell_surface
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_4773b9ede4fe6f3d =
  RIP.fromFFIType hs_bindgen_4773b9ede4fe6f3d_base

{-| __C declaration:__ @wl_shell_surface_get_version@

    __defined at:__ @wayland-client-protocol.h 3438:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_get_version ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_shell_surface_get_version =
  hs_bindgen_4773b9ede4fe6f3d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_destroy@
foreign import ccall safe "hs_bindgen_ad82d81c7d81b4cb" hs_bindgen_ad82d81c7d81b4cb_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_destroy@
hs_bindgen_ad82d81c7d81b4cb ::
     RIP.Ptr Wl_shell_surface
  -> IO ()
hs_bindgen_ad82d81c7d81b4cb =
  RIP.fromFFIType hs_bindgen_ad82d81c7d81b4cb_base

{-| __C declaration:__ @wl_shell_surface_destroy@

    __defined at:__ @wayland-client-protocol.h 3445:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_destroy ::
     RIP.Ptr Wl_shell_surface
     -- ^ __C declaration:__ @wl_shell_surface@
  -> IO ()
wl_shell_surface_destroy =
  hs_bindgen_ad82d81c7d81b4cb

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_pong@
foreign import ccall safe "hs_bindgen_ce39fc8627bb0374" hs_bindgen_ce39fc8627bb0374_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_pong@
hs_bindgen_ce39fc8627bb0374 ::
     RIP.Ptr Wl_shell_surface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_ce39fc8627bb0374 =
  RIP.fromFFIType hs_bindgen_ce39fc8627bb0374_base

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
wl_shell_surface_pong = hs_bindgen_ce39fc8627bb0374

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_move@
foreign import ccall safe "hs_bindgen_bbb1a3ddef79d6b4" hs_bindgen_bbb1a3ddef79d6b4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_move@
hs_bindgen_bbb1a3ddef79d6b4 ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_seat
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_bbb1a3ddef79d6b4 =
  RIP.fromFFIType hs_bindgen_bbb1a3ddef79d6b4_base

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
wl_shell_surface_move = hs_bindgen_bbb1a3ddef79d6b4

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_resize@
foreign import ccall safe "hs_bindgen_99160dd35b7970d5" hs_bindgen_99160dd35b7970d5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_resize@
hs_bindgen_99160dd35b7970d5 ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_seat
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_99160dd35b7970d5 =
  RIP.fromFFIType hs_bindgen_99160dd35b7970d5_base

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
wl_shell_surface_resize = hs_bindgen_99160dd35b7970d5

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_toplevel@
foreign import ccall safe "hs_bindgen_5dfc8d7b10149003" hs_bindgen_5dfc8d7b10149003_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_toplevel@
hs_bindgen_5dfc8d7b10149003 ::
     RIP.Ptr Wl_shell_surface
  -> IO ()
hs_bindgen_5dfc8d7b10149003 =
  RIP.fromFFIType hs_bindgen_5dfc8d7b10149003_base

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
  hs_bindgen_5dfc8d7b10149003

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_transient@
foreign import ccall safe "hs_bindgen_ef8c974b79711149" hs_bindgen_ef8c974b79711149_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_transient@
hs_bindgen_ef8c974b79711149 ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_ef8c974b79711149 =
  RIP.fromFFIType hs_bindgen_ef8c974b79711149_base

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
  hs_bindgen_ef8c974b79711149

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_fullscreen@
foreign import ccall safe "hs_bindgen_227d0cfe84e7aa00" hs_bindgen_227d0cfe84e7aa00_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_fullscreen@
hs_bindgen_227d0cfe84e7aa00 ::
     RIP.Ptr Wl_shell_surface
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Wl_output
  -> IO ()
hs_bindgen_227d0cfe84e7aa00 =
  RIP.fromFFIType hs_bindgen_227d0cfe84e7aa00_base

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
  hs_bindgen_227d0cfe84e7aa00

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_popup@
foreign import ccall safe "hs_bindgen_7e134bc698ae94b2" hs_bindgen_7e134bc698ae94b2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_popup@
hs_bindgen_7e134bc698ae94b2 ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_seat
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_7e134bc698ae94b2 =
  RIP.fromFFIType hs_bindgen_7e134bc698ae94b2_base

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
  hs_bindgen_7e134bc698ae94b2

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_maximized@
foreign import ccall safe "hs_bindgen_ab8f701829cb19c0" hs_bindgen_ab8f701829cb19c0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_maximized@
hs_bindgen_ab8f701829cb19c0 ::
     RIP.Ptr Wl_shell_surface
  -> RIP.Ptr Wl_output
  -> IO ()
hs_bindgen_ab8f701829cb19c0 =
  RIP.fromFFIType hs_bindgen_ab8f701829cb19c0_base

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
  hs_bindgen_ab8f701829cb19c0

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_title@
foreign import ccall safe "hs_bindgen_2e395cb2c1016cac" hs_bindgen_2e395cb2c1016cac_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_title@
hs_bindgen_2e395cb2c1016cac ::
     RIP.Ptr Wl_shell_surface
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_2e395cb2c1016cac =
  RIP.fromFFIType hs_bindgen_2e395cb2c1016cac_base

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
  hs_bindgen_2e395cb2c1016cac

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_class@
foreign import ccall safe "hs_bindgen_13a02b017187de66" hs_bindgen_13a02b017187de66_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_shell_surface_set_class@
hs_bindgen_13a02b017187de66 ::
     RIP.Ptr Wl_shell_surface
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_13a02b017187de66 =
  RIP.fromFFIType hs_bindgen_13a02b017187de66_base

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
  hs_bindgen_13a02b017187de66

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_add_listener@
foreign import ccall safe "hs_bindgen_c895fd9055c307b8" hs_bindgen_c895fd9055c307b8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_add_listener@
hs_bindgen_c895fd9055c307b8 ::
     RIP.Ptr Wl_surface
  -> PtrConst.PtrConst Wl_surface_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_c895fd9055c307b8 =
  RIP.fromFFIType hs_bindgen_c895fd9055c307b8_base

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
wl_surface_add_listener = hs_bindgen_c895fd9055c307b8

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_set_user_data@
foreign import ccall safe "hs_bindgen_3936b64fd76ff958" hs_bindgen_3936b64fd76ff958_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_set_user_data@
hs_bindgen_3936b64fd76ff958 ::
     RIP.Ptr Wl_surface
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_3936b64fd76ff958 =
  RIP.fromFFIType hs_bindgen_3936b64fd76ff958_base

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
  hs_bindgen_3936b64fd76ff958

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_get_user_data@
foreign import ccall safe "hs_bindgen_9d26229495b0b950" hs_bindgen_9d26229495b0b950_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_get_user_data@
hs_bindgen_9d26229495b0b950 ::
     RIP.Ptr Wl_surface
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_9d26229495b0b950 =
  RIP.fromFFIType hs_bindgen_9d26229495b0b950_base

{-| __C declaration:__ @wl_surface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3870:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_get_user_data ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO (RIP.Ptr RIP.Void)
wl_surface_get_user_data =
  hs_bindgen_9d26229495b0b950

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_get_version@
foreign import ccall safe "hs_bindgen_1959b276d85514a1" hs_bindgen_1959b276d85514a1_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_get_version@
hs_bindgen_1959b276d85514a1 ::
     RIP.Ptr Wl_surface
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_1959b276d85514a1 =
  RIP.fromFFIType hs_bindgen_1959b276d85514a1_base

{-| __C declaration:__ @wl_surface_get_version@

    __defined at:__ @wayland-client-protocol.h 3876:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_get_version ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_surface_get_version = hs_bindgen_1959b276d85514a1

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_destroy@
foreign import ccall safe "hs_bindgen_cf64df6b46cbf0f3" hs_bindgen_cf64df6b46cbf0f3_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_destroy@
hs_bindgen_cf64df6b46cbf0f3 ::
     RIP.Ptr Wl_surface
  -> IO ()
hs_bindgen_cf64df6b46cbf0f3 =
  RIP.fromFFIType hs_bindgen_cf64df6b46cbf0f3_base

{-| Deletes the surface and invalidates its object ID.

    __C declaration:__ @wl_surface_destroy@

    __defined at:__ @wayland-client-protocol.h 3887:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_surface_destroy ::
     RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @wl_surface@
  -> IO ()
wl_surface_destroy = hs_bindgen_cf64df6b46cbf0f3

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_attach@
foreign import ccall safe "hs_bindgen_8d56a9cbd337e025" hs_bindgen_8d56a9cbd337e025_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_attach@
hs_bindgen_8d56a9cbd337e025 ::
     RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_buffer
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_8d56a9cbd337e025 =
  RIP.fromFFIType hs_bindgen_8d56a9cbd337e025_base

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
wl_surface_attach = hs_bindgen_8d56a9cbd337e025

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_damage@
foreign import ccall safe "hs_bindgen_94f85f4dd291199f" hs_bindgen_94f85f4dd291199f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_damage@
hs_bindgen_94f85f4dd291199f ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_94f85f4dd291199f =
  RIP.fromFFIType hs_bindgen_94f85f4dd291199f_base

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
wl_surface_damage = hs_bindgen_94f85f4dd291199f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_frame@
foreign import ccall safe "hs_bindgen_9d607bd7dc3df487" hs_bindgen_9d607bd7dc3df487_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_frame@
hs_bindgen_9d607bd7dc3df487 ::
     RIP.Ptr Wl_surface
  -> IO (RIP.Ptr Wl_callback)
hs_bindgen_9d607bd7dc3df487 =
  RIP.fromFFIType hs_bindgen_9d607bd7dc3df487_base

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
wl_surface_frame = hs_bindgen_9d607bd7dc3df487

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_set_opaque_region@
foreign import ccall safe "hs_bindgen_7b42843167a9f969" hs_bindgen_7b42843167a9f969_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_set_opaque_region@
hs_bindgen_7b42843167a9f969 ::
     RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_region
  -> IO ()
hs_bindgen_7b42843167a9f969 =
  RIP.fromFFIType hs_bindgen_7b42843167a9f969_base

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
  hs_bindgen_7b42843167a9f969

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_set_input_region@
foreign import ccall safe "hs_bindgen_98dad4bdb6e3fe91" hs_bindgen_98dad4bdb6e3fe91_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_set_input_region@
hs_bindgen_98dad4bdb6e3fe91 ::
     RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_region
  -> IO ()
hs_bindgen_98dad4bdb6e3fe91 =
  RIP.fromFFIType hs_bindgen_98dad4bdb6e3fe91_base

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
  hs_bindgen_98dad4bdb6e3fe91

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_commit@
foreign import ccall safe "hs_bindgen_165e76f923bc5268" hs_bindgen_165e76f923bc5268_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_commit@
hs_bindgen_165e76f923bc5268 ::
     RIP.Ptr Wl_surface
  -> IO ()
hs_bindgen_165e76f923bc5268 =
  RIP.fromFFIType hs_bindgen_165e76f923bc5268_base

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
wl_surface_commit = hs_bindgen_165e76f923bc5268

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_set_buffer_transform@
foreign import ccall safe "hs_bindgen_90d4b80a6e0d8a8e" hs_bindgen_90d4b80a6e0d8a8e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_set_buffer_transform@
hs_bindgen_90d4b80a6e0d8a8e ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_90d4b80a6e0d8a8e =
  RIP.fromFFIType hs_bindgen_90d4b80a6e0d8a8e_base

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
  hs_bindgen_90d4b80a6e0d8a8e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_set_buffer_scale@
foreign import ccall safe "hs_bindgen_e0db11ff6db1719f" hs_bindgen_e0db11ff6db1719f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_set_buffer_scale@
hs_bindgen_e0db11ff6db1719f ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_e0db11ff6db1719f =
  RIP.fromFFIType hs_bindgen_e0db11ff6db1719f_base

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
  hs_bindgen_e0db11ff6db1719f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_damage_buffer@
foreign import ccall safe "hs_bindgen_dc0285dd9796a1a4" hs_bindgen_dc0285dd9796a1a4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_damage_buffer@
hs_bindgen_dc0285dd9796a1a4 ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_dc0285dd9796a1a4 =
  RIP.fromFFIType hs_bindgen_dc0285dd9796a1a4_base

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
  hs_bindgen_dc0285dd9796a1a4

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_offset@
foreign import ccall safe "hs_bindgen_bf3a36b8d9e3f208" hs_bindgen_bf3a36b8d9e3f208_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_surface_offset@
hs_bindgen_bf3a36b8d9e3f208 ::
     RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_bf3a36b8d9e3f208 =
  RIP.fromFFIType hs_bindgen_bf3a36b8d9e3f208_base

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
wl_surface_offset = hs_bindgen_bf3a36b8d9e3f208

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_seat_add_listener@
foreign import ccall safe "hs_bindgen_45c539fbcd74c0be" hs_bindgen_45c539fbcd74c0be_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_seat_add_listener@
hs_bindgen_45c539fbcd74c0be ::
     RIP.Ptr Wl_seat
  -> PtrConst.PtrConst Wl_seat_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_45c539fbcd74c0be =
  RIP.fromFFIType hs_bindgen_45c539fbcd74c0be_base

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
wl_seat_add_listener = hs_bindgen_45c539fbcd74c0be

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_seat_set_user_data@
foreign import ccall safe "hs_bindgen_a71198b5a9a41e60" hs_bindgen_a71198b5a9a41e60_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_seat_set_user_data@
hs_bindgen_a71198b5a9a41e60 ::
     RIP.Ptr Wl_seat
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_a71198b5a9a41e60 =
  RIP.fromFFIType hs_bindgen_a71198b5a9a41e60_base

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
wl_seat_set_user_data = hs_bindgen_a71198b5a9a41e60

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_seat_get_user_data@
foreign import ccall safe "hs_bindgen_7d01924e8259862f" hs_bindgen_7d01924e8259862f_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_seat_get_user_data@
hs_bindgen_7d01924e8259862f ::
     RIP.Ptr Wl_seat
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_7d01924e8259862f =
  RIP.fromFFIType hs_bindgen_7d01924e8259862f_base

{-| __C declaration:__ @wl_seat_get_user_data@

    __defined at:__ @wayland-client-protocol.h 4453:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_get_user_data ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO (RIP.Ptr RIP.Void)
wl_seat_get_user_data = hs_bindgen_7d01924e8259862f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_seat_get_version@
foreign import ccall safe "hs_bindgen_c8567ec4dcfaa98b" hs_bindgen_c8567ec4dcfaa98b_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_seat_get_version@
hs_bindgen_c8567ec4dcfaa98b ::
     RIP.Ptr Wl_seat
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_c8567ec4dcfaa98b =
  RIP.fromFFIType hs_bindgen_c8567ec4dcfaa98b_base

{-| __C declaration:__ @wl_seat_get_version@

    __defined at:__ @wayland-client-protocol.h 4459:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_get_version ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_seat_get_version = hs_bindgen_c8567ec4dcfaa98b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_seat_destroy@
foreign import ccall safe "hs_bindgen_a516ae81e192cb8b" hs_bindgen_a516ae81e192cb8b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_seat_destroy@
hs_bindgen_a516ae81e192cb8b ::
     RIP.Ptr Wl_seat
  -> IO ()
hs_bindgen_a516ae81e192cb8b =
  RIP.fromFFIType hs_bindgen_a516ae81e192cb8b_base

{-| __C declaration:__ @wl_seat_destroy@

    __defined at:__ @wayland-client-protocol.h 4466:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_destroy ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO ()
wl_seat_destroy = hs_bindgen_a516ae81e192cb8b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_seat_get_pointer@
foreign import ccall safe "hs_bindgen_835145ef74872cec" hs_bindgen_835145ef74872cec_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_seat_get_pointer@
hs_bindgen_835145ef74872cec ::
     RIP.Ptr Wl_seat
  -> IO (RIP.Ptr Wl_pointer)
hs_bindgen_835145ef74872cec =
  RIP.fromFFIType hs_bindgen_835145ef74872cec_base

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
wl_seat_get_pointer = hs_bindgen_835145ef74872cec

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_seat_get_keyboard@
foreign import ccall safe "hs_bindgen_28c834fc368033f4" hs_bindgen_28c834fc368033f4_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_seat_get_keyboard@
hs_bindgen_28c834fc368033f4 ::
     RIP.Ptr Wl_seat
  -> IO (RIP.Ptr Wl_keyboard)
hs_bindgen_28c834fc368033f4 =
  RIP.fromFFIType hs_bindgen_28c834fc368033f4_base

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
wl_seat_get_keyboard = hs_bindgen_28c834fc368033f4

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_seat_get_touch@
foreign import ccall safe "hs_bindgen_95f0bafa191ef19e" hs_bindgen_95f0bafa191ef19e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_seat_get_touch@
hs_bindgen_95f0bafa191ef19e ::
     RIP.Ptr Wl_seat
  -> IO (RIP.Ptr Wl_touch)
hs_bindgen_95f0bafa191ef19e =
  RIP.fromFFIType hs_bindgen_95f0bafa191ef19e_base

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
wl_seat_get_touch = hs_bindgen_95f0bafa191ef19e

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_seat_release@
foreign import ccall safe "hs_bindgen_30156de81ed42fd0" hs_bindgen_30156de81ed42fd0_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_seat_release@
hs_bindgen_30156de81ed42fd0 ::
     RIP.Ptr Wl_seat
  -> IO ()
hs_bindgen_30156de81ed42fd0 =
  RIP.fromFFIType hs_bindgen_30156de81ed42fd0_base

{-| Using this request a client can tell the server that it is not going to use the seat object anymore.

    __C declaration:__ @wl_seat_release@

    __defined at:__ @wayland-client-protocol.h 4547:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_seat_release ::
     RIP.Ptr Wl_seat
     -- ^ __C declaration:__ @wl_seat@
  -> IO ()
wl_seat_release = hs_bindgen_30156de81ed42fd0

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_pointer_add_listener@
foreign import ccall safe "hs_bindgen_27c5d1bcac16cbe8" hs_bindgen_27c5d1bcac16cbe8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_pointer_add_listener@
hs_bindgen_27c5d1bcac16cbe8 ::
     RIP.Ptr Wl_pointer
  -> PtrConst.PtrConst Wl_pointer_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_27c5d1bcac16cbe8 =
  RIP.fromFFIType hs_bindgen_27c5d1bcac16cbe8_base

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
wl_pointer_add_listener = hs_bindgen_27c5d1bcac16cbe8

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_pointer_set_user_data@
foreign import ccall safe "hs_bindgen_be60b9805399b9f5" hs_bindgen_be60b9805399b9f5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_pointer_set_user_data@
hs_bindgen_be60b9805399b9f5 ::
     RIP.Ptr Wl_pointer
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_be60b9805399b9f5 =
  RIP.fromFFIType hs_bindgen_be60b9805399b9f5_base

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
  hs_bindgen_be60b9805399b9f5

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_pointer_get_user_data@
foreign import ccall safe "hs_bindgen_101e597025255d92" hs_bindgen_101e597025255d92_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_pointer_get_user_data@
hs_bindgen_101e597025255d92 ::
     RIP.Ptr Wl_pointer
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_101e597025255d92 =
  RIP.fromFFIType hs_bindgen_101e597025255d92_base

{-| __C declaration:__ @wl_pointer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5083:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_pointer_get_user_data ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO (RIP.Ptr RIP.Void)
wl_pointer_get_user_data =
  hs_bindgen_101e597025255d92

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_pointer_get_version@
foreign import ccall safe "hs_bindgen_35ae89b84a420880" hs_bindgen_35ae89b84a420880_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_pointer_get_version@
hs_bindgen_35ae89b84a420880 ::
     RIP.Ptr Wl_pointer
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_35ae89b84a420880 =
  RIP.fromFFIType hs_bindgen_35ae89b84a420880_base

{-| __C declaration:__ @wl_pointer_get_version@

    __defined at:__ @wayland-client-protocol.h 5089:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_pointer_get_version ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_pointer_get_version = hs_bindgen_35ae89b84a420880

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_pointer_destroy@
foreign import ccall safe "hs_bindgen_9bfd8c27acfb1f04" hs_bindgen_9bfd8c27acfb1f04_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_pointer_destroy@
hs_bindgen_9bfd8c27acfb1f04 ::
     RIP.Ptr Wl_pointer
  -> IO ()
hs_bindgen_9bfd8c27acfb1f04 =
  RIP.fromFFIType hs_bindgen_9bfd8c27acfb1f04_base

{-| __C declaration:__ @wl_pointer_destroy@

    __defined at:__ @wayland-client-protocol.h 5096:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_pointer_destroy ::
     RIP.Ptr Wl_pointer
     -- ^ __C declaration:__ @wl_pointer@
  -> IO ()
wl_pointer_destroy = hs_bindgen_9bfd8c27acfb1f04

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_pointer_set_cursor@
foreign import ccall safe "hs_bindgen_266266a9e16876d1" hs_bindgen_266266a9e16876d1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_pointer_set_cursor@
hs_bindgen_266266a9e16876d1 ::
     RIP.Ptr Wl_pointer
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Wl_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_266266a9e16876d1 =
  RIP.fromFFIType hs_bindgen_266266a9e16876d1_base

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
wl_pointer_set_cursor = hs_bindgen_266266a9e16876d1

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_pointer_release@
foreign import ccall safe "hs_bindgen_b986ff77d2ba320f" hs_bindgen_b986ff77d2ba320f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_pointer_release@
hs_bindgen_b986ff77d2ba320f ::
     RIP.Ptr Wl_pointer
  -> IO ()
hs_bindgen_b986ff77d2ba320f =
  RIP.fromFFIType hs_bindgen_b986ff77d2ba320f_base

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
wl_pointer_release = hs_bindgen_b986ff77d2ba320f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_add_listener@
foreign import ccall safe "hs_bindgen_cfef5fb6570ef667" hs_bindgen_cfef5fb6570ef667_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_add_listener@
hs_bindgen_cfef5fb6570ef667 ::
     RIP.Ptr Wl_keyboard
  -> PtrConst.PtrConst Wl_keyboard_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_cfef5fb6570ef667 =
  RIP.fromFFIType hs_bindgen_cfef5fb6570ef667_base

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
  hs_bindgen_cfef5fb6570ef667

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_set_user_data@
foreign import ccall safe "hs_bindgen_67735a481956ae4f" hs_bindgen_67735a481956ae4f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_set_user_data@
hs_bindgen_67735a481956ae4f ::
     RIP.Ptr Wl_keyboard
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_67735a481956ae4f =
  RIP.fromFFIType hs_bindgen_67735a481956ae4f_base

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
  hs_bindgen_67735a481956ae4f

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_get_user_data@
foreign import ccall safe "hs_bindgen_dff44b8d3337f026" hs_bindgen_dff44b8d3337f026_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_get_user_data@
hs_bindgen_dff44b8d3337f026 ::
     RIP.Ptr Wl_keyboard
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_dff44b8d3337f026 =
  RIP.fromFFIType hs_bindgen_dff44b8d3337f026_base

{-| __C declaration:__ @wl_keyboard_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5433:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_keyboard_get_user_data ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO (RIP.Ptr RIP.Void)
wl_keyboard_get_user_data =
  hs_bindgen_dff44b8d3337f026

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_get_version@
foreign import ccall safe "hs_bindgen_f85ba1e4935c0a2d" hs_bindgen_f85ba1e4935c0a2d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_get_version@
hs_bindgen_f85ba1e4935c0a2d ::
     RIP.Ptr Wl_keyboard
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_f85ba1e4935c0a2d =
  RIP.fromFFIType hs_bindgen_f85ba1e4935c0a2d_base

{-| __C declaration:__ @wl_keyboard_get_version@

    __defined at:__ @wayland-client-protocol.h 5439:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_keyboard_get_version ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_keyboard_get_version = hs_bindgen_f85ba1e4935c0a2d

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_destroy@
foreign import ccall safe "hs_bindgen_4fed16fcba3fdd61" hs_bindgen_4fed16fcba3fdd61_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_destroy@
hs_bindgen_4fed16fcba3fdd61 ::
     RIP.Ptr Wl_keyboard
  -> IO ()
hs_bindgen_4fed16fcba3fdd61 =
  RIP.fromFFIType hs_bindgen_4fed16fcba3fdd61_base

{-| __C declaration:__ @wl_keyboard_destroy@

    __defined at:__ @wayland-client-protocol.h 5446:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_keyboard_destroy ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO ()
wl_keyboard_destroy = hs_bindgen_4fed16fcba3fdd61

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_release@
foreign import ccall safe "hs_bindgen_d3c7e2d4f955cbad" hs_bindgen_d3c7e2d4f955cbad_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_keyboard_release@
hs_bindgen_d3c7e2d4f955cbad ::
     RIP.Ptr Wl_keyboard
  -> IO ()
hs_bindgen_d3c7e2d4f955cbad =
  RIP.fromFFIType hs_bindgen_d3c7e2d4f955cbad_base

{-| __C declaration:__ @wl_keyboard_release@

    __defined at:__ @wayland-client-protocol.h 5455:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_keyboard_release ::
     RIP.Ptr Wl_keyboard
     -- ^ __C declaration:__ @wl_keyboard@
  -> IO ()
wl_keyboard_release = hs_bindgen_d3c7e2d4f955cbad

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_touch_add_listener@
foreign import ccall safe "hs_bindgen_7a19ac2bfb9ec80b" hs_bindgen_7a19ac2bfb9ec80b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_touch_add_listener@
hs_bindgen_7a19ac2bfb9ec80b ::
     RIP.Ptr Wl_touch
  -> PtrConst.PtrConst Wl_touch_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_7a19ac2bfb9ec80b =
  RIP.fromFFIType hs_bindgen_7a19ac2bfb9ec80b_base

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
wl_touch_add_listener = hs_bindgen_7a19ac2bfb9ec80b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_touch_set_user_data@
foreign import ccall safe "hs_bindgen_32b77d7dfd4d549b" hs_bindgen_32b77d7dfd4d549b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_touch_set_user_data@
hs_bindgen_32b77d7dfd4d549b ::
     RIP.Ptr Wl_touch
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_32b77d7dfd4d549b =
  RIP.fromFFIType hs_bindgen_32b77d7dfd4d549b_base

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
wl_touch_set_user_data = hs_bindgen_32b77d7dfd4d549b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_touch_get_user_data@
foreign import ccall safe "hs_bindgen_862b694e9a2c4879" hs_bindgen_862b694e9a2c4879_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_touch_get_user_data@
hs_bindgen_862b694e9a2c4879 ::
     RIP.Ptr Wl_touch
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_862b694e9a2c4879 =
  RIP.fromFFIType hs_bindgen_862b694e9a2c4879_base

{-| __C declaration:__ @wl_touch_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5677:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_touch_get_user_data ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> IO (RIP.Ptr RIP.Void)
wl_touch_get_user_data = hs_bindgen_862b694e9a2c4879

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_touch_get_version@
foreign import ccall safe "hs_bindgen_21c40fba3499b0fc" hs_bindgen_21c40fba3499b0fc_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_touch_get_version@
hs_bindgen_21c40fba3499b0fc ::
     RIP.Ptr Wl_touch
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_21c40fba3499b0fc =
  RIP.fromFFIType hs_bindgen_21c40fba3499b0fc_base

{-| __C declaration:__ @wl_touch_get_version@

    __defined at:__ @wayland-client-protocol.h 5683:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_touch_get_version ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_touch_get_version = hs_bindgen_21c40fba3499b0fc

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_touch_destroy@
foreign import ccall safe "hs_bindgen_c6821c316356b5ec" hs_bindgen_c6821c316356b5ec_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_touch_destroy@
hs_bindgen_c6821c316356b5ec ::
     RIP.Ptr Wl_touch
  -> IO ()
hs_bindgen_c6821c316356b5ec =
  RIP.fromFFIType hs_bindgen_c6821c316356b5ec_base

{-| __C declaration:__ @wl_touch_destroy@

    __defined at:__ @wayland-client-protocol.h 5690:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_touch_destroy ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> IO ()
wl_touch_destroy = hs_bindgen_c6821c316356b5ec

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_touch_release@
foreign import ccall safe "hs_bindgen_4ef4852ccfb18485" hs_bindgen_4ef4852ccfb18485_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_touch_release@
hs_bindgen_4ef4852ccfb18485 ::
     RIP.Ptr Wl_touch
  -> IO ()
hs_bindgen_4ef4852ccfb18485 =
  RIP.fromFFIType hs_bindgen_4ef4852ccfb18485_base

{-| __C declaration:__ @wl_touch_release@

    __defined at:__ @wayland-client-protocol.h 5699:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_touch_release ::
     RIP.Ptr Wl_touch
     -- ^ __C declaration:__ @wl_touch@
  -> IO ()
wl_touch_release = hs_bindgen_4ef4852ccfb18485

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_output_add_listener@
foreign import ccall safe "hs_bindgen_8a7aa13ea43d96a8" hs_bindgen_8a7aa13ea43d96a8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_output_add_listener@
hs_bindgen_8a7aa13ea43d96a8 ::
     RIP.Ptr Wl_output
  -> PtrConst.PtrConst Wl_output_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_8a7aa13ea43d96a8 =
  RIP.fromFFIType hs_bindgen_8a7aa13ea43d96a8_base

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
wl_output_add_listener = hs_bindgen_8a7aa13ea43d96a8

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_output_set_user_data@
foreign import ccall safe "hs_bindgen_de178bcc6e2652d9" hs_bindgen_de178bcc6e2652d9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_output_set_user_data@
hs_bindgen_de178bcc6e2652d9 ::
     RIP.Ptr Wl_output
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_de178bcc6e2652d9 =
  RIP.fromFFIType hs_bindgen_de178bcc6e2652d9_base

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
wl_output_set_user_data = hs_bindgen_de178bcc6e2652d9

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_output_get_user_data@
foreign import ccall safe "hs_bindgen_9c94962093ed77b5" hs_bindgen_9c94962093ed77b5_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_output_get_user_data@
hs_bindgen_9c94962093ed77b5 ::
     RIP.Ptr Wl_output
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_9c94962093ed77b5 =
  RIP.fromFFIType hs_bindgen_9c94962093ed77b5_base

{-| __C declaration:__ @wl_output_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6066:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_output_get_user_data ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> IO (RIP.Ptr RIP.Void)
wl_output_get_user_data = hs_bindgen_9c94962093ed77b5

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_output_get_version@
foreign import ccall safe "hs_bindgen_1f90c2cb9b02bf82" hs_bindgen_1f90c2cb9b02bf82_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_output_get_version@
hs_bindgen_1f90c2cb9b02bf82 ::
     RIP.Ptr Wl_output
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_1f90c2cb9b02bf82 =
  RIP.fromFFIType hs_bindgen_1f90c2cb9b02bf82_base

{-| __C declaration:__ @wl_output_get_version@

    __defined at:__ @wayland-client-protocol.h 6072:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_output_get_version ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_output_get_version = hs_bindgen_1f90c2cb9b02bf82

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_output_destroy@
foreign import ccall safe "hs_bindgen_fe7e6e34b3432edd" hs_bindgen_fe7e6e34b3432edd_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_output_destroy@
hs_bindgen_fe7e6e34b3432edd ::
     RIP.Ptr Wl_output
  -> IO ()
hs_bindgen_fe7e6e34b3432edd =
  RIP.fromFFIType hs_bindgen_fe7e6e34b3432edd_base

{-| __C declaration:__ @wl_output_destroy@

    __defined at:__ @wayland-client-protocol.h 6079:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_output_destroy ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> IO ()
wl_output_destroy = hs_bindgen_fe7e6e34b3432edd

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_output_release@
foreign import ccall safe "hs_bindgen_d7d7b32f80272391" hs_bindgen_d7d7b32f80272391_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_output_release@
hs_bindgen_d7d7b32f80272391 ::
     RIP.Ptr Wl_output
  -> IO ()
hs_bindgen_d7d7b32f80272391 =
  RIP.fromFFIType hs_bindgen_d7d7b32f80272391_base

{-| Using this request a client can tell the server that it is not going to use the output object anymore.

    __C declaration:__ @wl_output_release@

    __defined at:__ @wayland-client-protocol.h 6091:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_output_release ::
     RIP.Ptr Wl_output
     -- ^ __C declaration:__ @wl_output@
  -> IO ()
wl_output_release = hs_bindgen_d7d7b32f80272391

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_region_set_user_data@
foreign import ccall safe "hs_bindgen_f895562b9f5af021" hs_bindgen_f895562b9f5af021_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_region_set_user_data@
hs_bindgen_f895562b9f5af021 ::
     RIP.Ptr Wl_region
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_f895562b9f5af021 =
  RIP.fromFFIType hs_bindgen_f895562b9f5af021_base

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
wl_region_set_user_data = hs_bindgen_f895562b9f5af021

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_region_get_user_data@
foreign import ccall safe "hs_bindgen_752f2874d1327be2" hs_bindgen_752f2874d1327be2_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_region_get_user_data@
hs_bindgen_752f2874d1327be2 ::
     RIP.Ptr Wl_region
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_752f2874d1327be2 =
  RIP.fromFFIType hs_bindgen_752f2874d1327be2_base

{-| __C declaration:__ @wl_region_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6124:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_region_get_user_data ::
     RIP.Ptr Wl_region
     -- ^ __C declaration:__ @wl_region@
  -> IO (RIP.Ptr RIP.Void)
wl_region_get_user_data = hs_bindgen_752f2874d1327be2

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_region_get_version@
foreign import ccall safe "hs_bindgen_8c7175f2a966ca3c" hs_bindgen_8c7175f2a966ca3c_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_region_get_version@
hs_bindgen_8c7175f2a966ca3c ::
     RIP.Ptr Wl_region
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_8c7175f2a966ca3c =
  RIP.fromFFIType hs_bindgen_8c7175f2a966ca3c_base

{-| __C declaration:__ @wl_region_get_version@

    __defined at:__ @wayland-client-protocol.h 6130:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_region_get_version ::
     RIP.Ptr Wl_region
     -- ^ __C declaration:__ @wl_region@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_region_get_version = hs_bindgen_8c7175f2a966ca3c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_region_destroy@
foreign import ccall safe "hs_bindgen_c73110e755195466" hs_bindgen_c73110e755195466_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_region_destroy@
hs_bindgen_c73110e755195466 ::
     RIP.Ptr Wl_region
  -> IO ()
hs_bindgen_c73110e755195466 =
  RIP.fromFFIType hs_bindgen_c73110e755195466_base

{-| Destroy the region. This will invalidate the object ID.

    __C declaration:__ @wl_region_destroy@

    __defined at:__ @wayland-client-protocol.h 6141:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_region_destroy ::
     RIP.Ptr Wl_region
     -- ^ __C declaration:__ @wl_region@
  -> IO ()
wl_region_destroy = hs_bindgen_c73110e755195466

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_region_add@
foreign import ccall safe "hs_bindgen_d5f442993582aa68" hs_bindgen_d5f442993582aa68_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_region_add@
hs_bindgen_d5f442993582aa68 ::
     RIP.Ptr Wl_region
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_d5f442993582aa68 =
  RIP.fromFFIType hs_bindgen_d5f442993582aa68_base

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
wl_region_add = hs_bindgen_d5f442993582aa68

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_region_subtract@
foreign import ccall safe "hs_bindgen_afc4395e5115621b" hs_bindgen_afc4395e5115621b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_region_subtract@
hs_bindgen_afc4395e5115621b ::
     RIP.Ptr Wl_region
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_afc4395e5115621b =
  RIP.fromFFIType hs_bindgen_afc4395e5115621b_base

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
wl_region_subtract = hs_bindgen_afc4395e5115621b

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subcompositor_set_user_data@
foreign import ccall safe "hs_bindgen_373bf0771aa4ae1a" hs_bindgen_373bf0771aa4ae1a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subcompositor_set_user_data@
hs_bindgen_373bf0771aa4ae1a ::
     RIP.Ptr Wl_subcompositor
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_373bf0771aa4ae1a =
  RIP.fromFFIType hs_bindgen_373bf0771aa4ae1a_base

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
  hs_bindgen_373bf0771aa4ae1a

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subcompositor_get_user_data@
foreign import ccall safe "hs_bindgen_8e614bdc6f1bcfe3" hs_bindgen_8e614bdc6f1bcfe3_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subcompositor_get_user_data@
hs_bindgen_8e614bdc6f1bcfe3 ::
     RIP.Ptr Wl_subcompositor
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_8e614bdc6f1bcfe3 =
  RIP.fromFFIType hs_bindgen_8e614bdc6f1bcfe3_base

{-| __C declaration:__ @wl_subcompositor_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6207:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_user_data ::
     RIP.Ptr Wl_subcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> IO (RIP.Ptr RIP.Void)
wl_subcompositor_get_user_data =
  hs_bindgen_8e614bdc6f1bcfe3

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subcompositor_get_version@
foreign import ccall safe "hs_bindgen_302de69bc97141cf" hs_bindgen_302de69bc97141cf_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subcompositor_get_version@
hs_bindgen_302de69bc97141cf ::
     RIP.Ptr Wl_subcompositor
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_302de69bc97141cf =
  RIP.fromFFIType hs_bindgen_302de69bc97141cf_base

{-| __C declaration:__ @wl_subcompositor_get_version@

    __defined at:__ @wayland-client-protocol.h 6213:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_version ::
     RIP.Ptr Wl_subcompositor
     -- ^ __C declaration:__ @wl_subcompositor@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_subcompositor_get_version =
  hs_bindgen_302de69bc97141cf

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subcompositor_destroy@
foreign import ccall safe "hs_bindgen_94df15227120bccf" hs_bindgen_94df15227120bccf_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subcompositor_destroy@
hs_bindgen_94df15227120bccf ::
     RIP.Ptr Wl_subcompositor
  -> IO ()
hs_bindgen_94df15227120bccf =
  RIP.fromFFIType hs_bindgen_94df15227120bccf_base

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
  hs_bindgen_94df15227120bccf

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subcompositor_get_subsurface@
foreign import ccall safe "hs_bindgen_e824da3ffd609848" hs_bindgen_e824da3ffd609848_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subcompositor_get_subsurface@
hs_bindgen_e824da3ffd609848 ::
     RIP.Ptr Wl_subcompositor
  -> RIP.Ptr Wl_surface
  -> RIP.Ptr Wl_surface
  -> IO (RIP.Ptr Wl_subsurface)
hs_bindgen_e824da3ffd609848 =
  RIP.fromFFIType hs_bindgen_e824da3ffd609848_base

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
  hs_bindgen_e824da3ffd609848

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_set_user_data@
foreign import ccall safe "hs_bindgen_f4d820543fccf5ee" hs_bindgen_f4d820543fccf5ee_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_set_user_data@
hs_bindgen_f4d820543fccf5ee ::
     RIP.Ptr Wl_subsurface
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_f4d820543fccf5ee =
  RIP.fromFFIType hs_bindgen_f4d820543fccf5ee_base

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
  hs_bindgen_f4d820543fccf5ee

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_get_user_data@
foreign import ccall safe "hs_bindgen_a940d815e7c319cc" hs_bindgen_a940d815e7c319cc_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_get_user_data@
hs_bindgen_a940d815e7c319cc ::
     RIP.Ptr Wl_subsurface
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_a940d815e7c319cc =
  RIP.fromFFIType hs_bindgen_a940d815e7c319cc_base

{-| __C declaration:__ @wl_subsurface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6318:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subsurface_get_user_data ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO (RIP.Ptr RIP.Void)
wl_subsurface_get_user_data =
  hs_bindgen_a940d815e7c319cc

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_get_version@
foreign import ccall safe "hs_bindgen_f960cabde48332cd" hs_bindgen_f960cabde48332cd_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_get_version@
hs_bindgen_f960cabde48332cd ::
     RIP.Ptr Wl_subsurface
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_f960cabde48332cd =
  RIP.fromFFIType hs_bindgen_f960cabde48332cd_base

{-| __C declaration:__ @wl_subsurface_get_version@

    __defined at:__ @wayland-client-protocol.h 6324:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subsurface_get_version ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_subsurface_get_version =
  hs_bindgen_f960cabde48332cd

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_destroy@
foreign import ccall safe "hs_bindgen_f4d019fd43b5c322" hs_bindgen_f4d019fd43b5c322_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_destroy@
hs_bindgen_f4d019fd43b5c322 ::
     RIP.Ptr Wl_subsurface
  -> IO ()
hs_bindgen_f4d019fd43b5c322 =
  RIP.fromFFIType hs_bindgen_f4d019fd43b5c322_base

{-| The sub-surface interface is removed from the wl_surface object that was turned into a sub-surface with a wl_subcompositor.get_subsurface request. The wl_surface's association to the parent is deleted. The wl_surface is unmapped immediately.

    __C declaration:__ @wl_subsurface_destroy@

    __defined at:__ @wayland-client-protocol.h 6338:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_subsurface_destroy ::
     RIP.Ptr Wl_subsurface
     -- ^ __C declaration:__ @wl_subsurface@
  -> IO ()
wl_subsurface_destroy = hs_bindgen_f4d019fd43b5c322

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_set_position@
foreign import ccall safe "hs_bindgen_9e2d5b9e7d3e6fd9" hs_bindgen_9e2d5b9e7d3e6fd9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_set_position@
hs_bindgen_9e2d5b9e7d3e6fd9 ::
     RIP.Ptr Wl_subsurface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_9e2d5b9e7d3e6fd9 =
  RIP.fromFFIType hs_bindgen_9e2d5b9e7d3e6fd9_base

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
  hs_bindgen_9e2d5b9e7d3e6fd9

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_place_above@
foreign import ccall safe "hs_bindgen_7ca593576526e1ea" hs_bindgen_7ca593576526e1ea_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_place_above@
hs_bindgen_7ca593576526e1ea ::
     RIP.Ptr Wl_subsurface
  -> RIP.Ptr Wl_surface
  -> IO ()
hs_bindgen_7ca593576526e1ea =
  RIP.fromFFIType hs_bindgen_7ca593576526e1ea_base

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
  hs_bindgen_7ca593576526e1ea

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_place_below@
foreign import ccall safe "hs_bindgen_5aa0b922d2108b9c" hs_bindgen_5aa0b922d2108b9c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_place_below@
hs_bindgen_5aa0b922d2108b9c ::
     RIP.Ptr Wl_subsurface
  -> RIP.Ptr Wl_surface
  -> IO ()
hs_bindgen_5aa0b922d2108b9c =
  RIP.fromFFIType hs_bindgen_5aa0b922d2108b9c_base

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
  hs_bindgen_5aa0b922d2108b9c

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_set_sync@
foreign import ccall safe "hs_bindgen_b50a1cfd29df4785" hs_bindgen_b50a1cfd29df4785_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_set_sync@
hs_bindgen_b50a1cfd29df4785 ::
     RIP.Ptr Wl_subsurface
  -> IO ()
hs_bindgen_b50a1cfd29df4785 =
  RIP.fromFFIType hs_bindgen_b50a1cfd29df4785_base

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
wl_subsurface_set_sync = hs_bindgen_b50a1cfd29df4785

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_set_desync@
foreign import ccall safe "hs_bindgen_26cc4b39caf76692" hs_bindgen_26cc4b39caf76692_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_subsurface_set_desync@
hs_bindgen_26cc4b39caf76692 ::
     RIP.Ptr Wl_subsurface
  -> IO ()
hs_bindgen_26cc4b39caf76692 =
  RIP.fromFFIType hs_bindgen_26cc4b39caf76692_base

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
  hs_bindgen_26cc4b39caf76692

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_fixes_set_user_data@
foreign import ccall safe "hs_bindgen_ba5d7d7b9f317540" hs_bindgen_ba5d7d7b9f317540_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_fixes_set_user_data@
hs_bindgen_ba5d7d7b9f317540 ::
     RIP.Ptr Wl_fixes
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_ba5d7d7b9f317540 =
  RIP.fromFFIType hs_bindgen_ba5d7d7b9f317540_base

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
wl_fixes_set_user_data = hs_bindgen_ba5d7d7b9f317540

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_fixes_get_user_data@
foreign import ccall safe "hs_bindgen_d23ce2c867804f66" hs_bindgen_d23ce2c867804f66_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_fixes_get_user_data@
hs_bindgen_d23ce2c867804f66 ::
     RIP.Ptr Wl_fixes
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_d23ce2c867804f66 =
  RIP.fromFFIType hs_bindgen_d23ce2c867804f66_base

{-| __C declaration:__ @wl_fixes_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6482:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_fixes_get_user_data ::
     RIP.Ptr Wl_fixes
     -- ^ __C declaration:__ @wl_fixes@
  -> IO (RIP.Ptr RIP.Void)
wl_fixes_get_user_data = hs_bindgen_d23ce2c867804f66

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_fixes_get_version@
foreign import ccall safe "hs_bindgen_7a684fc4d5086015" hs_bindgen_7a684fc4d5086015_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_fixes_get_version@
hs_bindgen_7a684fc4d5086015 ::
     RIP.Ptr Wl_fixes
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_7a684fc4d5086015 =
  RIP.fromFFIType hs_bindgen_7a684fc4d5086015_base

{-| __C declaration:__ @wl_fixes_get_version@

    __defined at:__ @wayland-client-protocol.h 6488:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_fixes_get_version ::
     RIP.Ptr Wl_fixes
     -- ^ __C declaration:__ @wl_fixes@
  -> IO HsBindgen.Runtime.LibC.Word32
wl_fixes_get_version = hs_bindgen_7a684fc4d5086015

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_fixes_destroy@
foreign import ccall safe "hs_bindgen_112e1a25004793b5" hs_bindgen_112e1a25004793b5_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_fixes_destroy@
hs_bindgen_112e1a25004793b5 ::
     RIP.Ptr Wl_fixes
  -> IO ()
hs_bindgen_112e1a25004793b5 =
  RIP.fromFFIType hs_bindgen_112e1a25004793b5_base

{-| __C declaration:__ @wl_fixes_destroy@

    __defined at:__ @wayland-client-protocol.h 6497:1@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@
-}
wl_fixes_destroy ::
     RIP.Ptr Wl_fixes
     -- ^ __C declaration:__ @wl_fixes@
  -> IO ()
wl_fixes_destroy = hs_bindgen_112e1a25004793b5

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_fixes_destroy_registry@
foreign import ccall safe "hs_bindgen_30bdd2202a993527" hs_bindgen_30bdd2202a993527_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_Safe_wl_fixes_destroy_registry@
hs_bindgen_30bdd2202a993527 ::
     RIP.Ptr Wl_fixes
  -> RIP.Ptr Wl_registry
  -> IO ()
hs_bindgen_30bdd2202a993527 =
  RIP.fromFFIType hs_bindgen_30bdd2202a993527_base

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
  hs_bindgen_30bdd2202a993527
