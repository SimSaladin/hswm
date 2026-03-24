module Wayland
  ( module Wayland
  , module Wayland.Bindings
  ) where

import Wayland.Bindings
import Foreign
import Foreign.C

data WaylandDisplayException = WaylandDisplayConnectFailed deriving Show
instance Exception WaylandDisplayException

openDisplay :: String -> IO WlDisplay
openDisplay s = do
  display@(WlDisplay p) <- if s == "" then wl_display_connect nullPtr
                        else withCString s wl_display_connect
  when (p == nullPtr) $ throwIO WaylandDisplayConnectFailed
  return display
