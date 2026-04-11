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
  , "void hs_bindgen_a18253ed812e5896 ("
  , "  struct wl_list *arg1"
  , ")"
  , "{"
  , "  (wl_list_init)(arg1);"
  , "}"
  , "void hs_bindgen_79fb9432c5a3ce76 ("
  , "  struct wl_list *arg1,"
  , "  struct wl_list *arg2"
  , ")"
  , "{"
  , "  (wl_list_insert)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_19fc135351867fc5 ("
  , "  struct wl_list *arg1"
  , ")"
  , "{"
  , "  (wl_list_remove)(arg1);"
  , "}"
  , "signed int hs_bindgen_bbf2acc52464a02b ("
  , "  struct wl_list const *arg1"
  , ")"
  , "{"
  , "  return (wl_list_length)(arg1);"
  , "}"
  , "signed int hs_bindgen_6f1dfdaf06c63f40 ("
  , "  struct wl_list const *arg1"
  , ")"
  , "{"
  , "  return (wl_list_empty)(arg1);"
  , "}"
  , "void hs_bindgen_0f945c9bcae48802 ("
  , "  struct wl_list *arg1,"
  , "  struct wl_list *arg2"
  , ")"
  , "{"
  , "  (wl_list_insert_list)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_d1302b20ac257b3a ("
  , "  struct wl_array *arg1"
  , ")"
  , "{"
  , "  (wl_array_init)(arg1);"
  , "}"
  , "void hs_bindgen_f93c878505908c7a ("
  , "  struct wl_array *arg1"
  , ")"
  , "{"
  , "  (wl_array_release)(arg1);"
  , "}"
  , "void *hs_bindgen_3426dad14ba2b3de ("
  , "  struct wl_array *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return (wl_array_add)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_4596d8be08ad1f47 ("
  , "  struct wl_array *arg1,"
  , "  struct wl_array *arg2"
  , ")"
  , "{"
  , "  return (wl_array_copy)(arg1, arg2);"
  , "}"
  , "double hs_bindgen_29e28fc221ed6da3 ("
  , "  wl_fixed_t arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_to_double)(arg1);"
  , "}"
  , "wl_fixed_t hs_bindgen_1220b15073956482 ("
  , "  double arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_from_double)(arg1);"
  , "}"
  , "signed int hs_bindgen_0ad84f4acb284b1c ("
  , "  wl_fixed_t arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_to_int)(arg1);"
  , "}"
  , "wl_fixed_t hs_bindgen_10c9af0a6e2bca07 ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return (wl_fixed_from_int)(arg1);"
  , "}"
  ]))

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_list_init@
foreign import ccall unsafe "hs_bindgen_a18253ed812e5896" hs_bindgen_a18253ed812e5896_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_list_init@
hs_bindgen_a18253ed812e5896 ::
     RIP.Ptr Wl_list
  -> IO ()
hs_bindgen_a18253ed812e5896 =
  RIP.fromFFIType hs_bindgen_a18253ed812e5896_base

