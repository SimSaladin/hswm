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
{-|

  > page_iface_ext_session_lock_manager_v1 ext_session_lock_manager_v1

  > page_iface_ext_session_lock_manager_v1_desc Description

  This interface is used to request that the session be locked.

  > page_iface_ext_session_lock_manager_v1_api API

  See @iface_ext_session_lock_manager_v1@ .

  > iface_ext_session_lock_manager_v1 The ext_session_lock_manager_v1 interface

  This interface is used to request that the session be locked.

__C declaration:__ @ext_session_lock_manager_v1_interface@

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
{-|

  > page_iface_ext_session_lock_v1 ext_session_lock_v1

  > page_iface_ext_session_lock_v1_desc Description

  In response to the creation of this object the compositor must send either the locked or finished event.

  The locked event indicates that the session is locked. This means that the compositor must stop rendering and providing input to normal clients. Instead the compositor must blank all outputs with an opaque color such that their normal content is fully hidden.

  The only surfaces that should be rendered while the session is locked are the lock surfaces created through this interface and optionally, at the compositor's discretion, special privileged surfaces such as input methods or portions of desktop shell UIs.

  The locked event must not be sent until a new "locked" frame (either from a session lock surface or the compositor blanking the output) has been presented on all outputs and no security sensitive normal/unlocked content is possibly visible.

  The finished event should be sent immediately on creation of this object if the compositor decides that the locked event will not be sent.

  The compositor may wait for the client to create and render session lock surfaces before sending the locked event to avoid displaying intermediate blank frames. However, it must impose a reasonable time limit if waiting and send the locked event as soon as the hard requirements described above can be met if the time limit expires. Clients should immediately create lock surfaces for all outputs on creation of this object to make this possible.

  This behavior of the locked event is required in order to prevent possible race conditions with clients that wish to suspend the system or similar after locking the session. Without these semantics, clients triggering a suspend after receiving the locked event would race with the first "locked" frame being presented and normal/unlocked frames might be briefly visible as the system is resumed if the suspend operation wins the race.

  If the client dies while the session is locked, the compositor must not unlock the session in response. It is acceptable for the session to be permanently locked if this happens. The compositor may choose to continue to display the lock surfaces the client had mapped before it died or alternatively fall back to a solid color, this is compositor policy.

  Compositors may also allow a secure way to recover the session, the details of this are compositor policy. Compositors may allow a new client to create a ext_session_lock_v1 object and take responsibility for unlocking the session, they may even start a new lock client instance automatically.

  > page_iface_ext_session_lock_v1_api API

  See @iface_ext_session_lock_v1@ .

  > iface_ext_session_lock_v1 The ext_session_lock_v1 interface

  In response to the creation of this object the compositor must send either the locked or finished event.

  The locked event indicates that the session is locked. This means that the compositor must stop rendering and providing input to normal clients. Instead the compositor must blank all outputs with an opaque color such that their normal content is fully hidden.

  The only surfaces that should be rendered while the session is locked are the lock surfaces created through this interface and optionally, at the compositor's discretion, special privileged surfaces such as input methods or portions of desktop shell UIs.

  The locked event must not be sent until a new "locked" frame (either from a session lock surface or the compositor blanking the output) has been presented on all outputs and no security sensitive normal/unlocked content is possibly visible.

  The finished event should be sent immediately on creation of this object if the compositor decides that the locked event will not be sent.

  The compositor may wait for the client to create and render session lock surfaces before sending the locked event to avoid displaying intermediate blank frames. However, it must impose a reasonable time limit if waiting and send the locked event as soon as the hard requirements described above can be met if the time limit expires. Clients should immediately create lock surfaces for all outputs on creation of this object to make this possible.

  This behavior of the locked event is required in order to prevent possible race conditions with clients that wish to suspend the system or similar after locking the session. Without these semantics, clients triggering a suspend after receiving the locked event would race with the first "locked" frame being presented and normal/unlocked frames might be briefly visible as the system is resumed if the suspend operation wins the race.

  If the client dies while the session is locked, the compositor must not unlock the session in response. It is acceptable for the session to be permanently locked if this happens. The compositor may choose to continue to display the lock surfaces the client had mapped before it died or alternatively fall back to a solid color, this is compositor policy.

  Compositors may also allow a secure way to recover the session, the details of this are compositor policy. Compositors may allow a new client to create a ext_session_lock_v1 object and take responsibility for unlocking the session, they may even start a new lock client instance automatically.

__C declaration:__ @ext_session_lock_v1_interface@

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
{-|

  > page_iface_ext_session_lock_surface_v1 ext_session_lock_surface_v1

  > page_iface_ext_session_lock_surface_v1_desc Description

  The client may use lock surfaces to display a screensaver, render a dialog to enter a password and unlock the session, or however else it sees fit.

  On binding this interface the compositor will immediately send the first configure event. After making the ack_configure request in response to this event the client should attach and commit the first buffer. Committing the surface before acking the first configure is a protocol error. Committing the surface with a null buffer at any time is a protocol error.

  The compositor is free to handle keyboard/pointer focus for lock surfaces however it chooses. A reasonable way to do this would be to give the first lock surface created keyboard focus and change keyboard focus if the user clicks on other surfaces.

  > page_iface_ext_session_lock_surface_v1_api API

  See @iface_ext_session_lock_surface_v1@ .

  > iface_ext_session_lock_surface_v1 The ext_session_lock_surface_v1 interface

  The client may use lock surfaces to display a screensaver, render a dialog to enter a password and unlock the session, or however else it sees fit.

  On binding this interface the compositor will immediately send the first configure event. After making the ack_configure request in response to this event the client should attach and commit the first buffer. Committing the surface before acking the first configure is a protocol error. Committing the surface with a null buffer at any time is a protocol error.

  The compositor is free to handle keyboard/pointer focus for lock surfaces however it chooses. A reasonable way to do this would be to give the first lock surface created keyboard focus and change keyboard focus if the user clicks on other surfaces.

__C declaration:__ @ext_session_lock_surface_v1_interface@

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
