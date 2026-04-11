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
  , "/* hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_list_init */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fec7a8afeeef41e0 (void)) ("
  , "  struct wl_list *arg1"
  , ")"
  , "{"
  , "  return &wl_list_init;"
  , "}"
  , "/* hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_list_insert */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_140f073f1fd47593 (void)) ("
  , "  struct wl_list *arg1,"
  , "  struct wl_list *arg2"
  , ")"
  , "{"
  , "  return &wl_list_insert;"
  , "}"
  , "/* hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_list_remove */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b399dfea650f3c70 (void)) ("
  , "  struct wl_list *arg1"
  , ")"
  , "{"
  , "  return &wl_list_remove;"
  , "}"
  , "/* hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_list_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_11884055e7d7554c (void)) ("
  , "  struct wl_list const *arg1"
  , ")"
  , "{"
  , "  return &wl_list_length;"
  , "}"
  , "/* hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_list_empty */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_79ec2a34739da705 (void)) ("
  , "  struct wl_list const *arg1"
  , ")"
  , "{"
  , "  return &wl_list_empty;"
  , "}"
  , "/* hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_list_insert_list */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c383bda63491dab7 (void)) ("
  , "  struct wl_list *arg1,"
  , "  struct wl_list *arg2"
  , ")"
  , "{"
  , "  return &wl_list_insert_list;"
  , "}"
  , "/* hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_array_init */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c1716d4bbc3e91b8 (void)) ("
  , "  struct wl_array *arg1"
  , ")"
  , "{"
  , "  return &wl_array_init;"
  , "}"
  , "/* hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_array_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8ff8ce08ab0f3bb2 (void)) ("
  , "  struct wl_array *arg1"
  , ")"
  , "{"
  , "  return &wl_array_release;"
  , "}"
  , "/* hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_array_add */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_b6e3c55d00e15cb6 (void)) ("
  , "  struct wl_array *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &wl_array_add;"
  , "}"
  , "/* hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_array_copy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_af8b654ff0549c02 (void)) ("
  , "  struct wl_array *arg1,"
  , "  struct wl_array *arg2"
  , ")"
  , "{"
  , "  return &wl_array_copy;"
  , "}"
  , "/* hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_fixed_to_double */"
  , "__attribute__ ((const))"
  , "double (*hs_bindgen_b57f5dfa821f218a (void)) ("
  , "  wl_fixed_t arg1"
  , ")"
  , "{"
  , "  return &wl_fixed_to_double;"
  , "}"
  , "/* hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_fixed_from_double */"
  , "__attribute__ ((const))"
  , "wl_fixed_t (*hs_bindgen_9fea61d5a866f6dd (void)) ("
  , "  double arg1"
  , ")"
  , "{"
  , "  return &wl_fixed_from_double;"
  , "}"
  , "/* hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_fixed_to_int */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e9589ef047f399a3 (void)) ("
  , "  wl_fixed_t arg1"
  , ")"
  , "{"
  , "  return &wl_fixed_to_int;"
  , "}"
  , "/* hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_fixed_from_int */"
  , "__attribute__ ((const))"
  , "wl_fixed_t (*hs_bindgen_295f0db765ca3ba3 (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &wl_fixed_from_int;"
  , "}"
  ]))

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_list_init@
foreign import ccall unsafe "hs_bindgen_fec7a8afeeef41e0" hs_bindgen_fec7a8afeeef41e0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_list_init@
hs_bindgen_fec7a8afeeef41e0 :: IO (RIP.FunPtr ((RIP.Ptr Wl_list) -> IO ()))
hs_bindgen_fec7a8afeeef41e0 =
  RIP.fromFFIType hs_bindgen_fec7a8afeeef41e0_base

