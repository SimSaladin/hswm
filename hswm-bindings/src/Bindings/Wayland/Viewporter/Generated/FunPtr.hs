{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.Viewporter.Generated.FunPtr
    ( Bindings.Wayland.Viewporter.Generated.FunPtr.wp_viewporter_set_user_data
    , Bindings.Wayland.Viewporter.Generated.FunPtr.wp_viewporter_get_user_data
    , Bindings.Wayland.Viewporter.Generated.FunPtr.wp_viewporter_get_version
    , Bindings.Wayland.Viewporter.Generated.FunPtr.wp_viewporter_destroy
    , Bindings.Wayland.Viewporter.Generated.FunPtr.wp_viewporter_get_viewport
    , Bindings.Wayland.Viewporter.Generated.FunPtr.wp_viewport_set_user_data
    , Bindings.Wayland.Viewporter.Generated.FunPtr.wp_viewport_get_user_data
    , Bindings.Wayland.Viewporter.Generated.FunPtr.wp_viewport_get_version
    , Bindings.Wayland.Viewporter.Generated.FunPtr.wp_viewport_destroy
    , Bindings.Wayland.Viewporter.Generated.FunPtr.wp_viewport_set_source
    , Bindings.Wayland.Viewporter.Generated.FunPtr.wp_viewport_set_destination
    )
  where

import qualified Bindings.Wayland.Client.Generated
import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import Bindings.Wayland.Viewporter.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <viewporter-client-protocol.h>"
  , "/* Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewporter_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b8d69774c9572afd (void)) ("
  , "  struct wp_viewporter *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wp_viewporter_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewporter_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_d84c8583c1e722a8 (void)) ("
  , "  struct wp_viewporter *arg1"
  , ")"
  , "{"
  , "  return &wp_viewporter_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewporter_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_3def60022de15cd0 (void)) ("
  , "  struct wp_viewporter *arg1"
  , ")"
  , "{"
  , "  return &wp_viewporter_get_version;"
  , "}"
  , "/* Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewporter_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6b31bd47bebabe4b (void)) ("
  , "  struct wp_viewporter *arg1"
  , ")"
  , "{"
  , "  return &wp_viewporter_destroy;"
  , "}"
  , "/* Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewporter_get_viewport */"
  , "__attribute__ ((const))"
  , "struct wp_viewport *(*hs_bindgen_883c1e002756a94c (void)) ("
  , "  struct wp_viewporter *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &wp_viewporter_get_viewport;"
  , "}"
  , "/* Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewport_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b6a590af96ac905a (void)) ("
  , "  struct wp_viewport *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &wp_viewport_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewport_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_c9f85946d7a47cdc (void)) ("
  , "  struct wp_viewport *arg1"
  , ")"
  , "{"
  , "  return &wp_viewport_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewport_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_7af6f6755f391ab8 (void)) ("
  , "  struct wp_viewport *arg1"
  , ")"
  , "{"
  , "  return &wp_viewport_get_version;"
  , "}"
  , "/* Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewport_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2c3394d906a4466c (void)) ("
  , "  struct wp_viewport *arg1"
  , ")"
  , "{"
  , "  return &wp_viewport_destroy;"
  , "}"
  , "/* Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewport_set_source */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7980820135d4290b (void)) ("
  , "  struct wp_viewport *arg1,"
  , "  wl_fixed_t arg2,"
  , "  wl_fixed_t arg3,"
  , "  wl_fixed_t arg4,"
  , "  wl_fixed_t arg5"
  , ")"
  , "{"
  , "  return &wp_viewport_set_source;"
  , "}"
  , "/* Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewport_set_destination */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_cbd9f16b526956ed (void)) ("
  , "  struct wp_viewport *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &wp_viewport_set_destination;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewporter_set_user_data@
foreign import ccall unsafe "hs_bindgen_b8d69774c9572afd" hs_bindgen_b8d69774c9572afd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewporter_set_user_data@
hs_bindgen_b8d69774c9572afd :: IO (RIP.FunPtr ((RIP.Ptr Wp_viewporter) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_b8d69774c9572afd =
  RIP.fromFFIType hs_bindgen_b8d69774c9572afd_base

{-# NOINLINE wp_viewporter_set_user_data #-}
{-|

  > iface_wp_viewporter

__C declaration:__ @wp_viewporter_set_user_data@

__defined at:__ @viewporter-client-protocol.h 224:1@

__exported by:__ @viewporter-client-protocol.h@
-}
wp_viewporter_set_user_data :: RIP.FunPtr ((RIP.Ptr Wp_viewporter) -> (RIP.Ptr RIP.Void) -> IO ())
wp_viewporter_set_user_data =
  RIP.unsafePerformIO hs_bindgen_b8d69774c9572afd

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewporter_get_user_data@
foreign import ccall unsafe "hs_bindgen_d84c8583c1e722a8" hs_bindgen_d84c8583c1e722a8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewporter_get_user_data@
hs_bindgen_d84c8583c1e722a8 :: IO (RIP.FunPtr ((RIP.Ptr Wp_viewporter) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_d84c8583c1e722a8 =
  RIP.fromFFIType hs_bindgen_d84c8583c1e722a8_base

{-# NOINLINE wp_viewporter_get_user_data #-}
{-|

  > iface_wp_viewporter

__C declaration:__ @wp_viewporter_get_user_data@

__defined at:__ @viewporter-client-protocol.h 231:1@

__exported by:__ @viewporter-client-protocol.h@
-}
wp_viewporter_get_user_data :: RIP.FunPtr ((RIP.Ptr Wp_viewporter) -> IO (RIP.Ptr RIP.Void))
wp_viewporter_get_user_data =
  RIP.unsafePerformIO hs_bindgen_d84c8583c1e722a8

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewporter_get_version@
foreign import ccall unsafe "hs_bindgen_3def60022de15cd0" hs_bindgen_3def60022de15cd0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewporter_get_version@
hs_bindgen_3def60022de15cd0 :: IO (RIP.FunPtr ((RIP.Ptr Wp_viewporter) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_3def60022de15cd0 =
  RIP.fromFFIType hs_bindgen_3def60022de15cd0_base

{-# NOINLINE wp_viewporter_get_version #-}
{-| __C declaration:__ @wp_viewporter_get_version@

    __defined at:__ @viewporter-client-protocol.h 237:1@

    __exported by:__ @viewporter-client-protocol.h@
-}
wp_viewporter_get_version :: RIP.FunPtr ((RIP.Ptr Wp_viewporter) -> IO HsBindgen.Runtime.LibC.Word32)
wp_viewporter_get_version =
  RIP.unsafePerformIO hs_bindgen_3def60022de15cd0

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewporter_destroy@
foreign import ccall unsafe "hs_bindgen_6b31bd47bebabe4b" hs_bindgen_6b31bd47bebabe4b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewporter_destroy@
hs_bindgen_6b31bd47bebabe4b :: IO (RIP.FunPtr ((RIP.Ptr Wp_viewporter) -> IO ()))
hs_bindgen_6b31bd47bebabe4b =
  RIP.fromFFIType hs_bindgen_6b31bd47bebabe4b_base

{-# NOINLINE wp_viewporter_destroy #-}
{-|

  > iface_wp_viewporter

  Informs the server that the client will not be using this protocol object anymore. This does not affect any other objects, wp_viewport objects included.

__C declaration:__ @wp_viewporter_destroy@

__defined at:__ @viewporter-client-protocol.h 250:1@

__exported by:__ @viewporter-client-protocol.h@
-}
wp_viewporter_destroy :: RIP.FunPtr ((RIP.Ptr Wp_viewporter) -> IO ())
wp_viewporter_destroy =
  RIP.unsafePerformIO hs_bindgen_6b31bd47bebabe4b

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewporter_get_viewport@
foreign import ccall unsafe "hs_bindgen_883c1e002756a94c" hs_bindgen_883c1e002756a94c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewporter_get_viewport@
hs_bindgen_883c1e002756a94c :: IO (RIP.FunPtr ((RIP.Ptr Wp_viewporter) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface) -> IO (RIP.Ptr Wp_viewport)))
hs_bindgen_883c1e002756a94c =
  RIP.fromFFIType hs_bindgen_883c1e002756a94c_base

{-# NOINLINE wp_viewporter_get_viewport #-}
{-|

  > iface_wp_viewporter

  Instantiate an interface extension for the given wl_surface to crop and scale its content. If the given wl_surface already has a wp_viewport object associated, the viewport_exists protocol error is raised.

__C declaration:__ @wp_viewporter_get_viewport@

__defined at:__ @viewporter-client-protocol.h 265:1@

__exported by:__ @viewporter-client-protocol.h@
-}
wp_viewporter_get_viewport :: RIP.FunPtr ((RIP.Ptr Wp_viewporter) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface) -> IO (RIP.Ptr Wp_viewport))
wp_viewporter_get_viewport =
  RIP.unsafePerformIO hs_bindgen_883c1e002756a94c

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewport_set_user_data@
foreign import ccall unsafe "hs_bindgen_b6a590af96ac905a" hs_bindgen_b6a590af96ac905a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewport_set_user_data@
hs_bindgen_b6a590af96ac905a :: IO (RIP.FunPtr ((RIP.Ptr Wp_viewport) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_b6a590af96ac905a =
  RIP.fromFFIType hs_bindgen_b6a590af96ac905a_base

{-# NOINLINE wp_viewport_set_user_data #-}
{-|

  > iface_wp_viewport

__C declaration:__ @wp_viewport_set_user_data@

__defined at:__ @viewporter-client-protocol.h 317:1@

__exported by:__ @viewporter-client-protocol.h@
-}
wp_viewport_set_user_data :: RIP.FunPtr ((RIP.Ptr Wp_viewport) -> (RIP.Ptr RIP.Void) -> IO ())
wp_viewport_set_user_data =
  RIP.unsafePerformIO hs_bindgen_b6a590af96ac905a

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewport_get_user_data@
foreign import ccall unsafe "hs_bindgen_c9f85946d7a47cdc" hs_bindgen_c9f85946d7a47cdc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewport_get_user_data@
hs_bindgen_c9f85946d7a47cdc :: IO (RIP.FunPtr ((RIP.Ptr Wp_viewport) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_c9f85946d7a47cdc =
  RIP.fromFFIType hs_bindgen_c9f85946d7a47cdc_base

{-# NOINLINE wp_viewport_get_user_data #-}
{-|

  > iface_wp_viewport

__C declaration:__ @wp_viewport_get_user_data@

__defined at:__ @viewporter-client-protocol.h 324:1@

__exported by:__ @viewporter-client-protocol.h@
-}
wp_viewport_get_user_data :: RIP.FunPtr ((RIP.Ptr Wp_viewport) -> IO (RIP.Ptr RIP.Void))
wp_viewport_get_user_data =
  RIP.unsafePerformIO hs_bindgen_c9f85946d7a47cdc

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewport_get_version@
foreign import ccall unsafe "hs_bindgen_7af6f6755f391ab8" hs_bindgen_7af6f6755f391ab8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewport_get_version@
hs_bindgen_7af6f6755f391ab8 :: IO (RIP.FunPtr ((RIP.Ptr Wp_viewport) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_7af6f6755f391ab8 =
  RIP.fromFFIType hs_bindgen_7af6f6755f391ab8_base

{-# NOINLINE wp_viewport_get_version #-}
{-| __C declaration:__ @wp_viewport_get_version@

    __defined at:__ @viewporter-client-protocol.h 330:1@

    __exported by:__ @viewporter-client-protocol.h@
-}
wp_viewport_get_version :: RIP.FunPtr ((RIP.Ptr Wp_viewport) -> IO HsBindgen.Runtime.LibC.Word32)
wp_viewport_get_version =
  RIP.unsafePerformIO hs_bindgen_7af6f6755f391ab8

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewport_destroy@
foreign import ccall unsafe "hs_bindgen_2c3394d906a4466c" hs_bindgen_2c3394d906a4466c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewport_destroy@
hs_bindgen_2c3394d906a4466c :: IO (RIP.FunPtr ((RIP.Ptr Wp_viewport) -> IO ()))
hs_bindgen_2c3394d906a4466c =
  RIP.fromFFIType hs_bindgen_2c3394d906a4466c_base

{-# NOINLINE wp_viewport_destroy #-}
{-|

  > iface_wp_viewport

  The associated wl_surface's crop and scale state is removed. The change is applied on the next wl_surface.commit.

__C declaration:__ @wp_viewport_destroy@

__defined at:__ @viewporter-client-protocol.h 342:1@

__exported by:__ @viewporter-client-protocol.h@
-}
wp_viewport_destroy :: RIP.FunPtr ((RIP.Ptr Wp_viewport) -> IO ())
wp_viewport_destroy =
  RIP.unsafePerformIO hs_bindgen_2c3394d906a4466c

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewport_set_source@
foreign import ccall unsafe "hs_bindgen_7980820135d4290b" hs_bindgen_7980820135d4290b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewport_set_source@
hs_bindgen_7980820135d4290b :: IO (RIP.FunPtr ((RIP.Ptr Wp_viewport) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()))
hs_bindgen_7980820135d4290b =
  RIP.fromFFIType hs_bindgen_7980820135d4290b_base

{-# NOINLINE wp_viewport_set_source #-}
{-|

  > iface_wp_viewport

  Set the source rectangle of the associated wl_surface. See wp_viewport for the description, and relation to the wl_buffer size.

  If all of x, y, width and height are -1.0, the source rectangle is unset instead. Any other set of values where width or height are zero or negative, or x or y are negative, raise the bad_value protocol error.

  The crop and scale state is double-buffered, see wl_surface.commit.

__C declaration:__ @wp_viewport_set_source@

__defined at:__ @viewporter-client-protocol.h 363:1@

__exported by:__ @viewporter-client-protocol.h@
-}
wp_viewport_set_source :: RIP.FunPtr ((RIP.Ptr Wp_viewport) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
wp_viewport_set_source =
  RIP.unsafePerformIO hs_bindgen_7980820135d4290b

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewport_set_destination@
foreign import ccall unsafe "hs_bindgen_cbd9f16b526956ed" hs_bindgen_cbd9f16b526956ed_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewport_set_destination@
hs_bindgen_cbd9f16b526956ed :: IO (RIP.FunPtr ((RIP.Ptr Wp_viewport) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_cbd9f16b526956ed =
  RIP.fromFFIType hs_bindgen_cbd9f16b526956ed_base

{-# NOINLINE wp_viewport_set_destination #-}
{-|

  > iface_wp_viewport

  Set the destination size of the associated wl_surface. See wp_viewport for the description, and relation to the wl_buffer size.

  If width is -1 and height is -1, the destination size is unset instead. Any other pair of values for width and height that contains zero or negative values raises the bad_value protocol error.

  The crop and scale state is double-buffered, see wl_surface.commit.

__C declaration:__ @wp_viewport_set_destination@

__defined at:__ @viewporter-client-protocol.h 384:1@

__exported by:__ @viewporter-client-protocol.h@
-}
wp_viewport_set_destination :: RIP.FunPtr ((RIP.Ptr Wp_viewport) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
wp_viewport_set_destination =
  RIP.unsafePerformIO hs_bindgen_cbd9f16b526956ed
