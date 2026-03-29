{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Wayland.Client.FunPtr
    ( Generated.Wayland.Client.FunPtr.wl_event_queue_destroy
    , Generated.Wayland.Client.FunPtr.wl_proxy_create
    , Generated.Wayland.Client.FunPtr.wl_proxy_create_wrapper
    , Generated.Wayland.Client.FunPtr.wl_proxy_wrapper_destroy
    , Generated.Wayland.Client.FunPtr.wl_proxy_destroy
    , Generated.Wayland.Client.FunPtr.wl_proxy_add_listener
    , Generated.Wayland.Client.FunPtr.wl_proxy_get_listener
    , Generated.Wayland.Client.FunPtr.wl_proxy_add_dispatcher
    , Generated.Wayland.Client.FunPtr.wl_proxy_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_proxy_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_proxy_get_version
    , Generated.Wayland.Client.FunPtr.wl_proxy_get_id
    , Generated.Wayland.Client.FunPtr.wl_proxy_set_tag
    , Generated.Wayland.Client.FunPtr.wl_proxy_get_tag
    , Generated.Wayland.Client.FunPtr.wl_proxy_get_class
    , Generated.Wayland.Client.FunPtr.wl_proxy_get_interface
    , Generated.Wayland.Client.FunPtr.wl_proxy_get_display
    , Generated.Wayland.Client.FunPtr.wl_proxy_set_queue
    , Generated.Wayland.Client.FunPtr.wl_proxy_get_queue
    , Generated.Wayland.Client.FunPtr.wl_event_queue_get_name
    , Generated.Wayland.Client.FunPtr.wl_display_connect
    , Generated.Wayland.Client.FunPtr.wl_display_connect_to_fd
    , Generated.Wayland.Client.FunPtr.wl_display_disconnect
    , Generated.Wayland.Client.FunPtr.wl_display_get_fd
    , Generated.Wayland.Client.FunPtr.wl_display_dispatch
    , Generated.Wayland.Client.FunPtr.wl_display_dispatch_queue
    , Generated.Wayland.Client.FunPtr.wl_display_dispatch_timeout
    , Generated.Wayland.Client.FunPtr.wl_display_dispatch_queue_timeout
    , Generated.Wayland.Client.FunPtr.wl_display_dispatch_queue_pending
    , Generated.Wayland.Client.FunPtr.wl_display_dispatch_pending
    , Generated.Wayland.Client.FunPtr.wl_display_get_error
    , Generated.Wayland.Client.FunPtr.wl_display_get_protocol_error
    , Generated.Wayland.Client.FunPtr.wl_display_flush
    , Generated.Wayland.Client.FunPtr.wl_display_roundtrip_queue
    , Generated.Wayland.Client.FunPtr.wl_display_roundtrip
    , Generated.Wayland.Client.FunPtr.wl_display_create_queue
    , Generated.Wayland.Client.FunPtr.wl_display_create_queue_with_name
    , Generated.Wayland.Client.FunPtr.wl_display_prepare_read_queue
    , Generated.Wayland.Client.FunPtr.wl_display_prepare_read
    , Generated.Wayland.Client.FunPtr.wl_display_cancel_read
    , Generated.Wayland.Client.FunPtr.wl_display_read_events
    , Generated.Wayland.Client.FunPtr.wl_display_set_max_buffer_size
    , Generated.Wayland.Client.FunPtr.wl_display_add_listener
    , Generated.Wayland.Client.FunPtr.wl_display_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_display_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_display_get_version
    , Generated.Wayland.Client.FunPtr.wl_display_sync
    , Generated.Wayland.Client.FunPtr.wl_display_get_registry
    , Generated.Wayland.Client.FunPtr.wl_registry_add_listener
    , Generated.Wayland.Client.FunPtr.wl_registry_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_registry_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_registry_get_version
    , Generated.Wayland.Client.FunPtr.wl_registry_destroy
    , Generated.Wayland.Client.FunPtr.wl_registry_bind
    , Generated.Wayland.Client.FunPtr.wl_callback_add_listener
    , Generated.Wayland.Client.FunPtr.wl_callback_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_callback_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_callback_get_version
    , Generated.Wayland.Client.FunPtr.wl_callback_destroy
    , Generated.Wayland.Client.FunPtr.wl_compositor_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_compositor_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_compositor_get_version
    , Generated.Wayland.Client.FunPtr.wl_compositor_destroy
    , Generated.Wayland.Client.FunPtr.wl_compositor_create_surface
    , Generated.Wayland.Client.FunPtr.wl_compositor_create_region
    , Generated.Wayland.Client.FunPtr.wl_shm_pool_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_shm_pool_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_shm_pool_get_version
    , Generated.Wayland.Client.FunPtr.wl_shm_pool_create_buffer
    , Generated.Wayland.Client.FunPtr.wl_shm_pool_destroy
    , Generated.Wayland.Client.FunPtr.wl_shm_pool_resize
    , Generated.Wayland.Client.FunPtr.wl_shm_add_listener
    , Generated.Wayland.Client.FunPtr.wl_shm_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_shm_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_shm_get_version
    , Generated.Wayland.Client.FunPtr.wl_shm_destroy
    , Generated.Wayland.Client.FunPtr.wl_shm_create_pool
    , Generated.Wayland.Client.FunPtr.wl_shm_release
    , Generated.Wayland.Client.FunPtr.wl_buffer_add_listener
    , Generated.Wayland.Client.FunPtr.wl_buffer_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_buffer_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_buffer_get_version
    , Generated.Wayland.Client.FunPtr.wl_buffer_destroy
    , Generated.Wayland.Client.FunPtr.wl_data_offer_add_listener
    , Generated.Wayland.Client.FunPtr.wl_data_offer_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_data_offer_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_data_offer_get_version
    , Generated.Wayland.Client.FunPtr.wl_data_offer_accept
    , Generated.Wayland.Client.FunPtr.wl_data_offer_receive
    , Generated.Wayland.Client.FunPtr.wl_data_offer_destroy
    , Generated.Wayland.Client.FunPtr.wl_data_offer_finish
    , Generated.Wayland.Client.FunPtr.wl_data_offer_set_actions
    , Generated.Wayland.Client.FunPtr.wl_data_source_add_listener
    , Generated.Wayland.Client.FunPtr.wl_data_source_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_data_source_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_data_source_get_version
    , Generated.Wayland.Client.FunPtr.wl_data_source_offer
    , Generated.Wayland.Client.FunPtr.wl_data_source_destroy
    , Generated.Wayland.Client.FunPtr.wl_data_source_set_actions
    , Generated.Wayland.Client.FunPtr.wl_data_device_add_listener
    , Generated.Wayland.Client.FunPtr.wl_data_device_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_data_device_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_data_device_get_version
    , Generated.Wayland.Client.FunPtr.wl_data_device_destroy
    , Generated.Wayland.Client.FunPtr.wl_data_device_start_drag
    , Generated.Wayland.Client.FunPtr.wl_data_device_set_selection
    , Generated.Wayland.Client.FunPtr.wl_data_device_release
    , Generated.Wayland.Client.FunPtr.wl_data_device_manager_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_data_device_manager_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_data_device_manager_get_version
    , Generated.Wayland.Client.FunPtr.wl_data_device_manager_destroy
    , Generated.Wayland.Client.FunPtr.wl_data_device_manager_create_data_source
    , Generated.Wayland.Client.FunPtr.wl_data_device_manager_get_data_device
    , Generated.Wayland.Client.FunPtr.wl_shell_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_shell_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_shell_get_version
    , Generated.Wayland.Client.FunPtr.wl_shell_destroy
    , Generated.Wayland.Client.FunPtr.wl_shell_get_shell_surface
    , Generated.Wayland.Client.FunPtr.wl_shell_surface_add_listener
    , Generated.Wayland.Client.FunPtr.wl_shell_surface_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_shell_surface_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_shell_surface_get_version
    , Generated.Wayland.Client.FunPtr.wl_shell_surface_destroy
    , Generated.Wayland.Client.FunPtr.wl_shell_surface_pong
    , Generated.Wayland.Client.FunPtr.wl_shell_surface_move
    , Generated.Wayland.Client.FunPtr.wl_shell_surface_resize
    , Generated.Wayland.Client.FunPtr.wl_shell_surface_set_toplevel
    , Generated.Wayland.Client.FunPtr.wl_shell_surface_set_transient
    , Generated.Wayland.Client.FunPtr.wl_shell_surface_set_fullscreen
    , Generated.Wayland.Client.FunPtr.wl_shell_surface_set_popup
    , Generated.Wayland.Client.FunPtr.wl_shell_surface_set_maximized
    , Generated.Wayland.Client.FunPtr.wl_shell_surface_set_title
    , Generated.Wayland.Client.FunPtr.wl_shell_surface_set_class
    , Generated.Wayland.Client.FunPtr.wl_surface_add_listener
    , Generated.Wayland.Client.FunPtr.wl_surface_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_surface_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_surface_get_version
    , Generated.Wayland.Client.FunPtr.wl_surface_destroy
    , Generated.Wayland.Client.FunPtr.wl_surface_attach
    , Generated.Wayland.Client.FunPtr.wl_surface_damage
    , Generated.Wayland.Client.FunPtr.wl_surface_frame
    , Generated.Wayland.Client.FunPtr.wl_surface_set_opaque_region
    , Generated.Wayland.Client.FunPtr.wl_surface_set_input_region
    , Generated.Wayland.Client.FunPtr.wl_surface_commit
    , Generated.Wayland.Client.FunPtr.wl_surface_set_buffer_transform
    , Generated.Wayland.Client.FunPtr.wl_surface_set_buffer_scale
    , Generated.Wayland.Client.FunPtr.wl_surface_damage_buffer
    , Generated.Wayland.Client.FunPtr.wl_surface_offset
    , Generated.Wayland.Client.FunPtr.wl_seat_add_listener
    , Generated.Wayland.Client.FunPtr.wl_seat_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_seat_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_seat_get_version
    , Generated.Wayland.Client.FunPtr.wl_seat_destroy
    , Generated.Wayland.Client.FunPtr.wl_seat_get_pointer
    , Generated.Wayland.Client.FunPtr.wl_seat_get_keyboard
    , Generated.Wayland.Client.FunPtr.wl_seat_get_touch
    , Generated.Wayland.Client.FunPtr.wl_seat_release
    , Generated.Wayland.Client.FunPtr.wl_pointer_add_listener
    , Generated.Wayland.Client.FunPtr.wl_pointer_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_pointer_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_pointer_get_version
    , Generated.Wayland.Client.FunPtr.wl_pointer_destroy
    , Generated.Wayland.Client.FunPtr.wl_pointer_set_cursor
    , Generated.Wayland.Client.FunPtr.wl_pointer_release
    , Generated.Wayland.Client.FunPtr.wl_keyboard_add_listener
    , Generated.Wayland.Client.FunPtr.wl_keyboard_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_keyboard_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_keyboard_get_version
    , Generated.Wayland.Client.FunPtr.wl_keyboard_destroy
    , Generated.Wayland.Client.FunPtr.wl_keyboard_release
    , Generated.Wayland.Client.FunPtr.wl_touch_add_listener
    , Generated.Wayland.Client.FunPtr.wl_touch_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_touch_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_touch_get_version
    , Generated.Wayland.Client.FunPtr.wl_touch_destroy
    , Generated.Wayland.Client.FunPtr.wl_touch_release
    , Generated.Wayland.Client.FunPtr.wl_output_add_listener
    , Generated.Wayland.Client.FunPtr.wl_output_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_output_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_output_get_version
    , Generated.Wayland.Client.FunPtr.wl_output_destroy
    , Generated.Wayland.Client.FunPtr.wl_output_release
    , Generated.Wayland.Client.FunPtr.wl_region_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_region_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_region_get_version
    , Generated.Wayland.Client.FunPtr.wl_region_destroy
    , Generated.Wayland.Client.FunPtr.wl_region_add
    , Generated.Wayland.Client.FunPtr.wl_region_subtract
    , Generated.Wayland.Client.FunPtr.wl_subcompositor_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_subcompositor_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_subcompositor_get_version
    , Generated.Wayland.Client.FunPtr.wl_subcompositor_destroy
    , Generated.Wayland.Client.FunPtr.wl_subcompositor_get_subsurface
    , Generated.Wayland.Client.FunPtr.wl_subsurface_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_subsurface_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_subsurface_get_version
    , Generated.Wayland.Client.FunPtr.wl_subsurface_destroy
    , Generated.Wayland.Client.FunPtr.wl_subsurface_set_position
    , Generated.Wayland.Client.FunPtr.wl_subsurface_place_above
    , Generated.Wayland.Client.FunPtr.wl_subsurface_place_below
    , Generated.Wayland.Client.FunPtr.wl_subsurface_set_sync
    , Generated.Wayland.Client.FunPtr.wl_subsurface_set_desync
    , Generated.Wayland.Client.FunPtr.wl_fixes_set_user_data
    , Generated.Wayland.Client.FunPtr.wl_fixes_get_user_data
    , Generated.Wayland.Client.FunPtr.wl_fixes_get_version
    , Generated.Wayland.Client.FunPtr.wl_fixes_destroy
    , Generated.Wayland.Client.FunPtr.wl_fixes_destroy_registry
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
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_event_queue_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d915a4da41da452b (void)) ("
  , "  struct wl_event_queue *arg1"
  , ")"
  , "{"
  , "  return &wl_event_queue_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_create */"
  , "__attribute__ ((const))"
  , "struct wl_proxy *(*hs_bindgen_77995eb0188e3f96 (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  struct wl_interface const *arg2"
  , ")"
  , "{"
  , "  return &wl_proxy_create;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_create_wrapper */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_975a2d6c780e200b (void)) ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_create_wrapper;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_wrapper_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0c5f941168274e57 (void)) ("
  , "  void *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_wrapper_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_66d4e7d07a0f06d8 (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_150237251fb49475 (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  void (**arg2) (void),"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_proxy_add_listener;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_listener */"
  , "__attribute__ ((const))"
  , "void const *(*hs_bindgen_19ca97a681c9ec81 (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_listener;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_add_dispatcher */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9c1e1a9b930b0e8d (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  wl_dispatcher_func_t arg2,"
  , "  void const *arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return &wl_proxy_add_dispatcher;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_260efc0411193c3d (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_proxy_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_a5f4d7ff348048f7 (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_c4f711fdb356588e (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_id */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_b84a69170e8758c0 (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_id;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_set_tag */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a6b79cb5544566b3 (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  char const *const *arg2"
  , ")"
  , "{"
  , "  return &wl_proxy_set_tag;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_tag */"
  , "__attribute__ ((const))"
  , "char const *const *(*hs_bindgen_9c39b0a5ded97938 (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_tag;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_class */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_5d15223210873325 (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_class;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *(*hs_bindgen_6df9550ff352677f (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_display */"
  , "__attribute__ ((const))"
  , "struct wl_display *(*hs_bindgen_371baa202c9527cb (void)) ("
  , "  struct wl_proxy *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_display;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_set_queue */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bbae219e9bdd660d (void)) ("
  , "  struct wl_proxy *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return &wl_proxy_set_queue;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_queue */"
  , "__attribute__ ((const))"
  , "struct wl_event_queue *(*hs_bindgen_d4e4f97d2f65d7f5 (void)) ("
  , "  struct wl_proxy const *arg1"
  , ")"
  , "{"
  , "  return &wl_proxy_get_queue;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_event_queue_get_name */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_3fed1154be8c092a (void)) ("
  , "  struct wl_event_queue const *arg1"
  , ")"
  , "{"
  , "  return &wl_event_queue_get_name;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_connect */"
  , "__attribute__ ((const))"
  , "struct wl_display *(*hs_bindgen_84e8329e916dfe39 (void)) ("
  , "  char const *arg1"
  , ")"
  , "{"
  , "  return &wl_display_connect;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_connect_to_fd */"
  , "__attribute__ ((const))"
  , "struct wl_display *(*hs_bindgen_be7bc5dcb54a12bf (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &wl_display_connect_to_fd;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_disconnect */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_774bdbe63ef106a9 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_disconnect;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_get_fd */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e7da3513b9681597 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_get_fd;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_dispatch */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dddae707807d8179 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_dispatch;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_dispatch_queue */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_df2a4d05e9a8dda4 (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return &wl_display_dispatch_queue;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_dispatch_timeout */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_14ca0525c5da3d5d (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct timespec const *arg2"
  , ")"
  , "{"
  , "  return &wl_display_dispatch_timeout;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_dispatch_queue_timeout */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2927b416fd76b9c9 (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2,"
  , "  struct timespec const *arg3"
  , ")"
  , "{"
  , "  return &wl_display_dispatch_queue_timeout;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_dispatch_queue_pending */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fa9cb6394a142169 (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return &wl_display_dispatch_queue_pending;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_dispatch_pending */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6f0e76f012bbf235 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_dispatch_pending;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_get_error */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fbf00c93b2754db9 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_get_error;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_get_protocol_error */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_d7daa8707cd6c73c (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct wl_interface const **arg2,"
  , "  uint32_t *arg3"
  , ")"
  , "{"
  , "  return &wl_display_get_protocol_error;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_flush */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_10a30cb2e9a24655 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_flush;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_roundtrip_queue */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8eee636240023092 (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return &wl_display_roundtrip_queue;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_roundtrip */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b1309f444e7a843f (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_roundtrip;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_create_queue */"
  , "__attribute__ ((const))"
  , "struct wl_event_queue *(*hs_bindgen_83d94b228dd3e67d (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_create_queue;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_create_queue_with_name */"
  , "__attribute__ ((const))"
  , "struct wl_event_queue *(*hs_bindgen_1b5b7c6f0f27f3e6 (void)) ("
  , "  struct wl_display *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &wl_display_create_queue_with_name;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_prepare_read_queue */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_becc92509c4731c0 (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct wl_event_queue *arg2"
  , ")"
  , "{"
  , "  return &wl_display_prepare_read_queue;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_prepare_read */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c1eca48a18c3ccc1 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_prepare_read;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_cancel_read */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_11e401a3ccc75468 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_cancel_read;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_read_events */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9398caf6022927f4 (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_read_events;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_set_max_buffer_size */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8303e11e0d73ae88 (void)) ("
  , "  struct wl_display *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &wl_display_set_max_buffer_size;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3351bc37c3bd130d (void)) ("
  , "  struct wl_display *arg1,"
  , "  struct wl_display_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_display_add_listener;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_980aeaa889c0d3e0 (void)) ("
  , "  struct wl_display *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_display_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_3e1c67998d3e747f (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_490c7d30ea0d869b (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_sync */"
  , "__attribute__ ((const))"
  , "struct wl_callback *(*hs_bindgen_7f963b1d0f51c11d (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_sync;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_get_registry */"
  , "__attribute__ ((const))"
  , "struct wl_registry *(*hs_bindgen_1161e1ce1991618c (void)) ("
  , "  struct wl_display *arg1"
  , ")"
  , "{"
  , "  return &wl_display_get_registry;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_registry_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_da73f91c9d466d5d (void)) ("
  , "  struct wl_registry *arg1,"
  , "  struct wl_registry_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_registry_add_listener;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_registry_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ea91df0579255988 (void)) ("
  , "  struct wl_registry *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_registry_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_registry_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_27d959d1340900ae (void)) ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  return &wl_registry_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_registry_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_a70f045e17cc6a50 (void)) ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  return &wl_registry_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_registry_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4dd42f094b7af3f4 (void)) ("
  , "  struct wl_registry *arg1"
  , ")"
  , "{"
  , "  return &wl_registry_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_registry_bind */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_2c173d09a0cc8f15 (void)) ("
  , "  struct wl_registry *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_interface const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &wl_registry_bind;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_callback_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_849acd2231add35c (void)) ("
  , "  struct wl_callback *arg1,"
  , "  struct wl_callback_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_callback_add_listener;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_callback_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b2b59dbd762dc64c (void)) ("
  , "  struct wl_callback *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_callback_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_callback_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_9047ca684060cc1b (void)) ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  return &wl_callback_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_callback_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_672a5fbeba7d93df (void)) ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  return &wl_callback_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_callback_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b913b03251bc52a0 (void)) ("
  , "  struct wl_callback *arg1"
  , ")"
  , "{"
  , "  return &wl_callback_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_compositor_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1d82914c3ae8cbe9 (void)) ("
  , "  struct wl_compositor *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_compositor_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_compositor_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_3aeeba52b8f0677c (void)) ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return &wl_compositor_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_compositor_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_2c2e396899dbb371 (void)) ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return &wl_compositor_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_compositor_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_edb12a5df6175483 (void)) ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return &wl_compositor_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_compositor_create_surface */"
  , "__attribute__ ((const))"
  , "struct wl_surface *(*hs_bindgen_f096b2166abbbdc5 (void)) ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return &wl_compositor_create_surface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_compositor_create_region */"
  , "__attribute__ ((const))"
  , "struct wl_region *(*hs_bindgen_307feed117f624e3 (void)) ("
  , "  struct wl_compositor *arg1"
  , ")"
  , "{"
  , "  return &wl_compositor_create_region;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shm_pool_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_31afa15eddb30213 (void)) ("
  , "  struct wl_shm_pool *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_shm_pool_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shm_pool_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_656b1ee9dd3d07b0 (void)) ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  return &wl_shm_pool_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shm_pool_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_afaa1ffbc44c02d1 (void)) ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  return &wl_shm_pool_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shm_pool_create_buffer */"
  , "__attribute__ ((const))"
  , "struct wl_buffer *(*hs_bindgen_8672e689d072f67a (void)) ("
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
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shm_pool_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1a75b9fadf515e71 (void)) ("
  , "  struct wl_shm_pool *arg1"
  , ")"
  , "{"
  , "  return &wl_shm_pool_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shm_pool_resize */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_013426e296eb494d (void)) ("
  , "  struct wl_shm_pool *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  return &wl_shm_pool_resize;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shm_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6a0b9a6cf04086c2 (void)) ("
  , "  struct wl_shm *arg1,"
  , "  struct wl_shm_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_shm_add_listener;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shm_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_31fe9685e9ac7d19 (void)) ("
  , "  struct wl_shm *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_shm_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shm_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_0424109835fed2db (void)) ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return &wl_shm_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shm_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_7d9768051a2b2f4a (void)) ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return &wl_shm_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shm_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0537d2f5d7eaf1be (void)) ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return &wl_shm_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shm_create_pool */"
  , "__attribute__ ((const))"
  , "struct wl_shm_pool *(*hs_bindgen_6dd789c259327336 (void)) ("
  , "  struct wl_shm *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &wl_shm_create_pool;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shm_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e484ae75b4364677 (void)) ("
  , "  struct wl_shm *arg1"
  , ")"
  , "{"
  , "  return &wl_shm_release;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_buffer_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_046663c941d5bd2d (void)) ("
  , "  struct wl_buffer *arg1,"
  , "  struct wl_buffer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_buffer_add_listener;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_buffer_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2080dbdb2129a8bd (void)) ("
  , "  struct wl_buffer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_buffer_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_buffer_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_961b535a17bcd834 (void)) ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  return &wl_buffer_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_buffer_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_3d5e8fbdf0a757d0 (void)) ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  return &wl_buffer_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_buffer_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f3d4e18d852a1b57 (void)) ("
  , "  struct wl_buffer *arg1"
  , ")"
  , "{"
  , "  return &wl_buffer_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_30b0540039977a0a (void)) ("
  , "  struct wl_data_offer *arg1,"
  , "  struct wl_data_offer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_data_offer_add_listener;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bd14dcde2f1b671d (void)) ("
  , "  struct wl_data_offer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_data_offer_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_cd3af86256e46a49 (void)) ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return &wl_data_offer_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_15a40cc3227e9d48 (void)) ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return &wl_data_offer_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_accept */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1116280eeb891405 (void)) ("
  , "  struct wl_data_offer *arg1,"
  , "  uint32_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &wl_data_offer_accept;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_receive */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b1b0197c60c99f38 (void)) ("
  , "  struct wl_data_offer *arg1,"
  , "  char const *arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &wl_data_offer_receive;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_5b5588537c08d6c6 (void)) ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return &wl_data_offer_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_finish */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1d1f83f17b52c896 (void)) ("
  , "  struct wl_data_offer *arg1"
  , ")"
  , "{"
  , "  return &wl_data_offer_finish;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_set_actions */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b9551e9a1f7da20e (void)) ("
  , "  struct wl_data_offer *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &wl_data_offer_set_actions;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c9e071f653cb9156 (void)) ("
  , "  struct wl_data_source *arg1,"
  , "  struct wl_data_source_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_data_source_add_listener;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_123a44ba12049e43 (void)) ("
  , "  struct wl_data_source *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_data_source_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_725d2f93160fdded (void)) ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  return &wl_data_source_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_875d953af0d8cc3c (void)) ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  return &wl_data_source_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_offer */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0ac8efc1a22b0c9e (void)) ("
  , "  struct wl_data_source *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &wl_data_source_offer;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_5f7787758f4c9d2a (void)) ("
  , "  struct wl_data_source *arg1"
  , ")"
  , "{"
  , "  return &wl_data_source_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_set_actions */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7efd21cde71185f0 (void)) ("
  , "  struct wl_data_source *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &wl_data_source_set_actions;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2bbdce78cbae660c (void)) ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_device_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_data_device_add_listener;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_12c94659ead67979 (void)) ("
  , "  struct wl_data_device *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_data_device_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_85d14a482d3c7e45 (void)) ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_2358aba651206913 (void)) ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2cc733f2cc8a42fe (void)) ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_start_drag */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_49cd52632e5dc9a1 (void)) ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_source *arg2,"
  , "  struct wl_surface *arg3,"
  , "  struct wl_surface *arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  return &wl_data_device_start_drag;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_set_selection */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d4b08b534f3405ec (void)) ("
  , "  struct wl_data_device *arg1,"
  , "  struct wl_data_source *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &wl_data_device_set_selection;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0a5168cfe6d1d97e (void)) ("
  , "  struct wl_data_device *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_release;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_manager_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9b7d5f9bfdd1aa20 (void)) ("
  , "  struct wl_data_device_manager *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_data_device_manager_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_manager_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_df2100f18bfb21f4 (void)) ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_manager_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_manager_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_f2a3e84c1906684b (void)) ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_manager_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_manager_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4bda2bf30775070d (void)) ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_manager_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_manager_create_data_source */"
  , "__attribute__ ((const))"
  , "struct wl_data_source *(*hs_bindgen_060ea60bf3bd69aa (void)) ("
  , "  struct wl_data_device_manager *arg1"
  , ")"
  , "{"
  , "  return &wl_data_device_manager_create_data_source;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_manager_get_data_device */"
  , "__attribute__ ((const))"
  , "struct wl_data_device *(*hs_bindgen_bc7327c980188a30 (void)) ("
  , "  struct wl_data_device_manager *arg1,"
  , "  struct wl_seat *arg2"
  , ")"
  , "{"
  , "  return &wl_data_device_manager_get_data_device;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c18b900a0677f0b6 (void)) ("
  , "  struct wl_shell *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_shell_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_31b6515d007468cd (void)) ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  return &wl_shell_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_997000a766f75aec (void)) ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  return &wl_shell_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fbd8e1529ceba176 (void)) ("
  , "  struct wl_shell *arg1"
  , ")"
  , "{"
  , "  return &wl_shell_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_get_shell_surface */"
  , "__attribute__ ((const))"
  , "struct wl_shell_surface *(*hs_bindgen_55b0067d2f3b90c2 (void)) ("
  , "  struct wl_shell *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &wl_shell_get_shell_surface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d3bf24493df30fd3 (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_shell_surface_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_shell_surface_add_listener;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b2990779ff80a32f (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_09988ed9baaef286 (void)) ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_shell_surface_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_5f6730cc9601811f (void)) ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_shell_surface_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_52941219e632a487 (void)) ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_shell_surface_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_pong */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_cc55d0bef72e6659 (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &wl_shell_surface_pong;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_move */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7699c0ac90d9866e (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &wl_shell_surface_move;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_resize */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_040d734657fafcde (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &wl_shell_surface_resize;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_toplevel */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7d7e147a897fc9ac (void)) ("
  , "  struct wl_shell_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_toplevel;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_transient */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_666223a20bca00a6 (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_surface *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  uint32_t arg5"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_transient;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_fullscreen */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6af4ee8e9ba7af7b (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3,"
  , "  struct wl_output *arg4"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_fullscreen;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_popup */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_5bec7b5f1471336c (void)) ("
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
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_maximized */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_941d819d2f842809 (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  struct wl_output *arg2"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_maximized;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_title */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_be8d3bd7d6087129 (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_title;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_class */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7ad4d21fca327ac6 (void)) ("
  , "  struct wl_shell_surface *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &wl_shell_surface_set_class;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_surface_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_99797f8c00db4cf8 (void)) ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_surface_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_surface_add_listener;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_surface_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2d56696a5ce13560 (void)) ("
  , "  struct wl_surface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_surface_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_surface_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_b0d919aa012afa71 (void)) ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_surface_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_surface_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_4f93814cd68fd3e7 (void)) ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_surface_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_surface_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6021fc1fb0bea10c (void)) ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_surface_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_surface_attach */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_63b0df64e98c5a8d (void)) ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_buffer *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4"
  , ")"
  , "{"
  , "  return &wl_surface_attach;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_surface_damage */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_68db2a290c4fc31b (void)) ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &wl_surface_damage;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_surface_frame */"
  , "__attribute__ ((const))"
  , "struct wl_callback *(*hs_bindgen_e4634c1b3f7ab401 (void)) ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_surface_frame;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_surface_set_opaque_region */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ec5b0fe08eab9856 (void)) ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_region *arg2"
  , ")"
  , "{"
  , "  return &wl_surface_set_opaque_region;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_surface_set_input_region */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f8ae81f7faedf17a (void)) ("
  , "  struct wl_surface *arg1,"
  , "  struct wl_region *arg2"
  , ")"
  , "{"
  , "  return &wl_surface_set_input_region;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_surface_commit */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_636ebc3878c0e9a3 (void)) ("
  , "  struct wl_surface *arg1"
  , ")"
  , "{"
  , "  return &wl_surface_commit;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_surface_set_buffer_transform */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9bc57138d8b2f825 (void)) ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  return &wl_surface_set_buffer_transform;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_surface_set_buffer_scale */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_71ff6d2cbe878f4c (void)) ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  return &wl_surface_set_buffer_scale;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_surface_damage_buffer */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_691f90a60becdaa1 (void)) ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &wl_surface_damage_buffer;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_surface_offset */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6ff41c02a62904d8 (void)) ("
  , "  struct wl_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &wl_surface_offset;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_seat_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fca211a912362095 (void)) ("
  , "  struct wl_seat *arg1,"
  , "  struct wl_seat_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_seat_add_listener;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_seat_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e9233140a9bd8ba9 (void)) ("
  , "  struct wl_seat *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_seat_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_seat_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_3a0cf23f72346ebf (void)) ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return &wl_seat_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_seat_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_d09ae1debf6afc7d (void)) ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return &wl_seat_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_seat_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bebc91598354b3bc (void)) ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return &wl_seat_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_seat_get_pointer */"
  , "__attribute__ ((const))"
  , "struct wl_pointer *(*hs_bindgen_770eab78f913f9e3 (void)) ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return &wl_seat_get_pointer;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_seat_get_keyboard */"
  , "__attribute__ ((const))"
  , "struct wl_keyboard *(*hs_bindgen_7d91068148e3b1ce (void)) ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return &wl_seat_get_keyboard;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_seat_get_touch */"
  , "__attribute__ ((const))"
  , "struct wl_touch *(*hs_bindgen_d6fcb5b04ba837c3 (void)) ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return &wl_seat_get_touch;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_seat_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_cb5583d739727952 (void)) ("
  , "  struct wl_seat *arg1"
  , ")"
  , "{"
  , "  return &wl_seat_release;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_29fc01f4d6d7d071 (void)) ("
  , "  struct wl_pointer *arg1,"
  , "  struct wl_pointer_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_pointer_add_listener;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3ced564b413bbe21 (void)) ("
  , "  struct wl_pointer *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_pointer_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_81155ac0fc76f730 (void)) ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return &wl_pointer_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_1458c14ac30b9386 (void)) ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return &wl_pointer_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0a8bd7e1be72cecf (void)) ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return &wl_pointer_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_set_cursor */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d0f04bf5fce0dc20 (void)) ("
  , "  struct wl_pointer *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_surface *arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &wl_pointer_set_cursor;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a7f207c8b6fa6297 (void)) ("
  , "  struct wl_pointer *arg1"
  , ")"
  , "{"
  , "  return &wl_pointer_release;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_keyboard_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_55b4f51186401e48 (void)) ("
  , "  struct wl_keyboard *arg1,"
  , "  struct wl_keyboard_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_keyboard_add_listener;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_keyboard_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_78aac3f4a91b8836 (void)) ("
  , "  struct wl_keyboard *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_keyboard_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_keyboard_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_4fd07ac45ff61ecf (void)) ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return &wl_keyboard_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_keyboard_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_6070ef9495b96f6a (void)) ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return &wl_keyboard_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_keyboard_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_515e7166836d8b49 (void)) ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return &wl_keyboard_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_keyboard_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_720db908fce2694e (void)) ("
  , "  struct wl_keyboard *arg1"
  , ")"
  , "{"
  , "  return &wl_keyboard_release;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_touch_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_26926923febab35e (void)) ("
  , "  struct wl_touch *arg1,"
  , "  struct wl_touch_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_touch_add_listener;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_touch_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3cbca94f4016fdcb (void)) ("
  , "  struct wl_touch *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_touch_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_touch_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_24f79d52fe9d358f (void)) ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return &wl_touch_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_touch_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_3364cff2601e3dc7 (void)) ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return &wl_touch_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_touch_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fe4a7c928aff8b1b (void)) ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return &wl_touch_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_touch_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3b304e92a828bf44 (void)) ("
  , "  struct wl_touch *arg1"
  , ")"
  , "{"
  , "  return &wl_touch_release;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_output_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b6da51b620ed5ea3 (void)) ("
  , "  struct wl_output *arg1,"
  , "  struct wl_output_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wl_output_add_listener;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_output_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9dcf165bf0040b17 (void)) ("
  , "  struct wl_output *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_output_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_output_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_0a2413f01961cc98 (void)) ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return &wl_output_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_output_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_dd7eb0df8e29762f (void)) ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return &wl_output_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_output_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b080b0c71a657eb0 (void)) ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return &wl_output_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_output_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_5bc64c794c2d70ba (void)) ("
  , "  struct wl_output *arg1"
  , ")"
  , "{"
  , "  return &wl_output_release;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_region_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e01aad551147ccbc (void)) ("
  , "  struct wl_region *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_region_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_region_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_f659facf8f01844f (void)) ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  return &wl_region_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_region_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_4f0762ab8cb0848d (void)) ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  return &wl_region_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_region_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4d1bb903795a76a7 (void)) ("
  , "  struct wl_region *arg1"
  , ")"
  , "{"
  , "  return &wl_region_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_region_add */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_68fad6320e1ee872 (void)) ("
  , "  struct wl_region *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &wl_region_add;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_region_subtract */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f806860d58701d2c (void)) ("
  , "  struct wl_region *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &wl_region_subtract;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_subcompositor_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f5d537f91b1899e6 (void)) ("
  , "  struct wl_subcompositor *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_subcompositor_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_subcompositor_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_5b0be24421a4e447 (void)) ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  return &wl_subcompositor_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_subcompositor_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_9ff01af41e56c2ce (void)) ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  return &wl_subcompositor_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_subcompositor_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ae09a8737ccdea18 (void)) ("
  , "  struct wl_subcompositor *arg1"
  , ")"
  , "{"
  , "  return &wl_subcompositor_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_subcompositor_get_subsurface */"
  , "__attribute__ ((const))"
  , "struct wl_subsurface *(*hs_bindgen_e87b1f4557da3903 (void)) ("
  , "  struct wl_subcompositor *arg1,"
  , "  struct wl_surface *arg2,"
  , "  struct wl_surface *arg3"
  , ")"
  , "{"
  , "  return &wl_subcompositor_get_subsurface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2a3892c3992d3f6d (void)) ("
  , "  struct wl_subsurface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_subsurface_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_718aac2073dc97bd (void)) ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return &wl_subsurface_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_ee679203e62bab23 (void)) ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return &wl_subsurface_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_989e9268cc74d548 (void)) ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return &wl_subsurface_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_set_position */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_61cc5cde8b4683ea (void)) ("
  , "  struct wl_subsurface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &wl_subsurface_set_position;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_place_above */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_85f20ab842bc3d59 (void)) ("
  , "  struct wl_subsurface *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &wl_subsurface_place_above;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_place_below */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1376b8a5af1947e0 (void)) ("
  , "  struct wl_subsurface *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &wl_subsurface_place_below;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_set_sync */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9921447693b67728 (void)) ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return &wl_subsurface_set_sync;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_set_desync */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_911e3b96b0ce0cf5 (void)) ("
  , "  struct wl_subsurface *arg1"
  , ")"
  , "{"
  , "  return &wl_subsurface_set_desync;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_fixes_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_5a9e00b3456b1a84 (void)) ("
  , "  struct wl_fixes *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wl_fixes_set_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_fixes_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_5c9aa2414b20f287 (void)) ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  return &wl_fixes_get_user_data;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_fixes_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_d1c5883e4395c3ee (void)) ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  return &wl_fixes_get_version;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_fixes_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_dfa3a91865c04910 (void)) ("
  , "  struct wl_fixes *arg1"
  , ")"
  , "{"
  , "  return &wl_fixes_destroy;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_fixes_destroy_registry */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1a464a6853eff0f5 (void)) ("
  , "  struct wl_fixes *arg1,"
  , "  struct wl_registry *arg2"
  , ")"
  , "{"
  , "  return &wl_fixes_destroy_registry;"
  , "}"
  ]))

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_event_queue_destroy@
foreign import ccall unsafe "hs_bindgen_d915a4da41da452b" hs_bindgen_d915a4da41da452b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_event_queue_destroy@
hs_bindgen_d915a4da41da452b :: IO (RIP.FunPtr ((RIP.Ptr Wl_event_queue) -> IO ()))
hs_bindgen_d915a4da41da452b =
  RIP.fromFFIType hs_bindgen_d915a4da41da452b_base

{-# NOINLINE wl_event_queue_destroy #-}
{-| __C declaration:__ @wl_event_queue_destroy@

    __defined at:__ @wayland-client-core.h 130:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_event_queue_destroy :: RIP.FunPtr ((RIP.Ptr Wl_event_queue) -> IO ())
wl_event_queue_destroy =
  RIP.unsafePerformIO hs_bindgen_d915a4da41da452b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_create@
foreign import ccall unsafe "hs_bindgen_77995eb0188e3f96" hs_bindgen_77995eb0188e3f96_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_create@
hs_bindgen_77995eb0188e3f96 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface) -> IO (RIP.Ptr Wl_proxy)))
hs_bindgen_77995eb0188e3f96 =
  RIP.fromFFIType hs_bindgen_77995eb0188e3f96_base

