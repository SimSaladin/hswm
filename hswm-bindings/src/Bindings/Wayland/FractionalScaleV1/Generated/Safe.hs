{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.FractionalScaleV1.Generated.Safe
    ( Bindings.Wayland.FractionalScaleV1.Generated.Safe.wp_fractional_scale_manager_v1_set_user_data
    , Bindings.Wayland.FractionalScaleV1.Generated.Safe.wp_fractional_scale_manager_v1_get_user_data
    , Bindings.Wayland.FractionalScaleV1.Generated.Safe.wp_fractional_scale_manager_v1_get_version
    , Bindings.Wayland.FractionalScaleV1.Generated.Safe.wp_fractional_scale_manager_v1_destroy
    , Bindings.Wayland.FractionalScaleV1.Generated.Safe.wp_fractional_scale_manager_v1_get_fractional_scale
    , Bindings.Wayland.FractionalScaleV1.Generated.Safe.wp_fractional_scale_v1_add_listener
    , Bindings.Wayland.FractionalScaleV1.Generated.Safe.wp_fractional_scale_v1_set_user_data
    , Bindings.Wayland.FractionalScaleV1.Generated.Safe.wp_fractional_scale_v1_get_user_data
    , Bindings.Wayland.FractionalScaleV1.Generated.Safe.wp_fractional_scale_v1_get_version
    , Bindings.Wayland.FractionalScaleV1.Generated.Safe.wp_fractional_scale_v1_destroy
    )
  where

import qualified Generated.Wayland.Client
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Wayland.FractionalScaleV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <fractional-scale-v1-client-protocol.h>"
  , "void hs_bindgen_39b2f9761b114373 ("
  , "  struct wp_fractional_scale_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wp_fractional_scale_manager_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_cfed1f5d1e70d872 ("
  , "  struct wp_fractional_scale_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (wp_fractional_scale_manager_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_6e0d4a74a3a6f304 ("
  , "  struct wp_fractional_scale_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (wp_fractional_scale_manager_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_488ee476d211d865 ("
  , "  struct wp_fractional_scale_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (wp_fractional_scale_manager_v1_destroy)(arg1);"
  , "}"
  , "struct wp_fractional_scale_v1 *hs_bindgen_1d19c9c9e8a4e47b ("
  , "  struct wp_fractional_scale_manager_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (wp_fractional_scale_manager_v1_get_fractional_scale)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_9b007c71b5792456 ("
  , "  struct wp_fractional_scale_v1 *arg1,"
  , "  struct wp_fractional_scale_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (wp_fractional_scale_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_5052bd105331b9a5 ("
  , "  struct wp_fractional_scale_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wp_fractional_scale_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_2f6e326aaffa4447 ("
  , "  struct wp_fractional_scale_v1 *arg1"
  , ")"
  , "{"
  , "  return (wp_fractional_scale_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_f3003c98a6d5bf21 ("
  , "  struct wp_fractional_scale_v1 *arg1"
  , ")"
  , "{"
  , "  return (wp_fractional_scale_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_030f8e616617d19a ("
  , "  struct wp_fractional_scale_v1 *arg1"
  , ")"
  , "{"
  , "  (wp_fractional_scale_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Safe_wp_fractional_scale_manager_v1_set_user_data@
foreign import ccall safe "hs_bindgen_39b2f9761b114373" hs_bindgen_39b2f9761b114373_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Safe_wp_fractional_scale_manager_v1_set_user_data@
hs_bindgen_39b2f9761b114373 ::
     RIP.Ptr Wp_fractional_scale_manager_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_39b2f9761b114373 =
  RIP.fromFFIType hs_bindgen_39b2f9761b114373_base

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
  hs_bindgen_39b2f9761b114373

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Safe_wp_fractional_scale_manager_v1_get_user_data@
foreign import ccall safe "hs_bindgen_cfed1f5d1e70d872" hs_bindgen_cfed1f5d1e70d872_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Safe_wp_fractional_scale_manager_v1_get_user_data@
hs_bindgen_cfed1f5d1e70d872 ::
     RIP.Ptr Wp_fractional_scale_manager_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_cfed1f5d1e70d872 =
  RIP.fromFFIType hs_bindgen_cfed1f5d1e70d872_base

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
  hs_bindgen_cfed1f5d1e70d872

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Safe_wp_fractional_scale_manager_v1_get_version@
foreign import ccall safe "hs_bindgen_6e0d4a74a3a6f304" hs_bindgen_6e0d4a74a3a6f304_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Safe_wp_fractional_scale_manager_v1_get_version@
hs_bindgen_6e0d4a74a3a6f304 ::
     RIP.Ptr Wp_fractional_scale_manager_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_6e0d4a74a3a6f304 =
  RIP.fromFFIType hs_bindgen_6e0d4a74a3a6f304_base

{-| __C declaration:__ @wp_fractional_scale_manager_v1_get_version@

    __defined at:__ @fractional-scale-v1-client-protocol.h 146:1@

    __exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_manager_v1_get_version ::
     RIP.Ptr Wp_fractional_scale_manager_v1
     -- ^ __C declaration:__ @wp_fractional_scale_manager_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
wp_fractional_scale_manager_v1_get_version =
  hs_bindgen_6e0d4a74a3a6f304

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Safe_wp_fractional_scale_manager_v1_destroy@
foreign import ccall safe "hs_bindgen_488ee476d211d865" hs_bindgen_488ee476d211d865_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Safe_wp_fractional_scale_manager_v1_destroy@
hs_bindgen_488ee476d211d865 ::
     RIP.Ptr Wp_fractional_scale_manager_v1
  -> IO ()
hs_bindgen_488ee476d211d865 =
  RIP.fromFFIType hs_bindgen_488ee476d211d865_base

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
  hs_bindgen_488ee476d211d865

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Safe_wp_fractional_scale_manager_v1_get_fractional_scale@
foreign import ccall safe "hs_bindgen_1d19c9c9e8a4e47b" hs_bindgen_1d19c9c9e8a4e47b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Safe_wp_fractional_scale_manager_v1_get_fractional_scale@
hs_bindgen_1d19c9c9e8a4e47b ::
     RIP.Ptr Wp_fractional_scale_manager_v1
  -> RIP.Ptr Generated.Wayland.Client.Wl_surface
  -> IO (RIP.Ptr Wp_fractional_scale_v1)
hs_bindgen_1d19c9c9e8a4e47b =
  RIP.fromFFIType hs_bindgen_1d19c9c9e8a4e47b_base

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
  -> RIP.Ptr Generated.Wayland.Client.Wl_surface
     -- ^ __C declaration:__ @surface@
  -> IO (RIP.Ptr Wp_fractional_scale_v1)
wp_fractional_scale_manager_v1_get_fractional_scale =
  hs_bindgen_1d19c9c9e8a4e47b

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Safe_wp_fractional_scale_v1_add_listener@
foreign import ccall safe "hs_bindgen_9b007c71b5792456" hs_bindgen_9b007c71b5792456_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Safe_wp_fractional_scale_v1_add_listener@
hs_bindgen_9b007c71b5792456 ::
     RIP.Ptr Wp_fractional_scale_v1
  -> PtrConst.PtrConst Wp_fractional_scale_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_9b007c71b5792456 =
  RIP.fromFFIType hs_bindgen_9b007c71b5792456_base

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
  hs_bindgen_9b007c71b5792456

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Safe_wp_fractional_scale_v1_set_user_data@
foreign import ccall safe "hs_bindgen_5052bd105331b9a5" hs_bindgen_5052bd105331b9a5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Safe_wp_fractional_scale_v1_set_user_data@
hs_bindgen_5052bd105331b9a5 ::
     RIP.Ptr Wp_fractional_scale_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_5052bd105331b9a5 =
  RIP.fromFFIType hs_bindgen_5052bd105331b9a5_base

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
  hs_bindgen_5052bd105331b9a5

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Safe_wp_fractional_scale_v1_get_user_data@
foreign import ccall safe "hs_bindgen_2f6e326aaffa4447" hs_bindgen_2f6e326aaffa4447_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Safe_wp_fractional_scale_v1_get_user_data@
hs_bindgen_2f6e326aaffa4447 ::
     RIP.Ptr Wp_fractional_scale_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_2f6e326aaffa4447 =
  RIP.fromFFIType hs_bindgen_2f6e326aaffa4447_base

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
  hs_bindgen_2f6e326aaffa4447

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Safe_wp_fractional_scale_v1_get_version@
foreign import ccall safe "hs_bindgen_f3003c98a6d5bf21" hs_bindgen_f3003c98a6d5bf21_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Safe_wp_fractional_scale_v1_get_version@
hs_bindgen_f3003c98a6d5bf21 ::
     RIP.Ptr Wp_fractional_scale_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_f3003c98a6d5bf21 =
  RIP.fromFFIType hs_bindgen_f3003c98a6d5bf21_base

{-| __C declaration:__ @wp_fractional_scale_v1_get_version@

    __defined at:__ @fractional-scale-v1-client-protocol.h 242:1@

    __exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wp_fractional_scale_v1_get_version ::
     RIP.Ptr Wp_fractional_scale_v1
     -- ^ __C declaration:__ @wp_fractional_scale_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
wp_fractional_scale_v1_get_version =
  hs_bindgen_f3003c98a6d5bf21

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Safe_wp_fractional_scale_v1_destroy@
foreign import ccall safe "hs_bindgen_030f8e616617d19a" hs_bindgen_030f8e616617d19a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_Safe_wp_fractional_scale_v1_destroy@
hs_bindgen_030f8e616617d19a ::
     RIP.Ptr Wp_fractional_scale_v1
  -> IO ()
hs_bindgen_030f8e616617d19a =
  RIP.fromFFIType hs_bindgen_030f8e616617d19a_base

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
  hs_bindgen_030f8e616617d19a
