module Main (main) where

import Data.Ratio
import HSWM
import Foreign
import qualified HSWM.Wallpaper
import qualified HSWM.StackSet as W

main :: IO ()
main = hswm $ addKeys myKeys def
  { layoutHook = Tall 1 (3/100) (1/2) ||| Full
  , startupHook = HSWM.Wallpaper.startupHook HSWM.Wallpaper.Config { filepath = "/home/sim/wallpaper.png" }
  , handleEventHook = debugHook <> HSWM.Wallpaper.handleEventHook
  , xkbLayout = Just $
    XkbRuleNames { rules = ""
                 , model = "pc104"
                 , layout = "dvp-my"
                 , variant = "dvp-my"
                 , options = "terminate:ctrl_alt_bksp,compose:rctrl-altgr,lv3:ralt_switch,lv3:menu_switch"
                 }
  , pointerBindings =
    [ (("M", _BTN_LEFT), namedA "Move" $ return ())
    , (("M", _BTN_RIGHT), namedA "RIGHT" $ return ())
    ]
  }
  where
  myKeys =
    [ (("M", "n" :: String), windowsA "Focus down" W.focusDown)
    , (("M", "p" :: String), windowsA "Focus up" W.focusUp)
    , (("M", "s"),           namedA "Sink focused" $ withFocused $ \w -> modifyWindowSet (W.sink w.river_window))
    , (("M", "f"),           namedA "Float focused" $ withFocused $ \w -> modifyWindowSet (W.float w.river_window (W.RationalRect 0 0 (1%2) (1%2))))
    , (("M", "Return"),      toSomeAction $ LaunchProgram "kitty" [])
    , (("M", "Escape"),      namedA "Debug" debugAction)
    , (("M", "Space"),      messageA NextLayout)
    , (("M-Shift", "Space"),      messageA FirstLayout)
    , (("M", "Comma"),      messageA $ IncMasterN (-1))
    , (("M", "Period"),      messageA $ IncMasterN 1)
    , (("M", "x"),      messageA Shrink)
    , (("M-S", "x"),      messageA Expand)
    ]

debugHook :: Event -> H All
debugHook ev
   | WindowManagerEvent WindowManagerManageStart{} <- ev = mempty
   | WindowManagerEvent WindowManagerRenderStart{} <- ev = mempty

   | XkbEvent (XkbKeyPressed dt _) <- ev = do
      (xb :: XkbBinding SomeAction) <- liftIO $ deRefStablePtr (castPtrToStablePtr dt)
      debug' $ toText $ printf "[EH] KEY PRESS ev=%s action=%s" (show ev) (show xb.action)
      pTrace ev
      mempty

   | WlOutputEvent e <- ev = pTrace e >> mempty
   | SeatEvent e <- ev = pTrace e >> mempty
   | OutputEvent e <- ev = pTrace e >> mempty
   | WindowEvent e <- ev = pTrace e >> mempty
   | XkbKeyboardEvent e <- ev = pTrace e >> mempty
   | WindowManagerEvent e <- ev = pTrace e >> mempty
   | WlShmEvent _ <- ev = mempty
   | otherwise = pTrace ev >> mempty

debugAction :: H ()
debugAction = do
  ws <- gets windowset
  pTrace ws
