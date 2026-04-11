{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.InputManagementV1.Generated.Safe
    ( Bindings.River.InputManagementV1.Generated.Safe.river_input_manager_v1_add_listener
    , Bindings.River.InputManagementV1.Generated.Safe.river_input_manager_v1_set_user_data
    , Bindings.River.InputManagementV1.Generated.Safe.river_input_manager_v1_get_user_data
    , Bindings.River.InputManagementV1.Generated.Safe.river_input_manager_v1_get_version
    , Bindings.River.InputManagementV1.Generated.Safe.river_input_manager_v1_stop
    , Bindings.River.InputManagementV1.Generated.Safe.river_input_manager_v1_destroy
    , Bindings.River.InputManagementV1.Generated.Safe.river_input_manager_v1_create_seat
    , Bindings.River.InputManagementV1.Generated.Safe.river_input_manager_v1_destroy_seat
    , Bindings.River.InputManagementV1.Generated.Safe.river_input_device_v1_add_listener
    , Bindings.River.InputManagementV1.Generated.Safe.river_input_device_v1_set_user_data
    , Bindings.River.InputManagementV1.Generated.Safe.river_input_device_v1_get_user_data
    , Bindings.River.InputManagementV1.Generated.Safe.river_input_device_v1_get_version
    , Bindings.River.InputManagementV1.Generated.Safe.river_input_device_v1_destroy
    , Bindings.River.InputManagementV1.Generated.Safe.river_input_device_v1_assign_to_seat
    , Bindings.River.InputManagementV1.Generated.Safe.river_input_device_v1_set_repeat_info
    , Bindings.River.InputManagementV1.Generated.Safe.river_input_device_v1_set_scroll_factor
    , Bindings.River.InputManagementV1.Generated.Safe.river_input_device_v1_map_to_output
    , Bindings.River.InputManagementV1.Generated.Safe.river_input_device_v1_map_to_rectangle
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
  , "signed int hs_bindgen_a4c5c9aba0764921 ("
  , "  struct river_input_manager_v1 *arg1,"
  , "  struct river_input_manager_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_input_manager_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_7cd8ffd6b7eac148 ("
  , "  struct river_input_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_input_manager_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_9b07e9cf4661cc4f ("
  , "  struct river_input_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_input_manager_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_a949d1a6dc1e7e81 ("
  , "  struct river_input_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_input_manager_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_19ac09ac6de14d5f ("
  , "  struct river_input_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_input_manager_v1_stop)(arg1);"
  , "}"
  , "void hs_bindgen_fe2e5590ef782285 ("
  , "  struct river_input_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_input_manager_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_6769cabf8ddebee6 ("
  , "  struct river_input_manager_v1 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (river_input_manager_v1_create_seat)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_bbb07193c3c99ef1 ("
  , "  struct river_input_manager_v1 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (river_input_manager_v1_destroy_seat)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_65eb97f92355122b ("
  , "  struct river_input_device_v1 *arg1,"
  , "  struct river_input_device_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_input_device_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_955d49f02dcdeaae ("
  , "  struct river_input_device_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_input_device_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_2fb3ea40a5cf20f8 ("
  , "  struct river_input_device_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_input_device_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_85ad0b246e7ebdef ("
  , "  struct river_input_device_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_input_device_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_26cf6f0dc17da880 ("
  , "  struct river_input_device_v1 *arg1"
  , ")"
  , "{"
  , "  (river_input_device_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_a149852969b995d2 ("
  , "  struct river_input_device_v1 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (river_input_device_v1_assign_to_seat)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_85f7e872bdfdecd8 ("
  , "  struct river_input_device_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_input_device_v1_set_repeat_info)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_dc8a250db6d9dcfd ("
  , "  struct river_input_device_v1 *arg1,"
  , "  wl_fixed_t arg2"
  , ")"
  , "{"
  , "  (river_input_device_v1_set_scroll_factor)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_5595851d24f57546 ("
  , "  struct river_input_device_v1 *arg1,"
  , "  struct wl_output *arg2"
  , ")"
  , "{"
  , "  (river_input_device_v1_map_to_output)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_b82643800598ec1a ("
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

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_manager_v1_add_listener@
foreign import ccall safe "hs_bindgen_a4c5c9aba0764921" hs_bindgen_a4c5c9aba0764921_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_manager_v1_add_listener@
hs_bindgen_a4c5c9aba0764921 ::
     RIP.Ptr River_input_manager_v1
  -> PtrConst.PtrConst River_input_manager_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_a4c5c9aba0764921 =
  RIP.fromFFIType hs_bindgen_a4c5c9aba0764921_base

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
  hs_bindgen_a4c5c9aba0764921

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_manager_v1_set_user_data@
foreign import ccall safe "hs_bindgen_7cd8ffd6b7eac148" hs_bindgen_7cd8ffd6b7eac148_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_manager_v1_set_user_data@
hs_bindgen_7cd8ffd6b7eac148 ::
     RIP.Ptr River_input_manager_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_7cd8ffd6b7eac148 =
  RIP.fromFFIType hs_bindgen_7cd8ffd6b7eac148_base

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
  hs_bindgen_7cd8ffd6b7eac148

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_manager_v1_get_user_data@
foreign import ccall safe "hs_bindgen_9b07e9cf4661cc4f" hs_bindgen_9b07e9cf4661cc4f_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_manager_v1_get_user_data@
hs_bindgen_9b07e9cf4661cc4f ::
     RIP.Ptr River_input_manager_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_9b07e9cf4661cc4f =
  RIP.fromFFIType hs_bindgen_9b07e9cf4661cc4f_base

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
  hs_bindgen_9b07e9cf4661cc4f

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_manager_v1_get_version@
foreign import ccall safe "hs_bindgen_a949d1a6dc1e7e81" hs_bindgen_a949d1a6dc1e7e81_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_manager_v1_get_version@
hs_bindgen_a949d1a6dc1e7e81 ::
     RIP.Ptr River_input_manager_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_a949d1a6dc1e7e81 =
  RIP.fromFFIType hs_bindgen_a949d1a6dc1e7e81_base

{-| __C declaration:__ @river_input_manager_v1_get_version@

    __defined at:__ @river-input-management-v1-client-protocol.h 186:1@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_manager_v1_get_version ::
     RIP.Ptr River_input_manager_v1
     -- ^ __C declaration:__ @river_input_manager_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_input_manager_v1_get_version =
  hs_bindgen_a949d1a6dc1e7e81

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_manager_v1_stop@
foreign import ccall safe "hs_bindgen_19ac09ac6de14d5f" hs_bindgen_19ac09ac6de14d5f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_manager_v1_stop@
hs_bindgen_19ac09ac6de14d5f ::
     RIP.Ptr River_input_manager_v1
  -> IO ()
hs_bindgen_19ac09ac6de14d5f =
  RIP.fromFFIType hs_bindgen_19ac09ac6de14d5f_base

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
  hs_bindgen_19ac09ac6de14d5f

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_manager_v1_destroy@
foreign import ccall safe "hs_bindgen_fe2e5590ef782285" hs_bindgen_fe2e5590ef782285_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_manager_v1_destroy@
hs_bindgen_fe2e5590ef782285 ::
     RIP.Ptr River_input_manager_v1
  -> IO ()
hs_bindgen_fe2e5590ef782285 =
  RIP.fromFFIType hs_bindgen_fe2e5590ef782285_base

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
  hs_bindgen_fe2e5590ef782285

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_manager_v1_create_seat@
foreign import ccall safe "hs_bindgen_6769cabf8ddebee6" hs_bindgen_6769cabf8ddebee6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_manager_v1_create_seat@
hs_bindgen_6769cabf8ddebee6 ::
     RIP.Ptr River_input_manager_v1
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_6769cabf8ddebee6 =
  RIP.fromFFIType hs_bindgen_6769cabf8ddebee6_base

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
  hs_bindgen_6769cabf8ddebee6

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_manager_v1_destroy_seat@
foreign import ccall safe "hs_bindgen_bbb07193c3c99ef1" hs_bindgen_bbb07193c3c99ef1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_manager_v1_destroy_seat@
hs_bindgen_bbb07193c3c99ef1 ::
     RIP.Ptr River_input_manager_v1
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_bbb07193c3c99ef1 =
  RIP.fromFFIType hs_bindgen_bbb07193c3c99ef1_base

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
  hs_bindgen_bbb07193c3c99ef1

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_device_v1_add_listener@
foreign import ccall safe "hs_bindgen_65eb97f92355122b" hs_bindgen_65eb97f92355122b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_device_v1_add_listener@
hs_bindgen_65eb97f92355122b ::
     RIP.Ptr River_input_device_v1
  -> PtrConst.PtrConst River_input_device_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_65eb97f92355122b =
  RIP.fromFFIType hs_bindgen_65eb97f92355122b_base

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
  hs_bindgen_65eb97f92355122b

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_device_v1_set_user_data@
foreign import ccall safe "hs_bindgen_955d49f02dcdeaae" hs_bindgen_955d49f02dcdeaae_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_device_v1_set_user_data@
hs_bindgen_955d49f02dcdeaae ::
     RIP.Ptr River_input_device_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_955d49f02dcdeaae =
  RIP.fromFFIType hs_bindgen_955d49f02dcdeaae_base

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
  hs_bindgen_955d49f02dcdeaae

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_device_v1_get_user_data@
foreign import ccall safe "hs_bindgen_2fb3ea40a5cf20f8" hs_bindgen_2fb3ea40a5cf20f8_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_device_v1_get_user_data@
hs_bindgen_2fb3ea40a5cf20f8 ::
     RIP.Ptr River_input_device_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_2fb3ea40a5cf20f8 =
  RIP.fromFFIType hs_bindgen_2fb3ea40a5cf20f8_base

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
  hs_bindgen_2fb3ea40a5cf20f8

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_device_v1_get_version@
foreign import ccall safe "hs_bindgen_85ad0b246e7ebdef" hs_bindgen_85ad0b246e7ebdef_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_device_v1_get_version@
hs_bindgen_85ad0b246e7ebdef ::
     RIP.Ptr River_input_device_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_85ad0b246e7ebdef =
  RIP.fromFFIType hs_bindgen_85ad0b246e7ebdef_base

{-| __C declaration:__ @river_input_device_v1_get_version@

    __defined at:__ @river-input-management-v1-client-protocol.h 396:1@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
river_input_device_v1_get_version ::
     RIP.Ptr River_input_device_v1
     -- ^ __C declaration:__ @river_input_device_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_input_device_v1_get_version =
  hs_bindgen_85ad0b246e7ebdef

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_device_v1_destroy@
foreign import ccall safe "hs_bindgen_26cf6f0dc17da880" hs_bindgen_26cf6f0dc17da880_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_device_v1_destroy@
hs_bindgen_26cf6f0dc17da880 ::
     RIP.Ptr River_input_device_v1
  -> IO ()
hs_bindgen_26cf6f0dc17da880 =
  RIP.fromFFIType hs_bindgen_26cf6f0dc17da880_base

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
  hs_bindgen_26cf6f0dc17da880

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_device_v1_assign_to_seat@
foreign import ccall safe "hs_bindgen_a149852969b995d2" hs_bindgen_a149852969b995d2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_device_v1_assign_to_seat@
hs_bindgen_a149852969b995d2 ::
     RIP.Ptr River_input_device_v1
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_a149852969b995d2 =
  RIP.fromFFIType hs_bindgen_a149852969b995d2_base

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
  hs_bindgen_a149852969b995d2

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_device_v1_set_repeat_info@
foreign import ccall safe "hs_bindgen_85f7e872bdfdecd8" hs_bindgen_85f7e872bdfdecd8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_device_v1_set_repeat_info@
hs_bindgen_85f7e872bdfdecd8 ::
     RIP.Ptr River_input_device_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_85f7e872bdfdecd8 =
  RIP.fromFFIType hs_bindgen_85f7e872bdfdecd8_base

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
  hs_bindgen_85f7e872bdfdecd8

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_device_v1_set_scroll_factor@
foreign import ccall safe "hs_bindgen_dc8a250db6d9dcfd" hs_bindgen_dc8a250db6d9dcfd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_device_v1_set_scroll_factor@
hs_bindgen_dc8a250db6d9dcfd ::
     RIP.Ptr River_input_device_v1
  -> Bindings.Wayland.Util.Generated.Wl_fixed_t
  -> IO ()
hs_bindgen_dc8a250db6d9dcfd =
  RIP.fromFFIType hs_bindgen_dc8a250db6d9dcfd_base

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
  -> Bindings.Wayland.Util.Generated.Wl_fixed_t
     -- ^ __C declaration:__ @factor@
  -> IO ()
river_input_device_v1_set_scroll_factor =
  hs_bindgen_dc8a250db6d9dcfd

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_device_v1_map_to_output@
foreign import ccall safe "hs_bindgen_5595851d24f57546" hs_bindgen_5595851d24f57546_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_device_v1_map_to_output@
hs_bindgen_5595851d24f57546 ::
     RIP.Ptr River_input_device_v1
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output
  -> IO ()
hs_bindgen_5595851d24f57546 =
  RIP.fromFFIType hs_bindgen_5595851d24f57546_base

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
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output
     -- ^ __C declaration:__ @output@
  -> IO ()
river_input_device_v1_map_to_output =
  hs_bindgen_5595851d24f57546

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_device_v1_map_to_rectangle@
foreign import ccall safe "hs_bindgen_b82643800598ec1a" hs_bindgen_b82643800598ec1a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_Safe_river_input_device_v1_map_to_rectangle@
hs_bindgen_b82643800598ec1a ::
     RIP.Ptr River_input_device_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_b82643800598ec1a =
  RIP.fromFFIType hs_bindgen_b82643800598ec1a_base

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
  hs_bindgen_b82643800598ec1a
