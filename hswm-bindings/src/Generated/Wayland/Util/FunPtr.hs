{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Wayland.Util.FunPtr
    ( Generated.Wayland.Util.FunPtr.wl_list_init
    , Generated.Wayland.Util.FunPtr.wl_list_insert
    , Generated.Wayland.Util.FunPtr.wl_list_remove
    , Generated.Wayland.Util.FunPtr.wl_list_length
    , Generated.Wayland.Util.FunPtr.wl_list_empty
    , Generated.Wayland.Util.FunPtr.wl_list_insert_list
    , Generated.Wayland.Util.FunPtr.wl_array_init
    , Generated.Wayland.Util.FunPtr.wl_array_release
    , Generated.Wayland.Util.FunPtr.wl_array_add
    , Generated.Wayland.Util.FunPtr.wl_array_copy
    , Generated.Wayland.Util.FunPtr.wl_fixed_to_double
    , Generated.Wayland.Util.FunPtr.wl_fixed_from_double
    , Generated.Wayland.Util.FunPtr.wl_fixed_to_int
    , Generated.Wayland.Util.FunPtr.wl_fixed_from_int
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Wayland.Util

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <wayland-util.h>"
  , "/* hswm_wl_util_Generated.Wayland.Util_get_wl_list_init */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e397184fa5ecec04 (void)) ("
  , "  struct wl_list *arg1"
  , ")"
  , "{"
  , "  return &wl_list_init;"
  , "}"
  , "/* hswm_wl_util_Generated.Wayland.Util_get_wl_list_insert */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4dac707cfc01c466 (void)) ("
  , "  struct wl_list *arg1,"
  , "  struct wl_list *arg2"
  , ")"
  , "{"
  , "  return &wl_list_insert;"
  , "}"
  , "/* hswm_wl_util_Generated.Wayland.Util_get_wl_list_remove */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7e7df4fe140b2894 (void)) ("
  , "  struct wl_list *arg1"
  , ")"
  , "{"
  , "  return &wl_list_remove;"
  , "}"
  , "/* hswm_wl_util_Generated.Wayland.Util_get_wl_list_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4ff8763da7180276 (void)) ("
  , "  struct wl_list const *arg1"
  , ")"
  , "{"
  , "  return &wl_list_length;"
  , "}"
  , "/* hswm_wl_util_Generated.Wayland.Util_get_wl_list_empty */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_59b044e06f57b41b (void)) ("
  , "  struct wl_list const *arg1"
  , ")"
  , "{"
  , "  return &wl_list_empty;"
  , "}"
  , "/* hswm_wl_util_Generated.Wayland.Util_get_wl_list_insert_list */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b364f9938090bee7 (void)) ("
  , "  struct wl_list *arg1,"
  , "  struct wl_list *arg2"
  , ")"
  , "{"
  , "  return &wl_list_insert_list;"
  , "}"
  , "/* hswm_wl_util_Generated.Wayland.Util_get_wl_array_init */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bd6e148982e327cb (void)) ("
  , "  struct wl_array *arg1"
  , ")"
  , "{"
  , "  return &wl_array_init;"
  , "}"
  , "/* hswm_wl_util_Generated.Wayland.Util_get_wl_array_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d94897fca8341dd7 (void)) ("
  , "  struct wl_array *arg1"
  , ")"
  , "{"
  , "  return &wl_array_release;"
  , "}"
  , "/* hswm_wl_util_Generated.Wayland.Util_get_wl_array_add */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_eb075fc075567153 (void)) ("
  , "  struct wl_array *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &wl_array_add;"
  , "}"
  , "/* hswm_wl_util_Generated.Wayland.Util_get_wl_array_copy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_03c299a97b6ba297 (void)) ("
  , "  struct wl_array *arg1,"
  , "  struct wl_array *arg2"
  , ")"
  , "{"
  , "  return &wl_array_copy;"
  , "}"
  , "/* hswm_wl_util_Generated.Wayland.Util_get_wl_fixed_to_double */"
  , "__attribute__ ((const))"
  , "double (*hs_bindgen_4e3b270d201d014a (void)) ("
  , "  wl_fixed_t arg1"
  , ")"
  , "{"
  , "  return &wl_fixed_to_double;"
  , "}"
  , "/* hswm_wl_util_Generated.Wayland.Util_get_wl_fixed_from_double */"
  , "__attribute__ ((const))"
  , "wl_fixed_t (*hs_bindgen_8bf7677e58fc452d (void)) ("
  , "  double arg1"
  , ")"
  , "{"
  , "  return &wl_fixed_from_double;"
  , "}"
  , "/* hswm_wl_util_Generated.Wayland.Util_get_wl_fixed_to_int */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6031ebbc8c437d8c (void)) ("
  , "  wl_fixed_t arg1"
  , ")"
  , "{"
  , "  return &wl_fixed_to_int;"
  , "}"
  , "/* hswm_wl_util_Generated.Wayland.Util_get_wl_fixed_from_int */"
  , "__attribute__ ((const))"
  , "wl_fixed_t (*hs_bindgen_bfe0e5b341ae9ab7 (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &wl_fixed_from_int;"
  , "}"
  ]))

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_list_init@
foreign import ccall unsafe "hs_bindgen_e397184fa5ecec04" hs_bindgen_e397184fa5ecec04_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_list_init@
hs_bindgen_e397184fa5ecec04 :: IO (RIP.FunPtr ((RIP.Ptr WlList) -> IO ()))
hs_bindgen_e397184fa5ecec04 =
  RIP.fromFFIType hs_bindgen_e397184fa5ecec04_base

