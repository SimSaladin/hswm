{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Unsafe
    ( Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Unsafe.zwlr_output_power_manager_v1_set_user_data
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Unsafe.zwlr_output_power_manager_v1_get_user_data
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Unsafe.zwlr_output_power_manager_v1_get_version
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Unsafe.zwlr_output_power_manager_v1_get_output_power
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Unsafe.zwlr_output_power_manager_v1_destroy
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Unsafe.zwlr_output_power_v1_add_listener
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Unsafe.zwlr_output_power_v1_set_user_data
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Unsafe.zwlr_output_power_v1_get_user_data
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Unsafe.zwlr_output_power_v1_get_version
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Unsafe.zwlr_output_power_v1_set_mode
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Unsafe.zwlr_output_power_v1_destroy
    )
  where

import qualified Bindings.Wayland.Client.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <wlr-output-power-management-unstable-v1-client-protocol.h>"
  , "void hs_bindgen_0583543d812119bb ("
  , "  struct zwlr_output_power_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwlr_output_power_manager_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_99a1cf31e49565e3 ("
  , "  struct zwlr_output_power_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_power_manager_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_514434ff89d9c75f ("
  , "  struct zwlr_output_power_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_power_manager_v1_get_version)(arg1);"
  , "}"
  , "struct zwlr_output_power_v1 *hs_bindgen_c4151f19ec458130 ("
  , "  struct zwlr_output_power_manager_v1 *arg1,"
  , "  struct wl_output *arg2"
  , ")"
  , "{"
  , "  return (zwlr_output_power_manager_v1_get_output_power)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_2451478f9b279341 ("
  , "  struct zwlr_output_power_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_power_manager_v1_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_26d3a32f360563b6 ("
  , "  struct zwlr_output_power_v1 *arg1,"
  , "  struct zwlr_output_power_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwlr_output_power_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_38367243468cc0bf ("
  , "  struct zwlr_output_power_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwlr_output_power_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_2aa716266a7bfc34 ("
  , "  struct zwlr_output_power_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_power_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_59dfd11e19e02120 ("
  , "  struct zwlr_output_power_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_power_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_ebd26d57c53fbf42 ("
  , "  struct zwlr_output_power_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (zwlr_output_power_v1_set_mode)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_2bd1aefc5715e87d ("
  , "  struct zwlr_output_power_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_power_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_manager_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_0583543d812119bb" hs_bindgen_0583543d812119bb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_manager_v1_set_user_data@
hs_bindgen_0583543d812119bb ::
     RIP.Ptr Zwlr_output_power_manager_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_0583543d812119bb =
  RIP.fromFFIType hs_bindgen_0583543d812119bb_base

{-|

  > iface_zwlr_output_power_manager_v1

__C declaration:__ @zwlr_output_power_manager_v1_set_user_data@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 123:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_manager_v1_set_user_data ::
     RIP.Ptr Zwlr_output_power_manager_v1
     -- ^ __C declaration:__ @zwlr_output_power_manager_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
zwlr_output_power_manager_v1_set_user_data =
  hs_bindgen_0583543d812119bb

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_manager_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_99a1cf31e49565e3" hs_bindgen_99a1cf31e49565e3_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_manager_v1_get_user_data@
hs_bindgen_99a1cf31e49565e3 ::
     RIP.Ptr Zwlr_output_power_manager_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_99a1cf31e49565e3 =
  RIP.fromFFIType hs_bindgen_99a1cf31e49565e3_base

{-|

  > iface_zwlr_output_power_manager_v1

__C declaration:__ @zwlr_output_power_manager_v1_get_user_data@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 130:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_manager_v1_get_user_data ::
     RIP.Ptr Zwlr_output_power_manager_v1
     -- ^ __C declaration:__ @zwlr_output_power_manager_v1@
  -> IO (RIP.Ptr RIP.Void)
zwlr_output_power_manager_v1_get_user_data =
  hs_bindgen_99a1cf31e49565e3

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_manager_v1_get_version@
foreign import ccall unsafe "hs_bindgen_514434ff89d9c75f" hs_bindgen_514434ff89d9c75f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_manager_v1_get_version@
hs_bindgen_514434ff89d9c75f ::
     RIP.Ptr Zwlr_output_power_manager_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_514434ff89d9c75f =
  RIP.fromFFIType hs_bindgen_514434ff89d9c75f_base

{-| __C declaration:__ @zwlr_output_power_manager_v1_get_version@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 136:1@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_manager_v1_get_version ::
     RIP.Ptr Zwlr_output_power_manager_v1
     -- ^ __C declaration:__ @zwlr_output_power_manager_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zwlr_output_power_manager_v1_get_version =
  hs_bindgen_514434ff89d9c75f

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_manager_v1_get_output_power@
foreign import ccall unsafe "hs_bindgen_c4151f19ec458130" hs_bindgen_c4151f19ec458130_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_manager_v1_get_output_power@
hs_bindgen_c4151f19ec458130 ::
     RIP.Ptr Zwlr_output_power_manager_v1
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output
  -> IO (RIP.Ptr Zwlr_output_power_v1)
hs_bindgen_c4151f19ec458130 =
  RIP.fromFFIType hs_bindgen_c4151f19ec458130_base

{-|

  > iface_zwlr_output_power_manager_v1

  Create an output power management mode control that can be used to adjust the power management mode for a given output.

__C declaration:__ @zwlr_output_power_manager_v1_get_output_power@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 148:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_manager_v1_get_output_power ::
     RIP.Ptr Zwlr_output_power_manager_v1
     -- ^ __C declaration:__ @zwlr_output_power_manager_v1@
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output
     -- ^ __C declaration:__ @output@
  -> IO (RIP.Ptr Zwlr_output_power_v1)
zwlr_output_power_manager_v1_get_output_power =
  hs_bindgen_c4151f19ec458130

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_manager_v1_destroy@
foreign import ccall unsafe "hs_bindgen_2451478f9b279341" hs_bindgen_2451478f9b279341_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_manager_v1_destroy@
hs_bindgen_2451478f9b279341 ::
     RIP.Ptr Zwlr_output_power_manager_v1
  -> IO ()
hs_bindgen_2451478f9b279341 =
  RIP.fromFFIType hs_bindgen_2451478f9b279341_base

{-|

  > iface_zwlr_output_power_manager_v1

  All objects created by the manager will still remain valid, until their appropriate destroy request has been called.

__C declaration:__ @zwlr_output_power_manager_v1_destroy@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 165:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_manager_v1_destroy ::
     RIP.Ptr Zwlr_output_power_manager_v1
     -- ^ __C declaration:__ @zwlr_output_power_manager_v1@
  -> IO ()
zwlr_output_power_manager_v1_destroy =
  hs_bindgen_2451478f9b279341

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_26d3a32f360563b6" hs_bindgen_26d3a32f360563b6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_v1_add_listener@
hs_bindgen_26d3a32f360563b6 ::
     RIP.Ptr Zwlr_output_power_v1
  -> PtrConst.PtrConst Zwlr_output_power_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_26d3a32f360563b6 =
  RIP.fromFFIType hs_bindgen_26d3a32f360563b6_base

{-|

  > iface_zwlr_output_power_v1

__C declaration:__ @zwlr_output_power_v1_add_listener@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 235:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_v1_add_listener ::
     RIP.Ptr Zwlr_output_power_v1
     -- ^ __C declaration:__ @zwlr_output_power_v1@
  -> PtrConst.PtrConst Zwlr_output_power_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
zwlr_output_power_v1_add_listener =
  hs_bindgen_26d3a32f360563b6

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_38367243468cc0bf" hs_bindgen_38367243468cc0bf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_v1_set_user_data@
hs_bindgen_38367243468cc0bf ::
     RIP.Ptr Zwlr_output_power_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_38367243468cc0bf =
  RIP.fromFFIType hs_bindgen_38367243468cc0bf_base

{-|

  > iface_zwlr_output_power_v1

__C declaration:__ @zwlr_output_power_v1_set_user_data@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 265:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_v1_set_user_data ::
     RIP.Ptr Zwlr_output_power_v1
     -- ^ __C declaration:__ @zwlr_output_power_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
zwlr_output_power_v1_set_user_data =
  hs_bindgen_38367243468cc0bf

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_2aa716266a7bfc34" hs_bindgen_2aa716266a7bfc34_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_v1_get_user_data@
hs_bindgen_2aa716266a7bfc34 ::
     RIP.Ptr Zwlr_output_power_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_2aa716266a7bfc34 =
  RIP.fromFFIType hs_bindgen_2aa716266a7bfc34_base

{-|

  > iface_zwlr_output_power_v1

__C declaration:__ @zwlr_output_power_v1_get_user_data@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 272:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_v1_get_user_data ::
     RIP.Ptr Zwlr_output_power_v1
     -- ^ __C declaration:__ @zwlr_output_power_v1@
  -> IO (RIP.Ptr RIP.Void)
zwlr_output_power_v1_get_user_data =
  hs_bindgen_2aa716266a7bfc34

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_v1_get_version@
foreign import ccall unsafe "hs_bindgen_59dfd11e19e02120" hs_bindgen_59dfd11e19e02120_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_v1_get_version@
hs_bindgen_59dfd11e19e02120 ::
     RIP.Ptr Zwlr_output_power_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_59dfd11e19e02120 =
  RIP.fromFFIType hs_bindgen_59dfd11e19e02120_base

{-| __C declaration:__ @zwlr_output_power_v1_get_version@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 278:1@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_v1_get_version ::
     RIP.Ptr Zwlr_output_power_v1
     -- ^ __C declaration:__ @zwlr_output_power_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zwlr_output_power_v1_get_version =
  hs_bindgen_59dfd11e19e02120

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_v1_set_mode@
foreign import ccall unsafe "hs_bindgen_ebd26d57c53fbf42" hs_bindgen_ebd26d57c53fbf42_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_v1_set_mode@
hs_bindgen_ebd26d57c53fbf42 ::
     RIP.Ptr Zwlr_output_power_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_ebd26d57c53fbf42 =
  RIP.fromFFIType hs_bindgen_ebd26d57c53fbf42_base

{-|

  > iface_zwlr_output_power_v1

  Set an output's power save mode to the given mode. The mode change is effective immediately. If the output does not support the given mode a failed event is sent.

__C declaration:__ @zwlr_output_power_v1_set_mode@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 291:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_v1_set_mode ::
     RIP.Ptr Zwlr_output_power_v1
     -- ^ __C declaration:__ @zwlr_output_power_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @mode@
  -> IO ()
zwlr_output_power_v1_set_mode =
  hs_bindgen_ebd26d57c53fbf42

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_v1_destroy@
foreign import ccall unsafe "hs_bindgen_2bd1aefc5715e87d" hs_bindgen_2bd1aefc5715e87d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Unsafe_zwlr_output_power_v1_destroy@
hs_bindgen_2bd1aefc5715e87d ::
     RIP.Ptr Zwlr_output_power_v1
  -> IO ()
hs_bindgen_2bd1aefc5715e87d =
  RIP.fromFFIType hs_bindgen_2bd1aefc5715e87d_base

{-|

  > iface_zwlr_output_power_v1

  Destroys the output power management mode control object.

__C declaration:__ @zwlr_output_power_v1_destroy@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 303:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_v1_destroy ::
     RIP.Ptr Zwlr_output_power_v1
     -- ^ __C declaration:__ @zwlr_output_power_v1@
  -> IO ()
zwlr_output_power_v1_destroy =
  hs_bindgen_2bd1aefc5715e87d
