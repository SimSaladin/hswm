{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-type-defaults #-}
{-# OPTIONS_GHC -Wno-unused-binds #-}

module Main (main) where

import HSWM
import HSWM.Actions.CycleRecentWS qualified as CycleRecentWS
import HSWM.Actions.CycleWS qualified as CycleWS
import HSWM.Actions.DynamicWorkspaceOrder qualified as DWO
import HSWM.Actions.DynamicWorkspaces qualified as DynWS
import HSWM.Actions.OnScreen qualified as OnScreen
import HSWM.Actions.PhysicalScreens qualified as PScreen
import HSWM.Hooks.NonExclusiveArea qualified as NEArea
import HSWM.Layout.BinarySpacePartition qualified as BSP
import HSWM.Layout.BoringWindows (BoringMessage (Replace), boringWindows)
import HSWM.Layout.GridVariants qualified as GV
import HSWM.Layout.Maximize qualified as L.Maximize
import HSWM.Layout.Minimize qualified as L.Minimize
import HSWM.Layout.MultiToggle (Toggle (..), mkToggle1)
import HSWM.Layout.MultiToggle.Instances
import HSWM.Layout.NoBorders qualified as L.NoBorders
import HSWM.Layout.Reflect (REFLECTX (..), REFLECTY (..))
import HSWM.Layout.WindowNavigation qualified as L.WNavigation
import HSWM.Prompt.Environment
import HSWM.Prompt.Workspaces
import HSWM.StackSet qualified as W
import HSWM.Util.Debug
import HSWM.Util.IPC qualified as IPC
import HSWM.Util.NamedScratchpad
import HSWM.Util.PangoMarkup qualified as P
import HSWM.Util.RofiPrompt qualified as RP
import HSWM.Util.Waybar qualified as WB
import HSWM.Wallpaper qualified as Wallpaper

import Data.List qualified as L
import Data.Map qualified as M
import Data.Ord (clamp)
import Text.Printf

main :: IO ()
main =
    hswm $
        addKeys' myKeys $
            WB.waybarSB def $
                Wallpaper.usingWallpaper Wallpaper.WallpaperConfig{filepath = "/home/sim/wallpaper.png"} $
                    IPC.ipcServer def $
                        (def @(HSWMConfig H Full))
                            & layoutHook
                            .~ myLayoutHook
                            & manageHook
                            .~ myManageHook
                            & handleEventHook
                            <>~ debugHook
                            & startupHook
                            <>~ runInHS (scratchpadsStartupHook myScratchpads)
                            & pointerBindings
                            <>~ myPointerBinds
                            & defaultModMask
                            .~ "mod4"
                            & borderWidth
                            .~ 1
                            & normalBorder
                            .~ parseRgba colBase02
                            & focusedBorder
                            .~ parseRgba colCyan
                            & xkbLayout
                            ?~ myKeyboard
                            & repeatInfo
                            . rate
                            .~ 20
                            & repeatInfo
                            . delay
                            .~ 150
                            & cursorTheme
                            .~ "Vanilla-DMZ"
                            & cursorSize
                            .~ 24

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
    L.Minimize.minimize $
        boringWindows $
            mkToggle1 NOBORDERS $
                mkToggle1 NBFULL $
                    NEArea.nonExclusiveArea $
                        L.Maximize.maximize $
                            L.WNavigation.configurableNavigation (L.WNavigation.navigateBrightness 0.8) $ -- apply on top of any modifiers that might modify placement of tiled windows
                                mkToggle1 REFLECTX $
                                    mkToggle1 REFLECTY $
                                        mkToggle1 MIRROR $
                                            BSP.emptyBSP
                                                ||| GV.Grid (16 / 10)
                                                ||| GV.SplitGrid GV.R 2 3 (2 / 3) (16 / 10) (5 / 100)
                                                ||| Tall 3 (3 / 100) (1 / 2)
                                                ||| L.NoBorders.noBorders Full

myManageHook :: Query (Endo WindowSet)
myManageHook = composeOne [managePads]

promptLaunchSystemD :: H ()
promptLaunchSystemD =
    RP.runRofi
        (myRofiBaseConfig @_ @'s' & RP.withHistory "systemd-run" & RP.prompt .~ "systemd-run")
        (mempty @[String])
        RP.++> runWithSystemD

myKeys :: [(String, SomeAction H)]
myKeys =
    -- ====== Core ==========
    [ ("M-F1", showKeyHelp <?> "Show help")
    , ("M-q", sendRestart @H <?> "Restart WM")
    , ("M-Return", spawnProcess @H "kitty" [] <?> "New terminal window")
    , ("M-Escape", debugAction <?> "Print debug stack")
    , ("M-Dollar", spawnProcess @H "swaylock" ["-k"] <?> "Lock session")
    , ("M-Print", spawnProcess @H "sh" ["-c", "grim -g \"$(slurp)\""] <?> "Screenshot")
    , ("M-S-c", withFocused' @HS manageKill <?> "Close the focused window")
    , ("M-r M-S-c", withFocused' @H (signalWindowByPID sigKILL) <?> "Signal process (SIGKILL) of focused window")
    -- "M-S-<Return>"  FloatNext.floatNext True >> spawnTerm def "" ? "Terminal (floating)"
    -- ("M-F3",  (`whenJust` setKeyboardKeymaps (const True)) =<< asks (xkbLayout . config)),
    -- ("M-F4",  setKeyboardKeymaps (const True) (keymapFromString "us")),
    ]
        ++
        -- ======== Execute ==========
        -- shell/application runners
        [ ("M-r r", RP.launchRofi_ @H (RP.modePromptWith myRofiBaseConfig "run") <?> "Run shell (prompt)")
        , ("M-r d", RP.launchRofi_ @H (RP.modePromptWith myRofiBaseConfig "drun" & RP.showIcons .~ True) <?> "Run desktop app (prompt)")
        , ("M-r s", promptLaunchSystemD <?> "Run via systemd-run (prompt)")
        , -- clipboard prompt
          ("M-r c", RP.launchRofi_ @H (RP.modePromptWith myRofiBaseConfig "clipboard:cliphist-rofi-img" & RP.showIcons .~ True) <?> "Open cliphist prompt")
        , -- bluetooth prompt
          ("M-r b", spawnOnceKitty "bluetoothctl@kitty" "bluetoothctl" [] (doCenterFloat (3 / 5) (2 / 3)))
        , -- TODO
          -- ("M-r a", wayDisplaysPrompt <?> "Display config (way-displays)")
          ("M-r M-r", bindsPrompt <?> "Prompt all keybindings")
          -- "M-r f" >+ spawnOnceKitty "fself" "bash" ["-lic", "fself"] doCenterFloat
          --   -- spawnDialog ("bash", ["-ic", "fself"]) ? "FZF multi-prompt"
        ]
        ++
        -- ===== Screens =====
        [ ("M-C-Right", CycleWS.nextScreen <?> "Focus previous screen")
        , ("M-C-Left", CycleWS.prevScreen <?> "Focus next screen")
        ]
        ++ [("M-" ++ key, PScreen.viewScreen def i <?> "View screen " ++ show i) | (key, i) <- screenKeysScreens]
        ++ [("M-S-" ++ key, PScreen.sendToScreen def i <?> "Send window to screen " ++ show i) | (key, i) <- screenKeysScreens]
        ++ [("M-M1-" ++ key, sendFocusedWorkspaceToScreen OnScreen.FocusCurrent i <?> "Send workspace to screen " ++ show i) | (key, i) <- screenKeysScreens]
        ++ [("M-C-" ++ key, sendFocusedWorkspaceToScreen OnScreen.FocusNew i <?> "Send workspace to screen and focus it " ++ show i) | (key, i) <- screenKeysScreens]
        ++
        -- ===== Workspaces =====
        -- TODO:
        -- ( "M-g m"    "Shift to tag: "       ?+ (defile . shift) ? "Move window to this tag (XP)"
        -- mod 4  := Ctrl
        -- mod 8  := Alt
        -- mod 64 := Meta
        [ ("M-y", cycleRecentHiddenWS "C-M4-A" "y" "p" <?> "Cycle recent hidden tags")
        , ("M-S-n", DWO.swapWith Next CycleWS.anyWS <?> "Shift current tag (forwards)")
        , ("M-S-p", DWO.swapWith Prev CycleWS.anyWS <?> "Shift current tag (backwards)")
        , ("M-g r", renameWorkspacePrompt myRofiBaseConfig <?> "Rename workspace (prompt)")
        , ("M-g n", addWorkspacePrompt myRofiBaseConfig <?> "Add workspace (prompt)")
        , ("M-g g", workspacePrompt myRofiBaseConfig <?> "Go to workspace (prompt)")
        , ("M-g d", removeFocusedWorkspace <?> "Remove focused workspace")
        , ("M-g f", windowPrompt <?> "Go to window")
        ]
        ++ [("M-semicolon " ++ key, DWO.withNthWorkspace W.view i <?> "View workspace " ++ show i) | (key, i) <- tagKeysTags]
        ++ [("M-S-semicolon " ++ key, DWO.withNthWorkspace W.shift i <?> "Shift to workspace " ++ show i) | (key, i) <- tagKeysTags]
        ++
        -- ====== Layout
        {- TODO: also ToggleScreenSpacing :>> ToggleWindowSpacing -}
        --   "M-b s"       >+ ToggleScreenSpacing :>> ToggleWindowSpacing
        [ ("M-C-space", (view (config . layoutHook) >>= setLayout) <?> "Layout: Reset")
        , ("M-space", SendMessage NextLayout <?> "Layout")
        , ("M-F3", SendMessage NextLayout <?> "Layout")
        , ("M-Shift-space", SendMessage FirstLayout <?> "Layout")
        , ("M-comma", SendMessage (IncMasterN (-1)) <?> "Layout")
        , ("M-period", SendMessage (IncMasterN 1) <?> "Layout")
        , ("M-x", SendMessage Shrink <?> "Layout")
        , ("M-S-x", SendMessage Expand <?> "Layout")
        , ("M-b t", SendMessage NEArea.ToggleNonExclusiveArea <?> "Layout")
        , ("M-b b", SendMessage (Toggle NOBORDERS) <?> "Layout")
        , ("M-b m", SendMessage (Toggle MIRROR) <?> "Layout")
        , ("M-b f", SendMessage (Toggle NBFULL) <?> "Layout")
        , ("M-b x", SendMessage (Toggle REFLECTX) <?> "Layout")
        , ("M-b y", SendMessage (Toggle REFLECTY) <?> "Layout")
        , ("M-b M-x", SendMessage NEArea.ToggleNonExclusiveArea :>>: SendMessage (Toggle NOBORDERS) <?> "Layout")
        , ("M-m", withFocused (sendMessage . L.Maximize.maximizeRestore . view riverWindow) <?> "Maximize Restore")
        , ("M-b M-c", SendMessage (Replace "Minimize" []) <?> "Clear boring window cache")
        ]
        ++
        -- ======= Layout: BSP
        [ ("M-C-y", SendMessage BSP.SelectNode <?> "BSP")
        , ("M-C-p", SendMessage BSP.MoveNode <?> "BSP")
        , ("M-C-u", SendMessage BSP.FocusParent <?> "BSP")
        , ("M-C-r", SendMessage BSP.Rotate <?> "BSP")
        , ("M-C-equal", SendMessage BSP.Equalize <?> "BSP")
        , ("M-C-exclam", SendMessage BSP.Balance <?> "BSP")
        ]
        ++ [("M-C-" ++ key, SendMessage (BSP.ExpandTowards dir) <?> "BSP") | (key, dir) <- directions2D]
        ++
        -- ====== Window =============
        [("M-" ++ key, SendMessage (L.WNavigation.Go dir) <?> "Window") | (key, dir) <- zip ["k", "j", "l", "h"] [minBound .. maxBound @Direction2D]]
        ++ [("M-S-" ++ key, SendMessage (L.WNavigation.Swap dir) <?> "Window") | (key, dir) <- zip ["k", "j", "l", "h"] [minBound .. maxBound @Direction2D]]
        ++ [ ("M-exclam", togglePad "tmux-0" <?> "Toggle tmux PAD")
           , ("M-Slash", togglePad "dynamic" <?> "Toggle dynamic PAD")
           , ("M-n", windows W.focusDown <?> "Focus down")
           , ("M-p", windows W.focusUp <?> "Focus up")
           , ("M-b f", withFocused (doManage WToggleFullscreen) <?> "Fullscreen: focused")
           , ("M-f s", withFocused (\w -> modifyWindowSet (W.sink w.river_window)) <?> "Sink: focused")
           ]
        ++ [
               ( "M-f f"
               , withFocused
                    ( \w ->
                        modifyWindowSet
                            ( \ws ->
                                W.float
                                    w.river_window
                                    ( rationalRectIn
                                        (Rectangle w.position.x w.position.y (fi w.size.width) (fi w.size.height))
                                        (screenRect $ W.screenDetail $ W.current ws)
                                    )
                                    ws
                            )
                    )
                    <?> "Float (focused)"
               )
           ]
        ++
        -- ("M-Tab",  cyclePads <?> "Cycle pads"),
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
        -- "M-@"       >+ togglePad "taskwarrior-tui"

        -- ====== Media
        [ ("M-plus", adjustVolume "@DEFAULT_SINK@" volAdjAmount)
        , ("M-minus", SomeAction $ adjustVolume "@DEFAULT_SINK@" (-volAdjAmount) :%* 500)
        , ("M-numbersign", togglePad "ncmpcpp" <?> "Toggle ncmpcpp")
        , ("M-c n", mpc ["next"])
        , ("M-c p", mpc ["prev"])
        , ("M-c t", mpc ["toggle"])
        , ("M-c y", mpc ["single", "once"])
        , ("M-c r", mpc ["random"])
        , ("M-c plus", mpc ["volume", "+3"])
        , ("M-c minus", mpc ["volume", "-3"])
        , ("XF86AudioPlay", mpc ["toggle"])
        , ("XF86AudioStop", mpc ["stop"])
        , ("XF86AudioPrev", mpc ["prev"])
        , ("XF86AudioNext", mpc ["next"])
        , ("XF86AudioMute", toggleMute "@DEFAULT_SINK@" def)
        , ("XF86AudioMicMute", toggleMute "@DEFAULT_SOURCE@" def)
        , ("XF86AudioRaiseVolume", adjustVolume "@DEFAULT_SINK@" volAdjAmount)
        , ("XF86AudioLowerVolume", adjustVolume "@DEFAULT_SINK@" (-volAdjAmount))
        , ("XF86MonBrightnessUp", backlight ["set", "2%+"])
        , ("XF86MonBrightnessDown", backlight ["set", "2%-"])
        , ("M-c s", spawnProcess @H "sink-switch" [] <?> "Toggle speakers-phones output")
        , ("M-c m", spawnOnceKitty "pulsemixer@kitty" "pulsemixer" [] (doCenterFloat (1 / 2) (2 / 3)))
        ]
        ++
        -- ===== "Prompts (Execute)"
        -- TODO: prompts
        --   "M-r p"   >+ XP.Pass.passPrompt xpConfig          ? "Pass (Prompt)"
        --   "M-r C-p" >+ XP.Pass.passOTPPrompt xpConfig       ? "Pass OTP (Prompt)"
        --   "M-r C-u" >+ XP.Pass.passPromptWith "show-field --clip username" xpConfig ? "Pass username (Prompt)"
        --   "M-r q"   >+ XP.QB.qutebrowserP xpConfigNoHist "qutebrowser" ?+ XP.QB.qutebrowser ? "Prompt: qutebrowser"
        --   "M-r s"   >+ inputPromptWithCompl xpConfig "scratchpad" (scratchpadCompl xpConfig myScratchpads) ?+ getAction . togglePad ? "Prompt: pad"
        --   "M-r u"   >+ inputPromptWithHistCompl xpConfig "browser-app" ?+ (\s -> launchDesktopEntry "chrome-app" [s]) ? "Chrome App"
        [ ("M-r e", environPrompt myRofiBaseConfig <?> "Environment variable prompt")
        ]
  where
    volAdjAmount = 0.01
    directions2D = map (: []) "kjlh" `zip` [minBound .. maxBound @Direction2D]
    tagKeys = map (: []) ['a' .. 'z']
    screenKeys = map (: []) "wvza"
    tagKeysTags = zip tagKeys [(0 :: Int) ..]
    screenKeysScreens = zip screenKeys [(PScreen.P 0) ..]

    sendFocusedWorkspaceToScreen focus i =
        PScreen.getScreen def i >>= (`whenJust` (\s -> windows (W.currentTag >>= \x -> OnScreen.onScreen (W.greedyView x) focus s)))

myPointerBinds :: [((String, Button), SomeAction H)]
myPointerBinds =
    [ (("M", btnLeft), startSeatOp SEAT_OP_MOVE <?> "Move window")
    , (("M", btnRight), startSeatOp SEAT_OP_RESIZE <?> "Resize (stretch) window")
    ]

backlight :: [String] -> SomeAction H
backlight args = spawnProcess @H "brightnessctl" ("--machine-readable" : args) <?> "Display brightness: " ++ unwords args

mpc :: [String] -> SomeAction H
mpc args = spawnProcess @H "mpc" args <?> "MPD: " ++ unwords args

{- |
Adjust the volume of a pipewire sink/volume/stream. Requires the @wpctl@ program in @PATH@.
@
adjustVolume "@DEFAULT_SINK@" 0.02+   -- e.g. wpctl set-volume ID VOL[%][-/+]
adjustVolume "@DEFAULT_SINK@" 0.05-
adjustVolume "@DEFAULT_SOURCE@" 0.5+
@
The volume adjustments can be scaled through the environment variable @WPCTL_VOLUME_SCALE@.
Percentages aren't yet supported.
-}
adjustVolume :: String -> Double -> SomeAction H
adjustVolume target base = act <?> printf "Audio volume %s (%s)" (ppAdj base :: String) target
  where
    getFactor = clamp (-5, 5) . fromMaybe 1 . (>>= readMaybe) <$> lookupEnv "WPCTL_VOLUME_SCALE"
    ppAdj x = printf "%.5f%c" (abs x) (if x >= 0 then '+' else '-')
    act = do
        a <- getFactor
        spawnProcess @H "wpctl" ["set-volume", target, ppAdj (base * a)]

data MuteToggle = MuteTOGGLE | MuteON | MuteOFF
    deriving (Eq, Ord, Bounded, Enum, Show, Read, Generic, Data)

instance Default MuteToggle where
    def = MuteTOGGLE

toggleMute :: String -> MuteToggle -> SomeAction H
toggleMute target mute = spawnProcess @H "wpctl" ["set-mute", target, pp mute] <?> printf "Audio mute %s (%s)" (pp mute) target
  where
    pp :: MuteToggle -> String
    pp MuteTOGGLE = "toggle"
    pp MuteON = "1"
    pp MuteOFF = "0"

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
    sp =
        mkPad name mh (appName =? name) $
            void $
                spawnProcess "kitty" $
                    ["--app-id=" ++ name, "--detach", "--", prog] ++ args

myRofiBaseConfig :: RP.RofiPromptConfig i o a
myRofiBaseConfig =
    (RP.dmenuPrompt @())
        & RP.clearTypeParams
        & RP.markupInput
        .~ True
        & RP.smartCase
        .~ True
        & RP.showIcons
        .~ True
        & RP.matching
        .~ "fuzzy,prefix,normal"

cycleRecentHiddenWS :: String -> String -> String -> H ()
cycleRecentHiddenWS = CycleRecentWS.cycleWindowSets $ \wset ->
    [W.tag ws | ws <- W.hidden wset ++ [W.workspace (W.current wset)]]

windowPrompt :: H ()
windowPrompt = do
    (wss, wState) <-
        runInHS $
            (,)
                <$> withWindowSet (return . W.workspaces)
                <*> use _windows
    let wins = [(rw, fmtWindow ws w) | ws <- wss, rw <- W.integrate' (W.stack ws), Just w <- [M.lookup rw wState]]
        input = RP.columnsWithHeader ("appID", "Workspace", "Title", "PID") $ map snd wins
    RP.runRofi (RP.clearInputSettings rp) input >>= (`whenJust` doApply wins)
  where
    rp :: RP.RofiPromptConfig () RP.SelectI Int
    rp =
        myRofiBaseConfig
            & RP.prompt
            .~ "window"
            & RP.promptMessage
            .~ "Go to window"
            & RP.noCustomInput
            .~ True

    fmtWindow ws w =
        ( P.bold w.appId
        , " on " <> P.text (W.tag ws)
        , " \"" <> P.text w.title <> "\""
        , maybe "" ((" pid:" <>) . P.fromShow) w.unreliablePid
        )

    doApply wins idx = do
        let (rw, _) = wins !! idx
        logInfo $ fromString $ show idx
        runInHS $ windows $ W.focusWindow rw
        manageDirty

removeFocusedWorkspace :: HS ()
removeFocusedWorkspace = do
    (curTag, ws) <- withWindowSet $ return . (W.currentTag &&& (W.workspace . W.current))
    when (null $ W.integrate' (W.stack ws)) $ do
        DynWS.removeWorkspaceByTag curTag
        DWO.removeName curTag

bindsPrompt :: H ()
bindsPrompt = do
    binds <- view (config . keyBindings)
    let xs = renderBindings binds
    let input = [{-T.justifyLeft ind  ' '-} P.bold mk <> "\t" <> P.italic desc | (mk, desc) <- xs]
    RP.runRofi @_ @'i' myRofiBaseConfig input RP.++> (\(x :: Int) -> logInfo $ "binds prompt" :# ["res" .= tshow x])
  where
    renderBindings :: [(XBKey, SomeAction H)] -> [(Text, String)]
    renderBindings binds =
        let out :: [(Text, String)]
            out =
                [ (ppXBKey @Text xk, actionDescription (Proxy @H) a)
                | (xk, a) <- L.sortOn (ppXBKey @String . fst) binds
                ]
            indent = 0 -- maximum $ map (T.length . fst) out
         in out