{-# NOINLINE wl_list_init #-}
{-| __C declaration:__ @wl_list_init@

    __defined at:__ @wayland-util.h 319:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_init :: RIP.FunPtr ((RIP.Ptr WlList) -> IO ())
wl_list_init =
  RIP.unsafePerformIO hs_bindgen_e397184fa5ecec04

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_list_insert@
foreign import ccall unsafe "hs_bindgen_4dac707cfc01c466" hs_bindgen_4dac707cfc01c466_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_list_insert@
hs_bindgen_4dac707cfc01c466 :: IO (RIP.FunPtr ((RIP.Ptr WlList) -> (RIP.Ptr WlList) -> IO ()))
hs_bindgen_4dac707cfc01c466 =
  RIP.fromFFIType hs_bindgen_4dac707cfc01c466_base

{-# NOINLINE wl_list_insert #-}
{-| __C declaration:__ @wl_list_insert@

    __defined at:__ @wayland-util.h 335:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_insert :: RIP.FunPtr ((RIP.Ptr WlList) -> (RIP.Ptr WlList) -> IO ())
wl_list_insert =
  RIP.unsafePerformIO hs_bindgen_4dac707cfc01c466

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_list_remove@
foreign import ccall unsafe "hs_bindgen_7e7df4fe140b2894" hs_bindgen_7e7df4fe140b2894_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_list_remove@
hs_bindgen_7e7df4fe140b2894 :: IO (RIP.FunPtr ((RIP.Ptr WlList) -> IO ()))
hs_bindgen_7e7df4fe140b2894 =
  RIP.fromFFIType hs_bindgen_7e7df4fe140b2894_base

{-# NOINLINE wl_list_remove #-}
{-| __C declaration:__ @wl_list_remove@

    __defined at:__ @wayland-util.h 347:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_remove :: RIP.FunPtr ((RIP.Ptr WlList) -> IO ())
wl_list_remove =
  RIP.unsafePerformIO hs_bindgen_7e7df4fe140b2894

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_list_length@
foreign import ccall unsafe "hs_bindgen_4ff8763da7180276" hs_bindgen_4ff8763da7180276_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_list_length@
hs_bindgen_4ff8763da7180276 :: IO (RIP.FunPtr ((PtrConst.PtrConst WlList) -> IO RIP.CInt))
hs_bindgen_4ff8763da7180276 =
  RIP.fromFFIType hs_bindgen_4ff8763da7180276_base

{-# NOINLINE wl_list_length #-}
{-| __C declaration:__ @wl_list_length@

    __defined at:__ @wayland-util.h 361:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_length :: RIP.FunPtr ((PtrConst.PtrConst WlList) -> IO RIP.CInt)
wl_list_length =
  RIP.unsafePerformIO hs_bindgen_4ff8763da7180276

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_list_empty@
foreign import ccall unsafe "hs_bindgen_59b044e06f57b41b" hs_bindgen_59b044e06f57b41b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_list_empty@
hs_bindgen_59b044e06f57b41b :: IO (RIP.FunPtr ((PtrConst.PtrConst WlList) -> IO RIP.CInt))
hs_bindgen_59b044e06f57b41b =
  RIP.fromFFIType hs_bindgen_59b044e06f57b41b_base

{-# NOINLINE wl_list_empty #-}
{-| __C declaration:__ @wl_list_empty@

    __defined at:__ @wayland-util.h 373:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_empty :: RIP.FunPtr ((PtrConst.PtrConst WlList) -> IO RIP.CInt)
wl_list_empty =
  RIP.unsafePerformIO hs_bindgen_59b044e06f57b41b

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_list_insert_list@
foreign import ccall unsafe "hs_bindgen_b364f9938090bee7" hs_bindgen_b364f9938090bee7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_list_insert_list@
hs_bindgen_b364f9938090bee7 :: IO (RIP.FunPtr ((RIP.Ptr WlList) -> (RIP.Ptr WlList) -> IO ()))
hs_bindgen_b364f9938090bee7 =
  RIP.fromFFIType hs_bindgen_b364f9938090bee7_base

{-# NOINLINE wl_list_insert_list #-}
{-| __C declaration:__ @wl_list_insert_list@

    __defined at:__ @wayland-util.h 387:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_insert_list :: RIP.FunPtr ((RIP.Ptr WlList) -> (RIP.Ptr WlList) -> IO ())
wl_list_insert_list =
  RIP.unsafePerformIO hs_bindgen_b364f9938090bee7

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_array_init@
foreign import ccall unsafe "hs_bindgen_bd6e148982e327cb" hs_bindgen_bd6e148982e327cb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_array_init@
hs_bindgen_bd6e148982e327cb :: IO (RIP.FunPtr ((RIP.Ptr WlArray) -> IO ()))
hs_bindgen_bd6e148982e327cb =
  RIP.fromFFIType hs_bindgen_bd6e148982e327cb_base

{-# NOINLINE wl_array_init #-}
{-| __C declaration:__ @wl_array_init@

    __defined at:__ @wayland-util.h 552:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_init :: RIP.FunPtr ((RIP.Ptr WlArray) -> IO ())
wl_array_init =
  RIP.unsafePerformIO hs_bindgen_bd6e148982e327cb

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_array_release@
foreign import ccall unsafe "hs_bindgen_d94897fca8341dd7" hs_bindgen_d94897fca8341dd7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_array_release@
hs_bindgen_d94897fca8341dd7 :: IO (RIP.FunPtr ((RIP.Ptr WlArray) -> IO ()))
hs_bindgen_d94897fca8341dd7 =
  RIP.fromFFIType hs_bindgen_d94897fca8341dd7_base

{-# NOINLINE wl_array_release #-}
{-| __C declaration:__ @wl_array_release@

    __defined at:__ @wayland-util.h 564:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_release :: RIP.FunPtr ((RIP.Ptr WlArray) -> IO ())
wl_array_release =
  RIP.unsafePerformIO hs_bindgen_d94897fca8341dd7

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_array_add@
foreign import ccall unsafe "hs_bindgen_eb075fc075567153" hs_bindgen_eb075fc075567153_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_array_add@
hs_bindgen_eb075fc075567153 :: IO (RIP.FunPtr ((RIP.Ptr WlArray) -> HsBindgen.Runtime.LibC.CSize -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_eb075fc075567153 =
  RIP.fromFFIType hs_bindgen_eb075fc075567153_base

{-# NOINLINE wl_array_add #-}
{-| __C declaration:__ @wl_array_add@

    __defined at:__ @wayland-util.h 578:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_add :: RIP.FunPtr ((RIP.Ptr WlArray) -> HsBindgen.Runtime.LibC.CSize -> IO (RIP.Ptr RIP.Void))
wl_array_add =
  RIP.unsafePerformIO hs_bindgen_eb075fc075567153

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_array_copy@
foreign import ccall unsafe "hs_bindgen_03c299a97b6ba297" hs_bindgen_03c299a97b6ba297_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_array_copy@
hs_bindgen_03c299a97b6ba297 :: IO (RIP.FunPtr ((RIP.Ptr WlArray) -> (RIP.Ptr WlArray) -> IO RIP.CInt))
hs_bindgen_03c299a97b6ba297 =
  RIP.fromFFIType hs_bindgen_03c299a97b6ba297_base

{-# NOINLINE wl_array_copy #-}
{-| __C declaration:__ @wl_array_copy@

    __defined at:__ @wayland-util.h 591:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_copy :: RIP.FunPtr ((RIP.Ptr WlArray) -> (RIP.Ptr WlArray) -> IO RIP.CInt)
wl_array_copy =
  RIP.unsafePerformIO hs_bindgen_03c299a97b6ba297

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_fixed_to_double@
foreign import ccall unsafe "hs_bindgen_4e3b270d201d014a" hs_bindgen_4e3b270d201d014a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_fixed_to_double@
hs_bindgen_4e3b270d201d014a :: IO (RIP.FunPtr (Wl_fixed_t -> IO RIP.CDouble))
hs_bindgen_4e3b270d201d014a =
  RIP.fromFFIType hs_bindgen_4e3b270d201d014a_base

{-# NOINLINE wl_fixed_to_double #-}
{-| __C declaration:__ @wl_fixed_to_double@

    __defined at:__ @wayland-util.h 631:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_to_double :: RIP.FunPtr (Wl_fixed_t -> IO RIP.CDouble)
wl_fixed_to_double =
  RIP.unsafePerformIO hs_bindgen_4e3b270d201d014a

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_fixed_from_double@
foreign import ccall unsafe "hs_bindgen_8bf7677e58fc452d" hs_bindgen_8bf7677e58fc452d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_fixed_from_double@
hs_bindgen_8bf7677e58fc452d :: IO (RIP.FunPtr (RIP.CDouble -> IO Wl_fixed_t))
hs_bindgen_8bf7677e58fc452d =
  RIP.fromFFIType hs_bindgen_8bf7677e58fc452d_base

{-# NOINLINE wl_fixed_from_double #-}
{-| __C declaration:__ @wl_fixed_from_double@

    __defined at:__ @wayland-util.h 644:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_from_double :: RIP.FunPtr (RIP.CDouble -> IO Wl_fixed_t)
wl_fixed_from_double =
  RIP.unsafePerformIO hs_bindgen_8bf7677e58fc452d

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_fixed_to_int@
foreign import ccall unsafe "hs_bindgen_6031ebbc8c437d8c" hs_bindgen_6031ebbc8c437d8c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_fixed_to_int@
hs_bindgen_6031ebbc8c437d8c :: IO (RIP.FunPtr (Wl_fixed_t -> IO RIP.CInt))
hs_bindgen_6031ebbc8c437d8c =
  RIP.fromFFIType hs_bindgen_6031ebbc8c437d8c_base

{-# NOINLINE wl_fixed_to_int #-}
{-| __C declaration:__ @wl_fixed_to_int@

    __defined at:__ @wayland-util.h 657:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_to_int :: RIP.FunPtr (Wl_fixed_t -> IO RIP.CInt)
wl_fixed_to_int =
  RIP.unsafePerformIO hs_bindgen_6031ebbc8c437d8c

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_fixed_from_int@
foreign import ccall unsafe "hs_bindgen_bfe0e5b341ae9ab7" hs_bindgen_bfe0e5b341ae9ab7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_wl_util_Generated.Wayland.Util_get_wl_fixed_from_int@
hs_bindgen_bfe0e5b341ae9ab7 :: IO (RIP.FunPtr (RIP.CInt -> IO Wl_fixed_t))
hs_bindgen_bfe0e5b341ae9ab7 =
  RIP.fromFFIType hs_bindgen_bfe0e5b341ae9ab7_base

{-# NOINLINE wl_fixed_from_int #-}
{-| __C declaration:__ @wl_fixed_from_int@

    __defined at:__ @wayland-util.h 670:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_from_int :: RIP.FunPtr (RIP.CInt -> IO Wl_fixed_t)
wl_fixed_from_int =
  RIP.unsafePerformIO hs_bindgen_bfe0e5b341ae9ab7
