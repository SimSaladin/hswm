{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.Util.Generated.Safe
    ( Bindings.Wayland.Util.Generated.Safe.wl_list_init
    , Bindings.Wayland.Util.Generated.Safe.wl_list_insert
    , Bindings.Wayland.Util.Generated.Safe.wl_list_remove
    , Bindings.Wayland.Util.Generated.Safe.wl_list_length
    , Bindings.Wayland.Util.Generated.Safe.wl_list_empty
    , Bindings.Wayland.Util.Generated.Safe.wl_list_insert_list
    , Bindings.Wayland.Util.Generated.Safe.wl_array_init
    , Bindings.Wayland.Util.Generated.Safe.wl_array_release
    , Bindings.Wayland.Util.Generated.Safe.wl_array_add
    , Bindings.Wayland.Util.Generated.Safe.wl_array_copy
    , Bindings.Wayland.Util.Generated.Safe.wl_fixed_to_double
    , Bindings.Wayland.Util.Generated.Safe.wl_fixed_from_double
    , Bindings.Wayland.Util.Generated.Safe.wl_fixed_to_int
    , Bindings.Wayland.Util.Generated.Safe.wl_fixed_from_int
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Wayland.Util.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <wayland-util.h>"
  , "void hs_bindgen_48987eef23c42a43 ("
  , "  struct wl_list *arg1"
  , ")"
  , "{"
  , "  (wl_list_init)(arg1);"
  , "}"
  , "void hs_bindgen_35d4fe47326a9243 ("
  , "  struct wl_list *arg1,"
  , "  struct wl_list *arg2"
  , ")"
  , "{"
  , "  (wl_list_insert)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_3036ee125f503c6a ("
  , "  struct wl_list *arg1"
  , ")"
  , "{"
  , "  (wl_list_remove)(arg1);"
  , "}"
  , "signed int hs_bindgen_7bebbbb355e5c9fc ("
  , "  struct wl_list const *arg1"
  , ")"
  , "{"
  , "  return (wl_list_length)(arg1);"
  , "}"
  , "signed int hs_bindgen_5cbda5ee934a87e5 ("
  , "  struct wl_list const *arg1"
  , ")"
  , "{"
  , "  return (wl_list_empty)(arg1);"
  , "}"
  , "void hs_bindgen_aabfd23c2a96fc46 ("
  , "  struct wl_list *arg1,"
  , "  struct wl_list *arg2"
  , ")"
  , "{"
  , "  (wl_list_insert_list)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_91b094a72dc18f0a ("
  , "  struct wl_array *arg1"
  , ")"
  , "{"
  , "  (wl_array_init)(arg1);"
  , "}"
  , "void hs_bindgen_7e80711d28064e64 ("
  , "  struct wl_array *arg1"
  , ")"
  , "{"
  , "  (wl_array_release)(arg1);"
  , "}"
  , "void *hs_bindgen_159a83d4a50d75c9 ("
  , "  struct wl_array *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return (wl_array_add)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_ac7d9a724e37b47e ("
  , "  struct wl_array *arg1,"
  , "  struct wl_array *arg2"
  , ")"
  , "{"
  , "  return (wl_array_copy)(arg1, arg2);"
  , "}"
  , "double hs_bindgen_eb4d4e3b08d38e65 ("
  , "  wl_fixed_t arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_to_double)(arg1);"
  , "}"
  , "wl_fixed_t hs_bindgen_4d156b25ba92ef8b ("
  , "  double arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_from_double)(arg1);"
  , "}"
  , "signed int hs_bindgen_84f5c13cec2717f9 ("
  , "  wl_fixed_t arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_to_int)(arg1);"
  , "}"
  , "wl_fixed_t hs_bindgen_4333a103fc8372e9 ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_from_int)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_list_init@
foreign import ccall safe "hs_bindgen_48987eef23c42a43" hs_bindgen_48987eef23c42a43_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_list_init@
hs_bindgen_48987eef23c42a43 ::
     RIP.Ptr Wl_list
  -> IO ()
hs_bindgen_48987eef23c42a43 =
  RIP.fromFFIType hs_bindgen_48987eef23c42a43_base

{-| __C declaration:__ @wl_list_init@

    __defined at:__ @wayland-util.h 319:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_init ::
     RIP.Ptr Wl_list
     -- ^ __C declaration:__ @list@
  -> IO ()
wl_list_init = hs_bindgen_48987eef23c42a43

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_list_insert@
foreign import ccall safe "hs_bindgen_35d4fe47326a9243" hs_bindgen_35d4fe47326a9243_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_list_insert@
hs_bindgen_35d4fe47326a9243 ::
     RIP.Ptr Wl_list
  -> RIP.Ptr Wl_list
  -> IO ()
hs_bindgen_35d4fe47326a9243 =
  RIP.fromFFIType hs_bindgen_35d4fe47326a9243_base

{-| __C declaration:__ @wl_list_insert@

    __defined at:__ @wayland-util.h 335:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_insert ::
     RIP.Ptr Wl_list
     -- ^ __C declaration:__ @list@
  -> RIP.Ptr Wl_list
     -- ^ __C declaration:__ @elm@
  -> IO ()
wl_list_insert = hs_bindgen_35d4fe47326a9243

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_list_remove@
foreign import ccall safe "hs_bindgen_3036ee125f503c6a" hs_bindgen_3036ee125f503c6a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_list_remove@
hs_bindgen_3036ee125f503c6a ::
     RIP.Ptr Wl_list
  -> IO ()
hs_bindgen_3036ee125f503c6a =
  RIP.fromFFIType hs_bindgen_3036ee125f503c6a_base

{-| __C declaration:__ @wl_list_remove@

    __defined at:__ @wayland-util.h 347:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_remove ::
     RIP.Ptr Wl_list
     -- ^ __C declaration:__ @elm@
  -> IO ()
wl_list_remove = hs_bindgen_3036ee125f503c6a

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_list_length@
foreign import ccall safe "hs_bindgen_7bebbbb355e5c9fc" hs_bindgen_7bebbbb355e5c9fc_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_list_length@
hs_bindgen_7bebbbb355e5c9fc ::
     PtrConst.PtrConst Wl_list
  -> IO RIP.CInt
hs_bindgen_7bebbbb355e5c9fc =
  RIP.fromFFIType hs_bindgen_7bebbbb355e5c9fc_base

{-| __C declaration:__ @wl_list_length@

    __defined at:__ @wayland-util.h 361:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_length ::
     PtrConst.PtrConst Wl_list
     -- ^ __C declaration:__ @list@
  -> IO RIP.CInt
wl_list_length = hs_bindgen_7bebbbb355e5c9fc

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_list_empty@
foreign import ccall safe "hs_bindgen_5cbda5ee934a87e5" hs_bindgen_5cbda5ee934a87e5_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_list_empty@
hs_bindgen_5cbda5ee934a87e5 ::
     PtrConst.PtrConst Wl_list
  -> IO RIP.CInt
hs_bindgen_5cbda5ee934a87e5 =
  RIP.fromFFIType hs_bindgen_5cbda5ee934a87e5_base

{-| __C declaration:__ @wl_list_empty@

    __defined at:__ @wayland-util.h 373:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_empty ::
     PtrConst.PtrConst Wl_list
     -- ^ __C declaration:__ @list@
  -> IO RIP.CInt
wl_list_empty = hs_bindgen_5cbda5ee934a87e5

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_list_insert_list@
foreign import ccall safe "hs_bindgen_aabfd23c2a96fc46" hs_bindgen_aabfd23c2a96fc46_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_list_insert_list@
hs_bindgen_aabfd23c2a96fc46 ::
     RIP.Ptr Wl_list
  -> RIP.Ptr Wl_list
  -> IO ()
hs_bindgen_aabfd23c2a96fc46 =
  RIP.fromFFIType hs_bindgen_aabfd23c2a96fc46_base

{-| __C declaration:__ @wl_list_insert_list@

    __defined at:__ @wayland-util.h 387:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_insert_list ::
     RIP.Ptr Wl_list
     -- ^ __C declaration:__ @list@
  -> RIP.Ptr Wl_list
     -- ^ __C declaration:__ @other@
  -> IO ()
wl_list_insert_list = hs_bindgen_aabfd23c2a96fc46

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_array_init@
foreign import ccall safe "hs_bindgen_91b094a72dc18f0a" hs_bindgen_91b094a72dc18f0a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_array_init@
hs_bindgen_91b094a72dc18f0a ::
     RIP.Ptr Wl_array
  -> IO ()
hs_bindgen_91b094a72dc18f0a =
  RIP.fromFFIType hs_bindgen_91b094a72dc18f0a_base

{-| __C declaration:__ @wl_array_init@

    __defined at:__ @wayland-util.h 552:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_init ::
     RIP.Ptr Wl_array
     -- ^ __C declaration:__ @array@
  -> IO ()
wl_array_init = hs_bindgen_91b094a72dc18f0a

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_array_release@
foreign import ccall safe "hs_bindgen_7e80711d28064e64" hs_bindgen_7e80711d28064e64_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_array_release@
hs_bindgen_7e80711d28064e64 ::
     RIP.Ptr Wl_array
  -> IO ()
hs_bindgen_7e80711d28064e64 =
  RIP.fromFFIType hs_bindgen_7e80711d28064e64_base

{-| __C declaration:__ @wl_array_release@

    __defined at:__ @wayland-util.h 564:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_release ::
     RIP.Ptr Wl_array
     -- ^ __C declaration:__ @array@
  -> IO ()
wl_array_release = hs_bindgen_7e80711d28064e64

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_array_add@
foreign import ccall safe "hs_bindgen_159a83d4a50d75c9" hs_bindgen_159a83d4a50d75c9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_array_add@
hs_bindgen_159a83d4a50d75c9 ::
     RIP.Ptr Wl_array
  -> HsBindgen.Runtime.LibC.CSize
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_159a83d4a50d75c9 =
  RIP.fromFFIType hs_bindgen_159a83d4a50d75c9_base

{-| __C declaration:__ @wl_array_add@

    __defined at:__ @wayland-util.h 578:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_add ::
     RIP.Ptr Wl_array
     -- ^ __C declaration:__ @array@
  -> HsBindgen.Runtime.LibC.CSize
     -- ^ __C declaration:__ @size@
  -> IO (RIP.Ptr RIP.Void)
wl_array_add = hs_bindgen_159a83d4a50d75c9

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_array_copy@
foreign import ccall safe "hs_bindgen_ac7d9a724e37b47e" hs_bindgen_ac7d9a724e37b47e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_array_copy@
hs_bindgen_ac7d9a724e37b47e ::
     RIP.Ptr Wl_array
  -> RIP.Ptr Wl_array
  -> IO RIP.CInt
hs_bindgen_ac7d9a724e37b47e =
  RIP.fromFFIType hs_bindgen_ac7d9a724e37b47e_base

{-| __C declaration:__ @wl_array_copy@

    __defined at:__ @wayland-util.h 591:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_copy ::
     RIP.Ptr Wl_array
     -- ^ __C declaration:__ @array@
  -> RIP.Ptr Wl_array
     -- ^ __C declaration:__ @source@
  -> IO RIP.CInt
wl_array_copy = hs_bindgen_ac7d9a724e37b47e

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_fixed_to_double@
foreign import ccall safe "hs_bindgen_eb4d4e3b08d38e65" hs_bindgen_eb4d4e3b08d38e65_base ::
     RIP.Int32
  -> IO Double

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_fixed_to_double@
hs_bindgen_eb4d4e3b08d38e65 ::
     Wl_fixed_t
  -> IO RIP.CDouble
hs_bindgen_eb4d4e3b08d38e65 =
  RIP.fromFFIType hs_bindgen_eb4d4e3b08d38e65_base

{-| __C declaration:__ @wl_fixed_to_double@

    __defined at:__ @wayland-util.h 631:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_to_double ::
     Wl_fixed_t
     -- ^ __C declaration:__ @f@
  -> IO RIP.CDouble
wl_fixed_to_double = hs_bindgen_eb4d4e3b08d38e65

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_fixed_from_double@
foreign import ccall safe "hs_bindgen_4d156b25ba92ef8b" hs_bindgen_4d156b25ba92ef8b_base ::
     Double
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_fixed_from_double@
hs_bindgen_4d156b25ba92ef8b ::
     RIP.CDouble
  -> IO Wl_fixed_t
hs_bindgen_4d156b25ba92ef8b =
  RIP.fromFFIType hs_bindgen_4d156b25ba92ef8b_base

{-| __C declaration:__ @wl_fixed_from_double@

    __defined at:__ @wayland-util.h 644:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_from_double ::
     RIP.CDouble
     -- ^ __C declaration:__ @d@
  -> IO Wl_fixed_t
wl_fixed_from_double = hs_bindgen_4d156b25ba92ef8b

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_fixed_to_int@
foreign import ccall safe "hs_bindgen_84f5c13cec2717f9" hs_bindgen_84f5c13cec2717f9_base ::
     RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_fixed_to_int@
hs_bindgen_84f5c13cec2717f9 ::
     Wl_fixed_t
  -> IO RIP.CInt
hs_bindgen_84f5c13cec2717f9 =
  RIP.fromFFIType hs_bindgen_84f5c13cec2717f9_base

{-| __C declaration:__ @wl_fixed_to_int@

    __defined at:__ @wayland-util.h 657:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_to_int ::
     Wl_fixed_t
     -- ^ __C declaration:__ @f@
  -> IO RIP.CInt
wl_fixed_to_int = hs_bindgen_84f5c13cec2717f9

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_fixed_from_int@
foreign import ccall safe "hs_bindgen_4333a103fc8372e9" hs_bindgen_4333a103fc8372e9_base ::
     RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Safe_wl_fixed_from_int@
hs_bindgen_4333a103fc8372e9 ::
     RIP.CInt
  -> IO Wl_fixed_t
hs_bindgen_4333a103fc8372e9 =
  RIP.fromFFIType hs_bindgen_4333a103fc8372e9_base

{-| __C declaration:__ @wl_fixed_from_int@

    __defined at:__ @wayland-util.h 670:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_from_int ::
     RIP.CInt
     -- ^ __C declaration:__ @i@
  -> IO Wl_fixed_t
wl_fixed_from_int = hs_bindgen_4333a103fc8372e9
