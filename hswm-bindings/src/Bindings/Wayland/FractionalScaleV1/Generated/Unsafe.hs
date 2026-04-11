{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.FractionalScaleV1.Generated.Unsafe
    ( Bindings.Wayland.FractionalScaleV1.Generated.Unsafe.wp_fractional_scale_manager_v1_set_user_data
    , Bindings.Wayland.FractionalScaleV1.Generated.Unsafe.wp_fractional_scale_manager_v1_get_user_data
    , Bindings.Wayland.FractionalScaleV1.Generated.Unsafe.wp_fractional_scale_manager_v1_get_version
    , Bindings.Wayland.FractionalScaleV1.Generated.Unsafe.wp_fractional_scale_manager_v1_destroy
    , Bindings.Wayland.FractionalScaleV1.Generated.Unsafe.wp_fractional_scale_manager_v1_get_fractional_scale
    , Bindings.Wayland.FractionalScaleV1.Generated.Unsafe.wp_fractional_scale_v1_add_listener
    , Bindings.Wayland.FractionalScaleV1.Generated.Unsafe.wp_fractional_scale_v1_set_user_data
    , Bindings.Wayland.FractionalScaleV1.Generated.Unsafe.wp_fractional_scale_v1_get_user_data
    , Bindings.Wayland.FractionalScaleV1.Generated.Unsafe.wp_fractional_scale_v1_get_version
    , Bindings.Wayland.FractionalScaleV1.Generated.Unsafe.wp_fractional_scale_v1_destroy
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
  , "void hs_bindgen_7aea777ba1ab440f ("
  , "  struct wp_fractional_scale_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wp_fractional_scale_manager_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_eafd715fa14bebf4 ("
  , "  struct wp_fractional_scale_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (wp_fractional_scale_manager_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_db00ce67ea6327a5 ("
  , "  struct wp_fractional_scale_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (wp_fractional_scale_manager_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_832f3c3f3d823721 ("
  , "  struct wp_fractional_scale_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (wp_fractional_scale_manager_v1_destroy)(arg1);"
  , "}"
  , "struct wp_fractional_scale_v1 *hs_bindgen_587fa3f9b0a03fe3 ("
  , "  struct wp_fractional_scale_manager_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (wp_fractional_scale_manager_v1_get_fractional_scale)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_f0fa1e9cc7de2f21 ("
  , "  struct wp_fractional_scale_v1 *arg1,"
  , "  struct wp_fractional_scale_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wp_fractional_scale_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_75bfae0fd6eb5061 ("
  , "  struct wp_fractional_scale_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wp_fractional_scale_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_e995c80a6273625f ("
  , "  struct wp_fractional_scale_v1 *arg1"
  , ")"
  , "{"
  , "  return (wp_fractional_scale_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_978082d324b2c009 ("
  , "  struct wp_fractional_scale_v1 *arg1"
  , ")"
  , "{"
  , "  return (wp_fractional_scale_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_7fc6065c900b71d4 ("
  , "  struct wp_fractional_scale_v1 *arg1"
  , ")"
  , "{"
  , "  (wp_fractional_scale_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Unsafe_wp_fractional_scale_manager_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_7aea777ba1ab440f" hs_bindgen_7aea777ba1ab440f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Unsafe_wp_fractional_scale_manager_v1_set_user_data@
hs_bindgen_7aea777ba1ab440f ::
     RIP.Ptr Wp_fractional_scale_manager_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_7aea777ba1ab440f =
  RIP.fromFFIType hs_bindgen_7aea777ba1ab440f_base

{-|

  > iface_wp_fractional_scale_manager_v1

__C declaration:__ @wp_fractional_scale_manager_v1_set_user_data@

__defined at:__ @fractional-scale-v1-client-protocol.h 133:1@

__exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_manager_v1_set_user_data ::
     RIP.Ptr Wp_fractional_scale_manager_v1
     -- ^ __C declaration:__ @wp_fractional_scale_manager_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wp_fractional_scale_manager_v1_set_user_data =
  hs_bindgen_7aea777ba1ab440f

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Unsafe_wp_fractional_scale_manager_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_eafd715fa14bebf4" hs_bindgen_eafd715fa14bebf4_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Unsafe_wp_fractional_scale_manager_v1_get_user_data@
hs_bindgen_eafd715fa14bebf4 ::
     RIP.Ptr Wp_fractional_scale_manager_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_eafd715fa14bebf4 =
  RIP.fromFFIType hs_bindgen_eafd715fa14bebf4_base

{-|

  > iface_wp_fractional_scale_manager_v1

__C declaration:__ @wp_fractional_scale_manager_v1_get_user_data@

__defined at:__ @fractional-scale-v1-client-protocol.h 140:1@

__exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_manager_v1_get_user_data ::
     RIP.Ptr Wp_fractional_scale_manager_v1
     -- ^ __C declaration:__ @wp_fractional_scale_manager_v1@
  -> IO (RIP.Ptr RIP.Void)
wp_fractional_scale_manager_v1_get_user_data =
  hs_bindgen_eafd715fa14bebf4

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Unsafe_wp_fractional_scale_manager_v1_get_version@
foreign import ccall unsafe "hs_bindgen_db00ce67ea6327a5" hs_bindgen_db00ce67ea6327a5_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Unsafe_wp_fractional_scale_manager_v1_get_version@
hs_bindgen_db00ce67ea6327a5 ::
     RIP.Ptr Wp_fractional_scale_manager_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_db00ce67ea6327a5 =
  RIP.fromFFIType hs_bindgen_db00ce67ea6327a5_base

{-| __C declaration:__ @wp_fractional_scale_manager_v1_get_version@

    __defined at:__ @fractional-scale-v1-client-protocol.h 146:1@

    __exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_manager_v1_get_version ::
     RIP.Ptr Wp_fractional_scale_manager_v1
     -- ^ __C declaration:__ @wp_fractional_scale_manager_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
wp_fractional_scale_manager_v1_get_version =
  hs_bindgen_db00ce67ea6327a5

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Unsafe_wp_fractional_scale_manager_v1_destroy@
foreign import ccall unsafe "hs_bindgen_832f3c3f3d823721" hs_bindgen_832f3c3f3d823721_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Unsafe_wp_fractional_scale_manager_v1_destroy@
hs_bindgen_832f3c3f3d823721 ::
     RIP.Ptr Wp_fractional_scale_manager_v1
  -> IO ()
hs_bindgen_832f3c3f3d823721 =
  RIP.fromFFIType hs_bindgen_832f3c3f3d823721_base

{-|

  > iface_wp_fractional_scale_manager_v1

  Informs the server that the client will not be using this protocol object anymore. This does not affect any other objects, wp_fractional_scale_v1 objects included.

__C declaration:__ @wp_fractional_scale_manager_v1_destroy@

__defined at:__ @fractional-scale-v1-client-protocol.h 159:1@

__exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_manager_v1_destroy ::
     RIP.Ptr Wp_fractional_scale_manager_v1
     -- ^ __C declaration:__ @wp_fractional_scale_manager_v1@
  -> IO ()
wp_fractional_scale_manager_v1_destroy =
  hs_bindgen_832f3c3f3d823721

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Unsafe_wp_fractional_scale_manager_v1_get_fractional_scale@
foreign import ccall unsafe "hs_bindgen_587fa3f9b0a03fe3" hs_bindgen_587fa3f9b0a03fe3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Unsafe_wp_fractional_scale_manager_v1_get_fractional_scale@
hs_bindgen_587fa3f9b0a03fe3 ::
     RIP.Ptr Wp_fractional_scale_manager_v1
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface
  -> IO (RIP.Ptr Wp_fractional_scale_v1)
hs_bindgen_587fa3f9b0a03fe3 =
  RIP.fromFFIType hs_bindgen_587fa3f9b0a03fe3_base

{-|

  > iface_wp_fractional_scale_manager_v1

  Create an add-on object for the the wl_surface to let the compositor request fractional scales. If the given wl_surface already has a wp_fractional_scale_v1 object associated, the fractional_scale_exists protocol error is raised.

__C declaration:__ @wp_fractional_scale_manager_v1_get_fractional_scale@

__defined at:__ @fractional-scale-v1-client-protocol.h 174:1@

__exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_manager_v1_get_fractional_scale ::
     RIP.Ptr Wp_fractional_scale_manager_v1
     -- ^ __C declaration:__ @wp_fractional_scale_manager_v1@
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface
     -- ^ __C declaration:__ @surface@
  -> IO (RIP.Ptr Wp_fractional_scale_v1)
wp_fractional_scale_manager_v1_get_fractional_scale =
  hs_bindgen_587fa3f9b0a03fe3

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Unsafe_wp_fractional_scale_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_f0fa1e9cc7de2f21" hs_bindgen_f0fa1e9cc7de2f21_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Unsafe_wp_fractional_scale_v1_add_listener@
hs_bindgen_f0fa1e9cc7de2f21 ::
     RIP.Ptr Wp_fractional_scale_v1
  -> PtrConst.PtrConst Wp_fractional_scale_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_f0fa1e9cc7de2f21 =
  RIP.fromFFIType hs_bindgen_f0fa1e9cc7de2f21_base

{-|

  > iface_wp_fractional_scale_v1

__C declaration:__ @wp_fractional_scale_v1_add_listener@

__defined at:__ @fractional-scale-v1-client-protocol.h 208:1@

__exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_v1_add_listener ::
     RIP.Ptr Wp_fractional_scale_v1
     -- ^ __C declaration:__ @wp_fractional_scale_v1@
  -> PtrConst.PtrConst Wp_fractional_scale_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
wp_fractional_scale_v1_add_listener =
  hs_bindgen_f0fa1e9cc7de2f21

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Unsafe_wp_fractional_scale_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_75bfae0fd6eb5061" hs_bindgen_75bfae0fd6eb5061_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Unsafe_wp_fractional_scale_v1_set_user_data@
hs_bindgen_75bfae0fd6eb5061 ::
     RIP.Ptr Wp_fractional_scale_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_75bfae0fd6eb5061 =
  RIP.fromFFIType hs_bindgen_75bfae0fd6eb5061_base

{-|

  > iface_wp_fractional_scale_v1

__C declaration:__ @wp_fractional_scale_v1_set_user_data@

__defined at:__ @fractional-scale-v1-client-protocol.h 229:1@

__exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_v1_set_user_data ::
     RIP.Ptr Wp_fractional_scale_v1
     -- ^ __C declaration:__ @wp_fractional_scale_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wp_fractional_scale_v1_set_user_data =
  hs_bindgen_75bfae0fd6eb5061

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Unsafe_wp_fractional_scale_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_e995c80a6273625f" hs_bindgen_e995c80a6273625f_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Unsafe_wp_fractional_scale_v1_get_user_data@
hs_bindgen_e995c80a6273625f ::
     RIP.Ptr Wp_fractional_scale_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_e995c80a6273625f =
  RIP.fromFFIType hs_bindgen_e995c80a6273625f_base

{-|

  > iface_wp_fractional_scale_v1

__C declaration:__ @wp_fractional_scale_v1_get_user_data@

__defined at:__ @fractional-scale-v1-client-protocol.h 236:1@

__exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_v1_get_user_data ::
     RIP.Ptr Wp_fractional_scale_v1
     -- ^ __C declaration:__ @wp_fractional_scale_v1@
  -> IO (RIP.Ptr RIP.Void)
wp_fractional_scale_v1_get_user_data =
  hs_bindgen_e995c80a6273625f

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Unsafe_wp_fractional_scale_v1_get_version@
foreign import ccall unsafe "hs_bindgen_978082d324b2c009" hs_bindgen_978082d324b2c009_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Unsafe_wp_fractional_scale_v1_get_version@
hs_bindgen_978082d324b2c009 ::
     RIP.Ptr Wp_fractional_scale_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_978082d324b2c009 =
  RIP.fromFFIType hs_bindgen_978082d324b2c009_base

{-| __C declaration:__ @wp_fractional_scale_v1_get_version@

    __defined at:__ @fractional-scale-v1-client-protocol.h 242:1@

    __exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_v1_get_version ::
     RIP.Ptr Wp_fractional_scale_v1
     -- ^ __C declaration:__ @wp_fractional_scale_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
wp_fractional_scale_v1_get_version =
  hs_bindgen_978082d324b2c009

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Unsafe_wp_fractional_scale_v1_destroy@
foreign import ccall unsafe "hs_bindgen_7fc6065c900b71d4" hs_bindgen_7fc6065c900b71d4_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Unsafe_wp_fractional_scale_v1_destroy@
hs_bindgen_7fc6065c900b71d4 ::
     RIP.Ptr Wp_fractional_scale_v1
  -> IO ()
hs_bindgen_7fc6065c900b71d4 =
  RIP.fromFFIType hs_bindgen_7fc6065c900b71d4_base

{-|

  > iface_wp_fractional_scale_v1

  Destroy the fractional scale object. When this object is destroyed, preferred_scale events will no longer be sent.

__C declaration:__ @wp_fractional_scale_v1_destroy@

__defined at:__ @fractional-scale-v1-client-protocol.h 254:1@

__exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_v1_destroy ::
     RIP.Ptr Wp_fractional_scale_v1
     -- ^ __C declaration:__ @wp_fractional_scale_v1@
  -> IO ()
wp_fractional_scale_v1_destroy =
  hs_bindgen_7fc6065c900b71d4
