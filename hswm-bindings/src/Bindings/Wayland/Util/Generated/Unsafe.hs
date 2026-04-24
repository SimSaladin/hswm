{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.Util.Generated.Unsafe
    ( Bindings.Wayland.Util.Generated.Unsafe.wl_list_init
    , Bindings.Wayland.Util.Generated.Unsafe.wl_list_insert
    , Bindings.Wayland.Util.Generated.Unsafe.wl_list_remove
    , Bindings.Wayland.Util.Generated.Unsafe.wl_list_length
    , Bindings.Wayland.Util.Generated.Unsafe.wl_list_empty
    , Bindings.Wayland.Util.Generated.Unsafe.wl_list_insert_list
    , Bindings.Wayland.Util.Generated.Unsafe.wl_array_init
    , Bindings.Wayland.Util.Generated.Unsafe.wl_array_release
    , Bindings.Wayland.Util.Generated.Unsafe.wl_array_add
    , Bindings.Wayland.Util.Generated.Unsafe.wl_array_copy
    , Bindings.Wayland.Util.Generated.Unsafe.wl_fixed_to_double
    , Bindings.Wayland.Util.Generated.Unsafe.wl_fixed_from_double
    , Bindings.Wayland.Util.Generated.Unsafe.wl_fixed_to_int
    , Bindings.Wayland.Util.Generated.Unsafe.wl_fixed_from_int
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Wayland.Util.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <wayland-util.h>"
  , "void hs_bindgen_d2128f46857c382f ("
  , "  struct wl_list *arg1"
  , ")"
  , "{"
  , "  (wl_list_init)(arg1);"
  , "}"
  , "void hs_bindgen_fc63e3924c14a899 ("
  , "  struct wl_list *arg1,"
  , "  struct wl_list *arg2"
  , ")"
  , "{"
  , "  (wl_list_insert)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_69b4d6546e853af6 ("
  , "  struct wl_list *arg1"
  , ")"
  , "{"
  , "  (wl_list_remove)(arg1);"
  , "}"
  , "signed int hs_bindgen_f1549ab995152b0f ("
  , "  struct wl_list const *arg1"
  , ")"
  , "{"
  , "  return (wl_list_length)(arg1);"
  , "}"
  , "signed int hs_bindgen_22aca65ea55f054b ("
  , "  struct wl_list const *arg1"
  , ")"
  , "{"
  , "  return (wl_list_empty)(arg1);"
  , "}"
  , "void hs_bindgen_51a8bc54a816723b ("
  , "  struct wl_list *arg1,"
  , "  struct wl_list *arg2"
  , ")"
  , "{"
  , "  (wl_list_insert_list)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_ec602fc8830505aa ("
  , "  struct wl_array *arg1"
  , ")"
  , "{"
  , "  (wl_array_init)(arg1);"
  , "}"
  , "void hs_bindgen_c070990738e101a8 ("
  , "  struct wl_array *arg1"
  , ")"
  , "{"
  , "  (wl_array_release)(arg1);"
  , "}"
  , "void *hs_bindgen_5e6fa9e4d0301c10 ("
  , "  struct wl_array *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return (wl_array_add)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_9fe6bf71ff04a527 ("
  , "  struct wl_array *arg1,"
  , "  struct wl_array *arg2"
  , ")"
  , "{"
  , "  return (wl_array_copy)(arg1, arg2);"
  , "}"
  , "double hs_bindgen_748f3a86317d5de3 ("
  , "  wl_fixed_t arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_to_double)(arg1);"
  , "}"
  , "wl_fixed_t hs_bindgen_306db2b852eb59c4 ("
  , "  double arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_from_double)(arg1);"
  , "}"
  , "signed int hs_bindgen_8f29cc6304537604 ("
  , "  wl_fixed_t arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_to_int)(arg1);"
  , "}"
  , "wl_fixed_t hs_bindgen_a4db3c1f47a2ad8c ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_from_int)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_list_init@
foreign import ccall unsafe "hs_bindgen_d2128f46857c382f" hs_bindgen_d2128f46857c382f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_list_init@
hs_bindgen_d2128f46857c382f ::
     RIP.Ptr Wl_list
  -> IO ()
hs_bindgen_d2128f46857c382f =
  RIP.fromFFIType hs_bindgen_d2128f46857c382f_base

{-| __C declaration:__ @wl_list_init@

    __defined at:__ @wayland-util.h 319:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_init ::
     RIP.Ptr Wl_list
     -- ^ __C declaration:__ @list@
  -> IO ()
wl_list_init = hs_bindgen_d2128f46857c382f

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_list_insert@
foreign import ccall unsafe "hs_bindgen_fc63e3924c14a899" hs_bindgen_fc63e3924c14a899_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_list_insert@
hs_bindgen_fc63e3924c14a899 ::
     RIP.Ptr Wl_list
  -> RIP.Ptr Wl_list
  -> IO ()
hs_bindgen_fc63e3924c14a899 =
  RIP.fromFFIType hs_bindgen_fc63e3924c14a899_base

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
wl_list_insert = hs_bindgen_fc63e3924c14a899

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_list_remove@
foreign import ccall unsafe "hs_bindgen_69b4d6546e853af6" hs_bindgen_69b4d6546e853af6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_list_remove@
hs_bindgen_69b4d6546e853af6 ::
     RIP.Ptr Wl_list
  -> IO ()
hs_bindgen_69b4d6546e853af6 =
  RIP.fromFFIType hs_bindgen_69b4d6546e853af6_base

{-| __C declaration:__ @wl_list_remove@

    __defined at:__ @wayland-util.h 347:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_remove ::
     RIP.Ptr Wl_list
     -- ^ __C declaration:__ @elm@
  -> IO ()
wl_list_remove = hs_bindgen_69b4d6546e853af6

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_list_length@
foreign import ccall unsafe "hs_bindgen_f1549ab995152b0f" hs_bindgen_f1549ab995152b0f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_list_length@
hs_bindgen_f1549ab995152b0f ::
     PtrConst.PtrConst Wl_list
  -> IO RIP.CInt
hs_bindgen_f1549ab995152b0f =
  RIP.fromFFIType hs_bindgen_f1549ab995152b0f_base

{-| __C declaration:__ @wl_list_length@

    __defined at:__ @wayland-util.h 361:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_length ::
     PtrConst.PtrConst Wl_list
     -- ^ __C declaration:__ @list@
  -> IO RIP.CInt
wl_list_length = hs_bindgen_f1549ab995152b0f

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_list_empty@
foreign import ccall unsafe "hs_bindgen_22aca65ea55f054b" hs_bindgen_22aca65ea55f054b_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_list_empty@
hs_bindgen_22aca65ea55f054b ::
     PtrConst.PtrConst Wl_list
  -> IO RIP.CInt
hs_bindgen_22aca65ea55f054b =
  RIP.fromFFIType hs_bindgen_22aca65ea55f054b_base

{-| __C declaration:__ @wl_list_empty@

    __defined at:__ @wayland-util.h 373:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_empty ::
     PtrConst.PtrConst Wl_list
     -- ^ __C declaration:__ @list@
  -> IO RIP.CInt
wl_list_empty = hs_bindgen_22aca65ea55f054b

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_list_insert_list@
foreign import ccall unsafe "hs_bindgen_51a8bc54a816723b" hs_bindgen_51a8bc54a816723b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_list_insert_list@
hs_bindgen_51a8bc54a816723b ::
     RIP.Ptr Wl_list
  -> RIP.Ptr Wl_list
  -> IO ()
hs_bindgen_51a8bc54a816723b =
  RIP.fromFFIType hs_bindgen_51a8bc54a816723b_base

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
wl_list_insert_list = hs_bindgen_51a8bc54a816723b

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_array_init@
foreign import ccall unsafe "hs_bindgen_ec602fc8830505aa" hs_bindgen_ec602fc8830505aa_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_array_init@
hs_bindgen_ec602fc8830505aa ::
     RIP.Ptr Wl_array
  -> IO ()
hs_bindgen_ec602fc8830505aa =
  RIP.fromFFIType hs_bindgen_ec602fc8830505aa_base

{-| __C declaration:__ @wl_array_init@

    __defined at:__ @wayland-util.h 552:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_init ::
     RIP.Ptr Wl_array
     -- ^ __C declaration:__ @array@
  -> IO ()
wl_array_init = hs_bindgen_ec602fc8830505aa

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_array_release@
foreign import ccall unsafe "hs_bindgen_c070990738e101a8" hs_bindgen_c070990738e101a8_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_array_release@
hs_bindgen_c070990738e101a8 ::
     RIP.Ptr Wl_array
  -> IO ()
hs_bindgen_c070990738e101a8 =
  RIP.fromFFIType hs_bindgen_c070990738e101a8_base

{-| __C declaration:__ @wl_array_release@

    __defined at:__ @wayland-util.h 564:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_release ::
     RIP.Ptr Wl_array
     -- ^ __C declaration:__ @array@
  -> IO ()
wl_array_release = hs_bindgen_c070990738e101a8

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_array_add@
foreign import ccall unsafe "hs_bindgen_5e6fa9e4d0301c10" hs_bindgen_5e6fa9e4d0301c10_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_array_add@
hs_bindgen_5e6fa9e4d0301c10 ::
     RIP.Ptr Wl_array
  -> HsBindgen.Runtime.LibC.CSize
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_5e6fa9e4d0301c10 =
  RIP.fromFFIType hs_bindgen_5e6fa9e4d0301c10_base

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
wl_array_add = hs_bindgen_5e6fa9e4d0301c10

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_array_copy@
foreign import ccall unsafe "hs_bindgen_9fe6bf71ff04a527" hs_bindgen_9fe6bf71ff04a527_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_array_copy@
hs_bindgen_9fe6bf71ff04a527 ::
     RIP.Ptr Wl_array
  -> RIP.Ptr Wl_array
  -> IO RIP.CInt
hs_bindgen_9fe6bf71ff04a527 =
  RIP.fromFFIType hs_bindgen_9fe6bf71ff04a527_base

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
wl_array_copy = hs_bindgen_9fe6bf71ff04a527

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_fixed_to_double@
foreign import ccall unsafe "hs_bindgen_748f3a86317d5de3" hs_bindgen_748f3a86317d5de3_base ::
     RIP.Int32
  -> IO Double

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_fixed_to_double@
hs_bindgen_748f3a86317d5de3 ::
     Wl_fixed_t
  -> IO RIP.CDouble
hs_bindgen_748f3a86317d5de3 =
  RIP.fromFFIType hs_bindgen_748f3a86317d5de3_base

{-| Converts a fixed-point number to a floating-point number.

    [__@f@__]: Fixed-point number to convert

    __Returns:__ Floating-point representation of the fixed-point argument

    __C declaration:__ @wl_fixed_to_double@

    __defined at:__ @wayland-util.h 631:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_to_double ::
     Wl_fixed_t
     {- ^

          [__@f@__]: Fixed-point number to convert

          __C declaration:__ @f@
     -}
  -> IO RIP.CDouble
wl_fixed_to_double = hs_bindgen_748f3a86317d5de3

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_fixed_from_double@
foreign import ccall unsafe "hs_bindgen_306db2b852eb59c4" hs_bindgen_306db2b852eb59c4_base ::
     Double
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_fixed_from_double@
hs_bindgen_306db2b852eb59c4 ::
     RIP.CDouble
  -> IO Wl_fixed_t
hs_bindgen_306db2b852eb59c4 =
  RIP.fromFFIType hs_bindgen_306db2b852eb59c4_base

{-| Converts a floating-point number to a fixed-point number.

    [__@d@__]: Floating-point number to convert

    __Returns:__ Fixed-point representation of the floating-point argument

    __C declaration:__ @wl_fixed_from_double@

    __defined at:__ @wayland-util.h 644:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_from_double ::
     RIP.CDouble
     {- ^

          [__@d@__]: Floating-point number to convert

          __C declaration:__ @d@
     -}
  -> IO Wl_fixed_t
wl_fixed_from_double = hs_bindgen_306db2b852eb59c4

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_fixed_to_int@
foreign import ccall unsafe "hs_bindgen_8f29cc6304537604" hs_bindgen_8f29cc6304537604_base ::
     RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_fixed_to_int@
hs_bindgen_8f29cc6304537604 ::
     Wl_fixed_t
  -> IO RIP.CInt
hs_bindgen_8f29cc6304537604 =
  RIP.fromFFIType hs_bindgen_8f29cc6304537604_base

{-| Converts a fixed-point number to an integer.

    [__@f@__]: Fixed-point number to convert

    __Returns:__ Integer component of the fixed-point argument

    __C declaration:__ @wl_fixed_to_int@

    __defined at:__ @wayland-util.h 657:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_to_int ::
     Wl_fixed_t
     {- ^

          [__@f@__]: Fixed-point number to convert

          __C declaration:__ @f@
     -}
  -> IO RIP.CInt
wl_fixed_to_int = hs_bindgen_8f29cc6304537604

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_fixed_from_int@
foreign import ccall unsafe "hs_bindgen_a4db3c1f47a2ad8c" hs_bindgen_a4db3c1f47a2ad8c_base ::
     RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_Unsafe_wl_fixed_from_int@
hs_bindgen_a4db3c1f47a2ad8c ::
     RIP.CInt
  -> IO Wl_fixed_t
hs_bindgen_a4db3c1f47a2ad8c =
  RIP.fromFFIType hs_bindgen_a4db3c1f47a2ad8c_base

{-| Converts an integer to a fixed-point number.

    [__@i@__]: Integer to convert

    __Returns:__ Fixed-point representation of the integer argument

    __C declaration:__ @wl_fixed_from_int@

    __defined at:__ @wayland-util.h 670:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_from_int ::
     RIP.CInt
     {- ^

          [__@i@__]: Integer to convert

          __C declaration:__ @i@
     -}
  -> IO Wl_fixed_t
wl_fixed_from_int = hs_bindgen_a4db3c1f47a2ad8c
