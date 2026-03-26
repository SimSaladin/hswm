module Wayland
  ( module Wayland
  , module Wayland.Bindings
  ) where

import Foreign
import Foreign.C
import Wayland.Bindings

openDisplay :: String -> IO WlDisplay
openDisplay s = do
  display@(WlDisplay p) <- if s == "" then wl_display_connect nullPtr
                        else withCString s wl_display_connect
  when (p == nullPtr) $ throwIO WaylandDisplayConnectFailed
  return display
