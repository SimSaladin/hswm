module HSWM.Operations where

import Control.Monad.State qualified as State
import Data.List qualified as L
import Data.Map qualified as M
import Data.Ratio ((%))
import Data.Set qualified as S
import Foreign (IntPtr, deRefStablePtr, intPtrToPtr, ptrToIntPtr, (.&.))
import HSWM.Core
import HSWM.StackSet qualified as W
import Bindings.River qualified as R
import Bindings.RiverSafe qualified as R
import System.Directory (removeFile)
import System.Environment
import System.IO (hGetContents, hPrint, print, writeFile)
import System.Posix qualified as Posix
import System.Posix.Process (executeFile)
import qualified Bindings.Wayland.Client as WL
import qualified Bindings.Wayland.WlrOutputPowerManagementUnstableV1 as Wlr

-- * Misc. pure operations

-- | Given a point, determine the screen (if any) that contains it.
pointScreen :: Position -> Position
            -> HS (Maybe (W.Screen WorkspaceId (Layout RiverWindow) RiverWindow WorkspaceDetail ScreenId ScreenDetail))
pointScreen x y = withWindowSet $ return . L.find p . W.screens
  where
    p = pointWithin x y . screenRect . W.screenDetail

screenRect :: ScreenDetail -> Rectangle
screenRect SD {..} = Rectangle (fi x) (fi y) (fi width) (fi height)

-- * Manage tasks that defer to next manage sequence

manageReveal, manageHide :: RiverWindow -> HS ()
manageReveal = flip modifyWindow $ \s -> s {p_set_visible = Just True}
manageHide = flip modifyWindow $ \s -> s {p_set_visible = Just False}

manageKill :: Window -> HS ()
manageKill = doManage WRequestClose

-- |
-- Move and resize @w@ such that it fits inside the given rectangle, including its border.
--
-- /manage/
tileWindow :: Bool -> RiverWindow -> Rectangle -> HS ()
tileWindow placeTop rw r = do
  bw <- asks (fi . borderWidth . config)
  -- give all windows at least 1x1 pixels
  let least x
        | x <= bw * 2 = 1
        | otherwise = x - bw * 2
  withWindow rw $ \w -> R.riverWindowProposeDimensions w.river_window (least $ fi r.width) (least $ fi r.height)
  modifyWindow rw $ \w ->
    w
      { p_render_pos = Just (fi r.x + bw, fi r.y + bw),
        p_render_place = if placeTop then R.rIVER_NODE_V1_PLACE_TOP else 0
      }

manageWindowBorder :: RiverWindow -> RiverColor -> HS ()
manageWindowBorder rw rc = modifyWindow rw $ \w -> w {p_render_border = Just rc}

doManage' :: WindowManageAction -> RiverWindow -> HS ()
doManage' a rw = modifyWindow rw $ \s -> s {p_manage_action = p_manage_action s ++ [a]}

doManage :: WindowManageAction -> Window -> HS ()
doManage a w = doManage' a w.river_window

----------------------------------------------------------------------------------
-- * Operations not tied to manage/render phases

{-
-- | Throw a message to the current 'LayoutClass' possibly modifying how we
-- layout the windows, in which case changes are handled through a refresh.
-}
sendMessage :: (Message a) => a -> HS ()
sendMessage a = do
  w <- gets $ W.workspace . W.current . windowset
  ml' <- handleMessage (W.layout w) (SomeMessage a) `catchHS` return Nothing
  whenJust ml' $ \l' -> do
    modifyWindowSet $ \ws ->
      ws
        { W.current =
            (W.current ws)
              { W.workspace =
                  (W.workspace $ W.current ws)
                    { W.layout = l'
                    }
              }
        }
    liftH manageDirty
  return ()

