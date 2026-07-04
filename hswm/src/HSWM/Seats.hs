{-# OPTIONS_GHC -Wno-ambiguous-fields #-}

-- |
-- Module      : HSWM.Seats
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Seat management
module HSWM.Seats where

import           HSWM.Core
import           HSWM.Operations
import qualified HSWM.StackSet as W
import           HSWM.Utils
import           HSWM.Wayland

import qualified River as R
import qualified WL.Client as WL
import qualified WL.ExtIdleNotify.Staging.V1.Client as Ext

import qualified Data.List as L

-- | New seat added
added :: RiverSeat -> H ()
added rs = do
  -- Add river_seat listener
  withObject $ WL.listenerAdd_ rs
  -- Add layer_shell_seat listener
  lss <- withObject $ flip R.riverLayerShellGetSeat rs
  withObject $ \l -> WL.listenerAdd lss l rs
  -- Add xkb_bindings_seat listener
  xbs <- withObject $ flip R.riverXkbBindingsGetSeat rs
  withObject $ \l -> WL.listenerAdd xbs l rs
  let seat = def
        & _new .~ True
        & riverSeat .~ rs
        & riverLayerShellSeat .~ lss
        & xkbBindingsSeat .~ xbs
  runInHS $ seatList %= (<> [seat])

deleteRemovedSeat :: Seat -> HS ()
deleteRemovedSeat s = do
  seatList %= L.filter ((/= s.river_seat) . view riverSeat)
  forM_ s.xkb_bindings destroyXKBBinding
  forM_ s.pointer_bindings destroyPointerBinding
  io $ R.objectDestroy s.xkb_bindings_seat
  io $ R.objectDestroy s.river_layer_shell_seat
  io $ R.objectDestroy s.wl_seat
  io $ R.objectDestroy s.river_seat

modifySeat' :: Ptr Void -> (Seat -> Seat) -> HS ()
modifySeat' ud = modifySeat (R.RiverSeat $ castPtr ud)

-- * Events

handleEvent :: R.RiverSeatEvent -> H ()
handleEvent = \case
    R.RiverSeatPointerEnter _ seat window ->
      runInHS $ withSeat_ seat $ \s -> do
          logInfo $ "seat: pending pointer focus" :# [ "window" .= show window, "position" .= s.position ]
          modifySeat seat $ hovered .~ window
            &+ pendingPointerEnter ?~ (window, s.position)

    R.RiverSeatPointerLeave _ seat ->
      runInHS $ modifySeat seat $ hovered .~ def &+ pendingPointerEnter .~ Nothing

    R.RiverSeatPointerPosition _ seat x y ->
      runInHS $ modifySeat seat $ \s -> s {position = Position x y}

    R.RiverSeatWindowInteraction _ seat window ->
      runInHS $ modifySeat seat $ \s -> s {interacted = window}

    R.RiverSeatOpDelta _ seat dx dy ->
      runInHS $ modifySeat seat $ \s -> s {op_dx = fromIntegral dx, op_dy = fromIntegral dy}

    R.RiverSeatOpRelease _ seat ->
      runInHS $ modifySeat seat $ \s -> s {op_release = True}

    R.RiverSeatWlSeat _ seat name -> do
      wlseat <- bindGlobalName @WL.Seat name Nothing
      withObject $ \l -> WL.listenerAdd wlseat l seat
      -- Register idle notifier
      idleN <- withObject $ \idleNotify -> Ext.idleNotifierGetIdleNotification idleNotify (10 * 60 * 1000) wlseat
      withObject $ \l -> WL.listenerAdd idleN l seat

    R.RiverSeatRemoved _ seat ->
      runInHS $ withSeat_ seat deleteRemovedSeat

    _ -> return ()

handleWlSeatEvent :: WL.SeatEvent -> H ()
handleWlSeatEvent e = case e of
  WL.SeatName ud wls nm -> runInHS $ modifySeat' ud $ _name .~ nm &+ wlSeat .~ wls

  WL.SeatCapabilities ud s sc -> do
    runInHS $ modifySeat' ud $ caps .~ sc
    forM_ (WL.parseSeatCapabilities sc) $ \case
      WL.SeatCapabilityKeyboard -> do
        wlkeyboard <- WL.seatGetKeyboard s
        withObject $ WL.listenerAdd_ wlkeyboard
        logDebug $ "seat: get keyboard" :# [ "seat" .= tshow s, "keyboard" .= tshow wlkeyboard ]

      WL.SeatCapabilityPointer -> do
        wlpointer <- WL.seatGetPointer s
        withObject $ WL.listenerAdd_ wlpointer
        logDebug $ "seat: got pointer" :# [ "seat" .= tshow s, "pointer" .= tshow wlpointer ]

      WL.SeatCapabilityTouch -> do
        logDebug $ "seat: got touch" :# [ "seat" .= tshow s ]

      _ -> return ()

handleLayerShellSeat :: R.RiverLayerShellSeatEvent -> H ()
handleLayerShellSeat e = case e of
  -- layer shell surface has exclusive focus
  R.RiverLayerShellSeatFocusExclusive ud _ ->
    runInHS $ modifySeat' ud $ currentFocus %~ SFocusLayerShell True

  -- layer shell surface wants non-exclusive focus
  -- A layer shell surface will be given non-exclusive keyboard focus at the end
  -- of the manage sequence in which this event is sent. The window manager may want
  -- to update window decorations or similar to indicate that no window is focused.
  R.RiverLayerShellSeatFocusNonExclusive ud _ ->
    runInHS $ modifySeat' ud $ currentFocus %~ SFocusLayerShell False

  -- no layer shell surface has focus
  -- No layer shell surface will have keyboard focus at the end
  -- of the manage sequence in which this event is sent. The window
  -- manager may want to return focus to whichever window last had focus, for example.
  R.RiverLayerShellSeatFocusNone ud _ ->
    runInHS $ modifySeat' ud $ currentFocus .~ SFocusNone

-- | Handle key bind events.
--
-- The userdata should be a @StablePtr (XkbBinding (SomeAction H))@.
handleXkbBindingEvent :: R.RiverXkbBindingEvent -> H ()
handleXkbBindingEvent = \case
    R.RiverXkbBindingPressed    dt _ -> getBindingRef dt >>= execXkbBinding
    R.RiverXkbBindingReleased   dt _ -> getBindingRef dt >>= cancelXkbBinding
    R.RiverXkbBindingStopRepeat dt _ -> getBindingRef dt >>= cancelXkbBinding
  where
    getBindingRef dt = io $ deRefStablePtr (castPtrToStablePtr $ castPtr dt :: StablePtr (XkbBinding (SomeAction H)))

-- Unhandled submap key
handleXkbBindingsSeatEvent :: R.RiverXkbBindingsSeatEvent -> H ()
handleXkbBindingsSeatEvent = \case
  R.RiverXkbBindingsSeatAteUnboundKey dt _ -> runInHS $ modifySeat' dt $ pendingAction .~ S_SUBMAP_CANCEL

handlePointerEvent :: R.RiverPointerBindingEvent -> H ()
handlePointerEvent = \case
    R.RiverPointerBindingPressed dt _ -> do
      xb <- getBindingRef dt
      userCodeDef () $ runner xb.boundAction
    _ -> return ()
  where
    getBindingRef dt = io $ deRefStablePtr (castPtrToStablePtr $ castPtr dt :: StablePtr (PointerBinding (SomeAction H)))

---------------------------------------------------------

-- * Manage

-- XXX: also set XCURSOR_THEME= ? XCURSOR_PATH= ?
setXCursorTheme :: (MonadIO m, MonadReader HConf m) => RiverSeat -> m ()
setXCursorTheme rs = do
  theme <- view (config . cursorTheme)
  sz <- view (config . cursorSize)
  case (theme, sz) of
    ("" , _) | sz > 1 -> R.riverSeatSetXcursorTheme rs Nothing sz
    (_:_, _) | sz > 1 -> R.riverSeatSetXcursorTheme rs (Just theme) sz
    _                 -> pure ()

manage :: H ()
manage = runInHS $ use seatList >>= mapM_ manage1

-- | Manage SeatOp state
manage1 :: Seat -> HS ()
manage1 s = do
  -- Handle new seats
  when s.new $ do
    createSeatBindings s.river_seat
    setXCursorTheme s.river_seat
    doS $ _new .~ False
  -- Perform pending actions
  managePendingAction s.pending_action >> manageActiveOp
  doS $ suppressChangeFocus %~ max 0 . subtract 1
  where
    doS = modifySeat s.river_seat

    managePendingAction = \case
      S_NONE -> do
        case s.pendingPointerEnter of
          Just (rw, pos) -> do
            doS $ \x -> x { pendingPointerEnter = Nothing }
            when (pos /= s.position) $ do
                logInfo "seat: focus changed by pointer"
                doS $ \x -> x { focused = rw }
                R.riverSeatFocusWindow s.river_seat rw
                windows $ W.focusWindow rw
          _ -> pure ()
        case s.currentFocus of
          SFocusNone -> do
            withWindow_ s.focused $ \_ -> R.riverSeatFocusWindow s.river_seat s.focused
            doS $ \x -> x { currentFocus = SFocusWindow s.focused }
          _ -> pure ()

      S_SUBMAP_NEXT_KEY action subkeys -> do
        ensureNextKeyEaten s
        -- Disable previous keymap keys + activate sub-keymap keys + store submap state
        io $ mapM_ (deRefStablePtr >=> R.riverXkbBindingDisable . (.riverXkbBinding)) $
            maybe s.xkb_bindings snd s.submap_pending
        io $ forM_ subkeys $ deRefStablePtr >=> R.riverXkbBindingEnable . (.riverXkbBinding)
        doS $ \s' -> s' {submap_pending = Just (action, subkeys), pending_action = S_NONE}

      S_SUBMAP_CANCEL -> do
        -- Disable sub-keymap keys + enable main keymap keys + reset state
        whenJust s.submap_pending $ \(_, subkeys) ->
          io $ forM_ subkeys $ deRefStablePtr >=> R.riverXkbBindingDisable . (.riverXkbBinding)
        io $ forM_ s.xkb_bindings $ deRefStablePtr >=> R.riverXkbBindingEnable . (.riverXkbBinding)
        doS $ \s' -> s' {submap_pending = Nothing, pending_action = S_NONE}

      S_START_OP SEAT_OP_MOVE -> do
        mw <- withWindowSet $ return . W.peek
        case mw of
          Just w -> do
            doS $ \s' -> s' {pending_action = S_NONE}
            withWindow_ w $ seatPointerMove s.river_seat
          Nothing -> return ()

      S_START_OP SEAT_OP_RESIZE -> do
        mw <- withWindowSet $ maybe (pure Nothing) lookupWindow . W.peek
        case mw of
          Just w -> do
            doS $ \s' -> s' {pending_action = S_NONE}
            seatPointerResize s.river_seat w $ calcResizeEdges w s.position
          Nothing -> return ()

      S_START_OP SEAT_OP_NONE -> return () -- ??

    manageActiveOp = do
      case s.op of
        SEAT_OP_NONE -> return ()
        SEAT_OP_MOVE ->
          when s.op_release $ do
            R.riverSeatOpEnd s.river_seat
            float s.op_window
            modifySeat s.river_seat $ \x -> x {op = SEAT_OP_NONE, op_window = def}
        SEAT_OP_RESIZE -> do
          when s.op_release $ do
            R.riverWindowInformResizeEnd s.op_window
            R.riverSeatOpEnd s.river_seat
            float s.op_window
            modifySeat s.river_seat $ \x -> x {op = SEAT_OP_NONE, op_window = def}
          withWindow_ s.op_window $ \w -> do
            let rw =
                  s.op_start_width
                    - (if (s.op_edges .&. fromIntegral ((.unwrap) R.EdgeLeft)) /= 0 then s.op_dx else 0)
                    + (if (s.op_edges .&. fromIntegral ((.unwrap) R.EdgeRight)) /= 0 then s.op_dx else 0)
            let rh =
                  s.op_start_height
                    - (if (s.op_edges .&. fromIntegral ((.unwrap) R.EdgeTop)) /= 0 then s.op_dy else 0)
                    + (if (s.op_edges .&. fromIntegral ((.unwrap) R.EdgeBottom)) /= 0 then s.op_dy else 0)
            R.riverWindowProposeDimensions w.river_window (max rw 1) (max rh 1)
      when s.op_release $
        modifySeat s.river_seat $ \x -> x {op_release = False}

seatFocus :: Seat -> Window -> HS ()
seatFocus s w = when (w.river_window /= def) $ do
  when (w.river_window /= s.focused) $ setFocus w.river_window -- clearFocus
  modifySeat s.river_seat $ \s' -> s' {focused = w.river_window}
  where
    setFocus rw = when (rw /= def) $ R.riverSeatFocusWindow s.river_seat rw

-- | /manage sequence/
seatClearFocus :: Seat -> H ()
seatClearFocus s = R.riverSeatClearFocus s.river_seat

-- | Do SEAT_OP_MOVE
seatPointerMove :: RiverSeat -> Window -> HS ()
seatPointerMove sid w = do
  logInfo $ "seat: pointer move" :# [ "seat" .= show sid, "window" .= show w ]
  withSeat_ sid $ \s -> seatFocus s w
  R.riverNodePlaceTop w.node
  R.riverSeatOpStartPointer sid
  modifySeat sid $ \s ->
    s
      { op = SEAT_OP_MOVE,
        op_window = w.river_window,
        op_start_x = w^._x,
        op_start_y = w^._y,
        op_dx = 0,
        op_dy = 0
      }

-- | Do SEAT_OP_RESIZE
seatPointerResize :: RiverSeat -> Window -> Int32 -> HS ()
seatPointerResize sid w edges = do
  withSeat_ sid $ \s -> do
    logInfo $ "seat: pointer resize" :# [ "seat" .= show sid, "window" .= show w, "edges" .= edges ]
    seatFocus s w
    R.riverNodePlaceTop w.node
    R.riverWindowInformResizeStart w.river_window
    R.riverSeatOpStartPointer s.river_seat
  modifySeat sid $ \s ->
    s
      { op = SEAT_OP_RESIZE,
        op_window = w.river_window,
        op_edges = edges,
        op_start_x = w^._x,
        op_start_y = w^._y,
        op_start_width = fi $ w^.width,
        op_start_height = fi $ w^.height,
        op_dx = 0,
        op_dy = 0
      }

---------------------------------------------------------

-- * Render

render :: H ()
render = runInHS $ mapSeats render1

render1 :: Seat -> HS ()
render1 s = do
  case s.op of
    SEAT_OP_NONE -> return ()
    SEAT_OP_MOVE -> do
      withWindow_ s.op_window $ \w -> do
        let x = s.op_start_x + s.op_dx
            y = s.op_start_y + s.op_dy
        setWindowPosition w x y
    SEAT_OP_RESIZE -> withWindow_ s.op_window $ \w -> do
      let x = s.op_start_x + (if (s.op_edges .&. fi ((.unwrap) R.EdgeLeft)) /= 0 then s.op_start_width - fi w.size.width else 0)
      let y = s.op_start_y + (if (s.op_edges .&. fi ((.unwrap) R.EdgeTop)) /= 0 then s.op_start_height - fi w.size.height else 0)
      setWindowPosition w x y

----------------------------------------------------------

-- * Xkb and Pointer bindings

createSeatBindings :: RiverSeat -> HS ()
createSeatBindings rs = do
  binds     <- getObject
  kbdListen <- getObject
  pbListen  <- getObject
  myMod     <- view (config . defaultModMask) <&> resolveModMask 0
  pBinds    <- view (config . pointerBindings) >>= resolvePointerBinds myMod
  pPtrs     <- forM pBinds $ \((m, b), a) -> newPointerBinding pbListen rs m b a
  kPtrs     <- createXkbBindings (binds, kbdListen, rs) actionSubmap =<< view (config . keyBindings)
  modifySeat rs $ \s -> s & xkbBindings <>~ kPtrs & pointerBindings <>~ pPtrs
  where
    resolvePointerBinds mdef = mapM $ \((m, k), a) -> return ((resolveModMask mdef m, k), a)

-- |
-- Ensure that the next non-modifier key press and corresponding release events
-- for this seat are not sent to the currently focused surface.
--
-- If the next non-modifier key press triggers a binding, the pressed/released
-- events are sent to the river_xkb_binding_v1 object as usual.
--
-- If the next non-modifier key press does not trigger a binding,
-- the ate_unbound_key event is sent instead.
--
-- /manage sequence/
ensureNextKeyEaten, cancelEnsureNextKeyEaten :: MonadIO m => Seat -> m ()
ensureNextKeyEaten s = R.riverXkbBindingsSeatEnsureNextKeyEaten s.xkb_bindings_seat
cancelEnsureNextKeyEaten s = R.riverXkbBindingsSeatCancelEnsureNextKeyEaten s.xkb_bindings_seat

cancelXkbBinding :: XkbBinding (SomeAction H) -> H ()
cancelXkbBinding xb = tryTakeMVar xb.runningVar >>= maybe (return ()) cancel

execXkbBinding :: XkbBinding (SomeAction H) -> H ()
execXkbBinding xb = local (\r -> r {thisSeat = Just rs}) $ do
  ms <- runInHS $ lookupSeat rs
  whenJust ms $ \s -> case (s.submap_pending, actionSubmap @H xb.boundAction) of
    (Nothing, [])        -> doAction
    (Nothing, _)         -> next (S_SUBMAP_NEXT_KEY xb.boundAction xb.boundSubmap) -- Submap binding activated
    (Just _, [])         -> next S_SUBMAP_CANCEL >> void (async execute) -- Submap action + reset
    (Just (_, _), _ : _) -> next (S_SUBMAP_NEXT_KEY xb.boundAction xb.boundSubmap) -- Submap binding activated (lvl++)
  where
    doAction = do
      tryTakeMVar xb.runningVar >>= maybe (return ()) cancel
      if xb.autorepeat
         then do logDebug "xkbbind: autorepeat on"
                 r <- async $ forever $ execute >> threadDelay (1000 * 1300)
                 putMVar xb.runningVar r
         else async execute >>= putMVar xb.runningVar
    rs          = xb^.riverSeat
    execute     = void . userCode $ runner xb.boundAction
    next action = runInHS $ modifySeat rs $ \s' -> s' {pending_action = action }

-- * Utilities

calcResizeEdges :: Window -> Position -> Int32
calcResizeEdges w (Position sx sy) = (if closerL then 4 else 8) .|. (if closerU then 1 else 2)
  where
    closerL = (sx - w.position.x) < (w.position.x + fi w.size.width - sx)
    closerU = (sy - w.position.y) < (w.position.y + fi w.size.height - sy)
