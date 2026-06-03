module HSWM.Operations where

import           HSWM.Core
import qualified HSWM.StackSet as W

import qualified River as R

import qualified Bindings.River as R
import qualified Bindings.Wlr.OutputPowerManagementUnstableV1 as Wlr

import qualified Data.List as L
import qualified Data.Map as M
import           Data.Ratio ((%))
import qualified Data.Set as S
import           Data.Time.Clock.System
import System.Environment (executablePath)
-- import           Foreign (IntPtr, deRefStablePtr, intPtrToPtr, ptrToIntPtr, (.&.))
import           System.IO (hGetContents, hPrint, print, writeFile)
import qualified System.Posix as Posix
import           System.Posix.Process (executeFile)
import           Text.Printf

-- * Misc. pure operations

-- | Given a point, determine the screen (if any) that contains it.
pointScreen :: Position1D -> Position1D
            -> HS (Maybe (W.Screen WorkspaceId (Layout RiverWindow) RiverWindow WorkspaceDetail ScreenId ScreenDetail))
pointScreen x y = withWindowSet $ return . L.find p . W.screens
  where
    p = pointWithin x y . screenRect . W.screenDetail

screenRect :: ScreenDetail -> Rectangle
screenRect sd = Rectangle (fi sd.x) (fi sd.y) (fi sd.width) (fi sd.height)

-- * Manage tasks that defer to next manage sequence

manageReveal, manageHide :: RiverWindow -> HS ()
manageReveal = flip modifyWindow $ p_set_visible ?~ True
manageHide = flip modifyWindow $ p_set_visible ?~ False

manageKill :: Window -> HS ()
manageKill = doManage WRequestClose

-- |
-- Move and resize @w@ such that it fits inside the given rectangle, including its border.
--
-- /manage/
tileWindow :: Bool -> RiverWindow -> Rectangle -> HS ()
tileWindow placeTop rw r = do
  withWindow rw $ \w -> do
    --logDebug $ "Tiling window" :# [ "window" .= show rw, "title" .= w.title, "placetop" .= placeTop ]
    case w.fullscreen of
      Nothing -> do
        bwDef <- view $ config . borderWidth . to fi
        let bw = fromMaybe bwDef w.wBorderWidth
        -- give all windows at least 1x1 pixels
        let least x
              | x <= bw * 2 = 1
              | otherwise = x - bw * 2
        R.riverWindowProposeDimensions w.river_window (least $ fi r.width) (least $ fi r.height)
        modifyWindow rw $ \w' -> w'
            & p_render_pos ?~ Position (fi r.x + bw) (fi r.y + bw)
            & p_render_place_top ?~ placeTop
      Just ro -> do
        sid <- pointScreen r.x r.y
        lookupOutputBy (\x -> Just x.screen == fmap W.screen sid) >>= \mo -> do
          case mo of
            Nothing -> return ()
            Just o
              | ro == o.river_output -> modifyWindow rw $ \w' -> w'
                  { p_render_place_top = Just placeTop }
              | otherwise -> do
                -- need to change the output where the window is fullscreened
                R.riverWindowFullscreen rw o.river_output
                modifyWindow rw $ \x -> x
                  & p_render_place_top ?~ placeTop
                  & fullscreen ?~ o.river_output
                  & position .~ o.position
                  & size .~ o.size

manageWindowPlaceTop :: RiverWindow -> Bool -> HS ()
manageWindowPlaceTop rw top = modifyWindow rw $ \w -> w
  { p_render_place_top = Just top }

manageWindowBorder :: RiverWindow -> RiverColor -> HS ()
manageWindowBorder rw rc = modifyWindow rw $ \w -> w {p_render_border = Just rc}

manageWindowBorderWidth :: RiverWindow -> Maybe Int32 -> HS ()
manageWindowBorderWidth rw bw = modifyWindow rw $ \w -> w {wBorderWidth = bw}

