-- |
-- Module      : Waybar.CFFI.Plugin.HSWM
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
module Waybar.CFFI.Plugin.HSWM where

import Control.Concurrent
import Control.Monad
import GI.Gtk as Gtk
import GI.Gtk.Objects.Box as Box
import GI.Gtk.Objects.Button as Button
import GI.Gtk.Objects.Container as Container
import GI.Gtk.Objects.Label as Label
import GI.Gtk.Objects.Widget as Widget
import HSWM.Util.IPC (ProtoMsg (..), clientRun)
import Waybar.CFFI.Plugin.Base

data MyMod = MyMod
  { -- | GtkBox* container
    container :: Box,
    -- | GtkButton* button
    button :: Button
  }
  deriving (Generic)

connectToWM :: String -> IO ()
connectToWM _args = clientRun Nothing perMsg (\_say -> forever $ threadDelay maxBound)
  where
    perMsg :: ProtoMsg -> IO ()
    perMsg msg = putStrLn $ "warn: unhandled incoming message: " <> show msg

instanceNew :: IConf a -> IO MyMod
instanceNew IConf {..} = do
  putStrLn $ "cffi_example: init config: waybar " ++ wbVersion ++ " :: config entries " <> show (length configs) <> ":"
  putStrLn $ "configs: " ++ show configs

  -- Add a container for displaying the next widgets
  container <- Box.boxNew OrientationHorizontal 5
  Container.containerAdd rootWidget container

  Label.labelNew (Just "[Example C FFI Module:") >>= Container.containerAdd container
  button <- Button.buttonNewWithLabel "click me !"
  _ <- on button #clicked (putStrLn "Button clicked!")
  Container.containerAdd container button
  labelNew (Just "]") >>= Container.containerAdd container

  return MyMod {..}

instanceDestroy :: IConf MyMod -> IO ()
instanceDestroy IConf {instanceData = MyMod {container, button}} = do
  putStrLn "deinit..."
  Widget.widgetDestroy container
  Widget.widgetDestroy button

-- | Update the UI
updateDo :: IConf MyMod -> IO ()
updateDo _ = pure ()

-- | Handle signal which was propagated by waybar (reload, etc.)
signalDo :: IConf MyMod -> Int -> IO ()
signalDo _ _ = pure ()

-- | Trigger a module action
actionDo :: IConf MyMod -> String -> IO ()
actionDo _iconf actStr = do
  putStrLn $ "warn: unhandled module action (" <> actStr <> ")"
