{-# OPTIONS_GHC -Wno-type-defaults #-}
{-# OPTIONS_GHC -Wno-unused-binds #-}
{-# LANGUAGE UndecidableInstances #-}



module Main (main) where

import           HSWM
import qualified HSWM.Actions.WindowNavigation as WNav
import qualified HSWM.StackSet as W
import qualified HSWM.Util.Waybar as WB
import qualified HSWM.Wallpaper
import qualified HSWM.Util.IPC as IPC
import           HSWM.Util.Debug
import qualified HSWM.Actions.CycleWS as CycleWS
import qualified HSWM.Actions.CycleRecentWS as CyclRecentWS

import Core (testIM2)
import           Data.Ratio

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

class IsKeyAction a where
  toKeyAction :: String -> a -> SomeAction
instance {-# OVERLAPPABLE #-} IsKeyAction (H ()) where toKeyAction = namedA
instance {-# OVERLAPPABLE #-} IsKeyAction SomeAction where toKeyAction d a = SomeAction $ NamedAction d a
instance {-# OVERLAPPABLE #-} (Message a, Show a) => IsKeyAction a where toKeyAction d a = SomeAction $ NamedActionH (d ++ show a) (sendMessage a)

(=?) :: IsKeyAction a => String -> a -> SomeAction
desc =? action = toKeyAction desc action

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
      , logHook         = navLogHook <> IPC.ipcLogHook
      , xkbLayout       = Just dvpMyLayout
      , pointerBindings = myPointerBinds
      , repeatInfo      = Just (20, 150)
      , normalBorder    = parseRgba colBase02
      , focusedBorder   = parseRgba colCyan
      , startupHook     = IPC.serverStartupHook
      }
  where

  myKeys' =
    -- ====== Core ==========
    [ ("M-S-c",         "Close the focused window" =? withFocused manageKill)
    , ("M-S-q",         "Restart WM" =? sendRestart)
    , ("M-Return",      "New terminal window" =? toSomeAction (LaunchProgram "kitty" [])) -- Terminal
    , ("M-Escape",      "Print debug stack" =? debugAction)
    -- "M-<F1>" `CF.key'` helpCmd
    -- "M-r M-S-c"     cmdT @"Signal process (SIGKILL) of focused window (_NET_WM_PID)" (withFocused (signalProcessBy Posix.sigKILL))
    -- "M-q"           myRecompileRestart False True ? "Recompile && Restart"
    -- "M-C-q"         myRecompileRestart True False ? "Recompile (force)"
    -- "M-S-<Return>"  FloatNext.floatNext True >> spawnTerm def "" ? "Terminal (floating)"
    -- "M-$"           spawn (sh "physlock -p \"${HOSTNAME} ${DISPLAY}\"") ? "Lock (physlock)"
    -- "M-<Print>"     takeScreenshot
    , ("M-r t", "Test IM2" =? testIM2)

     -- ======== Execute ==========
    , ("M-r r",         "Prompt: run command" =? launchRofi ["-modes", "run", "-show", "run"])
     -- "M-r S-r"          >+ spawnPrompt xpConfig "Execute (T)"       ((\c -> spawnDialog' $ program (head c) (tail c)) . words) ? "Execute (Prompt)"
     -- "M-r M-r"          >+ spawnPrompt xpConfig "Execute (direct)"  (spawn . shell) ? "Execute (direct sh)"
     -- "M-r <Return>"     >+ spawnPrompt xpConfig "Execute shell"     (spawn . shell) ? "Execute shell (Prompt)"
     -- "M-r S-<Return>"   >+ spawnPrompt xpConfig "Execute shell (T)" (spawnDialog' . shell) ? "Execute shell in terminal (Prompt)"
     -- "M-r c"            >+ spawn "clipmenu" ["-p", "clipmenu", "-i"] ? "clipmenu"
     -- "M-r b"            >+ spawnDialog "bluetoothctl" ? "bluetoothctl"
     -- "M-r m"            >+ spawn "xmag" ["-mag","2","-source","960x540"] ? "xmag"
     -- "M-r t"            >+ spawnTermTmux def Nothing ? "Terminal (tmux)"
     -- "M-r f"            >+ spawnOnceKitty "fself" "bash" ["-lic", "fself"] doCenterFloat
     --   -- spawnDialog ("bash", ["-ic", "fself"]) ? "FZF multi-prompt"
     -- "M-r a" >+ spawn "dmenu_autorandr" ? "autorandr (menu)"

    -- ===== Screens =====
    , ("M-C-Right", "Focus previous screen" =? CycleWS.nextScreen)
    , ("M-C-Left",  "Focus next screen"     =? CycleWS.prevScreen)
    --let wsViewScreen scomp = "View screen %s" (PScreen.viewScreen scomp) (printf "%i" . fromEnum)
    --"M-"          >>+ skeys >++> wsViewScreen def
    --"M-S-"        >>+ skeys >++> WorkspaceSendToScreen
    --"M-M1-"       >>+ skeys >++> WorkspaceOnScreen FocusCurrent
    --"M-C-"        >>+ skeys >++> WorkspaceOnScreen FocusNew

    -- ===== Workspaces =====
    --
    -- "M-; "        >>+ tags >++> WorkspaceView
    -- "M-; M-"      >>+ tags >++> WorkspaceCopy
    -- "M-S-; "      >>+ tags >++> WorkspaceShiftTo
    --, ("M-y",        "Cycle recent hidden tags"       =? cycleRecentHiddenWS [xK_Super_L, xK_Alt_L] xK_y xK_p)
    --, ("M-S-n",      "Shift current tag (forwards)"   =? swapTo Next CycleWS.anyWS) -- XXX: save workspace order?
    --, ("M-S-p",      "Shift current tag (backwards)"  =? swapTo Prev CycleWS.anyWS)
    --, ( "M-g r"      WorkspaceSetNamePrompt
    --, ( "M-g n"      WorkspaceAddPrompt
    --, ( "M-g d"      WorkspaceRemoveFocused
    -- ( "M-g S-n"     wsPromptNew' "New tag for window: " ?+ (\to -> DynWS.addHiddenWorkspace to >> defile (shift to))   ? "Move window to new tag (XP)"
    -- ( "M-g c"       wsPrompt'    "Copy to tag: "        ?+ (\to -> withFocii $ \_ w -> windows $ CW.copyWindow w to)   ? "Copy window to this tag (XP)"
    -- ( "M-g m"       wsPrompt'    "Shift to tag: "       ?+ (defile . shift                                           ) ? "Move window to this tag (XP)"
    -- ( "M-g g"       wsPrompt'    "View tag: "           ?+ (defile . greedyView                                      ) ? "Go to tag (XP)"
    -- ( "M-g s"       GS.goToSelected gsconfig1                          ? "Go to window (GS)"
    -- ( "M-g f"       XP.windowPrompt xpConfigAuto XP.Goto XP.allWindows ? "Go to window (XP)"

    , ("M-SemiColon a", namedA "View workspace 1" $ modifyWindowSet $ W.view "1")
    , ("M-SemiColon b", namedA "View workspace 2" $ modifyWindowSet $ W.view "2")
    , ("M-SemiColon c", namedA "View workspace 3" $ modifyWindowSet $ W.view "3")

    -- ===== Workspace Groups ====
    -- "M-g M-n" >+ wsPromptNew' "New Workspace group: " ?+ addWSG ? "New WSG"
    -- "M-g M-g" >+ WSG.promptWSGroupView xpConfig "View WSG: " ? "View WSG (XP)"

     -- ====== Layout
    , ("M-Space",       "Layout: " =? NextLayout)
    , ("M-Shift-Space", "Layout: " =? FirstLayout)
    , ("M-Comma",       "Layout: " =? IncMasterN (-1))
    , ("M-Period",      "Layout: " =? IncMasterN 1)
    , ("M-x",           "Layout: " =? Shrink)
    , ("M-S-x",         "Layout: " =? Expand)
     --   "M-C-<Space>" >+ ResetLayout
     --   "M-."         >+ msgT (IncMasterN 1)    :>> Mosaic.Taller
     --   "M-,"         >+ msgT (IncMasterN (-1)) :>> Mosaic.Wider
     --   "M-b t"       >+ msgT ManageDocks.ToggleStruts
     --   "M-b l"       >+ msgT Magnifier.Toggle
     --   "M-m"         >+ MaximizeRestore
     --   "M-b s"       >+ ToggleScreenSpacing :>> ToggleWindowSpacing
     --   "M-b b"       >+ toggle1 NOBORDERS
     --   "M-b h"       >+ toggle1 (HINTSPLACEMENT (0.5, 0.5))
     --   "M-b f"       >+ toggle1 NBFULL
     --   "M-b m"       >+ toggle1 MIRROR
     --   "M-b x"       >+ toggle1 REFLECTX
     --   "M-b y"       >+ toggle1 REFLECTY
     --   "M-b M-x"     >+ msgT ManageDocks.ToggleStruts :>> toggle1 NOBORDERS :>> ToggleScreenSpacing :>> ToggleWindowSpacing

     -- ======= Layout: BSP
     --   "M-C-y"   >+ msgT BSP.SelectNode
     --   "M-C-p"   >+ msgT BSP.MoveNode
     --   "M-C-u"   >+ msgT BSP.FocusParent
     --   "M-C-r"   >+ msgT BSP.Rotate
     --   "M-C-="   >+ msgT BSP.Equalize
     --   "M-C-!"   >+ msgT BSP.Balance
     --   "M-C-"    >>+ directions2D >++> msgT . BSP.ExpandTowards
     --   "M-r M-b" >+ cmdPrompt xpConfig (Proxy :: Proxy LayoutBSPCommand)

    -- ====== Window =============
    , ("M-n",           "Focus down" =? windows W.focusDown)
    , ("M-p" ,          "Focus up"   =? windows W.focusUp)
    , ("M-b f",         "Toggle fullscreen (focused)" =? withFocused (doManage WToggleFullscreen))
    , ("M-f f",         "Float (focused)"             =? withFocused (\w -> modifyWindowSet (W.float w.river_window (W.RationalRect (1%10) (1%10) (1%2) (1%2)))))
    , ("M-f s",         "Sink (focused)"              =? withFocused (\w -> modifyWindowSet (W.sink w.river_window)))
     -- "M-<Tab>"   >+ cyclePads
     -- "M-!"       >+ togglePad "tmux-0"
     -- "M-/"       >+ togglePad "dynamic"
     -- "M-"        >>+ directions2D >++> WindowNavigation.Go
     -- "M-S-"      >>+ directions2D >++> WindowNavigation.Swap
     -- "M-f "      >>+ directions2D >++> flip SnapMove   Nothing
     -- "M-f S-"    >>+ directions2D >++> flip SnapGrow   Nothing
     -- "M-f C-"    >>+ directions2D >++> flip SnapShrink Nothing
     -- "M-f ,"     >+ RotSlavesDown
     -- "M-f ."     >+ RotSlavesUp
     -- "M-f M-,"   >+ RotAllDown
     -- "M-f M-."   >+ RotAllUp
     -- "M-f M-m"   >+ FocusMaster
     -- "M-f M-n"   >+ FocusUp
     -- "M-f M-p"   >+ FocusDown
     -- "M-f m"     >+ SwapMaster
     -- "M-f n"     >+ SwapUp
     -- "M-f p"     >+ SwapDown
     -- "M-f u"     >+ FocusUrgent
     -- "M-f b"     >+ ToggleFocusedWindowBorder
     -- "M-f c"     >+ CenterWindow
     -- "M-f s"     >+ SinkWindow
     -- "M-f S-s"   >+ SinkAll
     -- "M-f f"     >+ FloatWindow
     -- "M-f S-f"   >+ ToggleFloatAllNew
     -- "M-f y"     >+ SwitchLayer
     -- "M-f h"     >+ pidPrompt xpConfig "SpawnOn/PPID" ?+ (\p -> wsPromptWithCurrent xpConfig "Shift to:" ?+ setManageByPPID p) ? "SpawnOn by Window PID"

     -- ====== Media
     --   "M-+"                     >+ volume 3
     --   "M--"                     >+ volume (-3)
     --   "M-#"                     >+ togglePad "ncmpcpp"
     --   "M-@"                     >+ togglePad "taskwarrior-tui"
     --   "M-c m"                   >+ spawnOnceKitty "Pulsemixer" "pulsemixer" [] doCenterFloat
     --   "M-c n"                   >+ mpc ["next"]
     --   "M-c p"                   >+ mpc ["prev"]
     --   "M-c t"                   >+ mpc ["toggle"]
     --   "M-c y"                   >+ mpc ["single", "once"]
     --   "M-c r"                   >+ mpc ["random"]
     --   "M-c +"                   >+ mpc ["volume", "+3"]
     --   "M-c -"                   >+ mpc ["volume", "-3"]
     --   "M-c s"                   >+ spawn "sink-switch" ? "Toggle speakers-phones output [PA]" -- uses a custom script in ~/bin
     --   "<XF86AudioPlay>"         >+ mpc ["toggle"]
     --   "<XF86AudioStop>"         >+ mpc ["stop"]
     --   "<XF86AudioPrev>"         >+ mpc ["prev"]
     --   "<XF86AudioNext>"         >+ mpc ["next"]
     --   "<XF86AudioMute>"         >+ toggleMuteSink
     --   "<XF86AudioMicMute>"      >+ toggleMuteSource
     --   "<XF86AudioRaiseVolume>"  >+ volume 3
     --   "<XF86AudioLowerVolume>"  >+ volume (-3)
     --   "<XF86MonBrightnessUp>"   >+ backlight   2
     --   "<XF86MonBrightnessDown>" >+ backlight (-2)

     -- group "Prompts (Execute)" $ do
     --   "M-r e"   >+ environPrompt xpConfig               ? "Environ (Prompt)"
     --   "M-r p"   >+ XP.Pass.passPrompt xpConfig          ? "Pass (Prompt)"
     --   "M-r C-p" >+ XP.Pass.passOTPPrompt xpConfig       ? "Pass OTP (Prompt)"
     --   "M-r C-u" >+ XP.Pass.passPromptWith "show-field --clip username" xpConfig ? "Pass username (Prompt)"
     --   "M-r q"   >+ XP.QB.qutebrowserP xpConfigNoHist "qutebrowser" ?+ XP.QB.qutebrowser ? "Prompt: qutebrowser"
     --   "M-r s"   >+ inputPromptWithCompl xpConfig "scratchpad" (scratchpadCompl xpConfig myScratchpads) ?+ getAction . togglePad ? "Prompt: pad"
     --   "M-r d"   >+ desktopEntryPrompt xpConfig [] ? "Desktop Entry Launch Prompt"
     --   "M-r u"   >+ inputPromptWithHistCompl xpConfig "browser-app" ?+ (\s -> launchDesktopEntry "chrome-app" [s]) ? "Chrome App"

     -- ======== Prompts (XMonad)
     --   let allCommands =
     --         [ enumCommands (Proxy :: Proxy MiscCommand)
     --         , enumCommands (Proxy :: Proxy LayoutCommand)
     --         , enumCommands (Proxy :: Proxy LayoutGridCommand)
     --         ]
     --       cmdPromptAll = do
     --         bound <- boundCommands
     --         mkCmdPrompt (CmdPrompt "Cmd (ALL)" (nubBy ((==) `on` describe) $ concat allCommands ++ bound)) xpConfig
     --   "M-r M-c" >+ cmdPromptAll ? "Prompt: Cmd (ALL)"
     --   "M-r M-w" >+ cmdPrompt xpConfig (Proxy :: Proxy MiscCommand)
     --   "M-r M-l" >+ cmdPrompt xpConfig (Proxy :: Proxy LayoutCommand)
     --   "M-r M-g" >+ cmdPrompt xpConfig (Proxy :: Proxy LayoutGridCommand)
     --   "M-r S-w" >+ windowPromptWithMinimized xpConfig ? "Maximize Hidden Window (Prompt)"

    ]

  myPointerBinds =
    [ (("M", _BTN_LEFT),  namedA "Move"    $ startSeatOp SEAT_OP_MOVE)
    , (("M", _BTN_RIGHT), namedA "Stretch" $ startSeatOp SEAT_OP_RESIZE)
    ]

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
