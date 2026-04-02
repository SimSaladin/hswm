{-# OPTIONS_GHC -Wno-type-defaults #-}
{-# OPTIONS_GHC -Wno-unused-binds #-}


module Main (main) where

import           HSWM
import qualified HSWM.Actions.WindowNavigation as WNav
import qualified HSWM.StackSet as W
import qualified HSWM.Util.Waybar as WB
import qualified HSWM.Wallpaper

import qualified Wayland.Client.Extras as WL

import qualified Data.Map as M
import           Data.Ratio
import           Foreign
import           Foreign.C

default ([Char])


-- | Solarized palette
colBase03, colBase02, colBase01, colBase00, colBase0, colBase1, colBase2, colBase3, colYellow, colOrange, colRed, colMagenta, colViolet, colBlue, colCyan, colGreen :: String
colBase03  = "0x002b36" -- "#002b36"
colBase02  = "0x073642" -- "#073642"
colBase01  = "0x586e75" -- "#586e75"
colBase00  = "0x657b83" -- "#657b83"
colBase0   = "0x839496" -- "#839496"
colBase1   = "0x93a1a1" -- "#93a1a1"
colBase2   = "0xeee8d5" -- "#eee8d5"
colBase3   = "0xfdf6e3" -- "#fdf6e3"
colYellow  = "0xb58900" -- "#b58900"
colOrange  = "0xcb4b16" -- "#cb4b16"
colRed     = "0xdc322f" -- "#dc322f"
colMagenta = "0xd33682" -- "#d33682"
colViolet  = "0x6c71c4" -- "#6c71c4"
colBlue    = "0x268bd2" -- "#268bd2"
colCyan    = "0x2aa198" -- "#2aa198"
colGreen   = "0x859900" -- "#859900"


main :: IO ()
main = do
  (navKeys, navLogHook) <- WNav.mkWindowNavigationKeys ("k", "h", "j", "l") ("M", "M-S") (\m k -> m ++ "-" ++ k)
  hswm
    $ addKeys (fromADTKeys $ parseSubmaps $ myKeys' ++ navKeys)

    $ WB.waybarSB def

    $ HSWM.Wallpaper.usingWallpaper HSWM.Wallpaper.Config { filepath = "/home/sim/wallpaper.png" }

    (def @(HSWMConfig Full))
      { layoutHook      = Tall 1 (3/100) (1/2) ||| Full
      , handleEventHook = debugHook
      , logHook         = navLogHook
      , xkbLayout       = Just dvpMyLayout
      , pointerBindings = myPointerBinds
      , repeatInfo      = Just (20, 150)
      , normalBorder    = parseRgba colBase02
      , focusedBorder   = parseRgba colCyan
      }
  where

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
  pTrace "[[[ Outputs ]]]" >> gets _outputs >>= mapM_ pTrace
  pTrace "[[[ Windows ]]]" >> gets _windows >>= mapM_ pTrace . M.elems
  pTrace "[[[WindowSet]]]" >> gets windowset >>= pTrace

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
