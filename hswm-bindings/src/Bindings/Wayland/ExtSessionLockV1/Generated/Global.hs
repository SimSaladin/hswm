{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.ExtSessionLockV1.Generated.Global
    ( Bindings.Wayland.ExtSessionLockV1.Generated.Global.ext_session_lock_manager_v1_interface
    , Bindings.Wayland.ExtSessionLockV1.Generated.Global.ext_session_lock_v1_interface
    , Bindings.Wayland.ExtSessionLockV1.Generated.Global.ext_session_lock_surface_v1_interface
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <ext-session-lock-v1-client-protocol.h>"
  , "/* Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_manager_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_9da258b15652113a (void)"
  , "{"
  , "  return &ext_session_lock_manager_v1_interface;"
  , "}"
  , "/* Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_246e62742da15a83 (void)"
  , "{"
  , "  return &ext_session_lock_v1_interface;"
  , "}"
  , "/* Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_surface_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_7990dc16bed8859a (void)"
  , "{"
  , "  return &ext_session_lock_surface_v1_interface;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_manager_v1_interface@
foreign import ccall unsafe "hs_bindgen_9da258b15652113a" hs_bindgen_9da258b15652113a_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_manager_v1_interface@
hs_bindgen_9da258b15652113a :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_9da258b15652113a =
  RIP.fromFFIType hs_bindgen_9da258b15652113a_base

{-# NOINLINE hs_bindgen_490e1837832d5dd9 #-}
{-| __C declaration:__ @ext_session_lock_manager_v1_interface@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 90:34@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@

    __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_ext_session_lock_manager_v1_interface@
-}
hs_bindgen_490e1837832d5dd9 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_490e1837832d5dd9 =
  RIP.unsafePerformIO hs_bindgen_9da258b15652113a

{-# NOINLINE ext_session_lock_manager_v1_interface #-}
ext_session_lock_manager_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
ext_session_lock_manager_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_490e1837832d5dd9)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_interface@
foreign import ccall unsafe "hs_bindgen_246e62742da15a83" hs_bindgen_246e62742da15a83_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_interface@
hs_bindgen_246e62742da15a83 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_246e62742da15a83 =
  RIP.fromFFIType hs_bindgen_246e62742da15a83_base

{-# NOINLINE hs_bindgen_3e11a2ef651b0fed #-}
{-| __C declaration:__ @ext_session_lock_v1_interface@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 201:34@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@

    __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_ext_session_lock_v1_interface@
-}
hs_bindgen_3e11a2ef651b0fed :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_3e11a2ef651b0fed =
  RIP.unsafePerformIO hs_bindgen_246e62742da15a83

{-# NOINLINE ext_session_lock_v1_interface #-}
ext_session_lock_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
ext_session_lock_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_3e11a2ef651b0fed)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_surface_v1_interface@
foreign import ccall unsafe "hs_bindgen_7990dc16bed8859a" hs_bindgen_7990dc16bed8859a_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_surface_v1_interface@
hs_bindgen_7990dc16bed8859a :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_7990dc16bed8859a =
  RIP.fromFFIType hs_bindgen_7990dc16bed8859a_base

{-# NOINLINE hs_bindgen_faa5f5b6e7c5c9aa #-}
{-| __C declaration:__ @ext_session_lock_surface_v1_interface@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 246:34@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@

    __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_ext_session_lock_surface_v1_interface@
-}
hs_bindgen_faa5f5b6e7c5c9aa :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_faa5f5b6e7c5c9aa =
  RIP.unsafePerformIO hs_bindgen_7990dc16bed8859a

{-# NOINLINE ext_session_lock_surface_v1_interface #-}
ext_session_lock_surface_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
ext_session_lock_surface_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_faa5f5b6e7c5c9aa)
