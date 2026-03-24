{-# OPTIONS_GHC -Wno-ambiguous-fields -Wno-unused-record-wildcards -Wno-name-shadowing #-}

module Core
  ( module Core
  , module Wayland
  , module RiverWM.Bindings
  , module RiverWM.XKB
  ) where

import           Control.Monad.Fix
import           Data.Char (toLower)
import qualified Data.Map as M
import           Foreign hiding (new, void)
import           Foreign.C
import           HSWM.Operations
import           HSWM.Types
import           HSWM.Types.XKB
import           RiverWM.Bindings
import           RiverWM.XKB
import           System.Exit
import           System.IO.Unsafe
import           Wayland

newState :: IO HState
newState = HState mempty mempty mempty <$> newEmptyMVar <*> newEmptyMVar <*> newTVarIO mempty

modMaskMap :: TVar (M.Map String ModMask)
{-# NOINLINE modMaskMap #-}
modMaskMap = unsafePerformIO $ newTVarIO M.empty

resolveModMask :: String -> H ModMask
resolveModMask name = f <$> liftIO (readTVarIO modMaskMap)
  where f = M.findWithDefault 0 (map toLower name)

startHSWM :: WlDisplay -> HSWMConfig -> IO ()
startHSWM display config = withStdoutLogging $ do
  st <- newState
  stTMVar <- newTMVarIO st

  kbd_listener <- mkKeyboardListener $ \case
    KeyboardKeymap dt _kbd fmt fd size -> do
      log' $ "KEYBOARD: " <> tshow (fmt, fd, size)
      kmap <- createKeymap fd size
      forM_ xkbRealModifierNames $ \str ->
        xkb_keymap_mod_get_mask kmap str >>= \mask -> do
          debug' $ "keymask: " <> tshow (dt, str, mask)
          when (mask > 0) $ atomically $ modifyTVar modMaskMap $ M.insert (map toLower str) mask
    _ -> return ()

  regListenerPtr <- mkRegistryListener $ WlRegistryListener
      (\_data registry name ifacePtr version -> do
        iface <- peekCString ifacePtr
        case iface of
          "river_window_manager_v1" -> do
            wl_registry_bind registry name river_window_manager_v1_interface 4 >>= putMVar (_riverWM st)
            log' "river_window_manager_v1 bound"
          "river_xkb_bindings_v1" -> do
            wl_registry_bind registry name river_xkb_bindings_v1_interface 1 >>= putMVar (_xkbBinds st)
            log' "river_xkb_bindings_v1 bound"
          "wl_seat" ->
            wl_registry_bind registry name wl_seat_interface version >>= \val@(WlSeat valPtr) -> do
              debug' $ "reg: wl_seat bound: " <> tshow name
              atomically $ modifyTVar (_wlSeats st) (M.insert (fromIntegral name) val)
              kbd <- liftIO $ wl_seat_get_keyboard val
              debug' $ "reg: wl_seat:" <> tshow name <> ":got keyboard"
              liftIO $ wl_keyboard_add_listener kbd kbd_listener valPtr
          _ -> debug' $ "register-global: unhandled iface: " <> toText iface <> " (version: " <> tshow version <> ", name: " <> tshow name <> ")"
      )
      (\_data _reg _name -> return ())

  registry <- wl_display_get_registry display
  wl_registry_add_listener registry regListenerPtr nullPtr

  roundtrip <- wl_display_roundtrip display
  log' $ "Roundtrip: " <> tshow roundtrip

  -- TODO check windowManagerMVar exists

  windowManager <- readMVar (_riverWM st)

  conf <- mfix $ \conf -> do
    let runInH :: H a -> IO a
        runInH a = do
          st' <- atomically $ takeTMVar stTMVar
          (r, st'') <- runH conf st' a
          atomically $ putTMVar stTMVar st''
          return r
    _xkbBindingListener <- mkXkbBindingListener $ \e -> runInH $ processXkbKeyEvent e
    _pointerBindingListener <- mkPointerBindingListener $ \e -> runInH $ processPointerEvent e
    _windowListener <- mkWindowListener $ \e -> runInH $ processWindowEvent e
    _seatListener <- mkSeatListener $ \e -> runInH $ processSeatEvent e
    _outputListener <- newOutputListener $ \e -> runInH $ processOutputEvent e
    _managerListener <- mkWindowManagerListener $ \e -> runInH $ processManagerEvent e
    let handleEventHook _ = return ()
        defaultBorders =
          let
            (wb_r, wb_g, wb_b, wb_a) = borderColor config
            wb_width = borderWidth config
            wb_edges = fromIntegral $ borderEdges config
          in WindowBorders { .. }
        userConfig = config
    return HConf { .. }

  _ <- river_window_manager_v1_add_listener windowManager conf._managerListener nullPtr

  forever $ do
    res <- wl_display_dispatch display
    when (res < 0) $ do
      log' "error: dispatch failed"
      exitFailure

create_seat_bindings :: Seat -> H Seat
create_seat_bindings s = do
  myMod <- asks (defaultModMask . userConfig) >>= resolveModMask
  when (myMod /= 0) $ liftIO $ atomically $ modifyTVar modMaskMap $ M.insert "m" myMod
  xkbBinds     <- asks (keyBindings . userConfig) >>= resolveKeyBinds
  pointerBinds <- asks (pointerBindings . userConfig) >>= resolvePointerBinds
  -- xkb bindings
  xkbPtrs <- fmap catMaybes $ forM xkbBinds $ \((m, k), a) -> xkb_binding_create s m k a
  -- pointer bindings
  pointerPtrs <- forM pointerBinds $ \((m, b), a) -> pointer_binding_create s m b a
  return s { xkb_bindings = s.xkb_bindings ++ xkbPtrs
           , pointer_bindings = s.pointer_bindings ++ pointerPtrs }
  where
    resolveKeyBinds = mapM $ \((m, k), a) -> do
      m' <- resolveModMask m
      return ((m', k), a)
    resolvePointerBinds = mapM $ \((m, k), a) -> do
      m' <- resolveModMask m
      return ((m', k), a)

window_set_position :: Window -> Int -> Int -> H ()
window_set_position w x y = liftIO $ river_node_v1_set_position (node w) x y

withSeat :: RiverSeat -> (Seat -> H ()) -> H ()
withSeat sid f = gets _seats >>= mapM_ (\s -> when (s.river_seat == sid) (f s))

withWindow :: RiverWindow -> (Window -> H ()) -> H ()
withWindow wid f = gets _windows >>= mapM_ (\w -> when (w.river_window == wid) (f w))

modifyWindow :: RiverWindow -> (Window -> Window) -> H ()
modifyWindow w f = modify $ \s -> s { _windows = map g s._windows }
  where g x | x.river_window == w = f x
            | otherwise = x

modifyOutput :: RiverOutput -> (Output -> Output) -> H ()
modifyOutput ro f = modify $ \s -> s { _outputs = map g (_outputs s) }
  where g x@Output{..} | river_output == ro = f x
                       | otherwise = x

modifySeat :: RiverSeat -> (Seat -> Seat) -> H ()
modifySeat ro f = modify $ \s -> s { _seats = map g (_seats s) }
  where g x@Seat{..} | river_seat == ro = f x
                     | otherwise = x

mapSeats :: (Seat -> H ()) -> H ()
mapSeats f = gets _seats >>= mapM_ f

mapWindows :: (Window -> H ()) -> H ()
mapWindows f = gets _windows >>= mapM_ f

processManagerEvent :: WindowManagerEvent -> H ()
processManagerEvent e = do
 case e of
   WindowManagerManageStart{} -> pure ()
   WindowManagerRenderStart{} -> pure ()
   _ -> log' $ "[event|manager] " <> tshow e
 case e of
  WindowManagerUnavailable{}      -> do log' "error: another window manager already running"
                                        liftIO exitFailure
  WindowManagerFinished{}         -> liftIO exitSuccess
  WindowManagerManageStart _dt wm -> do
    manageCleanup
    manageWindows
    manageSeats
    liftIO $ wmManageFinish wm
  WindowManagerRenderStart _dt wm -> do
    mapSeats seatRender
    mapWindows $ \w -> wSetBorders w.river_window
    liftIO $ wmRenderFinish wm
  WindowManagerWindow _ _wm w -> do
    nd <- liftIO $ river_window_v1_get_node w
    let win = def { river_window = w, node = nd }
    window_listener <- asks _windowListener
    liftIO $ river_window_v1_add_listener w window_listener nullPtr
    modify $ \s -> s { _windows = _windows s ++ [win] }
  WindowManagerOutput _ _ out -> do
    let output = def { river_output = out }
    output_listener <- asks _outputListener
    liftIO $ river_output_v1_add_listener out output_listener nullPtr
    modify $ \s -> s { _outputs = _outputs s ++ [output] }
  WindowManagerSeat _ _ river_seat -> do
    let seat = def { river_seat = river_seat } :: Seat
    seat_listener <- asks _seatListener
    liftIO $ river_seat_v1_add_listener river_seat seat_listener nullPtr
    modify $ \s -> s { _seats = _seats s ++ [seat] }
  _ -> return ()

processOutputEvent :: OutputEvent -> H ()
processOutputEvent e = do
  log' $ "[event|output] " <> tshow e
  case e of
    OutputHandlerRemoved _ o -> modifyOutput o $ \x -> x { removed = True }
    _                        -> return ()

processXkbKeyEvent :: XkbEvent -> H ()
processXkbKeyEvent e = do
  case e of
    XkbKeyPressed dt _b -> do
      bind <- liftIO $ peek (castPtr dt :: Ptr XkbBinding)
      log' $ toText $ printf "[event|xkb] keypress ev=%s action=%s" (show e) (show bind.action)
      modifySeat bind.river_seat $ \s -> s { pending_action = bind.action }
    _ -> log' $ "[event|xkb] " <> tshow e

processPointerEvent :: PointerEvent -> H ()
processPointerEvent e = do
  log' $ "[event|pointer] " <> tshow e
  case e of
    _ -> return ()

processWindowEvent :: WindowEvent -> H ()
processWindowEvent e = do
  log' $ "[event|window] " <> tshow e
  case e of
    WindowClosed _ w -> modifyWindow w $ \s -> s { closed = True }
    WindowDimensions{..} -> modifyWindow we_window $ \s -> s { width = fromIntegral we_width, height = fromIntegral we_height }
    WindowPointerMoveRequested{..} -> modifyWindow we_window $ \s -> s { pointer_move_requested = we_seat }
    WindowPointerResizeRequested{..} -> modifyWindow we_window $ \s -> s { pointer_resize_requested = we_seat, pointer_resize_requested_edges = fromIntegral we_edges }
    _ -> return ()
  evHook <- asks handleEventHook
  evHook (EWindow e)

processSeatEvent :: SeatEvent -> H ()
processSeatEvent e = do
  log' $ "[event|seat] " <> tshow e
  case e of
    SeatRemoved _ seat -> modifySeat seat $ \x -> x { removed = True }
    SeatEventPointerEnter{..} -> modifySeat seat_event_seat $ \s -> s { hovered = seat_event_window }
    SeatEventPointerLeave{..} -> modifySeat seat_event_seat $ \s -> s { hovered = invalidWindow }
    SeatEventWindowInteraction{..} -> modifySeat seat_event_seat $ \s -> s { interacted = seat_event_window }
    SeatEventOpDelta{..} -> modifySeat seat_event_seat $ \s -> s { op_dx = fromIntegral seat_event_dx, op_dy = fromIntegral seat_event_dy }
    SeatEventOpRelease{..} -> modifySeat seat_event_seat $ \s -> s { op_release = True }
    _ -> return ()

-- | Destroy closed windows and removed outputs/seats
manageCleanup :: H ()
manageCleanup = do
  gets _outputs >>= \xs -> do
    xs' <- forM xs $ \out@Output{..} -> if removed then doRemoveOutput river_output else return (Just out)
    modify $ \s -> s { _outputs = catMaybes xs' }
  gets _seats >>= \xs -> do
    xs' <- forM xs $ \seat@Seat{..} -> if removed then doRemoveSeat seat else return (Just seat)
    modify $ \s -> s { _seats = catMaybes xs' }
  gets _windows >>= \xs -> do
    xs' <- forM xs $ \w@Window{..} -> if closed then doRemoveWindow w else return (Just w)
    modify $ \s -> s { _windows = catMaybes xs' }
 where
   doRemoveWindow w@Window{} = do
     gets _seats >>= \xs -> do
       xs' <- forM xs $ \seat' -> do
         let seat = seat' { focused = if focused seat' == w.river_window then invalidWindow else focused seat' }
         if (op_window seat == w.river_window)
            then do
                liftIO $ river_seat_v1_op_end (seat.river_seat)
                return $ seat { op_window = invalidWindow, op = SEAT_OP_NONE }
            else return $ seat
       modify $ \s -> s { _seats = xs' }
     liftIO $ river_window_v1_destroy (w.river_window)
     return Nothing
   doRemoveOutput out = do
     liftIO $ river_output_v1_destroy out
     return Nothing
   doRemoveSeat Seat{..} = do
     forM_ xkb_bindings $ xkb_binding_destroy
     forM_ pointer_bindings $ pointer_binding_destroy
     liftIO $ river_seat_v1_destroy river_seat
     return Nothing

manageWindows :: H ()
manageWindows = do
  newWindows <- gets _windows >>= \xs -> forM xs $ \w -> do
      when w.new $ do
        window_set_position w  0  0
        liftIO $ river_window_v1_propose_dimensions w.river_window 0 0
        wSetBorders w.river_window
      when (w.pointer_move_requested /= invalidSeat) $ do
        seat_pointer_move w.pointer_move_requested w
      when (w.pointer_resize_requested /= invalidSeat) $ do
        seat_pointer_resize w.pointer_resize_requested w w.pointer_resize_requested_edges
      return (w :: Window) { new = False, pointer_move_requested = invalidSeat, pointer_resize_requested = invalidSeat  }
  modify $ \s -> s { _windows = newWindows }

manageSeats :: H ()
manageSeats = do
    newSeats <- gets _seats >>= \xs -> forM xs $ \s@Seat{..} ->
        if new then create_seat_bindings (s :: Seat) { new = False }
               else return s
    modify $ \s -> s { _seats = newSeats }

    gets _seats >>= \xs -> forM_ xs $ \s -> do

      withWindow s.interacted $ \w -> seat_focus s w
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
        let x = (s.op_start_x + s.op_dx)
            y = (s.op_start_y + s.op_dy)
        window_set_position w x y
        debug' $ "seatRender: move window " <> tshow (w, x, y)
    SEAT_OP_RESIZE -> withWindow s.op_window $ \w -> do
      let x = s.op_start_x + (if (s.op_edges .&. fromEnum EdgeLeft) /= 0 then s.op_start_width - w.width else 0)
      let y = s.op_start_y + (if (s.op_edges .&. fromEnum EdgeTop) /= 0 then s.op_start_height - w.height else 0)
      window_set_position w x y
      debug' $ "seatRender: resize window " <> tshow (w, x, y)

seat_focus :: Seat -> Window -> H ()
seat_focus s w = do
  toFocus <- if w.river_window == invalidWindow then
                                          gets _windows >>= \xs -> case xs of
                                                                     x : _ -> return x
                                                                     _     -> return w
                                          else return w

  if toFocus.river_window /= s.focused then
                                 do
                                      let w = toFocus.river_window
                                      when (w /= invalidWindow) $ do
                                        liftIO $ river_seat_v1_focus_window s.river_seat w
                                        liftIO $ river_node_v1_place_top toFocus.node
      else
        liftIO $ river_seat_v1_clear_focus s.river_seat

  modifySeat s.river_seat $ \s -> s { focused = toFocus.river_window }

seat_pointer_move :: RiverSeat -> Window -> H ()
seat_pointer_move sid w = withSeat sid $ \s -> do
  log' $ "[seat_pointer_move] " <> tshow (sid, w)
  seat_focus s w
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
  seat_focus s w
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

seat_action :: Seat -> Action -> H ()
seat_action _ action = do
  log' $ "[seat_action] " <> tshow action
  case action of
    ACTION_NONE -> return ()
    ACTION_FOCUS_NEXT -> do
      log' "ACTION FOCUS NEXT not implemented"
    _           -> log' "unkown action"

-- * Key Binds

xkb_binding_create :: Seat -> Modifiers -> KeySym -> Action -> H (Maybe (Ptr XkbBinding))
xkb_binding_create seat mods keysym action = do
  xkbBindsV <- gets _xkbBinds
  empty <- liftIO $ isEmptyMVar xkbBindsV
  if empty
     then do log' "xkb: cannot make bindings, xkb_bindings_1 not available"
             return Nothing
     else liftIO (readMVar xkbBindsV) >>= go
    where
      go xkb_bindings = do
        log' $ "[keys] binding key: " <> tshow (mods, keysym, action)
        let river_seat = seat.river_seat
        xkb_binding <- liftIO $ river_xkb_bindings_v1_get_xkb_binding xkb_bindings seat.river_seat keysym mods
        xkb_binding_listener <- asks _xkbBindingListener
        res <- liftIO $ river_xkb_binding_v1_add_listener xkb_binding xkb_binding_listener $ XkbBinding{..}
        liftIO $ river_xkb_binding_v1_enable xkb_binding
        return $ Just res

xkb_binding_destroy :: Ptr XkbBinding -> H ()
xkb_binding_destroy p = do
  _ <- liftIO $ peek p
  log' "xkb_binding_destroy: not yet implemented"

-- * Pointer Binds

pointer_binding_create :: Seat -> Modifiers -> Button -> Action -> H (Ptr PointerBinding)
pointer_binding_create seat mods btn action = do
    log' $ "[pointer] binding button: " <> tshow (mods, btn, action)
    let river_seat = seat.river_seat
    pointer_binding <- liftIO $ river_seat_v1_get_pointer_binding river_seat btn mods
    let pbind = PointerBinding {..}
    pointer_binding_listener <- asks _pointerBindingListener
    res <- liftIO $ river_pointer_binding_v1_add_listener pointer_binding pointer_binding_listener pbind
    liftIO $ river_pointer_binding_v1_enable pointer_binding
    return res

pointer_binding_destroy :: Ptr PointerBinding -> H ()
pointer_binding_destroy p = do
  log' "pointer_binding_destroy: not yet implemented"