{-# NOINLINE wl_proxy_create #-}
{-| __C declaration:__ @wl_proxy_create@

    __defined at:__ @wayland-client-core.h 153:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_create :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface) -> IO (RIP.Ptr Wl_proxy))
wl_proxy_create =
  RIP.unsafePerformIO hs_bindgen_77995eb0188e3f96

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_create_wrapper@
foreign import ccall unsafe "hs_bindgen_975a2d6c780e200b" hs_bindgen_975a2d6c780e200b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_create_wrapper@
hs_bindgen_975a2d6c780e200b :: IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_975a2d6c780e200b =
  RIP.fromFFIType hs_bindgen_975a2d6c780e200b_base

{-# NOINLINE wl_proxy_create_wrapper #-}
{-| __C declaration:__ @wl_proxy_create_wrapper@

    __defined at:__ @wayland-client-core.h 157:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_create_wrapper :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> IO (RIP.Ptr RIP.Void))
wl_proxy_create_wrapper =
  RIP.unsafePerformIO hs_bindgen_975a2d6c780e200b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_wrapper_destroy@
foreign import ccall unsafe "hs_bindgen_0c5f941168274e57" hs_bindgen_0c5f941168274e57_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_wrapper_destroy@
hs_bindgen_0c5f941168274e57 :: IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_0c5f941168274e57 =
  RIP.fromFFIType hs_bindgen_0c5f941168274e57_base

{-# NOINLINE wl_proxy_wrapper_destroy #-}
{-| __C declaration:__ @wl_proxy_wrapper_destroy@

    __defined at:__ @wayland-client-core.h 160:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_wrapper_destroy :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> IO ())
wl_proxy_wrapper_destroy =
  RIP.unsafePerformIO hs_bindgen_0c5f941168274e57

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_destroy@
foreign import ccall unsafe "hs_bindgen_66d4e7d07a0f06d8" hs_bindgen_66d4e7d07a0f06d8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_destroy@
hs_bindgen_66d4e7d07a0f06d8 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO ()))
hs_bindgen_66d4e7d07a0f06d8 =
  RIP.fromFFIType hs_bindgen_66d4e7d07a0f06d8_base

{-# NOINLINE wl_proxy_destroy #-}
{-| __C declaration:__ @wl_proxy_destroy@

    __defined at:__ @wayland-client-core.h 188:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_destroy :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO ())
wl_proxy_destroy =
  RIP.unsafePerformIO hs_bindgen_66d4e7d07a0f06d8

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_add_listener@
foreign import ccall unsafe "hs_bindgen_150237251fb49475" hs_bindgen_150237251fb49475_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_add_listener@
hs_bindgen_150237251fb49475 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> (RIP.Ptr (RIP.FunPtr (IO ()))) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_150237251fb49475 =
  RIP.fromFFIType hs_bindgen_150237251fb49475_base

{-# NOINLINE wl_proxy_add_listener #-}
{-| __C declaration:__ @wl_proxy_add_listener@

    __defined at:__ @wayland-client-core.h 191:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> (RIP.Ptr (RIP.FunPtr (IO ()))) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_proxy_add_listener =
  RIP.unsafePerformIO hs_bindgen_150237251fb49475

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_listener@
foreign import ccall unsafe "hs_bindgen_19ca97a681c9ec81" hs_bindgen_19ca97a681c9ec81_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_listener@
hs_bindgen_19ca97a681c9ec81 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (PtrConst.PtrConst RIP.Void)))
hs_bindgen_19ca97a681c9ec81 =
  RIP.fromFFIType hs_bindgen_19ca97a681c9ec81_base

{-# NOINLINE wl_proxy_get_listener #-}
{-| __C declaration:__ @wl_proxy_get_listener@

    __defined at:__ @wayland-client-core.h 195:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_listener :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (PtrConst.PtrConst RIP.Void))
wl_proxy_get_listener =
  RIP.unsafePerformIO hs_bindgen_19ca97a681c9ec81

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_add_dispatcher@
foreign import ccall unsafe "hs_bindgen_9c1e1a9b930b0e8d" hs_bindgen_9c1e1a9b930b0e8d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_add_dispatcher@
hs_bindgen_9c1e1a9b930b0e8d :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> Generated.Wayland.Util.Wl_dispatcher_func_t -> (PtrConst.PtrConst RIP.Void) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_9c1e1a9b930b0e8d =
  RIP.fromFFIType hs_bindgen_9c1e1a9b930b0e8d_base

{-# NOINLINE wl_proxy_add_dispatcher #-}
{-| __C declaration:__ @wl_proxy_add_dispatcher@

    __defined at:__ @wayland-client-core.h 198:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_add_dispatcher :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> Generated.Wayland.Util.Wl_dispatcher_func_t -> (PtrConst.PtrConst RIP.Void) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_proxy_add_dispatcher =
  RIP.unsafePerformIO hs_bindgen_9c1e1a9b930b0e8d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_set_user_data@
foreign import ccall unsafe "hs_bindgen_260efc0411193c3d" hs_bindgen_260efc0411193c3d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_set_user_data@
hs_bindgen_260efc0411193c3d :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_260efc0411193c3d =
  RIP.fromFFIType hs_bindgen_260efc0411193c3d_base

{-# NOINLINE wl_proxy_set_user_data #-}
{-| __C declaration:__ @wl_proxy_set_user_data@

    __defined at:__ @wayland-client-core.h 203:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> (RIP.Ptr RIP.Void) -> IO ())
wl_proxy_set_user_data =
  RIP.unsafePerformIO hs_bindgen_260efc0411193c3d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_user_data@
foreign import ccall unsafe "hs_bindgen_a5f4d7ff348048f7" hs_bindgen_a5f4d7ff348048f7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_user_data@
hs_bindgen_a5f4d7ff348048f7 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_a5f4d7ff348048f7 =
  RIP.fromFFIType hs_bindgen_a5f4d7ff348048f7_base

{-# NOINLINE wl_proxy_get_user_data #-}
{-| __C declaration:__ @wl_proxy_get_user_data@

    __defined at:__ @wayland-client-core.h 206:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (RIP.Ptr RIP.Void))
wl_proxy_get_user_data =
  RIP.unsafePerformIO hs_bindgen_a5f4d7ff348048f7

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_version@
foreign import ccall unsafe "hs_bindgen_c4f711fdb356588e" hs_bindgen_c4f711fdb356588e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_version@
hs_bindgen_c4f711fdb356588e :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_c4f711fdb356588e =
  RIP.fromFFIType hs_bindgen_c4f711fdb356588e_base

{-# NOINLINE wl_proxy_get_version #-}
{-| __C declaration:__ @wl_proxy_get_version@

    __defined at:__ @wayland-client-core.h 209:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_version :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO HsBindgen.Runtime.LibC.Word32)
wl_proxy_get_version =
  RIP.unsafePerformIO hs_bindgen_c4f711fdb356588e

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_id@
foreign import ccall unsafe "hs_bindgen_b84a69170e8758c0" hs_bindgen_b84a69170e8758c0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_id@
hs_bindgen_b84a69170e8758c0 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_b84a69170e8758c0 =
  RIP.fromFFIType hs_bindgen_b84a69170e8758c0_base

{-# NOINLINE wl_proxy_get_id #-}
{-| __C declaration:__ @wl_proxy_get_id@

    __defined at:__ @wayland-client-core.h 212:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_id :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO HsBindgen.Runtime.LibC.Word32)
wl_proxy_get_id =
  RIP.unsafePerformIO hs_bindgen_b84a69170e8758c0

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_set_tag@
foreign import ccall unsafe "hs_bindgen_a6b79cb5544566b3" hs_bindgen_a6b79cb5544566b3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_set_tag@
hs_bindgen_a6b79cb5544566b3 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar)) -> IO ()))
hs_bindgen_a6b79cb5544566b3 =
  RIP.fromFFIType hs_bindgen_a6b79cb5544566b3_base

{-# NOINLINE wl_proxy_set_tag #-}
{-| __C declaration:__ @wl_proxy_set_tag@

    __defined at:__ @wayland-client-core.h 215:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_set_tag :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar)) -> IO ())
wl_proxy_set_tag =
  RIP.unsafePerformIO hs_bindgen_a6b79cb5544566b3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_tag@
foreign import ccall unsafe "hs_bindgen_9c39b0a5ded97938" hs_bindgen_9c39b0a5ded97938_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_tag@
hs_bindgen_9c39b0a5ded97938 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar))))
hs_bindgen_9c39b0a5ded97938 =
  RIP.fromFFIType hs_bindgen_9c39b0a5ded97938_base

