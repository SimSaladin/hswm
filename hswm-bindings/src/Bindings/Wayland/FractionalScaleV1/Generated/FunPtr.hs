{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.FractionalScaleV1.Generated.FunPtr
    ( Bindings.Wayland.FractionalScaleV1.Generated.FunPtr.wp_fractional_scale_manager_v1_set_user_data
    , Bindings.Wayland.FractionalScaleV1.Generated.FunPtr.wp_fractional_scale_manager_v1_get_user_data
    , Bindings.Wayland.FractionalScaleV1.Generated.FunPtr.wp_fractional_scale_manager_v1_get_version
    , Bindings.Wayland.FractionalScaleV1.Generated.FunPtr.wp_fractional_scale_manager_v1_destroy
    , Bindings.Wayland.FractionalScaleV1.Generated.FunPtr.wp_fractional_scale_manager_v1_get_fractional_scale
    , Bindings.Wayland.FractionalScaleV1.Generated.FunPtr.wp_fractional_scale_v1_add_listener
    , Bindings.Wayland.FractionalScaleV1.Generated.FunPtr.wp_fractional_scale_v1_set_user_data
    , Bindings.Wayland.FractionalScaleV1.Generated.FunPtr.wp_fractional_scale_v1_get_user_data
    , Bindings.Wayland.FractionalScaleV1.Generated.FunPtr.wp_fractional_scale_v1_get_version
    , Bindings.Wayland.FractionalScaleV1.Generated.FunPtr.wp_fractional_scale_v1_destroy
    )
  where

import qualified Bindings.Wayland.Client.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Wayland.FractionalScaleV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <fractional-scale-v1-client-protocol.h>"
  , "/* Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_manager_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_708635d7f23d225d (void)) ("
  , "  struct wp_fractional_scale_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wp_fractional_scale_manager_v1_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_manager_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_90d65062114d2bf4 (void)) ("
  , "  struct wp_fractional_scale_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &wp_fractional_scale_manager_v1_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_manager_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_7ea675cf432489d8 (void)) ("
  , "  struct wp_fractional_scale_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &wp_fractional_scale_manager_v1_get_version;"
  , "}"
  , "/* Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_manager_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e452d5391838c222 (void)) ("
  , "  struct wp_fractional_scale_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &wp_fractional_scale_manager_v1_destroy;"
  , "}"
  , "/* Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_manager_v1_get_fractional_scale */"
  , "__attribute__ ((const))"
  , "struct wp_fractional_scale_v1 *(*hs_bindgen_6a10994da7449e4e (void)) ("
  , "  struct wp_fractional_scale_manager_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &wp_fractional_scale_manager_v1_get_fractional_scale;"
  , "}"
  , "/* Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e8977bafc6095085 (void)) ("
  , "  struct wp_fractional_scale_v1 *arg1,"
  , "  struct wp_fractional_scale_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &wp_fractional_scale_v1_add_listener;"
  , "}"
  , "/* Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b3613da087ef9909 (void)) ("
  , "  struct wp_fractional_scale_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wp_fractional_scale_v1_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_ecab35612d1f4d0c (void)) ("
  , "  struct wp_fractional_scale_v1 *arg1"
  , ")"
  , "{"
  , "  return &wp_fractional_scale_v1_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_2fdca222c5da04aa (void)) ("
  , "  struct wp_fractional_scale_v1 *arg1"
  , ")"
  , "{"
  , "  return &wp_fractional_scale_v1_get_version;"
  , "}"
  , "/* Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3075352a360734ee (void)) ("
  , "  struct wp_fractional_scale_v1 *arg1"
  , ")"
  , "{"
  , "  return &wp_fractional_scale_v1_destroy;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_manager_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_708635d7f23d225d" hs_bindgen_708635d7f23d225d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_manager_v1_set_user_data@
hs_bindgen_708635d7f23d225d :: IO (RIP.FunPtr ((RIP.Ptr Wp_fractional_scale_manager_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_708635d7f23d225d =
  RIP.fromFFIType hs_bindgen_708635d7f23d225d_base

{-# NOINLINE wp_fractional_scale_manager_v1_set_user_data #-}
{-|

  > iface_wp_fractional_scale_manager_v1

__C declaration:__ @wp_fractional_scale_manager_v1_set_user_data@

__defined at:__ @fractional-scale-v1-client-protocol.h 133:1@

__exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_manager_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Wp_fractional_scale_manager_v1) -> (RIP.Ptr RIP.Void) -> IO ())
wp_fractional_scale_manager_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_708635d7f23d225d

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_manager_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_90d65062114d2bf4" hs_bindgen_90d65062114d2bf4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_manager_v1_get_user_data@
hs_bindgen_90d65062114d2bf4 :: IO (RIP.FunPtr ((RIP.Ptr Wp_fractional_scale_manager_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_90d65062114d2bf4 =
  RIP.fromFFIType hs_bindgen_90d65062114d2bf4_base

{-# NOINLINE wp_fractional_scale_manager_v1_get_user_data #-}
{-|

  > iface_wp_fractional_scale_manager_v1

__C declaration:__ @wp_fractional_scale_manager_v1_get_user_data@

__defined at:__ @fractional-scale-v1-client-protocol.h 140:1@

__exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_manager_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Wp_fractional_scale_manager_v1) -> IO (RIP.Ptr RIP.Void))
wp_fractional_scale_manager_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_90d65062114d2bf4

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_manager_v1_get_version@
foreign import ccall unsafe "hs_bindgen_7ea675cf432489d8" hs_bindgen_7ea675cf432489d8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_manager_v1_get_version@
hs_bindgen_7ea675cf432489d8 :: IO (RIP.FunPtr ((RIP.Ptr Wp_fractional_scale_manager_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_7ea675cf432489d8 =
  RIP.fromFFIType hs_bindgen_7ea675cf432489d8_base

{-# NOINLINE wp_fractional_scale_manager_v1_get_version #-}
{-| __C declaration:__ @wp_fractional_scale_manager_v1_get_version@

    __defined at:__ @fractional-scale-v1-client-protocol.h 146:1@

    __exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_manager_v1_get_version :: RIP.FunPtr ((RIP.Ptr Wp_fractional_scale_manager_v1) -> IO HsBindgen.Runtime.LibC.Word32)
wp_fractional_scale_manager_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_7ea675cf432489d8

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_manager_v1_destroy@
foreign import ccall unsafe "hs_bindgen_e452d5391838c222" hs_bindgen_e452d5391838c222_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_manager_v1_destroy@
hs_bindgen_e452d5391838c222 :: IO (RIP.FunPtr ((RIP.Ptr Wp_fractional_scale_manager_v1) -> IO ()))
hs_bindgen_e452d5391838c222 =
  RIP.fromFFIType hs_bindgen_e452d5391838c222_base

{-# NOINLINE wp_fractional_scale_manager_v1_destroy #-}
{-|

  > iface_wp_fractional_scale_manager_v1

  Informs the server that the client will not be using this protocol object anymore. This does not affect any other objects, wp_fractional_scale_v1 objects included.

__C declaration:__ @wp_fractional_scale_manager_v1_destroy@

__defined at:__ @fractional-scale-v1-client-protocol.h 159:1@

__exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_manager_v1_destroy :: RIP.FunPtr ((RIP.Ptr Wp_fractional_scale_manager_v1) -> IO ())
wp_fractional_scale_manager_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_e452d5391838c222

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_manager_v1_get_fractional_scale@
foreign import ccall unsafe "hs_bindgen_6a10994da7449e4e" hs_bindgen_6a10994da7449e4e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_manager_v1_get_fractional_scale@
hs_bindgen_6a10994da7449e4e :: IO (RIP.FunPtr ((RIP.Ptr Wp_fractional_scale_manager_v1) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface) -> IO (RIP.Ptr Wp_fractional_scale_v1)))
hs_bindgen_6a10994da7449e4e =
  RIP.fromFFIType hs_bindgen_6a10994da7449e4e_base

{-# NOINLINE wp_fractional_scale_manager_v1_get_fractional_scale #-}
{-|

  > iface_wp_fractional_scale_manager_v1

  Create an add-on object for the the wl_surface to let the compositor request fractional scales. If the given wl_surface already has a wp_fractional_scale_v1 object associated, the fractional_scale_exists protocol error is raised.

__C declaration:__ @wp_fractional_scale_manager_v1_get_fractional_scale@

__defined at:__ @fractional-scale-v1-client-protocol.h 174:1@

__exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_manager_v1_get_fractional_scale :: RIP.FunPtr ((RIP.Ptr Wp_fractional_scale_manager_v1) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface) -> IO (RIP.Ptr Wp_fractional_scale_v1))
wp_fractional_scale_manager_v1_get_fractional_scale =
  RIP.unsafePerformIO hs_bindgen_6a10994da7449e4e

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_e8977bafc6095085" hs_bindgen_e8977bafc6095085_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_v1_add_listener@
hs_bindgen_e8977bafc6095085 :: IO (RIP.FunPtr ((RIP.Ptr Wp_fractional_scale_v1) -> (PtrConst.PtrConst Wp_fractional_scale_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_e8977bafc6095085 =
  RIP.fromFFIType hs_bindgen_e8977bafc6095085_base

{-# NOINLINE wp_fractional_scale_v1_add_listener #-}
{-|

  > iface_wp_fractional_scale_v1

__C declaration:__ @wp_fractional_scale_v1_add_listener@

__defined at:__ @fractional-scale-v1-client-protocol.h 208:1@

__exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_v1_add_listener :: RIP.FunPtr ((RIP.Ptr Wp_fractional_scale_v1) -> (PtrConst.PtrConst Wp_fractional_scale_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
wp_fractional_scale_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_e8977bafc6095085

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_b3613da087ef9909" hs_bindgen_b3613da087ef9909_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_v1_set_user_data@
hs_bindgen_b3613da087ef9909 :: IO (RIP.FunPtr ((RIP.Ptr Wp_fractional_scale_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_b3613da087ef9909 =
  RIP.fromFFIType hs_bindgen_b3613da087ef9909_base

{-# NOINLINE wp_fractional_scale_v1_set_user_data #-}
{-|

  > iface_wp_fractional_scale_v1

__C declaration:__ @wp_fractional_scale_v1_set_user_data@

__defined at:__ @fractional-scale-v1-client-protocol.h 229:1@

__exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Wp_fractional_scale_v1) -> (RIP.Ptr RIP.Void) -> IO ())
wp_fractional_scale_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_b3613da087ef9909

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_ecab35612d1f4d0c" hs_bindgen_ecab35612d1f4d0c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_v1_get_user_data@
hs_bindgen_ecab35612d1f4d0c :: IO (RIP.FunPtr ((RIP.Ptr Wp_fractional_scale_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_ecab35612d1f4d0c =
  RIP.fromFFIType hs_bindgen_ecab35612d1f4d0c_base

{-# NOINLINE wp_fractional_scale_v1_get_user_data #-}
{-|

  > iface_wp_fractional_scale_v1

__C declaration:__ @wp_fractional_scale_v1_get_user_data@

__defined at:__ @fractional-scale-v1-client-protocol.h 236:1@

__exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Wp_fractional_scale_v1) -> IO (RIP.Ptr RIP.Void))
wp_fractional_scale_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_ecab35612d1f4d0c

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_v1_get_version@
foreign import ccall unsafe "hs_bindgen_2fdca222c5da04aa" hs_bindgen_2fdca222c5da04aa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_v1_get_version@
hs_bindgen_2fdca222c5da04aa :: IO (RIP.FunPtr ((RIP.Ptr Wp_fractional_scale_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_2fdca222c5da04aa =
  RIP.fromFFIType hs_bindgen_2fdca222c5da04aa_base

{-# NOINLINE wp_fractional_scale_v1_get_version #-}
{-| __C declaration:__ @wp_fractional_scale_v1_get_version@

    __defined at:__ @fractional-scale-v1-client-protocol.h 242:1@

    __exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_v1_get_version :: RIP.FunPtr ((RIP.Ptr Wp_fractional_scale_v1) -> IO HsBindgen.Runtime.LibC.Word32)
wp_fractional_scale_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_2fdca222c5da04aa

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_v1_destroy@
foreign import ccall unsafe "hs_bindgen_3075352a360734ee" hs_bindgen_3075352a360734ee_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_v1_destroy@
hs_bindgen_3075352a360734ee :: IO (RIP.FunPtr ((RIP.Ptr Wp_fractional_scale_v1) -> IO ()))
hs_bindgen_3075352a360734ee =
  RIP.fromFFIType hs_bindgen_3075352a360734ee_base

{-# NOINLINE wp_fractional_scale_v1_destroy #-}
{-|

  > iface_wp_fractional_scale_v1

  Destroy the fractional scale object. When this object is destroyed, preferred_scale events will no longer be sent.

__C declaration:__ @wp_fractional_scale_v1_destroy@

__defined at:__ @fractional-scale-v1-client-protocol.h 254:1@

__exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_v1_destroy :: RIP.FunPtr ((RIP.Ptr Wp_fractional_scale_v1) -> IO ())
wp_fractional_scale_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_3075352a360734ee
