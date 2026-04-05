module River.XKB.Bindings.FFI where

import Foreign hiding (void)

import qualified River.Objects as R
--import qualified River.Safe as R
import Wayland

#include "river-xkb-bindings-v1-client-protocol.h"

-- * Types

-- type RiverXkbBindings = R.RiverXkbBindingsV1
--
-- {#pointer *river_xkb_bindings_seat_v1          as XkbBindingsSeat         newtype #}
-- {#pointer *river_xkb_bindings_seat_v1_listener as XkbBindingsSeatListener newtype #}
-- {#pointer *river_xkb_binding_v1                as RiverXkbBinding         newtype #}
-- {#pointer *river_xkb_binding_v1_listener       as XkbBindingListener      newtype #}
--
-- deriving instance Show XkbBindingsSeat
-- deriving instance Show XkbBindingsSeatListener
-- deriving instance Show RiverXkbBinding
-- deriving instance Show XkbBindingListener
--
-- deriving via (Ptr a) instance Storable XkbBindingsSeat
-- deriving via (Ptr a) instance Storable XkbBindingsSeatListener
-- deriving via (Ptr a) instance Storable RiverXkbBinding
-- deriving via (Ptr a) instance Storable XkbBindingListener
--
-- instance IsWlProxy XkbBindingsSeat where toWlProxy (XkbBindingsSeat p) = WlProxy $ castPtr p
-- instance IsWlProxy RiverXkbBinding where toWlProxy (RiverXkbBinding p) = WlProxy $ castPtr p
--
-- -- * Interfaces
--
-- foreign import ccall "&river_xkb_binding_v1_interface"       river_xkb_binding_v1_interface :: WlInterface
-- foreign import ccall "&river_xkb_bindings_v1_interface"      river_xkb_bindings_v1_interface :: WlInterface
-- foreign import ccall "&river_xkb_bindings_seat_v1_interface" river_xkb_bindings_seat_v1_interface :: WlInterface
--
-- -- * Errors
--
-- {#enum river_xkb_bindings_v1_error as RiverXkbBindingsError {} #}