{-# NOINLINE wl_list_init #-}
{-| __C declaration:__ @wl_list_init@

    __defined at:__ @wayland-util.h 319:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_init :: RIP.FunPtr ((RIP.Ptr Wl_list) -> IO ())
wl_list_init =
  RIP.unsafePerformIO hs_bindgen_fec7a8afeeef41e0

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_list_insert@
foreign import ccall unsafe "hs_bindgen_140f073f1fd47593" hs_bindgen_140f073f1fd47593_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_list_insert@
hs_bindgen_140f073f1fd47593 :: IO (RIP.FunPtr ((RIP.Ptr Wl_list) -> (RIP.Ptr Wl_list) -> IO ()))
hs_bindgen_140f073f1fd47593 =
  RIP.fromFFIType hs_bindgen_140f073f1fd47593_base

{-# NOINLINE wl_list_insert #-}
{-| __C declaration:__ @wl_list_insert@

    __defined at:__ @wayland-util.h 335:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_insert :: RIP.FunPtr ((RIP.Ptr Wl_list) -> (RIP.Ptr Wl_list) -> IO ())
wl_list_insert =
  RIP.unsafePerformIO hs_bindgen_140f073f1fd47593

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_list_remove@
foreign import ccall unsafe "hs_bindgen_b399dfea650f3c70" hs_bindgen_b399dfea650f3c70_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_list_remove@
hs_bindgen_b399dfea650f3c70 :: IO (RIP.FunPtr ((RIP.Ptr Wl_list) -> IO ()))
hs_bindgen_b399dfea650f3c70 =
  RIP.fromFFIType hs_bindgen_b399dfea650f3c70_base

{-# NOINLINE wl_list_remove #-}
{-| __C declaration:__ @wl_list_remove@

    __defined at:__ @wayland-util.h 347:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_remove :: RIP.FunPtr ((RIP.Ptr Wl_list) -> IO ())
wl_list_remove =
  RIP.unsafePerformIO hs_bindgen_b399dfea650f3c70

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_list_length@
foreign import ccall unsafe "hs_bindgen_11884055e7d7554c" hs_bindgen_11884055e7d7554c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_list_length@
hs_bindgen_11884055e7d7554c :: IO (RIP.FunPtr ((PtrConst.PtrConst Wl_list) -> IO RIP.CInt))
hs_bindgen_11884055e7d7554c =
  RIP.fromFFIType hs_bindgen_11884055e7d7554c_base

{-# NOINLINE wl_list_length #-}
{-| __C declaration:__ @wl_list_length@

    __defined at:__ @wayland-util.h 361:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_length :: RIP.FunPtr ((PtrConst.PtrConst Wl_list) -> IO RIP.CInt)
wl_list_length =
  RIP.unsafePerformIO hs_bindgen_11884055e7d7554c

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_list_empty@
foreign import ccall unsafe "hs_bindgen_79ec2a34739da705" hs_bindgen_79ec2a34739da705_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_list_empty@
hs_bindgen_79ec2a34739da705 :: IO (RIP.FunPtr ((PtrConst.PtrConst Wl_list) -> IO RIP.CInt))
hs_bindgen_79ec2a34739da705 =
  RIP.fromFFIType hs_bindgen_79ec2a34739da705_base

{-# NOINLINE wl_list_empty #-}
{-| __C declaration:__ @wl_list_empty@

    __defined at:__ @wayland-util.h 373:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_empty :: RIP.FunPtr ((PtrConst.PtrConst Wl_list) -> IO RIP.CInt)
wl_list_empty =
  RIP.unsafePerformIO hs_bindgen_79ec2a34739da705

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_list_insert_list@
foreign import ccall unsafe "hs_bindgen_c383bda63491dab7" hs_bindgen_c383bda63491dab7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_list_insert_list@
hs_bindgen_c383bda63491dab7 :: IO (RIP.FunPtr ((RIP.Ptr Wl_list) -> (RIP.Ptr Wl_list) -> IO ()))
hs_bindgen_c383bda63491dab7 =
  RIP.fromFFIType hs_bindgen_c383bda63491dab7_base

{-# NOINLINE wl_list_insert_list #-}
{-| __C declaration:__ @wl_list_insert_list@

    __defined at:__ @wayland-util.h 387:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_insert_list :: RIP.FunPtr ((RIP.Ptr Wl_list) -> (RIP.Ptr Wl_list) -> IO ())
wl_list_insert_list =
  RIP.unsafePerformIO hs_bindgen_c383bda63491dab7

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_array_init@
foreign import ccall unsafe "hs_bindgen_c1716d4bbc3e91b8" hs_bindgen_c1716d4bbc3e91b8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_array_init@
hs_bindgen_c1716d4bbc3e91b8 :: IO (RIP.FunPtr ((RIP.Ptr Wl_array) -> IO ()))
hs_bindgen_c1716d4bbc3e91b8 =
  RIP.fromFFIType hs_bindgen_c1716d4bbc3e91b8_base

{-# NOINLINE wl_array_init #-}
{-| __C declaration:__ @wl_array_init@

    __defined at:__ @wayland-util.h 552:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_init :: RIP.FunPtr ((RIP.Ptr Wl_array) -> IO ())
wl_array_init =
  RIP.unsafePerformIO hs_bindgen_c1716d4bbc3e91b8

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_array_release@
foreign import ccall unsafe "hs_bindgen_8ff8ce08ab0f3bb2" hs_bindgen_8ff8ce08ab0f3bb2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_array_release@
hs_bindgen_8ff8ce08ab0f3bb2 :: IO (RIP.FunPtr ((RIP.Ptr Wl_array) -> IO ()))
hs_bindgen_8ff8ce08ab0f3bb2 =
  RIP.fromFFIType hs_bindgen_8ff8ce08ab0f3bb2_base

{-# NOINLINE wl_array_release #-}
{-| __C declaration:__ @wl_array_release@

    __defined at:__ @wayland-util.h 564:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_release :: RIP.FunPtr ((RIP.Ptr Wl_array) -> IO ())
wl_array_release =
  RIP.unsafePerformIO hs_bindgen_8ff8ce08ab0f3bb2

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_array_add@
foreign import ccall unsafe "hs_bindgen_b6e3c55d00e15cb6" hs_bindgen_b6e3c55d00e15cb6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_array_add@
hs_bindgen_b6e3c55d00e15cb6 :: IO (RIP.FunPtr ((RIP.Ptr Wl_array) -> HsBindgen.Runtime.LibC.CSize -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_b6e3c55d00e15cb6 =
  RIP.fromFFIType hs_bindgen_b6e3c55d00e15cb6_base

{-# NOINLINE wl_array_add #-}
{-| __C declaration:__ @wl_array_add@

    __defined at:__ @wayland-util.h 578:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_add :: RIP.FunPtr ((RIP.Ptr Wl_array) -> HsBindgen.Runtime.LibC.CSize -> IO (RIP.Ptr RIP.Void))
wl_array_add =
  RIP.unsafePerformIO hs_bindgen_b6e3c55d00e15cb6

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_array_copy@
foreign import ccall unsafe "hs_bindgen_af8b654ff0549c02" hs_bindgen_af8b654ff0549c02_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_array_copy@
hs_bindgen_af8b654ff0549c02 :: IO (RIP.FunPtr ((RIP.Ptr Wl_array) -> (RIP.Ptr Wl_array) -> IO RIP.CInt))
hs_bindgen_af8b654ff0549c02 =
  RIP.fromFFIType hs_bindgen_af8b654ff0549c02_base

{-# NOINLINE wl_array_copy #-}
{-| __C declaration:__ @wl_array_copy@

    __defined at:__ @wayland-util.h 591:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_copy :: RIP.FunPtr ((RIP.Ptr Wl_array) -> (RIP.Ptr Wl_array) -> IO RIP.CInt)
wl_array_copy =
  RIP.unsafePerformIO hs_bindgen_af8b654ff0549c02

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_fixed_to_double@
foreign import ccall unsafe "hs_bindgen_b57f5dfa821f218a" hs_bindgen_b57f5dfa821f218a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_fixed_to_double@
hs_bindgen_b57f5dfa821f218a :: IO (RIP.FunPtr (Wl_fixed_t -> IO RIP.CDouble))
hs_bindgen_b57f5dfa821f218a =
  RIP.fromFFIType hs_bindgen_b57f5dfa821f218a_base

{-# NOINLINE wl_fixed_to_double #-}
{-| __C declaration:__ @wl_fixed_to_double@

    __defined at:__ @wayland-util.h 631:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_to_double :: RIP.FunPtr (Wl_fixed_t -> IO RIP.CDouble)
wl_fixed_to_double =
  RIP.unsafePerformIO hs_bindgen_b57f5dfa821f218a

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_fixed_from_double@
foreign import ccall unsafe "hs_bindgen_9fea61d5a866f6dd" hs_bindgen_9fea61d5a866f6dd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_fixed_from_double@
hs_bindgen_9fea61d5a866f6dd :: IO (RIP.FunPtr (RIP.CDouble -> IO Wl_fixed_t))
hs_bindgen_9fea61d5a866f6dd =
  RIP.fromFFIType hs_bindgen_9fea61d5a866f6dd_base

{-# NOINLINE wl_fixed_from_double #-}
{-| __C declaration:__ @wl_fixed_from_double@

    __defined at:__ @wayland-util.h 644:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_from_double :: RIP.FunPtr (RIP.CDouble -> IO Wl_fixed_t)
wl_fixed_from_double =
  RIP.unsafePerformIO hs_bindgen_9fea61d5a866f6dd

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_fixed_to_int@
foreign import ccall unsafe "hs_bindgen_e9589ef047f399a3" hs_bindgen_e9589ef047f399a3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_fixed_to_int@
hs_bindgen_e9589ef047f399a3 :: IO (RIP.FunPtr (Wl_fixed_t -> IO RIP.CInt))
hs_bindgen_e9589ef047f399a3 =
  RIP.fromFFIType hs_bindgen_e9589ef047f399a3_base

{-# NOINLINE wl_fixed_to_int #-}
{-| __C declaration:__ @wl_fixed_to_int@

    __defined at:__ @wayland-util.h 657:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_to_int :: RIP.FunPtr (Wl_fixed_t -> IO RIP.CInt)
wl_fixed_to_int =
  RIP.unsafePerformIO hs_bindgen_e9589ef047f399a3

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_fixed_from_int@
foreign import ccall unsafe "hs_bindgen_295f0db765ca3ba3" hs_bindgen_295f0db765ca3ba3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_get_wl_fixed_from_int@
hs_bindgen_295f0db765ca3ba3 :: IO (RIP.FunPtr (RIP.CInt -> IO Wl_fixed_t))
hs_bindgen_295f0db765ca3ba3 =
  RIP.fromFFIType hs_bindgen_295f0db765ca3ba3_base

{-# NOINLINE wl_fixed_from_int #-}
{-| __C declaration:__ @wl_fixed_from_int@

    __defined at:__ @wayland-util.h 670:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_from_int :: RIP.FunPtr (RIP.CInt -> IO Wl_fixed_t)
wl_fixed_from_int =
  RIP.unsafePerformIO hs_bindgen_295f0db765ca3ba3
