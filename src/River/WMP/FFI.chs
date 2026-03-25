-- river-window-manager-protocol-v1
module River.WMP.FFI where

import Foreign
import Wayland.FFI

#include "river-window-management-v1-client-protocol.h"

{#pointer *river_window_manager_v1  as RiverWindowManager  newtype #}
{#pointer *river_window_v1          as RiverWindow         newtype #}
{#pointer *river_node_v1            as RiverNode           newtype #}
{#pointer *river_seat_v1            as RiverSeat           newtype #}
{#pointer *river_pointer_binding_v1 as RiverPointerBinding newtype #}
{#pointer *river_output_v1          as RiverOutput         newtype #}
{#pointer *river_decoration_v1      as RiverDecoration     newtype #}
{#pointer *river_shell_surface_v1   as RiverShellSurface   newtype #}

deriving instance Show RiverWindowManager
deriving instance Show RiverWindow
deriving instance Show RiverNode
deriving instance Show RiverSeat
deriving instance Show RiverPointerBinding
deriving instance Show RiverOutput
deriving instance Show RiverDecoration
deriving instance Show RiverShellSurface

deriving instance Eq RiverWindowManager
deriving instance Eq RiverWindow
deriving instance Eq RiverNode
deriving instance Eq RiverSeat
deriving instance Eq RiverPointerBinding
deriving instance Eq RiverOutput
deriving instance Eq RiverDecoration
deriving instance Eq RiverShellSurface

deriving instance Storable RiverWindowManager
deriving instance Storable RiverWindow
deriving instance Storable RiverNode
deriving instance Storable RiverSeat
deriving instance Storable RiverPointerBinding
deriving instance Storable RiverOutput
deriving instance Storable RiverDecoration
deriving instance Storable RiverShellSurface

-- * Imported interfaces

foreign import ccall "&river_window_manager_v1_interface"  river_window_manager_v1_interface  :: WlInterface
foreign import ccall "&river_window_v1_interface"          river_window_v1_interface          :: WlInterface
foreign import ccall "&river_decoration_v1_interface"      river_decoration_v1_interface      :: WlInterface
foreign import ccall "&river_shell_surface_v1_interface"   river_shell_surface_v1_interface   :: WlInterface
foreign import ccall "&river_node_v1_interface"            river_node_v1_interface            :: WlInterface
foreign import ccall "&river_output_v1_interface"          river_output_v1_interface          :: WlInterface
foreign import ccall "&river_seat_v1_interface"            river_seat_v1_interface            :: WlInterface
foreign import ccall "&river_pointer_binding_v1_interface" river_pointer_binding_v1_interface :: WlInterface
