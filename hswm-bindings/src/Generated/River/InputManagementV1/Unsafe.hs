{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.InputManagementV1.Unsafe
    ( Generated.River.InputManagementV1.Unsafe.river_input_manager_v1_add_listener
    , Generated.River.InputManagementV1.Unsafe.river_input_manager_v1_set_user_data
    , Generated.River.InputManagementV1.Unsafe.river_input_manager_v1_get_user_data
    , Generated.River.InputManagementV1.Unsafe.river_input_manager_v1_get_version
    , Generated.River.InputManagementV1.Unsafe.river_input_manager_v1_stop
    , Generated.River.InputManagementV1.Unsafe.river_input_manager_v1_destroy
    , Generated.River.InputManagementV1.Unsafe.river_input_manager_v1_create_seat
    , Generated.River.InputManagementV1.Unsafe.river_input_manager_v1_destroy_seat
    , Generated.River.InputManagementV1.Unsafe.river_input_device_v1_add_listener
    , Generated.River.InputManagementV1.Unsafe.river_input_device_v1_set_user_data
    , Generated.River.InputManagementV1.Unsafe.river_input_device_v1_get_user_data
    , Generated.River.InputManagementV1.Unsafe.river_input_device_v1_get_version
    , Generated.River.InputManagementV1.Unsafe.river_input_device_v1_destroy
    , Generated.River.InputManagementV1.Unsafe.river_input_device_v1_assign_to_seat
    , Generated.River.InputManagementV1.Unsafe.river_input_device_v1_set_repeat_info
    , Generated.River.InputManagementV1.Unsafe.river_input_device_v1_set_scroll_factor
    , Generated.River.InputManagementV1.Unsafe.river_input_device_v1_map_to_output
    , Generated.River.InputManagementV1.Unsafe.river_input_device_v1_map_to_rectangle
    )
  where

import qualified Generated.Wayland.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.River.InputManagementV1

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-input-management-v1-client-protocol.h>"
  , "signed int hs_bindgen_d98f87e96263a439 ("
  , "  struct river_input_manager_v1 *arg1,"
  , "  struct river_input_manager_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_input_manager_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_4ffd343d60728a6f ("
  , "  struct river_input_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_input_manager_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_ab2f454a0cdee0ae ("
  , "  struct river_input_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_input_manager_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_379ae3c213c9bfd0 ("
  , "  struct river_input_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_input_manager_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_13e606993502f0aa ("
  , "  struct river_input_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_input_manager_v1_stop)(arg1);"
  , "}"
  , "void hs_bindgen_ccb193d7f2168ccf ("
  , "  struct river_input_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_input_manager_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_5bc3565333323e2d ("
  , "  struct river_input_manager_v1 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (river_input_manager_v1_create_seat)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_d94b773d7cb746af ("
  , "  struct river_input_manager_v1 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (river_input_manager_v1_destroy_seat)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_92292e7f193882c8 ("
  , "  struct river_input_device_v1 *arg1,"
  , "  struct river_input_device_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_input_device_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_e855a387a80f5f2d ("
  , "  struct river_input_device_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_input_device_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_892386f995d0a7f2 ("
  , "  struct river_input_device_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_input_device_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_6c6e3be09257bfcb ("
  , "  struct river_input_device_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_input_device_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_c03ba168000098e0 ("
  , "  struct river_input_device_v1 *arg1"
  , ")"
  , "{"
  , "  (river_input_device_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_bbc71be44ebd011e ("
  , "  struct river_input_device_v1 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (river_input_device_v1_assign_to_seat)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_a0727ca52e94e4de ("
  , "  struct river_input_device_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_input_device_v1_set_repeat_info)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_c1adef88372bb157 ("
  , "  struct river_input_device_v1 *arg1,"
  , "  wl_fixed_t arg2"
  , ")"
  , "{"
  , "  (river_input_device_v1_set_scroll_factor)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_276c196f33fc95f7 ("
  , "  struct river_input_device_v1 *arg1,"
  , "  struct wl_output *arg2"
  , ")"
  , "{"
  , "  (river_input_device_v1_map_to_output)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_8062d473ce5f3b53 ("
  , "  struct river_input_device_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (river_input_device_v1_map_to_rectangle)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  ]))

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_manager_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_d98f87e96263a439" hs_bindgen_d98f87e96263a439_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_manager_v1_add_listener@
hs_bindgen_d98f87e96263a439 ::
     RIP.Ptr River_input_manager_v1
  -> PtrConst.PtrConst River_input_manager_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_d98f87e96263a439 =
  RIP.fromFFIType hs_bindgen_d98f87e96263a439_base

{-|

  > iface_river_input_manager_v1

__C declaration:__ @river_input_manager_v1_add_listener@

__defined at:__ @river-input-management-v1-client-protocol.h 133:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_manager_v1_add_listener ::
     RIP.Ptr River_input_manager_v1
     -- ^ __C declaration:__ @river_input_manager_v1@
  -> PtrConst.PtrConst River_input_manager_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
river_input_manager_v1_add_listener =
  hs_bindgen_d98f87e96263a439

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_manager_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_4ffd343d60728a6f" hs_bindgen_4ffd343d60728a6f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_manager_v1_set_user_data@
hs_bindgen_4ffd343d60728a6f ::
     RIP.Ptr River_input_manager_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_4ffd343d60728a6f =
  RIP.fromFFIType hs_bindgen_4ffd343d60728a6f_base

{-|

  > iface_river_input_manager_v1

__C declaration:__ @river_input_manager_v1_set_user_data@

__defined at:__ @river-input-management-v1-client-protocol.h 173:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_manager_v1_set_user_data ::
     RIP.Ptr River_input_manager_v1
     -- ^ __C declaration:__ @river_input_manager_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_input_manager_v1_set_user_data =
  hs_bindgen_4ffd343d60728a6f

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_manager_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_ab2f454a0cdee0ae" hs_bindgen_ab2f454a0cdee0ae_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_manager_v1_get_user_data@
hs_bindgen_ab2f454a0cdee0ae ::
     RIP.Ptr River_input_manager_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_ab2f454a0cdee0ae =
  RIP.fromFFIType hs_bindgen_ab2f454a0cdee0ae_base

{-|

  > iface_river_input_manager_v1

__C declaration:__ @river_input_manager_v1_get_user_data@

__defined at:__ @river-input-management-v1-client-protocol.h 180:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_manager_v1_get_user_data ::
     RIP.Ptr River_input_manager_v1
     -- ^ __C declaration:__ @river_input_manager_v1@
  -> IO (RIP.Ptr RIP.Void)
river_input_manager_v1_get_user_data =
  hs_bindgen_ab2f454a0cdee0ae

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_manager_v1_get_version@
foreign import ccall unsafe "hs_bindgen_379ae3c213c9bfd0" hs_bindgen_379ae3c213c9bfd0_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_manager_v1_get_version@
hs_bindgen_379ae3c213c9bfd0 ::
     RIP.Ptr River_input_manager_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_379ae3c213c9bfd0 =
  RIP.fromFFIType hs_bindgen_379ae3c213c9bfd0_base

{-| __C declaration:__ @river_input_manager_v1_get_version@

    __defined at:__ @river-input-management-v1-client-protocol.h 186:1@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_manager_v1_get_version ::
     RIP.Ptr River_input_manager_v1
     -- ^ __C declaration:__ @river_input_manager_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_input_manager_v1_get_version =
  hs_bindgen_379ae3c213c9bfd0

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_manager_v1_stop@
foreign import ccall unsafe "hs_bindgen_13e606993502f0aa" hs_bindgen_13e606993502f0aa_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_manager_v1_stop@
hs_bindgen_13e606993502f0aa ::
     RIP.Ptr River_input_manager_v1
  -> IO ()
hs_bindgen_13e606993502f0aa =
  RIP.fromFFIType hs_bindgen_13e606993502f0aa_base

{-|

  > iface_river_input_manager_v1

  This request indicates that the client no longer wishes to receive events on this object.

  The Wayland protocol is asynchronous, which means the server may send further events until the stop request is processed. The client must wait for a river_input_manager_v1.finished event before destroying this object.

__C declaration:__ @river_input_manager_v1_stop@

__defined at:__ @river-input-management-v1-client-protocol.h 203:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_manager_v1_stop ::
     RIP.Ptr River_input_manager_v1
     -- ^ __C declaration:__ @river_input_manager_v1@
  -> IO ()
river_input_manager_v1_stop =
  hs_bindgen_13e606993502f0aa

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_manager_v1_destroy@
foreign import ccall unsafe "hs_bindgen_ccb193d7f2168ccf" hs_bindgen_ccb193d7f2168ccf_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_manager_v1_destroy@
hs_bindgen_ccb193d7f2168ccf ::
     RIP.Ptr River_input_manager_v1
  -> IO ()
hs_bindgen_ccb193d7f2168ccf =
  RIP.fromFFIType hs_bindgen_ccb193d7f2168ccf_base

{-|

  > iface_river_input_manager_v1

  This request should be called after the finished event has been received to complete destruction of the object.

  It is a protocol error to make this request before the finished event has been received.

  If a client wishes to destroy this object it should send a river_input_manager_v1.stop request and wait for a river_input_manager_v1.finished event. Once the finished event is received it is safe to destroy this object and any other objects created through this interface.

__C declaration:__ @river_input_manager_v1_destroy@

__defined at:__ @river-input-management-v1-client-protocol.h 225:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_manager_v1_destroy ::
     RIP.Ptr River_input_manager_v1
     -- ^ __C declaration:__ @river_input_manager_v1@
  -> IO ()
river_input_manager_v1_destroy =
  hs_bindgen_ccb193d7f2168ccf

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_manager_v1_create_seat@
foreign import ccall unsafe "hs_bindgen_5bc3565333323e2d" hs_bindgen_5bc3565333323e2d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_manager_v1_create_seat@
hs_bindgen_5bc3565333323e2d ::
     RIP.Ptr River_input_manager_v1
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_5bc3565333323e2d =
  RIP.fromFFIType hs_bindgen_5bc3565333323e2d_base

{-|

  > iface_river_input_manager_v1

  Create a new seat with the given name. Has no effect if a seat with the given name already exists.

  The default seat with name "default" always exists and does not need to be explicitly created.

__C declaration:__ @river_input_manager_v1_create_seat@

__defined at:__ @river-input-management-v1-client-protocol.h 241:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_manager_v1_create_seat ::
     RIP.Ptr River_input_manager_v1
     -- ^ __C declaration:__ @river_input_manager_v1@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @name@
  -> IO ()
river_input_manager_v1_create_seat =
  hs_bindgen_5bc3565333323e2d

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_manager_v1_destroy_seat@
foreign import ccall unsafe "hs_bindgen_d94b773d7cb746af" hs_bindgen_d94b773d7cb746af_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_manager_v1_destroy_seat@
hs_bindgen_d94b773d7cb746af ::
     RIP.Ptr River_input_manager_v1
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_d94b773d7cb746af =
  RIP.fromFFIType hs_bindgen_d94b773d7cb746af_base

{-|

  > iface_river_input_manager_v1

  Destroy the seat with the given name. Has no effect if a seat with the given name does not exist.

  The default seat with name "default" cannot be destroyed and attempting to destroy it will have no effect.

  Any input devices assigned to the destroyed seat at the time of destruction are assigned to the default seat.

__C declaration:__ @river_input_manager_v1_destroy_seat@

__defined at:__ @river-input-management-v1-client-protocol.h 260:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_manager_v1_destroy_seat ::
     RIP.Ptr River_input_manager_v1
     -- ^ __C declaration:__ @river_input_manager_v1@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @name@
  -> IO ()
river_input_manager_v1_destroy_seat =
  hs_bindgen_d94b773d7cb746af

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_device_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_92292e7f193882c8" hs_bindgen_92292e7f193882c8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_device_v1_add_listener@
hs_bindgen_92292e7f193882c8 ::
     RIP.Ptr River_input_device_v1
  -> PtrConst.PtrConst River_input_device_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_92292e7f193882c8 =
  RIP.fromFFIType hs_bindgen_92292e7f193882c8_base

{-|

  > iface_river_input_device_v1

__C declaration:__ @river_input_device_v1_add_listener@

__defined at:__ @river-input-management-v1-client-protocol.h 329:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_add_listener ::
     RIP.Ptr River_input_device_v1
     -- ^ __C declaration:__ @river_input_device_v1@
  -> PtrConst.PtrConst River_input_device_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
river_input_device_v1_add_listener =
  hs_bindgen_92292e7f193882c8

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_device_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_e855a387a80f5f2d" hs_bindgen_e855a387a80f5f2d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_device_v1_set_user_data@
hs_bindgen_e855a387a80f5f2d ::
     RIP.Ptr River_input_device_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_e855a387a80f5f2d =
  RIP.fromFFIType hs_bindgen_e855a387a80f5f2d_base

{-|

  > iface_river_input_device_v1

__C declaration:__ @river_input_device_v1_set_user_data@

__defined at:__ @river-input-management-v1-client-protocol.h 383:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_set_user_data ::
     RIP.Ptr River_input_device_v1
     -- ^ __C declaration:__ @river_input_device_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_input_device_v1_set_user_data =
  hs_bindgen_e855a387a80f5f2d

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_device_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_892386f995d0a7f2" hs_bindgen_892386f995d0a7f2_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_device_v1_get_user_data@
hs_bindgen_892386f995d0a7f2 ::
     RIP.Ptr River_input_device_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_892386f995d0a7f2 =
  RIP.fromFFIType hs_bindgen_892386f995d0a7f2_base

{-|

  > iface_river_input_device_v1

__C declaration:__ @river_input_device_v1_get_user_data@

__defined at:__ @river-input-management-v1-client-protocol.h 390:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_get_user_data ::
     RIP.Ptr River_input_device_v1
     -- ^ __C declaration:__ @river_input_device_v1@
  -> IO (RIP.Ptr RIP.Void)
river_input_device_v1_get_user_data =
  hs_bindgen_892386f995d0a7f2

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_device_v1_get_version@
foreign import ccall unsafe "hs_bindgen_6c6e3be09257bfcb" hs_bindgen_6c6e3be09257bfcb_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_device_v1_get_version@
hs_bindgen_6c6e3be09257bfcb ::
     RIP.Ptr River_input_device_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_6c6e3be09257bfcb =
  RIP.fromFFIType hs_bindgen_6c6e3be09257bfcb_base

{-| __C declaration:__ @river_input_device_v1_get_version@

    __defined at:__ @river-input-management-v1-client-protocol.h 396:1@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_get_version ::
     RIP.Ptr River_input_device_v1
     -- ^ __C declaration:__ @river_input_device_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_input_device_v1_get_version =
  hs_bindgen_6c6e3be09257bfcb

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_device_v1_destroy@
foreign import ccall unsafe "hs_bindgen_c03ba168000098e0" hs_bindgen_c03ba168000098e0_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_device_v1_destroy@
hs_bindgen_c03ba168000098e0 ::
     RIP.Ptr River_input_device_v1
  -> IO ()
hs_bindgen_c03ba168000098e0 =
  RIP.fromFFIType hs_bindgen_c03ba168000098e0_base

{-|

  > iface_river_input_device_v1

  This request indicates that the client will no longer use the input device object and that it may be safely destroyed.

__C declaration:__ @river_input_device_v1_destroy@

__defined at:__ @river-input-management-v1-client-protocol.h 408:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_destroy ::
     RIP.Ptr River_input_device_v1
     -- ^ __C declaration:__ @river_input_device_v1@
  -> IO ()
river_input_device_v1_destroy =
  hs_bindgen_c03ba168000098e0

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_device_v1_assign_to_seat@
foreign import ccall unsafe "hs_bindgen_bbc71be44ebd011e" hs_bindgen_bbc71be44ebd011e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_device_v1_assign_to_seat@
hs_bindgen_bbc71be44ebd011e ::
     RIP.Ptr River_input_device_v1
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_bbc71be44ebd011e =
  RIP.fromFFIType hs_bindgen_bbc71be44ebd011e_base

{-|

  > iface_river_input_device_v1

  Assign the input device to a seat. All input devices not explicitly assigned to a seat are considered assigned to the default seat.

  Has no effect if a seat with the given name does not exist.

__C declaration:__ @river_input_device_v1_assign_to_seat@

__defined at:__ @river-input-management-v1-client-protocol.h 423:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_assign_to_seat ::
     RIP.Ptr River_input_device_v1
     -- ^ __C declaration:__ @river_input_device_v1@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @name@
  -> IO ()
river_input_device_v1_assign_to_seat =
  hs_bindgen_bbc71be44ebd011e

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_device_v1_set_repeat_info@
foreign import ccall unsafe "hs_bindgen_a0727ca52e94e4de" hs_bindgen_a0727ca52e94e4de_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_device_v1_set_repeat_info@
hs_bindgen_a0727ca52e94e4de ::
     RIP.Ptr River_input_device_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_a0727ca52e94e4de =
  RIP.fromFFIType hs_bindgen_a0727ca52e94e4de_base

{-|

  > iface_river_input_device_v1

  Set repeat rate and delay for a keyboard input device. Has no effect if the device is not a keyboard.

  Negative values for either rate or delay are illegal. A rate of zero will disable any repeating (regardless of the value of delay).

__C declaration:__ @river_input_device_v1_set_repeat_info@

__defined at:__ @river-input-management-v1-client-protocol.h 439:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_set_repeat_info ::
     RIP.Ptr River_input_device_v1
     -- ^ __C declaration:__ @river_input_device_v1@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @rate@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @delay@
  -> IO ()
river_input_device_v1_set_repeat_info =
  hs_bindgen_a0727ca52e94e4de

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_device_v1_set_scroll_factor@
foreign import ccall unsafe "hs_bindgen_c1adef88372bb157" hs_bindgen_c1adef88372bb157_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_device_v1_set_scroll_factor@
hs_bindgen_c1adef88372bb157 ::
     RIP.Ptr River_input_device_v1
  -> Generated.Wayland.Util.Wl_fixed_t
  -> IO ()
hs_bindgen_c1adef88372bb157 =
  RIP.fromFFIType hs_bindgen_c1adef88372bb157_base

{-|

  > iface_river_input_device_v1

  Set the scroll factor for a pointer input device. Has no effect if the device is not a pointer.

  For example, a factor of 0.5 will make scrolling twice as slow while a factor of 3.0 will make scrolling 3 times as fast.

  Setting a scroll factor less than 0 is a protocol error.

__C declaration:__ @river_input_device_v1_set_scroll_factor@

__defined at:__ @river-input-management-v1-client-protocol.h 457:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_set_scroll_factor ::
     RIP.Ptr River_input_device_v1
     -- ^ __C declaration:__ @river_input_device_v1@
  -> Generated.Wayland.Util.Wl_fixed_t
     -- ^ __C declaration:__ @factor@
  -> IO ()
river_input_device_v1_set_scroll_factor =
  hs_bindgen_c1adef88372bb157

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_device_v1_map_to_output@
foreign import ccall unsafe "hs_bindgen_276c196f33fc95f7" hs_bindgen_276c196f33fc95f7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_device_v1_map_to_output@
hs_bindgen_276c196f33fc95f7 ::
     RIP.Ptr River_input_device_v1
  -> RIP.Ptr Wl_output
  -> IO ()
hs_bindgen_276c196f33fc95f7 =
  RIP.fromFFIType hs_bindgen_276c196f33fc95f7_base

{-|

  > iface_river_input_device_v1

  Map the input device to the given output. Has no effect if the device is not a pointer, touch, or tablet device.

  If mapped to both an output and a rectangle, the rectangle has priority.

  Passing null clears an existing mapping.

__C declaration:__ @river_input_device_v1_map_to_output@

__defined at:__ @river-input-management-v1-client-protocol.h 474:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_map_to_output ::
     RIP.Ptr River_input_device_v1
     -- ^ __C declaration:__ @river_input_device_v1@
  -> RIP.Ptr Wl_output
     -- ^ __C declaration:__ @output@
  -> IO ()
river_input_device_v1_map_to_output =
  hs_bindgen_276c196f33fc95f7

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_device_v1_map_to_rectangle@
foreign import ccall unsafe "hs_bindgen_8062d473ce5f3b53" hs_bindgen_8062d473ce5f3b53_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_Unsafe_river_input_device_v1_map_to_rectangle@
hs_bindgen_8062d473ce5f3b53 ::
     RIP.Ptr River_input_device_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_8062d473ce5f3b53 =
  RIP.fromFFIType hs_bindgen_8062d473ce5f3b53_base

{-|

  > iface_river_input_device_v1

  Map the input device to the given rectangle in the global compositor coordinate space. Has no effect if the device is not a pointer, touch, or tablet device.

  If mapped to both an output and a rectangle, the rectangle has priority.

  Width and height must be greater than or equal to 0.

  Passing 0 for width or height clears an existing mapping.

__C declaration:__ @river_input_device_v1_map_to_rectangle@

__defined at:__ @river-input-management-v1-client-protocol.h 494:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_map_to_rectangle ::
     RIP.Ptr River_input_device_v1
     -- ^ __C declaration:__ @river_input_device_v1@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @height@
  -> IO ()
river_input_device_v1_map_to_rectangle =
  hs_bindgen_8062d473ce5f3b53
