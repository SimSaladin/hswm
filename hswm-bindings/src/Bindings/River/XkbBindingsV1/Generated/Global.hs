{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.XkbBindingsV1.Generated.Global
    ( Bindings.River.XkbBindingsV1.Generated.Global.river_xkb_bindings_v1_interface
    , Bindings.River.XkbBindingsV1.Generated.Global.river_xkb_binding_v1_interface
    , Bindings.River.XkbBindingsV1.Generated.Global.river_xkb_bindings_seat_v1_interface
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-xkb-bindings-v1-client-protocol.h>"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_4266188e2638c84d (void)"
  , "{"
  , "  return &river_xkb_bindings_v1_interface;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_13c70edd5f39e7ca (void)"
  , "{"
  , "  return &river_xkb_binding_v1_interface;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_f88cd60ddacd6bb6 (void)"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_interface;"
  , "}"
  ]))

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_v1_interface@
foreign import ccall unsafe "hs_bindgen_4266188e2638c84d" hs_bindgen_4266188e2638c84d_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_v1_interface@
hs_bindgen_4266188e2638c84d :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_4266188e2638c84d =
  RIP.fromFFIType hs_bindgen_4266188e2638c84d_base

{-# NOINLINE hs_bindgen_53458dbdd131d49f #-}
{-| __C declaration:__ @river_xkb_bindings_v1_interface@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 79:34@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@

    __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_river_xkb_bindings_v1_interface@
-}
hs_bindgen_53458dbdd131d49f :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_53458dbdd131d49f =
  RIP.unsafePerformIO hs_bindgen_4266188e2638c84d

{-# NOINLINE river_xkb_bindings_v1_interface #-}
river_xkb_bindings_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_xkb_bindings_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_53458dbdd131d49f)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_interface@
foreign import ccall unsafe "hs_bindgen_13c70edd5f39e7ca" hs_bindgen_13c70edd5f39e7ca_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_interface@
hs_bindgen_13c70edd5f39e7ca :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_13c70edd5f39e7ca =
  RIP.fromFFIType hs_bindgen_13c70edd5f39e7ca_base

{-# NOINLINE hs_bindgen_d7ed1da05caf675f #-}
{-| __C declaration:__ @river_xkb_binding_v1_interface@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 132:34@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@

    __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_river_xkb_binding_v1_interface@
-}
hs_bindgen_d7ed1da05caf675f :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_d7ed1da05caf675f =
  RIP.unsafePerformIO hs_bindgen_13c70edd5f39e7ca

{-# NOINLINE river_xkb_binding_v1_interface #-}
river_xkb_binding_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_xkb_binding_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_d7ed1da05caf675f)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_interface@
foreign import ccall unsafe "hs_bindgen_f88cd60ddacd6bb6" hs_bindgen_f88cd60ddacd6bb6_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_interface@
hs_bindgen_f88cd60ddacd6bb6 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_f88cd60ddacd6bb6 =
  RIP.fromFFIType hs_bindgen_f88cd60ddacd6bb6_base

{-# NOINLINE hs_bindgen_29c90611f7ef0808 #-}
{-| __C declaration:__ @river_xkb_bindings_seat_v1_interface@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 149:34@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@

    __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_river_xkb_bindings_seat_v1_interface@
-}
hs_bindgen_29c90611f7ef0808 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_29c90611f7ef0808 =
  RIP.unsafePerformIO hs_bindgen_f88cd60ddacd6bb6

{-# NOINLINE river_xkb_bindings_seat_v1_interface #-}
river_xkb_bindings_seat_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_xkb_bindings_seat_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_29c90611f7ef0808)