{-| __C declaration:__ @wl_list_init@

    __defined at:__ @wayland-util.h 319:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_init ::
     RIP.Ptr Wl_list
     -- ^ __C declaration:__ @list@
  -> IO ()
wl_list_init = hs_bindgen_a18253ed812e5896

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_list_insert@
foreign import ccall unsafe "hs_bindgen_79fb9432c5a3ce76" hs_bindgen_79fb9432c5a3ce76_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_list_insert@
hs_bindgen_79fb9432c5a3ce76 ::
     RIP.Ptr Wl_list
  -> RIP.Ptr Wl_list
  -> IO ()
hs_bindgen_79fb9432c5a3ce76 =
  RIP.fromFFIType hs_bindgen_79fb9432c5a3ce76_base

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
wl_list_insert = hs_bindgen_79fb9432c5a3ce76

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_list_remove@
foreign import ccall unsafe "hs_bindgen_19fc135351867fc5" hs_bindgen_19fc135351867fc5_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_list_remove@
hs_bindgen_19fc135351867fc5 ::
     RIP.Ptr Wl_list
  -> IO ()
hs_bindgen_19fc135351867fc5 =
  RIP.fromFFIType hs_bindgen_19fc135351867fc5_base

{-| __C declaration:__ @wl_list_remove@

    __defined at:__ @wayland-util.h 347:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_remove ::
     RIP.Ptr Wl_list
     -- ^ __C declaration:__ @elm@
  -> IO ()
wl_list_remove = hs_bindgen_19fc135351867fc5

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_list_length@
foreign import ccall unsafe "hs_bindgen_bbf2acc52464a02b" hs_bindgen_bbf2acc52464a02b_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_list_length@
hs_bindgen_bbf2acc52464a02b ::
     PtrConst.PtrConst Wl_list
  -> IO RIP.CInt
hs_bindgen_bbf2acc52464a02b =
  RIP.fromFFIType hs_bindgen_bbf2acc52464a02b_base

{-| __C declaration:__ @wl_list_length@

    __defined at:__ @wayland-util.h 361:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_length ::
     PtrConst.PtrConst Wl_list
     -- ^ __C declaration:__ @list@
  -> IO RIP.CInt
wl_list_length = hs_bindgen_bbf2acc52464a02b

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_list_empty@
foreign import ccall unsafe "hs_bindgen_6f1dfdaf06c63f40" hs_bindgen_6f1dfdaf06c63f40_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_list_empty@
hs_bindgen_6f1dfdaf06c63f40 ::
     PtrConst.PtrConst Wl_list
  -> IO RIP.CInt
hs_bindgen_6f1dfdaf06c63f40 =
  RIP.fromFFIType hs_bindgen_6f1dfdaf06c63f40_base

{-| __C declaration:__ @wl_list_empty@

    __defined at:__ @wayland-util.h 373:1@

    __exported by:__ @wayland-util.h@
-}
wl_list_empty ::
     PtrConst.PtrConst Wl_list
     -- ^ __C declaration:__ @list@
  -> IO RIP.CInt
wl_list_empty = hs_bindgen_6f1dfdaf06c63f40

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_list_insert_list@
foreign import ccall unsafe "hs_bindgen_0f945c9bcae48802" hs_bindgen_0f945c9bcae48802_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_list_insert_list@
hs_bindgen_0f945c9bcae48802 ::
     RIP.Ptr Wl_list
  -> RIP.Ptr Wl_list
  -> IO ()
hs_bindgen_0f945c9bcae48802 =
  RIP.fromFFIType hs_bindgen_0f945c9bcae48802_base

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
wl_list_insert_list = hs_bindgen_0f945c9bcae48802

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_array_init@
foreign import ccall unsafe "hs_bindgen_d1302b20ac257b3a" hs_bindgen_d1302b20ac257b3a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_array_init@
hs_bindgen_d1302b20ac257b3a ::
     RIP.Ptr Wl_array
  -> IO ()
hs_bindgen_d1302b20ac257b3a =
  RIP.fromFFIType hs_bindgen_d1302b20ac257b3a_base

{-| __C declaration:__ @wl_array_init@

    __defined at:__ @wayland-util.h 552:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_init ::
     RIP.Ptr Wl_array
     -- ^ __C declaration:__ @array@
  -> IO ()
wl_array_init = hs_bindgen_d1302b20ac257b3a

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_array_release@
foreign import ccall unsafe "hs_bindgen_f93c878505908c7a" hs_bindgen_f93c878505908c7a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_array_release@
hs_bindgen_f93c878505908c7a ::
     RIP.Ptr Wl_array
  -> IO ()
hs_bindgen_f93c878505908c7a =
  RIP.fromFFIType hs_bindgen_f93c878505908c7a_base

{-| __C declaration:__ @wl_array_release@

    __defined at:__ @wayland-util.h 564:1@

    __exported by:__ @wayland-util.h@
-}
wl_array_release ::
     RIP.Ptr Wl_array
     -- ^ __C declaration:__ @array@
  -> IO ()
wl_array_release = hs_bindgen_f93c878505908c7a

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_array_add@
foreign import ccall unsafe "hs_bindgen_3426dad14ba2b3de" hs_bindgen_3426dad14ba2b3de_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_array_add@
hs_bindgen_3426dad14ba2b3de ::
     RIP.Ptr Wl_array
  -> HsBindgen.Runtime.LibC.CSize
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_3426dad14ba2b3de =
  RIP.fromFFIType hs_bindgen_3426dad14ba2b3de_base

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
wl_array_add = hs_bindgen_3426dad14ba2b3de

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_array_copy@
foreign import ccall unsafe "hs_bindgen_4596d8be08ad1f47" hs_bindgen_4596d8be08ad1f47_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_array_copy@
hs_bindgen_4596d8be08ad1f47 ::
     RIP.Ptr Wl_array
  -> RIP.Ptr Wl_array
  -> IO RIP.CInt
hs_bindgen_4596d8be08ad1f47 =
  RIP.fromFFIType hs_bindgen_4596d8be08ad1f47_base

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
wl_array_copy = hs_bindgen_4596d8be08ad1f47

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_fixed_to_double@
foreign import ccall unsafe "hs_bindgen_29e28fc221ed6da3" hs_bindgen_29e28fc221ed6da3_base ::
     RIP.Int32
  -> IO Double

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_fixed_to_double@
hs_bindgen_29e28fc221ed6da3 ::
     Wl_fixed_t
  -> IO RIP.CDouble
hs_bindgen_29e28fc221ed6da3 =
  RIP.fromFFIType hs_bindgen_29e28fc221ed6da3_base

{-| __C declaration:__ @wl_fixed_to_double@

    __defined at:__ @wayland-util.h 631:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_to_double ::
     Wl_fixed_t
     -- ^ __C declaration:__ @f@
  -> IO RIP.CDouble
wl_fixed_to_double = hs_bindgen_29e28fc221ed6da3

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_fixed_from_double@
foreign import ccall unsafe "hs_bindgen_1220b15073956482" hs_bindgen_1220b15073956482_base ::
     Double
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_fixed_from_double@
hs_bindgen_1220b15073956482 ::
     RIP.CDouble
  -> IO Wl_fixed_t
hs_bindgen_1220b15073956482 =
  RIP.fromFFIType hs_bindgen_1220b15073956482_base

{-| __C declaration:__ @wl_fixed_from_double@

    __defined at:__ @wayland-util.h 644:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_from_double ::
     RIP.CDouble
     -- ^ __C declaration:__ @d@
  -> IO Wl_fixed_t
wl_fixed_from_double = hs_bindgen_1220b15073956482

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_fixed_to_int@
foreign import ccall unsafe "hs_bindgen_0ad84f4acb284b1c" hs_bindgen_0ad84f4acb284b1c_base ::
     RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_fixed_to_int@
hs_bindgen_0ad84f4acb284b1c ::
     Wl_fixed_t
  -> IO RIP.CInt
hs_bindgen_0ad84f4acb284b1c =
  RIP.fromFFIType hs_bindgen_0ad84f4acb284b1c_base

{-| __C declaration:__ @wl_fixed_to_int@

    __defined at:__ @wayland-util.h 657:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_to_int ::
     Wl_fixed_t
     -- ^ __C declaration:__ @f@
  -> IO RIP.CInt
wl_fixed_to_int = hs_bindgen_0ad84f4acb284b1c

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_fixed_from_int@
foreign import ccall unsafe "hs_bindgen_10c9af0a6e2bca07" hs_bindgen_10c9af0a6e2bca07_base ::
     RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_wl_util_Bindings.Wayland.Util.Generated_Unsafe_wl_fixed_from_int@
hs_bindgen_10c9af0a6e2bca07 ::
     RIP.CInt
  -> IO Wl_fixed_t
hs_bindgen_10c9af0a6e2bca07 =
  RIP.fromFFIType hs_bindgen_10c9af0a6e2bca07_base

{-| __C declaration:__ @wl_fixed_from_int@

    __defined at:__ @wayland-util.h 670:1@

    __exported by:__ @wayland-util.h@
-}
wl_fixed_from_int ::
     RIP.CInt
     -- ^ __C declaration:__ @i@
  -> IO Wl_fixed_t
wl_fixed_from_int = hs_bindgen_10c9af0a6e2bca07
