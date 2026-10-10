{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE UndecidableInstances  #-}
{-# OPTIONS_GHC -Wno-type-defaults #-}
{-# OPTIONS_GHC -Wno-typed-holes #-}
{-# OPTIONS_GHC -Wno-unused-binds #-}

module Main (main) where

import           HSWM
import qualified HSWM.Actions.CycleRecentWS as CycleRecentWS
import qualified HSWM.Actions.CycleWS as CycleWS
import qualified HSWM.Actions.DynamicWorkspaceOrder as DWO
import qualified HSWM.Actions.DynamicWorkspaces as DynWS
import qualified HSWM.Actions.OnScreen as OnScreen
import qualified HSWM.Actions.PhysicalScreens as PScreen
import qualified HSWM.Hooks.NonExclusiveArea as NEArea
import qualified HSWM.Layout.BinarySpacePartition as BSP
import           HSWM.Layout.BoringWindows (boringWindows)
import qualified HSWM.Layout.Maximize as L.Maximize
import qualified HSWM.Layout.Minimize as L.Minimize
import           HSWM.Layout.MultiToggle (Toggle(..), mkToggle1)
import           HSWM.Layout.MultiToggle.Instances
import qualified HSWM.Layout.NoBorders as L.NoBorders
import qualified HSWM.Layout.WindowNavigation as L.WNavigation
import           HSWM.Prompt.Environment
import qualified HSWM.StackSet as W
import           HSWM.Util.Debug
import qualified HSWM.Util.IPC as IPC
import           HSWM.Util.NamedScratchpad
import qualified HSWM.Util.PangoMarkup as P
import qualified HSWM.Util.RofiPrompt as RP
import qualified HSWM.Util.Waybar as WB
import qualified HSWM.Wallpaper as Wallpaper

import qualified Data.Map as M
import           Text.Printf

main :: IO ()
main = hswm $
    addKeys' myKeys $
    WB.waybarSB def $
    Wallpaper.usingWallpaper Wallpaper.WallpaperConfig {filepath = "/home/sim/wallpaper.png"} $
    IPC.ipcServer def $
    (def @(HSWMConfig H Full))
      -- { layoutHook = myLayoutHook }
      & layoutHook .~ myLayoutHook
      & manageHook .~ myManageHook
      & handleEventHook <>~ debugHook
      & startupHook <>~ runInHS (scratchpadsStartupHook myScratchpads)
      & pointerBindings <>~ myPointerBinds
      & defaultModMask .~ "mod4"
      & borderWidth .~ 1
      & normalBorder .~ parseRgba colBase02
      & focusedBorder .~ parseRgba colCyan
      & xkbLayout ?~ myKeyboard
      & repeatInfo . rate .~ 20
      & repeatInfo . delay .~ 150
      & cursorTheme .~ "Vanilla-DMZ"
      & cursorSize .~ 24
  where
    myKeyboard = def
        & model .~ "pc104"
        & layouts .~ [ "dvp-my(dvp-my)" ]
        & options ?~
          [ "terminate:ctrl_alt_bksp"
          , "compose:rctrl-altgr"
          , "lv3:ralt_switch"
          , "lv3:menu_switch"
          ]

myLayoutHook :: _
myLayoutHook =
  L.Minimize.minimize $
  boringWindows $
  mkToggle1 NOBORDERS $
  mkToggle1 NBFULL $
  NEArea.nonExclusiveArea $
  L.Maximize.maximize $
  L.WNavigation.configurableNavigation (L.WNavigation.navigateBrightness 0.8) $ -- apply on top of any modifiers that might modify placement of tiled windows
  --mkToggle1 REFLECTX $
  --mkToggle1 REFLECTY $
  mkToggle1 MIRROR $
    BSP.emptyBSP |||
    Tall 3 (3 / 100) (1 / 2) |||
    L.NoBorders.noBorders Full

myManageHook :: Query (Endo WindowSet)
myManageHook = composeOne [ managePads ]

myKeys :: [(String, SomeAction H)]
myKeys =
  -- ====== Core ==========
  [ ("M-F1",      showKeyHelp <?> "Show help"),
    ("M-q",       "Restart WM"               <??> sendRestart @H),
    ("M-Return",  "New terminal window"      <??> spawnProcess @H "kitty" []),
    ("M-Escape",  "Print debug stack"        <??> debugAction),
    ("M-Dollar",  "Lock session"             <??> spawnProcess @H "swaylock" ["-k"]),
    ("M-Print",   "Screenshot"               <??> spawnProcess @H "sh" ["-c", "grim -g \"$(slurp)\""]),
    ("M-S-c",     "Close the focused window" <??> withFocused manageKill)
    -- "M-r M-S-c"     cmdT @"Signal process (SIGKILL) of focused window (_NET_WM_PID)" (withFocused (signalProcessBy Posix.sigKILL))
    -- "M-S-<Return>"  FloatNext.floatNext True >> spawnTerm def "" ? "Terminal (floating)"
    --("M-F3", "" <??> (`whenJust` setKeyboardKeymaps (const True)) =<< asks (xkbLayout . config)),
    --("M-F4", "" <??> setKeyboardKeymaps (const True) (keymapFromString "us")),
  ] ++

  -- ======== Execute ==========
  [ ("M-r r", RP.rofiLaunch @H (def & RP.oneMode "run") <?> "Run shell (prompt)"),
    ("M-r d", RP.rofiLaunch @H (def & RP.oneMode "drun" & RP.showIcons .~ True) <?> "Run desktop app (prompt)"),
    ("M-r s", RP.rofiRun @H (def & RP.history ?~ "systemd-run" & RP.prompt .~ "systemd-run" & RP.dmenuMode .~ True) ([] :: [String])
                  RP.++> RP.runWithSystemD <?> "Run via systemd-run (prompt)"),
    ("M-r c", RP.rofiLaunch @H (def & RP.oneMode "clipboard:cliphist-rofi-img" & RP.showIcons .~ True) <?> "Open cliphist prompt"),
    ("M-r b", spawnOnceKitty "bluetoothctl@kitty" "bluetoothctl" [] (doCenterFloat (3/5) (2/3))),
    -- TODO
    ("M-r a", wayDisplaysPrompt <?> "Display config (way-displays)")

    -- "M-r f"            >+ spawnOnceKitty "fself" "bash" ["-lic", "fself"] doCenterFloat
    --   -- spawnDialog ("bash", ["-ic", "fself"]) ? "FZF multi-prompt"
    -- "M-r a" >+ spawn "dmenu_autorandr" ? "autorandr (menu)"
  ] ++

  -- ===== Screens =====
  [ ("M-C-Right", "Focus previous screen" <??> CycleWS.nextScreen),
    ("M-C-Left",  "Focus next screen" <??> CycleWS.prevScreen)
  ] ++
  [ ("M-" ++ key,    "View screen " ++ show i <??> PScreen.viewScreen def i) | (key, i) <- screenKeysScreens] ++
  [ ("M-S-" ++ key,  "Send window to screen " ++ show i <??> PScreen.sendToScreen def i) | (key, i) <- screenKeysScreens] ++
  [ ("M-M1-" ++ key, "Send workspace to screen " ++ show i <??> sendFocusedWorkspaceToScreen OnScreen.FocusCurrent i) | (key, i) <- screenKeysScreens] ++
  [ ("M-C-" ++ key,  "Send workspace to screen and focus it " ++ show i <??> sendFocusedWorkspaceToScreen OnScreen.FocusNew i) | (key, i) <- screenKeysScreens] ++

  -- ===== Workspaces =====
  [ ("M-y",   "Cycle recent hidden tags" <??> cycleRecentHiddenWS [4, 8, 64] 121 112),
    ("M-S-n", "Shift current tag (forwards)" <??> DWO.swapWith Next CycleWS.anyWS),
    ("M-S-p", "Shift current tag (backwards)" <??> DWO.swapWith Prev CycleWS.anyWS),
    ("M-g r", "Rename workspace (prompt)" <??> renameWorkspacePrompt),
    ("M-g n", "Add workspace (prompt)" <??> addWorkspacePrompt),
    ("M-g g", "Go to workspace (prompt)" <??> workspacePrompt),
    ("M-g d", "Remove focused workspace" <??> removeFocusedWorkspace),
    ("M-g f", "Go to window" <??> windowPrompt)
    -- ( "M-g m"    "Shift to tag: "       ?+ (defile . shift) ? "Move window to this tag (XP)"
  ] ++
  [ ("M-semicolon " ++ key,    "View workspace " ++ show i <??> DWO.withNthWorkspace W.view i) | (key, i) <- tagKeysTags] ++
  [ ("M-S-semicolon " ++ key,  "Shift to workspace " ++ show i <??> DWO.withNthWorkspace W.shift i) | (key, i) <- tagKeysTags] ++

  -- ====== Layout
  [ ("M-space",       "Layout" <??> NextLayout),
    ("M-F3",          "Layout" <??> NextLayout),
    ("M-Shift-space", "Layout" <??> FirstLayout),
    ("M-C-space",     "Layout: Reset" <??> (view (config . layoutHook) >>= setLayout)),
    ("M-comma",       "Layout" <??> IncMasterN (-1)),
    ("M-period",      "Layout" <??> IncMasterN 1),
    ("M-x",           "Layout" <??> Shrink),
    ("M-S-x",         "Layout" <??> Expand),
    ("M-b t",         "Layout" <??> NEArea.ToggleNonExclusiveArea),
    ("M-m",           "Maximize Restore" <??> withFocused (sendMessage . L.Maximize.maximizeRestore . view riverWindow)),
    ("M-b b",         "Layout" <??> Toggle NOBORDERS),
    ("M-b m",         "Layout" <??> Toggle MIRROR),
    ("M-b f",         "Layout" <??> Toggle NBFULL),
    --   "M-b x"       >+ toggle1 REFLECTX
    --   "M-b y"       >+ toggle1 REFLECTY
    --   "M-b s"       >+ ToggleScreenSpacing :>> ToggleWindowSpacing
    ("M-b M-x",       "Layout" <??> NEArea.ToggleNonExclusiveArea :>>: Toggle NOBORDERS)
      {- TODO: also ToggleScreenSpacing :>> ToggleWindowSpacing -}
  ] ++

  -- ======= Layout: BSP
  [ ("M-C-y",       "BSP" <??> BSP.SelectNode),
    ("M-C-p",       "BSP" <??> BSP.MoveNode),
    ("M-C-u",       "BSP" <??> BSP.FocusParent),
    ("M-C-r",       "BSP" <??> BSP.Rotate),
    ("M-C-equal",   "BSP" <??> BSP.Equalize),
    ("M-C-exclam",  "BSP" <??> BSP.Balance)
  ] ++
  [ ("M-C-" ++ key, "BSP" <??> BSP.ExpandTowards dir) | (key, dir) <- directions2D ] ++

  -- ====== Window =============
  [ ("M-" ++ key,   L.WNavigation.Go dir   <?> "Window") | (key, dir) <- zip ["k", "j", "l", "h"] [minBound .. maxBound @Direction2D]] ++
  [ ("M-S-" ++ key, L.WNavigation.Swap dir <?> "Window") | (key, dir) <- zip ["k", "j", "l", "h"] [minBound .. maxBound @Direction2D]] ++
  [ ("M-n",        windows W.focusDown    <?> "Focus down"),
    ("M-p",        windows W.focusUp      <?> "Focus up"),
    ("M-b f",      "Toggle fullscreen (focused)" <??> withFocused (doManage WToggleFullscreen)),
    ("M-f s",      "Sink (focused)"              <??> withFocused (\w -> modifyWindowSet (W.sink w.river_window))),
    ("M-f f",      "Float (focused)" <??>
      withFocused (\w -> modifyWindowSet (\ws ->
        W.float w.river_window (rationalRectIn (Rectangle w.position.x w.position.y (fi w.size.width) (fi w.size.height)) (screenRect $ W.screenDetail $ W.current ws)) ws
                                         ))),
    ("M-exclam",   togglePad "tmux-0"  <?> "Toggle tmux PAD")

    -- XXX: these somehow segfault river!
    -- ("M-Slash",  togglePad "dynamic" <?> "Toggle dynamic PAD"),
    ("M-C-r n",    RP.confirmPrompt def "TESTING" (return ()) <?> "TESTING BINDING")

    -- ("M-Tab",  "Cycle PADs" <??> cyclePads),
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
    -- "M-f S-s"   >+ SinkAll
    -- "M-f S-f"   >+ ToggleFloatAllNew
    -- "M-f y"     >+ SwitchLayer
    -- "M-f h"     >+ pidPrompt xpConfig "SpawnOn/PPID" ?+ (\p -> wsPromptWithCurrent xpConfig "Shift to:" ?+ setManageByPPID p) ? "SpawnOn by Window PID"
  ] ++

  -- ====== Media
  [ ("M-plus",                volume 3),
    ("M-minus",               volume (-3)),
    ("M-numbersign",          togglePad "ncmpcpp" <?> "Toggle ncmpcpp"),
    ("M-c n",                 mpc ["next"]),
    ("M-c p",                 mpc ["prev"]),
    ("M-c t",                 mpc ["toggle"]),
    ("M-c y",                 mpc ["single", "once"]),
    ("M-c r",                 mpc ["random"]),
    ("M-c plus",              mpc ["volume", "+3"]),
    ("M-c minus",             mpc ["volume", "-3"]),
    ("XF86AudioPlay",         mpc ["toggle"]),
    ("XF86AudioStop",         mpc ["stop"]),
    ("XF86AudioPrev",         mpc ["prev"]),
    ("XF86AudioNext",         mpc ["next"]),
    ("XF86AudioMute",         toggleMuteSink),
    ("XF86AudioMicMute",      toggleMuteSource),
    ("XF86AudioRaiseVolume",  volume 3),
    ("XF86AudioLowerVolume",  volume (-3)),
    ("XF86MonBrightnessUp",   backlight ["set", "2%+"]),
    ("XF86MonBrightnessDown", backlight ["set", "2%-"]),
    ("M-c s",                 spawnProcess @H "sink-switch" [] <?> "Toggle speakers-phones output"),
    ("M-c m",                 spawnOnceKitty "pulsemixer@kitty" "pulsemixer" [] (doCenterFloat (1/2) (2/3)))
    --   "M-@"                     >+ togglePad "taskwarrior-tui"
  ] ++

  -- ===== "Prompts (Execute)"
  [ ("M-r e", "Environment prompt" <??> environPrompt rofiPrompt)
  --   "M-r p"   >+ XP.Pass.passPrompt xpConfig          ? "Pass (Prompt)"
  --   "M-r C-p" >+ XP.Pass.passOTPPrompt xpConfig       ? "Pass OTP (Prompt)"
  --   "M-r C-u" >+ XP.Pass.passPromptWith "show-field --clip username" xpConfig ? "Pass username (Prompt)"
  --   "M-r q"   >+ XP.QB.qutebrowserP xpConfigNoHist "qutebrowser" ?+ XP.QB.qutebrowser ? "Prompt: qutebrowser"
  --   "M-r s"   >+ inputPromptWithCompl xpConfig "scratchpad" (scratchpadCompl xpConfig myScratchpads) ?+ getAction . togglePad ? "Prompt: pad"
  --   "M-r u"   >+ inputPromptWithHistCompl xpConfig "browser-app" ?+ (\s -> launchDesktopEntry "chrome-app" [s]) ? "Chrome App"
  ]
  where
    directions2D      = map (:[]) "kjlh" `zip` [minBound..maxBound @Direction2D]
    tagKeys           = map (: []) ['a' .. 'z']
    screenKeys        = map (: []) "wvza"
    tagKeysTags       = zip tagKeys [(0 :: Int) ..]
    screenKeysScreens = zip screenKeys [(PScreen.P 0) ..]

    sendFocusedWorkspaceToScreen focus i =
      PScreen.getScreen def i >>= (`whenJust` (\s -> windows (W.currentTag >>= \x -> OnScreen.onScreen (W.greedyView x) focus s)))

myPointerBinds :: [((String, Button), SomeAction H)]
myPointerBinds =
  [ (("M", btnLeft),  startSeatOp SEAT_OP_MOVE <?> "Move window"),
    (("M", btnRight), startSeatOp SEAT_OP_RESIZE <?> "Resize (stretch) window")
  ]

backlight :: [String] -> SomeAction H
backlight args = spawnProcess @H "brightnessctl" ("--machine-readable" : args) <?> "Display brightness: " ++ unwords args

pactl :: [String] -> SomeAction H
pactl args = spawnProcess @H "pactl" args <?> "Audio: " ++ unwords args

mpc :: [String] -> SomeAction H
mpc args = spawnProcess @H "mpc" args <?> "MPD: " ++ unwords args

volume :: Int -> SomeAction H
volume d = pactl ["set-sink-volume", "@DEFAULT_SINK@", printf "%+i%%" d]

toggleMuteSource :: SomeAction H
toggleMuteSource = pactl ["set-source-mute", "@DEFAULT_SOURCE@", "toggle"]

toggleMuteSink :: SomeAction H
toggleMuteSink = pactl ["set-sink-mute", "@DEFAULT_SINK@", "toggle"]

myScratchpads :: [Scratchpad]
myScratchpads =
  exclusive
    [ mkPad "tmux-0" mhd (appName =? "tmux-0") (void $ spawnProcess "kitty" ["--app-id=tmux-0", "--detach", "tmux", "a"])
    , mkPad "ncmpcpp" mhd (appName =? "ncmpcpp") (void $ spawnProcess "kitty" ["--app-id=ncmpcpp", "--detach", "ncmpcpp"])
    , mkPadDyn "dynamic" def idHook
    ]
  where
    mhd = doRFRR 0.2 0.1 0.6 0.6
    doRFRR x y w h = doRectFloat (W.RationalRect x y w h)

spawnOnceKitty :: ScratchpadId -> String -> [String] -> ManageHook -> SomeAction H
spawnOnceKitty name prog args mh = toggleScratchpad' True sp <?> "Spawn " <> name
  where
    sp = mkPad name mh (appName =? name) $
      void $ spawnProcess "kitty" $ ["--app-id=" ++ name, "--detach", "--", prog ] ++ args

rofiPrompt :: RP.RofiPromptConfig o
rofiPrompt = def
    & RP.dmenuMode .~ True
    & RP.markupInput .~ True
   --   RP._dpi = 150 -- for X

cycleRecentHiddenWS :: [KeySym] -> KeySym -> KeySym -> H ()
cycleRecentHiddenWS =
  CycleRecentWS.cycleWindowSets $ \wset ->
    [W.tag ws | ws <- W.hidden wset ++ [W.workspace (W.current wset)]]

wayDisplaysPrompt :: H ()
wayDisplaysPrompt = do
  error "TODO"
  -- RP.rofiRun pc inp

windowPrompt :: H ()
windowPrompt = do
  (wss, wState) <- runInHS $ do
    a <- withWindowSet $ return . W.workspaces
    b <- use _windows
    return (a, b)
  let wins = [(rw, W.tag ws, w) | ws <- wss, rw <- W.integrate' (W.stack ws), Just w <- [M.lookup rw wState]]
  RP.rofiRun' rp (map fmtWindow wins) >>= (`whenJust` doApply wins)
  where
    rp :: RP.RofiPromptConfig RP.SelectI
    rp = rofiPrompt
      & RP.prompt .~ "Go to window"
      & RP.noCustomInput .~ True

    fmtWindow (_rw, tag, w) =
      P.Bold (P.text w.appId) <> " on " <> P.text tag <>
      " \"" <> P.text w.title <> "\"" <>
        maybe "" ((" " <>) . P.fromShow) w.unreliablePid

    doApply wins idx = do
      let (rw, _, _) = wins !! idx
      logInfo $ fromString $ show idx
      runInHS $ windows $ W.focusWindow rw
      manageDirty

mkWorkspacePrompt :: (RP.RofiPromptConfig RP.SelectS -> WorkspaceId -> RP.RofiPromptConfig RP.SelectS)
                  -> (WorkspaceId -> String -> H a)
                  -> H ()
mkWorkspacePrompt prompt apply = do
  (curTag, allTags) <- runInHS $ withWindowSet $ return . (W.currentTag &&& W.allTags)
  RP.rofiRun (prompt rofiPrompt curTag) allTags >>= (`whenJust` doApply curTag)
  where
    doApply cur input = do
      _ <- apply cur input
      view (config . logHook) >>= void . userCode

renameWorkspacePrompt :: H ()
renameWorkspacePrompt = do
  (curTag, allTags) <- runInHS $ withWindowSet $ return . (W.currentTag &&& W.allTags)
  RP.rofiRun rofiPrompt {RP.prompt = "Rename " ++ curTag} allTags >>= (`whenJust` apply curTag)
  where
    apply old input = do
      runInHS $ do
        DWO.updateName old input
        DynWS.renameWorkspaceByName input
      view (config . logHook) >>= void . userCode

addWorkspacePrompt :: H ()
addWorkspacePrompt =
  mkWorkspacePrompt
    (\p _ -> p {RP.prompt = "Add workspace"})
    ( \_ input -> do
        runInHS $ do
          modifySeats (const True) $ \s -> s { suppressChangeFocus = 2 }
          DynWS.addWorkspace input
        manageDirty
    )

workspacePrompt :: H ()
workspacePrompt = mkWorkspacePrompt
  (\p _ -> p {RP.prompt = "Go to workspace"})
  (\_ input -> do
      logInfo $ "switching workspace" :# [ "tag" .= input ]
      runInHS $ windows $ W.view input
      manageDirty
  )

removeFocusedWorkspace :: HS ()
removeFocusedWorkspace = do
  (curTag, ws) <- withWindowSet $ return . (W.currentTag &&& (W.workspace . W.current))
  when (null $ W.integrate' (W.stack ws)) $ do
    DynWS.removeWorkspaceByTag curTag
    DWO.removeName curTag
