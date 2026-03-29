{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Wayland.Util.Safe
    ( Generated.Wayland.Util.Safe.wl_list_init
    , Generated.Wayland.Util.Safe.wl_list_insert
    , Generated.Wayland.Util.Safe.wl_list_remove
    , Generated.Wayland.Util.Safe.wl_list_length
    , Generated.Wayland.Util.Safe.wl_list_empty
    , Generated.Wayland.Util.Safe.wl_list_insert_list
    , Generated.Wayland.Util.Safe.wl_array_init
    , Generated.Wayland.Util.Safe.wl_array_release
    , Generated.Wayland.Util.Safe.wl_array_add
    , Generated.Wayland.Util.Safe.wl_array_copy
    , Generated.Wayland.Util.Safe.wl_fixed_to_double
    , Generated.Wayland.Util.Safe.wl_fixed_from_double
    , Generated.Wayland.Util.Safe.wl_fixed_to_int
    , Generated.Wayland.Util.Safe.wl_fixed_from_int
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Wayland.Util

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <wayland-util.h>"
  , "void hs_bindgen_e93477c6f081a782 ("
  , "  struct wl_list *arg1"
  , ")"
  , "{"
  , "  (wl_list_init)(arg1);"
  , "}"
  , "void hs_bindgen_85bf1a6a0964db8d ("
  , "  struct wl_list *arg1,"
  , "  struct wl_list *arg2"
  , ")"
  , "{"
  , "  (wl_list_insert)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_18ac73960333ec3a ("
  , "  struct wl_list *arg1"
  , ")"
  , "{"
  , "  (wl_list_remove)(arg1);"
  , "}"
  , "signed int hs_bindgen_15c82b0b6366cb6a ("
  , "  struct wl_list const *arg1"
  , ")"
  , "{"
  , "  return (wl_list_length)(arg1);"
  , "}"
  , "signed int hs_bindgen_6c6505e27bfc4226 ("
  , "  struct wl_list const *arg1"
  , ")"
  , "{"
  , "  return (wl_list_empty)(arg1);"
  , "}"
  , "void hs_bindgen_5b77e1f730cf4416 ("
  , "  struct wl_list *arg1,"
  , "  struct wl_list *arg2"
  , ")"
  , "{"
  , "  (wl_list_insert_list)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_0545f30b16047801 ("
  , "  struct wl_array *arg1"
  , ")"
  , "{"
  , "  (wl_array_init)(arg1);"
  , "}"
  , "void hs_bindgen_4f463bdff44a010e ("
  , "  struct wl_array *arg1"
  , ")"
  , "{"
  , "  (wl_array_release)(arg1);"
  , "}"
  , "void *hs_bindgen_4db20ff1170824f5 ("
  , "  struct wl_array *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return (wl_array_add)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_90186f883ed857b0 ("
  , "  struct wl_array *arg1,"
  , "  struct wl_array *arg2"
  , ")"
  , "{"
  , "  return (wl_array_copy)(arg1, arg2);"
  , "}"
  , "double hs_bindgen_766000b641f8780a ("
  , "  wl_fixed_t arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_to_double)(arg1);"
  , "}"
  , "wl_fixed_t hs_bindgen_d9e4ec141a113246 ("
  , "  double arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_from_double)(arg1);"
  , "}"
  , "signed int hs_bindgen_950eb487c40f174d ("
  , "  wl_fixed_t arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_to_int)(arg1);"
  , "}"
  , "wl_fixed_t hs_bindgen_cec548c552826897 ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_from_int)(arg1);"
  , "}"
  ]))

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_list_init@
foreign import ccall safe "hs_bindgen_e93477c6f081a782" hs_bindgen_e93477c6f081a782_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_list_init@
hs_bindgen_e93477c6f081a782 ::
     RIP.Ptr WlList
  -> IO ()
hs_bindgen_e93477c6f081a782 =
  RIP.fromFFIType hs_bindgen_e93477c6f081a782_base

