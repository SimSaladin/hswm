{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.InputManagementV1.Generated.FunPtr
    ( Bindings.River.InputManagementV1.Generated.FunPtr.river_input_manager_v1_add_listener
    , Bindings.River.InputManagementV1.Generated.FunPtr.river_input_manager_v1_set_user_data
    , Bindings.River.InputManagementV1.Generated.FunPtr.river_input_manager_v1_get_user_data
    , Bindings.River.InputManagementV1.Generated.FunPtr.river_input_manager_v1_get_version
    , Bindings.River.InputManagementV1.Generated.FunPtr.river_input_manager_v1_stop
    , Bindings.River.InputManagementV1.Generated.FunPtr.river_input_manager_v1_destroy
    , Bindings.River.InputManagementV1.Generated.FunPtr.river_input_manager_v1_create_seat
    , Bindings.River.InputManagementV1.Generated.FunPtr.river_input_manager_v1_destroy_seat
    , Bindings.River.InputManagementV1.Generated.FunPtr.river_input_device_v1_add_listener
    , Bindings.River.InputManagementV1.Generated.FunPtr.river_input_device_v1_set_user_data
    , Bindings.River.InputManagementV1.Generated.FunPtr.river_input_device_v1_get_user_data
    , Bindings.River.InputManagementV1.Generated.FunPtr.river_input_device_v1_get_version
    , Bindings.River.InputManagementV1.Generated.FunPtr.river_input_device_v1_destroy
    , Bindings.River.InputManagementV1.Generated.FunPtr.river_input_device_v1_assign_to_seat
    , Bindings.River.InputManagementV1.Generated.FunPtr.river_input_device_v1_set_repeat_info
    , Bindings.River.InputManagementV1.Generated.FunPtr.river_input_device_v1_set_scroll_factor
    , Bindings.River.InputManagementV1.Generated.FunPtr.river_input_device_v1_map_to_output
    , Bindings.River.InputManagementV1.Generated.FunPtr.river_input_device_v1_map_to_rectangle
    )
  where

import qualified Bindings.Wayland.Client.Generated
import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.River.InputManagementV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-input-management-v1-client-protocol.h>"
  , "/* Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9db0cab03522c066 (void)) ("
  , "  struct river_input_manager_v1 *arg1,"
  , "  struct river_input_manager_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_input_manager_v1_add_listener;"
  , "}"
  , "/* Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f9238fec0361fff9 (void)) ("
  , "  struct river_input_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_input_manager_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_37f782198cc8d6c1 (void)) ("
  , "  struct river_input_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_input_manager_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_47709fb1f89d5976 (void)) ("
  , "  struct river_input_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_input_manager_v1_get_version;"
  , "}"
  , "/* Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_stop */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2e103e3b2f24de8a (void)) ("
  , "  struct river_input_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_input_manager_v1_stop;"
  , "}"
  , "/* Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1d3a8f06a11d46b0 (void)) ("
  , "  struct river_input_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_input_manager_v1_destroy;"
  , "}"
  , "/* Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_create_seat */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1d052d19809cc7d3 (void)) ("
  , "  struct river_input_manager_v1 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &river_input_manager_v1_create_seat;"
  , "}"
  , "/* Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_destroy_seat */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ff36bc6e044f5e05 (void)) ("
  , "  struct river_input_manager_v1 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &river_input_manager_v1_destroy_seat;"
  , "}"
  , "/* Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9720a99025cc009a (void)) ("
  , "  struct river_input_device_v1 *arg1,"
  , "  struct river_input_device_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_input_device_v1_add_listener;"
  , "}"
  , "/* Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4cfd1640c27b4787 (void)) ("
  , "  struct river_input_device_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_input_device_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_aa4d5af41ed60616 (void)) ("
  , "  struct river_input_device_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_input_device_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_337704174edf1429 (void)) ("
  , "  struct river_input_device_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_input_device_v1_get_version;"
  , "}"
  , "/* Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6d5321e994e6ae91 (void)) ("
  , "  struct river_input_device_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_input_device_v1_destroy;"
  , "}"
  , "/* Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_assign_to_seat */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_75bb0157572daec9 (void)) ("
  , "  struct river_input_device_v1 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &river_input_device_v1_assign_to_seat;"
  , "}"
  , "/* Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_set_repeat_info */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_683ee3c7bbb5dd6b (void)) ("
  , "  struct river_input_device_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &river_input_device_v1_set_repeat_info;"
  , "}"
  , "/* Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_set_scroll_factor */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0f477da8fd7531c5 (void)) ("
  , "  struct river_input_device_v1 *arg1,"
  , "  wl_fixed_t arg2"
  , ")"
  , "{"
  , "  return &river_input_device_v1_set_scroll_factor;"
  , "}"
  , "/* Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_map_to_output */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d781bcb007e30c51 (void)) ("
  , "  struct river_input_device_v1 *arg1,"
  , "  struct wl_output *arg2"
  , ")"
  , "{"
  , "  return &river_input_device_v1_map_to_output;"
  , "}"
  , "/* Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_map_to_rectangle */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_39408eed4b12eec8 (void)) ("
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

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_9db0cab03522c066" hs_bindgen_9db0cab03522c066_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_add_listener@
hs_bindgen_9db0cab03522c066 :: IO (RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> (PtrConst.PtrConst River_input_manager_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_9db0cab03522c066 =
  RIP.fromFFIType hs_bindgen_9db0cab03522c066_base

{-# NOINLINE river_input_manager_v1_add_listener #-}
{-|

  > iface_river_input_manager_v1

__C declaration:__ @river_input_manager_v1_add_listener@

__defined at:__ @river-input-management-v1-client-protocol.h 133:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_manager_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> (PtrConst.PtrConst River_input_manager_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_input_manager_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_9db0cab03522c066

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_f9238fec0361fff9" hs_bindgen_f9238fec0361fff9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_set_user_data@
hs_bindgen_f9238fec0361fff9 :: IO (RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_f9238fec0361fff9 =
  RIP.fromFFIType hs_bindgen_f9238fec0361fff9_base

{-# NOINLINE river_input_manager_v1_set_user_data #-}
{-|

  > iface_river_input_manager_v1

__C declaration:__ @river_input_manager_v1_set_user_data@

__defined at:__ @river-input-management-v1-client-protocol.h 173:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_manager_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_input_manager_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_f9238fec0361fff9

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_37f782198cc8d6c1" hs_bindgen_37f782198cc8d6c1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_get_user_data@
hs_bindgen_37f782198cc8d6c1 :: IO (RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_37f782198cc8d6c1 =
  RIP.fromFFIType hs_bindgen_37f782198cc8d6c1_base

{-# NOINLINE river_input_manager_v1_get_user_data #-}
{-|

  > iface_river_input_manager_v1

__C declaration:__ @river_input_manager_v1_get_user_data@

__defined at:__ @river-input-management-v1-client-protocol.h 180:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_manager_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> IO (RIP.Ptr RIP.Void))
river_input_manager_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_37f782198cc8d6c1

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_get_version@
foreign import ccall unsafe "hs_bindgen_47709fb1f89d5976" hs_bindgen_47709fb1f89d5976_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_get_version@
hs_bindgen_47709fb1f89d5976 :: IO (RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_47709fb1f89d5976 =
  RIP.fromFFIType hs_bindgen_47709fb1f89d5976_base

{-# NOINLINE river_input_manager_v1_get_version #-}
{-| __C declaration:__ @river_input_manager_v1_get_version@

    __defined at:__ @river-input-management-v1-client-protocol.h 186:1@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_manager_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_input_manager_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_47709fb1f89d5976

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_stop@
foreign import ccall unsafe "hs_bindgen_2e103e3b2f24de8a" hs_bindgen_2e103e3b2f24de8a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_stop@
hs_bindgen_2e103e3b2f24de8a :: IO (RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> IO ()))
hs_bindgen_2e103e3b2f24de8a =
  RIP.fromFFIType hs_bindgen_2e103e3b2f24de8a_base

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
  RIP.unsafePerformIO hs_bindgen_2e103e3b2f24de8a

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_destroy@
foreign import ccall unsafe "hs_bindgen_1d3a8f06a11d46b0" hs_bindgen_1d3a8f06a11d46b0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_destroy@
hs_bindgen_1d3a8f06a11d46b0 :: IO (RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> IO ()))
hs_bindgen_1d3a8f06a11d46b0 =
  RIP.fromFFIType hs_bindgen_1d3a8f06a11d46b0_base

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
  RIP.unsafePerformIO hs_bindgen_1d3a8f06a11d46b0

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_create_seat@
foreign import ccall unsafe "hs_bindgen_1d052d19809cc7d3" hs_bindgen_1d052d19809cc7d3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_create_seat@
hs_bindgen_1d052d19809cc7d3 :: IO (RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_1d052d19809cc7d3 =
  RIP.fromFFIType hs_bindgen_1d052d19809cc7d3_base

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
  RIP.unsafePerformIO hs_bindgen_1d052d19809cc7d3

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_destroy_seat@
foreign import ccall unsafe "hs_bindgen_ff36bc6e044f5e05" hs_bindgen_ff36bc6e044f5e05_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_destroy_seat@
hs_bindgen_ff36bc6e044f5e05 :: IO (RIP.FunPtr ((RIP.Ptr River_input_manager_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_ff36bc6e044f5e05 =
  RIP.fromFFIType hs_bindgen_ff36bc6e044f5e05_base

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
  RIP.unsafePerformIO hs_bindgen_ff36bc6e044f5e05

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_9720a99025cc009a" hs_bindgen_9720a99025cc009a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_add_listener@
hs_bindgen_9720a99025cc009a :: IO (RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> (PtrConst.PtrConst River_input_device_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_9720a99025cc009a =
  RIP.fromFFIType hs_bindgen_9720a99025cc009a_base

{-# NOINLINE river_input_device_v1_add_listener #-}
{-|

  > iface_river_input_device_v1

__C declaration:__ @river_input_device_v1_add_listener@

__defined at:__ @river-input-management-v1-client-protocol.h 329:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> (PtrConst.PtrConst River_input_device_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_input_device_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_9720a99025cc009a

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_4cfd1640c27b4787" hs_bindgen_4cfd1640c27b4787_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_set_user_data@
hs_bindgen_4cfd1640c27b4787 :: IO (RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_4cfd1640c27b4787 =
  RIP.fromFFIType hs_bindgen_4cfd1640c27b4787_base

{-# NOINLINE river_input_device_v1_set_user_data #-}
{-|

  > iface_river_input_device_v1

__C declaration:__ @river_input_device_v1_set_user_data@

__defined at:__ @river-input-management-v1-client-protocol.h 383:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_input_device_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_4cfd1640c27b4787

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_aa4d5af41ed60616" hs_bindgen_aa4d5af41ed60616_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_get_user_data@
hs_bindgen_aa4d5af41ed60616 :: IO (RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_aa4d5af41ed60616 =
  RIP.fromFFIType hs_bindgen_aa4d5af41ed60616_base

{-# NOINLINE river_input_device_v1_get_user_data #-}
{-|

  > iface_river_input_device_v1

__C declaration:__ @river_input_device_v1_get_user_data@

__defined at:__ @river-input-management-v1-client-protocol.h 390:1@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> IO (RIP.Ptr RIP.Void))
river_input_device_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_aa4d5af41ed60616

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_get_version@
foreign import ccall unsafe "hs_bindgen_337704174edf1429" hs_bindgen_337704174edf1429_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_get_version@
hs_bindgen_337704174edf1429 :: IO (RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_337704174edf1429 =
  RIP.fromFFIType hs_bindgen_337704174edf1429_base

{-# NOINLINE river_input_device_v1_get_version #-}
{-| __C declaration:__ @river_input_device_v1_get_version@

    __defined at:__ @river-input-management-v1-client-protocol.h 396:1@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_input_device_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_337704174edf1429

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_destroy@
foreign import ccall unsafe "hs_bindgen_6d5321e994e6ae91" hs_bindgen_6d5321e994e6ae91_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_destroy@
hs_bindgen_6d5321e994e6ae91 :: IO (RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> IO ()))
hs_bindgen_6d5321e994e6ae91 =
  RIP.fromFFIType hs_bindgen_6d5321e994e6ae91_base

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
  RIP.unsafePerformIO hs_bindgen_6d5321e994e6ae91

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_assign_to_seat@
foreign import ccall unsafe "hs_bindgen_75bb0157572daec9" hs_bindgen_75bb0157572daec9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_assign_to_seat@
hs_bindgen_75bb0157572daec9 :: IO (RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_75bb0157572daec9 =
  RIP.fromFFIType hs_bindgen_75bb0157572daec9_base

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
  RIP.unsafePerformIO hs_bindgen_75bb0157572daec9

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_set_repeat_info@
foreign import ccall unsafe "hs_bindgen_683ee3c7bbb5dd6b" hs_bindgen_683ee3c7bbb5dd6b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_set_repeat_info@
hs_bindgen_683ee3c7bbb5dd6b :: IO (RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_683ee3c7bbb5dd6b =
  RIP.fromFFIType hs_bindgen_683ee3c7bbb5dd6b_base

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
  RIP.unsafePerformIO hs_bindgen_683ee3c7bbb5dd6b

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_set_scroll_factor@
foreign import ccall unsafe "hs_bindgen_0f477da8fd7531c5" hs_bindgen_0f477da8fd7531c5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_set_scroll_factor@
hs_bindgen_0f477da8fd7531c5 :: IO (RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()))
hs_bindgen_0f477da8fd7531c5 =
  RIP.fromFFIType hs_bindgen_0f477da8fd7531c5_base

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
river_input_device_v1_set_scroll_factor :: RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
river_input_device_v1_set_scroll_factor =
  RIP.unsafePerformIO hs_bindgen_0f477da8fd7531c5

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_map_to_output@
foreign import ccall unsafe "hs_bindgen_d781bcb007e30c51" hs_bindgen_d781bcb007e30c51_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_map_to_output@
hs_bindgen_d781bcb007e30c51 :: IO (RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output) -> IO ()))
hs_bindgen_d781bcb007e30c51 =
  RIP.fromFFIType hs_bindgen_d781bcb007e30c51_base

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
river_input_device_v1_map_to_output :: RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output) -> IO ())
river_input_device_v1_map_to_output =
  RIP.unsafePerformIO hs_bindgen_d781bcb007e30c51

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_map_to_rectangle@
foreign import ccall unsafe "hs_bindgen_39408eed4b12eec8" hs_bindgen_39408eed4b12eec8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_map_to_rectangle@
hs_bindgen_39408eed4b12eec8 :: IO (RIP.FunPtr ((RIP.Ptr River_input_device_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_39408eed4b12eec8 =
  RIP.fromFFIType hs_bindgen_39408eed4b12eec8_base

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
  RIP.unsafePerformIO hs_bindgen_39408eed4b12eec8
