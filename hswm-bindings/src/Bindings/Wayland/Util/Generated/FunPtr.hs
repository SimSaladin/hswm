{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.Util.Generated.FunPtr
    ( Bindings.Wayland.Util.Generated.FunPtr.wl_list_init
    , Bindings.Wayland.Util.Generated.FunPtr.wl_list_insert
    , Bindings.Wayland.Util.Generated.FunPtr.wl_list_remove
    , Bindings.Wayland.Util.Generated.FunPtr.wl_list_length
    , Bindings.Wayland.Util.Generated.FunPtr.wl_list_empty
    , Bindings.Wayland.Util.Generated.FunPtr.wl_list_insert_list
    , Bindings.Wayland.Util.Generated.FunPtr.wl_array_init
    , Bindings.Wayland.Util.Generated.FunPtr.wl_array_release
    , Bindings.Wayland.Util.Generated.FunPtr.wl_array_add
    , Bindings.Wayland.Util.Generated.FunPtr.wl_array_copy
    , Bindings.Wayland.Util.Generated.FunPtr.wl_fixed_to_double
    , Bindings.Wayland.Util.Generated.FunPtr.wl_fixed_from_double
    , Bindings.Wayland.Util.Generated.FunPtr.wl_fixed_to_int
    , Bindings.Wayland.Util.Generated.FunPtr.wl_fixed_from_int
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Wayland.Util.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <wayland-util.h>"
  , "/* Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_list_init */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4f4fa3e4785e20a0 (void)) ("
  , "  struct wl_list *arg1"
  , ")"
  , "{"
  , "  return &wl_list_init;"
  , "}"
  , "/* Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_list_insert */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_467808a54a869ded (void)) ("
  , "  struct wl_list *arg1,"
  , "  struct wl_list *arg2"
  , ")"
  , "{"
  , "  return &wl_list_insert;"
  , "}"
  , "/* Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_list_remove */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6beb8d02eab33d61 (void)) ("
  , "  struct wl_list *arg1"
  , ")"
  , "{"
  , "  return &wl_list_remove;"
  , "}"
  , "/* Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_list_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_242265aceae3f027 (void)) ("
  , "  struct wl_list const *arg1"
  , ")"
  , "{"
  , "  return &wl_list_length;"
  , "}"
  , "/* Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_list_empty */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_19d1e8bd89f3ce7a (void)) ("
  , "  struct wl_list const *arg1"
  , ")"
  , "{"
  , "  return &wl_list_empty;"
  , "}"
  , "/* Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_list_insert_list */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c42e94b335bef5e6 (void)) ("
  , "  struct wl_list *arg1,"
  , "  struct wl_list *arg2"
  , ")"
  , "{"
  , "  return &wl_list_insert_list;"
  , "}"
  , "/* Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_array_init */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e6ed8d5f97895df2 (void)) ("
  , "  struct wl_array *arg1"
  , ")"
  , "{"
  , "  return &wl_array_init;"
  , "}"
  , "/* Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_array_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6e31e381425a2edf (void)) ("
  , "  struct wl_array *arg1"
  , ")"
  , "{"
  , "  return &wl_array_release;"
  , "}"
  , "/* Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_array_add */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_7dc3c4bc35c134a3 (void)) ("
  , "  struct wl_array *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &wl_array_add;"
  , "}"
  , "/* Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_array_copy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4a9a05a7857bbaf1 (void)) ("
  , "  struct wl_array *arg1,"
  , "  struct wl_array *arg2"
  , ")"
  , "{"
  , "  return &wl_array_copy;"
  , "}"
  , "/* Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_fixed_to_double */"
  , "__attribute__ ((const))"
  , "double (*hs_bindgen_98c1c012d9aac8d8 (void)) ("
  , "  wl_fixed_t arg1"
  , ")"
  , "{"
  , "  return &wl_fixed_to_double;"
  , "}"
  , "/* Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_fixed_from_double */"
  , "__attribute__ ((const))"
  , "wl_fixed_t (*hs_bindgen_cf286ddad32e32cd (void)) ("
  , "  double arg1"
  , ")"
  , "{"
  , "  return &wl_fixed_from_double;"
  , "}"
  , "/* Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_fixed_to_int */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d665c901b895b091 (void)) ("
  , "  wl_fixed_t arg1"
  , ")"
  , "{"
  , "  return &wl_fixed_to_int;"
  , "}"
  , "/* Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_fixed_from_int */"
  , "__attribute__ ((const))"
  , "wl_fixed_t (*hs_bindgen_c82f106d4345ce27 (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &wl_fixed_from_int;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_list_init@
foreign import ccall unsafe "hs_bindgen_4f4fa3e4785e20a0" hs_bindgen_4f4fa3e4785e20a0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_list_init@
hs_bindgen_4f4fa3e4785e20a0 :: IO (RIP.FunPtr (RIP.Ptr Wl_list -> IO ()))
hs_bindgen_4f4fa3e4785e20a0 =
  RIP.fromFFIType hs_bindgen_4f4fa3e4785e20a0_base

{-# NOINLINE wl_list_init #-}
{-| __C declaration:__ @wl_list_init@

    __defined at:__ @wayland-util.h 319:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_init :: RIP.FunPtr (RIP.Ptr Wl_list -> IO ())
wl_list_init =
  RIP.unsafePerformIO hs_bindgen_4f4fa3e4785e20a0

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_list_insert@
foreign import ccall unsafe "hs_bindgen_467808a54a869ded" hs_bindgen_467808a54a869ded_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_list_insert@
hs_bindgen_467808a54a869ded :: IO (RIP.FunPtr (RIP.Ptr Wl_list -> RIP.Ptr Wl_list -> IO ()))
hs_bindgen_467808a54a869ded =
  RIP.fromFFIType hs_bindgen_467808a54a869ded_base

{-# NOINLINE wl_list_insert #-}
{-| __C declaration:__ @wl_list_insert@

    __defined at:__ @wayland-util.h 335:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_insert :: RIP.FunPtr (RIP.Ptr Wl_list -> RIP.Ptr Wl_list -> IO ())
wl_list_insert =
  RIP.unsafePerformIO hs_bindgen_467808a54a869ded

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_list_remove@
foreign import ccall unsafe "hs_bindgen_6beb8d02eab33d61" hs_bindgen_6beb8d02eab33d61_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_list_remove@
hs_bindgen_6beb8d02eab33d61 :: IO (RIP.FunPtr (RIP.Ptr Wl_list -> IO ()))
hs_bindgen_6beb8d02eab33d61 =
  RIP.fromFFIType hs_bindgen_6beb8d02eab33d61_base

{-# NOINLINE wl_list_remove #-}
{-| __C declaration:__ @wl_list_remove@

    __defined at:__ @wayland-util.h 347:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_remove :: RIP.FunPtr (RIP.Ptr Wl_list -> IO ())
wl_list_remove =
  RIP.unsafePerformIO hs_bindgen_6beb8d02eab33d61

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_list_length@
foreign import ccall unsafe "hs_bindgen_242265aceae3f027" hs_bindgen_242265aceae3f027_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_list_length@
hs_bindgen_242265aceae3f027 :: IO (RIP.FunPtr (PtrConst.PtrConst Wl_list -> IO RIP.CInt))
hs_bindgen_242265aceae3f027 =
  RIP.fromFFIType hs_bindgen_242265aceae3f027_base

{-# NOINLINE wl_list_length #-}
{-| __C declaration:__ @wl_list_length@

    __defined at:__ @wayland-util.h 361:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_length :: RIP.FunPtr (PtrConst.PtrConst Wl_list -> IO RIP.CInt)
wl_list_length =
  RIP.unsafePerformIO hs_bindgen_242265aceae3f027

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_list_empty@
foreign import ccall unsafe "hs_bindgen_19d1e8bd89f3ce7a" hs_bindgen_19d1e8bd89f3ce7a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_list_empty@
hs_bindgen_19d1e8bd89f3ce7a :: IO (RIP.FunPtr (PtrConst.PtrConst Wl_list -> IO RIP.CInt))
hs_bindgen_19d1e8bd89f3ce7a =
  RIP.fromFFIType hs_bindgen_19d1e8bd89f3ce7a_base

{-# NOINLINE wl_list_empty #-}
{-| __C declaration:__ @wl_list_empty@

    __defined at:__ @wayland-util.h 373:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_empty :: RIP.FunPtr (PtrConst.PtrConst Wl_list -> IO RIP.CInt)
wl_list_empty =
  RIP.unsafePerformIO hs_bindgen_19d1e8bd89f3ce7a

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_list_insert_list@
foreign import ccall unsafe "hs_bindgen_c42e94b335bef5e6" hs_bindgen_c42e94b335bef5e6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_list_insert_list@
hs_bindgen_c42e94b335bef5e6 :: IO (RIP.FunPtr (RIP.Ptr Wl_list -> RIP.Ptr Wl_list -> IO ()))
hs_bindgen_c42e94b335bef5e6 =
  RIP.fromFFIType hs_bindgen_c42e94b335bef5e6_base

{-# NOINLINE wl_list_insert_list #-}
{-| __C declaration:__ @wl_list_insert_list@

    __defined at:__ @wayland-util.h 387:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_insert_list :: RIP.FunPtr (RIP.Ptr Wl_list -> RIP.Ptr Wl_list -> IO ())
wl_list_insert_list =
  RIP.unsafePerformIO hs_bindgen_c42e94b335bef5e6

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_array_init@
foreign import ccall unsafe "hs_bindgen_e6ed8d5f97895df2" hs_bindgen_e6ed8d5f97895df2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_array_init@
hs_bindgen_e6ed8d5f97895df2 :: IO (RIP.FunPtr (RIP.Ptr Wl_array -> IO ()))
hs_bindgen_e6ed8d5f97895df2 =
  RIP.fromFFIType hs_bindgen_e6ed8d5f97895df2_base

{-# NOINLINE wl_array_init #-}
{-| __C declaration:__ @wl_array_init@

    __defined at:__ @wayland-util.h 552:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_init :: RIP.FunPtr (RIP.Ptr Wl_array -> IO ())
wl_array_init =
  RIP.unsafePerformIO hs_bindgen_e6ed8d5f97895df2

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_array_release@
foreign import ccall unsafe "hs_bindgen_6e31e381425a2edf" hs_bindgen_6e31e381425a2edf_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_array_release@
hs_bindgen_6e31e381425a2edf :: IO (RIP.FunPtr (RIP.Ptr Wl_array -> IO ()))
hs_bindgen_6e31e381425a2edf =
  RIP.fromFFIType hs_bindgen_6e31e381425a2edf_base

{-# NOINLINE wl_array_release #-}
{-| __C declaration:__ @wl_array_release@

    __defined at:__ @wayland-util.h 564:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_release :: RIP.FunPtr (RIP.Ptr Wl_array -> IO ())
wl_array_release =
  RIP.unsafePerformIO hs_bindgen_6e31e381425a2edf

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_array_add@
foreign import ccall unsafe "hs_bindgen_7dc3c4bc35c134a3" hs_bindgen_7dc3c4bc35c134a3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_array_add@
hs_bindgen_7dc3c4bc35c134a3 :: IO (RIP.FunPtr (RIP.Ptr Wl_array -> HsBindgen.Runtime.LibC.CSize -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_7dc3c4bc35c134a3 =
  RIP.fromFFIType hs_bindgen_7dc3c4bc35c134a3_base

{-# NOINLINE wl_array_add #-}
{-| __C declaration:__ @wl_array_add@

    __defined at:__ @wayland-util.h 578:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_add :: RIP.FunPtr (RIP.Ptr Wl_array -> HsBindgen.Runtime.LibC.CSize -> IO (RIP.Ptr RIP.Void))
wl_array_add =
  RIP.unsafePerformIO hs_bindgen_7dc3c4bc35c134a3

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_array_copy@
foreign import ccall unsafe "hs_bindgen_4a9a05a7857bbaf1" hs_bindgen_4a9a05a7857bbaf1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_array_copy@
hs_bindgen_4a9a05a7857bbaf1 :: IO (RIP.FunPtr (RIP.Ptr Wl_array -> RIP.Ptr Wl_array -> IO RIP.CInt))
hs_bindgen_4a9a05a7857bbaf1 =
  RIP.fromFFIType hs_bindgen_4a9a05a7857bbaf1_base

{-# NOINLINE wl_array_copy #-}
{-| __C declaration:__ @wl_array_copy@

    __defined at:__ @wayland-util.h 591:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_copy :: RIP.FunPtr (RIP.Ptr Wl_array -> RIP.Ptr Wl_array -> IO RIP.CInt)
wl_array_copy =
  RIP.unsafePerformIO hs_bindgen_4a9a05a7857bbaf1

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_fixed_to_double@
foreign import ccall unsafe "hs_bindgen_98c1c012d9aac8d8" hs_bindgen_98c1c012d9aac8d8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_fixed_to_double@
hs_bindgen_98c1c012d9aac8d8 :: IO (RIP.FunPtr (Wl_fixed_t -> IO RIP.CDouble))
hs_bindgen_98c1c012d9aac8d8 =
  RIP.fromFFIType hs_bindgen_98c1c012d9aac8d8_base

{-# NOINLINE wl_fixed_to_double #-}
{-| Converts a fixed-point number to a floating-point number.

    [__@f@__]: Fixed-point number to convert

    __Returns:__ Floating-point representation of the fixed-point argument

    __C declaration:__ @wl_fixed_to_double@

    __defined at:__ @wayland-util.h 631:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_to_double :: RIP.FunPtr (Wl_fixed_t -> IO RIP.CDouble)
wl_fixed_to_double =
  RIP.unsafePerformIO hs_bindgen_98c1c012d9aac8d8

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_fixed_from_double@
foreign import ccall unsafe "hs_bindgen_cf286ddad32e32cd" hs_bindgen_cf286ddad32e32cd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_fixed_from_double@
hs_bindgen_cf286ddad32e32cd :: IO (RIP.FunPtr (RIP.CDouble -> IO Wl_fixed_t))
hs_bindgen_cf286ddad32e32cd =
  RIP.fromFFIType hs_bindgen_cf286ddad32e32cd_base

{-# NOINLINE wl_fixed_from_double #-}
{-| Converts a floating-point number to a fixed-point number.

    [__@d@__]: Floating-point number to convert

    __Returns:__ Fixed-point representation of the floating-point argument

    __C declaration:__ @wl_fixed_from_double@

    __defined at:__ @wayland-util.h 644:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_from_double :: RIP.FunPtr (RIP.CDouble -> IO Wl_fixed_t)
wl_fixed_from_double =
  RIP.unsafePerformIO hs_bindgen_cf286ddad32e32cd

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_fixed_to_int@
foreign import ccall unsafe "hs_bindgen_d665c901b895b091" hs_bindgen_d665c901b895b091_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_fixed_to_int@
hs_bindgen_d665c901b895b091 :: IO (RIP.FunPtr (Wl_fixed_t -> IO RIP.CInt))
hs_bindgen_d665c901b895b091 =
  RIP.fromFFIType hs_bindgen_d665c901b895b091_base

{-# NOINLINE wl_fixed_to_int #-}
{-| Converts a fixed-point number to an integer.

    [__@f@__]: Fixed-point number to convert

    __Returns:__ Integer component of the fixed-point argument

    __C declaration:__ @wl_fixed_to_int@

    __defined at:__ @wayland-util.h 657:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_to_int :: RIP.FunPtr (Wl_fixed_t -> IO RIP.CInt)
wl_fixed_to_int =
  RIP.unsafePerformIO hs_bindgen_d665c901b895b091

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_fixed_from_int@
foreign import ccall unsafe "hs_bindgen_c82f106d4345ce27" hs_bindgen_c82f106d4345ce27_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Util_Generated_Bindings.Wayland.Util.Generated_get_wl_fixed_from_int@
hs_bindgen_c82f106d4345ce27 :: IO (RIP.FunPtr (RIP.CInt -> IO Wl_fixed_t))
hs_bindgen_c82f106d4345ce27 =
  RIP.fromFFIType hs_bindgen_c82f106d4345ce27_base

{-# NOINLINE wl_fixed_from_int #-}
{-| Converts an integer to a fixed-point number.

    [__@i@__]: Integer to convert

    __Returns:__ Fixed-point representation of the integer argument

    __C declaration:__ @wl_fixed_from_int@

    __defined at:__ @wayland-util.h 670:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_from_int :: RIP.FunPtr (RIP.CInt -> IO Wl_fixed_t)
wl_fixed_from_int =
  RIP.unsafePerformIO hs_bindgen_c82f106d4345ce27