--  Xmonad impl:
-- sendMessage a = windowBracket_ $ do
--    w <- gets $ W.workspace . W.current . windowset
--    ml' <- handleMessage (W.layout w) (SomeMessage a) `catchH` return Nothing
--    whenJust ml' $ \l' ->
--        modifyWindowSet $ \ws -> ws { W.current = (W.current ws)
--                                { W.workspace = (W.workspace $ W.current ws)
--                                  { W.layout = l' }}}
--    return (Any $ isJust ml')

-- | Send a message to all layouts, without refreshing.
broadcastMessage :: (Message a) => a -> HS ()
broadcastMessage a = withWindowSet $ \ws -> do
  -- this is O(n²), but we can't really fix this as there's code in
  -- xmonad-contrib that touches the windowset during handleMessage
  -- (returning Nothing for changes to not get overwritten), so we
  -- unfortunately need to do this one by one and persist layout states
  -- of each workspace separately)
  let c = W.workspace . W.current $ ws
      v = map W.workspace . W.visible $ ws
      h = W.hidden ws
  mapM_ (sendMessageWithNoRefresh a) (c : v ++ h)

-- | Send a message to a layout, without refreshing.
sendMessageWithNoRefresh :: (Message a) => a -> WindowSpace -> HS ()
sendMessageWithNoRefresh a w =
  handleMessage (W.layout w) (SomeMessage a) `catchHS` return Nothing
    >>= updateLayout (W.tag w)

-- | Set the layout of the currently viewed workspace.
setLayout :: Layout RiverWindow -> HS ()
setLayout l = do
  ss@W.StackSet {W.current = c@W.Screen {W.workspace = ws}} <- gets windowset
  _ <- handleMessage (W.layout ws) (SomeMessage ReleaseResources)
  windows $ const $ ss {W.current = c {W.workspace = ws {W.layout = l}}}

-- | Update the layout field of a workspace.
updateLayout :: WorkspaceId -> Maybe (Layout RiverWindow) -> HS ()
updateLayout i ml = whenJust ml $ \l ->
  runOnWorkspaces $ \ww -> return $ if W.tag ww == i then ww {W.layout = l} else ww

withScreenOutput :: ScreenId -> (Output -> HS ()) -> HS ()
withScreenOutput sid f = mapM_ f . L.find (\o -> o.screen == sid) =<< gets _outputs

-- | Force new manage sequence.
manageDirty :: (MonadStateGlobal env m) => m ()
manageDirty = do
  logDebug "wm request: manage_dirty"
  withObject (io . R.riverWindowManagerManageDirty)

--------------------------------------------------------------
-- * Manage sequence /only/

-- | Set the focus to the window on top of the stack, or root
--
-- /manage sequence/ focus a window in every seat.
setTopFocus :: HS ()
setTopFocus = withWindowSet $ maybe (pure ()) setTopFocus' . W.peek

setTopFocus' :: RiverWindow -> HS ()
setTopFocus' rw = mapSeats $ \s -> do
  io $ R.riverSeatFocusWindow s.river_seat rw
  withWindow rw $ \w -> do
    when (s.focused /= rw && s.suppressChangeFocus <= 0) $ do
        modifySeat s.river_seat $ \x -> x {focused = rw}
        let (x', y') = fromMaybe (w.x, w.y) w.p_render_pos
            px = x' + (w.width `div` 2)
            py = y' + (w.height `div` 2)
        logInfo $ "set focus: seat pointer warping" :# [ "dest" .= (px, py), "seat" .= s.name, "window" .= show w ]
        io $ R.riverSeatPointerWarp s.river_seat px py

seatDisableBindingsMatching :: RiverSeat -> [ModMask] -> [KeySym] -> HS ()
seatDisableBindingsMatching rs mods keys = withSeat rs $ \s -> do
  let binds = s.xkb_bindings
      matchedKeys = S.filter match (M.keysSet binds)
      match (mod', key) = any (\m -> m .&. mod' > 0) mods || key `elem` keys
      matchedBinds = M.fromSet (binds M.!) matchedKeys
  logInfo $ "seat: temporarily disabling bindings" :# [ "count" .= length matchedBinds ]
  io . forM_ matchedBinds $ deRefStablePtr >=> R.riverXkbBindingDisable . xkb_binding

seatEnableBindingsMatching :: RiverSeat -> [ModMask] -> [KeySym] -> HS ()
seatEnableBindingsMatching rs mods keys = withSeat rs $ \s -> do
  let binds = s.xkb_bindings
      matchedKeys = S.filter match (M.keysSet binds)
      match (mod', key) = any (\m -> m .&. mod' > 0) mods || key `elem` keys
      matchedBinds = M.fromSet (binds M.!) matchedKeys
  logInfo $ "seat: restoring bindings to enabled: " :# [ "count" .= length matchedBinds ]
  io . forM_ matchedBinds $ deRefStablePtr >=> R.riverXkbBindingEnable . xkb_binding

--------------------------------------------------------------

-- * Render sequence / defer to render sequence

-- | /render sequence/
reveal, hide :: RiverWindow -> HS ()
reveal rw = withWindow rw $ \_ -> io $ R.riverWindowShow rw
hide rw = withWindow rw $ \_ -> io $ R.riverWindowHide rw

-- | /render sequence/ Draw borders on the the window.
setWindowBorder :: RiverWindow -> RiverColor -> HS ()
setWindowBorder w RiverColor {red = wb_r, green = wb_g, blue = wb_b, alpha = wb_a} = withWindow w $ \_ -> do
  wb_width <- asks (borderWidth . config)
  wb_edges <- asks (fi . borderEdges . config)
  let borders = WindowBorders {..}
  io $ riverWindowSetBorders w borders

riverWindowSetBorders :: RiverWindow -> WindowBorders -> IO ()
riverWindowSetBorders w WindowBorders {..} =
  R.riverWindowSetBorders w (WL.toCEnum $ fi wb_edges) wb_width wb_r wb_g wb_b wb_a

setWindowPosition :: Window -> Int32 -> Int32 -> HS ()
setWindowPosition w x y = do
  setNodePosition w.node x y
  modifyWindow w.river_window $ \s -> s {x, y}

--------------------------------------------------------------
-- * WindowSet etc. modifications

-- | Run a monadic action with the current stack set
withWindowSet :: (WindowSet -> HS a) -> HS a
withWindowSet f = gets windowset >>= f

modifyWindowSet :: (WindowSet -> WindowSet) -> HS ()
modifyWindowSet f = State.modify' $ \s -> s {windowset = f (windowset s)}

windows :: (WindowSet -> WindowSet) -> HS ()
windows = modifyWindowSet

-- ** Composite

-- | Return workspace visible on screen @sc@, or 'Nothing'.
screenWorkspace :: ScreenId -> HS (Maybe WorkspaceId)
screenWorkspace sc = withWindowSet $ return . W.lookupWorkspace sc

-- | This is basically a map function, running a function in the 'H' monad on
-- each workspace with the output of that function being the modified workspace.
runOnWorkspaces :: (WindowSpace -> HS WindowSpace) -> HS ()
runOnWorkspaces job = do
  ws <- gets windowset
  h <- mapM job $ W.hidden ws
  c : v <-
    mapM (\s -> (\w -> s {W.workspace = w}) <$> job (W.workspace s)) $
      W.current ws : W.visible ws
  modify $ \s -> s {windowset = ws {W.current = c, W.visible = v, W.hidden = h}}

{-
-- | Perform an @H@ action. If it returns @Any True@, unwind the
-- changes to the @WindowSet@ and replay them using @windows@. This is
-- a version of @windowBracket@ that discards the return value and
-- handles an @H@ action that reports its need for refresh via @Any@.
windowBracket_ :: H Any -> H ()
windowBracket_ = void . windowBracket getAny

-- | Perform an @H@ action and check its return value against a predicate p.
-- If p holds, unwind changes to the @WindowSet@ and replay them using @windows@.
windowBracket :: (a -> Bool) -> H a -> H a
windowBracket p action = withWindowSet $ \old -> do
  a <- action
  when (p a) . withWindowSet $ \new -> do
    modifyWindowSet $ const old
    windows         $ const new
  return a
-}

--------------------------------------------------------------
-- * Outputs

withOutput :: RiverOutput -> (Output -> HS ()) -> HS ()
withOutput k m = gets _outputs >>= mapM_ (\x -> when (x.river_output == k) (m x))

modifyOutput :: RiverOutput -> (Output -> Output) -> HS ()
modifyOutput ro f = modify $ \s -> s {_outputs = map g (_outputs s)}
  where
    g a@Output {..}
      | river_output == ro = f a
      | otherwise = a

setOutputPower :: Bool -> HS ()
setOutputPower mode = do
  ops <- map outputPower <$> gets _outputs
  forM_ ops $ \case
    Nothing -> return ()
    Just power -> do
      logInfo $ "setting output power" :# [ "mode_on" .= mode ]
      Wlr.outputPowerSetMode power (if mode then Wlr.outputPowerModeOn else Wlr.outputPowerModeOff)

--------------------------------------------------------------
-- * Seats

lookupSeat :: RiverSeat -> HS (Maybe Seat)
lookupSeat rs = L.find (\x -> x.river_seat == rs) <$> gets _seats

withSeat :: RiverSeat -> (Seat -> HS ()) -> HS ()
withSeat sid f = gets _seats >>= mapM_ (\s -> when (s.river_seat == sid) (f s))

modifySeat :: RiverSeat -> (Seat -> Seat) -> HS ()
modifySeat ro f = modify $ \s -> s {_seats = map g (_seats s)}
  where
    g x@Seat {}
      | x.river_seat == ro = f x
      | otherwise = x

modifySeats :: (Seat -> Bool) -> (Seat -> Seat) -> HS ()
modifySeats choose f = modify $ \s -> s {_seats = map g (_seats s)}
  where
    g x
      | choose x = f x
      | otherwise = x

mapSeats :: (Seat -> HS ()) -> HS ()
mapSeats f = gets _seats >>= mapM_ f

-- ** Starting Seat operations

startSeatOp :: SeatOp -> HS ()
startSeatOp op = modifySeats (const True) $ \seat -> seat {pending_action = S_START_OP op}

seatInputOverride :: String -> HS Bool -> [((ModMask, KeySym), H ())] -> HS ()
seatInputOverride seat onempty keys = modifySeats (\s -> s.name == seat) $ \s ->
  s {pending_action = S_INPUT_OVERRIDE onempty (map (second SomeAction) keys)}

--------------------------------------------------------------
-- * windows

lookupWindow :: RiverWindow -> HS (Maybe Window)
lookupWindow wid = gets (M.lookup wid . _windows)

lookupWindows :: [RiverWindow] -> HS [Window]
lookupWindows wids = gets $ catMaybes . (\ws -> map (`M.lookup` ws) wids) . _windows

withWindow :: RiverWindow -> (Window -> HS ()) -> HS ()
withWindow wid f = gets (M.lookup wid . _windows) >>= (`whenJust` f)

modifyWindow :: RiverWindow -> (Window -> Window) -> HS ()
modifyWindow w f = alterWindow w (fmap f)

alterWindow :: RiverWindow -> (Maybe Window -> Maybe Window) -> HS ()
alterWindow w f = modify $ \s -> s {_windows = M.alter f w s._windows}

withFocused :: (Window -> HS ()) -> HS ()
withFocused f = gets windowset >>= \ws -> whenJust (W.peek ws) (`withWindow` f)

mapWindows :: (Window -> HS ()) -> HS ()
mapWindows f = gets _windows >>= mapM_ f

-- | Make a tiled window floating, using its suggested rectangle (modifies the windowset only).
float :: RiverWindow -> HS ()
float rw = withWindow rw $ \w -> do
  (sc, rr) <- floatLocation w
  modifyWindowSet $ \ws -> W.float rw rr . fromMaybe ws $ do
    i <- W.findTag rw ws
    guard $ i `elem` map (W.tag . W.workspace) (W.screens ws)
    f <- W.peek ws
    sw <- W.lookupWorkspace sc ws
    return (W.focusWindow f . W.shiftWin sw rw $ ws)

-- | Given a window, find the screen it is located on, and compute
-- the geometry of that window WRT that screen.
floatLocation :: Window -> HS (ScreenId, W.RationalRect)
floatLocation w = go
  where
    -- -- Fallback solution if `go' fails.  Which it might, since it
    -- -- calls `getWindowAttributes'.
    -- sc <- gets $ W.current . windowset
    -- return (W.screen sc, W.RationalRect 0 0 1 1)

    go = do
      ws <- gets windowset
      let bw = 2 :: Int -- (fromIntegral . wa_border_width) wa
      point_sc <- pointScreen (fi w.x) (fi w.y)

      -- ignore pointScreen for new windows unless it's the current
      -- screen, otherwise the float's relative size is computed against
      -- a different screen and the float ends up with the wrong size
      let sr_eq = (==) `on` fmap (screenRect . W.screenDetail)
          sc =
            fromMaybe (W.current ws) $
              if point_sc `sr_eq` Just (W.current ws) then point_sc else Nothing
          sr = screenRect . W.screenDetail $ sc
          x = (fi w.x - fi sr.x) % fi sr.width
          y = (fi w.y - fi sr.y) % fi sr.height
          (width, height) = {- applySizeHintsContents sh -} (fi w.width, fi w.height)
          rwidth = fi (width + bw * 2) % fi sr.width
          rheight = fi (height + bw * 2) % fi sr.height
          -- adjust x/y of unmanaged windows if we ignored or didn't get pointScreen,
          -- it might be out of bounds otherwise
          rr =
            if point_sc `sr_eq` Just sc
              then W.RationalRect x y rwidth rheight
              else W.RationalRect (0.5 - rwidth / 2) (0.5 - rheight / 2) rwidth rheight

      return (W.screen sc, rr)

-------------------------------------------------------------------
-- * Restart with state

data StateData = StateData
  { sfWins :: W.StackSet WorkspaceId String (IntPtr, String) WorkspaceDetail ScreenId ScreenDetail,
    sfExt :: [(String, String)]
  }
  deriving (Show, Read)

sendRestart :: MonadIO m => m ()
sendRestart = io $ Posix.raiseSignal Posix.sigUSR2

restart :: String -> H ()
restart prog = do
  runInHS $ broadcastMessage ReleaseResources
  void . userCode =<< asks (exitHook . config)
  runInHS writeStateToFile
  logInfo $ "restart: executing" :# [ "program" .= prog ]
  io $ do
    res <- try $ executeFile prog True [] Nothing
    case res of
      Left (SomeException e) -> hPrint stderr e >> exitFailure
      Right {} -> return ()

writeStateToFile :: HS ()
writeStateToFile = do
  let path = ".hswm.state"
  stateString <- dumpStateAsString
  liftIO $ catchIO (writeFile path stateString) (print . show)

dumpStateAsString :: HS String
dumpStateAsString = do
  let wsData s = W.mapLayout show $ W.mapWindow winIdent $ windowset s
        where
          winIdent w
            | Just win <- L.find (\x -> x.river_window == w) s._windows = (rwToIntPtr w, win.identifier)
            | otherwise = (rwToIntPtr w, "")
  let maybeShow (t, Right (PersistentExtension ext)) = Just (t, show ext)
      maybeShow (t, Left str) = Just (t, str)
      maybeShow _ = Nothing
      extState = mapMaybe maybeShow . M.toList . extensibleState
  stateData <- gets $ \s -> StateData (wsData s) (extState s)
  return $! show stateData
  where
    rwToIntPtr (R.RiverWindow w) = ptrToIntPtr w

-- | Read the state of a previous xmonad instance from a file and
-- return that state.  The state file is removed after reading it.
readStateFile :: (LayoutClass l RiverWindow, Read (l RiverWindow)) => HSWMConfig m l -> IO (Maybe HState)
readStateFile xmc = do
  let path = ".hswm.state"

  -- I'm trying really hard here to make sure we read the entire
  -- contents of the file before it is removed from the file system.
  res <- try @_ @SomeException $ do
    raw <- withFile path ReadMode readStrict
    return $! maybeRead reads raw
  _ <- try @_ @SomeException $ io (removeFile path)

  case res of
    Left e -> print e >> return Nothing
    Right sf' -> return $ do
      sf <- sf'

      let wins = W.allWindows (sfWins sf)
      let winset =
            W.ensureTags layout (workspaces xmc) $
              W.mapLayout (fromMaybe layout . maybeRead lreads) $
                W.mapWindow (R.RiverWindow . intPtrToPtr . fst) (sfWins sf)
          extState = M.fromList . map (second Left) $ sfExt sf

      return
        def
          { windowset = winset,
            windowsetOld = winset,
            recoveredWindows = M.fromList [(b, R.RiverWindow $ intPtrToPtr a) | (a, b) <- wins],
            extensibleState = extState
          }
  where
    layout = Layout (layoutHook xmc)
    lreads = readsLayout layout
    maybeRead reads' s = case reads' s of
      [(x, "")] -> Just x
      _ -> Nothing

    readStrict :: Handle -> IO String
    readStrict h = hGetContents h >>= \s -> length s `seq` return s

getProgramPath :: IO FilePath
getProgramPath =
  lookupEnv "HSWM_EXECUTABLE" >>= \case
    Just x -> return x
    Nothing
      | Just getExe <- executablePath -> do
          x <- fromMaybe (error "restart: unable to get program path") <$> getExe
          setEnv "HSWM_EXECUTABLE" x
          return x
      | otherwise -> error "restart: unable to resolve program path"
