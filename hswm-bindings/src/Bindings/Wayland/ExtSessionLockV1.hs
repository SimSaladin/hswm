module Bindings.Wayland.ExtSessionLockV1 where

import Wayland.Client.Internal.TH
import Foreign

import Bindings.Wayland.ExtSessionLockV1.Generated
import Bindings.Wayland.ExtSessionLockV1.Generated.Global
import Bindings.Wayland.ExtSessionLockV1.Generated.Safe

import Generated.Wayland.Client
import Wayland.Client.Objects

-- * SessionLockSurface
mkWlObject $
  objDropPrefixSuffix "Ext_" "_v1" $
  (wlobj ''Ext_session_lock_surface_v1 [ "ack_configure" ])
      { objHasDestructor = True }

-- * SessionLock
mkWlObject $
  objDropPrefixSuffix "Ext_" "_v1" $
  objAddMarshall
    [ ([t|IO (Ptr Ext_session_lock_surface_v1)|], [t|IO SessionLockSurface|], [|(\(SessionLockSurface r) -> r)|], [|return . SessionLockSurface|])
    , ([t|Ptr Wl_surface|], [t|Surface|], [|(\(Surface r) -> r)|], [|Surface|])
    , ([t|Ptr Wl_output|], [t|Output|], [|(\(Output r) -> r)|], [|Output|])
    ] $
  (wlobj ''Ext_session_lock_v1 [ "get_lock_surface", "unlock_and_destroy" ])
      { objHasDestructor = True }

-- * SessionLockManager
mkWlObject $
  objDropPrefixSuffix "Ext_" "_v1" $
  objAddMarshall
    [ ([t|IO (Ptr Ext_session_lock_v1)|], [t|IO SessionLock|], [|(\(SessionLock r) -> r)|], [|return . SessionLock|])
    ] $
  (wlobj ''Ext_session_lock_manager_v1
  [ "lock"
  ])
      { objHasDestructor = True
      , objListener = Nothing
      }
