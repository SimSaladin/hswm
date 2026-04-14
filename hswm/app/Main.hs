{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-type-defaults #-}
{-# OPTIONS_GHC -Wno-typed-holes #-}
{-# OPTIONS_GHC -Wno-unused-binds #-}

module Main (main) where

import Data.List qualified as L
import Data.Map qualified as M
import Data.Ratio
import HSWM
import HSWM.Actions.CycleRecentWS qualified as CycleRecentWS
import HSWM.Actions.CycleWS qualified as CycleWS
import HSWM.Actions.DynamicWorkspaceOrder qualified as DWO
import HSWM.Actions.DynamicWorkspaces qualified as DynWS
import HSWM.Actions.OnScreen qualified as OnScreen
import HSWM.Actions.PhysicalScreens qualified as PScreen
import HSWM.Layout.BoringWindows (boringWindows)
import HSWM.Layout.BoringWindows qualified as BW
import HSWM.Layout.Minimize qualified as L.Minimize
import HSWM.Layout.WindowNavigation qualified as WNav
import HSWM.Layout.BinarySpacePartition qualified as BSP
import HSWM.StackSet qualified as W
import HSWM.Util.Debug
import HSWM.Util.IPC qualified as IPC
import HSWM.Util.NamedScratchpad
import HSWM.Util.RofiPrompt qualified as RP
import HSWM.Util.Waybar qualified as WB
import HSWM.Wallpaper qualified
import System.Environment qualified
import Text.Printf

main :: IO ()
main =
  hswm $
    addKeys (fromADTKeys $ parseSubmaps myKeys) $
      WB.waybarSB def $
        HSWM.Wallpaper.usingWallpaper
          HSWM.Wallpaper.WallpaperConfig {filepath = "/home/sim/wallpaper.png"}
          (def @(HSWMConfig H Full))
            { layoutHook = myLayoutHook,
              handleEventHook = debugHook,
              logHook = IPC.ipcLogHook,
              xkbLayout = Just dvpMyLayout,
              pointerBindings = myPointerBinds,
              defaultModMask = "mod4",
              repeatInfo = Just (20, 150),
              manageHook = myManageHook,
              borderWidth = 1,
              normalBorder = parseRgba colBase02,
              focusedBorder = parseRgba colCyan,
              startupHook = IPC.serverStartupHook def <> runInHS (scratchpadsStartupHook myScratchpads),
              xcursor = Just ("Vanilla-DMZ", 24)
            }

myScratchpads :: [Scratchpad]
myScratchpads =
  exclusive
    [ mkPad
        "tmux-0"
        mhd
        (appName =? "tmux-0")
        (void $ spawnProcess "kitty" ["--app-id=tmux-0", "--detach", "tmux", "a"]),
      mkPad
        "ncmpcpp"
        mhd
        (appName =? "ncmpcpp")
        (void $ spawnProcess "kitty" ["--app-id=ncmpcpp", "--detach", "ncmpcpp"])
    ]
  where
    mhd = doRFRR 0.2 0.1 0.6 0.6
    doRFRR x y w h = doRectFloat (W.RationalRect x y w h)

rofiRun :: [String] -> H ()
rofiRun args = void $ spawnProcess "rofi" args

rofiPrompt :: RP.RofiPromptConfig
rofiPrompt =
  def
    { RP._dmenu = True,
      RP._prompt = "Choose thing",
      RP._markupRows = True
   --   RP._dpi = 150 -- for X
    }

environPrompt :: H ()
environPrompt = do
  varsEnv <- io System.Environment.getEnvironment
  varsSessionString <- readProcess "systemctl" ["--user", "--no-block", "--no-pager", "show-environment"]
  let varsSession = map parseLine $ lines varsSessionString
      vars = varsSession ++ [entry | entry@(k, _) <- varsEnv, k `notElem` map fst varsSession]
      rows = ["<b>" <> k <> "</b>=" <> v | (k, v) <- vars]
  RP.rofiRun rofiPrompt {RP._format = "p"} rows >>= (`whenJust` doApply)
  where
    doApply input = do
      logInfo $ "environ prompt" :# [ "input" .= input ]

    parseLine :: String -> (String, String)
    parseLine line =
      let (key, rest) = L.break (== '=') line
       in case rest of
            ('=' : val) -> (key, val)
            _ -> (key, "") -- fallback in case there's no '='

cycleRecentHiddenWS :: [KeySym] -> KeySym -> KeySym -> H ()
cycleRecentHiddenWS =
  CycleRecentWS.cycleWindowSets $ \wset ->
    [W.tag ws | ws <- W.hidden wset ++ [W.workspace (W.current wset)]]

windowPrompt :: H ()
windowPrompt = do
  (wss, wState) <- runInHS $ do
    a <- withWindowSet $ return . W.workspaces
    b <- gets _windows
    return (a, b)
  let wins = [(rw, W.tag ws, w) | ws <- wss, rw <- W.integrate' (W.stack ws), Just w <- [M.lookup rw wState]]
  RP.rofiRun rofiPrompt {RP._prompt = "Go to window"} (map fmtWindow wins) >>= (`whenJust` doApply)
  where
    fmtWindow (_rw, tag, w) = "<b>" <> w.appId <> "</b> (" <> w.title <> ") [" <> tag <> "]"
    doApply input = do
      logInfo $ fromString input
      return ()
      -- TODO

mkWorkspacePrompt :: (RP.RofiPromptConfig -> WorkspaceId -> RP.RofiPromptConfig) -> (WorkspaceId -> String -> H a) -> H ()
mkWorkspacePrompt prompt apply = do
  (curTag, allTags) <- runInHS $ withWindowSet $ return . (W.currentTag &&& W.allTags)
  RP.rofiRun (prompt rofiPrompt curTag) allTags >>= (`whenJust` doApply curTag)
  where
    doApply cur input = do
      _ <- apply cur input
      asks (logHook . config) >>= void . userCode

renameWorkspacePrompt :: H ()
renameWorkspacePrompt = do
  (curTag, allTags) <- runInHS $ withWindowSet $ return . (W.currentTag &&& W.allTags)
  RP.rofiRun rofiPrompt {RP._prompt = "Rename " ++ curTag} allTags >>= (`whenJust` doRename curTag)
  where
    doRename old new = do
      runInHS $ do
        DWO.updateName old new
        DynWS.renameWorkspaceByName new
      asks (logHook . config) >>= void . userCode

addWorkspacePrompt :: H ()
addWorkspacePrompt =
  mkWorkspacePrompt
    (\p _ -> p {RP._prompt = "Add workspace"})
    ( \_ input -> do
        runInHS $ do
          modifySeats (const True) $ \s -> s { suppressChangeFocus = 2 }
          DynWS.addWorkspace input
        manageDirty
    )

removeFocusedWorkspace :: HS ()
removeFocusedWorkspace = do
  (curTag, ws) <- withWindowSet $ return . (W.currentTag &&& (W.workspace . W.current))
  when (null $ W.integrate' (W.stack ws)) $ do
    DynWS.removeWorkspaceByTag curTag
    DWO.removeName curTag

myManageHook :: Query (Endo WindowSet)
myManageHook =
  composeOne
    [ managePads
    ]

myLayoutHook :: _
myLayoutHook =
  L.Minimize.minimize $
    boringWindows $
      WNav.configurableNavigation (WNav.navigateColor colBase00) $ -- apply on top of any modifiers that might modify placement of tiled windows
        BSP.emptyBSP ||| Tall 1 (3 / 100) (1 / 2) ||| Full

myKeys :: [(String, SomeAction H)]
myKeys =
  -- ====== Core ==========
  [ ("M-S-c", "Close the focused window" $?$?= withFocused manageKill),
    ("M-S-q", "Restart WM" $?$?= sendRestart @H),
    ("M-Return", "New terminal window" $?$?= SomeAction @H (LaunchProgram "kitty" [])), -- Terminal
    ("M-Escape", "Print debug stack" $?$?= debugAction),
    ("M-Dollar", "Lock session" $?$?= void (spawnProcess @H "swaylock" ["-k"])),
    -- "M-<F1>" `CF.key'` helpCmd
    -- "M-r M-S-c"     cmdT @"Signal process (SIGKILL) of focused window (_NET_WM_PID)" (withFocused (signalProcessBy Posix.sigKILL))
    -- "M-q"           myRecompileRestart False True ? "Recompile && Restart"
    -- "M-C-q"         myRecompileRestart True False ? "Recompile (force)"
    -- "M-S-<Return>"  FloatNext.floatNext True >> spawnTerm def "" ? "Terminal (floating)"
    -- "M-<Print>"     takeScreenshot

    -- ======== Execute ==========
    ("M-r r", "Run shell (prompt)" $?$?= rofiRun ["-modes", "run", "-show", "run"]),
    ("M-r d", "Run desktop app (prompt)" $?$?= rofiRun ["-modes", "drun", "-show", "drun"]),
    ("M-r s", "Run via systemd-run (prompt)" $?$?= (RP.promptRofi @_ @H "systemd-run:" [] RP.++> RP.runWithSystemD)),
    ("M-r c", "Open cliphist prompt" $?$?= rofiRun [ "-modi", "clipboard:cliphist-rofi-img", "-show", "clipboard", "-show-icons" ]),
    -- "M-r b"            >+ spawnDialog "bluetoothctl" ? "bluetoothctl"
    -- "M-r f"            >+ spawnOnceKitty "fself" "bash" ["-lic", "fself"] doCenterFloat
    --   -- spawnDialog ("bash", ["-ic", "fself"]) ? "FZF multi-prompt"
    -- "M-r a" >+ spawn "dmenu_autorandr" ? "autorandr (menu)"

    -- ===== Screens =====
    ("M-C-Right", "Focus previous screen" $?$?= CycleWS.nextScreen),
    ("M-C-Left", "Focus next screen" $?$?= CycleWS.prevScreen)
  ]
    ++ [("M-" ++ key, ("View screen " ++ show i) $?$?= PScreen.viewScreen def i) | (key, i) <- screenKeysScreens]
    ++ [("M-S-" ++ key, ("Send window to screen " ++ show i) $?$?= PScreen.sendToScreen def i) | (key, i) <- screenKeysScreens]
    ++ [("M-M1-" ++ key, ("Send workspace to screen " ++ show i) $?$?= sendFocusedWorkspaceToScreen OnScreen.FocusCurrent i) | (key, i) <- screenKeysScreens]
    ++ [("M-C-" ++ key, ("Send workspace to screen and focus it " ++ show i) $?$?= sendFocusedWorkspaceToScreen OnScreen.FocusNew i) | (key, i) <- screenKeysScreens]
    -- ===== Workspaces =====
    ++ [("M-SemiColon " ++ key, ("View workspace " ++ show i) $?$?= DWO.withNthWorkspace W.view i) | (key, i) <- tagKeysTags]
    ++ [("M-S-SemiColon " ++ key, ("Shift to workspace " ++ show i) $?$?= DWO.withNthWorkspace W.shift i) | (key, i) <- tagKeysTags]
    ++ [ ("M-y", "Cycle recent hidden tags" $?$?= cycleRecentHiddenWS [4, 8, 64] 121 112),
         ("M-S-n", "Shift current tag (forwards)" $?$?= DWO.swapWith Next CycleWS.anyWS), -- XXX: save workspace order?
         ("M-S-p", "Shift current tag (backwards)" $?$?= DWO.swapWith Prev CycleWS.anyWS),
         ("M-g r", "Rename workspace (prompt)" $?$?= renameWorkspacePrompt),
         ("M-g n", "Add workspace (prompt)" $?$?= addWorkspacePrompt),
         ("M-g d", "Remove focused workspace" $?$?= removeFocusedWorkspace),
         ("M-g f", "Go to window" $?$?= windowPrompt)
         -- ( "M-g S-n"     wsPromptNew' "New tag for window: " ?+ (\to -> DynWS.addHiddenWorkspace to >> defile (shift to))   ? "Move window to new tag (XP)"
         -- ( "M-g c"       wsPrompt'    "Copy to tag: "        ?+ (\to -> withFocii $ \_ w -> windows $ CW.copyWindow w to)   ? "Copy window to this tag (XP)"
         -- ( "M-g m"       wsPrompt'    "Shift to tag: "       ?+ (defile . shift                                           ) ? "Move window to this tag (XP)"
         -- ( "M-g g"       wsPrompt'    "View tag: "           ?+ (defile . greedyView                                      ) ? "Go to tag (XP)"
         -- ( "M-g s"       GS.goToSelected gsconfig1                          ? "Go to window (GS)"
         -- ( "M-g f"       XP.windowPrompt xpConfigAuto XP.Goto XP.allWindows ? "Go to window (XP)"
       ]
    ++
    -- ====== Layout
    [ ("M-Space", "Layout: " $?$?= NextLayout),
      ("M-Shift-Space", "Layout: " $?$?= FirstLayout),
      ("M-C-Space", "Layout: Reset" $?$?= (asks (layoutHook . config) >>= setLayout)),
      ("M-Comma", "Layout: " $?$?= IncMasterN (-1)),
      ("M-Period", "Layout: " $?$?= IncMasterN 1),
      ("M-x", "Layout: " $?$?= Shrink),
      ("M-S-x", "Layout: " $?$?= Expand),

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
      ("M-C-y",  "BSP: Select Node" $?$?= BSP.SelectNode),
      ("M-C-p",  "BSP: Move Node" $?$?= BSP.MoveNode),
      ("M-C-u",  "BSP: Focus Parent" $?$?= BSP.FocusParent),
      ("M-C-r",  "BSP: Rotate" $?$?= BSP.Rotate),
      ("M-C-equal",  "BSP: Equalize" $?$?= BSP.Equalize),
      ("M-C-Exclam",  "BSP: Balance" $?$?= BSP.Balance) ]
    ++
      [ ("M-C-" ++ key, "BSP: Expand Towards" $?$?= BSP.ExpandTowards dir) | (key, dir) <- directions2D ]

      -- ("M-r M-b", cmdPrompt xpConfig (Proxy :: Proxy LayoutBSPCommand)

      -- ====== Window =============
    ++ [("M-" ++ key, "Focus window direction" $?$?= sendMessage (WNav.Go dir)) | (key, dir) <- zip ["k", "j", "l", "h"] [minBound .. maxBound @Direction2D]]
    ++ [("M-S-" ++ key, "Swap window in direction" $?$?= sendMessage (WNav.Swap dir)) | (key, dir) <- zip ["k", "j", "l", "h"] [minBound .. maxBound @Direction2D]]
    ++ [ ("M-n", "Focus down" $?$?= windows W.focusDown),
         ("M-p", "Focus up" $?$?= windows W.focusUp),
         ("M-b f", "Toggle fullscreen (focused)" $?$?= withFocused (doManage WToggleFullscreen)),
         ("M-f f", "Float (focused)" $?$?= withFocused (\w -> modifyWindowSet (W.float w.river_window (W.RationalRect (1 % 10) (1 % 10) (1 % 2) (1 % 2))))),
         ("M-f s", "Sink (focused)" $?$?= withFocused (\w -> modifyWindowSet (W.sink w.river_window))),
         ("M-Exclam", "Toggle tmux PAD" $?$?= togglePad "tmux-0"),
         -- "M-<Tab>"   >+ cyclePads
         -- "M-/"       >+ togglePad "dynamic"
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
         ("M-plus", volume 3),
         ("M-minus", volume (-3)),
         ("M-numbersign", "Toggle ncmpcpp" $?$?= togglePad "ncmpcpp"),
         ("M-c n", mpc ["next"]),
         ("M-c p", mpc ["prev"]),
         ("M-c t", mpc ["toggle"]),
         ("M-c y", mpc ["single", "once"]),
         ("M-c r", mpc ["random"]),
         ("M-c plus", mpc ["volume", "+3"]),
         ("M-c minus", mpc ["volume", "-3"]),
         ("XF86AudioPlay", mpc ["toggle"]),
         ("XF86AudioStop", mpc ["stop"]),
         ("XF86AudioPrev", mpc ["prev"]),
         ("XF86AudioNext", mpc ["next"]),
         ("XF86AudioMute", toggleMuteSink),
         ("XF86AudioMicMute", toggleMuteSource),
         ("XF86AudioRaiseVolume", volume 3),
         ("XF86AudioLowerVolume", volume (-3)),
         --   "<XF86MonBrightnessUp>"   >+ backlight   2
         --   "<XF86MonBrightnessDown>" >+ backlight (-2)
         -- , ("M-c s",               spawn "sink-switch" ? "Toggle speakers-phones output [PA]" -- uses a custom script in ~/bin
         --   "M-@"                     >+ togglePad "taskwarrior-tui"
         --   "M-c m"                   >+ spawnOnceKitty "Pulsemixer" "pulsemixer" [] doCenterFloat

         -- group "Prompts (Execute)" $ do
         ("M-r e", "Environment prompt" $?$?= environPrompt)
         --   "M-r p"   >+ XP.Pass.passPrompt xpConfig          ? "Pass (Prompt)"
         --   "M-r C-p" >+ XP.Pass.passOTPPrompt xpConfig       ? "Pass OTP (Prompt)"
         --   "M-r C-u" >+ XP.Pass.passPromptWith "show-field --clip username" xpConfig ? "Pass username (Prompt)"
         --   "M-r q"   >+ XP.QB.qutebrowserP xpConfigNoHist "qutebrowser" ?+ XP.QB.qutebrowser ? "Prompt: qutebrowser"
         --   "M-r s"   >+ inputPromptWithCompl xpConfig "scratchpad" (scratchpadCompl xpConfig myScratchpads) ?+ getAction . togglePad ? "Prompt: pad"
         --   "M-r d"   >+ desktopEntryPrompt xpConfig [] ? "Desktop Entry Launch Prompt"
         --   "M-r u"   >+ inputPromptWithHistCompl xpConfig "browser-app" ?+ (\s -> launchDesktopEntry "chrome-app" [s]) ? "Chrome App"
       ]
  where
    directions2D = map (:[]) "kjlh" `zip` [minBound..maxBound @Direction2D]
    sendFocusedWorkspaceToScreen focus i = PScreen.getScreen def i >>= (`whenJust` (\s -> windows (W.currentTag >>= \x -> OnScreen.onScreen (W.greedyView x) focus s)))
    tagKeys = map (: []) ['a' .. 'z']
    screenKeys = map (: []) "wvza"
    tagKeysTags = zip tagKeys [(0 :: Int) ..]
    screenKeysScreens = zip screenKeys [(PScreen.P 0) ..]

myPointerBinds :: [((String, Button), SomeAction H)]
myPointerBinds =
  [ (("M", _BTN_LEFT), namedAS "Move" $ startSeatOp SEAT_OP_MOVE),
    (("M", _BTN_RIGHT), namedAS "Stretch" $ startSeatOp SEAT_OP_RESIZE)
  ]

dvpMyLayout :: XkbRuleNames
dvpMyLayout =
  XkbRuleNames
    { rules = "",
      model = "pc104",
      layout = "dvp-my",
      variant = "dvp-my",
      options = "terminate:ctrl_alt_bksp,compose:rctrl-altgr,lv3:ralt_switch,lv3:menu_switch"
    }

pactl :: [String] -> SomeAction H
pactl args = unwords ("[PULSE]" : args) $?$?= void (spawnProcess @H "pactl" args)

mpc :: [String] -> SomeAction H
mpc args = printf "MPD: %s" (unwords args) $?$?= void (spawnProcess @H "mpc" args)

volume :: Int -> SomeAction H
volume d = pactl ["set-sink-volume", "@DEFAULT_SINK@", printf "%+i%%" d]

toggleMuteSource :: SomeAction H
toggleMuteSource = pactl ["set-source-mute", "@DEFAULT_SOURCE@", "toggle"]

toggleMuteSink :: SomeAction H
toggleMuteSink = pactl ["set-sink-mute", "@DEFAULT_SINK@", "toggle"]

-- * Utilities

($?$?=) :: (IsKeyAction a) => String -> a -> SomeAction H
desc $?$?= action = toKeyAction desc action

class IsKeyAction a where
  toKeyAction :: String -> a -> SomeAction H

instance {-# OVERLAPPABLE #-} IsKeyAction (H ()) where toKeyAction = namedA

instance {-# OVERLAPPABLE #-} IsKeyAction (HS ()) where toKeyAction = namedAS

instance {-# OVERLAPPABLE #-} IsKeyAction (SomeAction H) where toKeyAction d a = SomeAction $ NamedAction d a

instance {-# OVERLAPPABLE #-} (Message a, Show a) => IsKeyAction a where toKeyAction d a = SomeAction $ NamedActionHS (d ++ show a) (sendMessage a)
