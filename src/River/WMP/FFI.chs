-- river-window-manager-protocol-v1
module River.WMP.FFI where

import Foreign
import Wayland.FFI

#include "river-window-management-v1-client-protocol.h"

data WindowBorders = WindowBorders
  { wb_edges               :: !Word32 -- ^ Edges on which to draw borders
  , wb_width               :: !Int32  -- ^ Width of border
  , wb_r, wb_g, wb_b, wb_a :: !Word32 -- ^ RGBA 32-bit
  } deriving (Eq, Ord, Show)

type ClipBox = (Int32, Int32, Int32, Int32)

{#pointer *river_window_manager_v1  as RiverWindowManager  newtype #}
{#pointer *river_window_v1          as RiverWindow         newtype #}
{#pointer *river_node_v1            as RiverNode           newtype #}
{#pointer *river_seat_v1            as RiverSeat           newtype #}
{#pointer *river_pointer_binding_v1 as RiverPointerBinding newtype #}
{#pointer *river_output_v1          as RiverOutput         newtype #}
{#pointer *river_decoration_v1      as RiverDecoration     newtype #}
{#pointer *river_shell_surface_v1   as RiverShellSurface   newtype #}

{#pointer *river_window_manager_v1_listener  as RiverWindowManagerListener newtype#}
{#pointer *river_window_v1_listener          as WindowListener             newtype#}
{#pointer *river_output_v1_listener          as RiverOutputListener        newtype#}
{#pointer *river_seat_v1_listener            as RiverSeatListener          newtype#}
{#pointer *river_pointer_binding_v1_listener as PointerBindingListener     newtype#}

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

deriving instance Ord RiverWindow

instance IsWlProxy RiverWindowManager where toWlProxy (RiverWindowManager p) = WlProxy (castPtr p)
instance IsWlProxy RiverDecoration where toWlProxy (RiverDecoration p) = WlProxy (castPtr p)
instance IsWlProxy RiverWindow where toWlProxy (RiverWindow p) = WlProxy (castPtr p)
instance IsWlProxy RiverOutput where toWlProxy (RiverOutput p) = WlProxy (castPtr p)
instance IsWlProxy RiverSeat where toWlProxy (RiverSeat p) = WlProxy (castPtr p)
instance IsWlProxy RiverNode where toWlProxy (RiverNode p) = WlProxy (castPtr p)
instance IsWlProxy RiverPointerBinding where toWlProxy (RiverPointerBinding p) = WlProxy (castPtr p)
instance IsWlProxy RiverShellSurface where toWlProxy (RiverShellSurface p) = WlProxy (castPtr p)

-- * Imported interfaces

foreign import ccall "&river_window_manager_v1_interface"  river_window_manager_v1_interface  :: WlInterface
foreign import ccall "&river_window_v1_interface"          river_window_v1_interface          :: WlInterface
foreign import ccall "&river_decoration_v1_interface"      river_decoration_v1_interface      :: WlInterface
foreign import ccall "&river_shell_surface_v1_interface"   river_shell_surface_v1_interface   :: WlInterface
foreign import ccall "&river_node_v1_interface"            river_node_v1_interface            :: WlInterface
foreign import ccall "&river_output_v1_interface"          river_output_v1_interface          :: WlInterface
foreign import ccall "&river_seat_v1_interface"            river_seat_v1_interface            :: WlInterface
foreign import ccall "&river_pointer_binding_v1_interface" river_pointer_binding_v1_interface :: WlInterface

-- * Enums

{#enum river_output_v1_presentation_mode as RiverOutputPresentationMode {underscoreToCase}
  with prefix = "RIVER_OUTPUT_V1" deriving (Show, Eq, Ord, Bounded) #}

{#enum river_seat_v1_modifiers as RiverSeatModifiers {underscoreToCase}
  with prefix = "RIVER_SEAT_V1" deriving (Show, Eq, Ord, Bounded) #}

{#enum river_window_v1_edges as WindowEdges {underscoreToCase}
  with prefix = "RIVER_WINDOW_V1_EDGES" add prefix = "EDGE" deriving (Show, Eq) #}

{#enum river_window_v1_decoration_hint as WindowDecorationHint {underscoreToCase}
  with prefix = "RIVER_WINDOW_V1_DECORATION_HINT" deriving (Show, Eq, Ord) #}

{#enum river_window_v1_capabilities as WindowCapabilities {underscoreToCase}
  with prefix = "RIVER_WINDOW_V1_CAPABILITIES" deriving (Show, Eq) #}

-- * Errors

{#enum river_window_manager_v1_error as RiverWindowManagerError {underscoreToCase} deriving (Show) #}
{#enum river_window_v1_error         as RiverWindowError {underscoreToCase} deriving (Show) #}
{#enum river_decoration_v1_error     as RiverDecorationError {underscoreToCase} deriving (Show) #}
{#enum river_shell_surface_v1_error  as RiverShellSurfaceError {underscoreToCase} deriving (Show) #}
{#enum river_output_v1_error         as RiverOutputError {underscoreToCase} deriving (Show) #}

data RiverWindowManagerException = RiverWindowManagerException String deriving (Show)
instance Exception RiverWindowManagerException

-- * Misc

invalidWindow :: RiverWindow
invalidWindow = RiverWindow $ castPtr $ nullPtr

invalidSeat :: RiverSeat
invalidSeat = RiverSeat $ castPtr $ nullPtr
