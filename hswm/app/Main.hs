{-# LANGUAGE ExtendedDefaultRules #-}
{-# LANGUAGE NamedDefaults #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# OPTIONS_GHC -Wno-error=all #-}
{-# OPTIONS_GHC -Wno-missing-signatures #-}
{-# OPTIONS_GHC -Wno-type-defaults #-}

module Main (main) where

import HSWM hiding ((-->>))
import HSWM.Actions.AudioControl qualified as AudioControl
import HSWM.Actions.CycleRecentWS qualified as CycleRecentWS
import HSWM.Actions.CycleWS qualified as CycleWS
import HSWM.Actions.DynamicWorkspaceOrder qualified as DWO
import HSWM.Actions.DynamicWorkspaces qualified as DynWS
import HSWM.Actions.OnScreen qualified as OnScreen
import HSWM.Actions.PhysicalScreens qualified as PScreen
import HSWM.Hooks.NonExclusiveArea qualified as NEArea
import HSWM.Layout.BinarySpacePartition qualified as BSP
import HSWM.Layout.BoringWindows (UpdateBoring (..), boringWindows)
import HSWM.Layout.GridVariants qualified as GV
import HSWM.Layout.Maximize qualified as L.Maximize
import HSWM.Layout.Minimize qualified as L.Minimize
import HSWM.Layout.MultiToggle (Toggle (..), mkToggle1)
import HSWM.Layout.MultiToggle.Instances
import HSWM.Layout.Reflect (REFLECTX (..), REFLECTY (..))
import HSWM.Layout.WindowNavigation qualified as L.WNavigation
import HSWM.Prompt.Bindings (bindsPrompt)
import HSWM.Prompt.Environment (environPrompt)
import HSWM.Prompt.Qutebrowser (qutebrowserPrompt)
import HSWM.Prompt.Windows
import HSWM.Prompt.Workspaces
import HSWM.StackSet qualified as W
import HSWM.Util.Debug
import HSWM.Util.ExtensibleState qualified as XS
import HSWM.Util.IPC qualified as IPC
import HSWM.Util.Minimize (Minimized (..))
import HSWM.Util.NamedScratchpad
import HSWM.Util.RofiPrompt (launchRofi, (-->>), (:-->>) (..))
import HSWM.Util.RofiPrompt qualified as RP
import HSWM.Wallpaper qualified as Wallpaper

import Data.List qualified as L
import Data.Map qualified as M
import Data.Set qualified as S

default MonadH (H, HS)
default MonadHS (H, HS)
default GetHState (H, HS)
default MonadUnliftIO (IO, H)
default MonadIO (H, IO)

main :: (HasCallStack) => IO ()
main =
  -- adding keys late, so that a changed modMask override can take effect...
  hswm (validateAndAddKeys myKeys) $
    Wallpaper.usingWallpaper def $ -- {filepath = "/home/sim/wallpaper.png"} $
      IPC.ipcServer def $
        (def @(HSWMConfig H Full))
          & layoutHook .~ myLayoutHook
          & manageHook .~ myManageHook
          & handleEventHook <>~ debugHook
          & handleEventHookDynamic <>~ debugHookDyn
          & startupHook <>~ runInHS (scratchpadsStartupHook myScratchpads)
          & pointerBindings <>~ myPointerBinds
          & defaultModMask .~ "mod4"
          & borderWidth .~ 1
          & normalBorder .~ parseRGBA ColBase02
          & focusedBorder .~ parseRGBA ColCyan
          & xkbLayout ?~ myKeyboard
          & repeatInfo . rate .~ 18
          & repeatInfo . delay .~ 200
          & cursorTheme .~ "Vanilla-DMZ"
          & cursorSize .~ 24

myKeyboard :: XkbRuleNames
myKeyboard =
  def
    & model
      .~ "pc104"
    & layouts
      .~ ["dvp-my(dvp-my)"]
    & options
      ?~ [ "terminate:ctrl_alt_bksp"
         , "compose:rctrl-altgr"
         , "lv3:ralt_switch"
         , "lv3:menu_switch"
         ]

myLayoutHook :: _
myLayoutHook =
  trackingModifiers $
    togglesOnTop $
      NEArea.nonExclusiveArea $
        L.Maximize.maximize $
          windowNavigation $
            toggleTransforms
              chooseBase
  where
    -- Base layouts (choose)
    chooseBase =
      BSP.emptyBSP
        ||| GV.Grid (16 / 10)
        ||| GV.SplitGrid GV.R 2 3 (2 / 3) (16 / 10) (5 / 100)
        ||| Tall 3 (3 / 100) (1 / 2)

    -- Modifiers on top of everything that track and manipulate window states
    trackingModifiers = L.Minimize.minimize . boringWindows

    -- Toggleable modifiers on top
    togglesOnTop = mkToggle1 NOBORDERS . mkToggle1 NBFULL

    -- -- Toggleable transformers for mirroring/reflecting underlying layout
    toggleTransforms = mkToggle1 REFLECTX . mkToggle1 REFLECTY . mkToggle1 MIRROR

    -- Navigate to windows by directional keys (hjkl)
    -- apply on top of any modifiers that might modify placement of tiled windows
    windowNavigation = L.WNavigation.configurableNavigation (L.WNavigation.navigateBrightness 0.8)

myManageHook :: Query (Endo WindowSet)
myManageHook =
  composeOne
    [ managePads
    , -- ominWidth -> 550, minHeight -> 348, maxWidth -> 0, maxHeight -> 0
      appName =? "eu.web-eid." -?> doCenterFloat (2 / 5) (2 / 5)
    , appName =? "xdg-desktop-portal-gtk" -?> doCenterFloat (2 / 5) (2 / 5)
    , hasParent -?> doFloat
    ]

myPointerBinds :: [((String, Button), SomeAction H)]
myPointerBinds =
  [ (("M", btnLeft), startSeatOp SEAT_OP_MOVE <?> "Move window")
  , (("M", btnRight), startSeatOp SEAT_OP_RESIZE <?> "Resize (stretch) window")
  ]

myKeys :: Validator ()
myKeys = do
  group "Core" $ do
    "M-F1      " .@= showKeyHelp <?> "Show help"
    "M-Return  " .@= spawnKitty [] <?> "New terminal window (systemd service)"
    "M-S-Return" .@= spawnProcess "kitty" [] <?> "New terminal window (direct)"
    "M-Dollar  " .@= spawnProcess "swaylock" ["-k"] <?> "Lock session"
    "M-q       " .@= sendRestart <?> "Restart WM"
    "M-Print   " .@= sdSpawnProcess def "sh" ["-c", "grim -g \"$(slurp)\""] <?> "Screenshot"
    "M-S-c     " .@= withFocused manageKill <?> "Close the focused window"
    "M-r>M-S-c " .@= withFocused (signalWindowByPID sigKILL) <?> "Signal process (SIGKILL) of focused window"
    "M-Escape  " .@= debugAction <?> "Print debug stack"

  group "Screen" $ do
    "M-C-Right  " .@= PScreen.onNextNeighbour def W.view <?> "Focus next screen"
    "M-C-Left   " .@= PScreen.onPrevNeighbour def W.view <?> "Focus previous screen"
    "M-C-S-Right" .@= PScreen.onNextNeighbour def W.shift <?> "Send active window to next screen"
    "M-C-S-Left " .@= PScreen.onPrevNeighbour def W.shift <?> "Send active window to previous screen"
    "M-         " ///& screenkeys2D .@=> \i -> PScreen.viewScreen def i <?> "View screen " ++ show i
    "M-S-       " ///& screenkeys2D .@=> \i -> PScreen.sendToScreen def i <?> "Send window to screen " ++ show i
    "M-M1-      " ///& screenkeys2D .@=> \i -> sendFocusedWorkspaceToScreen OnScreen.FocusCurrent i <?> "Send workspace to screen " ++ show i
    "M-C-       " ///& screenkeys2D .@=> \i -> sendFocusedWorkspaceToScreen OnScreen.FocusNew i <?> "Send workspace to screen and focus it " ++ show i

  group "Layout" $ do
    "M-C-space" .@= (view (config . layoutHook) >>= setLayout) <?> "Layout: Reset"
    "M-space  " .@= SendMessage NextLayout
    "M-S-space" .@= SendMessage FirstLayout
    "M-comma  " .@= SendMessage (IncMasterN (-1))
    "M-period " .@= SendMessage (IncMasterN 1)
    "M-x      " .@= SendMessage Shrink
    "M-S-x    " .@= SendMessage Expand
    "M-b t    " .@= SendMessage NEArea.ToggleNonExclusiveArea
    "M-b b    " .@= SendMessage (Toggle NOBORDERS)
    "M-b m    " .@= SendMessage (Toggle MIRROR)
    "M-b f    " .@= SendMessage (Toggle NBFULL)
    "M-b M-f  " .@= withFocused (doManage WToggleFullscreen) <?> "Fullscreen: focused"
    "M-b x    " .@= SendMessage (Toggle REFLECTX)
    "M-b y    " .@= SendMessage (Toggle REFLECTY)
    "M-b M-x  " .@= SendMessage NEArea.ToggleNonExclusiveArea :>>: SendMessage (Toggle NOBORDERS)
    "M-m      " .@= withFocused (sendMessage . L.Maximize.maximizeRestore . view riverWindow) <?> "Maximize Restore"
    "M-b M-c  " .@= cleanupMinimized <?> "Clear boring window cache"
    {- TODO also
    --   "M-b s"       >+ ToggleScreenSpacing :>> ToggleWindowSpacing -}
    group "BSP" $ do
      "M-C-y     " .@= SendMessage BSP.SelectNode
      "M-C-p     " .@= SendMessage BSP.MoveNode
      "M-C-u     " .@= SendMessage BSP.FocusParent
      "M-C-r     " .@= SendMessage BSP.Rotate
      "M-C-x s   " .@= SendMessage BSP.Swap
      "M-C-x e   " .@= SendMessage BSP.Equalize
      "M-C-x b   " .@= SendMessage BSP.Balance
      "M-C-      " ///& directions2D .@=> \dir -> SendMessage (BSP.ExpandTowards dir) <!!> (250, 100)
      "M-C-S-    " ///& directions2D .@=> \dir -> SendMessage (BSP.ShrinkFrom dir) <!!> (250, 100)

  group "Workspace" $ do
    "M-semicolon   >" ///& workspaces2D .@=> \i -> DWO.withNthWorkspace W.view i <?> "View workspace " ++ show i
    "M-S-semicolon >" ///& workspaces2D .@=> \i -> DWO.withNthWorkspace W.shift i <?> "Shift to workspace " ++ show i
    "M-y            " .@= cycleRecentHiddenWS "C-M4-A" "y" "p" <?> "Cycle recent hidden tags"
    "M-S-n          " .@= DWO.swapWith Next CycleWS.anyWS <?> "Shift current tag (forwards)"
    "M-S-p          " .@= DWO.swapWith Prev CycleWS.anyWS <?> "Shift current tag (backwards)"
    "M-g r          " .@= renameWorkspacePrompt myRofiBaseConfig <?> "Rename workspace (prompt)"
    "M-g n          " .@= addWorkspacePrompt myRofiBaseConfig <?> "Add workspace (prompt)"
    "M-g g          " .@= workspacePrompt myRofiBaseConfig <?> "Go to workspace (prompt)"
    "M-g d          " .@= removeFocusedWorkspace <?> "Remove focused workspace"
    "M-g f          " .@= windowPromptFocusSelected myRofiBaseConfig <?> "Go to window"
    "m-g m          " .@= windowPromptShiftHere myRofiBaseConfig <?> "Bring a window to this tag"

  group "Window" $ do
    "M-      " ///& directions2D .@=> SendMessage . L.WNavigation.Go
    "M-S-    " ///& directions2D .@=> SendMessage . L.WNavigation.Swap
    "M-n     " .@= windows W.focusDown <?> "Focus down" <!> 750
    "M-p     " .@= windows W.focusUp <?> "Focus up" <!> 750
    "M-f s   " .@= withFocused (\w -> modifyWindowSet (W.sink w.river_window)) <?> "Sink focused window"
    "M-f f   " .@= withFocused (\w -> modifyWindowSet (\ws -> W.float w.river_window (rationalRectIn (w ^. rectangle) (screenRect $ W.screenDetail $ W.current ws)) ws)) <?> "Float focused window"
    "M-exclam" .@= togglePad "tmux-0" <?> "Toggle tmux PAD"
    "M-Slash " .@= togglePad "dynamic" <?> "Toggle dynamic PAD"

  group "Prompts/Run" $ do
    "M-r r  " .@= launchRofi (RP.modePromptWith myRofiBaseConfig "run") <?> "Run shell (prompt)"
    "M-r d  " .@= launchRofi (RP.modePromptWith myRofiBaseConfig "drun" & RP.showIcons .~ True) <?> "Run desktop app (prompt)"
    "M-r s  " .@= promptLaunchSystemD <?> "Run via systemd-run (prompt)"
    "M-r e  " .@= environPrompt def myRofiBaseConfig <?> "Environment variable prompt"
    "M-r M-r" .@= bindsPrompt myRofiBaseConfig <?> "Prompt for any bound key action"
    "M-r c  " .@= launchRofi (RP.modePromptWith myRofiBaseConfig "clipboard:cliphist-rofi-img" & RP.showIcons .~ True) <?> "Open cliphist prompt"
    "M-r b  " .@= spawnOnceKitty "bluetoothctl@kitty" "bluetoothctl" [] (doCenterFloat (3 / 5) (2 / 3))
    "M-r q  " .@= qutebrowserPrompt myRofiBaseConfig <?> "Launch qutebrowser (prompt for name)"
    "m-r a  " .@= launchRofi (RP.modePromptWith myRofiBaseConfig "way-displays") <?> "Open way-displays config menu"

  group "Media" $ do
    "M-plus               " .@= AudioControl.adjustVolume "@DEFAULT_SINK@" volAdjAmount <!!> volAdjRepeat
    "M-minus              " .@= AudioControl.adjustVolume "@DEFAULT_SINK@" (-volAdjAmount) <!!> volAdjRepeat
    "M-numbersign         " .@= togglePad "ncmpcpp" <?> "Toggle ncmpcpp"
    "M-c s                " .@= sdSpawnProcess def "sink-switch" [] <?> "Toggle speakers-phones output" <!> 800
    "M-c m                " .@= spawnOnceKitty "pulsemixer@kitty" "pulsemixer" [] (doCenterFloat (1 / 2) (2 / 3))
    "M-c n                " .@= mpc ["next"]
    "M-c p                " .@= mpc ["prev"]
    "M-c t                " .@= mpc ["toggle"]
    "M-c y                " .@= mpc ["single", "once"]
    "M-c r                " .@= mpc ["random"]
    "M-c plus             " .@= mpc ["volume", "+3"] <!!> volAdjRepeat
    "M-c minus            " .@= mpc ["volume", "-3"] <!!> volAdjRepeat
    "XF86AudioPlay        " .@= mpc ["toggle"]
    "XF86AudioStop        " .@= mpc ["stop"]
    "XF86AudioPrev        " .@= mpc ["prev"]
    "XF86AudioNext        " .@= mpc ["next"]
    "XF86AudioMute        " .@= AudioControl.toggleMute "@DEFAULT_SINK@" def
    "XF86AudioMicMute     " .@= AudioControl.toggleMute "@DEFAULT_SOURCE@" def
    "XF86AudioRaiseVolume " .@= AudioControl.adjustVolume "@DEFAULT_SINK@" volAdjAmount <!!> volAdjRepeat
    "XF86AudioLowerVolume " .@= AudioControl.adjustVolume "@DEFAULT_SINK@" (-volAdjAmount) <!!> volAdjRepeat
    "XF86MonBrightnessUp  " .@= backlight ["set", "2%+"] <!> 80
    "XF86MonBrightnessDown" .@= backlight ["set", "2%-"] <!> 80
  where
    screenkeys2D = map (: []) "wvza" `zip` [(PScreen.P 0) ..]
    directions2D = map (: []) "kjlh" `zip` [minBound .. maxBound @Direction2D]
    workspaces2D = map (: []) ['a' .. 'z'] `zip` [(0 :: Int) ..]
    volAdjAmount = 0.01
    volAdjRepeat = (75, 175)

-- missing key bindings TODO
--
-- Prompts:
-- "M-r p"        XP.Pass.passPrompt xpConfig          ? "Pass (Prompt)"
-- "M-r C-p"      XP.Pass.passOTPPrompt xpConfig       ? "Pass OTP (Prompt)"
-- "M-r C-u"      XP.Pass.passPromptWith "show-field --clip username" xpConfig ? "Pass username (Prompt)"
-- "M-r s"        inputPromptWithCompl xpConfig "scratchpad" (scratchpadCompl xpConfig myScratchpads) ?+ getAction . togglePad ? "Prompt: pad"
-- "M-r u"        inputPromptWithHistCompl xpConfig "browser-app" ?+ (\s -> launchDesktopEntry "chrome-app" [s]) ? "Chrome App"
-- "M-f h"        pidPrompt xpConfig "SpawnOn/PPID" ?+ (\p -> wsPromptWithCurrent xpConfig "Shift to:" ?+ setManageByPPID p) ? "SpawnOn by Window PID"
--
-- Float actions:
--
-- "M-f S-f"      ToggleFloatAllNew
-- "M-S-<Return>" FloatNext.floatNext True >> spawnTerm def "" <?> "Terminal (floating)"
-- "M-f "   ///& directions2D >++> flip SnapMove   Nothing
-- "M-f S-" ///& directions2D >++> flip SnapGrow   Nothing
-- "M-f C-" ///& directions2D >++> flip SnapShrink Nothing
--
-- Windows:
-- "M-f ,"        RotSlavesDown
-- "M-f ."        RotSlavesUp
-- "M-f M-,"      RotAllDown
-- "M-f M-."      RotAllUp
-- "M-f M-m"      FocusMaster
-- "M-f M-n"      FocusUp
-- "M-f M-p"      FocusDown
-- "M-f m"        SwapMaster
-- "M-f n"        SwapUp
-- "M-f p"        SwapDown
-- "M-f u"        FocusUrgent
-- "M-f b"        ToggleFocusedWindowBorder
-- "M-f c"        CenterWindow
-- "M-f S-s"      SinkAll
-- "M-f y"        SwitchLayer
--
-- Scratchpads:
-- "M-Tab",       cyclePads <?> "Cycle pads"

-- * Scratchpads

myScratchpads :: [Scratchpad]
myScratchpads =
  exclusive
    [ mkPad "tmux-0" mhd (appName =? "tmux-0") (spawnKitty ["--app-id=tmux-0", "tmux", "a"])
    , mkPad "ncmpcpp" mhd (appName =? "ncmpcpp") (spawnKitty ["--app-id=ncmpcpp", "ncmpcpp"])
    , mkPadDyn "dynamic" def idHook
    ]
  where
    mhd = doRFRR 0.2 0.1 0.6 0.6
    doRFRR x y w h = doRectFloat (W.RationalRect x y w h)

-- * Prompt settings

myRofiBaseConfig :: RP.RofiPromptConfig s o
myRofiBaseConfig =
  (RP.dmenuPrompt @())
    & RP.markupInput .~ True
    & RP.smartCase .~ True
    & RP.showIcons .~ True
    & RP.matching .~ "fuzzy,prefix,normal"
    & RP.withHistory' Nothing

-- * Custom actions

-- | Run a prompted command as systemd service
promptLaunchSystemD :: H ()
promptLaunchSystemD = void $ ([] :: [String]) -->> pc :-->> sdSpawnShell def
  where
    pc =
      myRofiBaseConfig @_ @RP.SelectValues
        & RP.withLineHistory "systemd-run"
        & RP.prompt .~ "systemd-run"
        & RP.promptMessage .~ "Execute the command as a systemd service"

sendFocusedWorkspaceToScreen :: OnScreen.Focus -> PScreen.PhysicalScreen -> HS ()
sendFocusedWorkspaceToScreen focus i = do
  msid <- PScreen.getScreen def i
  whenJust msid $ \s ->
    windows $
      W.currentTag >>= \x ->
        OnScreen.onScreen (W.greedyView x) focus s

backlight :: [String] -> SomeAction H
backlight args = spawnProcessFast "brightnessctl" ("--machine-readable" : args) <?> "Display brightness: " ++ unwords args

mpc :: [String] -> SomeAction H
mpc args = spawnProcessFast "mpc" args <?> "MPD: " ++ unwords args

spawnOnceKitty :: ScratchpadId -> String -> [String] -> ManageHook -> SomeAction H
spawnOnceKitty name prog args mh = toggleScratchpad' True sp <?> "Spawn " <> name
  where
    sp = mkPad name mh (appName =? name) $ spawnKitty $ ["--app-id=" ++ name, "--", prog] ++ args

spawnKitty :: (MonadProcessSpawn m) => [String] -> m ()
spawnKitty = sdSpawnProcess (def & slice' .~ "app-kitty.slice") "kitty"

cycleRecentHiddenWS :: String -> String -> String -> H ()
cycleRecentHiddenWS = CycleRecentWS.cycleWindowSets $ \wset ->
  [W.tag ws | ws <- W.hidden wset ++ [W.workspace (W.current wset)]]

removeFocusedWorkspace :: HS ()
removeFocusedWorkspace = do
  (curTag, ws) <- withWindowSet $ return . (W.currentTag &&& (W.workspace . W.current))
  when (null $ W.integrate' (W.stack ws)) $ do
    DynWS.removeWorkspaceByTag curTag
    DWO.removeName curTag

-- | XXX: this should be run after window restore
cleanupMinimized :: H ()
cleanupMinimized = runInHS $ do
  exists <- gets (^.. _windows . each . riverWindow)
  modi <- XS.modified $ \Minimized{..} ->
    Minimized
      { rectMap = rectMap `M.restrictKeys` S.fromList exists
      , minimizedStack = minimizedStack `L.intersect` exists
      }
  logInfo $ "cleaned up minimized" :# ["modified" .= modi]
  ws <- gets (W.workspace . W.current . view windowset)
  sendMessageWithNoRefresh UpdateBoring ws
