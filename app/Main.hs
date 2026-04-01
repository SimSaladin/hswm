module Main (main) where

import           Data.Ratio
import           Foreign
import           Foreign.C
import           Foreign.C.ConstPtr
import           HSWM
import qualified HSWM.StackSet as W
import qualified HSWM.Wallpaper
import qualified HSWM.Util.Waybar as WB
import qualified Wayland.Client.Extras as WL

default ([Char])

main :: IO ()
main =
 hswm
  -- $ addKeys myKeys
  $ addKeys (fromADTKeys $ parseSubmaps myKeys')

  $ WB.waybarSB def
  $ HSWM.Wallpaper.usingWallpaper HSWM.Wallpaper.Config { filepath = "/home/sim/wallpaper.png" }

  (def @(HSWMConfig Full))
  { layoutHook = Tall 1 (3/100) (1/2) ||| Full
  , handleEventHook = debugHook
  , xkbLayout = Just dvpMyLayout
  , pointerBindings = myPointerBinds
  , repeatInfo = Just (20, 150)
  } where

  myKeys' =
    [ ("M-n",           windowsA "Focus down" W.focusDown)
    , ("M-p" ,          windowsA "Focus up" W.focusUp)
    , ("M-b f",         namedA "Fullscreen" $ withFocused $ doManage WToggleFullscreen)
    , ("M-f f",         namedA "Float focused" $ withFocused $ \w -> modifyWindowSet (W.float w.river_window (W.RationalRect (1%10) (1%10) (1%2) (1%2))))
    , ("M-f s",         namedA "Sink focused" $ withFocused $ \w -> modifyWindowSet (W.sink w.river_window))
    , ("M-Space",       messageA NextLayout)
    , ("M-Shift-Space", messageA FirstLayout)
    , ("M-Comma",       messageA $ IncMasterN (-1))
    , ("M-Period",      messageA $ IncMasterN 1)
    , ("M-x",           messageA Shrink)
    , ("M-S-x",         messageA Expand)
    , ("M-Return",      toSomeAction $ LaunchProgram "kitty" [])
    , ("M-Escape",      namedA "Debug" debugAction)
    , ("M-r r",         named "RUn cmd" $ launchRofi ["-modes", "run", "-show", "run"])
    , ("M-S-c",         namedA "Kill focused window" $ withFocused manageKill)
    , ("M-S-q",         namedA "Restart" sendRestart)
    ]

  myPointerBinds =
    [ (("M", _BTN_LEFT),  namedA "Move"    $ return ())
    , (("M", _BTN_RIGHT), namedA "Stretch" $ return ())
    ]

debugHook :: Event -> H All
debugHook ev
   | WindowManagerEvent WindowManagerManageStart{} <- ev = mempty
   | WindowManagerEvent WindowManagerRenderStart{} <- ev = mempty
   | XkbEvent (XkbKeyPressed dt _)   <- ev = do
      (xb :: XkbBinding SomeAction) <- liftIO $ deRefStablePtr (castPtrToStablePtr dt)
      debug' $ toText $ printf "[EH] KEY PRESS ev=%s action=%s" (show ev) (show xb.action)
      pTrace ev
      mempty

   | SeatEvent SeatEventPointerPosition{}   <- ev = mempty
   | SeatEvent e                     <- ev = pTrace e >> mempty

   | OutputEvent e                   <- ev = pTrace e >> mempty

   | WindowEvent WindowDimensions{}  <- ev = mempty
   | WindowEvent e                   <- ev = pTrace e >> mempty

   | WlOutputEvent _                 <- ev = mempty -- pTrace e >> mempty
   | XkbKeyboardEvent e              <- ev = pTrace e >> mempty
   | WindowManagerEvent e            <- ev = pTrace e >> mempty
   | WlShmEvent _                    <- ev = mempty

   | ForeignTopLevelHandleV1 e <- ev = do
       io $ case e of
                                           WL.ExtForeignToplevelHandleV1Title _ _ cs -> peekCString (unConstPtr cs) >>= \s -> pTrace (e, s)
                                           WL.ExtForeignToplevelHandleV1Identifier _ _ cs -> peekCString (unConstPtr cs) >>= \s -> pTrace (e, s)
                                           WL.ExtForeignToplevelHandleV1AppId _ _ cs -> peekCString (unConstPtr cs) >>= \s -> pTrace (e, s)
                                           _ -> return ()
       mempty

   | otherwise                             = pTrace ev >> mempty

debugAction :: H ()
debugAction = do
  gets _outputs >>= pTrace
  ws <- gets windowset
  pTrace ws

dvpMyLayout :: XkbRuleNames
dvpMyLayout = XkbRuleNames
  { rules = ""
  , model = "pc104"
  , layout = "dvp-my"
  , variant = "dvp-my"
  , options = "terminate:ctrl_alt_bksp,compose:rctrl-altgr,lv3:ralt_switch,lv3:menu_switch"
  }

launchRofi :: [String] -> SomeAction
launchRofi args = toSomeAction $ LaunchProgram "rofi" (["-dpi", "150"] ++ args)
