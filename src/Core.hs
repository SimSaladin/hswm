{-# OPTIONS_GHC -Wno-ambiguous-fields -Wno-unused-record-wildcards -Wno-name-shadowing #-}

module Core
  ( module Core
  , module Wayland
  , module River
  , module HSWM.Seats
  ) where

import           HSWM.Operations
import qualified HSWM.StackSet as W
import           HSWM.Types
import           HSWM.Seats
import           River
import           Wayland
import qualified Wayland.Client as WL

import qualified Data.List as L
import qualified Data.TMap as TM
import           Foreign hiding (new, void)
import           System.Exit
import           Data.IORef

startHSWM :: (LayoutClass l RiverWindow, Read (l RiverWindow)) => WlDisplay -> HSWMConfig l -> IO ()
startHSWM display config = withStdoutLogging $ do
  conf <- HConf
      (config { layoutHook = Layout (layoutHook config) })
      display <$> newIORef mempty

  pendingActions <- newTQueueIO

  let initialState = HState
        { windowset = initialWinSet
        , windowsetOld = initialWinSet
        , _seats = mempty
        , _outputs = mempty
        , _windows = mempty
        , pendingActions = pendingActions
        , wlObjects = TM.empty }
      initialWinSet = W.new conf.config.layoutHook ["1", "2"] [SD 0 0 0 0]

  stTMVar <- newTMVarIO initialState

  let runInH :: H a -> IO a
      runInH a = bracketOnError (atomically $ takeTMVar stTMVar) (atomically . putTMVar stTMVar) $ \st -> do
          (r, st') <- runH conf st a
          atomically $ putTMVar stTMVar st'
          return r

  -- XXX
  -- -- Process pending actions in the background
  -- _ <- forkIO $ forever $ do
  --   a <- liftIO $ atomically (readTQueue pendingActions)
  --   debug' $ "[eventq] processing action: " <> toText (actionDescription a)
  --   runInH $ userCode $ runner a

  runInH $ do
    xkbConfigListener <- getOrCreateObject $ mkRiverXkbConfigV1Listener $ \e -> runInH $ handleWithHook $ XkbConfigEvent e
    _ <- getOrCreateObject $ mkRiverXkbKeyboardV1Listener $ \e -> runInH $ handleWithHook $ XkbKeyboardEvent e
    _ <- getOrCreateObject $ mkXkbBindingListener $ \e -> runInH $ handleWithHook $ XkbEvent e
    _ <- getOrCreateObject $ mkPointerBindingListener $ \e -> runInH $ handleWithHook $ PointerEvent e
    _ <- getOrCreateObject $ mkWindowListener $ \e -> runInH $ handleWithHook $ WindowEvent e
    _ <- getOrCreateObject $ mkSeatListener $ \e -> runInH $ handleWithHook $ SeatEvent e
    _ <- getOrCreateObject $ newOutputListener $ \e -> runInH $ handleWithHook $ OutputEvent e
    managerListener <- getOrCreateObject $ mkWindowManagerListener $ \e -> runInH $ handleWithHook $ WindowManagerEvent e
    regListener <- getOrCreateObject $ mkRegistryListener $ \case
      RegistryGlobal _ registry name iface version -> do
        log' $ "[globalreg] new registry item: " <> toText iface <> " (" <> tshow name <> ")"
        modifyIORef conf.globals $ registerGlobal name iface version registry
      RegistryGlobalRemove _udata _registry name -> do
        log' $ "[globalreg] registry entry removed: " <> tshow name
        modifyIORef conf.globals (removeGlobal name)

    liftIO $ do
      registry <- wl_display_get_registry display
      wl_registry_add_listener registry regListener nullPtr

    -- Wait for one roundtrip for the registry listener to become aware of all current globals.
    _ <- liftIO $ wl_display_roundtrip display

    -- expect wl_compositor
    _wl_compositor <- getOrCreateObject $ requireGlobal conf.globals ("wl_compositor", 4) $ \(WlRegistry r) n v ->
      io $ WL.wl_registry_bind (castPtr r) n WL.wl_compositor_interface (fi v) >>= return . castPtr @_ @WL.Wl_compositor

    -- expect wl_shm
    _wl_shm <- getOrCreateObject $ requireGlobal conf.globals ("wl_shm", 1) $ \(WlRegistry r) n v ->
      io $ WL.wl_registry_bind (castPtr r) n WL.wl_shm_interface (fi v) >>= return . castPtr @_ @WL.Wl_shm

    -- TODO:
    -- ("river_libinput_config_v1", 1)

    -- ("river_layer_shell_v1", 1)

    windowManager <- getOrCreateObject $ requireGlobal conf.globals ("river_window_manager_v1", 4) $ \r n v -> wl_registry_bind r n river_window_manager_v1_interface v <&> RiverWindowManager
    _xkbBindings  <- getOrCreateObject $ requireGlobal conf.globals ("river_xkb_bindings_v1"  , 1) $ \r n v -> wl_registry_bind r n river_xkb_bindings_v1_interface   v <&> RiverXkbBindings
    xkbConfig     <- getOrCreateObject $ requireGlobal conf.globals ("river_xkb_config_v1"    , 1) registryBindRiverXkbConfigV1

    liftIO $ do
      riverXkbConfigV1AddListener xkbConfig xkbConfigListener nullPtr
      river_window_manager_v1_add_listener windowManager managerListener nullPtr

  forever $ do
    res <- wl_display_dispatch display
    when (res < 0) $ do
      log' "error: dispatch failed"
      exitFailure

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
      manageSeats
      manageWindows
      windows
      liftIO $ riverWindowManagerManageFinish wm

    WindowManagerRenderStart _dt wm -> do
      mapSeats seatRender
      --mapWindows $ \w -> setWindowBorder w.river_window
      --processPendingMessages
      liftIO $ riverWindowManagerRenderFinish wm

    WindowManagerUnavailable{} -> do
      log' "error: another window manager already running"
      liftIO exitFailure

    WindowManagerFinished _ rwm -> do
      liftIO $ riverWindowManagerDestroy rwm
      liftIO exitSuccess

    _ -> return ()

handleEvent (OutputEvent e) = case e of
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

  -- The window has been closed by the server, perhaps due to an xdg_toplevel.close request or similar.
  -- The server will send no further events on this object and ignore any request other than river_window_v1.destroy made after this event is sent. The client should destroy this object with the river_window_v1.destroy request to free up resources.
handleEvent (WindowEvent (WindowClosed _ w                 )) = modifyWindow w $ \s         -> s { closed = True }
handleEvent (WindowEvent (WindowDimensions{..}             )) = modifyWindow window $ \s    -> s { width = fromIntegral we_width, height = fromIntegral we_height }
handleEvent (WindowEvent (WindowPointerMoveRequested{..}   )) = do modifyWindow window $ \s -> s { pointer_move_requested = seat }
handleEvent (WindowEvent (WindowPointerResizeRequested{..} )) = do modifyWindow window $ \s -> s { pointer_resize_requested = seat, pointer_resize_requested_edges = fromIntegral we_edges }
handleEvent (WindowEvent (WindowAppId { window, we_app_id })) = modifyWindow window $ \s    -> s { appId = we_app_id }
handleEvent (WindowEvent (WindowTitle { window, we_title } )) = modifyWindow window $ \s    -> s { title = we_title }

-- Parent { we_parent }
-- DecorationHint { we_hint }
-- MaximizeRequested
-- UnmaximizeRequested
-- FullscreenRequested { output }
-- ExitFullscreenRequested
-- UnreliablePID { we_unreliable_pid }
-- PresentationHint { we_hint }
-- Identifier { we_identifier }

handleEvent (SeatEvent (SeatRemoved _ seat)) = do withSeat seat deleteRemovedSeat
handleEvent (SeatEvent (SeatEventPointerEnter{..})) = do modifySeat seat $ \s -> s { hovered = window }
                                                         modifyWindowSet $ W.focusWindow window -- focus follow mouse
handleEvent (SeatEvent (SeatEventPointerLeave{..})) = do modifySeat seat $ \s -> s { hovered = invalidWindow }
handleEvent (SeatEvent (SeatEventWindowInteraction{..})) = do modifySeat seat $ \s -> s { interacted = window }
handleEvent (SeatEvent (SeatEventOpDelta{..})) = do modifySeat seat $ \s -> s { op_dx = fromIntegral dx, op_dy = fromIntegral dy }
handleEvent (SeatEvent (SeatEventOpRelease{..})) = do modifySeat seat $ \s -> s { op_release = True }

-- Keyboard added
handleEvent (XkbConfigEvent (XkbConfigXkbKeyboard _ xkbConfig xkbKeyboard)) = do
  withObject @RiverXkbKeyboardV1Listener $ \l -> io $ riverXkbKeyboardV1AddListener xkbKeyboard l nullPtr
  asks (xkbLayout . config) >>= (`whenJust` setKeyboardLayout xkbConfig xkbKeyboard)

-- keyboard is removed
handleEvent (XkbKeyboardEvent (KeyboardRemoved _ _kbd)) = return () -- TODO

handleEvent (XkbEvent (XkbKeyPressed dt _)) = do -- TODO
  xb <- liftIO $ deRefStablePtr (castPtrToStablePtr dt :: StablePtr (XkbBinding SomeAction))
  dispatchAction xb.action

handleEvent (PointerEvent _) = return ()
handleEvent _ = return ()

----------------------------------------------------------------------------------

setKeyboardLayout :: RiverXkbConfigV1 -> RiverXkbKeyboardV1 -> XkbRuleNames -> H ()
setKeyboardLayout xkbConfig keyboard layout =
    io (newXkbKeymapFromNames layout) >>= \km ->
    io $ withXkbKeymapFd km $ \fd ->
    riverXkbConfigV1CreateKeymap xkbConfig (fi fd) RiverXkbConfigV1KeymapFormatTextV1
    >>= io . riverXkbKeyboardV1SetKeymap keyboard

manageWindows :: H ()
manageWindows = do
     -- XXX ??
    mapWindows $ \w -> when w.closed (doRemoveWindow w)

    newWindows <- gets _windows >>= \xs -> forM xs $ \w -> do
        when (w.pointer_move_requested /= invalidSeat) $ seatPointerMove w.pointer_move_requested w
        when (w.pointer_resize_requested /= invalidSeat) $ seatPointerResize w.pointer_resize_requested w w.pointer_resize_requested_edges
        return (w :: Window) { new = False, pointer_move_requested = invalidSeat, pointer_resize_requested = invalidSeat  }

    modify $ \s -> s { _windows = newWindows }

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
