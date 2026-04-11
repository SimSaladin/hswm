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
  , "void hs_bindgen_b3263165a52c2570 ("
  , "  struct wl_list *arg1"
  , ")"
  , "{"
  , "  (wl_list_init)(arg1);"
  , "}"
  , "void hs_bindgen_385f37f0f4ffe759 ("
  , "  struct wl_list *arg1,"
  , "  struct wl_list *arg2"
  , ")"
  , "{"
  , "  (wl_list_insert)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_481688c95a1d01b3 ("
  , "  struct wl_list *arg1"
  , ")"
  , "{"
  , "  (wl_list_remove)(arg1);"
  , "}"
  , "signed int hs_bindgen_2b3d457d8b2c3b01 ("
  , "  struct wl_list const *arg1"
  , ")"
  , "{"
  , "  return (wl_list_length)(arg1);"
  , "}"
  , "signed int hs_bindgen_9c875948098295f7 ("
  , "  struct wl_list const *arg1"
  , ")"
  , "{"
  , "  return (wl_list_empty)(arg1);"
  , "}"
  , "void hs_bindgen_9fffb0568337c38c ("
  , "  struct wl_list *arg1,"
  , "  struct wl_list *arg2"
  , ")"
  , "{"
  , "  (wl_list_insert_list)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_59d3f58e8b3fbc9e ("
  , "  struct wl_array *arg1"
  , ")"
  , "{"
  , "  (wl_array_init)(arg1);"
  , "}"
  , "void hs_bindgen_f03c8329e8fc2f14 ("
  , "  struct wl_array *arg1"
  , ")"
  , "{"
  , "  (wl_array_release)(arg1);"
  , "}"
  , "void *hs_bindgen_a1014487c6a5b582 ("
  , "  struct wl_array *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return (wl_array_add)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_54d6abb9650a3578 ("
  , "  struct wl_array *arg1,"
  , "  struct wl_array *arg2"
  , ")"
  , "{"
  , "  return (wl_array_copy)(arg1, arg2);"
  , "}"
  , "double hs_bindgen_72dc6b66effaa2da ("
  , "  wl_fixed_t arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_to_double)(arg1);"
  , "}"
  , "wl_fixed_t hs_bindgen_ccaf8aed8eee9c1e ("
  , "  double arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_from_double)(arg1);"
  , "}"
  , "signed int hs_bindgen_8add42edb5a11160 ("
  , "  wl_fixed_t arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_to_int)(arg1);"
  , "}"
  , "wl_fixed_t hs_bindgen_0d9d2c19c360f004 ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_from_int)(arg1);"
  , "}"
  ]))

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_list_init@
foreign import ccall safe "hs_bindgen_b3263165a52c2570" hs_bindgen_b3263165a52c2570_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_list_init@
hs_bindgen_b3263165a52c2570 ::
     RIP.Ptr Wl_list
  -> IO ()
hs_bindgen_b3263165a52c2570 =
  RIP.fromFFIType hs_bindgen_b3263165a52c2570_base

