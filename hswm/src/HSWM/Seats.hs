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

import HSWM.Core
import HSWM.Operations
import HSWM.StackSet qualified as W
import HSWM.Wayland

import River qualified as R
import WL.Client qualified as WL
import WL.ExtIdleNotify.Staging.V1.Client qualified as EXT_IN

import Data.List qualified as L
import Data.Map qualified as M

bindsToList :: XkbBindingMap2 (SomeAction H) -> [StablePtr (XkbBinding' Both (SomeAction H))]
bindsToList = (^.. each . to (snd . (.unBoth)))

-- * Event handling

handleEvent :: R.RiverSeatEvent -> H ()
handleEvent = \case
  R.RiverSeatWlSeat _ seat name -> hasWlSeat seat name
  R.RiverSeatPointerEnter _ seat window -> runInHS $ withSeat_ seat $ \s -> modifySeat seat $ hovered .~ window &+ pendingPointerEnter ?~ (window, s.position)
  R.RiverSeatPointerLeave _ seat -> runInHS $ modifySeat seat $ hovered .~ def &+ pendingPointerEnter .~ Nothing
  R.RiverSeatPointerPosition _ seat x y -> runInHS $ modifySeat seat $ position .~ Position x y
  R.RiverSeatWindowInteraction _ seat window -> runInHS $ modifySeat seat $ interacted .~ window
  R.RiverSeatOpDelta _ seat dx dy -> runInHS $ modifySeat seat $ opDx .~ fi dx &+ opDy .~ fi dy
  R.RiverSeatOpRelease _ seat -> runInHS $ modifySeat seat $ opRelease .~ True
  R.RiverSeatRemoved _ seat -> runInHS $ withSeat_ seat deleteRemovedSeat
  -- unhandled
  R.RiverSeatShellSurfaceInteraction _ seat ss -> logError $ "shell surface interaction" :# ["seat" .= show seat, "shell-surface" .= show ss]
  _ -> return () -- TODO touch events

handleWlSeatEvent :: WL.SeatEvent -> H ()
handleWlSeatEvent = \case
  WL.SeatName ud _ name -> runInHS $ modifySeat' ud $ _name .~ name
  WL.SeatCapabilities ud wls seatCaps -> do
    let individual = WL.parseSeatCapabilities seatCaps
    upds <- forM individual $ \case
      WL.SeatCapabilityKeyboard -> do
        wlKbd <- WL.seatGetKeyboard wls
        addGlobalListener_ wlKbd
        logDebug $ "Seat has capability: keyboard" :# ["wl_seat" .= tshow wls, "wl_keyboard" .= tshow wlKbd]
        return $ wlKeyboard .~ wlKbd
      WL.SeatCapabilityPointer -> do
        wlPtr <- WL.seatGetPointer wls
        addGlobalListener_ wlPtr
        logDebug $ "Seat has capability: pointer" :# ["wl_seat" .= tshow wls, "wl_pointer" .= tshow wlPtr]
        return $ wlPointer .~ wlPtr
      WL.SeatCapabilityTouch -> do
        wltch <- WL.seatGetTouch wls
        addGlobalListener_ wltch
        logDebug $ "Seat has capabality: touch" :# ["wl_seat" .= tshow wls]
        return $ wlTouch .~ wltch
      _ -> return id
    runInHS $ modifySeat' ud $ foldl' (.) (caps .~ seatCaps) upds

-- |
-- Possible states:
--
-- - layer shell surface has exclusive focus
--
-- - layer shell surface wants non-exclusive focus
--
--    A layer shell surface will be given non-exclusive keyboard focus at the end
--    of the manage sequence in which this event is sent. The window manager may want
--    to update window decorations or similar to indicate that no window is focused.
--
-- - no layer shell surface has focus
--
--    No layer shell surface will have keyboard focus at the end
--    of the manage sequence in which this event is sent. The window
--    manager may want to return focus to whichever window last had focus, for example.
handleLayerShellSeat :: R.RiverLayerShellSeatEvent -> H ()
handleLayerShellSeat = \case
  R.RiverLayerShellSeatFocusExclusive ud _ -> runInHS $ modifySeat' ud $ currentFocus %~ SFocusLayerShell True
  R.RiverLayerShellSeatFocusNonExclusive ud _ -> runInHS $ modifySeat' ud $ currentFocus %~ SFocusLayerShell False
  R.RiverLayerShellSeatFocusNone ud _ -> runInHS $ modifySeat' ud $ currentFocus .~ SFocusNone

-- | Handle key bind events.
--
-- The userdata should be a @StablePtr (XkbBinding (SomeAction H))@.
handleXkbBindingEvent :: R.RiverXkbBindingEvent -> H ()
handleXkbBindingEvent = \case
  R.RiverXkbBindingPressed dt _ -> getBindingRef dt >>= execXkbBinding
  R.RiverXkbBindingReleased dt _ -> getBindingRef dt >> cancelRepeat
  R.RiverXkbBindingStopRepeat dt _ -> getBindingRef dt >> cancelRepeat
  where
    getBindingRef dt = io $ deRefStablePtr (castPtrToStablePtr $ castPtr dt :: StablePtr (XkbBinding' Both (SomeAction H)))

-- | Unhandled submap keys.
--
-- User data is the 'RiverSeat'.
handleXkbBindingsSeatEvent :: R.RiverXkbBindingsSeatEvent -> H ()
handleXkbBindingsSeatEvent = \case
  R.RiverXkbBindingsSeatAteUnboundKey dt _ -> do
    -- Run default action if defined
    mseat <- runInHS $ lookupSeat $ R.RiverSeat $ castPtr dt
    whenJust mseat $ \s ->
      whenJust s.submap_pending $ \(_, _, subdef) ->
        whenJust subdef $ void . async . runner
    runInHS $ modifySeat' dt $ pendingAction .~ S_SUBMAP_CANCEL
  R.RiverXkbBindingsSeatModifiersUpdate _dt _ modsOld modsNew -> return () -- TODO take advantage of this event

-- | Pointer events.
handlePointerEvent :: R.RiverPointerBindingEvent -> H ()
handlePointerEvent = \case
  R.RiverPointerBindingPressed dt _ -> getBindingRef dt >>= execPointerBinding
  _ -> return ()
  where
    getBindingRef dt = io $ deRefStablePtr (castPtrToStablePtr $ castPtr dt :: StablePtr (PointerBinding (SomeAction H)))

-- * Manage

manage :: H ()
manage = runInHS $ use seatList >>= mapM_ manage1

-- | Manage SeatOp state
manage1 :: Seat -> HS ()
manage1 s = do
  -- Handle new seats
  when s.new $ do
    createSeatBindings s.river_seat
    setXCursorTheme s.river_seat
    modifySeat s $ _new .~ False

  -- Perform pending actions
  managePendingAction s s.pending_action >> manageActiveOp s

  modifySeat s $ suppressChangeFocus %~ max 0 . subtract 1

-- | Manage
--
--  - S_SUBMAP_NEXT_KEY
--
--  - S_SUBMAP_CANCEL
--
--  - S_START_OP
managePendingAction :: Seat -> SeatAction H -> HS ()
managePendingAction s = \case
  S_NONE -> do
    case s.pendingPointerEnter of
      Just (rw, pos) -> do
        modifySeat s $ \x -> x{pendingPointerEnter = Nothing}
        when (pos /= s.position) $ do
          -- logDebug "seat: focus changed by pointer"
          modifySeat s $ \x -> x{focused = rw}
          R.riverSeatFocusWindow s.river_seat rw
          windows $ W.focusWindow rw
      _ -> pure ()
    case s.currentFocus of
      SFocusNone -> do
        withWindow_ s.focused $ \_ -> R.riverSeatFocusWindow s.river_seat s.focused
        modifySeat s $ \x -> x{currentFocus = SFocusWindow s.focused}
      _ -> pure ()
  S_SUBMAP_NEXT_KEY action subkeys subdef -> do
    ensureNextKeyEaten s
    -- Disable previous keymap keys + activate sub-keymap keys + store submap state
    io $
      mapM_ (deRefStablePtr >=> R.riverXkbBindingDisable . (.riverXkbBinding)) $
        maybe (s.xkb_bindings ^.. each . to (snd . (.unBoth))) ((^.. each . to (snd . (.unBoth))) . view _2) s.submap_pending
    -- Enable submap keys
    io $ forM_ (bindsToList subkeys) $ deRefStablePtr >=> R.riverXkbBindingEnable . (.riverXkbBinding)
    modifySeat s $ \s' ->
      s'
        { submap_pending = Just (action, subkeys, subdef)
        , pending_action = S_NONE
        }
  S_SUBMAP_CANCEL -> do
    -- Disable sub-keymap keys + enable main keymap keys + reset state
    whenJust s.submap_pending $ \(_, subkeys, _) ->
      io $ forM_ (subkeys ^.. each . to (.unBoth) . _2) $ deRefStablePtr >=> R.riverXkbBindingDisable . (.riverXkbBinding)
    -- Enable base bindings
    io $ forM_ (s.xkb_bindings ^.. each . to (.unBoth) . _2) $ deRefStablePtr >=> R.riverXkbBindingEnable . (.riverXkbBinding)
    modifySeat s $ \s' -> s'{submap_pending = Nothing, pending_action = S_NONE}
  S_START_OP SEAT_OP_MOVE -> do
    mw <- withWindowSet $ return . W.peek
    case mw of
      Just w -> do
        modifySeat s $ \s' -> s'{pending_action = S_NONE}
        withWindow_ w $ seatPointerMove s.river_seat
      Nothing -> return ()
  S_START_OP SEAT_OP_RESIZE -> do
    mw <- withWindowSet $ maybe (pure Nothing) lookupWindow . W.peek
    case mw of
      Just w -> do
        modifySeat s $ \s' -> s'{pending_action = S_NONE}
        seatPointerResize s.river_seat w $ calcResizeEdges w s.position
      Nothing -> return ()
  S_START_OP SEAT_OP_NONE -> return () -- ??

-- | Manage pointer-move, pointer-resize operations.
manageActiveOp :: Seat -> HS ()
manageActiveOp s = do
  case s.op of
    SEAT_OP_NONE -> return ()
    SEAT_OP_MOVE ->
      when s.op_release $ do
        R.riverSeatOpEnd s.river_seat
        float s.op_window
        modifySeat s.river_seat $ \x -> x{op = SEAT_OP_NONE, op_window = def}
    SEAT_OP_RESIZE -> do
      when s.op_release $ do
        R.riverWindowInformResizeEnd s.op_window
        R.riverSeatOpEnd s.river_seat
        float s.op_window
        modifySeat s.river_seat $ \x -> x{op = SEAT_OP_NONE, op_window = def}
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
    modifySeat s.river_seat $
      \x -> x{op_release = False}

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

-- * Adding a new seat

-- | New seat added
--
-- - Add river_seat listener
-- - Add layer_shell_seat listener
-- - Add xkb_bindings_seat listener
added :: RiverSeat -> H ()
added rs = do
  lss <- withObject $ flip R.riverLayerShellGetSeat rs
  xbs <- withObject $ flip R.riverXkbBindingsGetSeat rs
  withObject $ WL.listenerAdd_ rs
  withObject $ \l -> WL.listenerAdd lss l rs
  withObject $ \l -> WL.listenerAdd xbs l rs
  -- watch for modifier state change
  R.riverXkbBindingsSeatModifiersWatch xbs $
    R.RiverSeatModifiersCtrl
      <> R.RiverSeatModifiersShift
      <> R.RiverSeatModifiersMod1
      <> R.RiverSeatModifiersMod3
      <> R.RiverSeatModifiersMod4
      <> R.RiverSeatModifiersMod5
  let seat =
        def
          & _new
            .~ True
          & riverSeat
            .~ rs
          & riverLayerShellSeat
            .~ lss
          & xkbBindingsSeat
            .~ xbs
  runInHS $ seatList %= (<> [seat])

-- | Bind the Wl_seat interface of a river_seat as well.
--
-- Currently this will also request idle notifications via ext-idle-notify-v1.
hasWlSeat :: RiverSeat -> WL.ObjectName -> H ()
hasWlSeat seat name = do
  wls <- globalBindAndListen @WL.Seat False Nothing (Just seat) Nothing (Just name)
  idlno <- objectCommand EXT_IN.idleNotifierGetIdleNotification >>= \f -> f (10 * 60 * 1000) wls
  addGlobalListener idlno (Just seat)
  runInHS $ modifySeat seat $ wlSeat .~ wls &+ idleNotification .~ idlno

-- * Removing a seat from state

deleteRemovedSeat :: Seat -> HS ()
deleteRemovedSeat s = do
  seatList %= L.filter ((/= s.river_seat) . view riverSeat)
  forM_ (s.xkb_bindings ^.. each) destroyXKBBinding
  forM_ s.pointer_bindings destroyPointerBinding
  R.objectDestroy s.xkb_bindings_seat
  R.objectDestroy s.river_layer_shell_seat
  R.objectDestroy s.idleNotification
  R.objectDestroy s.wlKeyboard
  R.objectDestroy s.wlPointer
  R.objectDestroy s.wlTouch
  R.objectDestroy s.wl_seat
  R.objectDestroy s.river_seat

-- * Seat management

seatFocus :: Seat -> Window -> HS ()
seatFocus s w = when (w.river_window /= def) $ do
  when (w.river_window /= s.focused) $ setFocus w.river_window -- clearFocus
  modifySeat s.river_seat $ \s' -> s'{focused = w.river_window}
  where
    setFocus rw = when (rw /= def) $ R.riverSeatFocusWindow s.river_seat rw

-- | /needs to be called in manage sequence/
seatClearFocus :: (SomeSeat a) => a -> H ()
seatClearFocus s = R.riverSeatClearFocus (s ^. riverId)

-- | Do SEAT_OP_MOVE
seatPointerMove :: RiverSeat -> Window -> HS ()
seatPointerMove sid w = do
  logInfo $ "seat: pointer move" :# ["seat" .= show sid, "window" .= show w]
  withSeat_ sid $ \s -> seatFocus s w
  R.riverNodePlaceTop w.node
  R.riverSeatOpStartPointer sid
  modifySeat sid $ \s ->
    s
      { op = SEAT_OP_MOVE
      , op_window = w.river_window
      , op_start_x = w ^. _x
      , op_start_y = w ^. _y
      , op_dx = 0
      , op_dy = 0
      }

-- | Do SEAT_OP_RESIZE
seatPointerResize :: RiverSeat -> Window -> Int32 -> HS ()
seatPointerResize sid w edges = do
  withSeat_ sid $ \s -> do
    logInfo $ "seat: pointer resize" :# ["seat" .= show sid, "window" .= show w, "edges" .= edges]
    seatFocus s w
    R.riverNodePlaceTop w.node
    R.riverWindowInformResizeStart w.river_window
    R.riverSeatOpStartPointer s.river_seat
  modifySeat sid $ \s ->
    s
      { op = SEAT_OP_RESIZE
      , op_window = w.river_window
      , op_edges = edges
      , op_start_x = w ^. _x
      , op_start_y = w ^. _y
      , op_start_width = fi $ w ^. width
      , op_start_height = fi $ w ^. height
      , op_dx = 0
      , op_dy = 0
      }

-- | XXX: also set XCURSOR_THEME= ? XCURSOR_PATH= ?
setXCursorTheme :: (MonadIO m, MonadReader HConf m) => RiverSeat -> m ()
setXCursorTheme rs = do
  theme <- view (config . cursorTheme)
  sz <- view (config . cursorSize)
  case (theme, sz) of
    ("", _) | sz > 1 -> R.riverSeatSetXcursorTheme rs Nothing sz
    (_ : _, _) | sz > 1 -> R.riverSeatSetXcursorTheme rs (Just theme) sz
    _ -> pure ()

-- * Keyboard and Pointer bindings

createSeatBindings :: RiverSeat -> HS ()
createSeatBindings rs = do
  binds <- getObject
  kbdListen <- getObject
  pbListen <- getObject
  myMod <- view (config . defaultModMask) <&> resolveModMask 0
  pPtrs <- view (config . pointerBindings) >>= resolvePointerBinds myMod pbListen
  kPtrs <-
    view (config . keyBindings)
      >>= createXkbBindings (binds, kbdListen, rs) actionSubmap (onHoldRepeat (Proxy @H))
  modifySeat rs $ \s -> s & xkbBindings <>~ kPtrs & pointerBindings <>~ pPtrs
  where
    resolvePointerBinds mdef pbListen xs = do
      r <- forM xs $ \((m, k), a) -> do
        let mods = resolveModMask mdef m
        (PKey mods k,) <$> newPointerBinding pbListen rs mods k a
      return $ M.fromList r

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
ensureNextKeyEaten, cancelEnsureNextKeyEaten :: (MonadIO m) => Seat -> m ()
ensureNextKeyEaten s = R.riverXkbBindingsSeatEnsureNextKeyEaten s.xkb_bindings_seat
cancelEnsureNextKeyEaten s = R.riverXkbBindingsSeatCancelEnsureNextKeyEaten s.xkb_bindings_seat

cancelRepeat :: H ()
cancelRepeat = do
  as <- view repeatWorker >>= readIORef
  cancel as
  waitCatch as >>= \case
    Right{} -> return ()
    Left err
      | Just AsyncCancelled <- fromException err -> return ()
      | otherwise -> logError $ "Repeat worker threw exception" :# ["error" .= tshow err]

-- XXX: maybe cancel if still running for too long time?
execXkbBinding :: XkbBinding' Both (SomeAction H) -> H ()
execXkbBinding xb = local (\r -> r{thisSeat = Just rs}) $ do
  ms <- runInHS $ lookupSeat rs
  whenJust ms $ \s -> case (s.submap_pending, actionSubmap @H xb.boundAction) of
    (Nothing, Submap [] _) -> doAction
    (Just _, Submap [] _) -> next S_SUBMAP_CANCEL >> doAction -- Submap action + reset
    _ -> next (S_SUBMAP_NEXT_KEY xb.boundAction xb.boundSubmap xb.defaultSubmapAction) -- Submap binding activated
  where
    rs = xb ^. riverSeat
    next action = runInHS $ modifySeat rs $ \s' -> s'{pending_action = action}

    -- start the action in new thread (stored in xb.runningVar), there's not already a runner active for the same
    -- binding.
    doAction = do
      cancelRepeat
      execute
      when xb.autorepeat $ do
        rref <- view repeatWorker
        writeIORef rref =<< async (threadDelay 400_000 >> forever (execute >> threadDelay 200_000)) -- 2G0ms
    execute = do
      running <- checkRun xb.runningVar
      unless running $ do
        void $ tryTakeMVar xb.runningVar
        async (runner xb.boundAction) >>= putMVar xb.runningVar

    checkRun asvar =
      tryReadMVar asvar >>= mapM poll >>= \case
        Just (Just res) -> do
          case res of
            Left ex -> logError $ "xkb-key-binding action threw error" :# ["keybinding" .= show xb.riverXkbBinding, "error" .= show ex]
            _ -> return ()
          return False
        Just Nothing -> do
          logError $ "xkb-key-binding: already executing!" :# ["keybinding" .= show xb.riverXkbBinding]
          return True
        Nothing ->
          return False

execPointerBinding :: PointerBinding (SomeAction H) -> H ()
execPointerBinding xb = userCodeDef () $ runner xb.boundAction

-- * Utilities

calcResizeEdges :: Window -> Position -> Int32
calcResizeEdges w (Position sx sy) = (if closerL then 4 else 8) .|. (if closerU then 1 else 2)
  where
    closerL = (sx - w.position.x) < (w.position.x + fi w.size.width - sx)
    closerU = (sy - w.position.y) < (w.position.y + fi w.size.height - sy)

objectCommand :: forall o f. (Typeable o) => (o -> f) -> H f
objectCommand f = do
  o <- getObject @o
  return (f o)
