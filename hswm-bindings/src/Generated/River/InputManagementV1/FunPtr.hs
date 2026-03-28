{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.InputManagementV1.FunPtr
    ( Generated.River.InputManagementV1.FunPtr.river_input_manager_v1_add_listener
    , Generated.River.InputManagementV1.FunPtr.river_input_manager_v1_set_user_data
    , Generated.River.InputManagementV1.FunPtr.river_input_manager_v1_get_user_data
    , Generated.River.InputManagementV1.FunPtr.river_input_manager_v1_get_version
    , Generated.River.InputManagementV1.FunPtr.river_input_manager_v1_stop
    , Generated.River.InputManagementV1.FunPtr.river_input_manager_v1_destroy
    , Generated.River.InputManagementV1.FunPtr.river_input_manager_v1_create_seat
    , Generated.River.InputManagementV1.FunPtr.river_input_manager_v1_destroy_seat
    , Generated.River.InputManagementV1.FunPtr.river_input_device_v1_add_listener
    , Generated.River.InputManagementV1.FunPtr.river_input_device_v1_set_user_data
    , Generated.River.InputManagementV1.FunPtr.river_input_device_v1_get_user_data
    , Generated.River.InputManagementV1.FunPtr.river_input_device_v1_get_version
    , Generated.River.InputManagementV1.FunPtr.river_input_device_v1_destroy
    , Generated.River.InputManagementV1.FunPtr.river_input_device_v1_assign_to_seat
    , Generated.River.InputManagementV1.FunPtr.river_input_device_v1_set_repeat_info
    , Generated.River.InputManagementV1.FunPtr.river_input_device_v1_set_scroll_factor
    , Generated.River.InputManagementV1.FunPtr.river_input_device_v1_map_to_output
    , Generated.River.InputManagementV1.FunPtr.river_input_device_v1_map_to_rectangle
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
  , "/* hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_043edc3fcfb557a9 (void)) ("
  , "  struct river_input_manager_v1 *arg1,"
  , "  struct river_input_manager_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_input_manager_v1_add_listener;"
  , "}"
  , "/* hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_813f284e6b5e2957 (void)) ("
  , "  struct river_input_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_input_manager_v1_set_user_data;"
  , "}"
  , "/* hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_0fcafbfa98ded325 (void)) ("
  , "  struct river_input_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_input_manager_v1_get_user_data;"
  , "}"
  , "/* hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_29e4c32fe2b20da2 (void)) ("
  , "  struct river_input_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_input_manager_v1_get_version;"
  , "}"
  , "/* hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_stop */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_55a1da4efca1a2f8 (void)) ("
  , "  struct river_input_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_input_manager_v1_stop;"
  , "}"
  , "/* hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_459bd40690aa6f67 (void)) ("
  , "  struct river_input_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_input_manager_v1_destroy;"
  , "}"
  , "/* hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_create_seat */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2a15e4c52dc42b51 (void)) ("
  , "  struct river_input_manager_v1 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &river_input_manager_v1_create_seat;"
  , "}"
  , "/* hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_destroy_seat */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_745a237c7c07a13b (void)) ("
  , "  struct river_input_manager_v1 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &river_input_manager_v1_destroy_seat;"
  , "}"
  , "/* hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0904438f2b72841e (void)) ("
  , "  struct river_input_device_v1 *arg1,"
  , "  struct river_input_device_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_input_device_v1_add_listener;"
  , "}"
  , "/* hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_aea4e4c6ab0c89d2 (void)) ("
  , "  struct river_input_device_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_input_device_v1_set_user_data;"
  , "}"
  , "/* hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_a30755f249517e8e (void)) ("
  , "  struct river_input_device_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_input_device_v1_get_user_data;"
  , "}"
  , "/* hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_7b5d400523dc49a5 (void)) ("
  , "  struct river_input_device_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_input_device_v1_get_version;"
  , "}"
  , "/* hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a3b53a4a57799a11 (void)) ("
  , "  struct river_input_device_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_input_device_v1_destroy;"
  , "}"
  , "/* hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_assign_to_seat */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3f6da9b2eb79eecb (void)) ("
  , "  struct river_input_device_v1 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &river_input_device_v1_assign_to_seat;"
  , "}"
  , "/* hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_set_repeat_info */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ebe45d6f31a0b4b5 (void)) ("
  , "  struct river_input_device_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &river_input_device_v1_set_repeat_info;"
  , "}"
  , "/* hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_set_scroll_factor */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1f06ea78f397bb6a (void)) ("
  , "  struct river_input_device_v1 *arg1,"
  , "  wl_fixed_t arg2"
  , ")"
  , "{"
  , "  return &river_input_device_v1_set_scroll_factor;"
  , "}"
  , "/* hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_map_to_output */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_03af470e7e4fd744 (void)) ("
  , "  struct river_input_device_v1 *arg1,"
  , "  struct wl_output *arg2"
  , ")"
  , "{"
  , "  return &river_input_device_v1_map_to_output;"
  , "}"
  , "/* hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_map_to_rectangle */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_44a9d8f03e06669a (void)) ("
  , "  struct river_input_device_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &river_input_device_v1_map_to_rectangle;"
  , "}"
  ]))

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_043edc3fcfb557a9" hs_bindgen_043edc3fcfb557a9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_add_listener@
hs_bindgen_043edc3fcfb557a9 :: IO (RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> (PtrConst.PtrConst River_input_manager_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_043edc3fcfb557a9 =
  RIP.fromFFIType hs_bindgen_043edc3fcfb557a9_base

{-# NOINLINE river_input_manager_v1_add_listener #-}
{-|

  > iface_river_input_manager_v1

__C declaration:__ @river_input_manager_v1_add_listener@

__defined at:__ @river-input-management-v1-client-protocol.h 133:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_manager_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> (PtrConst.PtrConst River_input_manager_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_input_manager_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_043edc3fcfb557a9

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_813f284e6b5e2957" hs_bindgen_813f284e6b5e2957_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_set_user_data@
hs_bindgen_813f284e6b5e2957 :: IO (RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_813f284e6b5e2957 =
  RIP.fromFFIType hs_bindgen_813f284e6b5e2957_base

{-# NOINLINE river_input_manager_v1_set_user_data #-}
{-|

  > iface_river_input_manager_v1

__C declaration:__ @river_input_manager_v1_set_user_data@

__defined at:__ @river-input-management-v1-client-protocol.h 173:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_manager_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_input_manager_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_813f284e6b5e2957

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_0fcafbfa98ded325" hs_bindgen_0fcafbfa98ded325_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_get_user_data@
hs_bindgen_0fcafbfa98ded325 :: IO (RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_0fcafbfa98ded325 =
  RIP.fromFFIType hs_bindgen_0fcafbfa98ded325_base

{-# NOINLINE river_input_manager_v1_get_user_data #-}
{-|

  > iface_river_input_manager_v1

__C declaration:__ @river_input_manager_v1_get_user_data@

__defined at:__ @river-input-management-v1-client-protocol.h 180:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_manager_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> IO (RIP.Ptr RIP.Void))
river_input_manager_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_0fcafbfa98ded325

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_get_version@
foreign import ccall unsafe "hs_bindgen_29e4c32fe2b20da2" hs_bindgen_29e4c32fe2b20da2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_get_version@
hs_bindgen_29e4c32fe2b20da2 :: IO (RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_29e4c32fe2b20da2 =
  RIP.fromFFIType hs_bindgen_29e4c32fe2b20da2_base

{-# NOINLINE river_input_manager_v1_get_version #-}
{-| __C declaration:__ @river_input_manager_v1_get_version@

    __defined at:__ @river-input-management-v1-client-protocol.h 186:1@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_manager_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_input_manager_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_29e4c32fe2b20da2

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_stop@
foreign import ccall unsafe "hs_bindgen_55a1da4efca1a2f8" hs_bindgen_55a1da4efca1a2f8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_stop@
hs_bindgen_55a1da4efca1a2f8 :: IO (RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> IO ()))
hs_bindgen_55a1da4efca1a2f8 =
  RIP.fromFFIType hs_bindgen_55a1da4efca1a2f8_base

{-# NOINLINE river_input_manager_v1_stop #-}
{-|

  > iface_river_input_manager_v1

  This request indicates that the client no longer wishes to receive events on this object.

  The Wayland protocol is asynchronous, which means the server may send further events until the stop request is processed. The client must wait for a river_input_manager_v1.finished event before destroying this object.

__C declaration:__ @river_input_manager_v1_stop@

__defined at:__ @river-input-management-v1-client-protocol.h 203:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_manager_v1_stop :: RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> IO ())
river_input_manager_v1_stop =
  RIP.unsafePerformIO hs_bindgen_55a1da4efca1a2f8

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_destroy@
foreign import ccall unsafe "hs_bindgen_459bd40690aa6f67" hs_bindgen_459bd40690aa6f67_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_destroy@
hs_bindgen_459bd40690aa6f67 :: IO (RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> IO ()))
hs_bindgen_459bd40690aa6f67 =
  RIP.fromFFIType hs_bindgen_459bd40690aa6f67_base

{-# NOINLINE river_input_manager_v1_destroy #-}
{-|

  > iface_river_input_manager_v1

  This request should be called after the finished event has been received to complete destruction of the object.

  It is a protocol error to make this request before the finished event has been received.

  If a client wishes to destroy this object it should send a river_input_manager_v1.stop request and wait for a river_input_manager_v1.finished event. Once the finished event is received it is safe to destroy this object and any other objects created through this interface.

__C declaration:__ @river_input_manager_v1_destroy@

__defined at:__ @river-input-management-v1-client-protocol.h 225:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_manager_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> IO ())
river_input_manager_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_459bd40690aa6f67

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_create_seat@
foreign import ccall unsafe "hs_bindgen_2a15e4c52dc42b51" hs_bindgen_2a15e4c52dc42b51_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_create_seat@
hs_bindgen_2a15e4c52dc42b51 :: IO (RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_2a15e4c52dc42b51 =
  RIP.fromFFIType hs_bindgen_2a15e4c52dc42b51_base

{-# NOINLINE river_input_manager_v1_create_seat #-}
{-|

  > iface_river_input_manager_v1

  Create a new seat with the given name. Has no effect if a seat with the given name already exists.

  The default seat with name "default" always exists and does not need to be explicitly created.

__C declaration:__ @river_input_manager_v1_create_seat@

__defined at:__ @river-input-management-v1-client-protocol.h 241:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_manager_v1_create_seat :: RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
river_input_manager_v1_create_seat =
  RIP.unsafePerformIO hs_bindgen_2a15e4c52dc42b51

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_destroy_seat@
foreign import ccall unsafe "hs_bindgen_745a237c7c07a13b" hs_bindgen_745a237c7c07a13b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_destroy_seat@
hs_bindgen_745a237c7c07a13b :: IO (RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_745a237c7c07a13b =
  RIP.fromFFIType hs_bindgen_745a237c7c07a13b_base

{-# NOINLINE river_input_manager_v1_destroy_seat #-}
{-|

  > iface_river_input_manager_v1

  Destroy the seat with the given name. Has no effect if a seat with the given name does not exist.

  The default seat with name "default" cannot be destroyed and attempting to destroy it will have no effect.

  Any input devices assigned to the destroyed seat at the time of destruction are assigned to the default seat.

__C declaration:__ @river_input_manager_v1_destroy_seat@

__defined at:__ @river-input-management-v1-client-protocol.h 260:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_manager_v1_destroy_seat :: RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
river_input_manager_v1_destroy_seat =
  RIP.unsafePerformIO hs_bindgen_745a237c7c07a13b

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_0904438f2b72841e" hs_bindgen_0904438f2b72841e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_add_listener@
hs_bindgen_0904438f2b72841e :: IO (RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> (PtrConst.PtrConst River_input_device_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_0904438f2b72841e =
  RIP.fromFFIType hs_bindgen_0904438f2b72841e_base

{-# NOINLINE river_input_device_v1_add_listener #-}
{-|

  > iface_river_input_device_v1

__C declaration:__ @river_input_device_v1_add_listener@

__defined at:__ @river-input-management-v1-client-protocol.h 329:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> (PtrConst.PtrConst River_input_device_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_input_device_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_0904438f2b72841e

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_aea4e4c6ab0c89d2" hs_bindgen_aea4e4c6ab0c89d2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_set_user_data@
hs_bindgen_aea4e4c6ab0c89d2 :: IO (RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_aea4e4c6ab0c89d2 =
  RIP.fromFFIType hs_bindgen_aea4e4c6ab0c89d2_base

{-# NOINLINE river_input_device_v1_set_user_data #-}
{-|

  > iface_river_input_device_v1

__C declaration:__ @river_input_device_v1_set_user_data@

__defined at:__ @river-input-management-v1-client-protocol.h 383:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_input_device_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_aea4e4c6ab0c89d2

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_a30755f249517e8e" hs_bindgen_a30755f249517e8e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_get_user_data@
hs_bindgen_a30755f249517e8e :: IO (RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_a30755f249517e8e =
  RIP.fromFFIType hs_bindgen_a30755f249517e8e_base

{-# NOINLINE river_input_device_v1_get_user_data #-}
{-|

  > iface_river_input_device_v1

__C declaration:__ @river_input_device_v1_get_user_data@

__defined at:__ @river-input-management-v1-client-protocol.h 390:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> IO (RIP.Ptr RIP.Void))
river_input_device_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_a30755f249517e8e

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_get_version@
foreign import ccall unsafe "hs_bindgen_7b5d400523dc49a5" hs_bindgen_7b5d400523dc49a5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_get_version@
hs_bindgen_7b5d400523dc49a5 :: IO (RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_7b5d400523dc49a5 =
  RIP.fromFFIType hs_bindgen_7b5d400523dc49a5_base

{-# NOINLINE river_input_device_v1_get_version #-}
{-| __C declaration:__ @river_input_device_v1_get_version@

    __defined at:__ @river-input-management-v1-client-protocol.h 396:1@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_input_device_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_7b5d400523dc49a5

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_destroy@
foreign import ccall unsafe "hs_bindgen_a3b53a4a57799a11" hs_bindgen_a3b53a4a57799a11_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_destroy@
hs_bindgen_a3b53a4a57799a11 :: IO (RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> IO ()))
hs_bindgen_a3b53a4a57799a11 =
  RIP.fromFFIType hs_bindgen_a3b53a4a57799a11_base

{-# NOINLINE river_input_device_v1_destroy #-}
{-|

  > iface_river_input_device_v1

  This request indicates that the client will no longer use the input device object and that it may be safely destroyed.

__C declaration:__ @river_input_device_v1_destroy@

__defined at:__ @river-input-management-v1-client-protocol.h 408:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> IO ())
river_input_device_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_a3b53a4a57799a11

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_assign_to_seat@
foreign import ccall unsafe "hs_bindgen_3f6da9b2eb79eecb" hs_bindgen_3f6da9b2eb79eecb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_assign_to_seat@
hs_bindgen_3f6da9b2eb79eecb :: IO (RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_3f6da9b2eb79eecb =
  RIP.fromFFIType hs_bindgen_3f6da9b2eb79eecb_base

{-# NOINLINE river_input_device_v1_assign_to_seat #-}
{-|

  > iface_river_input_device_v1

  Assign the input device to a seat. All input devices not explicitly assigned to a seat are considered assigned to the default seat.

  Has no effect if a seat with the given name does not exist.

__C declaration:__ @river_input_device_v1_assign_to_seat@

__defined at:__ @river-input-management-v1-client-protocol.h 423:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_assign_to_seat :: RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
river_input_device_v1_assign_to_seat =
  RIP.unsafePerformIO hs_bindgen_3f6da9b2eb79eecb

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_set_repeat_info@
foreign import ccall unsafe "hs_bindgen_ebe45d6f31a0b4b5" hs_bindgen_ebe45d6f31a0b4b5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_set_repeat_info@
hs_bindgen_ebe45d6f31a0b4b5 :: IO (RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_ebe45d6f31a0b4b5 =
  RIP.fromFFIType hs_bindgen_ebe45d6f31a0b4b5_base

{-# NOINLINE river_input_device_v1_set_repeat_info #-}
{-|

  > iface_river_input_device_v1

  Set repeat rate and delay for a keyboard input device. Has no effect if the device is not a keyboard.

  Negative values for either rate or delay are illegal. A rate of zero will disable any repeating (regardless of the value of delay).

__C declaration:__ @river_input_device_v1_set_repeat_info@

__defined at:__ @river-input-management-v1-client-protocol.h 439:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_set_repeat_info :: RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
river_input_device_v1_set_repeat_info =
  RIP.unsafePerformIO hs_bindgen_ebe45d6f31a0b4b5

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_set_scroll_factor@
foreign import ccall unsafe "hs_bindgen_1f06ea78f397bb6a" hs_bindgen_1f06ea78f397bb6a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_set_scroll_factor@
hs_bindgen_1f06ea78f397bb6a :: IO (RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> Generated.Wayland.Util.Wl_fixed_t -> IO ()))
hs_bindgen_1f06ea78f397bb6a =
  RIP.fromFFIType hs_bindgen_1f06ea78f397bb6a_base

{-# NOINLINE river_input_device_v1_set_scroll_factor #-}
{-|

  > iface_river_input_device_v1

  Set the scroll factor for a pointer input device. Has no effect if the device is not a pointer.

  For example, a factor of 0.5 will make scrolling twice as slow while a factor of 3.0 will make scrolling 3 times as fast.

  Setting a scroll factor less than 0 is a protocol error.

__C declaration:__ @river_input_device_v1_set_scroll_factor@

__defined at:__ @river-input-management-v1-client-protocol.h 457:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_set_scroll_factor :: RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
river_input_device_v1_set_scroll_factor =
  RIP.unsafePerformIO hs_bindgen_1f06ea78f397bb6a

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_map_to_output@
foreign import ccall unsafe "hs_bindgen_03af470e7e4fd744" hs_bindgen_03af470e7e4fd744_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_map_to_output@
hs_bindgen_03af470e7e4fd744 :: IO (RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> (RIP.Ptr Wl_output) -> IO ()))
hs_bindgen_03af470e7e4fd744 =
  RIP.fromFFIType hs_bindgen_03af470e7e4fd744_base

{-# NOINLINE river_input_device_v1_map_to_output #-}
{-|

  > iface_river_input_device_v1

  Map the input device to the given output. Has no effect if the device is not a pointer, touch, or tablet device.

  If mapped to both an output and a rectangle, the rectangle has priority.

  Passing null clears an existing mapping.

__C declaration:__ @river_input_device_v1_map_to_output@

__defined at:__ @river-input-management-v1-client-protocol.h 474:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_map_to_output :: RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> (RIP.Ptr Wl_output) -> IO ())
river_input_device_v1_map_to_output =
  RIP.unsafePerformIO hs_bindgen_03af470e7e4fd744

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_map_to_rectangle@
foreign import ccall unsafe "hs_bindgen_44a9d8f03e06669a" hs_bindgen_44a9d8f03e06669a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_map_to_rectangle@
hs_bindgen_44a9d8f03e06669a :: IO (RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_44a9d8f03e06669a =
  RIP.fromFFIType hs_bindgen_44a9d8f03e06669a_base

{-# NOINLINE river_input_device_v1_map_to_rectangle #-}
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
river_input_device_v1_map_to_rectangle :: RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
river_input_device_v1_map_to_rectangle =
  RIP.unsafePerformIO hs_bindgen_44a9d8f03e06669a
