{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Wayland.Util.Unsafe
    ( Generated.Wayland.Util.Unsafe.wl_list_init
    , Generated.Wayland.Util.Unsafe.wl_list_insert
    , Generated.Wayland.Util.Unsafe.wl_list_remove
    , Generated.Wayland.Util.Unsafe.wl_list_length
    , Generated.Wayland.Util.Unsafe.wl_list_empty
    , Generated.Wayland.Util.Unsafe.wl_list_insert_list
    , Generated.Wayland.Util.Unsafe.wl_array_init
    , Generated.Wayland.Util.Unsafe.wl_array_release
    , Generated.Wayland.Util.Unsafe.wl_array_add
    , Generated.Wayland.Util.Unsafe.wl_array_copy
    , Generated.Wayland.Util.Unsafe.wl_fixed_to_double
    , Generated.Wayland.Util.Unsafe.wl_fixed_from_double
    , Generated.Wayland.Util.Unsafe.wl_fixed_to_int
    , Generated.Wayland.Util.Unsafe.wl_fixed_from_int
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Wayland.Util

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <wayland-util.h>"
  , "void hs_bindgen_7afec5ce705beebe ("
  , "  struct wl_list *arg1"
  , ")"
  , "{"
  , "  (wl_list_init)(arg1);"
  , "}"
  , "void hs_bindgen_82ba52ef11d7857c ("
  , "  struct wl_list *arg1,"
  , "  struct wl_list *arg2"
  , ")"
  , "{"
  , "  (wl_list_insert)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_072322b8c4c8e831 ("
  , "  struct wl_list *arg1"
  , ")"
  , "{"
  , "  (wl_list_remove)(arg1);"
  , "}"
  , "signed int hs_bindgen_efc82895490be769 ("
  , "  struct wl_list const *arg1"
  , ")"
  , "{"
  , "  return (wl_list_length)(arg1);"
  , "}"
  , "signed int hs_bindgen_52740dccdf23e46a ("
  , "  struct wl_list const *arg1"
  , ")"
  , "{"
  , "  return (wl_list_empty)(arg1);"
  , "}"
  , "void hs_bindgen_ec6bbaa4b19d70ed ("
  , "  struct wl_list *arg1,"
  , "  struct wl_list *arg2"
  , ")"
  , "{"
  , "  (wl_list_insert_list)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_b532ee38f9f021ed ("
  , "  struct wl_array *arg1"
  , ")"
  , "{"
  , "  (wl_array_init)(arg1);"
  , "}"
  , "void hs_bindgen_5b40ab4eb6a12c1f ("
  , "  struct wl_array *arg1"
  , ")"
  , "{"
  , "  (wl_array_release)(arg1);"
  , "}"
  , "void *hs_bindgen_506256379f6f4248 ("
  , "  struct wl_array *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return (wl_array_add)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_f36c00bbe7b3aee0 ("
  , "  struct wl_array *arg1,"
  , "  struct wl_array *arg2"
  , ")"
  , "{"
  , "  return (wl_array_copy)(arg1, arg2);"
  , "}"
  , "double hs_bindgen_343f5cd9ae834851 ("
  , "  wl_fixed_t arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_to_double)(arg1);"
  , "}"
  , "wl_fixed_t hs_bindgen_365730dc76d57456 ("
  , "  double arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_from_double)(arg1);"
  , "}"
  , "signed int hs_bindgen_9919dfcd8dc26fa5 ("
  , "  wl_fixed_t arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_to_int)(arg1);"
  , "}"
  , "wl_fixed_t hs_bindgen_d82d27bbfb2c2865 ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_from_int)(arg1);"
  , "}"
  ]))

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_list_init@
foreign import ccall unsafe "hs_bindgen_7afec5ce705beebe" hs_bindgen_7afec5ce705beebe_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_list_init@
hs_bindgen_7afec5ce705beebe ::
     RIP.Ptr Wl_list
  -> IO ()
hs_bindgen_7afec5ce705beebe =
  RIP.fromFFIType hs_bindgen_7afec5ce705beebe_base

