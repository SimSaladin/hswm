{-# OPTIONS_GHC -Wno-ambiguous-fields -Wno-unused-record-wildcards -Wno-name-shadowing #-}

module Core
  ( module Core
  , module Wayland
  , module River
  ) where

import           River
import           HSWM.Operations
import           HSWM.Types
import           Wayland
import qualified HSWM.StackSet as W

import qualified Data.Map as M
-- import qualified Data.Set as S

import           Data.Char (toLower)
import           Foreign hiding (new, void)
import           System.Exit
import qualified Data.TMap as TM
import qualified Data.List as L

createRegistryListener :: (MonadIO m, MonadState HState m) => WlDisplay -> m RiverWindowManager
createRegistryListener display = do
  debug' "at create registry listener..."
  varWM <- liftIO (newEmptyMVar :: IO (MVar RiverWindowManager))
  varXKB <- liftIO (newEmptyMVar :: IO (MVar RiverXkbBindings))
  xkbConfigVar <- liftIO newEmptyMVar
  debug' "initialized mvars"
  useXkbConfigListener <- withObjectDef (const (return ())) $ \listener -> return (\f -> f listener)
  log' "got xkbconfiglistener"
  regListener <- getOrCreateObject $ mkRegistryListener $ \case
    RegistryGlobal _ registry name "river_window_manager_v1" _ -> do
        wl_registry_bind registry name river_window_manager_v1_interface 4 >>= putMVar varWM . RiverWindowManager
        log' "river_window_manager_v1 bound"

    RegistryGlobal _ registry name "river_xkb_bindings_v1" _ -> do
        wl_registry_bind registry name river_xkb_bindings_v1_interface 1 >>= putMVar varXKB . RiverXkbBindings
        log' "river_xkb_bindings_v1 bound"

    RegistryGlobal _ registry name "river_xkb_config_v1" _ -> do
        xkbConfig <- RiverXkbConfigV1 <$> wl_registry_bind registry name river_xkb_config_v1_interface 1
        putMVar xkbConfigVar xkbConfig
        debug' "about to install xkbconfig listener..."
        useXkbConfigListener $ \l -> riverXkbConfigV1AddListener xkbConfig l nullPtr
        debug' "xkbconfig listener installed"

    RegistryGlobal _ _ _ iface _ -> log' $ "[globalreg] " <> toText iface
    _ -> return ()

  registry <- liftIO $ wl_display_get_registry display
  liftIO $ wl_registry_add_listener registry regListener nullPtr

  _roundtrip <- liftIO $ wl_display_roundtrip display

  rwm <- liftIO $ fromJust <$> tryTakeMVar varWM
  xkb <- liftIO $ fromJust <$> tryTakeMVar varXKB
  xkbConfig <- liftIO $ fromJust <$> tryTakeMVar xkbConfigVar
  withWlObjects $ TM.insert xkbConfig . TM.insert rwm . TM.insert xkb
  return rwm

startHSWM :: (LayoutClass l RiverWindow, Read (l RiverWindow)) => WlDisplay -> HSWMConfig l -> IO ()
startHSWM display config = withStdoutLogging $ do
  pendingActions <- newTQueueIO

  let conf = HConf
        { config = config { layoutHook = Layout (layoutHook config) }
        , display = display
        }

  let initialWinSet = W.new conf.config.layoutHook ["1", "2"] [SD 0 0 0 0]
  let initialState = HState
        { windowset = initialWinSet
        , windowsetOld = initialWinSet
        , _seats = mempty
        , _outputs = mempty
        , _windows = mempty
        , pendingActions = pendingActions
        , wlObjects = TM.empty
        }

  stTMVar <- newTMVarIO initialState

  let runInH :: H a -> IO a
      runInH a = bracketOnError
        (atomically $ takeTMVar stTMVar)
        (atomically . putTMVar stTMVar)
        $ \st -> do
          (r, st') <- runH conf st a
          atomically $ putTMVar stTMVar st'
          return r

  debug' "At startup..."
  -- -- Process pending actions in the background
  -- _ <- forkIO $ forever $ do
  --   a <- liftIO $ atomically (readTQueue pendingActions)
  --   debug' $ "[eventq] processing action: " <> toText (actionDescription a)
  --   runInH $ userCode $ runner a

  runInH $ do
    _ <- getOrCreateObject $ mkRiverXkbConfigV1Listener $ \e -> runInH $ handleEvent $ XkbConfigEvent e
    _ <- getOrCreateObject $ mkRiverXkbKeyboardV1Listener $ \e -> runInH $ handleEvent $ XkbKeyboardEvent e
    windowManager <- createRegistryListener display
    _ <- getOrCreateObject $ mkXkbBindingListener $ \e -> runInH $ handleEvent $ XkbEvent e
    _ <- getOrCreateObject $ mkPointerBindingListener $ \e -> runInH $ handleEvent $ PointerEvent e
    _ <- getOrCreateObject $ mkWindowListener $ \e -> runInH $ handleEvent $ WindowEvent e
    _ <- getOrCreateObject $ mkSeatListener $ \e -> runInH $ handleEvent $ SeatEvent e
    _ <- getOrCreateObject $ newOutputListener $ \e -> runInH $ handleEvent $ OutputEvent e
    managerListener <- getOrCreateObject $ mkWindowManagerListener $ \e -> runInH $ handleEvent $ WindowManagerEvent e
    liftIO $ river_window_manager_v1_add_listener windowManager managerListener nullPtr

  forever $ do
    res <- wl_display_dispatch display
    when (res < 0) $ do
      log' "error: dispatch failed"
      exitFailure

windows :: H ()
windows = do
    old <- gets windowsetOld
    ws <- gets windowset
    let oldvisible = concatMap (W.integrate' . W.stack . W.workspace) $ W.current old : W.visible old
        newwindows = W.allWindows ws L.\\ W.allWindows old

    mapM_ setInitialProperties newwindows

    whenJust (W.peek old) $ \otherw ->
      setWindowBorder otherw =<< asks (normalBorder . config)

    modify (\s -> s { windowsetOld = ws })

    let tags_oldvisible = map (W.tag . W.workspace) $ W.current old : W.visible old
        gottenhidden    = filter (flip elem tags_oldvisible . W.tag) $ W.hidden ws
    mapM_ (sendMessageWithNoRefresh Hide) gottenhidden

    -- for each workspace, layout the currently visible workspaces
    let allscreens     = W.screens ws
        summed_visible = scanl (++) [] $ map (W.integrate' . W.stack . W.workspace) allscreens

    rects <- fmap concat $ forM (zip allscreens summed_visible) $ \ (w, vis) -> do
        let wsp   = W.workspace w
            this  = W.view n ws
            n     = W.tag wsp
            tiled = (W.stack . W.workspace . W.current $ this)
                    >>= W.filter (`M.notMember` W.floating ws)
                    >>= W.filter (`notElem` vis)
            sd = W.screenDetail w
            viewrect = Rectangle{x=fi sd.x, y=fi sd.y, width=fi sd.width, height=fi sd.height}

        -- just the tiled windows:
        -- now tile the windows on this workspace, modified by the gap
        (rs, ml') <- runLayout wsp { W.stack = tiled } viewrect `catchH`
                     runLayout wsp { W.stack = tiled, W.layout = Layout Full } viewrect
        updateLayout n ml'

        let m   = W.floating ws
            flt = [(fw, scaleRationalRect viewrect r)
                    | fw <- filter (`M.member` m) (W.index this)
                    , fw `notElem` vis
                    , Just r <- [M.lookup fw m]]
            vs = flt ++ rs

        -- return the visible windows for this workspace:
        return vs

    let visible = map fst rects

    mapM_ (uncurry tileWindow) rects

    whenJust (W.peek ws) $ \w ->
      setWindowBorder w =<< asks (focusedBorder . config)

    mapM_ reveal visible
    setTopFocus

    -- hide every window that was potentially visible before, but is not
    -- given a position by a layout now.
    mapM_ hide (L.nub (oldvisible ++ newwindows) L.\\ visible)

    asks (logHook . config) >>= userCodeDef ()

-- | Destroy closed windows and removed outputs/seats
manageCleanup :: H ()
manageCleanup = do
  mapSeats $ \seat -> when seat.removed (doRemoveSeat seat)
  mapWindows $ \w -> when w.closed (doRemoveWindow w)

doRemoveWindow :: Window -> H ()
doRemoveWindow w@Window{} = do
  modify $ \st -> st { _windows = L.filter (\x -> (/= w.river_window) x.river_window) (_windows st) }
  gets _seats >>= \xs -> do
   xs' <- forM xs $ \seat' -> do
     let seat = seat' { focused = if focused seat' == w.river_window then invalidWindow else focused seat' }
     if op_window seat == w.river_window
        then do
            liftIO $ river_seat_v1_op_end seat.river_seat
            return $ seat { op_window = invalidWindow, op = SEAT_OP_NONE }
        else return seat
   modify $ \s -> s { _seats = xs' }
  liftIO $ river_window_v1_destroy w.river_window

doRemoveSeat :: Seat -> H ()
doRemoveSeat s@Seat{} = do
  modify $ \st -> st { _seats = L.filter (\x -> (/= s.river_seat) x.river_seat) (_seats st) }
  forM_ s.xkb_bindings destroyXKBBinding
  forM_ s.pointer_bindings destroyPointerBinding
  liftIO $ river_seat_v1_destroy s.river_seat

manageWindows :: H ()
manageWindows = do
  newWindows <- gets _windows >>= \xs -> forM xs $ \w -> do
      when w.new $ do
        setNodePosition w.node  0  0
        liftIO $ river_window_v1_propose_dimensions w.river_window 0 0
      when (w.pointer_move_requested /= invalidSeat) $ do
        seat_pointer_move w.pointer_move_requested w
      when (w.pointer_resize_requested /= invalidSeat) $ do
        seat_pointer_resize w.pointer_resize_requested w w.pointer_resize_requested_edges
      return (w :: Window) { new = False, pointer_move_requested = invalidSeat, pointer_resize_requested = invalidSeat  }
  modify $ \s -> s { _windows = newWindows }


---------------------------------------------------
-- event handling

-- | Runs handleEventHook from the configuration and runs the default handler
-- function if it returned True.
handleWithHook :: Event -> H ()
handleWithHook e = do
  evHook <- asks (handleEventHook . config)
  whenM (userCodeDef True $ getAll `fmap` evHook e) (handleEvent e)

handleEvent :: Event -> H ()
handleEvent (WindowManagerEvent e) = do
  -- debug logging
  case e of
    WindowManagerManageStart{} -> pure ()
    WindowManagerRenderStart{} -> pure ()
    _ -> log' $ "[event|manager] " <> tshow e
  case e of
    WindowManagerOutput _ _ out -> do
      output_listener <- getObject
      liftIO $ river_output_v1_add_listener out output_listener nullPtr
      curOutputs <- gets _outputs
      let screenId = case [ i | i <- [S 0..], isNothing $ L.find ((i==) . screen) curOutputs ] of
                       i : _ -> i
                       _ -> error "impossible"
      let output = def { river_output = out, screen = screenId }
      modify $ \s -> s { _outputs = _outputs s ++ [output] }
      defLayout <- asks (layoutHook . config)
      modifyWindowSet $ W.insertScreen defLayout screenId (SD 0 0 0 0)

    WindowManagerSeat _ _ river_seat -> do
      let seat = def { river_seat = river_seat } :: Seat
      seatListener <- getObject
      liftIO $ river_seat_v1_add_listener river_seat seatListener nullPtr
      modify $ \s -> s { _seats = _seats s ++ [seat] }

    WindowManagerWindow _ _wm w -> do
      nd <- liftIO $ river_window_v1_get_node w
      let win = def { river_window = w, node = nd }
      window_listener <- getObject
      liftIO $ river_window_v1_add_listener w window_listener nullPtr
      modify $ \s -> s { _windows = _windows s ++ [win] }
      modifyWindowSet $ W.insertUp w

    -- manage sequence
    WindowManagerManageStart _dt wm -> do
      manageCleanup
      manageWindows
      manageSeats
      windows
      liftIO $ wmManageFinish wm

    WindowManagerRenderStart _dt wm -> do
      mapSeats seatRender
      --mapWindows $ \w -> setWindowBorder w.river_window
      --processPendingMessages
      liftIO $ wmRenderFinish wm

    WindowManagerUnavailable{} -> do
      log' "error: another window manager already running"
      liftIO exitFailure

    WindowManagerFinished _ rwm -> do
      liftIO $ wmDestroy rwm
      liftIO exitSuccess

    _ -> return ()

handleEvent (OutputEvent e) = do
  log' $ "[event|output] " <> tshow e
  case e of
    OutputRemoved _ output -> do
      modify $ \s -> s { _outputs = filter (\x -> x.river_output /= output) s._outputs }
      withOutput output $ \Output{screen} -> modifyWindowSet $ W.deleteScreen screen
      liftIO $ river_output_v1_destroy output
    OutputDimensions _ output width height -> do
      modifyOutput output $ \x -> x { width = fi width, height = fi height }
      withOutput output $ \Output{screen} ->
        modifyWindowSet $ modifyScreen screen $ modifyScreenDetail $ \sd -> sd { height = fi height, width = fi width }
    OutputPosition _ output x y -> do
      modifyOutput output $ \a -> a { x = fi x, y = fi y }
      withOutput output $ \Output{screen} ->
        modifyWindowSet $ modifyScreen screen $ modifyScreenDetail $ \sd -> sd { x = fi x, y = fi y }
    _ -> return ()
  where
        modifyScreen sid f = W.mapScreen (\s -> if sid == W.screen s then f s else s)
        modifyScreenDetail f scr = scr { W.screenDetail = f (W.screenDetail scr) }

handleEvent (XkbEvent e) = do
  case e of
    XkbKeyPressed dt _ -> do
      xb <- liftIO $ deRefStablePtr (castPtrToStablePtr dt :: StablePtr (XkbBinding SomeAction))
      debug' $ toText $ printf "[event|xkb] keypress ev=%s action=%s" (show e) (show xb.action)
      dispatchAction xb.action
      --modifySeat xb.river_seat $ \s -> s { pending_action = Just xb.action }
    _ -> debug' $ "[event|xkb] " <> tshow e

handleEvent (PointerEvent e) = do
  debug' $ "[event|pointer] " <> tshow e
  case e of
    _ -> return ()

handleEvent (WindowEvent e) = do
  debug' $ "[event|window] " <> tshow e
  case e of
    -- The window has been closed by the server, perhaps due to an xdg_toplevel.close request or similar.
    -- The server will send no further events on this object and ignore any request other than river_window_v1.destroy made after this event is sent. The client should destroy this object with the river_window_v1.destroy request to free up resources.
    WindowClosed _ w -> do
      modifyWindow w $ \s -> s { closed = True }
    WindowDimensions{..} -> do
      modifyWindow window $ \s -> s { width = fromIntegral we_width, height = fromIntegral we_height }
    WindowPointerMoveRequested{..} -> do
      modifyWindow window $ \s -> s { pointer_move_requested = seat }
    WindowPointerResizeRequested{..} -> do
      modifyWindow window $ \s -> s { pointer_resize_requested = seat, pointer_resize_requested_edges = fromIntegral we_edges }
    WindowAppId { window, we_app_id } ->
      modifyWindow window $ \s -> s { appId = we_app_id }
    WindowTitle { window, we_title } ->
      modifyWindow window $ \s -> s { title = we_title }
    -- Parent { we_parent }
    -- DecorationHint { we_hint }
    -- MaximizeRequested
    -- UnmaximizeRequested
    -- FullscreenRequested { output }
    -- ExitFullscreenRequested
    -- UnreliablePID { we_unreliable_pid }
    -- PresentationHint { we_hint }
    -- Identifier { we_identifier }
    _ -> return ()

handleEvent (SeatEvent e) = do
  debug' $ "[event|seat] " <> tshow e
  case e of
    SeatRemoved _ seat -> do
      modifySeat seat $ \x -> x { removed = True }
    SeatEventPointerEnter{..} -> do
      modifySeat seat $ \s -> s { hovered = window }
      -- focus follow mouse
      modifyWindowSet $ W.focusWindow window
    SeatEventPointerLeave{..} -> do
      modifySeat seat $ \s -> s { hovered = invalidWindow }
    SeatEventWindowInteraction{..} -> do
      modifySeat seat $ \s -> s { interacted = window }
    SeatEventOpDelta{..} -> do
      modifySeat seat $ \s -> s { op_dx = fromIntegral dx, op_dy = fromIntegral dy }
    SeatEventOpRelease{..} -> do
      modifySeat seat $ \s -> s { op_release = True }
    _ -> return ()

handleEvent (XkbConfigEvent e) = do
  debug' $ "[xkbconfig] " <> tshow e
  case e of
    XkbConfigXkbKeyboard _ xkbConfig xkbKeyboard -> do
      l <- getObject @RiverXkbKeyboardV1Listener
      io $ riverXkbKeyboardV1AddListener xkbKeyboard l nullPtr
      debug' $ "[xkbconfig] creating and assigning keymap"
      xkbKeymap <- io $ newXkbKeymapFromNames XkbRuleNames { rules = ""
                                         , model = "pc104"
                                         , layout = "dvp-my"
                                         , variant = "dvp-my"
                                         , options = "terminate:ctrl_alt_bksp,compose:rctrl-altgr,lv3:ralt_switch,lv3:menu_switch"
                                         }
      io $ withXkbKeymapFd xkbKeymap $ \fd -> do
          kmap <- river_xkb_config_v1_create_keymap xkbConfig (fi fd) 1
          io $ river_xkb_keyboard_v1_set_keymap xkbKeyboard kmap
    _ -> pure ()

handleEvent (XkbKeyboardEvent e) = do
  debug' $ "[xkbkeyboard] " <> tshow e

--------------------------------------------------
-- seat management

create_seat_bindings :: Seat -> H Seat
create_seat_bindings s = do
  myMod        <- asks (defaultModMask . config) >>= pure . resolveModMask 0
  xkbBinds     <- asks (keyBindings . config) >>= resolveKeyBinds myMod
  pointerBinds <- asks (pointerBindings . config) >>= resolvePointerBinds myMod

  -- xkb bindings
  xkbPtrs <- forM xkbBinds $ \((m, k), a) -> do
    binds <- getObject
    l <- getObject
    newXKBBinding binds l s.river_seat m k a

  -- pointer bindings
  pointer_binding_listener <- getObject @PointerBindingListener
  pointerPtrs <- forM pointerBinds $ \((m, b), a) -> newPointerBinding pointer_binding_listener s.river_seat m b a
  return s { xkb_bindings = s.xkb_bindings ++ xkbPtrs
           , pointer_bindings = s.pointer_bindings ++ pointerPtrs }
  where
    resolveModMask d s = case map toLower s of
                           "m"     -> d
                           "none"  -> fi $ fromEnum $ RiverSeatV1ModifiersNone
                           "shift" -> fi $ fromEnum $ RiverSeatV1ModifiersShift
                           "ctrl"  -> fi $ fromEnum $ RiverSeatV1ModifiersCtrl
                           "mod1"  -> fi $ fromEnum $ RiverSeatV1ModifiersMod1
                           "mod3"  -> fi $ fromEnum $ RiverSeatV1ModifiersMod3
                           "mod4"  -> fi $ fromEnum $ RiverSeatV1ModifiersMod4
                           "mod5"  -> fi $ fromEnum $ RiverSeatV1ModifiersMod5
                           _ -> error $ "unrecognized modifier: " ++ s
    resolveKeyBinds mdef = mapM $ \((m, k), a) -> do
      let m' = resolveModMask mdef m
      return ((m', k), a)
    resolvePointerBinds mdef = mapM $ \((m, k), a) -> do
      let m' = resolveModMask mdef m
      return ((m', k), a)


manageSeats :: H ()
manageSeats = do
    newSeats <- gets _seats >>= \xs -> forM xs $ \s -> if s.new then create_seat_bindings (s :: Seat) { new = False } else return s
    modify $ \s -> s { _seats = newSeats }
    gets _seats >>= \xs -> forM_ xs $ \s -> do
      withWindow s.interacted $ \w -> seatFocus s w
      seat_action s s.pending_action
      --modifySeat s.river_seat $ \s -> s { interacted = invalidWindow, pending_action = ACTION_NONE }

      case s.op of
        SEAT_OP_NONE -> return ()
        SEAT_OP_MOVE -> do
          when s.op_release $ do
            liftIO $ river_seat_v1_op_end s.river_seat
            modifySeat s.river_seat $ \s -> s { op = SEAT_OP_NONE, op_window = invalidWindow }
        SEAT_OP_RESIZE -> do
          when s.op_release $ do
            liftIO $ river_window_v1_inform_resize_end s.op_window
            liftIO $ river_seat_v1_op_end s.river_seat
            modifySeat s.river_seat $ \s -> s { op = SEAT_OP_NONE, op_window = invalidWindow }
          withWindow s.op_window $ \w -> do
            let width = s.op_start_width
                  - (if ((s.op_edges .&. (fromIntegral $ fromEnum EdgeLeft)) /= 0)  then s.op_dx else 0)
                  + (if ((s.op_edges .&. (fromIntegral $ fromEnum EdgeRight)) /= 0) then s.op_dx else 0)
            let height = s.op_start_height
                  - (if ((s.op_edges .&. (fromIntegral $ fromEnum EdgeTop)) /= 0)    then s.op_dy else 0)
                  + (if ((s.op_edges .&. (fromIntegral $ fromEnum EdgeBottom)) /= 0) then s.op_dy else 0)
            liftIO $ river_window_v1_propose_dimensions w.river_window (if width > 1 then width else 1) (if height > 1 then height else 1)

      when s.op_release $ modifySeat s.river_seat $ \s -> s { op_release = False }

seatRender :: Seat -> H ()
seatRender s = do
  case s.op of
    SEAT_OP_NONE -> return ()
    SEAT_OP_MOVE -> do
      withWindow s.op_window $ \w -> do
        let x = s.op_start_x + s.op_dx
            y = s.op_start_y + s.op_dy
        setNodePosition w.node x y
        debug' $ "seatRender: move window " <> tshow (w, x, y)
    SEAT_OP_RESIZE -> withWindow s.op_window $ \w -> do
      let x = s.op_start_x + (if (s.op_edges .&. fromEnum EdgeLeft) /= 0 then s.op_start_width - w.width else 0)
      let y = s.op_start_y + (if (s.op_edges .&. fromEnum EdgeTop) /= 0 then s.op_start_height - w.height else 0)
      setNodePosition w.node x y
      debug' $ "seatRender: resize window " <> tshow (w, x, y)

seatFocus :: Seat -> Window -> H ()
seatFocus s w = do
  toFocus <- if w.river_window == invalidWindow then
                                          gets _windows >>= \case
                                                                     x : _ -> return x
                                                                     _     -> return w
                                          else return w
  let w = toFocus.river_window
  when (w /= s.focused) $ setFocus w -- clearFocus
  modifySeat s.river_seat $ \s -> s { focused = toFocus.river_window }
    where
      setFocus w = when (w /= invalidWindow) $ do
        log' $ "XXXX: seatFocus is FOCUSING CURRENT WINDOW " <> tshow w
        liftIO $ river_seat_v1_focus_window s.river_seat w
        -- liftIO $ river_node_v1_place_top w.node

seatClearFocus :: Seat -> H ()
seatClearFocus s = do
  log' "[seat] clear focus"
  liftIO $ river_seat_v1_clear_focus s.river_seat

seat_pointer_move :: RiverSeat -> Window -> H ()
seat_pointer_move sid w = withSeat sid $ \s -> do
  log' $ "[seat_pointer_move] " <> tshow (sid, w)
  seatFocus s w
  liftIO $ river_seat_v1_op_start_pointer s.river_seat
  modifySeat s.river_seat $ \s -> s
    { op = SEAT_OP_MOVE
    , op_window = w.river_window
    , op_start_x = w.x
    , op_start_y = w.y
    , op_dx= 0
    , op_dy= 0
    }

seat_pointer_resize :: RiverSeat -> Window -> Int -> H ()
seat_pointer_resize sid w edges = withSeat sid $ \s -> do
  log' $ "[seat_pointer_resize] " <> tshow (sid, w, edges)
  seatFocus s w
  liftIO $ river_window_v1_inform_resize_start w.river_window
  liftIO $ river_seat_v1_op_start_pointer s.river_seat
  modifySeat s.river_seat $ \s -> s
    { op = SEAT_OP_RESIZE
    , op_window = w.river_window
    , op_edges = edges
    , op_start_x = w.x
    , op_start_y = w.y
    , op_start_width = w.width
    , op_start_height = w.height
    , op_dx = 0
    , op_dy = 0
    }

seat_action :: Seat -> Maybe SomeAction -> H ()
seat_action _ Nothing = return ()
seat_action _ (Just action) = do
  log' $ "[seat_action] " <> tshow action
  runner action
