module Main (main) where

import HSWM
import Foreign

main :: IO ()
main = hswm $ addKeys myKeys def
  { layoutHook = Tall 1 (3/100) (1/2) ||| Full
  , handleEventHook = debugHook
  , xkbLayout = Just $
    XkbRuleNames { rules = ""
                 , model = "pc104"
                 , layout = "dvp-my"
                 , variant = "dvp-my"
                 , options = "terminate:ctrl_alt_bksp,compose:rctrl-altgr,lv3:ralt_switch,lv3:menu_switch"
                 }
  }
  where
  myKeys =
    [ (("M", "n" :: String), toSomeAction FocusNext)
    , (("M", "Return"),      toSomeAction $ LaunchProgram "evince" [])
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

   | otherwise = do
     pTrace ev
     -- debug' $ "[EH] " <> tshow ev
     mempty
