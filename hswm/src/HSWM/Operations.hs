module HSWM.Operations where

import           HSWM.Core
import qualified HSWM.StackSet as W

import qualified River as R
import qualified WL.Wlr.OutputPowerManagement.Unstable.V1.Client as WLR_OPM

import qualified Data.List as L
import qualified Data.Map as M
import           Data.Ratio ((%))
import qualified Data.Set as S
import           Data.Time.Clock.System
import           System.Environment (executablePath)
import           System.IO (hGetContents, hPrint, print, writeFile)
import qualified System.Posix as Posix
import           System.Posix.Process (executeFile)
import           Text.Printf

-- * Misc. pure operations

-- | Given a point, determine the screen (if any) that contains it.
pointScreen :: Position1D -> Position1D
            -> HS (Maybe (W.Screen WorkspaceId (Layout RiverWindow) RiverWindow WorkspaceDetail ScreenId ScreenDetail))
pointScreen x y = withWindowSet $ return . L.find point . W.screens
  where
    point = pointWithin x y . screenRect . W.screenDetail

-- * Manage tasks that defer to next manage sequence

manageReveal, manageHide :: RiverWindow -> HS ()
manageReveal = flip modifyWindow $ pSetVisible ?~ True
manageHide   = flip modifyWindow $ pSetVisible ?~ False

manageKill :: Window -> HS ()
manageKill = doManage WRequestClose

-- |
-- Move and resize @w@ such that it fits inside the given rectangle, including its border.
--
-- /manage/
tileWindow :: SomeWindow a => Bool -> a -> Rectangle -> HS ()
tileWindow placeTop sw r = do
  let rw = sw ^. riverId
  withWindow_ rw $ \w -> do
    case w.fullscreen of
      Nothing -> do
        bwDef <- view $ config . borderWidth . to fi
        let bw = fromMaybe bwDef w.wBorderWidth
        -- give all windows at least 1x1 pixels
        let least x | x <= bw * 2 = 1
                    | otherwise   = x - bw * 2
        R.riverWindowProposeDimensions w.river_window (least $ fi r.size.width) (least $ fi r.size.height)
        modifyWindow rw $ \w' -> w'
            & pRenderPos ?~ Position (fi r.position.x + bw) (fi r.position.y + bw)
            & pRenderPlaceTop ?~ placeTop
      Just ro -> do
        sid <- pointScreen r.position.x r.position.y
        mo <- lookupOutputBy (\x -> Just x.screen == fmap W.screen sid)
        case mo of
            Just o
              | ro == o.river_output -> modifyWindow rw $ \w' -> w'
                  { p_render_place_top = Just placeTop }
              | otherwise -> do
                -- need to change the output where the window is fullscreened
                R.riverWindowFullscreen rw o.river_output
                modifyWindow rw $ \x -> x
                  & pRenderPlaceTop ?~ placeTop
                  & fullscreen ?~ o.river_output
                  & position .~ o.position
                  & size .~ o.size
            Nothing -> return ()

manageWindowPlaceTop :: SomeWindow a => a -> Bool -> HS ()
manageWindowPlaceTop sw top = modifyWindow sw $ pRenderPlaceTop ?~ top

manageWindowBorder :: SomeWindow a => a -> RiverColor -> HS ()
manageWindowBorder sw rc = modifyWindow sw $ pRenderBorder ?~ rc

manageWindowBorderWidth :: SomeWindow a => a -> Maybe Int32 -> HS ()
manageWindowBorderWidth sw bw = modifyWindow sw $ wBorderWidth .~ bw

doManage :: SomeWindow a => WindowManageAction -> a -> HS ()
doManage a sw = modifyWindow sw $ pManageAction <>~ [a]

----------------------------------------------------------------------------------
-- * Operations not tied to manage/render phases