{-# NOINLINE wl_proxy_get_tag #-}
{-| __C declaration:__ @wl_proxy_get_tag@

    __defined at:__ @wayland-client-core.h 219:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_tag :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (PtrConst.PtrConst (PtrConst.PtrConst RIP.CChar)))
wl_proxy_get_tag =
  RIP.unsafePerformIO hs_bindgen_9c39b0a5ded97938

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_class@
foreign import ccall unsafe "hs_bindgen_5d15223210873325" hs_bindgen_5d15223210873325_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_class@
hs_bindgen_5d15223210873325 :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (PtrConst.PtrConst RIP.CChar)))
hs_bindgen_5d15223210873325 =
  RIP.fromFFIType hs_bindgen_5d15223210873325_base

{-# NOINLINE wl_proxy_get_class #-}
{-| __C declaration:__ @wl_proxy_get_class@

    __defined at:__ @wayland-client-core.h 222:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_class :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (PtrConst.PtrConst RIP.CChar))
wl_proxy_get_class =
  RIP.unsafePerformIO hs_bindgen_5d15223210873325

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_interface@
foreign import ccall unsafe "hs_bindgen_6df9550ff352677f" hs_bindgen_6df9550ff352677f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_interface@
hs_bindgen_6df9550ff352677f :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)))
hs_bindgen_6df9550ff352677f =
  RIP.fromFFIType hs_bindgen_6df9550ff352677f_base

{-# NOINLINE wl_proxy_get_interface #-}
{-| __C declaration:__ @wl_proxy_get_interface@

    __defined at:__ @wayland-client-core.h 225:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_interface :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface))
wl_proxy_get_interface =
  RIP.unsafePerformIO hs_bindgen_6df9550ff352677f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_display@
foreign import ccall unsafe "hs_bindgen_371baa202c9527cb" hs_bindgen_371baa202c9527cb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_display@
hs_bindgen_371baa202c9527cb :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (RIP.Ptr Wl_display)))
hs_bindgen_371baa202c9527cb =
  RIP.fromFFIType hs_bindgen_371baa202c9527cb_base

{-# NOINLINE wl_proxy_get_display #-}
{-| __C declaration:__ @wl_proxy_get_display@

    __defined at:__ @wayland-client-core.h 228:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_display :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> IO (RIP.Ptr Wl_display))
wl_proxy_get_display =
  RIP.unsafePerformIO hs_bindgen_371baa202c9527cb

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_set_queue@
foreign import ccall unsafe "hs_bindgen_bbae219e9bdd660d" hs_bindgen_bbae219e9bdd660d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_set_queue@
hs_bindgen_bbae219e9bdd660d :: IO (RIP.FunPtr ((RIP.Ptr Wl_proxy) -> (RIP.Ptr Wl_event_queue) -> IO ()))
hs_bindgen_bbae219e9bdd660d =
  RIP.fromFFIType hs_bindgen_bbae219e9bdd660d_base

{-# NOINLINE wl_proxy_set_queue #-}
{-| __C declaration:__ @wl_proxy_set_queue@

    __defined at:__ @wayland-client-core.h 231:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_set_queue :: RIP.FunPtr ((RIP.Ptr Wl_proxy) -> (RIP.Ptr Wl_event_queue) -> IO ())
wl_proxy_set_queue =
  RIP.unsafePerformIO hs_bindgen_bbae219e9bdd660d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_queue@
foreign import ccall unsafe "hs_bindgen_d4e4f97d2f65d7f5" hs_bindgen_d4e4f97d2f65d7f5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_proxy_get_queue@
hs_bindgen_d4e4f97d2f65d7f5 :: IO (RIP.FunPtr ((PtrConst.PtrConst Wl_proxy) -> IO (RIP.Ptr Wl_event_queue)))
hs_bindgen_d4e4f97d2f65d7f5 =
  RIP.fromFFIType hs_bindgen_d4e4f97d2f65d7f5_base

{-# NOINLINE wl_proxy_get_queue #-}
{-| __C declaration:__ @wl_proxy_get_queue@

    __defined at:__ @wayland-client-core.h 234:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_proxy_get_queue :: RIP.FunPtr ((PtrConst.PtrConst Wl_proxy) -> IO (RIP.Ptr Wl_event_queue))
wl_proxy_get_queue =
  RIP.unsafePerformIO hs_bindgen_d4e4f97d2f65d7f5

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_event_queue_get_name@
foreign import ccall unsafe "hs_bindgen_3fed1154be8c092a" hs_bindgen_3fed1154be8c092a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_event_queue_get_name@
hs_bindgen_3fed1154be8c092a :: IO (RIP.FunPtr ((PtrConst.PtrConst Wl_event_queue) -> IO (PtrConst.PtrConst RIP.CChar)))
hs_bindgen_3fed1154be8c092a =
  RIP.fromFFIType hs_bindgen_3fed1154be8c092a_base

{-# NOINLINE wl_event_queue_get_name #-}
{-| __C declaration:__ @wl_event_queue_get_name@

    __defined at:__ @wayland-client-core.h 237:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_event_queue_get_name :: RIP.FunPtr ((PtrConst.PtrConst Wl_event_queue) -> IO (PtrConst.PtrConst RIP.CChar))
wl_event_queue_get_name =
  RIP.unsafePerformIO hs_bindgen_3fed1154be8c092a

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_connect@
foreign import ccall unsafe "hs_bindgen_84e8329e916dfe39" hs_bindgen_84e8329e916dfe39_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_connect@
hs_bindgen_84e8329e916dfe39 :: IO (RIP.FunPtr ((PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Wl_display)))
hs_bindgen_84e8329e916dfe39 =
  RIP.fromFFIType hs_bindgen_84e8329e916dfe39_base

{-# NOINLINE wl_display_connect #-}
{-| __C declaration:__ @wl_display_connect@

    __defined at:__ @wayland-client-core.h 240:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_connect :: RIP.FunPtr ((PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Wl_display))
wl_display_connect =
  RIP.unsafePerformIO hs_bindgen_84e8329e916dfe39

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_connect_to_fd@
foreign import ccall unsafe "hs_bindgen_be7bc5dcb54a12bf" hs_bindgen_be7bc5dcb54a12bf_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_connect_to_fd@
hs_bindgen_be7bc5dcb54a12bf :: IO (RIP.FunPtr (RIP.CInt -> IO (RIP.Ptr Wl_display)))
hs_bindgen_be7bc5dcb54a12bf =
  RIP.fromFFIType hs_bindgen_be7bc5dcb54a12bf_base

{-# NOINLINE wl_display_connect_to_fd #-}
{-| __C declaration:__ @wl_display_connect_to_fd@

    __defined at:__ @wayland-client-core.h 243:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_connect_to_fd :: RIP.FunPtr (RIP.CInt -> IO (RIP.Ptr Wl_display))
wl_display_connect_to_fd =
  RIP.unsafePerformIO hs_bindgen_be7bc5dcb54a12bf

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_disconnect@
foreign import ccall unsafe "hs_bindgen_774bdbe63ef106a9" hs_bindgen_774bdbe63ef106a9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_disconnect@
hs_bindgen_774bdbe63ef106a9 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO ()))
hs_bindgen_774bdbe63ef106a9 =
  RIP.fromFFIType hs_bindgen_774bdbe63ef106a9_base

{-# NOINLINE wl_display_disconnect #-}
{-| __C declaration:__ @wl_display_disconnect@

    __defined at:__ @wayland-client-core.h 246:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_disconnect :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO ())
wl_display_disconnect =
  RIP.unsafePerformIO hs_bindgen_774bdbe63ef106a9

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_get_fd@
foreign import ccall unsafe "hs_bindgen_e7da3513b9681597" hs_bindgen_e7da3513b9681597_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_get_fd@
hs_bindgen_e7da3513b9681597 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt))
hs_bindgen_e7da3513b9681597 =
  RIP.fromFFIType hs_bindgen_e7da3513b9681597_base

{-# NOINLINE wl_display_get_fd #-}
{-| __C declaration:__ @wl_display_get_fd@

    __defined at:__ @wayland-client-core.h 249:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_get_fd :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt)
wl_display_get_fd =
  RIP.unsafePerformIO hs_bindgen_e7da3513b9681597

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_dispatch@
foreign import ccall unsafe "hs_bindgen_dddae707807d8179" hs_bindgen_dddae707807d8179_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_dispatch@
hs_bindgen_dddae707807d8179 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt))
hs_bindgen_dddae707807d8179 =
  RIP.fromFFIType hs_bindgen_dddae707807d8179_base

{-# NOINLINE wl_display_dispatch #-}
{-| __C declaration:__ @wl_display_dispatch@

    __defined at:__ @wayland-client-core.h 252:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt)
wl_display_dispatch =
  RIP.unsafePerformIO hs_bindgen_dddae707807d8179

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_dispatch_queue@
foreign import ccall unsafe "hs_bindgen_df2a4d05e9a8dda4" hs_bindgen_df2a4d05e9a8dda4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_dispatch_queue@
hs_bindgen_df2a4d05e9a8dda4 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr Wl_event_queue) -> IO RIP.CInt))
hs_bindgen_df2a4d05e9a8dda4 =
  RIP.fromFFIType hs_bindgen_df2a4d05e9a8dda4_base

{-# NOINLINE wl_display_dispatch_queue #-}
{-| __C declaration:__ @wl_display_dispatch_queue@

    __defined at:__ @wayland-client-core.h 255:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_queue :: RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr Wl_event_queue) -> IO RIP.CInt)
wl_display_dispatch_queue =
  RIP.unsafePerformIO hs_bindgen_df2a4d05e9a8dda4

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_dispatch_timeout@
foreign import ccall unsafe "hs_bindgen_14ca0525c5da3d5d" hs_bindgen_14ca0525c5da3d5d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_dispatch_timeout@
hs_bindgen_14ca0525c5da3d5d :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> (PtrConst.PtrConst Timespec) -> IO RIP.CInt))
hs_bindgen_14ca0525c5da3d5d =
  RIP.fromFFIType hs_bindgen_14ca0525c5da3d5d_base

{-# NOINLINE wl_display_dispatch_timeout #-}
{-| __C declaration:__ @wl_display_dispatch_timeout@

    __defined at:__ @wayland-client-core.h 259:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_timeout :: RIP.FunPtr ((RIP.Ptr Wl_display) -> (PtrConst.PtrConst Timespec) -> IO RIP.CInt)
wl_display_dispatch_timeout =
  RIP.unsafePerformIO hs_bindgen_14ca0525c5da3d5d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_dispatch_queue_timeout@
foreign import ccall unsafe "hs_bindgen_2927b416fd76b9c9" hs_bindgen_2927b416fd76b9c9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_dispatch_queue_timeout@
hs_bindgen_2927b416fd76b9c9 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr Wl_event_queue) -> (PtrConst.PtrConst Timespec) -> IO RIP.CInt))
hs_bindgen_2927b416fd76b9c9 =
  RIP.fromFFIType hs_bindgen_2927b416fd76b9c9_base

{-# NOINLINE wl_display_dispatch_queue_timeout #-}
{-| __C declaration:__ @wl_display_dispatch_queue_timeout@

    __defined at:__ @wayland-client-core.h 263:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_queue_timeout :: RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr Wl_event_queue) -> (PtrConst.PtrConst Timespec) -> IO RIP.CInt)
wl_display_dispatch_queue_timeout =
  RIP.unsafePerformIO hs_bindgen_2927b416fd76b9c9

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_dispatch_queue_pending@
foreign import ccall unsafe "hs_bindgen_fa9cb6394a142169" hs_bindgen_fa9cb6394a142169_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_dispatch_queue_pending@
hs_bindgen_fa9cb6394a142169 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr Wl_event_queue) -> IO RIP.CInt))
hs_bindgen_fa9cb6394a142169 =
  RIP.fromFFIType hs_bindgen_fa9cb6394a142169_base

{-# NOINLINE wl_display_dispatch_queue_pending #-}
{-| __C declaration:__ @wl_display_dispatch_queue_pending@

    __defined at:__ @wayland-client-core.h 268:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_queue_pending :: RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr Wl_event_queue) -> IO RIP.CInt)
wl_display_dispatch_queue_pending =
  RIP.unsafePerformIO hs_bindgen_fa9cb6394a142169

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_dispatch_pending@
foreign import ccall unsafe "hs_bindgen_6f0e76f012bbf235" hs_bindgen_6f0e76f012bbf235_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_dispatch_pending@
hs_bindgen_6f0e76f012bbf235 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt))
hs_bindgen_6f0e76f012bbf235 =
  RIP.fromFFIType hs_bindgen_6f0e76f012bbf235_base

{-# NOINLINE wl_display_dispatch_pending #-}
{-| __C declaration:__ @wl_display_dispatch_pending@

    __defined at:__ @wayland-client-core.h 272:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_dispatch_pending :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt)
wl_display_dispatch_pending =
  RIP.unsafePerformIO hs_bindgen_6f0e76f012bbf235

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_get_error@
foreign import ccall unsafe "hs_bindgen_fbf00c93b2754db9" hs_bindgen_fbf00c93b2754db9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_get_error@
hs_bindgen_fbf00c93b2754db9 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt))
hs_bindgen_fbf00c93b2754db9 =
  RIP.fromFFIType hs_bindgen_fbf00c93b2754db9_base

{-# NOINLINE wl_display_get_error #-}
{-| __C declaration:__ @wl_display_get_error@

    __defined at:__ @wayland-client-core.h 275:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_get_error :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt)
wl_display_get_error =
  RIP.unsafePerformIO hs_bindgen_fbf00c93b2754db9

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_get_protocol_error@
foreign import ccall unsafe "hs_bindgen_d7daa8707cd6c73c" hs_bindgen_d7daa8707cd6c73c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_get_protocol_error@
hs_bindgen_d7daa8707cd6c73c :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)) -> (RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_d7daa8707cd6c73c =
  RIP.fromFFIType hs_bindgen_d7daa8707cd6c73c_base

{-# NOINLINE wl_display_get_protocol_error #-}
{-| __C declaration:__ @wl_display_get_protocol_error@

    __defined at:__ @wayland-client-core.h 278:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_get_protocol_error :: RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)) -> (RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> IO HsBindgen.Runtime.LibC.Word32)
wl_display_get_protocol_error =
  RIP.unsafePerformIO hs_bindgen_d7daa8707cd6c73c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_flush@
foreign import ccall unsafe "hs_bindgen_10a30cb2e9a24655" hs_bindgen_10a30cb2e9a24655_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_flush@
hs_bindgen_10a30cb2e9a24655 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt))
hs_bindgen_10a30cb2e9a24655 =
  RIP.fromFFIType hs_bindgen_10a30cb2e9a24655_base

{-# NOINLINE wl_display_flush #-}
{-| __C declaration:__ @wl_display_flush@

    __defined at:__ @wayland-client-core.h 283:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_flush :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt)
wl_display_flush =
  RIP.unsafePerformIO hs_bindgen_10a30cb2e9a24655

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_roundtrip_queue@
foreign import ccall unsafe "hs_bindgen_8eee636240023092" hs_bindgen_8eee636240023092_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_roundtrip_queue@
hs_bindgen_8eee636240023092 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr Wl_event_queue) -> IO RIP.CInt))
hs_bindgen_8eee636240023092 =
  RIP.fromFFIType hs_bindgen_8eee636240023092_base

{-# NOINLINE wl_display_roundtrip_queue #-}
{-| __C declaration:__ @wl_display_roundtrip_queue@

    __defined at:__ @wayland-client-core.h 286:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_roundtrip_queue :: RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr Wl_event_queue) -> IO RIP.CInt)
wl_display_roundtrip_queue =
  RIP.unsafePerformIO hs_bindgen_8eee636240023092

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_roundtrip@
foreign import ccall unsafe "hs_bindgen_b1309f444e7a843f" hs_bindgen_b1309f444e7a843f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_roundtrip@
hs_bindgen_b1309f444e7a843f :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt))
hs_bindgen_b1309f444e7a843f =
  RIP.fromFFIType hs_bindgen_b1309f444e7a843f_base

{-# NOINLINE wl_display_roundtrip #-}
{-| __C declaration:__ @wl_display_roundtrip@

    __defined at:__ @wayland-client-core.h 290:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_roundtrip :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt)
wl_display_roundtrip =
  RIP.unsafePerformIO hs_bindgen_b1309f444e7a843f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_create_queue@
foreign import ccall unsafe "hs_bindgen_83d94b228dd3e67d" hs_bindgen_83d94b228dd3e67d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_create_queue@
hs_bindgen_83d94b228dd3e67d :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO (RIP.Ptr Wl_event_queue)))
hs_bindgen_83d94b228dd3e67d =
  RIP.fromFFIType hs_bindgen_83d94b228dd3e67d_base

{-# NOINLINE wl_display_create_queue #-}
{-| __C declaration:__ @wl_display_create_queue@

    __defined at:__ @wayland-client-core.h 293:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_create_queue :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO (RIP.Ptr Wl_event_queue))
wl_display_create_queue =
  RIP.unsafePerformIO hs_bindgen_83d94b228dd3e67d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_create_queue_with_name@
foreign import ccall unsafe "hs_bindgen_1b5b7c6f0f27f3e6" hs_bindgen_1b5b7c6f0f27f3e6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_create_queue_with_name@
hs_bindgen_1b5b7c6f0f27f3e6 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Wl_event_queue)))
hs_bindgen_1b5b7c6f0f27f3e6 =
  RIP.fromFFIType hs_bindgen_1b5b7c6f0f27f3e6_base

{-# NOINLINE wl_display_create_queue_with_name #-}
{-| __C declaration:__ @wl_display_create_queue_with_name@

    __defined at:__ @wayland-client-core.h 296:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_create_queue_with_name :: RIP.FunPtr ((RIP.Ptr Wl_display) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Wl_event_queue))
wl_display_create_queue_with_name =
  RIP.unsafePerformIO hs_bindgen_1b5b7c6f0f27f3e6

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_prepare_read_queue@
foreign import ccall unsafe "hs_bindgen_becc92509c4731c0" hs_bindgen_becc92509c4731c0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_prepare_read_queue@
hs_bindgen_becc92509c4731c0 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr Wl_event_queue) -> IO RIP.CInt))
hs_bindgen_becc92509c4731c0 =
  RIP.fromFFIType hs_bindgen_becc92509c4731c0_base

{-# NOINLINE wl_display_prepare_read_queue #-}
{-| __C declaration:__ @wl_display_prepare_read_queue@

    __defined at:__ @wayland-client-core.h 300:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_prepare_read_queue :: RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr Wl_event_queue) -> IO RIP.CInt)
wl_display_prepare_read_queue =
  RIP.unsafePerformIO hs_bindgen_becc92509c4731c0

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_prepare_read@
foreign import ccall unsafe "hs_bindgen_c1eca48a18c3ccc1" hs_bindgen_c1eca48a18c3ccc1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_prepare_read@
hs_bindgen_c1eca48a18c3ccc1 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt))
hs_bindgen_c1eca48a18c3ccc1 =
  RIP.fromFFIType hs_bindgen_c1eca48a18c3ccc1_base

{-# NOINLINE wl_display_prepare_read #-}
{-| __C declaration:__ @wl_display_prepare_read@

    __defined at:__ @wayland-client-core.h 304:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_prepare_read :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt)
wl_display_prepare_read =
  RIP.unsafePerformIO hs_bindgen_c1eca48a18c3ccc1

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_cancel_read@
foreign import ccall unsafe "hs_bindgen_11e401a3ccc75468" hs_bindgen_11e401a3ccc75468_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_cancel_read@
hs_bindgen_11e401a3ccc75468 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO ()))
hs_bindgen_11e401a3ccc75468 =
  RIP.fromFFIType hs_bindgen_11e401a3ccc75468_base

{-# NOINLINE wl_display_cancel_read #-}
{-| __C declaration:__ @wl_display_cancel_read@

    __defined at:__ @wayland-client-core.h 307:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_cancel_read :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO ())
wl_display_cancel_read =
  RIP.unsafePerformIO hs_bindgen_11e401a3ccc75468

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_read_events@
foreign import ccall unsafe "hs_bindgen_9398caf6022927f4" hs_bindgen_9398caf6022927f4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_read_events@
hs_bindgen_9398caf6022927f4 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt))
hs_bindgen_9398caf6022927f4 =
  RIP.fromFFIType hs_bindgen_9398caf6022927f4_base

{-# NOINLINE wl_display_read_events #-}
{-| __C declaration:__ @wl_display_read_events@

    __defined at:__ @wayland-client-core.h 310:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_read_events :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO RIP.CInt)
wl_display_read_events =
  RIP.unsafePerformIO hs_bindgen_9398caf6022927f4

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_set_max_buffer_size@
foreign import ccall unsafe "hs_bindgen_8303e11e0d73ae88" hs_bindgen_8303e11e0d73ae88_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_set_max_buffer_size@
hs_bindgen_8303e11e0d73ae88 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> HsBindgen.Runtime.LibC.CSize -> IO ()))
hs_bindgen_8303e11e0d73ae88 =
  RIP.fromFFIType hs_bindgen_8303e11e0d73ae88_base

