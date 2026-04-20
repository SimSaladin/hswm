{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-type-defaults #-}
{-# OPTIONS_GHC -Wno-typed-holes #-}
{-# OPTIONS_GHC -Wno-unused-binds #-}

module Main (main) where

import Data.List qualified as L
import Data.Map qualified as M
import HSWM
import HSWM.Actions.CycleRecentWS qualified as CycleRecentWS
import HSWM.Actions.CycleWS qualified as CycleWS
import HSWM.Actions.DynamicWorkspaceOrder qualified as DWO
import HSWM.Actions.DynamicWorkspaces qualified as DynWS
import HSWM.Actions.OnScreen qualified as OnScreen
import HSWM.Actions.PhysicalScreens qualified as PScreen
import HSWM.Layout.BoringWindows (boringWindows)
import HSWM.Layout.Minimize qualified as L.Minimize
import HSWM.Layout.WindowNavigation qualified as L.WNavigation
import HSWM.Layout.BinarySpacePartition qualified as BSP
import HSWM.Layout.Maximize qualified as L.Maximize
import HSWM.Layout.NoBorders qualified as L.NoBorders
import HSWM.Layout.MultiToggle (mkToggle1, Toggle(..))
import HSWM.Layout.MultiToggle.Instances
import HSWM.StackSet qualified as W
import HSWM.Util.Debug
import HSWM.Util.IPC qualified as IPC
import HSWM.Util.NamedScratchpad
import HSWM.Util.RofiPrompt qualified as RP
import HSWM.Util.Waybar qualified as WB
import HSWM.Hooks.NonExclusiveArea qualified as NEArea
import HSWM.Wallpaper qualified
import System.Environment qualified as ENV
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
              xkbLayout = Just XkbRuleNames
                { rules = "",
                  model = "pc104",
                  layout = "dvp-my",
                  variant = "dvp-my",
                  options = "terminate:ctrl_alt_bksp,compose:rctrl-altgr,lv3:ralt_switch,lv3:menu_switch"
                },
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
    ] ++ [mkPadDyn "dynamic" def idHook]
  where
    mhd = doRFRR 0.2 0.1 0.6 0.6
    doRFRR x y w h = doRectFloat (W.RationalRect x y w h)

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
  varsEnv <- io ENV.getEnvironment

  varsSessionString <- readProcess "systemctl" ["--user", "--no-block", "--no-pager", "show-environment"]
  let varsSession = map parseLine $ lines varsSessionString

      varsMap = M.unionWith (\(e1, s1) (e2, s2) -> (e1 <|> e2, s1 <|> s2))
        (M.fromList [ (k, (Nothing, Just v)) | (k, v) <- varsSession ])
        (M.fromList [(k, (Just v, Nothing)) | (k, v) <- varsEnv])

      rows =
        [ "<b>" <> k <> "</b>"
          <> maybe "" (\v -> "=" <> escval v) vEnv
          <> (if vEnv /= vSD then maybe "" (\v -> "=" <> escval v) vSD else "")
          <> (if isNothing vSD then " <i>(not in systemd user env)</i>" else "")
          <> (if isNothing vEnv then " <i>(not in WM env)</i>" else "")
        | (k, (vEnv, vSD)) <- M.toList varsMap]

      -- TODO: use https://docs.gtk.org/glib/func.markup_escape_text.html
      escval [] = []
      escval (x:xs)
        | x == '\n' = '\\' : 'n' : escval xs
        | x == '\r' = '\\' : 'r' : escval xs
        | x == '<' = "&lt;" ++ escval xs
        | x == '>' = "&gt;" ++ escval xs
        | x == '&' = "&amp;" ++ escval xs
        | otherwise = x : escval xs

  RP.rofiRun rofiPrompt {RP._prompt = "Set env variable", RP._format = "p"} rows >>= (`whenJust` doApply)
  where
    doApply input = do
      logInfo $ "environ prompt" :# [ "input" .= input ]
      case L.span (/='=') input of
        ("", _) -> return ()
        (name, []) -> do
          logInfo $ "Unset environment variable" :# [ "name" .= name ]
          io $ ENV.unsetEnv name
        (name, '=' : value) -> do
          logInfo $ "Set environment variable" :# [ "name" .= name, "value" .= value ]
          io $ ENV.setEnv name value -- TODO systemd env too
        _ -> return ()

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
  RP.rofiRun rp (map fmtWindow wins) >>= (`whenJust` doApply wins)
  where
    rp = rofiPrompt
      { RP._prompt = "Go to window",
        RP._format = "i",
        RP._noCustom = True
      }
    fmtWindow (_rw, tag, w) = "<b>" <> w.appId <> "</b> on " <> tag <> " \"" <> w.title <> "\"" <> maybe "" ((" " <>) . show) w.unreliablePid
    doApply wins idxStr = do
      let idx = read idxStr :: Int
          (rw, _, _) = wins !! idx
      logInfo $ fromString $ show idx
      runInHS $ windows $ W.focusWindow rw
      manageDirty

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

workspacePrompt :: H ()
workspacePrompt = mkWorkspacePrompt
  (\p _ -> p {RP._prompt = "Go to workspace"})
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

myManageHook :: Query (Endo WindowSet)
myManageHook =
  composeOne
    [ managePads
    -- , appName =? "gimp" <&&> wTitle =? "GIMP Startup" -?> doCenterFloat
    ]
      where
        doCenterFloat = doRectFloat $ W.RationalRect (1/3) (1/3) (1/5) (1/5)

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
      Tall 1 (3 / 100) (1 / 2) |||
        L.NoBorders.noBorders Full

myKeys :: [(String, SomeAction H)]
myKeys =
  -- ====== Core ==========
  [ ("M-S-c", "Close the focused window" $?$?= withFocused manageKill),
    ("M-S-q", "Restart WM" $?$?= sendRestart @H),
    ("M-Return", "New terminal window" $?$?= SomeAction @H (LaunchProgram "kitty" [])), -- Terminal
    ("M-Escape", "Print debug stack" $?$?= debugAction),
    ("M-Dollar", "Lock session" $?$?= void (spawnProcess @H "swaylock" ["-k"])),
    ("M-Print", "Screenshot" $?$?= void (spawnProcess @H "sh" ["-c", "grim -g \"$(slurp)\""])),
    -- "M-r M-S-c"     cmdT @"Signal process (SIGKILL) of focused window (_NET_WM_PID)" (withFocused (signalProcessBy Posix.sigKILL))
    -- "M-q"           myRecompileRestart False True ? "Recompile && Restart"
    -- "M-C-q"         myRecompileRestart True False ? "Recompile (force)"
    -- "M-S-<Return>"  FloatNext.floatNext True >> spawnTerm def "" ? "Terminal (floating)"
    -- "M-<F1>" `CF.key'` helpCmd
    ("M-F3", "" $?$?= (`whenJust` setKeyboardKeymaps (const True)) =<< asks (xkbLayout . config)),
    ("M-F4", "" $?$?= setKeyboardKeymaps (const True) (keymapFromString "us")),

    -- ======== Execute ==========
    ("M-r r", "Run shell (prompt)" $?$?= RP.rofiLaunch @_ @H def { RP._modes = "run", RP._show = "run" }),
    ("M-r d", "Run desktop app (prompt)" $?$?= RP.rofiLaunch @_ @H def { RP._modes = "drun", RP._show = "drun" }),
    ("M-r s", "Run via systemd-run (prompt)" $?$?= RP.rofiRun @_ @H def { RP.history = Just "systemd-run", RP._prompt = "systemd-run", RP._dmenu = True } [] RP.++> RP.runWithSystemD),
    ("M-r c", "Open cliphist prompt" $?$?= RP.rofiLaunch @_ @H def { RP._modi = "clipboard:cliphist-rofi-img", RP._show = "clipboard", RP.showIcons = True }),
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
         ("M-g g", "Go to workspace (prompt)" $?$?= workspacePrompt),
         ("M-g d", "Remove focused workspace" $?$?= removeFocusedWorkspace),
         ("M-g f", "Go to window" $?$?= windowPrompt)
         -- ( "M-g m"    "Shift to tag: "       ?+ (defile . shift) ? "Move window to this tag (XP)"
       ]
    ++
    -- ====== Layout
    [ ("M-Space",       "Layout: " $?$?= NextLayout),
      ("M-Shift-Space", "Layout: " $?$?= FirstLayout),
      ("M-C-Space",     "Layout: Reset" $?$?= (asks (layoutHook . config) >>= setLayout)),
      ("M-Comma",       "Layout: " $?$?= IncMasterN (-1)),
      ("M-Period",      "Layout: " $?$?= IncMasterN 1),
      ("M-x",           "Layout: " $?$?= Shrink),
      ("M-S-x",         "Layout: " $?$?= Expand),
      ("M-b t",         "Toggle NonExcl. Area" $?$?= NEArea.ToggleNonExclusiveArea),
      ("M-m",           "Maximize Restore" $?$?= withFocused (sendMessage . L.Maximize.maximizeRestore . river_window)),
      ("M-b b",         "Toggle NOBORDERS" $?$?= sendMessage (Toggle NOBORDERS)),
      ("M-b m",         "Toggle MIRROR" $?$?= sendMessage (Toggle MIRROR)),
      ("M-b f",         "Toggle NBFULL" $?$?= sendMessage (Toggle NBFULL)),
      --   "M-b x"       >+ toggle1 REFLECTX
      --   "M-b y"       >+ toggle1 REFLECTY
      --   "M-b s"       >+ ToggleScreenSpacing :>> ToggleWindowSpacing
      --   "M-b l"       >+ msgT Magnifier.Toggle
      ("M-b M-x",       "Toggle struts/border/spacing" $?$?= (sendMessage NEArea.ToggleNonExclusiveArea >> sendMessage (Toggle NOBORDERS) {-ToggleScreenSpacing :>> ToggleWindowSpacing -})),

      -- ======= Layout: BSP
      ("M-C-y",       "BSP: Select Node" $?$?= BSP.SelectNode),
      ("M-C-p",       "BSP: Move Node" $?$?= BSP.MoveNode),
      ("M-C-u",       "BSP: Focus Parent" $?$?= BSP.FocusParent),
      ("M-C-r",       "BSP: Rotate" $?$?= BSP.Rotate),
      ("M-C-equal",   "BSP: Equalize" $?$?= BSP.Equalize),
      ("M-C-Exclam",  "BSP: Balance" $?$?= BSP.Balance) ]
    ++[("M-C-" ++ key, "BSP: Expand Towards" $?$?= BSP.ExpandTowards dir) | (key, dir) <- directions2D ]

      -- ====== Window =============
    ++ [("M-" ++ key, "Focus window direction" $?$?= sendMessage (L.WNavigation.Go dir)) | (key, dir) <- zip ["k", "j", "l", "h"] [minBound .. maxBound @Direction2D]]
    ++ [("M-S-" ++ key, "Swap window in direction" $?$?= sendMessage (L.WNavigation.Swap dir)) | (key, dir) <- zip ["k", "j", "l", "h"] [minBound .. maxBound @Direction2D]]
    ++ [ ("M-n", "Focus down" $?$?= windows W.focusDown),
         ("M-p", "Focus up" $?$?= windows W.focusUp),
         ("M-b f", "Toggle fullscreen (focused)" $?$?= withFocused (doManage WToggleFullscreen)),
         ("M-f f", "Float (focused)" $?$?=
           withFocused (\w -> modifyWindowSet (\ws ->
             W.float w.river_window (rationalRectIn (Rectangle w.x w.y (fi w.width) (fi w.height)) (screenRect $ W.screenDetail $ W.current ws)) ws
                                              ))),
         ("M-f s", "Sink (focused)" $?$?= withFocused (\w -> modifyWindowSet (W.sink w.river_window))),
         ("M-Exclam", "Toggle tmux PAD" $?$?= togglePad "tmux-0"),
         ("M-Slash", "Toggle dynamic PAD" $?$?= togglePad "dynamic"),
         -- ("M-Tab",  "Cycle PADs" $?$?= cyclePads),
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
         --"XF86MonBrightnessUp", backlight   2
         --"XF86MonBrightnessDown", backlight (-2)
         --("M-c s", "Toggle speakers-phones output" spawn "sink-switch" -- uses a custom script in ~/bin
         --   "M-@"                     >+ togglePad "taskwarrior-tui"
         --   "M-c m"                   >+ spawnOnceKitty "Pulsemixer" "pulsemixer" [] doCenterFloat

         -- ===== "Prompts (Execute)"
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

infixr 1 $?$?=
($?$?=) :: (IsKeyAction a) => String -> a -> SomeAction H
desc $?$?= action = toKeyAction desc action

class IsKeyAction a where
  toKeyAction :: String -> a -> SomeAction H

instance {-# OVERLAPPABLE #-} IsKeyAction (H ()) where toKeyAction = namedA

instance {-# OVERLAPPABLE #-} IsKeyAction (HS ()) where toKeyAction = namedAS

instance {-# OVERLAPPABLE #-} IsKeyAction (SomeAction H) where toKeyAction d a = SomeAction $ NamedAction d a

instance {-# OVERLAPPABLE #-} (Message a, Show a) => IsKeyAction a where toKeyAction d a = SomeAction $ NamedActionHS (d ++ show a) (sendMessage a)