doManage' :: WindowManageAction -> RiverWindow -> HS ()
doManage' a rw = modifyWindow rw $ p_manage_action <>~ [a]

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
  w <- gets $ W.workspace . W.current . view windowset
  ml' <- handleMessage (W.layout w) (SomeMessage a) `catchHS` return Nothing
  whenJust ml' $ \l' -> do
    modifyWindowSet $ \ws ->
      ws { W.current = (W.current ws)
              { W.workspace = (W.workspace $ W.current ws) { W.layout = l' } } }
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
  ss@W.StackSet {W.current = c@W.Screen {W.workspace = ws}} <- use windowset
  _ <- handleMessage (W.layout ws) (SomeMessage ReleaseResources)
  windows $ const $ ss {W.current = c {W.workspace = ws {W.layout = l}}}

-- | Update the layout field of a workspace.
updateLayout :: WorkspaceId -> Maybe (Layout RiverWindow) -> HS ()
updateLayout i ml = whenJust ml $ \l ->
  runOnWorkspaces $ \ww -> return $ if W.tag ww == i then ww {W.layout = l} else ww

withScreenOutput :: ScreenId -> (Output -> HS ()) -> HS ()
withScreenOutput sid f = mapM_ f . L.find (\o -> o.screen == sid) =<< use _outputs

-- | Force new manage sequence.
manageDirty :: (MonadStateGlobal env m, HasEventQueues env) => m ()
manageDirty = withObject $ \wm -> do
  logDebug "wm request: manage_dirty"
  R.riverWindowManagerManageDirty wm
  writeMainEvent MainPoll

writeMainEvent :: (MonadIO m, MonadReader env m, HasEventQueues env) => MainEvent -> m ()
writeMainEvent ev = do
  q <- asks $ view mainEventQL
  atomically $ writeTQueue q ev

--------------------------------------------------------------
-- * Manage sequence /only/

-- | Set the focus to the window on top of the stack, or root
--
-- /manage sequence/ focus a window in every seat.
setTopFocus :: HS ()
setTopFocus = withWindowSet $ maybe (pure ()) setTopFocus' . W.peek

setTopFocus' :: RiverWindow -> HS ()
setTopFocus' rw = mapSeats $ \s -> do
  when (s.focused /= rw) $ do
    withWindow rw $ \w -> do
      logInfo $ "seat: focus window" :# [ "window" .= show rw, "seat" .= s.name ]
      R.riverSeatFocusWindow s.river_seat rw
      modifySeat s.river_seat $ focused .~ rw
      -- FIXME: when focusing a newly created window, we end up here when w.x and w.y are still 0. The position is updated
      -- a bit later by the WindowDimensions event.
      when (s.suppressChangeFocus <= 0 && w ^. size /= Size 0 0) $ do
          -- modifySeat s.river_seat $ \x -> x {focused = rw}
          let Position x' y' = fromMaybe w.position w.p_render_pos
              px = x' + (w.size.width `div` 2)
              py = y' + (w.size.height `div` 2)
          logInfo $ "seat: pointer warp" :# [ "dest" .= (px, py), "seat" .= s.name, "window" .= show w ]
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
reveal rw = withWindow rw $ \_ -> R.riverWindowShow rw
hide rw = withWindow rw $ \_ -> R.riverWindowHide rw

-- | /render sequence/ Draw borders on the the window.
setWindowBorder :: RiverWindow -> Int32 -> RiverColor -> HS ()
setWindowBorder w wb_width RiverColor {red = wb_r, green = wb_g, blue = wb_b, alpha = wb_a} = withWindow w $ \_ -> do
  wb_edges <- asks $ fi . view (config . borderEdges)
  let borders = R.WindowBorders {..}
  io $ riverWindowSetBorders w borders

riverWindowSetBorders :: RiverWindow -> R.WindowBorders -> IO ()
riverWindowSetBorders w R.WindowBorders {..} = R.riverWindowSetBorders w (R.toCEnum $ fi wb_edges) wb_width wb_r wb_g wb_b wb_a

setWindowPosition :: Window -> Int32 -> Int32 -> HS ()
setWindowPosition w x y = do
  R.riverNodeSetPosition w.node x y
  modifyWindow w.river_window $ (_x .~ x) . (_y .~ y)

--------------------------------------------------------------
-- * WindowSet etc. modifications

-- | Run a monadic action with the current stack set
withWindowSet :: (WindowSet -> HS a) -> HS a
withWindowSet f = use windowset >>= f

modifyWindowSet :: (WindowSet -> WindowSet) -> HS ()
modifyWindowSet f = modifying windowset f

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
  ws <- use windowset
  h <- mapM job $ W.hidden ws
  c : v <-
    mapM (\s -> (\w -> s {W.workspace = w}) <$> job (W.workspace s)) $
      W.current ws : W.visible ws
  modify $ \s -> s {windowset = ws {W.current = c, W.visible = v, W.hidden = h}}

--------------------------------------------------------------
-- * Outputs

lookupOutput :: RiverOutput -> HS (Maybe Output)
lookupOutput k = use _outputs <&> L.find (\x -> x.river_output == k)

lookupOutputBy :: (Output -> Bool) -> HS (Maybe Output)
lookupOutputBy f = use _outputs <&> L.find f

withOutput :: RiverOutput -> (Output -> HS ()) -> HS ()
withOutput k m = use _outputs >>= mapM_ (\x -> when (x.river_output == k) (m x))

modifyOutput :: RiverOutput -> (Output -> Output) -> HS ()
modifyOutput ro f = modifying _outputs $ map g
  where
    g out
      | out.river_output == ro = f out
      | otherwise = out

setOutputPower :: Bool -> HS ()
setOutputPower mode = do
  outs <- use _outputs
  forM_ (outs ^.. traversed . outputPower) $ \case
    Nothing -> return ()
    Just power -> do
      logInfo $ "setting output power" :# [ "on" .= mode ]
      Wlr.outputPowerSetMode power (if mode then Wlr.outputPowerModeOn else Wlr.outputPowerModeOff)

--------------------------------------------------------------
-- * Seats

lookupSeat :: RiverSeat -> HS (Maybe Seat)
lookupSeat rs = L.find (\x -> x.river_seat == rs) <$> use _seats

withSeat :: RiverSeat -> (Seat -> HS ()) -> HS ()
withSeat sid f = use _seats >>= mapM_ (\s -> when (s.river_seat == sid) (f s))

modifySeat :: RiverSeat -> (Seat -> Seat) -> HS ()
modifySeat ro f = modifying _seats $ map g
  where
    g x@Seat {}
      | x.river_seat == ro = f x
      | otherwise = x

modifySeats :: (Seat -> Bool) -> (Seat -> Seat) -> HS ()
modifySeats choose f = modifying _seats $ map g
  where
    g x
      | choose x = f x
      | otherwise = x

mapSeats :: (Seat -> HS ()) -> HS ()
mapSeats f = use _seats >>= mapM_ f

-- ** Starting Seat operations

startSeatOp :: SeatOp -> HS ()
startSeatOp seatop = modifySeats (const True) $ \seat -> seat {pending_action = S_START_OP seatop}

seatInputOverride :: String -> HS Bool -> [((ModMask, KeySym), H ())] -> HS ()
seatInputOverride seat onempty keys = modifySeats (\s -> s.name == seat) $ \s ->
  s {pending_action = S_INPUT_OVERRIDE onempty (map (second SomeAction) keys)}

--------------------------------------------------------------
-- * windows

lookupWindow :: RiverWindow -> HS (Maybe Window)
lookupWindow wid = use (_windows . to (M.lookup wid))

lookupWindows :: [RiverWindow] -> HS [Window]
lookupWindows wids = gets $ catMaybes . (\ws -> map (`M.lookup` ws) wids) . view _windows

withWindow :: RiverWindow -> (Window -> HS ()) -> HS ()
withWindow wid f = gets (M.lookup wid . view _windows) >>= (`whenJust` f)

modifyWindow :: RiverWindow -> (Window -> Window) -> HS ()
modifyWindow w f = alterWindow w (fmap f)

alterWindow :: RiverWindow -> (Maybe Window -> Maybe Window) -> HS ()
alterWindow w f = modify $ \s -> s {_windows = M.alter f w s._windows}

withFocused :: (Window -> HS ()) -> HS ()
withFocused f = use windowset >>= \ws -> whenJust (W.peek ws) (`withWindow` f)

mapWindows :: (Window -> HS ()) -> HS ()
mapWindows f = use _windows >>= mapM_ f

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
    go = do
      ws <- use windowset
      let bw = 2 :: Int -- (fromIntegral . wa_border_width) wa
      point_sc <- pointScreen (fi $ w ^. _x) (fi $ w ^. _y)

      -- ignore pointScreen for new windows unless it's the current
      -- screen, otherwise the float's relative size is computed against
      -- a different screen and the float ends up with the wrong size
      let sr_eq = (==) `on` fmap (screenRect . W.screenDetail)
          sc =
            fromMaybe (W.current ws) $
              if point_sc `sr_eq` Just (W.current ws) then point_sc else Nothing
          sr = screenRect . W.screenDetail $ sc
          x = (fi w.position.x - fi sr.x) % fi sr.width
          y = (fi w.position.y - fi sr.y) % fi sr.height
          (width', height') = {- applySizeHintsContents sh -} (fi w.size.width, fi w.size.height)
          rwidth = fi (width' + bw * 2) % fi sr.width
          rheight = fi (height' + bw * 2) % fi sr.height
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

getStateDirectory :: MonadIO m => m FilePath
getStateDirectory = do
  dir <- getXdgDirectory XdgState "hswm"
  createDirectoryIfMissing True dir
  return dir

getTimeStamp :: MonadIO m => m Int64
getTimeStamp = systemSeconds <$> io getSystemTime

restart :: String -> H ()
restart prog = do
  runInHS $ broadcastMessage ReleaseResources
  void . userCode =<< asks (view $ config . exitHook)
  statefile <- runInHS writeStateToFile
  logInfo $ "restart: executing" :# [ "program" .= prog ]
  io $ do
    res <- try $ executeFile prog True [ "--state-file", statefile ] Nothing
    case res of
      Left (SomeException e) -> hPrint stderr e >> exitFailure
      Right {} -> return ()

writeStateToFile :: HS FilePath
writeStateToFile = do
  dir <- getStateDirectory
  ts <- getTimeStamp
  let filename = printf "savedstate-%i" ts
  let filepath = dir ++ "/" ++ filename
      linkpath = dir ++ "/" ++ "savedstate"
  stateString <- dumpStateAsString
  io $ catchIO (writeFile filepath stateString >> updateLink filename linkpath) (print . show)
  logInfo $ "Wrote current WM state to disk" :# [ "statefile" .= filepath ]
  return filepath
    where
      updateLink src dst = do
        b <- doesFileExist dst
        when b $ removeFile dst
        createFileLink src dst

dumpStateAsString :: HS String
dumpStateAsString = do
  let wsData s = W.mapLayout show $ W.mapWindow winIdent $ s.windowset
        where
          winIdent w
            | Just win <- L.find (\x -> x.river_window == w) s._windows = (rwToIntPtr w, win.identifier)
            | otherwise = (rwToIntPtr w, "")
  let maybeShow (t, Right (PersistentExtension ext)) = Just (t, show ext)
      maybeShow (t, Left str) = Just (t, str)
      maybeShow _ = Nothing
      extState = mapMaybe maybeShow . M.toList . view extensibleState
  stateData <- gets $ \s -> StateData (wsData s) (extState s)
  return $! show stateData
  where
    rwToIntPtr (R.RiverWindow w) = ptrToIntPtr w

-- | Read the state of a previous xmonad instance from a file and
-- return that state.  The state file is removed after reading it.
readStateFile :: forall m l m2. (MonadUnliftIO m, MonadLogger m, LayoutClass l RiverWindow, Read (l RiverWindow))
              => Maybe FilePath
              -> HSWMConfig m2 l
              -> m (Maybe HState)
readStateFile msf xmc = do
  sfile <- case msf of
             Just x -> return x
             Nothing -> do
                  dir <- getStateDirectory
                  return $ dir ++ "/" ++ "savedstate"
  exists <- doesFileExist sfile
  if exists
     then doIt sfile
     else return Nothing

  where
    doIt :: FilePath -> m (Maybe HState)
    doIt path = do
      -- I'm trying really hard here to make sure we read the entire
      -- contents of the file before it is removed from the file system.
      res <- try @_ @SomeException $ do
        raw <- io $ withFile path ReadMode readStrict
        return $! maybeRead reads raw

      case res of
        Left e -> do
          logError $ "Failed to restore WM state from file" :# [ "exception" .= show e ]
          return Nothing
        Right sf' -> do
          logInfo $ "Restoring WM state from file" :# [ "statefile" .= path ]
          return $ do
            sf <- sf'
            let wins = W.allWindows (sfWins sf)
            let winset =
                  W.ensureTags layout xmc.workspaces $
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

    layout = Layout xmc.layoutHook
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
