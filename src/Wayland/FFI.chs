module Wayland.FFI where

import Foreign
import Foreign.C

#include <wayland-client-core.h>
#include <wayland-client-protocol.h>

data WaylandException = WaylandException String deriving (Show)
instance Exception WaylandException

{#pointer *wl_surface   as WlSurface   newtype #}
{#pointer *wl_array     as WlArray     newtype #}
{#pointer *wl_seat      as WlSeat      newtype #}
{#pointer *wl_keyboard  as WlKeyboard  newtype #}
{#pointer *wl_display   as WlDisplay   newtype #}
{#pointer *wl_registry  as WlRegistry  newtype #}
{#pointer *wl_interface as WlInterface newtype #}
{#pointer *wl_proxy     as WlProxy     newtype #}

{#pointer *wl_keyboard_listener as WlKeyboardListener newtype#}

deriving instance Show WlSurface
deriving instance Show WlArray
deriving instance Show WlSeat
deriving instance Show WlKeyboard
deriving instance Show WlDisplay
deriving instance Show WlRegistry
deriving instance Show WlInterface
deriving instance Show WlProxy

deriving instance Show WlKeyboardListener

-- * External interfaces

foreign import ccall "&wl_registry_interface" wl_registry_interface :: WlInterface
foreign import ccall "&wl_seat_interface"     wl_seat_interface     :: WlInterface
foreign import ccall "&wl_keyboard_interface" wl_keyboard_interface :: WlInterface

-- * Functions: wl_display

{#fun wl_display_connect   {`CString'}   -> `WlDisplay' #}
{#fun wl_display_roundtrip {`WlDisplay'} -> `Int' #}
{#fun wl_display_dispatch  {`WlDisplay'} -> `Int' #}