{-# NOINLINE wl_display_set_max_buffer_size #-}
{-| __C declaration:__ @wl_display_set_max_buffer_size@

    __defined at:__ @wayland-client-core.h 316:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wl_display_set_max_buffer_size :: RIP.FunPtr ((RIP.Ptr Wl_display) -> HsBindgen.Runtime.LibC.CSize -> IO ())
wl_display_set_max_buffer_size =
  RIP.unsafePerformIO hs_bindgen_8303e11e0d73ae88

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_add_listener@
foreign import ccall unsafe "hs_bindgen_3351bc37c3bd130d" hs_bindgen_3351bc37c3bd130d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_add_listener@
hs_bindgen_3351bc37c3bd130d :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> (PtrConst.PtrConst Wl_display_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_3351bc37c3bd130d =
  RIP.fromFFIType hs_bindgen_3351bc37c3bd130d_base

{-# NOINLINE wl_display_add_listener #-}
{-| __C declaration:__ @wl_display_add_listener@

    __defined at:__ @wayland-client-protocol.h 1037:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_display) -> (PtrConst.PtrConst Wl_display_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_display_add_listener =
  RIP.unsafePerformIO hs_bindgen_3351bc37c3bd130d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_set_user_data@
foreign import ccall unsafe "hs_bindgen_980aeaa889c0d3e0" hs_bindgen_980aeaa889c0d3e0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_set_user_data@
hs_bindgen_980aeaa889c0d3e0 :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_980aeaa889c0d3e0 =
  RIP.fromFFIType hs_bindgen_980aeaa889c0d3e0_base

{-# NOINLINE wl_display_set_user_data #-}
{-| __C declaration:__ @wl_display_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1067:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_display) -> (RIP.Ptr RIP.Void) -> IO ())
wl_display_set_user_data =
  RIP.unsafePerformIO hs_bindgen_980aeaa889c0d3e0

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_get_user_data@
foreign import ccall unsafe "hs_bindgen_3e1c67998d3e747f" hs_bindgen_3e1c67998d3e747f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_get_user_data@
hs_bindgen_3e1c67998d3e747f :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_3e1c67998d3e747f =
  RIP.fromFFIType hs_bindgen_3e1c67998d3e747f_base

{-# NOINLINE wl_display_get_user_data #-}
{-| __C declaration:__ @wl_display_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1074:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO (RIP.Ptr RIP.Void))
wl_display_get_user_data =
  RIP.unsafePerformIO hs_bindgen_3e1c67998d3e747f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_get_version@
foreign import ccall unsafe "hs_bindgen_490c7d30ea0d869b" hs_bindgen_490c7d30ea0d869b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_get_version@
hs_bindgen_490c7d30ea0d869b :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_490c7d30ea0d869b =
  RIP.fromFFIType hs_bindgen_490c7d30ea0d869b_base

{-# NOINLINE wl_display_get_version #-}
{-| __C declaration:__ @wl_display_get_version@

    __defined at:__ @wayland-client-protocol.h 1080:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_get_version :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO HsBindgen.Runtime.LibC.Word32)
wl_display_get_version =
  RIP.unsafePerformIO hs_bindgen_490c7d30ea0d869b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_sync@
foreign import ccall unsafe "hs_bindgen_7f963b1d0f51c11d" hs_bindgen_7f963b1d0f51c11d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_sync@
hs_bindgen_7f963b1d0f51c11d :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO (RIP.Ptr Wl_callback)))
hs_bindgen_7f963b1d0f51c11d =
  RIP.fromFFIType hs_bindgen_7f963b1d0f51c11d_base

{-# NOINLINE wl_display_sync #-}
{-| __C declaration:__ @wl_display_sync@

    __defined at:__ @wayland-client-protocol.h 1101:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_sync :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO (RIP.Ptr Wl_callback))
wl_display_sync =
  RIP.unsafePerformIO hs_bindgen_7f963b1d0f51c11d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_get_registry@
foreign import ccall unsafe "hs_bindgen_1161e1ce1991618c" hs_bindgen_1161e1ce1991618c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_get_registry@
hs_bindgen_1161e1ce1991618c :: IO (RIP.FunPtr ((RIP.Ptr Wl_display) -> IO (RIP.Ptr Wl_registry)))
hs_bindgen_1161e1ce1991618c =
  RIP.fromFFIType hs_bindgen_1161e1ce1991618c_base

{-# NOINLINE wl_display_get_registry #-}
{-| __C declaration:__ @wl_display_get_registry@

    __defined at:__ @wayland-client-protocol.h 1125:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_display_get_registry :: RIP.FunPtr ((RIP.Ptr Wl_display) -> IO (RIP.Ptr Wl_registry))
wl_display_get_registry =
  RIP.unsafePerformIO hs_bindgen_1161e1ce1991618c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_registry_add_listener@
foreign import ccall unsafe "hs_bindgen_da73f91c9d466d5d" hs_bindgen_da73f91c9d466d5d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_registry_add_listener@
hs_bindgen_da73f91c9d466d5d :: IO (RIP.FunPtr ((RIP.Ptr Wl_registry) -> (PtrConst.PtrConst Wl_registry_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_da73f91c9d466d5d =
  RIP.fromFFIType hs_bindgen_da73f91c9d466d5d_base

{-# NOINLINE wl_registry_add_listener #-}
{-| __C declaration:__ @wl_registry_add_listener@

    __defined at:__ @wayland-client-protocol.h 1181:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_registry) -> (PtrConst.PtrConst Wl_registry_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_registry_add_listener =
  RIP.unsafePerformIO hs_bindgen_da73f91c9d466d5d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_registry_set_user_data@
foreign import ccall unsafe "hs_bindgen_ea91df0579255988" hs_bindgen_ea91df0579255988_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_registry_set_user_data@
hs_bindgen_ea91df0579255988 :: IO (RIP.FunPtr ((RIP.Ptr Wl_registry) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_ea91df0579255988 =
  RIP.fromFFIType hs_bindgen_ea91df0579255988_base

{-# NOINLINE wl_registry_set_user_data #-}
{-| __C declaration:__ @wl_registry_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1206:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_registry) -> (RIP.Ptr RIP.Void) -> IO ())
wl_registry_set_user_data =
  RIP.unsafePerformIO hs_bindgen_ea91df0579255988

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_registry_get_user_data@
foreign import ccall unsafe "hs_bindgen_27d959d1340900ae" hs_bindgen_27d959d1340900ae_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_registry_get_user_data@
hs_bindgen_27d959d1340900ae :: IO (RIP.FunPtr ((RIP.Ptr Wl_registry) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_27d959d1340900ae =
  RIP.fromFFIType hs_bindgen_27d959d1340900ae_base

{-# NOINLINE wl_registry_get_user_data #-}
{-| __C declaration:__ @wl_registry_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1213:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_registry) -> IO (RIP.Ptr RIP.Void))
wl_registry_get_user_data =
  RIP.unsafePerformIO hs_bindgen_27d959d1340900ae

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_registry_get_version@
foreign import ccall unsafe "hs_bindgen_a70f045e17cc6a50" hs_bindgen_a70f045e17cc6a50_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_registry_get_version@
hs_bindgen_a70f045e17cc6a50 :: IO (RIP.FunPtr ((RIP.Ptr Wl_registry) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_a70f045e17cc6a50 =
  RIP.fromFFIType hs_bindgen_a70f045e17cc6a50_base

{-# NOINLINE wl_registry_get_version #-}
{-| __C declaration:__ @wl_registry_get_version@

    __defined at:__ @wayland-client-protocol.h 1219:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_get_version :: RIP.FunPtr ((RIP.Ptr Wl_registry) -> IO HsBindgen.Runtime.LibC.Word32)
wl_registry_get_version =
  RIP.unsafePerformIO hs_bindgen_a70f045e17cc6a50

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_registry_destroy@
foreign import ccall unsafe "hs_bindgen_4dd42f094b7af3f4" hs_bindgen_4dd42f094b7af3f4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_registry_destroy@
hs_bindgen_4dd42f094b7af3f4 :: IO (RIP.FunPtr ((RIP.Ptr Wl_registry) -> IO ()))
hs_bindgen_4dd42f094b7af3f4 =
  RIP.fromFFIType hs_bindgen_4dd42f094b7af3f4_base

{-# NOINLINE wl_registry_destroy #-}
{-| __C declaration:__ @wl_registry_destroy@

    __defined at:__ @wayland-client-protocol.h 1226:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_destroy :: RIP.FunPtr ((RIP.Ptr Wl_registry) -> IO ())
wl_registry_destroy =
  RIP.unsafePerformIO hs_bindgen_4dd42f094b7af3f4

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_registry_bind@
foreign import ccall unsafe "hs_bindgen_2c173d09a0cc8f15" hs_bindgen_2c173d09a0cc8f15_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_registry_bind@
hs_bindgen_2c173d09a0cc8f15 :: IO (RIP.FunPtr ((RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_2c173d09a0cc8f15 =
  RIP.fromFFIType hs_bindgen_2c173d09a0cc8f15_base

{-# NOINLINE wl_registry_bind #-}
{-| __C declaration:__ @wl_registry_bind@

    __defined at:__ @wayland-client-protocol.h 1238:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_registry_bind :: RIP.FunPtr ((RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr RIP.Void))
wl_registry_bind =
  RIP.unsafePerformIO hs_bindgen_2c173d09a0cc8f15

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_callback_add_listener@
foreign import ccall unsafe "hs_bindgen_849acd2231add35c" hs_bindgen_849acd2231add35c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_callback_add_listener@
hs_bindgen_849acd2231add35c :: IO (RIP.FunPtr ((RIP.Ptr Wl_callback) -> (PtrConst.PtrConst Wl_callback_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_849acd2231add35c =
  RIP.fromFFIType hs_bindgen_849acd2231add35c_base

{-# NOINLINE wl_callback_add_listener #-}
{-| __C declaration:__ @wl_callback_add_listener@

    __defined at:__ @wayland-client-protocol.h 1268:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_callback) -> (PtrConst.PtrConst Wl_callback_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_callback_add_listener =
  RIP.unsafePerformIO hs_bindgen_849acd2231add35c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_callback_set_user_data@
foreign import ccall unsafe "hs_bindgen_b2b59dbd762dc64c" hs_bindgen_b2b59dbd762dc64c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_callback_set_user_data@
hs_bindgen_b2b59dbd762dc64c :: IO (RIP.FunPtr ((RIP.Ptr Wl_callback) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_b2b59dbd762dc64c =
  RIP.fromFFIType hs_bindgen_b2b59dbd762dc64c_base

{-# NOINLINE wl_callback_set_user_data #-}
{-| __C declaration:__ @wl_callback_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1283:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_callback) -> (RIP.Ptr RIP.Void) -> IO ())
wl_callback_set_user_data =
  RIP.unsafePerformIO hs_bindgen_b2b59dbd762dc64c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_callback_get_user_data@
foreign import ccall unsafe "hs_bindgen_9047ca684060cc1b" hs_bindgen_9047ca684060cc1b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_callback_get_user_data@
hs_bindgen_9047ca684060cc1b :: IO (RIP.FunPtr ((RIP.Ptr Wl_callback) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_9047ca684060cc1b =
  RIP.fromFFIType hs_bindgen_9047ca684060cc1b_base

{-# NOINLINE wl_callback_get_user_data #-}
{-| __C declaration:__ @wl_callback_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1290:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_callback) -> IO (RIP.Ptr RIP.Void))
wl_callback_get_user_data =
  RIP.unsafePerformIO hs_bindgen_9047ca684060cc1b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_callback_get_version@
foreign import ccall unsafe "hs_bindgen_672a5fbeba7d93df" hs_bindgen_672a5fbeba7d93df_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_callback_get_version@
hs_bindgen_672a5fbeba7d93df :: IO (RIP.FunPtr ((RIP.Ptr Wl_callback) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_672a5fbeba7d93df =
  RIP.fromFFIType hs_bindgen_672a5fbeba7d93df_base

{-# NOINLINE wl_callback_get_version #-}
{-| __C declaration:__ @wl_callback_get_version@

    __defined at:__ @wayland-client-protocol.h 1296:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_get_version :: RIP.FunPtr ((RIP.Ptr Wl_callback) -> IO HsBindgen.Runtime.LibC.Word32)
wl_callback_get_version =
  RIP.unsafePerformIO hs_bindgen_672a5fbeba7d93df

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_callback_destroy@
foreign import ccall unsafe "hs_bindgen_b913b03251bc52a0" hs_bindgen_b913b03251bc52a0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_callback_destroy@
hs_bindgen_b913b03251bc52a0 :: IO (RIP.FunPtr ((RIP.Ptr Wl_callback) -> IO ()))
hs_bindgen_b913b03251bc52a0 =
  RIP.fromFFIType hs_bindgen_b913b03251bc52a0_base

{-# NOINLINE wl_callback_destroy #-}
{-| __C declaration:__ @wl_callback_destroy@

    __defined at:__ @wayland-client-protocol.h 1303:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_callback_destroy :: RIP.FunPtr ((RIP.Ptr Wl_callback) -> IO ())
wl_callback_destroy =
  RIP.unsafePerformIO hs_bindgen_b913b03251bc52a0

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_compositor_set_user_data@
foreign import ccall unsafe "hs_bindgen_1d82914c3ae8cbe9" hs_bindgen_1d82914c3ae8cbe9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_compositor_set_user_data@
hs_bindgen_1d82914c3ae8cbe9 :: IO (RIP.FunPtr ((RIP.Ptr Wl_compositor) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_1d82914c3ae8cbe9 =
  RIP.fromFFIType hs_bindgen_1d82914c3ae8cbe9_base

{-# NOINLINE wl_compositor_set_user_data #-}
{-| __C declaration:__ @wl_compositor_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1323:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_compositor) -> (RIP.Ptr RIP.Void) -> IO ())
wl_compositor_set_user_data =
  RIP.unsafePerformIO hs_bindgen_1d82914c3ae8cbe9

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_compositor_get_user_data@
foreign import ccall unsafe "hs_bindgen_3aeeba52b8f0677c" hs_bindgen_3aeeba52b8f0677c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_compositor_get_user_data@
hs_bindgen_3aeeba52b8f0677c :: IO (RIP.FunPtr ((RIP.Ptr Wl_compositor) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_3aeeba52b8f0677c =
  RIP.fromFFIType hs_bindgen_3aeeba52b8f0677c_base

{-# NOINLINE wl_compositor_get_user_data #-}
{-| __C declaration:__ @wl_compositor_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1330:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_compositor) -> IO (RIP.Ptr RIP.Void))
wl_compositor_get_user_data =
  RIP.unsafePerformIO hs_bindgen_3aeeba52b8f0677c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_compositor_get_version@
foreign import ccall unsafe "hs_bindgen_2c2e396899dbb371" hs_bindgen_2c2e396899dbb371_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_compositor_get_version@
hs_bindgen_2c2e396899dbb371 :: IO (RIP.FunPtr ((RIP.Ptr Wl_compositor) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_2c2e396899dbb371 =
  RIP.fromFFIType hs_bindgen_2c2e396899dbb371_base

{-# NOINLINE wl_compositor_get_version #-}
{-| __C declaration:__ @wl_compositor_get_version@

    __defined at:__ @wayland-client-protocol.h 1336:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_get_version :: RIP.FunPtr ((RIP.Ptr Wl_compositor) -> IO HsBindgen.Runtime.LibC.Word32)
wl_compositor_get_version =
  RIP.unsafePerformIO hs_bindgen_2c2e396899dbb371

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_compositor_destroy@
foreign import ccall unsafe "hs_bindgen_edb12a5df6175483" hs_bindgen_edb12a5df6175483_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_compositor_destroy@
hs_bindgen_edb12a5df6175483 :: IO (RIP.FunPtr ((RIP.Ptr Wl_compositor) -> IO ()))
hs_bindgen_edb12a5df6175483 =
  RIP.fromFFIType hs_bindgen_edb12a5df6175483_base

{-# NOINLINE wl_compositor_destroy #-}
{-| __C declaration:__ @wl_compositor_destroy@

    __defined at:__ @wayland-client-protocol.h 1343:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_destroy :: RIP.FunPtr ((RIP.Ptr Wl_compositor) -> IO ())
wl_compositor_destroy =
  RIP.unsafePerformIO hs_bindgen_edb12a5df6175483

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_compositor_create_surface@
foreign import ccall unsafe "hs_bindgen_f096b2166abbbdc5" hs_bindgen_f096b2166abbbdc5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_compositor_create_surface@
hs_bindgen_f096b2166abbbdc5 :: IO (RIP.FunPtr ((RIP.Ptr Wl_compositor) -> IO (RIP.Ptr Wl_surface)))
hs_bindgen_f096b2166abbbdc5 =
  RIP.fromFFIType hs_bindgen_f096b2166abbbdc5_base

{-# NOINLINE wl_compositor_create_surface #-}
{-| __C declaration:__ @wl_compositor_create_surface@

    __defined at:__ @wayland-client-protocol.h 1354:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_create_surface :: RIP.FunPtr ((RIP.Ptr Wl_compositor) -> IO (RIP.Ptr Wl_surface))
wl_compositor_create_surface =
  RIP.unsafePerformIO hs_bindgen_f096b2166abbbdc5

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_compositor_create_region@
foreign import ccall unsafe "hs_bindgen_307feed117f624e3" hs_bindgen_307feed117f624e3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_compositor_create_region@
hs_bindgen_307feed117f624e3 :: IO (RIP.FunPtr ((RIP.Ptr Wl_compositor) -> IO (RIP.Ptr Wl_region)))
hs_bindgen_307feed117f624e3 =
  RIP.fromFFIType hs_bindgen_307feed117f624e3_base

{-# NOINLINE wl_compositor_create_region #-}
{-| __C declaration:__ @wl_compositor_create_region@

    __defined at:__ @wayland-client-protocol.h 1370:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_compositor_create_region :: RIP.FunPtr ((RIP.Ptr Wl_compositor) -> IO (RIP.Ptr Wl_region))
wl_compositor_create_region =
  RIP.unsafePerformIO hs_bindgen_307feed117f624e3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_pool_set_user_data@
foreign import ccall unsafe "hs_bindgen_31afa15eddb30213" hs_bindgen_31afa15eddb30213_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_pool_set_user_data@
hs_bindgen_31afa15eddb30213 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_31afa15eddb30213 =
  RIP.fromFFIType hs_bindgen_31afa15eddb30213_base

{-# NOINLINE wl_shm_pool_set_user_data #-}
{-| __C declaration:__ @wl_shm_pool_set_user_data@

    __defined at:__ @wayland-client-protocol.h 1400:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> (RIP.Ptr RIP.Void) -> IO ())
wl_shm_pool_set_user_data =
  RIP.unsafePerformIO hs_bindgen_31afa15eddb30213

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_pool_get_user_data@
foreign import ccall unsafe "hs_bindgen_656b1ee9dd3d07b0" hs_bindgen_656b1ee9dd3d07b0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_pool_get_user_data@
hs_bindgen_656b1ee9dd3d07b0 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_656b1ee9dd3d07b0 =
  RIP.fromFFIType hs_bindgen_656b1ee9dd3d07b0_base

{-# NOINLINE wl_shm_pool_get_user_data #-}
{-| __C declaration:__ @wl_shm_pool_get_user_data@

    __defined at:__ @wayland-client-protocol.h 1407:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> IO (RIP.Ptr RIP.Void))
wl_shm_pool_get_user_data =
  RIP.unsafePerformIO hs_bindgen_656b1ee9dd3d07b0

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_pool_get_version@
foreign import ccall unsafe "hs_bindgen_afaa1ffbc44c02d1" hs_bindgen_afaa1ffbc44c02d1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_pool_get_version@
hs_bindgen_afaa1ffbc44c02d1 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_afaa1ffbc44c02d1 =
  RIP.fromFFIType hs_bindgen_afaa1ffbc44c02d1_base

{-# NOINLINE wl_shm_pool_get_version #-}
{-| __C declaration:__ @wl_shm_pool_get_version@

    __defined at:__ @wayland-client-protocol.h 1413:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_get_version :: RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> IO HsBindgen.Runtime.LibC.Word32)
wl_shm_pool_get_version =
  RIP.unsafePerformIO hs_bindgen_afaa1ffbc44c02d1

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_pool_create_buffer@
foreign import ccall unsafe "hs_bindgen_8672e689d072f67a" hs_bindgen_8672e689d072f67a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_pool_create_buffer@
hs_bindgen_8672e689d072f67a :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr Wl_buffer)))
hs_bindgen_8672e689d072f67a =
  RIP.fromFFIType hs_bindgen_8672e689d072f67a_base

{-# NOINLINE wl_shm_pool_create_buffer #-}
{-| __C declaration:__ @wl_shm_pool_create_buffer@

    __defined at:__ @wayland-client-protocol.h 1434:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_create_buffer :: RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr Wl_buffer))
wl_shm_pool_create_buffer =
  RIP.unsafePerformIO hs_bindgen_8672e689d072f67a

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_pool_destroy@
foreign import ccall unsafe "hs_bindgen_1a75b9fadf515e71" hs_bindgen_1a75b9fadf515e71_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_pool_destroy@
hs_bindgen_1a75b9fadf515e71 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> IO ()))
hs_bindgen_1a75b9fadf515e71 =
  RIP.fromFFIType hs_bindgen_1a75b9fadf515e71_base

{-# NOINLINE wl_shm_pool_destroy #-}
{-| __C declaration:__ @wl_shm_pool_destroy@

    __defined at:__ @wayland-client-protocol.h 1454:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_destroy :: RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> IO ())
wl_shm_pool_destroy =
  RIP.unsafePerformIO hs_bindgen_1a75b9fadf515e71

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_pool_resize@
foreign import ccall unsafe "hs_bindgen_013426e296eb494d" hs_bindgen_013426e296eb494d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_pool_resize@
hs_bindgen_013426e296eb494d :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_013426e296eb494d =
  RIP.fromFFIType hs_bindgen_013426e296eb494d_base

{-# NOINLINE wl_shm_pool_resize #-}
{-| __C declaration:__ @wl_shm_pool_resize@

    __defined at:__ @wayland-client-protocol.h 1475:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_pool_resize :: RIP.FunPtr ((RIP.Ptr Wl_shm_pool) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_shm_pool_resize =
  RIP.unsafePerformIO hs_bindgen_013426e296eb494d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_add_listener@
foreign import ccall unsafe "hs_bindgen_6a0b9a6cf04086c2" hs_bindgen_6a0b9a6cf04086c2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_add_listener@
hs_bindgen_6a0b9a6cf04086c2 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm) -> (PtrConst.PtrConst Wl_shm_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_6a0b9a6cf04086c2 =
  RIP.fromFFIType hs_bindgen_6a0b9a6cf04086c2_base

{-# NOINLINE wl_shm_add_listener #-}
{-| __C declaration:__ @wl_shm_add_listener@

    __defined at:__ @wayland-client-protocol.h 2005:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_shm) -> (PtrConst.PtrConst Wl_shm_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_shm_add_listener =
  RIP.unsafePerformIO hs_bindgen_6a0b9a6cf04086c2

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_set_user_data@
foreign import ccall unsafe "hs_bindgen_31fe9685e9ac7d19" hs_bindgen_31fe9685e9ac7d19_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_set_user_data@
hs_bindgen_31fe9685e9ac7d19 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_31fe9685e9ac7d19 =
  RIP.fromFFIType hs_bindgen_31fe9685e9ac7d19_base

{-# NOINLINE wl_shm_set_user_data #-}
{-| __C declaration:__ @wl_shm_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2031:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_shm) -> (RIP.Ptr RIP.Void) -> IO ())
wl_shm_set_user_data =
  RIP.unsafePerformIO hs_bindgen_31fe9685e9ac7d19

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_get_user_data@
foreign import ccall unsafe "hs_bindgen_0424109835fed2db" hs_bindgen_0424109835fed2db_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_get_user_data@
hs_bindgen_0424109835fed2db :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_0424109835fed2db =
  RIP.fromFFIType hs_bindgen_0424109835fed2db_base

{-# NOINLINE wl_shm_get_user_data #-}
{-| __C declaration:__ @wl_shm_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2038:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_shm) -> IO (RIP.Ptr RIP.Void))
wl_shm_get_user_data =
  RIP.unsafePerformIO hs_bindgen_0424109835fed2db

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_get_version@
foreign import ccall unsafe "hs_bindgen_7d9768051a2b2f4a" hs_bindgen_7d9768051a2b2f4a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_get_version@
hs_bindgen_7d9768051a2b2f4a :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_7d9768051a2b2f4a =
  RIP.fromFFIType hs_bindgen_7d9768051a2b2f4a_base

{-# NOINLINE wl_shm_get_version #-}
{-| __C declaration:__ @wl_shm_get_version@

    __defined at:__ @wayland-client-protocol.h 2044:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_get_version :: RIP.FunPtr ((RIP.Ptr Wl_shm) -> IO HsBindgen.Runtime.LibC.Word32)
wl_shm_get_version =
  RIP.unsafePerformIO hs_bindgen_7d9768051a2b2f4a

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_destroy@
foreign import ccall unsafe "hs_bindgen_0537d2f5d7eaf1be" hs_bindgen_0537d2f5d7eaf1be_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_destroy@
hs_bindgen_0537d2f5d7eaf1be :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm) -> IO ()))
hs_bindgen_0537d2f5d7eaf1be =
  RIP.fromFFIType hs_bindgen_0537d2f5d7eaf1be_base

{-# NOINLINE wl_shm_destroy #-}
{-| __C declaration:__ @wl_shm_destroy@

    __defined at:__ @wayland-client-protocol.h 2051:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_destroy :: RIP.FunPtr ((RIP.Ptr Wl_shm) -> IO ())
wl_shm_destroy =
  RIP.unsafePerformIO hs_bindgen_0537d2f5d7eaf1be

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_create_pool@
foreign import ccall unsafe "hs_bindgen_6dd789c259327336" hs_bindgen_6dd789c259327336_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_create_pool@
hs_bindgen_6dd789c259327336 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO (RIP.Ptr Wl_shm_pool)))
hs_bindgen_6dd789c259327336 =
  RIP.fromFFIType hs_bindgen_6dd789c259327336_base

{-# NOINLINE wl_shm_create_pool #-}
{-| __C declaration:__ @wl_shm_create_pool@

    __defined at:__ @wayland-client-protocol.h 2066:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_create_pool :: RIP.FunPtr ((RIP.Ptr Wl_shm) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO (RIP.Ptr Wl_shm_pool))
wl_shm_create_pool =
  RIP.unsafePerformIO hs_bindgen_6dd789c259327336

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_release@
foreign import ccall unsafe "hs_bindgen_e484ae75b4364677" hs_bindgen_e484ae75b4364677_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_release@
hs_bindgen_e484ae75b4364677 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shm) -> IO ()))
hs_bindgen_e484ae75b4364677 =
  RIP.fromFFIType hs_bindgen_e484ae75b4364677_base

{-# NOINLINE wl_shm_release #-}
{-| __C declaration:__ @wl_shm_release@

    __defined at:__ @wayland-client-protocol.h 2085:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shm_release :: RIP.FunPtr ((RIP.Ptr Wl_shm) -> IO ())
wl_shm_release =
  RIP.unsafePerformIO hs_bindgen_e484ae75b4364677

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_buffer_add_listener@
foreign import ccall unsafe "hs_bindgen_046663c941d5bd2d" hs_bindgen_046663c941d5bd2d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_buffer_add_listener@
hs_bindgen_046663c941d5bd2d :: IO (RIP.FunPtr ((RIP.Ptr Wl_buffer) -> (PtrConst.PtrConst Wl_buffer_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_046663c941d5bd2d =
  RIP.fromFFIType hs_bindgen_046663c941d5bd2d_base

{-# NOINLINE wl_buffer_add_listener #-}
{-| __C declaration:__ @wl_buffer_add_listener@

    __defined at:__ @wayland-client-protocol.h 2122:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_buffer) -> (PtrConst.PtrConst Wl_buffer_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_buffer_add_listener =
  RIP.unsafePerformIO hs_bindgen_046663c941d5bd2d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_buffer_set_user_data@
foreign import ccall unsafe "hs_bindgen_2080dbdb2129a8bd" hs_bindgen_2080dbdb2129a8bd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_buffer_set_user_data@
hs_bindgen_2080dbdb2129a8bd :: IO (RIP.FunPtr ((RIP.Ptr Wl_buffer) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_2080dbdb2129a8bd =
  RIP.fromFFIType hs_bindgen_2080dbdb2129a8bd_base

{-# NOINLINE wl_buffer_set_user_data #-}
{-| __C declaration:__ @wl_buffer_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2143:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_buffer) -> (RIP.Ptr RIP.Void) -> IO ())
wl_buffer_set_user_data =
  RIP.unsafePerformIO hs_bindgen_2080dbdb2129a8bd

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_buffer_get_user_data@
foreign import ccall unsafe "hs_bindgen_961b535a17bcd834" hs_bindgen_961b535a17bcd834_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_buffer_get_user_data@
hs_bindgen_961b535a17bcd834 :: IO (RIP.FunPtr ((RIP.Ptr Wl_buffer) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_961b535a17bcd834 =
  RIP.fromFFIType hs_bindgen_961b535a17bcd834_base

{-# NOINLINE wl_buffer_get_user_data #-}
{-| __C declaration:__ @wl_buffer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2150:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_buffer) -> IO (RIP.Ptr RIP.Void))
wl_buffer_get_user_data =
  RIP.unsafePerformIO hs_bindgen_961b535a17bcd834

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_buffer_get_version@
foreign import ccall unsafe "hs_bindgen_3d5e8fbdf0a757d0" hs_bindgen_3d5e8fbdf0a757d0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_buffer_get_version@
hs_bindgen_3d5e8fbdf0a757d0 :: IO (RIP.FunPtr ((RIP.Ptr Wl_buffer) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_3d5e8fbdf0a757d0 =
  RIP.fromFFIType hs_bindgen_3d5e8fbdf0a757d0_base

{-# NOINLINE wl_buffer_get_version #-}
{-| __C declaration:__ @wl_buffer_get_version@

    __defined at:__ @wayland-client-protocol.h 2156:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_get_version :: RIP.FunPtr ((RIP.Ptr Wl_buffer) -> IO HsBindgen.Runtime.LibC.Word32)
wl_buffer_get_version =
  RIP.unsafePerformIO hs_bindgen_3d5e8fbdf0a757d0

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_buffer_destroy@
foreign import ccall unsafe "hs_bindgen_f3d4e18d852a1b57" hs_bindgen_f3d4e18d852a1b57_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_buffer_destroy@
hs_bindgen_f3d4e18d852a1b57 :: IO (RIP.FunPtr ((RIP.Ptr Wl_buffer) -> IO ()))
hs_bindgen_f3d4e18d852a1b57 =
  RIP.fromFFIType hs_bindgen_f3d4e18d852a1b57_base

{-# NOINLINE wl_buffer_destroy #-}
{-| __C declaration:__ @wl_buffer_destroy@

    __defined at:__ @wayland-client-protocol.h 2170:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_buffer_destroy :: RIP.FunPtr ((RIP.Ptr Wl_buffer) -> IO ())
wl_buffer_destroy =
  RIP.unsafePerformIO hs_bindgen_f3d4e18d852a1b57

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_add_listener@
foreign import ccall unsafe "hs_bindgen_30b0540039977a0a" hs_bindgen_30b0540039977a0a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_add_listener@
hs_bindgen_30b0540039977a0a :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> (PtrConst.PtrConst Wl_data_offer_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_30b0540039977a0a =
  RIP.fromFFIType hs_bindgen_30b0540039977a0a_base

{-# NOINLINE wl_data_offer_add_listener #-}
{-| __C declaration:__ @wl_data_offer_add_listener@

    __defined at:__ @wayland-client-protocol.h 2278:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> (PtrConst.PtrConst Wl_data_offer_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_data_offer_add_listener =
  RIP.unsafePerformIO hs_bindgen_30b0540039977a0a

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_set_user_data@
foreign import ccall unsafe "hs_bindgen_bd14dcde2f1b671d" hs_bindgen_bd14dcde2f1b671d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_set_user_data@
hs_bindgen_bd14dcde2f1b671d :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_bd14dcde2f1b671d =
  RIP.fromFFIType hs_bindgen_bd14dcde2f1b671d_base

{-# NOINLINE wl_data_offer_set_user_data #-}
{-| __C declaration:__ @wl_data_offer_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2327:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> (RIP.Ptr RIP.Void) -> IO ())
wl_data_offer_set_user_data =
  RIP.unsafePerformIO hs_bindgen_bd14dcde2f1b671d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_get_user_data@
foreign import ccall unsafe "hs_bindgen_cd3af86256e46a49" hs_bindgen_cd3af86256e46a49_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_get_user_data@
hs_bindgen_cd3af86256e46a49 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_cd3af86256e46a49 =
  RIP.fromFFIType hs_bindgen_cd3af86256e46a49_base

{-# NOINLINE wl_data_offer_get_user_data #-}
{-| __C declaration:__ @wl_data_offer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2334:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> IO (RIP.Ptr RIP.Void))
wl_data_offer_get_user_data =
  RIP.unsafePerformIO hs_bindgen_cd3af86256e46a49

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_get_version@
foreign import ccall unsafe "hs_bindgen_15a40cc3227e9d48" hs_bindgen_15a40cc3227e9d48_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_get_version@
hs_bindgen_15a40cc3227e9d48 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_15a40cc3227e9d48 =
  RIP.fromFFIType hs_bindgen_15a40cc3227e9d48_base

{-# NOINLINE wl_data_offer_get_version #-}
{-| __C declaration:__ @wl_data_offer_get_version@

    __defined at:__ @wayland-client-protocol.h 2340:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_get_version :: RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> IO HsBindgen.Runtime.LibC.Word32)
wl_data_offer_get_version =
  RIP.unsafePerformIO hs_bindgen_15a40cc3227e9d48

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_accept@
foreign import ccall unsafe "hs_bindgen_1116280eeb891405" hs_bindgen_1116280eeb891405_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_accept@
hs_bindgen_1116280eeb891405 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_1116280eeb891405 =
  RIP.fromFFIType hs_bindgen_1116280eeb891405_base

{-# NOINLINE wl_data_offer_accept #-}
{-| __C declaration:__ @wl_data_offer_accept@

    __defined at:__ @wayland-client-protocol.h 2364:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_accept :: RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ())
wl_data_offer_accept =
  RIP.unsafePerformIO hs_bindgen_1116280eeb891405

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_receive@
foreign import ccall unsafe "hs_bindgen_b1b0197c60c99f38" hs_bindgen_b1b0197c60c99f38_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_receive@
hs_bindgen_b1b0197c60c99f38 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_b1b0197c60c99f38 =
  RIP.fromFFIType hs_bindgen_b1b0197c60c99f38_base

{-# NOINLINE wl_data_offer_receive #-}
{-| __C declaration:__ @wl_data_offer_receive@

    __defined at:__ @wayland-client-protocol.h 2390:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_receive :: RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_data_offer_receive =
  RIP.unsafePerformIO hs_bindgen_b1b0197c60c99f38

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_destroy@
foreign import ccall unsafe "hs_bindgen_5b5588537c08d6c6" hs_bindgen_5b5588537c08d6c6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_destroy@
hs_bindgen_5b5588537c08d6c6 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> IO ()))
hs_bindgen_5b5588537c08d6c6 =
  RIP.fromFFIType hs_bindgen_5b5588537c08d6c6_base

{-# NOINLINE wl_data_offer_destroy #-}
{-| __C declaration:__ @wl_data_offer_destroy@

    __defined at:__ @wayland-client-protocol.h 2402:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_destroy :: RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> IO ())
wl_data_offer_destroy =
  RIP.unsafePerformIO hs_bindgen_5b5588537c08d6c6

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_finish@
foreign import ccall unsafe "hs_bindgen_1d1f83f17b52c896" hs_bindgen_1d1f83f17b52c896_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_finish@
hs_bindgen_1d1f83f17b52c896 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> IO ()))
hs_bindgen_1d1f83f17b52c896 =
  RIP.fromFFIType hs_bindgen_1d1f83f17b52c896_base

{-# NOINLINE wl_data_offer_finish #-}
{-| __C declaration:__ @wl_data_offer_finish@

    __defined at:__ @wayland-client-protocol.h 2427:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_finish :: RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> IO ())
wl_data_offer_finish =
  RIP.unsafePerformIO hs_bindgen_1d1f83f17b52c896

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_set_actions@
foreign import ccall unsafe "hs_bindgen_b9551e9a1f7da20e" hs_bindgen_b9551e9a1f7da20e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_set_actions@
hs_bindgen_b9551e9a1f7da20e :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_b9551e9a1f7da20e =
  RIP.fromFFIType hs_bindgen_b9551e9a1f7da20e_base

{-# NOINLINE wl_data_offer_set_actions #-}
{-| __C declaration:__ @wl_data_offer_set_actions@

    __defined at:__ @wayland-client-protocol.h 2469:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_offer_set_actions :: RIP.FunPtr ((RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_data_offer_set_actions =
  RIP.unsafePerformIO hs_bindgen_b9551e9a1f7da20e

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_add_listener@
foreign import ccall unsafe "hs_bindgen_c9e071f653cb9156" hs_bindgen_c9e071f653cb9156_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_add_listener@
hs_bindgen_c9e071f653cb9156 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst Wl_data_source_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_c9e071f653cb9156 =
  RIP.fromFFIType hs_bindgen_c9e071f653cb9156_base

{-# NOINLINE wl_data_source_add_listener #-}
{-| __C declaration:__ @wl_data_source_add_listener@

    __defined at:__ @wayland-client-protocol.h 2617:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst Wl_data_source_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_data_source_add_listener =
  RIP.unsafePerformIO hs_bindgen_c9e071f653cb9156

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_set_user_data@
foreign import ccall unsafe "hs_bindgen_123a44ba12049e43" hs_bindgen_123a44ba12049e43_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_set_user_data@
hs_bindgen_123a44ba12049e43 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_source) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_123a44ba12049e43 =
  RIP.fromFFIType hs_bindgen_123a44ba12049e43_base

{-# NOINLINE wl_data_source_set_user_data #-}
{-| __C declaration:__ @wl_data_source_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2668:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_data_source) -> (RIP.Ptr RIP.Void) -> IO ())
wl_data_source_set_user_data =
  RIP.unsafePerformIO hs_bindgen_123a44ba12049e43

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_get_user_data@
foreign import ccall unsafe "hs_bindgen_725d2f93160fdded" hs_bindgen_725d2f93160fdded_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_get_user_data@
hs_bindgen_725d2f93160fdded :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_source) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_725d2f93160fdded =
  RIP.fromFFIType hs_bindgen_725d2f93160fdded_base

{-# NOINLINE wl_data_source_get_user_data #-}
{-| __C declaration:__ @wl_data_source_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2675:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_data_source) -> IO (RIP.Ptr RIP.Void))
wl_data_source_get_user_data =
  RIP.unsafePerformIO hs_bindgen_725d2f93160fdded

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_get_version@
foreign import ccall unsafe "hs_bindgen_875d953af0d8cc3c" hs_bindgen_875d953af0d8cc3c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_get_version@
hs_bindgen_875d953af0d8cc3c :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_source) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_875d953af0d8cc3c =
  RIP.fromFFIType hs_bindgen_875d953af0d8cc3c_base

{-# NOINLINE wl_data_source_get_version #-}
{-| __C declaration:__ @wl_data_source_get_version@

    __defined at:__ @wayland-client-protocol.h 2681:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_get_version :: RIP.FunPtr ((RIP.Ptr Wl_data_source) -> IO HsBindgen.Runtime.LibC.Word32)
wl_data_source_get_version =
  RIP.unsafePerformIO hs_bindgen_875d953af0d8cc3c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_offer@
foreign import ccall unsafe "hs_bindgen_0ac8efc1a22b0c9e" hs_bindgen_0ac8efc1a22b0c9e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_offer@
hs_bindgen_0ac8efc1a22b0c9e :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_0ac8efc1a22b0c9e =
  RIP.fromFFIType hs_bindgen_0ac8efc1a22b0c9e_base

{-# NOINLINE wl_data_source_offer #-}
{-| __C declaration:__ @wl_data_source_offer@

    __defined at:__ @wayland-client-protocol.h 2694:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_offer :: RIP.FunPtr ((RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
wl_data_source_offer =
  RIP.unsafePerformIO hs_bindgen_0ac8efc1a22b0c9e

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_destroy@
foreign import ccall unsafe "hs_bindgen_5f7787758f4c9d2a" hs_bindgen_5f7787758f4c9d2a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_destroy@
hs_bindgen_5f7787758f4c9d2a :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_source) -> IO ()))
hs_bindgen_5f7787758f4c9d2a =
  RIP.fromFFIType hs_bindgen_5f7787758f4c9d2a_base

{-# NOINLINE wl_data_source_destroy #-}
{-| __C declaration:__ @wl_data_source_destroy@

    __defined at:__ @wayland-client-protocol.h 2706:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_destroy :: RIP.FunPtr ((RIP.Ptr Wl_data_source) -> IO ())
wl_data_source_destroy =
  RIP.unsafePerformIO hs_bindgen_5f7787758f4c9d2a

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_set_actions@
foreign import ccall unsafe "hs_bindgen_7efd21cde71185f0" hs_bindgen_7efd21cde71185f0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_set_actions@
hs_bindgen_7efd21cde71185f0 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_source) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_7efd21cde71185f0 =
  RIP.fromFFIType hs_bindgen_7efd21cde71185f0_base

{-# NOINLINE wl_data_source_set_actions #-}
{-| __C declaration:__ @wl_data_source_set_actions@

    __defined at:__ @wayland-client-protocol.h 2730:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_source_set_actions :: RIP.FunPtr ((RIP.Ptr Wl_data_source) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_data_source_set_actions =
  RIP.unsafePerformIO hs_bindgen_7efd21cde71185f0

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_add_listener@
foreign import ccall unsafe "hs_bindgen_2bbdce78cbae660c" hs_bindgen_2bbdce78cbae660c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_add_listener@
hs_bindgen_2bbdce78cbae660c :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device) -> (PtrConst.PtrConst Wl_data_device_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_2bbdce78cbae660c =
  RIP.fromFFIType hs_bindgen_2bbdce78cbae660c_base

{-# NOINLINE wl_data_device_add_listener #-}
{-| __C declaration:__ @wl_data_device_add_listener@

    __defined at:__ @wayland-client-protocol.h 2860:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_data_device) -> (PtrConst.PtrConst Wl_data_device_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_data_device_add_listener =
  RIP.unsafePerformIO hs_bindgen_2bbdce78cbae660c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_set_user_data@
foreign import ccall unsafe "hs_bindgen_12c94659ead67979" hs_bindgen_12c94659ead67979_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_set_user_data@
hs_bindgen_12c94659ead67979 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_12c94659ead67979 =
  RIP.fromFFIType hs_bindgen_12c94659ead67979_base

{-# NOINLINE wl_data_device_set_user_data #-}
{-| __C declaration:__ @wl_data_device_set_user_data@

    __defined at:__ @wayland-client-protocol.h 2911:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_data_device) -> (RIP.Ptr RIP.Void) -> IO ())
wl_data_device_set_user_data =
  RIP.unsafePerformIO hs_bindgen_12c94659ead67979

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_get_user_data@
foreign import ccall unsafe "hs_bindgen_85d14a482d3c7e45" hs_bindgen_85d14a482d3c7e45_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_get_user_data@
hs_bindgen_85d14a482d3c7e45 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_85d14a482d3c7e45 =
  RIP.fromFFIType hs_bindgen_85d14a482d3c7e45_base

{-# NOINLINE wl_data_device_get_user_data #-}
{-| __C declaration:__ @wl_data_device_get_user_data@

    __defined at:__ @wayland-client-protocol.h 2918:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_data_device) -> IO (RIP.Ptr RIP.Void))
wl_data_device_get_user_data =
  RIP.unsafePerformIO hs_bindgen_85d14a482d3c7e45

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_get_version@
foreign import ccall unsafe "hs_bindgen_2358aba651206913" hs_bindgen_2358aba651206913_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_get_version@
hs_bindgen_2358aba651206913 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_2358aba651206913 =
  RIP.fromFFIType hs_bindgen_2358aba651206913_base

{-# NOINLINE wl_data_device_get_version #-}
{-| __C declaration:__ @wl_data_device_get_version@

    __defined at:__ @wayland-client-protocol.h 2924:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_get_version :: RIP.FunPtr ((RIP.Ptr Wl_data_device) -> IO HsBindgen.Runtime.LibC.Word32)
wl_data_device_get_version =
  RIP.unsafePerformIO hs_bindgen_2358aba651206913

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_destroy@
foreign import ccall unsafe "hs_bindgen_2cc733f2cc8a42fe" hs_bindgen_2cc733f2cc8a42fe_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_destroy@
hs_bindgen_2cc733f2cc8a42fe :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device) -> IO ()))
hs_bindgen_2cc733f2cc8a42fe =
  RIP.fromFFIType hs_bindgen_2cc733f2cc8a42fe_base

{-# NOINLINE wl_data_device_destroy #-}
{-| __C declaration:__ @wl_data_device_destroy@

    __defined at:__ @wayland-client-protocol.h 2931:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_destroy :: RIP.FunPtr ((RIP.Ptr Wl_data_device) -> IO ())
wl_data_device_destroy =
  RIP.unsafePerformIO hs_bindgen_2cc733f2cc8a42fe

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_start_drag@
foreign import ccall unsafe "hs_bindgen_49cd52632e5dc9a1" hs_bindgen_49cd52632e5dc9a1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_start_drag@
hs_bindgen_49cd52632e5dc9a1 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_source) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_49cd52632e5dc9a1 =
  RIP.fromFFIType hs_bindgen_49cd52632e5dc9a1_base

{-# NOINLINE wl_data_device_start_drag #-}
{-| __C declaration:__ @wl_data_device_start_drag@

    __defined at:__ @wayland-client-protocol.h 2970:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_start_drag :: RIP.FunPtr ((RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_source) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_data_device_start_drag =
  RIP.unsafePerformIO hs_bindgen_49cd52632e5dc9a1

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_set_selection@
foreign import ccall unsafe "hs_bindgen_d4b08b534f3405ec" hs_bindgen_d4b08b534f3405ec_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_set_selection@
hs_bindgen_d4b08b534f3405ec :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_source) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_d4b08b534f3405ec =
  RIP.fromFFIType hs_bindgen_d4b08b534f3405ec_base

{-# NOINLINE wl_data_device_set_selection #-}
{-| __C declaration:__ @wl_data_device_set_selection@

    __defined at:__ @wayland-client-protocol.h 2989:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_set_selection :: RIP.FunPtr ((RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_source) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_data_device_set_selection =
  RIP.unsafePerformIO hs_bindgen_d4b08b534f3405ec

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_release@
foreign import ccall unsafe "hs_bindgen_0a5168cfe6d1d97e" hs_bindgen_0a5168cfe6d1d97e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_release@
hs_bindgen_0a5168cfe6d1d97e :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device) -> IO ()))
hs_bindgen_0a5168cfe6d1d97e =
  RIP.fromFFIType hs_bindgen_0a5168cfe6d1d97e_base

{-# NOINLINE wl_data_device_release #-}
{-| __C declaration:__ @wl_data_device_release@

    __defined at:__ @wayland-client-protocol.h 3001:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_release :: RIP.FunPtr ((RIP.Ptr Wl_data_device) -> IO ())
wl_data_device_release =
  RIP.unsafePerformIO hs_bindgen_0a5168cfe6d1d97e

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_manager_set_user_data@
foreign import ccall unsafe "hs_bindgen_9b7d5f9bfdd1aa20" hs_bindgen_9b7d5f9bfdd1aa20_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_manager_set_user_data@
hs_bindgen_9b7d5f9bfdd1aa20 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_9b7d5f9bfdd1aa20 =
  RIP.fromFFIType hs_bindgen_9b7d5f9bfdd1aa20_base

{-# NOINLINE wl_data_device_manager_set_user_data #-}
{-| __C declaration:__ @wl_data_device_manager_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3072:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> (RIP.Ptr RIP.Void) -> IO ())
wl_data_device_manager_set_user_data =
  RIP.unsafePerformIO hs_bindgen_9b7d5f9bfdd1aa20

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_manager_get_user_data@
foreign import ccall unsafe "hs_bindgen_df2100f18bfb21f4" hs_bindgen_df2100f18bfb21f4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_manager_get_user_data@
hs_bindgen_df2100f18bfb21f4 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_df2100f18bfb21f4 =
  RIP.fromFFIType hs_bindgen_df2100f18bfb21f4_base

{-# NOINLINE wl_data_device_manager_get_user_data #-}
{-| __C declaration:__ @wl_data_device_manager_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3079:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> IO (RIP.Ptr RIP.Void))
wl_data_device_manager_get_user_data =
  RIP.unsafePerformIO hs_bindgen_df2100f18bfb21f4

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_manager_get_version@
foreign import ccall unsafe "hs_bindgen_f2a3e84c1906684b" hs_bindgen_f2a3e84c1906684b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_manager_get_version@
hs_bindgen_f2a3e84c1906684b :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_f2a3e84c1906684b =
  RIP.fromFFIType hs_bindgen_f2a3e84c1906684b_base

{-# NOINLINE wl_data_device_manager_get_version #-}
{-| __C declaration:__ @wl_data_device_manager_get_version@

    __defined at:__ @wayland-client-protocol.h 3085:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_version :: RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> IO HsBindgen.Runtime.LibC.Word32)
wl_data_device_manager_get_version =
  RIP.unsafePerformIO hs_bindgen_f2a3e84c1906684b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_manager_destroy@
foreign import ccall unsafe "hs_bindgen_4bda2bf30775070d" hs_bindgen_4bda2bf30775070d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_manager_destroy@
hs_bindgen_4bda2bf30775070d :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> IO ()))
hs_bindgen_4bda2bf30775070d =
  RIP.fromFFIType hs_bindgen_4bda2bf30775070d_base

{-# NOINLINE wl_data_device_manager_destroy #-}
{-| __C declaration:__ @wl_data_device_manager_destroy@

    __defined at:__ @wayland-client-protocol.h 3092:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_destroy :: RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> IO ())
wl_data_device_manager_destroy =
  RIP.unsafePerformIO hs_bindgen_4bda2bf30775070d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_manager_create_data_source@
foreign import ccall unsafe "hs_bindgen_060ea60bf3bd69aa" hs_bindgen_060ea60bf3bd69aa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_manager_create_data_source@
hs_bindgen_060ea60bf3bd69aa :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> IO (RIP.Ptr Wl_data_source)))
hs_bindgen_060ea60bf3bd69aa =
  RIP.fromFFIType hs_bindgen_060ea60bf3bd69aa_base

{-# NOINLINE wl_data_device_manager_create_data_source #-}
{-| __C declaration:__ @wl_data_device_manager_create_data_source@

    __defined at:__ @wayland-client-protocol.h 3103:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_create_data_source :: RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> IO (RIP.Ptr Wl_data_source))
wl_data_device_manager_create_data_source =
  RIP.unsafePerformIO hs_bindgen_060ea60bf3bd69aa

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_manager_get_data_device@
foreign import ccall unsafe "hs_bindgen_bc7327c980188a30" hs_bindgen_bc7327c980188a30_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_manager_get_data_device@
hs_bindgen_bc7327c980188a30 :: IO (RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> (RIP.Ptr Wl_seat) -> IO (RIP.Ptr Wl_data_device)))
hs_bindgen_bc7327c980188a30 =
  RIP.fromFFIType hs_bindgen_bc7327c980188a30_base

{-# NOINLINE wl_data_device_manager_get_data_device #-}
{-| __C declaration:__ @wl_data_device_manager_get_data_device@

    __defined at:__ @wayland-client-protocol.h 3119:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_data_device_manager_get_data_device :: RIP.FunPtr ((RIP.Ptr Wl_data_device_manager) -> (RIP.Ptr Wl_seat) -> IO (RIP.Ptr Wl_data_device))
wl_data_device_manager_get_data_device =
  RIP.unsafePerformIO hs_bindgen_bc7327c980188a30

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_set_user_data@
foreign import ccall unsafe "hs_bindgen_c18b900a0677f0b6" hs_bindgen_c18b900a0677f0b6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_set_user_data@
hs_bindgen_c18b900a0677f0b6 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_c18b900a0677f0b6 =
  RIP.fromFFIType hs_bindgen_c18b900a0677f0b6_base

{-# NOINLINE wl_shell_set_user_data #-}
{-| __C declaration:__ @wl_shell_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3149:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_shell) -> (RIP.Ptr RIP.Void) -> IO ())
wl_shell_set_user_data =
  RIP.unsafePerformIO hs_bindgen_c18b900a0677f0b6

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_get_user_data@
foreign import ccall unsafe "hs_bindgen_31b6515d007468cd" hs_bindgen_31b6515d007468cd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_get_user_data@
hs_bindgen_31b6515d007468cd :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_31b6515d007468cd =
  RIP.fromFFIType hs_bindgen_31b6515d007468cd_base

{-# NOINLINE wl_shell_get_user_data #-}
{-| __C declaration:__ @wl_shell_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3156:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_shell) -> IO (RIP.Ptr RIP.Void))
wl_shell_get_user_data =
  RIP.unsafePerformIO hs_bindgen_31b6515d007468cd

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_get_version@
foreign import ccall unsafe "hs_bindgen_997000a766f75aec" hs_bindgen_997000a766f75aec_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_get_version@
hs_bindgen_997000a766f75aec :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_997000a766f75aec =
  RIP.fromFFIType hs_bindgen_997000a766f75aec_base

{-# NOINLINE wl_shell_get_version #-}
{-| __C declaration:__ @wl_shell_get_version@

    __defined at:__ @wayland-client-protocol.h 3162:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_get_version :: RIP.FunPtr ((RIP.Ptr Wl_shell) -> IO HsBindgen.Runtime.LibC.Word32)
wl_shell_get_version =
  RIP.unsafePerformIO hs_bindgen_997000a766f75aec

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_destroy@
foreign import ccall unsafe "hs_bindgen_fbd8e1529ceba176" hs_bindgen_fbd8e1529ceba176_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_destroy@
hs_bindgen_fbd8e1529ceba176 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell) -> IO ()))
hs_bindgen_fbd8e1529ceba176 =
  RIP.fromFFIType hs_bindgen_fbd8e1529ceba176_base

{-# NOINLINE wl_shell_destroy #-}
{-| __C declaration:__ @wl_shell_destroy@

    __defined at:__ @wayland-client-protocol.h 3169:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_destroy :: RIP.FunPtr ((RIP.Ptr Wl_shell) -> IO ())
wl_shell_destroy =
  RIP.unsafePerformIO hs_bindgen_fbd8e1529ceba176

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_get_shell_surface@
foreign import ccall unsafe "hs_bindgen_55b0067d2f3b90c2" hs_bindgen_55b0067d2f3b90c2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_get_shell_surface@
hs_bindgen_55b0067d2f3b90c2 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell) -> (RIP.Ptr Wl_surface) -> IO (RIP.Ptr Wl_shell_surface)))
hs_bindgen_55b0067d2f3b90c2 =
  RIP.fromFFIType hs_bindgen_55b0067d2f3b90c2_base

{-# NOINLINE wl_shell_get_shell_surface #-}
{-| __C declaration:__ @wl_shell_get_shell_surface@

    __defined at:__ @wayland-client-protocol.h 3184:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_get_shell_surface :: RIP.FunPtr ((RIP.Ptr Wl_shell) -> (RIP.Ptr Wl_surface) -> IO (RIP.Ptr Wl_shell_surface))
wl_shell_get_shell_surface =
  RIP.unsafePerformIO hs_bindgen_55b0067d2f3b90c2

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_add_listener@
foreign import ccall unsafe "hs_bindgen_d3bf24493df30fd3" hs_bindgen_d3bf24493df30fd3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_add_listener@
hs_bindgen_d3bf24493df30fd3 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (PtrConst.PtrConst Wl_shell_surface_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_d3bf24493df30fd3 =
  RIP.fromFFIType hs_bindgen_d3bf24493df30fd3_base

{-# NOINLINE wl_shell_surface_add_listener #-}
{-| __C declaration:__ @wl_shell_surface_add_listener@

    __defined at:__ @wayland-client-protocol.h 3351:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (PtrConst.PtrConst Wl_shell_surface_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_shell_surface_add_listener =
  RIP.unsafePerformIO hs_bindgen_d3bf24493df30fd3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_user_data@
foreign import ccall unsafe "hs_bindgen_b2990779ff80a32f" hs_bindgen_b2990779ff80a32f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_user_data@
hs_bindgen_b2990779ff80a32f :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_b2990779ff80a32f =
  RIP.fromFFIType hs_bindgen_b2990779ff80a32f_base

{-# NOINLINE wl_shell_surface_set_user_data #-}
{-| __C declaration:__ @wl_shell_surface_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3425:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr RIP.Void) -> IO ())
wl_shell_surface_set_user_data =
  RIP.unsafePerformIO hs_bindgen_b2990779ff80a32f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_get_user_data@
foreign import ccall unsafe "hs_bindgen_09988ed9baaef286" hs_bindgen_09988ed9baaef286_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_get_user_data@
hs_bindgen_09988ed9baaef286 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_09988ed9baaef286 =
  RIP.fromFFIType hs_bindgen_09988ed9baaef286_base

{-# NOINLINE wl_shell_surface_get_user_data #-}
{-| __C declaration:__ @wl_shell_surface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3432:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> IO (RIP.Ptr RIP.Void))
wl_shell_surface_get_user_data =
  RIP.unsafePerformIO hs_bindgen_09988ed9baaef286

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_get_version@
foreign import ccall unsafe "hs_bindgen_5f6730cc9601811f" hs_bindgen_5f6730cc9601811f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_get_version@
hs_bindgen_5f6730cc9601811f :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_5f6730cc9601811f =
  RIP.fromFFIType hs_bindgen_5f6730cc9601811f_base

{-# NOINLINE wl_shell_surface_get_version #-}
{-| __C declaration:__ @wl_shell_surface_get_version@

    __defined at:__ @wayland-client-protocol.h 3438:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_get_version :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> IO HsBindgen.Runtime.LibC.Word32)
wl_shell_surface_get_version =
  RIP.unsafePerformIO hs_bindgen_5f6730cc9601811f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_destroy@
foreign import ccall unsafe "hs_bindgen_52941219e632a487" hs_bindgen_52941219e632a487_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_destroy@
hs_bindgen_52941219e632a487 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> IO ()))
hs_bindgen_52941219e632a487 =
  RIP.fromFFIType hs_bindgen_52941219e632a487_base

{-# NOINLINE wl_shell_surface_destroy #-}
{-| __C declaration:__ @wl_shell_surface_destroy@

    __defined at:__ @wayland-client-protocol.h 3445:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_destroy :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> IO ())
wl_shell_surface_destroy =
  RIP.unsafePerformIO hs_bindgen_52941219e632a487

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_pong@
foreign import ccall unsafe "hs_bindgen_cc55d0bef72e6659" hs_bindgen_cc55d0bef72e6659_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_pong@
hs_bindgen_cc55d0bef72e6659 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_cc55d0bef72e6659 =
  RIP.fromFFIType hs_bindgen_cc55d0bef72e6659_base

{-# NOINLINE wl_shell_surface_pong #-}
{-| __C declaration:__ @wl_shell_surface_pong@

    __defined at:__ @wayland-client-protocol.h 3457:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_pong :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_shell_surface_pong =
  RIP.unsafePerformIO hs_bindgen_cc55d0bef72e6659

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_move@
foreign import ccall unsafe "hs_bindgen_7699c0ac90d9866e" hs_bindgen_7699c0ac90d9866e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_move@
hs_bindgen_7699c0ac90d9866e :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_7699c0ac90d9866e =
  RIP.fromFFIType hs_bindgen_7699c0ac90d9866e_base

{-# NOINLINE wl_shell_surface_move #-}
{-| __C declaration:__ @wl_shell_surface_move@

    __defined at:__ @wayland-client-protocol.h 3473:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_move :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_shell_surface_move =
  RIP.unsafePerformIO hs_bindgen_7699c0ac90d9866e

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_resize@
foreign import ccall unsafe "hs_bindgen_040d734657fafcde" hs_bindgen_040d734657fafcde_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_resize@
hs_bindgen_040d734657fafcde :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_040d734657fafcde =
  RIP.fromFFIType hs_bindgen_040d734657fafcde_base

{-# NOINLINE wl_shell_surface_resize #-}
{-| __C declaration:__ @wl_shell_surface_resize@

    __defined at:__ @wayland-client-protocol.h 3489:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_resize :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_shell_surface_resize =
  RIP.unsafePerformIO hs_bindgen_040d734657fafcde

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_toplevel@
foreign import ccall unsafe "hs_bindgen_7d7e147a897fc9ac" hs_bindgen_7d7e147a897fc9ac_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_toplevel@
hs_bindgen_7d7e147a897fc9ac :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> IO ()))
hs_bindgen_7d7e147a897fc9ac =
  RIP.fromFFIType hs_bindgen_7d7e147a897fc9ac_base

{-# NOINLINE wl_shell_surface_set_toplevel #-}
{-| __C declaration:__ @wl_shell_surface_set_toplevel@

    __defined at:__ @wayland-client-protocol.h 3503:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_toplevel :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> IO ())
wl_shell_surface_set_toplevel =
  RIP.unsafePerformIO hs_bindgen_7d7e147a897fc9ac

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_transient@
foreign import ccall unsafe "hs_bindgen_666223a20bca00a6" hs_bindgen_666223a20bca00a6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_transient@
hs_bindgen_666223a20bca00a6 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_666223a20bca00a6 =
  RIP.fromFFIType hs_bindgen_666223a20bca00a6_base

{-# NOINLINE wl_shell_surface_set_transient #-}
{-| __C declaration:__ @wl_shell_surface_set_transient@

    __defined at:__ @wayland-client-protocol.h 3521:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_transient :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_shell_surface_set_transient =
  RIP.unsafePerformIO hs_bindgen_666223a20bca00a6

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_fullscreen@
foreign import ccall unsafe "hs_bindgen_6af4ee8e9ba7af7b" hs_bindgen_6af4ee8e9ba7af7b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_fullscreen@
hs_bindgen_6af4ee8e9ba7af7b :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_output) -> IO ()))
hs_bindgen_6af4ee8e9ba7af7b =
  RIP.fromFFIType hs_bindgen_6af4ee8e9ba7af7b_base

{-# NOINLINE wl_shell_surface_set_fullscreen #-}
{-| __C declaration:__ @wl_shell_surface_set_fullscreen@

    __defined at:__ @wayland-client-protocol.h 3565:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_fullscreen :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_output) -> IO ())
wl_shell_surface_set_fullscreen =
  RIP.unsafePerformIO hs_bindgen_6af4ee8e9ba7af7b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_popup@
foreign import ccall unsafe "hs_bindgen_5bec7b5f1471336c" hs_bindgen_5bec7b5f1471336c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_popup@
hs_bindgen_5bec7b5f1471336c :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_5bec7b5f1471336c =
  RIP.fromFFIType hs_bindgen_5bec7b5f1471336c_base

{-# NOINLINE wl_shell_surface_set_popup #-}
{-| __C declaration:__ @wl_shell_surface_set_popup@

    __defined at:__ @wayland-client-protocol.h 3595:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_popup :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
wl_shell_surface_set_popup =
  RIP.unsafePerformIO hs_bindgen_5bec7b5f1471336c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_maximized@
foreign import ccall unsafe "hs_bindgen_941d819d2f842809" hs_bindgen_941d819d2f842809_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_maximized@
hs_bindgen_941d819d2f842809 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr Wl_output) -> IO ()))
hs_bindgen_941d819d2f842809 =
  RIP.fromFFIType hs_bindgen_941d819d2f842809_base

{-# NOINLINE wl_shell_surface_set_maximized #-}
{-| __C declaration:__ @wl_shell_surface_set_maximized@

    __defined at:__ @wayland-client-protocol.h 3624:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_maximized :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (RIP.Ptr Wl_output) -> IO ())
wl_shell_surface_set_maximized =
  RIP.unsafePerformIO hs_bindgen_941d819d2f842809

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_title@
foreign import ccall unsafe "hs_bindgen_be8d3bd7d6087129" hs_bindgen_be8d3bd7d6087129_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_title@
hs_bindgen_be8d3bd7d6087129 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_be8d3bd7d6087129 =
  RIP.fromFFIType hs_bindgen_be8d3bd7d6087129_base

{-# NOINLINE wl_shell_surface_set_title #-}
{-| __C declaration:__ @wl_shell_surface_set_title@

    __defined at:__ @wayland-client-protocol.h 3642:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_title :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
wl_shell_surface_set_title =
  RIP.unsafePerformIO hs_bindgen_be8d3bd7d6087129

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_class@
foreign import ccall unsafe "hs_bindgen_7ad4d21fca327ac6" hs_bindgen_7ad4d21fca327ac6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_set_class@
hs_bindgen_7ad4d21fca327ac6 :: IO (RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_7ad4d21fca327ac6 =
  RIP.fromFFIType hs_bindgen_7ad4d21fca327ac6_base

{-# NOINLINE wl_shell_surface_set_class #-}
{-| __C declaration:__ @wl_shell_surface_set_class@

    __defined at:__ @wayland-client-protocol.h 3659:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_shell_surface_set_class :: RIP.FunPtr ((RIP.Ptr Wl_shell_surface) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
wl_shell_surface_set_class =
  RIP.unsafePerformIO hs_bindgen_7ad4d21fca327ac6

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_add_listener@
foreign import ccall unsafe "hs_bindgen_99797f8c00db4cf8" hs_bindgen_99797f8c00db4cf8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_add_listener@
hs_bindgen_99797f8c00db4cf8 :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> (PtrConst.PtrConst Wl_surface_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_99797f8c00db4cf8 =
  RIP.fromFFIType hs_bindgen_99797f8c00db4cf8_base

{-# NOINLINE wl_surface_add_listener #-}
{-| __C declaration:__ @wl_surface_add_listener@

    __defined at:__ @wayland-client-protocol.h 3780:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> (PtrConst.PtrConst Wl_surface_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_surface_add_listener =
  RIP.unsafePerformIO hs_bindgen_99797f8c00db4cf8

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_set_user_data@
foreign import ccall unsafe "hs_bindgen_2d56696a5ce13560" hs_bindgen_2d56696a5ce13560_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_set_user_data@
hs_bindgen_2d56696a5ce13560 :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_2d56696a5ce13560 =
  RIP.fromFFIType hs_bindgen_2d56696a5ce13560_base

{-# NOINLINE wl_surface_set_user_data #-}
{-| __C declaration:__ @wl_surface_set_user_data@

    __defined at:__ @wayland-client-protocol.h 3863:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> (RIP.Ptr RIP.Void) -> IO ())
wl_surface_set_user_data =
  RIP.unsafePerformIO hs_bindgen_2d56696a5ce13560

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_get_user_data@
foreign import ccall unsafe "hs_bindgen_b0d919aa012afa71" hs_bindgen_b0d919aa012afa71_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_get_user_data@
hs_bindgen_b0d919aa012afa71 :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_b0d919aa012afa71 =
  RIP.fromFFIType hs_bindgen_b0d919aa012afa71_base

{-# NOINLINE wl_surface_get_user_data #-}
{-| __C declaration:__ @wl_surface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 3870:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> IO (RIP.Ptr RIP.Void))
wl_surface_get_user_data =
  RIP.unsafePerformIO hs_bindgen_b0d919aa012afa71

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_get_version@
foreign import ccall unsafe "hs_bindgen_4f93814cd68fd3e7" hs_bindgen_4f93814cd68fd3e7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_get_version@
hs_bindgen_4f93814cd68fd3e7 :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_4f93814cd68fd3e7 =
  RIP.fromFFIType hs_bindgen_4f93814cd68fd3e7_base

{-# NOINLINE wl_surface_get_version #-}
{-| __C declaration:__ @wl_surface_get_version@

    __defined at:__ @wayland-client-protocol.h 3876:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_get_version :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> IO HsBindgen.Runtime.LibC.Word32)
wl_surface_get_version =
  RIP.unsafePerformIO hs_bindgen_4f93814cd68fd3e7

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_destroy@
foreign import ccall unsafe "hs_bindgen_6021fc1fb0bea10c" hs_bindgen_6021fc1fb0bea10c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_destroy@
hs_bindgen_6021fc1fb0bea10c :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> IO ()))
hs_bindgen_6021fc1fb0bea10c =
  RIP.fromFFIType hs_bindgen_6021fc1fb0bea10c_base

{-# NOINLINE wl_surface_destroy #-}
{-| __C declaration:__ @wl_surface_destroy@

    __defined at:__ @wayland-client-protocol.h 3887:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_destroy :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> IO ())
wl_surface_destroy =
  RIP.unsafePerformIO hs_bindgen_6021fc1fb0bea10c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_attach@
foreign import ccall unsafe "hs_bindgen_63b0df64e98c5a8d" hs_bindgen_63b0df64e98c5a8d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_attach@
hs_bindgen_63b0df64e98c5a8d :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_buffer) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_63b0df64e98c5a8d =
  RIP.fromFFIType hs_bindgen_63b0df64e98c5a8d_base

{-# NOINLINE wl_surface_attach #-}
{-| __C declaration:__ @wl_surface_attach@

    __defined at:__ @wayland-client-protocol.h 3963:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_attach :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_buffer) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_surface_attach =
  RIP.unsafePerformIO hs_bindgen_63b0df64e98c5a8d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_damage@
foreign import ccall unsafe "hs_bindgen_68db2a290c4fc31b" hs_bindgen_68db2a290c4fc31b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_damage@
hs_bindgen_68db2a290c4fc31b :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_68db2a290c4fc31b =
  RIP.fromFFIType hs_bindgen_68db2a290c4fc31b_base

{-# NOINLINE wl_surface_damage #-}
{-| __C declaration:__ @wl_surface_damage@

    __defined at:__ @wayland-client-protocol.h 3995:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_damage :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_surface_damage =
  RIP.unsafePerformIO hs_bindgen_68db2a290c4fc31b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_frame@
foreign import ccall unsafe "hs_bindgen_e4634c1b3f7ab401" hs_bindgen_e4634c1b3f7ab401_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_frame@
hs_bindgen_e4634c1b3f7ab401 :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> IO (RIP.Ptr Wl_callback)))
hs_bindgen_e4634c1b3f7ab401 =
  RIP.fromFFIType hs_bindgen_e4634c1b3f7ab401_base

{-# NOINLINE wl_surface_frame #-}
{-| __C declaration:__ @wl_surface_frame@

    __defined at:__ @wayland-client-protocol.h 4038:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_frame :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> IO (RIP.Ptr Wl_callback))
wl_surface_frame =
  RIP.unsafePerformIO hs_bindgen_e4634c1b3f7ab401

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_set_opaque_region@
foreign import ccall unsafe "hs_bindgen_ec5b0fe08eab9856" hs_bindgen_ec5b0fe08eab9856_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_set_opaque_region@
hs_bindgen_ec5b0fe08eab9856 :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_region) -> IO ()))
hs_bindgen_ec5b0fe08eab9856 =
  RIP.fromFFIType hs_bindgen_ec5b0fe08eab9856_base

{-# NOINLINE wl_surface_set_opaque_region #-}
{-| __C declaration:__ @wl_surface_set_opaque_region@

    __defined at:__ @wayland-client-protocol.h 4077:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_set_opaque_region :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_region) -> IO ())
wl_surface_set_opaque_region =
  RIP.unsafePerformIO hs_bindgen_ec5b0fe08eab9856

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_set_input_region@
foreign import ccall unsafe "hs_bindgen_f8ae81f7faedf17a" hs_bindgen_f8ae81f7faedf17a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_set_input_region@
hs_bindgen_f8ae81f7faedf17a :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_region) -> IO ()))
hs_bindgen_f8ae81f7faedf17a =
  RIP.fromFFIType hs_bindgen_f8ae81f7faedf17a_base

{-# NOINLINE wl_surface_set_input_region #-}
{-| __C declaration:__ @wl_surface_set_input_region@

    __defined at:__ @wayland-client-protocol.h 4110:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_set_input_region :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_region) -> IO ())
wl_surface_set_input_region =
  RIP.unsafePerformIO hs_bindgen_f8ae81f7faedf17a

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_commit@
foreign import ccall unsafe "hs_bindgen_636ebc3878c0e9a3" hs_bindgen_636ebc3878c0e9a3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_commit@
hs_bindgen_636ebc3878c0e9a3 :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> IO ()))
hs_bindgen_636ebc3878c0e9a3 =
  RIP.fromFFIType hs_bindgen_636ebc3878c0e9a3_base

{-# NOINLINE wl_surface_commit #-}
{-| __C declaration:__ @wl_surface_commit@

    __defined at:__ @wayland-client-protocol.h 4140:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_commit :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> IO ())
wl_surface_commit =
  RIP.unsafePerformIO hs_bindgen_636ebc3878c0e9a3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_set_buffer_transform@
foreign import ccall unsafe "hs_bindgen_9bc57138d8b2f825" hs_bindgen_9bc57138d8b2f825_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_set_buffer_transform@
hs_bindgen_9bc57138d8b2f825 :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_9bc57138d8b2f825 =
  RIP.fromFFIType hs_bindgen_9bc57138d8b2f825_base

{-# NOINLINE wl_surface_set_buffer_transform #-}
{-| __C declaration:__ @wl_surface_set_buffer_transform@

    __defined at:__ @wayland-client-protocol.h 4182:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_set_buffer_transform :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_surface_set_buffer_transform =
  RIP.unsafePerformIO hs_bindgen_9bc57138d8b2f825

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_set_buffer_scale@
foreign import ccall unsafe "hs_bindgen_71ff6d2cbe878f4c" hs_bindgen_71ff6d2cbe878f4c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_set_buffer_scale@
hs_bindgen_71ff6d2cbe878f4c :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_71ff6d2cbe878f4c =
  RIP.fromFFIType hs_bindgen_71ff6d2cbe878f4c_base

{-# NOINLINE wl_surface_set_buffer_scale #-}
{-| __C declaration:__ @wl_surface_set_buffer_scale@

    __defined at:__ @wayland-client-protocol.h 4216:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_set_buffer_scale :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_surface_set_buffer_scale =
  RIP.unsafePerformIO hs_bindgen_71ff6d2cbe878f4c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_damage_buffer@
foreign import ccall unsafe "hs_bindgen_691f90a60becdaa1" hs_bindgen_691f90a60becdaa1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_damage_buffer@
hs_bindgen_691f90a60becdaa1 :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_691f90a60becdaa1 =
  RIP.fromFFIType hs_bindgen_691f90a60becdaa1_base

{-# NOINLINE wl_surface_damage_buffer #-}
{-| __C declaration:__ @wl_surface_damage_buffer@

    __defined at:__ @wayland-client-protocol.h 4259:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_damage_buffer :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_surface_damage_buffer =
  RIP.unsafePerformIO hs_bindgen_691f90a60becdaa1

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_offset@
foreign import ccall unsafe "hs_bindgen_6ff41c02a62904d8" hs_bindgen_6ff41c02a62904d8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_offset@
hs_bindgen_6ff41c02a62904d8 :: IO (RIP.FunPtr ((RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_6ff41c02a62904d8 =
  RIP.fromFFIType hs_bindgen_6ff41c02a62904d8_base

{-# NOINLINE wl_surface_offset #-}
{-| __C declaration:__ @wl_surface_offset@

    __defined at:__ @wayland-client-protocol.h 4285:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_surface_offset :: RIP.FunPtr ((RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_surface_offset =
  RIP.unsafePerformIO hs_bindgen_6ff41c02a62904d8

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_seat_add_listener@
foreign import ccall unsafe "hs_bindgen_fca211a912362095" hs_bindgen_fca211a912362095_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_seat_add_listener@
hs_bindgen_fca211a912362095 :: IO (RIP.FunPtr ((RIP.Ptr Wl_seat) -> (PtrConst.PtrConst Wl_seat_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_fca211a912362095 =
  RIP.fromFFIType hs_bindgen_fca211a912362095_base

{-# NOINLINE wl_seat_add_listener #-}
{-| __C declaration:__ @wl_seat_add_listener@

    __defined at:__ @wayland-client-protocol.h 4406:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_seat) -> (PtrConst.PtrConst Wl_seat_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_seat_add_listener =
  RIP.unsafePerformIO hs_bindgen_fca211a912362095

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_seat_set_user_data@
foreign import ccall unsafe "hs_bindgen_e9233140a9bd8ba9" hs_bindgen_e9233140a9bd8ba9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_seat_set_user_data@
hs_bindgen_e9233140a9bd8ba9 :: IO (RIP.FunPtr ((RIP.Ptr Wl_seat) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_e9233140a9bd8ba9 =
  RIP.fromFFIType hs_bindgen_e9233140a9bd8ba9_base

{-# NOINLINE wl_seat_set_user_data #-}
{-| __C declaration:__ @wl_seat_set_user_data@

    __defined at:__ @wayland-client-protocol.h 4446:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_seat) -> (RIP.Ptr RIP.Void) -> IO ())
wl_seat_set_user_data =
  RIP.unsafePerformIO hs_bindgen_e9233140a9bd8ba9

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_seat_get_user_data@
foreign import ccall unsafe "hs_bindgen_3a0cf23f72346ebf" hs_bindgen_3a0cf23f72346ebf_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_seat_get_user_data@
hs_bindgen_3a0cf23f72346ebf :: IO (RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_3a0cf23f72346ebf =
  RIP.fromFFIType hs_bindgen_3a0cf23f72346ebf_base

{-# NOINLINE wl_seat_get_user_data #-}
{-| __C declaration:__ @wl_seat_get_user_data@

    __defined at:__ @wayland-client-protocol.h 4453:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO (RIP.Ptr RIP.Void))
wl_seat_get_user_data =
  RIP.unsafePerformIO hs_bindgen_3a0cf23f72346ebf

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_seat_get_version@
foreign import ccall unsafe "hs_bindgen_d09ae1debf6afc7d" hs_bindgen_d09ae1debf6afc7d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_seat_get_version@
hs_bindgen_d09ae1debf6afc7d :: IO (RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_d09ae1debf6afc7d =
  RIP.fromFFIType hs_bindgen_d09ae1debf6afc7d_base

{-# NOINLINE wl_seat_get_version #-}
{-| __C declaration:__ @wl_seat_get_version@

    __defined at:__ @wayland-client-protocol.h 4459:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_version :: RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO HsBindgen.Runtime.LibC.Word32)
wl_seat_get_version =
  RIP.unsafePerformIO hs_bindgen_d09ae1debf6afc7d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_seat_destroy@
foreign import ccall unsafe "hs_bindgen_bebc91598354b3bc" hs_bindgen_bebc91598354b3bc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_seat_destroy@
hs_bindgen_bebc91598354b3bc :: IO (RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO ()))
hs_bindgen_bebc91598354b3bc =
  RIP.fromFFIType hs_bindgen_bebc91598354b3bc_base

{-# NOINLINE wl_seat_destroy #-}
{-| __C declaration:__ @wl_seat_destroy@

    __defined at:__ @wayland-client-protocol.h 4466:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_destroy :: RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO ())
wl_seat_destroy =
  RIP.unsafePerformIO hs_bindgen_bebc91598354b3bc

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_seat_get_pointer@
foreign import ccall unsafe "hs_bindgen_770eab78f913f9e3" hs_bindgen_770eab78f913f9e3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_seat_get_pointer@
hs_bindgen_770eab78f913f9e3 :: IO (RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO (RIP.Ptr Wl_pointer)))
hs_bindgen_770eab78f913f9e3 =
  RIP.fromFFIType hs_bindgen_770eab78f913f9e3_base

{-# NOINLINE wl_seat_get_pointer #-}
{-| __C declaration:__ @wl_seat_get_pointer@

    __defined at:__ @wayland-client-protocol.h 4484:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_pointer :: RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO (RIP.Ptr Wl_pointer))
wl_seat_get_pointer =
  RIP.unsafePerformIO hs_bindgen_770eab78f913f9e3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_seat_get_keyboard@
foreign import ccall unsafe "hs_bindgen_7d91068148e3b1ce" hs_bindgen_7d91068148e3b1ce_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_seat_get_keyboard@
hs_bindgen_7d91068148e3b1ce :: IO (RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO (RIP.Ptr Wl_keyboard)))
hs_bindgen_7d91068148e3b1ce =
  RIP.fromFFIType hs_bindgen_7d91068148e3b1ce_base

{-# NOINLINE wl_seat_get_keyboard #-}
{-| __C declaration:__ @wl_seat_get_keyboard@

    __defined at:__ @wayland-client-protocol.h 4507:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_keyboard :: RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO (RIP.Ptr Wl_keyboard))
wl_seat_get_keyboard =
  RIP.unsafePerformIO hs_bindgen_7d91068148e3b1ce

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_seat_get_touch@
foreign import ccall unsafe "hs_bindgen_d6fcb5b04ba837c3" hs_bindgen_d6fcb5b04ba837c3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_seat_get_touch@
hs_bindgen_d6fcb5b04ba837c3 :: IO (RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO (RIP.Ptr Wl_touch)))
hs_bindgen_d6fcb5b04ba837c3 =
  RIP.fromFFIType hs_bindgen_d6fcb5b04ba837c3_base

{-# NOINLINE wl_seat_get_touch #-}
{-| __C declaration:__ @wl_seat_get_touch@

    __defined at:__ @wayland-client-protocol.h 4530:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_get_touch :: RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO (RIP.Ptr Wl_touch))
wl_seat_get_touch =
  RIP.unsafePerformIO hs_bindgen_d6fcb5b04ba837c3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_seat_release@
foreign import ccall unsafe "hs_bindgen_cb5583d739727952" hs_bindgen_cb5583d739727952_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_seat_release@
hs_bindgen_cb5583d739727952 :: IO (RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO ()))
hs_bindgen_cb5583d739727952 =
  RIP.fromFFIType hs_bindgen_cb5583d739727952_base

{-# NOINLINE wl_seat_release #-}
{-| __C declaration:__ @wl_seat_release@

    __defined at:__ @wayland-client-protocol.h 4547:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_seat_release :: RIP.FunPtr ((RIP.Ptr Wl_seat) -> IO ())
wl_seat_release =
  RIP.unsafePerformIO hs_bindgen_cb5583d739727952

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_add_listener@
foreign import ccall unsafe "hs_bindgen_29fc01f4d6d7d071" hs_bindgen_29fc01f4d6d7d071_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_add_listener@
hs_bindgen_29fc01f4d6d7d071 :: IO (RIP.FunPtr ((RIP.Ptr Wl_pointer) -> (PtrConst.PtrConst Wl_pointer_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_29fc01f4d6d7d071 =
  RIP.fromFFIType hs_bindgen_29fc01f4d6d7d071_base

{-# NOINLINE wl_pointer_add_listener #-}
{-| __C declaration:__ @wl_pointer_add_listener@

    __defined at:__ @wayland-client-protocol.h 5010:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_pointer) -> (PtrConst.PtrConst Wl_pointer_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_pointer_add_listener =
  RIP.unsafePerformIO hs_bindgen_29fc01f4d6d7d071

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_set_user_data@
foreign import ccall unsafe "hs_bindgen_3ced564b413bbe21" hs_bindgen_3ced564b413bbe21_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_set_user_data@
hs_bindgen_3ced564b413bbe21 :: IO (RIP.FunPtr ((RIP.Ptr Wl_pointer) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_3ced564b413bbe21 =
  RIP.fromFFIType hs_bindgen_3ced564b413bbe21_base

{-# NOINLINE wl_pointer_set_user_data #-}
{-| __C declaration:__ @wl_pointer_set_user_data@

    __defined at:__ @wayland-client-protocol.h 5076:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_pointer) -> (RIP.Ptr RIP.Void) -> IO ())
wl_pointer_set_user_data =
  RIP.unsafePerformIO hs_bindgen_3ced564b413bbe21

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_get_user_data@
foreign import ccall unsafe "hs_bindgen_81155ac0fc76f730" hs_bindgen_81155ac0fc76f730_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_get_user_data@
hs_bindgen_81155ac0fc76f730 :: IO (RIP.FunPtr ((RIP.Ptr Wl_pointer) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_81155ac0fc76f730 =
  RIP.fromFFIType hs_bindgen_81155ac0fc76f730_base

{-# NOINLINE wl_pointer_get_user_data #-}
{-| __C declaration:__ @wl_pointer_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5083:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_pointer) -> IO (RIP.Ptr RIP.Void))
wl_pointer_get_user_data =
  RIP.unsafePerformIO hs_bindgen_81155ac0fc76f730

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_get_version@
foreign import ccall unsafe "hs_bindgen_1458c14ac30b9386" hs_bindgen_1458c14ac30b9386_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_get_version@
hs_bindgen_1458c14ac30b9386 :: IO (RIP.FunPtr ((RIP.Ptr Wl_pointer) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_1458c14ac30b9386 =
  RIP.fromFFIType hs_bindgen_1458c14ac30b9386_base

{-# NOINLINE wl_pointer_get_version #-}
{-| __C declaration:__ @wl_pointer_get_version@

    __defined at:__ @wayland-client-protocol.h 5089:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_get_version :: RIP.FunPtr ((RIP.Ptr Wl_pointer) -> IO HsBindgen.Runtime.LibC.Word32)
wl_pointer_get_version =
  RIP.unsafePerformIO hs_bindgen_1458c14ac30b9386

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_destroy@
foreign import ccall unsafe "hs_bindgen_0a8bd7e1be72cecf" hs_bindgen_0a8bd7e1be72cecf_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_destroy@
hs_bindgen_0a8bd7e1be72cecf :: IO (RIP.FunPtr ((RIP.Ptr Wl_pointer) -> IO ()))
hs_bindgen_0a8bd7e1be72cecf =
  RIP.fromFFIType hs_bindgen_0a8bd7e1be72cecf_base

{-# NOINLINE wl_pointer_destroy #-}
{-| __C declaration:__ @wl_pointer_destroy@

    __defined at:__ @wayland-client-protocol.h 5096:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_destroy :: RIP.FunPtr ((RIP.Ptr Wl_pointer) -> IO ())
wl_pointer_destroy =
  RIP.unsafePerformIO hs_bindgen_0a8bd7e1be72cecf

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_set_cursor@
foreign import ccall unsafe "hs_bindgen_d0f04bf5fce0dc20" hs_bindgen_d0f04bf5fce0dc20_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_set_cursor@
hs_bindgen_d0f04bf5fce0dc20 :: IO (RIP.FunPtr ((RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_d0f04bf5fce0dc20 =
  RIP.fromFFIType hs_bindgen_d0f04bf5fce0dc20_base

{-# NOINLINE wl_pointer_set_cursor #-}
{-| __C declaration:__ @wl_pointer_set_cursor@

    __defined at:__ @wayland-client-protocol.h 5139:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_set_cursor :: RIP.FunPtr ((RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_pointer_set_cursor =
  RIP.unsafePerformIO hs_bindgen_d0f04bf5fce0dc20

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_release@
foreign import ccall unsafe "hs_bindgen_a7f207c8b6fa6297" hs_bindgen_a7f207c8b6fa6297_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_release@
hs_bindgen_a7f207c8b6fa6297 :: IO (RIP.FunPtr ((RIP.Ptr Wl_pointer) -> IO ()))
hs_bindgen_a7f207c8b6fa6297 =
  RIP.fromFFIType hs_bindgen_a7f207c8b6fa6297_base

{-# NOINLINE wl_pointer_release #-}
{-| __C declaration:__ @wl_pointer_release@

    __defined at:__ @wayland-client-protocol.h 5155:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_pointer_release :: RIP.FunPtr ((RIP.Ptr Wl_pointer) -> IO ())
wl_pointer_release =
  RIP.unsafePerformIO hs_bindgen_a7f207c8b6fa6297

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_keyboard_add_listener@
foreign import ccall unsafe "hs_bindgen_55b4f51186401e48" hs_bindgen_55b4f51186401e48_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_keyboard_add_listener@
hs_bindgen_55b4f51186401e48 :: IO (RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> (PtrConst.PtrConst Wl_keyboard_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_55b4f51186401e48 =
  RIP.fromFFIType hs_bindgen_55b4f51186401e48_base

{-# NOINLINE wl_keyboard_add_listener #-}
{-| __C declaration:__ @wl_keyboard_add_listener@

    __defined at:__ @wayland-client-protocol.h 5385:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> (PtrConst.PtrConst Wl_keyboard_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_keyboard_add_listener =
  RIP.unsafePerformIO hs_bindgen_55b4f51186401e48

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_keyboard_set_user_data@
foreign import ccall unsafe "hs_bindgen_78aac3f4a91b8836" hs_bindgen_78aac3f4a91b8836_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_keyboard_set_user_data@
hs_bindgen_78aac3f4a91b8836 :: IO (RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_78aac3f4a91b8836 =
  RIP.fromFFIType hs_bindgen_78aac3f4a91b8836_base

{-# NOINLINE wl_keyboard_set_user_data #-}
{-| __C declaration:__ @wl_keyboard_set_user_data@

    __defined at:__ @wayland-client-protocol.h 5426:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> (RIP.Ptr RIP.Void) -> IO ())
wl_keyboard_set_user_data =
  RIP.unsafePerformIO hs_bindgen_78aac3f4a91b8836

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_keyboard_get_user_data@
foreign import ccall unsafe "hs_bindgen_4fd07ac45ff61ecf" hs_bindgen_4fd07ac45ff61ecf_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_keyboard_get_user_data@
hs_bindgen_4fd07ac45ff61ecf :: IO (RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_4fd07ac45ff61ecf =
  RIP.fromFFIType hs_bindgen_4fd07ac45ff61ecf_base

{-# NOINLINE wl_keyboard_get_user_data #-}
{-| __C declaration:__ @wl_keyboard_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5433:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> IO (RIP.Ptr RIP.Void))
wl_keyboard_get_user_data =
  RIP.unsafePerformIO hs_bindgen_4fd07ac45ff61ecf

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_keyboard_get_version@
foreign import ccall unsafe "hs_bindgen_6070ef9495b96f6a" hs_bindgen_6070ef9495b96f6a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_keyboard_get_version@
hs_bindgen_6070ef9495b96f6a :: IO (RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_6070ef9495b96f6a =
  RIP.fromFFIType hs_bindgen_6070ef9495b96f6a_base

{-# NOINLINE wl_keyboard_get_version #-}
{-| __C declaration:__ @wl_keyboard_get_version@

    __defined at:__ @wayland-client-protocol.h 5439:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_get_version :: RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> IO HsBindgen.Runtime.LibC.Word32)
wl_keyboard_get_version =
  RIP.unsafePerformIO hs_bindgen_6070ef9495b96f6a

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_keyboard_destroy@
foreign import ccall unsafe "hs_bindgen_515e7166836d8b49" hs_bindgen_515e7166836d8b49_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_keyboard_destroy@
hs_bindgen_515e7166836d8b49 :: IO (RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> IO ()))
hs_bindgen_515e7166836d8b49 =
  RIP.fromFFIType hs_bindgen_515e7166836d8b49_base

{-# NOINLINE wl_keyboard_destroy #-}
{-| __C declaration:__ @wl_keyboard_destroy@

    __defined at:__ @wayland-client-protocol.h 5446:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_destroy :: RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> IO ())
wl_keyboard_destroy =
  RIP.unsafePerformIO hs_bindgen_515e7166836d8b49

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_keyboard_release@
foreign import ccall unsafe "hs_bindgen_720db908fce2694e" hs_bindgen_720db908fce2694e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_keyboard_release@
hs_bindgen_720db908fce2694e :: IO (RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> IO ()))
hs_bindgen_720db908fce2694e =
  RIP.fromFFIType hs_bindgen_720db908fce2694e_base

{-# NOINLINE wl_keyboard_release #-}
{-| __C declaration:__ @wl_keyboard_release@

    __defined at:__ @wayland-client-protocol.h 5455:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_keyboard_release :: RIP.FunPtr ((RIP.Ptr Wl_keyboard) -> IO ())
wl_keyboard_release =
  RIP.unsafePerformIO hs_bindgen_720db908fce2694e

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_touch_add_listener@
foreign import ccall unsafe "hs_bindgen_26926923febab35e" hs_bindgen_26926923febab35e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_touch_add_listener@
hs_bindgen_26926923febab35e :: IO (RIP.FunPtr ((RIP.Ptr Wl_touch) -> (PtrConst.PtrConst Wl_touch_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_26926923febab35e =
  RIP.fromFFIType hs_bindgen_26926923febab35e_base

{-# NOINLINE wl_touch_add_listener #-}
{-| __C declaration:__ @wl_touch_add_listener@

    __defined at:__ @wayland-client-protocol.h 5625:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_touch) -> (PtrConst.PtrConst Wl_touch_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_touch_add_listener =
  RIP.unsafePerformIO hs_bindgen_26926923febab35e

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_touch_set_user_data@
foreign import ccall unsafe "hs_bindgen_3cbca94f4016fdcb" hs_bindgen_3cbca94f4016fdcb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_touch_set_user_data@
hs_bindgen_3cbca94f4016fdcb :: IO (RIP.FunPtr ((RIP.Ptr Wl_touch) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_3cbca94f4016fdcb =
  RIP.fromFFIType hs_bindgen_3cbca94f4016fdcb_base

{-# NOINLINE wl_touch_set_user_data #-}
{-| __C declaration:__ @wl_touch_set_user_data@

    __defined at:__ @wayland-client-protocol.h 5670:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_touch) -> (RIP.Ptr RIP.Void) -> IO ())
wl_touch_set_user_data =
  RIP.unsafePerformIO hs_bindgen_3cbca94f4016fdcb

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_touch_get_user_data@
foreign import ccall unsafe "hs_bindgen_24f79d52fe9d358f" hs_bindgen_24f79d52fe9d358f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_touch_get_user_data@
hs_bindgen_24f79d52fe9d358f :: IO (RIP.FunPtr ((RIP.Ptr Wl_touch) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_24f79d52fe9d358f =
  RIP.fromFFIType hs_bindgen_24f79d52fe9d358f_base

{-# NOINLINE wl_touch_get_user_data #-}
{-| __C declaration:__ @wl_touch_get_user_data@

    __defined at:__ @wayland-client-protocol.h 5677:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_touch) -> IO (RIP.Ptr RIP.Void))
wl_touch_get_user_data =
  RIP.unsafePerformIO hs_bindgen_24f79d52fe9d358f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_touch_get_version@
foreign import ccall unsafe "hs_bindgen_3364cff2601e3dc7" hs_bindgen_3364cff2601e3dc7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_touch_get_version@
hs_bindgen_3364cff2601e3dc7 :: IO (RIP.FunPtr ((RIP.Ptr Wl_touch) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_3364cff2601e3dc7 =
  RIP.fromFFIType hs_bindgen_3364cff2601e3dc7_base

{-# NOINLINE wl_touch_get_version #-}
{-| __C declaration:__ @wl_touch_get_version@

    __defined at:__ @wayland-client-protocol.h 5683:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_get_version :: RIP.FunPtr ((RIP.Ptr Wl_touch) -> IO HsBindgen.Runtime.LibC.Word32)
wl_touch_get_version =
  RIP.unsafePerformIO hs_bindgen_3364cff2601e3dc7

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_touch_destroy@
foreign import ccall unsafe "hs_bindgen_fe4a7c928aff8b1b" hs_bindgen_fe4a7c928aff8b1b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_touch_destroy@
hs_bindgen_fe4a7c928aff8b1b :: IO (RIP.FunPtr ((RIP.Ptr Wl_touch) -> IO ()))
hs_bindgen_fe4a7c928aff8b1b =
  RIP.fromFFIType hs_bindgen_fe4a7c928aff8b1b_base

{-# NOINLINE wl_touch_destroy #-}
{-| __C declaration:__ @wl_touch_destroy@

    __defined at:__ @wayland-client-protocol.h 5690:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_destroy :: RIP.FunPtr ((RIP.Ptr Wl_touch) -> IO ())
wl_touch_destroy =
  RIP.unsafePerformIO hs_bindgen_fe4a7c928aff8b1b

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_touch_release@
foreign import ccall unsafe "hs_bindgen_3b304e92a828bf44" hs_bindgen_3b304e92a828bf44_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_touch_release@
hs_bindgen_3b304e92a828bf44 :: IO (RIP.FunPtr ((RIP.Ptr Wl_touch) -> IO ()))
hs_bindgen_3b304e92a828bf44 =
  RIP.fromFFIType hs_bindgen_3b304e92a828bf44_base

{-# NOINLINE wl_touch_release #-}
{-| __C declaration:__ @wl_touch_release@

    __defined at:__ @wayland-client-protocol.h 5699:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_touch_release :: RIP.FunPtr ((RIP.Ptr Wl_touch) -> IO ())
wl_touch_release =
  RIP.unsafePerformIO hs_bindgen_3b304e92a828bf44

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_output_add_listener@
foreign import ccall unsafe "hs_bindgen_b6da51b620ed5ea3" hs_bindgen_b6da51b620ed5ea3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_output_add_listener@
hs_bindgen_b6da51b620ed5ea3 :: IO (RIP.FunPtr ((RIP.Ptr Wl_output) -> (PtrConst.PtrConst Wl_output_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_b6da51b620ed5ea3 =
  RIP.fromFFIType hs_bindgen_b6da51b620ed5ea3_base

{-# NOINLINE wl_output_add_listener #-}
{-| __C declaration:__ @wl_output_add_listener@

    __defined at:__ @wayland-client-protocol.h 6018:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_add_listener :: RIP.FunPtr ((RIP.Ptr Wl_output) -> (PtrConst.PtrConst Wl_output_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wl_output_add_listener =
  RIP.unsafePerformIO hs_bindgen_b6da51b620ed5ea3

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_output_set_user_data@
foreign import ccall unsafe "hs_bindgen_9dcf165bf0040b17" hs_bindgen_9dcf165bf0040b17_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_output_set_user_data@
hs_bindgen_9dcf165bf0040b17 :: IO (RIP.FunPtr ((RIP.Ptr Wl_output) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_9dcf165bf0040b17 =
  RIP.fromFFIType hs_bindgen_9dcf165bf0040b17_base

{-# NOINLINE wl_output_set_user_data #-}
{-| __C declaration:__ @wl_output_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6059:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_output) -> (RIP.Ptr RIP.Void) -> IO ())
wl_output_set_user_data =
  RIP.unsafePerformIO hs_bindgen_9dcf165bf0040b17

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_output_get_user_data@
foreign import ccall unsafe "hs_bindgen_0a2413f01961cc98" hs_bindgen_0a2413f01961cc98_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_output_get_user_data@
hs_bindgen_0a2413f01961cc98 :: IO (RIP.FunPtr ((RIP.Ptr Wl_output) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_0a2413f01961cc98 =
  RIP.fromFFIType hs_bindgen_0a2413f01961cc98_base

{-# NOINLINE wl_output_get_user_data #-}
{-| __C declaration:__ @wl_output_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6066:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_output) -> IO (RIP.Ptr RIP.Void))
wl_output_get_user_data =
  RIP.unsafePerformIO hs_bindgen_0a2413f01961cc98

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_output_get_version@
foreign import ccall unsafe "hs_bindgen_dd7eb0df8e29762f" hs_bindgen_dd7eb0df8e29762f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_output_get_version@
hs_bindgen_dd7eb0df8e29762f :: IO (RIP.FunPtr ((RIP.Ptr Wl_output) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_dd7eb0df8e29762f =
  RIP.fromFFIType hs_bindgen_dd7eb0df8e29762f_base

{-# NOINLINE wl_output_get_version #-}
{-| __C declaration:__ @wl_output_get_version@

    __defined at:__ @wayland-client-protocol.h 6072:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_get_version :: RIP.FunPtr ((RIP.Ptr Wl_output) -> IO HsBindgen.Runtime.LibC.Word32)
wl_output_get_version =
  RIP.unsafePerformIO hs_bindgen_dd7eb0df8e29762f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_output_destroy@
foreign import ccall unsafe "hs_bindgen_b080b0c71a657eb0" hs_bindgen_b080b0c71a657eb0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_output_destroy@
hs_bindgen_b080b0c71a657eb0 :: IO (RIP.FunPtr ((RIP.Ptr Wl_output) -> IO ()))
hs_bindgen_b080b0c71a657eb0 =
  RIP.fromFFIType hs_bindgen_b080b0c71a657eb0_base

{-# NOINLINE wl_output_destroy #-}
{-| __C declaration:__ @wl_output_destroy@

    __defined at:__ @wayland-client-protocol.h 6079:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_destroy :: RIP.FunPtr ((RIP.Ptr Wl_output) -> IO ())
wl_output_destroy =
  RIP.unsafePerformIO hs_bindgen_b080b0c71a657eb0

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_output_release@
foreign import ccall unsafe "hs_bindgen_5bc64c794c2d70ba" hs_bindgen_5bc64c794c2d70ba_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_output_release@
hs_bindgen_5bc64c794c2d70ba :: IO (RIP.FunPtr ((RIP.Ptr Wl_output) -> IO ()))
hs_bindgen_5bc64c794c2d70ba =
  RIP.fromFFIType hs_bindgen_5bc64c794c2d70ba_base

{-# NOINLINE wl_output_release #-}
{-| __C declaration:__ @wl_output_release@

    __defined at:__ @wayland-client-protocol.h 6091:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_output_release :: RIP.FunPtr ((RIP.Ptr Wl_output) -> IO ())
wl_output_release =
  RIP.unsafePerformIO hs_bindgen_5bc64c794c2d70ba

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_region_set_user_data@
foreign import ccall unsafe "hs_bindgen_e01aad551147ccbc" hs_bindgen_e01aad551147ccbc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_region_set_user_data@
hs_bindgen_e01aad551147ccbc :: IO (RIP.FunPtr ((RIP.Ptr Wl_region) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_e01aad551147ccbc =
  RIP.fromFFIType hs_bindgen_e01aad551147ccbc_base

{-# NOINLINE wl_region_set_user_data #-}
{-| __C declaration:__ @wl_region_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6117:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_region) -> (RIP.Ptr RIP.Void) -> IO ())
wl_region_set_user_data =
  RIP.unsafePerformIO hs_bindgen_e01aad551147ccbc

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_region_get_user_data@
foreign import ccall unsafe "hs_bindgen_f659facf8f01844f" hs_bindgen_f659facf8f01844f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_region_get_user_data@
hs_bindgen_f659facf8f01844f :: IO (RIP.FunPtr ((RIP.Ptr Wl_region) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_f659facf8f01844f =
  RIP.fromFFIType hs_bindgen_f659facf8f01844f_base

{-# NOINLINE wl_region_get_user_data #-}
{-| __C declaration:__ @wl_region_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6124:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_region) -> IO (RIP.Ptr RIP.Void))
wl_region_get_user_data =
  RIP.unsafePerformIO hs_bindgen_f659facf8f01844f

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_region_get_version@
foreign import ccall unsafe "hs_bindgen_4f0762ab8cb0848d" hs_bindgen_4f0762ab8cb0848d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_region_get_version@
hs_bindgen_4f0762ab8cb0848d :: IO (RIP.FunPtr ((RIP.Ptr Wl_region) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_4f0762ab8cb0848d =
  RIP.fromFFIType hs_bindgen_4f0762ab8cb0848d_base

{-# NOINLINE wl_region_get_version #-}
{-| __C declaration:__ @wl_region_get_version@

    __defined at:__ @wayland-client-protocol.h 6130:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_get_version :: RIP.FunPtr ((RIP.Ptr Wl_region) -> IO HsBindgen.Runtime.LibC.Word32)
wl_region_get_version =
  RIP.unsafePerformIO hs_bindgen_4f0762ab8cb0848d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_region_destroy@
foreign import ccall unsafe "hs_bindgen_4d1bb903795a76a7" hs_bindgen_4d1bb903795a76a7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_region_destroy@
hs_bindgen_4d1bb903795a76a7 :: IO (RIP.FunPtr ((RIP.Ptr Wl_region) -> IO ()))
hs_bindgen_4d1bb903795a76a7 =
  RIP.fromFFIType hs_bindgen_4d1bb903795a76a7_base

{-# NOINLINE wl_region_destroy #-}
{-| __C declaration:__ @wl_region_destroy@

    __defined at:__ @wayland-client-protocol.h 6141:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_destroy :: RIP.FunPtr ((RIP.Ptr Wl_region) -> IO ())
wl_region_destroy =
  RIP.unsafePerformIO hs_bindgen_4d1bb903795a76a7

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_region_add@
foreign import ccall unsafe "hs_bindgen_68fad6320e1ee872" hs_bindgen_68fad6320e1ee872_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_region_add@
hs_bindgen_68fad6320e1ee872 :: IO (RIP.FunPtr ((RIP.Ptr Wl_region) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_68fad6320e1ee872 =
  RIP.fromFFIType hs_bindgen_68fad6320e1ee872_base

{-# NOINLINE wl_region_add #-}
{-| __C declaration:__ @wl_region_add@

    __defined at:__ @wayland-client-protocol.h 6153:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_add :: RIP.FunPtr ((RIP.Ptr Wl_region) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_region_add =
  RIP.unsafePerformIO hs_bindgen_68fad6320e1ee872

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_region_subtract@
foreign import ccall unsafe "hs_bindgen_f806860d58701d2c" hs_bindgen_f806860d58701d2c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_region_subtract@
hs_bindgen_f806860d58701d2c :: IO (RIP.FunPtr ((RIP.Ptr Wl_region) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_f806860d58701d2c =
  RIP.fromFFIType hs_bindgen_f806860d58701d2c_base

{-# NOINLINE wl_region_subtract #-}
{-| __C declaration:__ @wl_region_subtract@

    __defined at:__ @wayland-client-protocol.h 6165:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_region_subtract :: RIP.FunPtr ((RIP.Ptr Wl_region) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_region_subtract =
  RIP.unsafePerformIO hs_bindgen_f806860d58701d2c

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subcompositor_set_user_data@
foreign import ccall unsafe "hs_bindgen_f5d537f91b1899e6" hs_bindgen_f5d537f91b1899e6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subcompositor_set_user_data@
hs_bindgen_f5d537f91b1899e6 :: IO (RIP.FunPtr ((RIP.Ptr Wl_subcompositor) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_f5d537f91b1899e6 =
  RIP.fromFFIType hs_bindgen_f5d537f91b1899e6_base

{-# NOINLINE wl_subcompositor_set_user_data #-}
{-| __C declaration:__ @wl_subcompositor_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6200:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_subcompositor) -> (RIP.Ptr RIP.Void) -> IO ())
wl_subcompositor_set_user_data =
  RIP.unsafePerformIO hs_bindgen_f5d537f91b1899e6

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subcompositor_get_user_data@
foreign import ccall unsafe "hs_bindgen_5b0be24421a4e447" hs_bindgen_5b0be24421a4e447_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subcompositor_get_user_data@
hs_bindgen_5b0be24421a4e447 :: IO (RIP.FunPtr ((RIP.Ptr Wl_subcompositor) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_5b0be24421a4e447 =
  RIP.fromFFIType hs_bindgen_5b0be24421a4e447_base

{-# NOINLINE wl_subcompositor_get_user_data #-}
{-| __C declaration:__ @wl_subcompositor_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6207:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_subcompositor) -> IO (RIP.Ptr RIP.Void))
wl_subcompositor_get_user_data =
  RIP.unsafePerformIO hs_bindgen_5b0be24421a4e447

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subcompositor_get_version@
foreign import ccall unsafe "hs_bindgen_9ff01af41e56c2ce" hs_bindgen_9ff01af41e56c2ce_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subcompositor_get_version@
hs_bindgen_9ff01af41e56c2ce :: IO (RIP.FunPtr ((RIP.Ptr Wl_subcompositor) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_9ff01af41e56c2ce =
  RIP.fromFFIType hs_bindgen_9ff01af41e56c2ce_base

{-# NOINLINE wl_subcompositor_get_version #-}
{-| __C declaration:__ @wl_subcompositor_get_version@

    __defined at:__ @wayland-client-protocol.h 6213:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_version :: RIP.FunPtr ((RIP.Ptr Wl_subcompositor) -> IO HsBindgen.Runtime.LibC.Word32)
wl_subcompositor_get_version =
  RIP.unsafePerformIO hs_bindgen_9ff01af41e56c2ce

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subcompositor_destroy@
foreign import ccall unsafe "hs_bindgen_ae09a8737ccdea18" hs_bindgen_ae09a8737ccdea18_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subcompositor_destroy@
hs_bindgen_ae09a8737ccdea18 :: IO (RIP.FunPtr ((RIP.Ptr Wl_subcompositor) -> IO ()))
hs_bindgen_ae09a8737ccdea18 =
  RIP.fromFFIType hs_bindgen_ae09a8737ccdea18_base

{-# NOINLINE wl_subcompositor_destroy #-}
{-| __C declaration:__ @wl_subcompositor_destroy@

    __defined at:__ @wayland-client-protocol.h 6226:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_destroy :: RIP.FunPtr ((RIP.Ptr Wl_subcompositor) -> IO ())
wl_subcompositor_destroy =
  RIP.unsafePerformIO hs_bindgen_ae09a8737ccdea18

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subcompositor_get_subsurface@
foreign import ccall unsafe "hs_bindgen_e87b1f4557da3903" hs_bindgen_e87b1f4557da3903_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subcompositor_get_subsurface@
hs_bindgen_e87b1f4557da3903 :: IO (RIP.FunPtr ((RIP.Ptr Wl_subcompositor) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_surface) -> IO (RIP.Ptr Wl_subsurface)))
hs_bindgen_e87b1f4557da3903 =
  RIP.fromFFIType hs_bindgen_e87b1f4557da3903_base

{-# NOINLINE wl_subcompositor_get_subsurface #-}
{-| __C declaration:__ @wl_subcompositor_get_subsurface@

    __defined at:__ @wayland-client-protocol.h 6256:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subcompositor_get_subsurface :: RIP.FunPtr ((RIP.Ptr Wl_subcompositor) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_surface) -> IO (RIP.Ptr Wl_subsurface))
wl_subcompositor_get_subsurface =
  RIP.unsafePerformIO hs_bindgen_e87b1f4557da3903

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_set_user_data@
foreign import ccall unsafe "hs_bindgen_2a3892c3992d3f6d" hs_bindgen_2a3892c3992d3f6d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_set_user_data@
hs_bindgen_2a3892c3992d3f6d :: IO (RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_2a3892c3992d3f6d =
  RIP.fromFFIType hs_bindgen_2a3892c3992d3f6d_base

{-# NOINLINE wl_subsurface_set_user_data #-}
{-| __C declaration:__ @wl_subsurface_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6311:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> (RIP.Ptr RIP.Void) -> IO ())
wl_subsurface_set_user_data =
  RIP.unsafePerformIO hs_bindgen_2a3892c3992d3f6d

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_get_user_data@
foreign import ccall unsafe "hs_bindgen_718aac2073dc97bd" hs_bindgen_718aac2073dc97bd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_get_user_data@
hs_bindgen_718aac2073dc97bd :: IO (RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_718aac2073dc97bd =
  RIP.fromFFIType hs_bindgen_718aac2073dc97bd_base

{-# NOINLINE wl_subsurface_get_user_data #-}
{-| __C declaration:__ @wl_subsurface_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6318:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> IO (RIP.Ptr RIP.Void))
wl_subsurface_get_user_data =
  RIP.unsafePerformIO hs_bindgen_718aac2073dc97bd

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_get_version@
foreign import ccall unsafe "hs_bindgen_ee679203e62bab23" hs_bindgen_ee679203e62bab23_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_get_version@
hs_bindgen_ee679203e62bab23 :: IO (RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_ee679203e62bab23 =
  RIP.fromFFIType hs_bindgen_ee679203e62bab23_base

{-# NOINLINE wl_subsurface_get_version #-}
{-| __C declaration:__ @wl_subsurface_get_version@

    __defined at:__ @wayland-client-protocol.h 6324:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_get_version :: RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> IO HsBindgen.Runtime.LibC.Word32)
wl_subsurface_get_version =
  RIP.unsafePerformIO hs_bindgen_ee679203e62bab23

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_destroy@
foreign import ccall unsafe "hs_bindgen_989e9268cc74d548" hs_bindgen_989e9268cc74d548_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_destroy@
hs_bindgen_989e9268cc74d548 :: IO (RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> IO ()))
hs_bindgen_989e9268cc74d548 =
  RIP.fromFFIType hs_bindgen_989e9268cc74d548_base

{-# NOINLINE wl_subsurface_destroy #-}
{-| __C declaration:__ @wl_subsurface_destroy@

    __defined at:__ @wayland-client-protocol.h 6338:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_destroy :: RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> IO ())
wl_subsurface_destroy =
  RIP.unsafePerformIO hs_bindgen_989e9268cc74d548

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_set_position@
foreign import ccall unsafe "hs_bindgen_61cc5cde8b4683ea" hs_bindgen_61cc5cde8b4683ea_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_set_position@
hs_bindgen_61cc5cde8b4683ea :: IO (RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_61cc5cde8b4683ea =
  RIP.fromFFIType hs_bindgen_61cc5cde8b4683ea_base

{-# NOINLINE wl_subsurface_set_position #-}
{-| __C declaration:__ @wl_subsurface_set_position@

    __defined at:__ @wayland-client-protocol.h 6363:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_position :: RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wl_subsurface_set_position =
  RIP.unsafePerformIO hs_bindgen_61cc5cde8b4683ea

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_place_above@
foreign import ccall unsafe "hs_bindgen_85f20ab842bc3d59" hs_bindgen_85f20ab842bc3d59_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_place_above@
hs_bindgen_85f20ab842bc3d59 :: IO (RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> (RIP.Ptr Wl_surface) -> IO ()))
hs_bindgen_85f20ab842bc3d59 =
  RIP.fromFFIType hs_bindgen_85f20ab842bc3d59_base

{-# NOINLINE wl_subsurface_place_above #-}
{-| __C declaration:__ @wl_subsurface_place_above@

    __defined at:__ @wayland-client-protocol.h 6387:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_place_above :: RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> (RIP.Ptr Wl_surface) -> IO ())
wl_subsurface_place_above =
  RIP.unsafePerformIO hs_bindgen_85f20ab842bc3d59

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_place_below@
foreign import ccall unsafe "hs_bindgen_1376b8a5af1947e0" hs_bindgen_1376b8a5af1947e0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_place_below@
hs_bindgen_1376b8a5af1947e0 :: IO (RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> (RIP.Ptr Wl_surface) -> IO ()))
hs_bindgen_1376b8a5af1947e0 =
  RIP.fromFFIType hs_bindgen_1376b8a5af1947e0_base

{-# NOINLINE wl_subsurface_place_below #-}
{-| __C declaration:__ @wl_subsurface_place_below@

    __defined at:__ @wayland-client-protocol.h 6400:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_place_below :: RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> (RIP.Ptr Wl_surface) -> IO ())
wl_subsurface_place_below =
  RIP.unsafePerformIO hs_bindgen_1376b8a5af1947e0

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_set_sync@
foreign import ccall unsafe "hs_bindgen_9921447693b67728" hs_bindgen_9921447693b67728_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_set_sync@
hs_bindgen_9921447693b67728 :: IO (RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> IO ()))
hs_bindgen_9921447693b67728 =
  RIP.fromFFIType hs_bindgen_9921447693b67728_base

{-# NOINLINE wl_subsurface_set_sync #-}
{-| __C declaration:__ @wl_subsurface_set_sync@

    __defined at:__ @wayland-client-protocol.h 6424:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_sync :: RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> IO ())
wl_subsurface_set_sync =
  RIP.unsafePerformIO hs_bindgen_9921447693b67728

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_set_desync@
foreign import ccall unsafe "hs_bindgen_911e3b96b0ce0cf5" hs_bindgen_911e3b96b0ce0cf5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_set_desync@
hs_bindgen_911e3b96b0ce0cf5 :: IO (RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> IO ()))
hs_bindgen_911e3b96b0ce0cf5 =
  RIP.fromFFIType hs_bindgen_911e3b96b0ce0cf5_base

{-# NOINLINE wl_subsurface_set_desync #-}
{-| __C declaration:__ @wl_subsurface_set_desync@

    __defined at:__ @wayland-client-protocol.h 6454:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_subsurface_set_desync :: RIP.FunPtr ((RIP.Ptr Wl_subsurface) -> IO ())
wl_subsurface_set_desync =
  RIP.unsafePerformIO hs_bindgen_911e3b96b0ce0cf5

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_fixes_set_user_data@
foreign import ccall unsafe "hs_bindgen_5a9e00b3456b1a84" hs_bindgen_5a9e00b3456b1a84_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_fixes_set_user_data@
hs_bindgen_5a9e00b3456b1a84 :: IO (RIP.FunPtr ((RIP.Ptr Wl_fixes) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_5a9e00b3456b1a84 =
  RIP.fromFFIType hs_bindgen_5a9e00b3456b1a84_base

{-# NOINLINE wl_fixes_set_user_data #-}
{-| __C declaration:__ @wl_fixes_set_user_data@

    __defined at:__ @wayland-client-protocol.h 6475:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_set_user_data :: RIP.FunPtr ((RIP.Ptr Wl_fixes) -> (RIP.Ptr RIP.Void) -> IO ())
wl_fixes_set_user_data =
  RIP.unsafePerformIO hs_bindgen_5a9e00b3456b1a84

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_fixes_get_user_data@
foreign import ccall unsafe "hs_bindgen_5c9aa2414b20f287" hs_bindgen_5c9aa2414b20f287_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_fixes_get_user_data@
hs_bindgen_5c9aa2414b20f287 :: IO (RIP.FunPtr ((RIP.Ptr Wl_fixes) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_5c9aa2414b20f287 =
  RIP.fromFFIType hs_bindgen_5c9aa2414b20f287_base

{-# NOINLINE wl_fixes_get_user_data #-}
{-| __C declaration:__ @wl_fixes_get_user_data@

    __defined at:__ @wayland-client-protocol.h 6482:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_get_user_data :: RIP.FunPtr ((RIP.Ptr Wl_fixes) -> IO (RIP.Ptr RIP.Void))
wl_fixes_get_user_data =
  RIP.unsafePerformIO hs_bindgen_5c9aa2414b20f287

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_fixes_get_version@
foreign import ccall unsafe "hs_bindgen_d1c5883e4395c3ee" hs_bindgen_d1c5883e4395c3ee_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_fixes_get_version@
hs_bindgen_d1c5883e4395c3ee :: IO (RIP.FunPtr ((RIP.Ptr Wl_fixes) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_d1c5883e4395c3ee =
  RIP.fromFFIType hs_bindgen_d1c5883e4395c3ee_base

{-# NOINLINE wl_fixes_get_version #-}
{-| __C declaration:__ @wl_fixes_get_version@

    __defined at:__ @wayland-client-protocol.h 6488:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_get_version :: RIP.FunPtr ((RIP.Ptr Wl_fixes) -> IO HsBindgen.Runtime.LibC.Word32)
wl_fixes_get_version =
  RIP.unsafePerformIO hs_bindgen_d1c5883e4395c3ee

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_fixes_destroy@
foreign import ccall unsafe "hs_bindgen_dfa3a91865c04910" hs_bindgen_dfa3a91865c04910_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_fixes_destroy@
hs_bindgen_dfa3a91865c04910 :: IO (RIP.FunPtr ((RIP.Ptr Wl_fixes) -> IO ()))
hs_bindgen_dfa3a91865c04910 =
  RIP.fromFFIType hs_bindgen_dfa3a91865c04910_base

{-# NOINLINE wl_fixes_destroy #-}
{-| __C declaration:__ @wl_fixes_destroy@

    __defined at:__ @wayland-client-protocol.h 6497:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_destroy :: RIP.FunPtr ((RIP.Ptr Wl_fixes) -> IO ())
wl_fixes_destroy =
  RIP.unsafePerformIO hs_bindgen_dfa3a91865c04910

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_fixes_destroy_registry@
foreign import ccall unsafe "hs_bindgen_1a464a6853eff0f5" hs_bindgen_1a464a6853eff0f5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_fixes_destroy_registry@
hs_bindgen_1a464a6853eff0f5 :: IO (RIP.FunPtr ((RIP.Ptr Wl_fixes) -> (RIP.Ptr Wl_registry) -> IO ()))
hs_bindgen_1a464a6853eff0f5 =
  RIP.fromFFIType hs_bindgen_1a464a6853eff0f5_base

{-# NOINLINE wl_fixes_destroy_registry #-}
{-| __C declaration:__ @wl_fixes_destroy_registry@

    __defined at:__ @wayland-client-protocol.h 6517:1@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wl_fixes_destroy_registry :: RIP.FunPtr ((RIP.Ptr Wl_fixes) -> (RIP.Ptr Wl_registry) -> IO ())
wl_fixes_destroy_registry =
  RIP.unsafePerformIO hs_bindgen_1a464a6853eff0f5
