module River.XKB.Bindings.FFI where

import Foreign hiding (void)
import Foreign.C

import Wayland

#include "river-xkb-bindings-v1-client-protocol.h"

-- * Types

{#pointer *river_xkb_bindings_v1               as RiverXkbBindings        newtype #}
{#pointer *river_xkb_bindings_seat_v1          as XkbBindingsSeat         newtype #}
{#pointer *river_xkb_bindings_seat_v1_listener as XkbBindingsSeatListener newtype #}
{#pointer *river_xkb_binding_v1                as RiverXkbBinding         newtype #}
{#pointer *river_xkb_binding_v1_listener       as XkbBindingListener      newtype #}

deriving instance Show RiverXkbBindings
deriving instance Show XkbBindingsSeat
deriving instance Show XkbBindingsSeatListener
deriving instance Show RiverXkbBinding
deriving instance Show XkbBindingListener

deriving instance Storable RiverXkbBindings
deriving instance Storable XkbBindingsSeat
deriving instance Storable XkbBindingsSeatListener
deriving instance Storable RiverXkbBinding
deriving instance Storable XkbBindingListener

instance IsWlProxy RiverXkbBindings where toWlProxy (RiverXkbBindings p) = WlProxy $ castPtr p
instance IsWlProxy XkbBindingsSeat where toWlProxy (XkbBindingsSeat p) = WlProxy $ castPtr p
instance IsWlProxy RiverXkbBinding where toWlProxy (RiverXkbBinding p) = WlProxy $ castPtr p

-- * Interfaces

foreign import ccall "&river_xkb_binding_v1_interface"       river_xkb_binding_v1_interface :: WlInterface
foreign import ccall "&river_xkb_bindings_v1_interface"      river_xkb_bindings_v1_interface :: WlInterface
foreign import ccall "&river_xkb_bindings_seat_v1_interface" river_xkb_bindings_seat_v1_interface :: WlInterface

-- * Errors

{#enum river_xkb_bindings_v1_error as RiverXkbBindingsError {} #}