{-| __C declaration:__ @wl_list_init@

    __defined at:__ @wayland-util.h 319:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_init ::
     RIP.Ptr WlList
     -- ^ __C declaration:__ @list@
  -> IO ()
wl_list_init = hs_bindgen_e93477c6f081a782

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_list_insert@
foreign import ccall safe "hs_bindgen_85bf1a6a0964db8d" hs_bindgen_85bf1a6a0964db8d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_list_insert@
hs_bindgen_85bf1a6a0964db8d ::
     RIP.Ptr WlList
  -> RIP.Ptr WlList
  -> IO ()
hs_bindgen_85bf1a6a0964db8d =
  RIP.fromFFIType hs_bindgen_85bf1a6a0964db8d_base

{-| __C declaration:__ @wl_list_insert@

    __defined at:__ @wayland-util.h 335:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_insert ::
     RIP.Ptr WlList
     -- ^ __C declaration:__ @list@
  -> RIP.Ptr WlList
     -- ^ __C declaration:__ @elm@
  -> IO ()
wl_list_insert = hs_bindgen_85bf1a6a0964db8d

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_list_remove@
foreign import ccall safe "hs_bindgen_18ac73960333ec3a" hs_bindgen_18ac73960333ec3a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_list_remove@
hs_bindgen_18ac73960333ec3a ::
     RIP.Ptr WlList
  -> IO ()
hs_bindgen_18ac73960333ec3a =
  RIP.fromFFIType hs_bindgen_18ac73960333ec3a_base

{-| __C declaration:__ @wl_list_remove@

    __defined at:__ @wayland-util.h 347:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_remove ::
     RIP.Ptr WlList
     -- ^ __C declaration:__ @elm@
  -> IO ()
wl_list_remove = hs_bindgen_18ac73960333ec3a

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_list_length@
foreign import ccall safe "hs_bindgen_15c82b0b6366cb6a" hs_bindgen_15c82b0b6366cb6a_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_list_length@
hs_bindgen_15c82b0b6366cb6a ::
     PtrConst.PtrConst WlList
  -> IO RIP.CInt
hs_bindgen_15c82b0b6366cb6a =
  RIP.fromFFIType hs_bindgen_15c82b0b6366cb6a_base

{-| __C declaration:__ @wl_list_length@

    __defined at:__ @wayland-util.h 361:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_length ::
     PtrConst.PtrConst WlList
     -- ^ __C declaration:__ @list@
  -> IO RIP.CInt
wl_list_length = hs_bindgen_15c82b0b6366cb6a

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_list_empty@
foreign import ccall safe "hs_bindgen_6c6505e27bfc4226" hs_bindgen_6c6505e27bfc4226_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_list_empty@
hs_bindgen_6c6505e27bfc4226 ::
     PtrConst.PtrConst WlList
  -> IO RIP.CInt
hs_bindgen_6c6505e27bfc4226 =
  RIP.fromFFIType hs_bindgen_6c6505e27bfc4226_base

{-| __C declaration:__ @wl_list_empty@

    __defined at:__ @wayland-util.h 373:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_empty ::
     PtrConst.PtrConst WlList
     -- ^ __C declaration:__ @list@
  -> IO RIP.CInt
wl_list_empty = hs_bindgen_6c6505e27bfc4226

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_list_insert_list@
foreign import ccall safe "hs_bindgen_5b77e1f730cf4416" hs_bindgen_5b77e1f730cf4416_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_list_insert_list@
hs_bindgen_5b77e1f730cf4416 ::
     RIP.Ptr WlList
  -> RIP.Ptr WlList
  -> IO ()
hs_bindgen_5b77e1f730cf4416 =
  RIP.fromFFIType hs_bindgen_5b77e1f730cf4416_base

{-| __C declaration:__ @wl_list_insert_list@

    __defined at:__ @wayland-util.h 387:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_insert_list ::
     RIP.Ptr WlList
     -- ^ __C declaration:__ @list@
  -> RIP.Ptr WlList
     -- ^ __C declaration:__ @other@
  -> IO ()
wl_list_insert_list = hs_bindgen_5b77e1f730cf4416

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_array_init@
foreign import ccall safe "hs_bindgen_0545f30b16047801" hs_bindgen_0545f30b16047801_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_array_init@
hs_bindgen_0545f30b16047801 ::
     RIP.Ptr WlArray
  -> IO ()
hs_bindgen_0545f30b16047801 =
  RIP.fromFFIType hs_bindgen_0545f30b16047801_base

{-| __C declaration:__ @wl_array_init@

    __defined at:__ @wayland-util.h 552:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_init ::
     RIP.Ptr WlArray
     -- ^ __C declaration:__ @array@
  -> IO ()
wl_array_init = hs_bindgen_0545f30b16047801

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_array_release@
foreign import ccall safe "hs_bindgen_4f463bdff44a010e" hs_bindgen_4f463bdff44a010e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_array_release@
hs_bindgen_4f463bdff44a010e ::
     RIP.Ptr WlArray
  -> IO ()
hs_bindgen_4f463bdff44a010e =
  RIP.fromFFIType hs_bindgen_4f463bdff44a010e_base

{-| __C declaration:__ @wl_array_release@

    __defined at:__ @wayland-util.h 564:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_release ::
     RIP.Ptr WlArray
     -- ^ __C declaration:__ @array@
  -> IO ()
wl_array_release = hs_bindgen_4f463bdff44a010e

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_array_add@
foreign import ccall safe "hs_bindgen_4db20ff1170824f5" hs_bindgen_4db20ff1170824f5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_array_add@
hs_bindgen_4db20ff1170824f5 ::
     RIP.Ptr WlArray
  -> HsBindgen.Runtime.LibC.CSize
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_4db20ff1170824f5 =
  RIP.fromFFIType hs_bindgen_4db20ff1170824f5_base

{-| __C declaration:__ @wl_array_add@

    __defined at:__ @wayland-util.h 578:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_add ::
     RIP.Ptr WlArray
     -- ^ __C declaration:__ @array@
  -> HsBindgen.Runtime.LibC.CSize
     -- ^ __C declaration:__ @size@
  -> IO (RIP.Ptr RIP.Void)
wl_array_add = hs_bindgen_4db20ff1170824f5

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_array_copy@
foreign import ccall safe "hs_bindgen_90186f883ed857b0" hs_bindgen_90186f883ed857b0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_array_copy@
hs_bindgen_90186f883ed857b0 ::
     RIP.Ptr WlArray
  -> RIP.Ptr WlArray
  -> IO RIP.CInt
hs_bindgen_90186f883ed857b0 =
  RIP.fromFFIType hs_bindgen_90186f883ed857b0_base

{-| __C declaration:__ @wl_array_copy@

    __defined at:__ @wayland-util.h 591:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_copy ::
     RIP.Ptr WlArray
     -- ^ __C declaration:__ @array@
  -> RIP.Ptr WlArray
     -- ^ __C declaration:__ @source@
  -> IO RIP.CInt
wl_array_copy = hs_bindgen_90186f883ed857b0

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_fixed_to_double@
foreign import ccall safe "hs_bindgen_766000b641f8780a" hs_bindgen_766000b641f8780a_base ::
     RIP.Int32
  -> IO Double

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_fixed_to_double@
hs_bindgen_766000b641f8780a ::
     Wl_fixed_t
  -> IO RIP.CDouble
hs_bindgen_766000b641f8780a =
  RIP.fromFFIType hs_bindgen_766000b641f8780a_base

{-| __C declaration:__ @wl_fixed_to_double@

    __defined at:__ @wayland-util.h 631:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_to_double ::
     Wl_fixed_t
     -- ^ __C declaration:__ @f@
  -> IO RIP.CDouble
wl_fixed_to_double = hs_bindgen_766000b641f8780a

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_fixed_from_double@
foreign import ccall safe "hs_bindgen_d9e4ec141a113246" hs_bindgen_d9e4ec141a113246_base ::
     Double
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_fixed_from_double@
hs_bindgen_d9e4ec141a113246 ::
     RIP.CDouble
  -> IO Wl_fixed_t
hs_bindgen_d9e4ec141a113246 =
  RIP.fromFFIType hs_bindgen_d9e4ec141a113246_base

{-| __C declaration:__ @wl_fixed_from_double@

    __defined at:__ @wayland-util.h 644:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_from_double ::
     RIP.CDouble
     -- ^ __C declaration:__ @d@
  -> IO Wl_fixed_t
wl_fixed_from_double = hs_bindgen_d9e4ec141a113246

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_fixed_to_int@
foreign import ccall safe "hs_bindgen_950eb487c40f174d" hs_bindgen_950eb487c40f174d_base ::
     RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_fixed_to_int@
hs_bindgen_950eb487c40f174d ::
     Wl_fixed_t
  -> IO RIP.CInt
hs_bindgen_950eb487c40f174d =
  RIP.fromFFIType hs_bindgen_950eb487c40f174d_base

{-| __C declaration:__ @wl_fixed_to_int@

    __defined at:__ @wayland-util.h 657:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_to_int ::
     Wl_fixed_t
     -- ^ __C declaration:__ @f@
  -> IO RIP.CInt
wl_fixed_to_int = hs_bindgen_950eb487c40f174d

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_fixed_from_int@
foreign import ccall safe "hs_bindgen_cec548c552826897" hs_bindgen_cec548c552826897_base ::
     RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Safe_wl_fixed_from_int@
hs_bindgen_cec548c552826897 ::
     RIP.CInt
  -> IO Wl_fixed_t
hs_bindgen_cec548c552826897 =
  RIP.fromFFIType hs_bindgen_cec548c552826897_base

{-| __C declaration:__ @wl_fixed_from_int@

    __defined at:__ @wayland-util.h 670:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_from_int ::
     RIP.CInt
     -- ^ __C declaration:__ @i@
  -> IO Wl_fixed_t
wl_fixed_from_int = hs_bindgen_cec548c552826897
