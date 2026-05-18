{-# LANGUAGE MultiWayIf #-}
{-# OPTIONS_GHC -Wno-ambiguous-fields #-}

-- |
-- Module      : HSWM.Windows
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
module HSWM.Windows where

import           HSWM.Core
import           HSWM.Operations
import qualified HSWM.StackSet as W

import qualified Wayland as WL
import qualified River as R

import qualified Bindings.River as R
import qualified Bindings.River.WindowManagementV1.Generated as R

import qualified Control.Monad.State as State
import qualified Data.List as L
import qualified Data.Map as M
import           Foreign

added :: RiverWindow -> H ()
added w = do
  -- Setup WL window listener
  withObject $ WL.listenerAdd_ w
  node <- R.riverWindowGetNode w
  let win = def {new = True, river_window = w, node = node, max_height = maxBound, max_width = maxBound}
  -- Insert it into stack and state
  runInHS $ do
    alterWindow w (\_ -> Just win)
    modifyWindowSet (W.insertUp w)

applyManageActions :: Window -> [WindowManageAction] -> HS (Maybe Window)
applyManageActions _ [] = return Nothing
applyManageActions w0 xs0 = doAll w0 xs0 >>= \w' -> return $ Just w' {p_manage_action = []}
  where
    doAll :: Window -> [WindowManageAction] -> HS Window
    doAll w [] = pure w
    doAll w (x : xs) = doIt w x >>= flip doAll xs

    doIt w a = do
      let rw = w.river_window
      case a of
        WRequestClose -> R.riverWindowClose rw $> w
        WFullscreenOnScreen ro -> do
          R.riverWindowFullscreen rw ro
          R.riverWindowInformFullscreen rw
          -- The position does not get updated otherwise
          lookupOutput ro >>= \case
            Nothing -> pure w {fullscreen = Just ro}
            Just o ->  pure w {fullscreen = Just ro, x = o.x, y = o.y}
        WFullscreen -> do
          sid <- gets $ W.screen . W.current . windowset
          lookupOutputBy (\x -> x.screen == sid) >>= \case
            Nothing -> pure w
            Just o -> do
              R.riverWindowFullscreen rw o.river_output
              R.riverWindowInformFullscreen rw
              pure w {fullscreen = Just o.river_output, x = o.x, y = o.y}
        WExitFullscreen -> do
          R.riverWindowExitFullscreen rw
          R.riverWindowInformNotFullscreen rw
          pure w {fullscreen = Nothing}
        WToggleFullscreen
          | isJust w.fullscreen -> doIt w WExitFullscreen
          | otherwise -> doIt w WFullscreen

-- | Do nothing while pointer operation is in progress.
manage :: H ()
manage = runInHS $ do
  ss <- gets _seats
  unless (any (\s -> s.op /= SEAT_OP_NONE) ss) manage_

manage_ :: HS ()
manage_ = do
  -- Do initial properties for new windows
  -- Get rid of any closed windows
  mapWindows $ \w ->
    if
      | w.closed -> doRemoveWindow w
      | w.new -> do
          setInitialManageProperties w
          modifyWindow w.river_window (\s -> s {new = False})
          mh <- asks (manageHook . config)
          g <- appEndo <$> userCodeDefS (Endo id) (runQuery mh w)
          windows g
      | otherwise -> applyManageActions w w.p_manage_action >>= (`whenJust` (modifyWindow w.river_window . const))

  old <- gets windowsetOld
  ws <- gets windowset
  let oldvisible = concatMap (W.integrate' . W.stack . W.workspace) $ W.current old : W.visible old
      newwindows = W.allWindows ws L.\\ W.allWindows old

  whenJust (W.peek old) $ \otherw ->
    manageWindowBorder otherw =<< asks (normalBorder . config)

  let tags_oldvisible = map (W.tag . W.workspace) $ W.current old : W.visible old
      gottenhidden = filter (flip elem tags_oldvisible . W.tag) $ W.hidden ws
  mapM_ (sendMessageWithNoRefresh Hide) gottenhidden

  -- for each workspace, layout the currently visible workspaces
  let allscreens = W.screens ws
      summed_visible = scanl (++) [] $ map (W.integrate' . W.stack . W.workspace) allscreens

  rects <- fmap concat $ forM (zip allscreens summed_visible) $ \(w, vis) -> do
    let wsp = W.workspace w
        this = W.view n ws
        n = W.tag wsp
        tiled =
          (W.stack . W.workspace . W.current $ this)
            >>= W.filter (`M.notMember` W.floating ws)
            >>= W.filter (`notElem` vis)
        sd = W.screenDetail w
        viewrect = Rectangle {x = fi sd.x, y = fi sd.y, width = fi sd.width, height = fi sd.height}

    -- just the tiled windows:
    -- now tile the windows on this workspace, modified by the gap
    (rs, ml') <-
      runLayout wsp {W.stack = tiled} viewrect
        `catchHS` runLayout wsp {W.stack = tiled, W.layout = Layout Full} viewrect
    updateLayout n ml'

    let m = W.floating ws
        flt =
          [ (fw, scaleRationalRect viewrect r, True)
          | fw <- filter (`M.member` m) (W.index this),
            fw `notElem` vis,
            Just r <- [M.lookup fw m]
          ]

    -- return the visible windows for this workspace:
    return (flt ++ [(a, b, False) | (a, b) <- rs])

  let visible = map (\(a, _, _) -> a) rects

  mapM_ (\(rw, rect, top) -> tileWindow top rw rect) rects

  -- hide every window that was potentially visible before, but is not
  -- given a position by a layout now.
  mapM_ manageHide (L.nub (oldvisible ++ newwindows) L.\\ visible)

  whenJust (W.peek ws) $ \w -> do
    manageWindowPlaceTop w True
    --sm <- liftH $ getObjectDef @Seats.SeatManager
    --if sm.seat_lshell_focus == Seats.FocusNone
    --  then manageWindowBorder w =<< asks (focusedBorder . config)
    --  else manageWindowBorder w =<< asks (normalBorder . config)
    manageWindowBorder w =<< asks (focusedBorder . config)

  mapM_ manageReveal visible
  setTopFocus

  if isNothing (W.peek ws) && W.tag (W.workspace $ W.current ws) /= W.tag (W.workspace $ W.current old)
    then warpPointerToScreen (W.screenDetail $ W.current ws) (W.screen $ W.current ws)
    else withScreenOutput (W.screen $ W.current ws) $ \o ->
      R.riverLayerShellOutputSetDefault o.layerShellOutput

  gets windowset >>= \ws' -> modify (\s -> s {windowsetOld = ws'})

warpPointerToScreen :: ScreenDetail -> ScreenId -> HS ()
warpPointerToScreen SD {..} sid = do
  mapSeats $ \s -> do
    R.riverSeatPointerWarp s.river_seat px py
    modifySeat s.river_seat $ \s' -> s' {focused = R.invalidWindow}
  withScreenOutput sid $ \o -> io $ R.riverLayerShellOutputSetDefault o.layerShellOutput
  where
    px = fi $ x + width `div` 2
    py = fi $ y + height `div` 2

render :: H ()
render = runInHS $ do
  bwDef <- asks (borderWidth . config)
  mapWindows $ \w -> do
    whenJust w.p_render_pos $ unless w.minimized . uncurry (setWindowPosition w)
    whenJust w.p_render_border $ setWindowBorder w.river_window (fromMaybe bwDef w.wBorderWidth)
    case w.p_render_place_top of
        Just True  -> unless w.minimized $ R.riverNodePlaceTop w.node
        Just False -> unless w.minimized $ R.riverNodePlaceBottom w.node
        Nothing -> return ()
    whenJust w.p_set_visible $ \viz ->
      if viz
        then unless w.minimized $ reveal w.river_window
        else hide w.river_window
    -- reset pending fields
    modifyWindow w.river_window $ \s ->
      s
        { p_render_border = Nothing,
          p_render_pos = Nothing,
          p_render_place_top = Nothing,
          p_set_visible = Nothing
        }

-- | /manage/
setInitialManageProperties :: Window -> HS ()
setInitialManageProperties Window {river_window = rw} = do
  R.riverWindowUseSsd rw
  R.riverWindowSetCapabilities rw (R.toCEnum . fi $ foldl' (.|.) 0 $ map (.unwrap) [R.Maximize, R.Fullscreen])
  R.riverWindowSetTiled rw (R.toCEnum . fi $ foldl' (.|.) 0 $ map (.unwrap) [R.EdgeTop, R.EdgeBottom, R.EdgeLeft, R.EdgeRight])
  nbc <- asks (normalBorder . config)
  modifyWindow rw $ \s -> s {new = False, p_render_border = Just nbc}

doRemoveWindow :: Window -> HS ()
doRemoveWindow w@Window {} = do
  -- reove from stack
  modifyWindowSet $ W.delete w.river_window
  alterWindow w.river_window (const Nothing)
  -- remove references in seats
  gets _seats >>= \xs -> do
    xs' <- forM xs $ \seat' -> do
      let seat =
            seat'
              { focused = if focused seat' == w.river_window then R.invalidWindow else focused seat',
                hovered = if hovered seat' == w.river_window then R.invalidWindow else hovered seat',
                interacted = if interacted seat' == w.river_window then R.invalidWindow else interacted seat'
              }
      if op_window seat == w.river_window
        then do
          liftIO $ R.riverSeatOpEnd seat.river_seat
          return $ seat {op_window = R.invalidWindow, op = SEAT_OP_NONE}
        else return seat
    modify $ \s -> s {_seats = xs'}
  -- destroy WL references
  io $ R.objectDestroy w.node
  io $ R.objectDestroy w.river_window

-- | End recovering windows. Removes any leftoover windows that are no longer present.
finishRecovery :: HS ()
finishRecovery = do
  rwins <- gets recoveredWindows
  unless (M.null rwins) $ do
    State.modify' $ \s -> s {recoveredWindows = mempty}
    forM_ (M.toList rwins) $ \(_, rw) -> do
      modifyWindowSet $ W.delete rw
      alterWindow rw $ const Nothing

handleEvent :: R.RiverWindowEvent -> H ()
handleEvent e = case e of
  -- The window has been closed by the server, perhaps due to an xdg_toplevel.close request or similar.
  -- The server will send no further events on this object and ignore any request other than river_window_v1.destroy made after this event is sent. The client should destroy this object with the river_window_v1.destroy request to free up resources.
  R.RiverWindowClosed _ w -> runInHS $ modifyWindow w $ \s -> s {closed = True}

  -- properties
  R.RiverWindowParent _ window we_parent -> runInHS $ modifyWindow window $ \s -> s {parent = Just we_parent}
  R.RiverWindowAppId _ window we_app_id -> runInHS $ modifyWindow window $ \s -> s {appId = we_app_id}
  R.RiverWindowTitle _ window we_title -> runInHS $ modifyWindow window $ \s -> s {title = we_title}
  R.RiverWindowUnreliablePid _ window we_unreliable_pid -> runInHS $ modifyWindow window $ \s -> s {unreliablePid = Just $ fi we_unreliable_pid}

  -- we use the unique identifier to recover windows after restart
  R.RiverWindowIdentifier _ window we_identifier -> runInHS $ do
    modifyWindow window $ \s -> s {identifier = we_identifier}
    let recoverWindow w = do
          modifyWindowSet $ W.mapWindow (\x -> if x == w then window else x) . W.delete window
          State.modify' $ \s -> s {recoveredWindows = M.delete we_identifier s.recoveredWindows}
    gets (M.lookup we_identifier . recoveredWindows) >>= (`whenJust` recoverWindow)

  -- Hints
  R.RiverWindowDecorationHint _ window we_hint -> runInHS $ modifyWindow window $ \s -> s {decorationHint = Just  we_hint}
  R.RiverWindowPresentationHint _ window we_hint -> runInHS $ modifyWindow window $ \s -> s {presentationHint = Just we_hint}

  R.RiverWindowDimensionsHint _ window minw minh maxw maxh -> do
    runInHS $ modifyWindow window $ \s -> s {min_width = fi minw, min_height = fi minh, max_width = fi maxw, max_height = fi maxh}
    -- auto-float fixed-size windows
    let fixed = maxw > 0 && maxh > 0 && maxw == minw && maxh == minh
    when fixed $ runInHS $
      withWindow window $ \w ->
        modifyWindowSet $ \ws ->
          W.float window (centerRationalRect $ rationalRectIn (Rectangle w.x w.y (fi maxw) (fi maxh)) (screenRect $ W.screenDetail $ W.current ws)) ws

  -- updated width + height
  R.RiverWindowDimensions _ rw w h ->
    runInHS $ modifyWindow rw $ \s -> s {width = w, height = h}

  -- Set fullscreen
  R.RiverWindowFullscreenRequested _ window output -> runInHS $ doManage' (if output == def then WFullscreen else WFullscreenOnScreen output) window
  R.RiverWindowExitFullscreenRequested _ window -> runInHS $ doManage' WExitFullscreen window
  -- TODO what's this
  R.RiverWindowPointerMoveRequested _ w seat ->
    runInHS $ modifyWindow w $ \s -> s {pointer_move_requested = seat}
  R.RiverWindowPointerResizeRequested _ w seat edges ->
    runInHS $ modifyWindow w $ \x -> x {pointer_resize_requested = seat, pointer_resize_requested_edges = fi $ R.fromCEnum edges}
  -- TODO maximize
  R.RiverWindowMaximizeRequested _ _w -> return ()
  R.RiverWindowUnmaximizeRequested _ _w -> return ()
  _ -> return ()
