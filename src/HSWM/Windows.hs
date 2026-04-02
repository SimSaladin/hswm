{-# LANGUAGE MultiWayIf #-}
{-# OPTIONS_GHC -Wno-ambiguous-fields #-}
------------------------------------------------------------------------------
-- |
-- Module      : HSWM.Windows
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
--
------------------------------------------------------------------------------
module HSWM.Windows  where

import           HSWM.Core
import           HSWM.Operations
import qualified HSWM.StackSet as W
import qualified HSWM.Seats as Seats

import qualified River.Safe as R

import qualified Data.Map as M
import qualified Data.List as L
import           Foreign

added :: RiverWindow -> H ()
added w = do
  -- setup WL window listener
  window_listener <- getObject
  liftIO $ river_window_v1_add_listener w window_listener nullPtr
  nd <- io $ river_window_v1_get_node w
  let win = def { new = True, river_window = w, node = nd, max_height = maxBound, max_width = maxBound }
  -- insert window to stack and state
  alterWindow w (\_ -> Just win)
  modifyWindowSet (W.insertUp w)

applyManageActions :: Window -> [WindowManageAction] -> H (Maybe Window)
applyManageActions _ [] = return Nothing
applyManageActions w0 xs0 = doAll w0 xs0 >>= \w' -> return $ Just w' { p_manage_action = [ ] }
  where
    doAll :: Window -> [WindowManageAction] -> H Window
    doAll w [] = pure w
    doAll w (x:xs) = doIt w x >>= flip doAll xs

    doIt w a = do
      let rw = w.river_window
      case a of
          WRequestClose -> do
              io $ R.river_window_v1_close rw
              pure w
          WFullscreenOnScreen ro -> do
              io $ R.river_window_v1_fullscreen rw ro
              io $ R.river_window_v1_inform_fullscreen rw
              pure w { fullscreen = True }
          WFullscreen -> do
              sid <- gets $ W.screen . W.current . windowset
              withScreenOutput sid $ \o -> do
                io $ R.river_window_v1_fullscreen rw o.river_output
                io $ R.river_window_v1_inform_fullscreen rw
              pure w { fullscreen = True }
          WExitFullscreen -> do
              io $ R.river_window_v1_exit_fullscreen rw
              io $ R.river_window_v1_inform_not_fullscreen rw
              pure w { fullscreen = False }
          WToggleFullscreen
              | w.fullscreen -> doIt w WExitFullscreen
              | otherwise    -> doIt w WFullscreen

manage :: H ()
manage = do
   -- get rid of any closed windows
   -- do initial properties for new windows
  mapWindows $ \w -> do
    if | w.closed  -> doRemoveWindow w
       | w.new     -> setInitialManageProperties w >> modifyWindow w.river_window (\s -> s { new = False })
       | otherwise -> applyManageActions w w.p_manage_action >>= (`whenJust` (modifyWindow w.river_window . const))

  old <- gets windowsetOld
  ws <- gets windowset
  let oldvisible = concatMap (W.integrate' . W.stack . W.workspace) $ W.current old : W.visible old
      newwindows = W.allWindows ws L.\\ W.allWindows old

  whenJust (W.peek old) $ \otherw ->
    manageWindowBorder otherw =<< asks (normalBorder . config)

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
          flt = [(fw, scaleRationalRect viewrect r, True)
                  | fw <- filter (`M.member` m) (W.index this)
                  , fw `notElem` vis
                  , Just r <- [M.lookup fw m]]

      -- return the visible windows for this workspace:
      return (flt ++ [ (a, b, False) | (a, b) <- rs])

  let visible = map (\(a,_,_) -> a) rects

  mapM_ (\(a,b,c) -> tileWindow c a b) rects

  sm <- Seats.getSMgr

  whenJust (W.peek ws) $ \w ->
    if sm.seat_lshell_focus == Seats.FocusNone
       then manageWindowBorder w =<< asks (focusedBorder . config)
       else manageWindowBorder w =<< asks (normalBorder . config)


  mapM_ manageReveal visible
  setTopFocus

  -- hide every window that was potentially visible before, but is not
  -- given a position by a layout now.
  mapM_ manageHide (L.nub (oldvisible ++ newwindows) L.\\ visible)

  asks (logHook . config) >>= userCodeDef ()

render :: H ()
render = do
  mapWindows $ \w -> do
    whenJust w.p_render_pos $ uncurry (setWindowPosition w)
    whenJust w.p_render_border $ setWindowBorder w.river_window
    case w.p_render_place of
      i | i == R.rIVER_NODE_V1_PLACE_TOP    -> io $ river_node_v1_place_top    w.node
        | i == R.rIVER_NODE_V1_PLACE_BOTTOM -> io $ river_node_v1_place_bottom w.node
      _ -> return ()
    whenJust w.p_set_visible $ \viz -> if viz then reveal w.river_window else hide w.river_window
    -- reset pending fields
    modifyWindow w.river_window $ \s -> s
      { p_render_border = Nothing
      , p_render_pos = Nothing
      , p_render_place = 0
      , p_set_visible = Nothing }

setWindowPosition :: Window -> Int32 -> Int32 -> H ()
setWindowPosition w x y = do
  setNodePosition w.node x y
  modifyWindow w.river_window $ \s -> s { x = x, y = y }

-- | /manage/
setInitialManageProperties :: Window -> H ()
setInitialManageProperties Window{river_window = rw} = do
  io $ riverWindowV1UseSsd rw
  io $ riverWindowV1SetCapabilities rw (fi $ foldl' (.|.) 0 $ map fromEnum [Maximize, Fullscreen])
  io $ riverWindowV1SetTiled rw (fi $ foldl' (.|.) 0 $ map fromEnum [EdgeTop, EdgeBottom, EdgeLeft, EdgeRight])
  bcolor <- asks (normalBorder . config)
  modifyWindow rw $ \s -> s { new = False, p_render_border = Just bcolor }

doRemoveWindow :: Window -> H ()
doRemoveWindow w@Window{} = do
  -- reove from stack
  modifyWindowSet $ W.delete w.river_window
  alterWindow w.river_window (const Nothing)
  -- remove references in seats
  gets _seats >>= \xs -> do
   xs' <- forM xs $ \seat' -> do
     let seat = seat'
          { focused = if focused seat' == w.river_window then invalidWindow else focused seat'
          , hovered = if hovered seat' == w.river_window then invalidWindow else hovered seat'
          , interacted = if interacted seat' == w.river_window then invalidWindow else interacted seat'
          }
     if op_window seat == w.river_window
        then do
            liftIO $ river_seat_v1_op_end seat.river_seat
            return $ seat { op_window = invalidWindow, op = SEAT_OP_NONE }
        else return seat
   modify $ \s -> s { _seats = xs' }
  -- destroy WL references
  io $ river_node_v1_destroy w.node
  io $ river_window_v1_destroy w.river_window

handleEvent :: WindowEvent -> H ()
handleEvent e = case e of
    -- The window has been closed by the server, perhaps due to an xdg_toplevel.close request or similar.
    -- The server will send no further events on this object and ignore any request other than river_window_v1.destroy made after this event is sent. The client should destroy this object with the river_window_v1.destroy request to free up resources.
  WindowClosed _ w-> modifyWindow w $ \s -> s { closed = True }

  -- properties
  WindowParent { window, we_parent } -> modifyWindow window $ \s -> s { parent = Just we_parent }
  WindowAppId { window, we_app_id } -> modifyWindow window $ \s -> s { appId = we_app_id }
  WindowTitle { window, we_title } -> modifyWindow window $ \s -> s { title = we_title }
  WindowUnreliablePID{window, we_unreliable_pid} -> modifyWindow window $ \s -> s { unreliablePid = Just we_unreliable_pid }
  WindowIdentifier { window, we_identifier }-> do
    modifyWindow window $ \s -> s { identifier = we_identifier }
    let recoverWindow w = do
              modifyWindowSet $ W.mapWindow (\x -> if x == w then window else x) . W.delete window
              modify' $ \s -> s { recoveredWindows = M.delete we_identifier s.recoveredWindows }
    gets (M.lookup we_identifier . recoveredWindows) >>= (`whenJust` recoverWindow)

  -- updated width + height
  WindowDimensions{window, we_width, we_height} -> modifyWindow window $ \s -> s { width = fi we_width, height = fi we_height }

  -- Hints
  WindowDecorationHint { window, we_hint } -> modifyWindow window $ \s -> s { decorationHint = Just $ R.River_window_v1_decoration_hint (fi we_hint) }
  WindowPresentationHint { window, we_hint } -> modifyWindow window $ \s -> s { presentationHint = Just (R.River_output_v1_presentation_mode (fi we_hint)) }
  WindowDimensionsHint{..}-> modifyWindow window $ \s -> s { min_width = fi we_min_width , min_height = fi we_min_height , max_width = fi we_max_width , max_height = fi we_max_height }

  -- fullscreen
  WindowFullscreenRequested{window, output} -> doManage' (if output == nullPtr then WFullscreen else WFullscreenOnScreen output) window
  WindowExitFullscreenRequested{window} -> doManage' WExitFullscreen window

  -- TODO what's this
  WindowPointerMoveRequested{..}   -> modifyWindow window $ \s -> s { pointer_move_requested = seat }
  WindowPointerResizeRequested{..} -> modifyWindow window $ \s -> s { pointer_resize_requested = seat, pointer_resize_requested_edges = fromIntegral we_edges }

  -- TODO maximize
  WindowMaximizeRequested{window =_w} -> return ()
  WindowUnmaximizeRequested{window =_w} -> return ()

  _ -> return ()