{-
-- | Throw a message to the current 'LayoutClass' possibly modifying how we
-- layout the windows, in which case changes are handled through a refresh.
-}
sendMessage :: Message a => a -> HS ()
sendMessage a = do
  w <- gets $ W.workspace . W.current . view windowset
  ml' <- handleMessage (W.layout w) (SomeMessage a) `catchHS` return Nothing
  whenJust ml' $ \l' -> do
    modifyWindowSet $ \ws ->
      ws { W.current = (W.current ws)
              { W.workspace = (W.workspace $ W.current ws) { W.layout = l' } } }
    liftH manageDirty
  return ()

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
withScreenOutput sid f = mapM_ f . L.find (\o -> o.screen == sid) =<< use outputList

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
    withWindow_ rw $ \w -> do
      logInfo $ "seat: focus window" :# [ "window" .= show rw, "seat" .= s.name ]
      R.riverSeatFocusWindow s.river_seat rw
      modifySeat s.river_seat $ focused .~ rw
      -- FIXME: when focusing a newly created window, we end up here when w.x and w.y are still 0.
      -- The position is updated a bit later by the WindowDimensions event.
      when (s.suppressChangeFocus <= 0 && w ^. size /= Size 0 0) $ do
          -- modifySeat s.river_seat $ \x -> x {focused = rw}
          let Position x' y' = fromMaybe w.position w.p_render_pos
              px = x' + (fi w.size.width `div` 2)
              py = y' + (fi w.size.height `div` 2)
          logInfo $ "seat: pointer warp" :# [ "dest" .= (px, py), "seat" .= s.name, "window" .= show w.river_window ]
          io $ R.riverSeatPointerWarp s.river_seat px py

seatDisableBindingsMatching :: SomeSeat a => a -> [ModMask] -> [KeySym] -> HS ()
seatDisableBindingsMatching rs mods keys = withSeat_ rs $ \s -> do
  let binds = s.xkb_bindings
      matchedKeys  = S.filter match (M.keysSet binds)
      matchedBinds = M.fromSet (binds M.!) matchedKeys
  logInfo $ "seat: temporarily disabling bindings" :# [ "count" .= length matchedBinds ]
  io . forM_ matchedBinds $ deRefStablePtr >=> R.riverXkbBindingDisable . (.riverXkbBinding)
  where
    match (mod', key) = any (\m -> m .&. mod' > 0) mods || key `elem` keys

seatEnableBindingsMatching :: SomeSeat a => a -> [ModMask] -> [KeySym] -> HS ()
seatEnableBindingsMatching rs mods keys = withSeat_ rs $ \s -> do
  let binds = s.xkb_bindings
      matchedKeys  = S.filter match (M.keysSet binds)
      matchedBinds = M.fromSet (binds M.!) matchedKeys
  logInfo $ "seat: restoring bindings to enabled" :# [ "seat" .= show (rs ^. riverId), "count" .= length matchedBinds ]
  io . forM_ matchedBinds $ deRefStablePtr >=> R.riverXkbBindingEnable . (.riverXkbBinding)
  where
    match (mod', key) = any (\m -> m .&. mod' > 0) mods || key `elem` keys

--------------------------------------------------------------

-- * Render sequence / defer to render sequence

-- | /render sequence/
reveal, hide :: RiverWindow -> HS ()
reveal rw = withWindow_ rw $ \_ -> R.riverWindowShow rw
hide rw = withWindow_ rw $ \_ -> R.riverWindowHide rw

-- | /render sequence/ Draw borders on the the window.
setWindowBorder :: RiverWindow -> Int32 -> RiverColor -> HS ()
setWindowBorder w wbWidth wbColor = withWindow_ w $ \_ -> do
  wbEdges <- asks $ view (config . borderEdges)
  liftIO $ riverWindowSetBorders w R.WindowBorders {..}

riverWindowSetBorders :: RiverWindow -> R.WindowBorders -> IO ()
riverWindowSetBorders w R.WindowBorders {wbColor = RiverColor{..}, ..} =
  R.riverWindowSetBorders w wbEdges wbWidth red green blue alpha

setWindowPosition :: Window -> Int32 -> Int32 -> HS ()
setWindowPosition w x y = do
  R.riverNodeSetPosition w.node x y
  modifyWindow w.river_window $ _x .~ x &+ _y .~ y

--------------------------------------------------------------
-- * WindowSet etc. modifications

-- | Run a monadic action with the current stack set
withWindowSet :: (WindowSet -> HS a) -> HS a
withWindowSet f = use windowset >>= f

modifyWindowSet :: (WindowSet -> WindowSet) -> HS ()
modifyWindowSet = modifying windowset

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

lookupOutput :: SomeOutput a => a -> HS (Maybe Output)
lookupOutput k = preuse $ outputList . eachRiverId k

lookupOutputBy :: (Output -> Bool) -> HS (Maybe Output)
lookupOutputBy f = preuse $ outputList . each . filtered f

withOutput :: SomeOutput a => a -> (Output -> HS b) -> HS (Maybe b)
withOutput k f = lookupOutput k >>= mapM f

withOutput_ :: SomeOutput a => a -> (Output -> HS ()) -> HS ()
withOutput_ k f = lookupOutput k >>= mapM_ f

modifyOutput :: SomeOutput a => a -> (Output -> Output) -> HS ()
modifyOutput k f = outputList . eachRiverId k %= f

setOutputPower :: Bool -> HS ()
setOutputPower mode = use outputList >>= traverseOf_ (each . outputPower . filtered (/= def)) f
  where
    f power = do
      logInfo $ "setting output power" :# [ "on" .= mode ]
      WLR_OPM.outputPowerSetMode power (if mode then WLR_OPM.OutputPowerModeOn else WLR_OPM.OutputPowerModeOff)

--------------------------------------------------------------
-- * Seats

lookupSeat :: SomeSeat a => a -> HS (Maybe Seat)
lookupSeat k = preuse $ seatList . eachRiverId k

withSeat :: SomeSeat a => a -> (Seat -> HS b) -> HS (Maybe b)
withSeat k f = lookupSeat k >>= mapM f

withSeat_ :: SomeSeat a => a -> (Seat -> HS ()) -> HS ()
withSeat_ k f = lookupSeat k >>= mapM_ f

modifySeat :: SomeSeat a => a -> (Seat -> Seat) -> HS ()
modifySeat k f = seatList . eachRiverId k %= f

modifySeats :: (Seat -> Bool) -> (Seat -> Seat) -> HS ()
modifySeats choose f = seatList . each . filtered choose %= f

-- | Use seat list read-only.
mapSeats :: GetHState m => (Seat -> m ()) -> m ()
mapSeats f = getHState >>= mapM_ f . view seatList

startSeatOp :: SeatOperation -> HS ()
startSeatOp seatop = modifySeats (const True) $ pendingAction .~ S_START_OP seatop

--------------------------------------------------------------
-- * windows

lookupWindow :: SomeWindow a => a -> HS (Maybe Window)
lookupWindow k = preuse (_windows . ix (k ^. riverId))

lookupWindows :: SomeWindow a => [a] -> HS [Window]
lookupWindows ks = gets (^.. _windows . traversed . filtered (\x -> any (riverIdEq x) ks))

withWindow :: SomeWindow a => a -> (Window -> HS b) -> HS (Maybe b)
withWindow k f = lookupWindow k >>= mapM f

withWindow_ :: SomeWindow a => a -> (Window -> HS ()) -> HS ()
withWindow_ k f = lookupWindow k >>= mapM_ f

modifyWindow :: SomeWindow a => a -> (Window -> Window) -> HS ()
modifyWindow k f = alterWindow k (fmap f)

alterWindow :: SomeWindow a => a -> (Maybe Window -> Maybe Window) -> HS ()
alterWindow k f = _windows . at (k ^. riverId) %= f

mapWindows :: (Window -> HS ()) -> HS ()
mapWindows f = use _windows >>= mapM_ f

-- Windowset

withFocused :: (Window -> HS ()) -> HS ()
withFocused f = use windowset >>= \ws -> whenJust (W.peek ws) (`withWindow_` f)

-- | Make a tiled window floating, using its suggested rectangle (modifies the windowset only).
float :: SomeWindow a => a -> HS ()
float sw = floatLocation sw >>= mapM_ go
  where
    rw = sw ^. riverId
    go (sc, rr) = modifyWindowSet $ \ws -> W.float rw rr . fromMaybe ws $ do
        i <- W.findTag rw ws
        guard $ i `elem` map (W.tag . W.workspace) (W.screens ws)
        f <- W.peek ws
        tows <- W.lookupWorkspace sc ws
        return (W.focusWindow f . W.shiftWin tows rw $ ws)

-- | Given a window, find the screen it is located on, and compute
-- the geometry of that window WRT that screen.
floatLocation :: SomeWindow a => a -> HS (Maybe (ScreenId, W.RationalRect))
floatLocation sw = withWindow sw $ \w -> do
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
        x = (fi w.position.x - fi sr.position.x) % fi sr.size.width
        y = (fi w.position.y - fi sr.position.y) % fi sr.size.height
        (width', height') = {- applySizeHintsContents sh -} (fi w.size.width, fi w.size.height)
        rwidth = fi (width' + bw * 2) % fi sr.size.width
        rheight = fi (height' + bw * 2) % fi sr.size.height
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
      Right {} -> return ()
      Left (SomeException e) -> hPrint stderr e >> exitFailure

writeStateToFile :: HS FilePath
writeStateToFile = do
    dir <- getStateDirectory
    ts  <- getTimeStamp
    let filename = printf "savedstate-%i" ts
        filepath = dir ++ "/" ++ filename
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
getProgramPath = lookupEnv "HSWM_EXECUTABLE" >>= \case
    Just x -> return x
    Nothing
      | Just getExe <- executablePath -> do
          x <- fromMaybe (error "restart: unable to get program path") <$> getExe
          setEnv "HSWM_EXECUTABLE" x
          return x
      | otherwise -> error "restart: unable to resolve program path"