{-| __C declaration:__ @wl_list_init@

    __defined at:__ @wayland-util.h 319:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_init ::
     RIP.Ptr Wl_list
     -- ^ __C declaration:__ @list@
  -> IO ()
wl_list_init = hs_bindgen_b3263165a52c2570

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_list_insert@
foreign import ccall safe "hs_bindgen_385f37f0f4ffe759" hs_bindgen_385f37f0f4ffe759_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_list_insert@
hs_bindgen_385f37f0f4ffe759 ::
     RIP.Ptr Wl_list
  -> RIP.Ptr Wl_list
  -> IO ()
hs_bindgen_385f37f0f4ffe759 =
  RIP.fromFFIType hs_bindgen_385f37f0f4ffe759_base

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
wl_list_insert = hs_bindgen_385f37f0f4ffe759

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_list_remove@
foreign import ccall safe "hs_bindgen_481688c95a1d01b3" hs_bindgen_481688c95a1d01b3_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_list_remove@
hs_bindgen_481688c95a1d01b3 ::
     RIP.Ptr Wl_list
  -> IO ()
hs_bindgen_481688c95a1d01b3 =
  RIP.fromFFIType hs_bindgen_481688c95a1d01b3_base

{-| __C declaration:__ @wl_list_remove@

    __defined at:__ @wayland-util.h 347:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_remove ::
     RIP.Ptr Wl_list
     -- ^ __C declaration:__ @elm@
  -> IO ()
wl_list_remove = hs_bindgen_481688c95a1d01b3

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_list_length@
foreign import ccall safe "hs_bindgen_2b3d457d8b2c3b01" hs_bindgen_2b3d457d8b2c3b01_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_list_length@
hs_bindgen_2b3d457d8b2c3b01 ::
     PtrConst.PtrConst Wl_list
  -> IO RIP.CInt
hs_bindgen_2b3d457d8b2c3b01 =
  RIP.fromFFIType hs_bindgen_2b3d457d8b2c3b01_base

{-| __C declaration:__ @wl_list_length@

    __defined at:__ @wayland-util.h 361:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_length ::
     PtrConst.PtrConst Wl_list
     -- ^ __C declaration:__ @list@
  -> IO RIP.CInt
wl_list_length = hs_bindgen_2b3d457d8b2c3b01

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_list_empty@
foreign import ccall safe "hs_bindgen_9c875948098295f7" hs_bindgen_9c875948098295f7_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_list_empty@
hs_bindgen_9c875948098295f7 ::
     PtrConst.PtrConst Wl_list
  -> IO RIP.CInt
hs_bindgen_9c875948098295f7 =
  RIP.fromFFIType hs_bindgen_9c875948098295f7_base

{-| __C declaration:__ @wl_list_empty@

    __defined at:__ @wayland-util.h 373:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_empty ::
     PtrConst.PtrConst Wl_list
     -- ^ __C declaration:__ @list@
  -> IO RIP.CInt
wl_list_empty = hs_bindgen_9c875948098295f7

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_list_insert_list@
foreign import ccall safe "hs_bindgen_9fffb0568337c38c" hs_bindgen_9fffb0568337c38c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_list_insert_list@
hs_bindgen_9fffb0568337c38c ::
     RIP.Ptr Wl_list
  -> RIP.Ptr Wl_list
  -> IO ()
hs_bindgen_9fffb0568337c38c =
  RIP.fromFFIType hs_bindgen_9fffb0568337c38c_base

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
wl_list_insert_list = hs_bindgen_9fffb0568337c38c

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_array_init@
foreign import ccall safe "hs_bindgen_59d3f58e8b3fbc9e" hs_bindgen_59d3f58e8b3fbc9e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_array_init@
hs_bindgen_59d3f58e8b3fbc9e ::
     RIP.Ptr Wl_array
  -> IO ()
hs_bindgen_59d3f58e8b3fbc9e =
  RIP.fromFFIType hs_bindgen_59d3f58e8b3fbc9e_base

{-| __C declaration:__ @wl_array_init@

    __defined at:__ @wayland-util.h 552:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_init ::
     RIP.Ptr Wl_array
     -- ^ __C declaration:__ @array@
  -> IO ()
wl_array_init = hs_bindgen_59d3f58e8b3fbc9e

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_array_release@
foreign import ccall safe "hs_bindgen_f03c8329e8fc2f14" hs_bindgen_f03c8329e8fc2f14_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_array_release@
hs_bindgen_f03c8329e8fc2f14 ::
     RIP.Ptr Wl_array
  -> IO ()
hs_bindgen_f03c8329e8fc2f14 =
  RIP.fromFFIType hs_bindgen_f03c8329e8fc2f14_base

{-| __C declaration:__ @wl_array_release@

    __defined at:__ @wayland-util.h 564:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_release ::
     RIP.Ptr Wl_array
     -- ^ __C declaration:__ @array@
  -> IO ()
wl_array_release = hs_bindgen_f03c8329e8fc2f14

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_array_add@
foreign import ccall safe "hs_bindgen_a1014487c6a5b582" hs_bindgen_a1014487c6a5b582_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_array_add@
hs_bindgen_a1014487c6a5b582 ::
     RIP.Ptr Wl_array
  -> HsBindgen.Runtime.LibC.CSize
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_a1014487c6a5b582 =
  RIP.fromFFIType hs_bindgen_a1014487c6a5b582_base

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
wl_array_add = hs_bindgen_a1014487c6a5b582

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_array_copy@
foreign import ccall safe "hs_bindgen_54d6abb9650a3578" hs_bindgen_54d6abb9650a3578_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_array_copy@
hs_bindgen_54d6abb9650a3578 ::
     RIP.Ptr Wl_array
  -> RIP.Ptr Wl_array
  -> IO RIP.CInt
hs_bindgen_54d6abb9650a3578 =
  RIP.fromFFIType hs_bindgen_54d6abb9650a3578_base

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
wl_array_copy = hs_bindgen_54d6abb9650a3578

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_fixed_to_double@
foreign import ccall safe "hs_bindgen_72dc6b66effaa2da" hs_bindgen_72dc6b66effaa2da_base ::
     RIP.Int32
  -> IO Double

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_fixed_to_double@
hs_bindgen_72dc6b66effaa2da ::
     Wl_fixed_t
  -> IO RIP.CDouble
hs_bindgen_72dc6b66effaa2da =
  RIP.fromFFIType hs_bindgen_72dc6b66effaa2da_base

{-| __C declaration:__ @wl_fixed_to_double@

    __defined at:__ @wayland-util.h 631:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_to_double ::
     Wl_fixed_t
     -- ^ __C declaration:__ @f@
  -> IO RIP.CDouble
wl_fixed_to_double = hs_bindgen_72dc6b66effaa2da

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_fixed_from_double@
foreign import ccall safe "hs_bindgen_ccaf8aed8eee9c1e" hs_bindgen_ccaf8aed8eee9c1e_base ::
     Double
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_fixed_from_double@
hs_bindgen_ccaf8aed8eee9c1e ::
     RIP.CDouble
  -> IO Wl_fixed_t
hs_bindgen_ccaf8aed8eee9c1e =
  RIP.fromFFIType hs_bindgen_ccaf8aed8eee9c1e_base

{-| __C declaration:__ @wl_fixed_from_double@

    __defined at:__ @wayland-util.h 644:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_from_double ::
     RIP.CDouble
     -- ^ __C declaration:__ @d@
  -> IO Wl_fixed_t
wl_fixed_from_double = hs_bindgen_ccaf8aed8eee9c1e

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_fixed_to_int@
foreign import ccall safe "hs_bindgen_8add42edb5a11160" hs_bindgen_8add42edb5a11160_base ::
     RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_fixed_to_int@
hs_bindgen_8add42edb5a11160 ::
     Wl_fixed_t
  -> IO RIP.CInt
hs_bindgen_8add42edb5a11160 =
  RIP.fromFFIType hs_bindgen_8add42edb5a11160_base

{-| __C declaration:__ @wl_fixed_to_int@

    __defined at:__ @wayland-util.h 657:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_to_int ::
     Wl_fixed_t
     -- ^ __C declaration:__ @f@
  -> IO RIP.CInt
wl_fixed_to_int = hs_bindgen_8add42edb5a11160

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_fixed_from_int@
foreign import ccall safe "hs_bindgen_0d9d2c19c360f004" hs_bindgen_0d9d2c19c360f004_base ::
     RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Safe_wl_fixed_from_int@
hs_bindgen_0d9d2c19c360f004 ::
     RIP.CInt
  -> IO Wl_fixed_t
hs_bindgen_0d9d2c19c360f004 =
  RIP.fromFFIType hs_bindgen_0d9d2c19c360f004_base

{-| __C declaration:__ @wl_fixed_from_int@

    __defined at:__ @wayland-util.h 670:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_from_int ::
     RIP.CInt
     -- ^ __C declaration:__ @i@
  -> IO Wl_fixed_t
wl_fixed_from_int = hs_bindgen_0d9d2c19c360f004