{-| __C declaration:__ @wl_list_init@

    __defined at:__ @wayland-util.h 319:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_init ::
     RIP.Ptr Wl_list
     -- ^ __C declaration:__ @list@
  -> IO ()
wl_list_init = hs_bindgen_7afec5ce705beebe

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_list_insert@
foreign import ccall unsafe "hs_bindgen_82ba52ef11d7857c" hs_bindgen_82ba52ef11d7857c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_list_insert@
hs_bindgen_82ba52ef11d7857c ::
     RIP.Ptr Wl_list
  -> RIP.Ptr Wl_list
  -> IO ()
hs_bindgen_82ba52ef11d7857c =
  RIP.fromFFIType hs_bindgen_82ba52ef11d7857c_base

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
wl_list_insert = hs_bindgen_82ba52ef11d7857c

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_list_remove@
foreign import ccall unsafe "hs_bindgen_072322b8c4c8e831" hs_bindgen_072322b8c4c8e831_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_list_remove@
hs_bindgen_072322b8c4c8e831 ::
     RIP.Ptr Wl_list
  -> IO ()
hs_bindgen_072322b8c4c8e831 =
  RIP.fromFFIType hs_bindgen_072322b8c4c8e831_base

{-| __C declaration:__ @wl_list_remove@

    __defined at:__ @wayland-util.h 347:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_remove ::
     RIP.Ptr Wl_list
     -- ^ __C declaration:__ @elm@
  -> IO ()
wl_list_remove = hs_bindgen_072322b8c4c8e831

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_list_length@
foreign import ccall unsafe "hs_bindgen_efc82895490be769" hs_bindgen_efc82895490be769_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_list_length@
hs_bindgen_efc82895490be769 ::
     PtrConst.PtrConst Wl_list
  -> IO RIP.CInt
hs_bindgen_efc82895490be769 =
  RIP.fromFFIType hs_bindgen_efc82895490be769_base

{-| __C declaration:__ @wl_list_length@

    __defined at:__ @wayland-util.h 361:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_length ::
     PtrConst.PtrConst Wl_list
     -- ^ __C declaration:__ @list@
  -> IO RIP.CInt
wl_list_length = hs_bindgen_efc82895490be769

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_list_empty@
foreign import ccall unsafe "hs_bindgen_52740dccdf23e46a" hs_bindgen_52740dccdf23e46a_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_list_empty@
hs_bindgen_52740dccdf23e46a ::
     PtrConst.PtrConst Wl_list
  -> IO RIP.CInt
hs_bindgen_52740dccdf23e46a =
  RIP.fromFFIType hs_bindgen_52740dccdf23e46a_base

{-| __C declaration:__ @wl_list_empty@

    __defined at:__ @wayland-util.h 373:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_empty ::
     PtrConst.PtrConst Wl_list
     -- ^ __C declaration:__ @list@
  -> IO RIP.CInt
wl_list_empty = hs_bindgen_52740dccdf23e46a

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_list_insert_list@
foreign import ccall unsafe "hs_bindgen_ec6bbaa4b19d70ed" hs_bindgen_ec6bbaa4b19d70ed_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_list_insert_list@
hs_bindgen_ec6bbaa4b19d70ed ::
     RIP.Ptr Wl_list
  -> RIP.Ptr Wl_list
  -> IO ()
hs_bindgen_ec6bbaa4b19d70ed =
  RIP.fromFFIType hs_bindgen_ec6bbaa4b19d70ed_base

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
wl_list_insert_list = hs_bindgen_ec6bbaa4b19d70ed

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_array_init@
foreign import ccall unsafe "hs_bindgen_b532ee38f9f021ed" hs_bindgen_b532ee38f9f021ed_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_array_init@
hs_bindgen_b532ee38f9f021ed ::
     RIP.Ptr Wl_array
  -> IO ()
hs_bindgen_b532ee38f9f021ed =
  RIP.fromFFIType hs_bindgen_b532ee38f9f021ed_base

{-| __C declaration:__ @wl_array_init@

    __defined at:__ @wayland-util.h 552:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_init ::
     RIP.Ptr Wl_array
     -- ^ __C declaration:__ @array@
  -> IO ()
wl_array_init = hs_bindgen_b532ee38f9f021ed

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_array_release@
foreign import ccall unsafe "hs_bindgen_5b40ab4eb6a12c1f" hs_bindgen_5b40ab4eb6a12c1f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_array_release@
hs_bindgen_5b40ab4eb6a12c1f ::
     RIP.Ptr Wl_array
  -> IO ()
hs_bindgen_5b40ab4eb6a12c1f =
  RIP.fromFFIType hs_bindgen_5b40ab4eb6a12c1f_base

{-| __C declaration:__ @wl_array_release@

    __defined at:__ @wayland-util.h 564:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_release ::
     RIP.Ptr Wl_array
     -- ^ __C declaration:__ @array@
  -> IO ()
wl_array_release = hs_bindgen_5b40ab4eb6a12c1f

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_array_add@
foreign import ccall unsafe "hs_bindgen_506256379f6f4248" hs_bindgen_506256379f6f4248_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_array_add@
hs_bindgen_506256379f6f4248 ::
     RIP.Ptr Wl_array
  -> HsBindgen.Runtime.LibC.CSize
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_506256379f6f4248 =
  RIP.fromFFIType hs_bindgen_506256379f6f4248_base

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
wl_array_add = hs_bindgen_506256379f6f4248

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_array_copy@
foreign import ccall unsafe "hs_bindgen_f36c00bbe7b3aee0" hs_bindgen_f36c00bbe7b3aee0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_array_copy@
hs_bindgen_f36c00bbe7b3aee0 ::
     RIP.Ptr Wl_array
  -> RIP.Ptr Wl_array
  -> IO RIP.CInt
hs_bindgen_f36c00bbe7b3aee0 =
  RIP.fromFFIType hs_bindgen_f36c00bbe7b3aee0_base

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
wl_array_copy = hs_bindgen_f36c00bbe7b3aee0

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_fixed_to_double@
foreign import ccall unsafe "hs_bindgen_343f5cd9ae834851" hs_bindgen_343f5cd9ae834851_base ::
     RIP.Int32
  -> IO Double

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_fixed_to_double@
hs_bindgen_343f5cd9ae834851 ::
     Wl_fixed_t
  -> IO RIP.CDouble
hs_bindgen_343f5cd9ae834851 =
  RIP.fromFFIType hs_bindgen_343f5cd9ae834851_base

{-| __C declaration:__ @wl_fixed_to_double@

    __defined at:__ @wayland-util.h 631:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_to_double ::
     Wl_fixed_t
     -- ^ __C declaration:__ @f@
  -> IO RIP.CDouble
wl_fixed_to_double = hs_bindgen_343f5cd9ae834851

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_fixed_from_double@
foreign import ccall unsafe "hs_bindgen_365730dc76d57456" hs_bindgen_365730dc76d57456_base ::
     Double
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_fixed_from_double@
hs_bindgen_365730dc76d57456 ::
     RIP.CDouble
  -> IO Wl_fixed_t
hs_bindgen_365730dc76d57456 =
  RIP.fromFFIType hs_bindgen_365730dc76d57456_base

{-| __C declaration:__ @wl_fixed_from_double@

    __defined at:__ @wayland-util.h 644:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_from_double ::
     RIP.CDouble
     -- ^ __C declaration:__ @d@
  -> IO Wl_fixed_t
wl_fixed_from_double = hs_bindgen_365730dc76d57456

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_fixed_to_int@
foreign import ccall unsafe "hs_bindgen_9919dfcd8dc26fa5" hs_bindgen_9919dfcd8dc26fa5_base ::
     RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_fixed_to_int@
hs_bindgen_9919dfcd8dc26fa5 ::
     Wl_fixed_t
  -> IO RIP.CInt
hs_bindgen_9919dfcd8dc26fa5 =
  RIP.fromFFIType hs_bindgen_9919dfcd8dc26fa5_base

{-| __C declaration:__ @wl_fixed_to_int@

    __defined at:__ @wayland-util.h 657:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_to_int ::
     Wl_fixed_t
     -- ^ __C declaration:__ @f@
  -> IO RIP.CInt
wl_fixed_to_int = hs_bindgen_9919dfcd8dc26fa5

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_fixed_from_int@
foreign import ccall unsafe "hs_bindgen_d82d27bbfb2c2865" hs_bindgen_d82d27bbfb2c2865_base ::
     RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_Unsafe_wl_fixed_from_int@
hs_bindgen_d82d27bbfb2c2865 ::
     RIP.CInt
  -> IO Wl_fixed_t
hs_bindgen_d82d27bbfb2c2865 =
  RIP.fromFFIType hs_bindgen_d82d27bbfb2c2865_base

{-| __C declaration:__ @wl_fixed_from_int@

    __defined at:__ @wayland-util.h 670:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_from_int ::
     RIP.CInt
     -- ^ __C declaration:__ @i@
  -> IO Wl_fixed_t
wl_fixed_from_int = hs_bindgen_d82d27bbfb2c2865
