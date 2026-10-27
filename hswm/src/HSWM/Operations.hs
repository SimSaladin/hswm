-- |
-- Module      : HSWM.Operations
-- Description : High-level window manager operations.
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Operations where

import Data.List qualified as L
import Data.Map qualified as M
import Data.Ratio ((%))
import HSWM.Core
import HSWM.Main.Persist qualified as Persist
import HSWM.StackSet qualified as W
import River qualified as R
import System.Posix qualified as Posix
import System.Posix.Process (executeFile)
import WL.Wlr.OutputPowerManagement.Unstable.V1.Client qualified as WLR_OPM

-- TODO: render/manage actions should not be exposed directly, but behind wrappers that wait for
-- appropriate render/manage phase.

-- * Schedule window operations to next manage or render phase

-- |
-- Move and resize @w@ such that it fits inside the given rectangle, including its border.
--
-- /manage/
tileWindow :: (SomeWindow a, MonadHS m, MonadHConf m, MonadEffects m) => a -> Rectangle -> m ()
tileWindow sw r = do
  let rw = sw ^. riverId
  withWindow_ rw $ \w ->
    case w.fullscreen of
      Nothing -> do
        bwDef <- view $ config . borderWidth . to fi
        let bw = fromMaybe bwDef w.wBorderWidth
        -- give all windows at least 1x1 pixels
        let least x
              | x <= bw * 2 = 1
              | otherwise = x - bw * 2
        R.riverWindowProposeDimensions w.river_window (least $ fi r.size.width) (least $ fi r.size.height)
        doRender (WRPosition $ Position (fi r.position.x + bw) (fi r.position.y + bw)) rw
      Just ro -> do
        sid <- pointScreen r.position.x r.position.y
        mo <- lookupOutputBy (\x -> Just x.screen == fmap W.screen sid)
        case mo of
          -- need to change the output where the window is fullscreened
          Just o | ro /= o.river_output -> do
            R.riverWindowFullscreen rw o.river_output
            runInHS $ modifyWindow rw $ fullscreen ?~ o.river_output &+ position .~ o.position &+ size .~ o.size
          _ -> return ()

-- | Mark the window to be revealed or hidden in next manage sequence.
manageReveal, manageHide :: (SomeWindow a, MonadHS m) => a -> m ()
manageReveal = doRender WRReveal
manageHide = doRender WRHide

-- | Mark the window to be closed in the next manage sequence.
manageKill :: (SomeWindow a, MonadHS m) => a -> m ()
manageKill = doManage WRequestClose

doManage :: (SomeWindow a, MonadHS m) => WindowManageAction -> a -> m ()
doManage a sw = runInHS $ modifyWindow sw $ pManageAction <>~ [a]

doRender :: (SomeWindow a, MonadHS m) => WindowRenderAction -> a -> m ()
doRender a sw = runInHS $ modifyWindow sw $ pendingRender <>~ [a]

windowPlaceTop :: (SomeWindow a, MonadHS m) => a -> m ()
windowPlaceTop = doRender WRPlaceTop

windowPlaceBottom :: (SomeWindow a, MonadHS m) => a -> m ()
windowPlaceBottom = doRender WRPlaceBottom

-- | Set the window border color
manageWindowBorder :: (SomeWindow a, MonadHS m) => a -> RiverColor -> m ()
manageWindowBorder sw rc = do
  modifyWindow sw $ borderColor ?~ rc
  doRender WRBorder sw

manageWindowBorderWidth :: (SomeWindow a, MonadHS m) => a -> Maybe Int32 -> m ()
manageWindowBorderWidth sw bw = do
  modifyWindow sw $ wBorderWidth .~ bw
  doRender WRBorder sw

----------------------------------------------------------------------------------

-- * Operations not tied to manage/render phases

-- | Send a message to all layouts, without refreshing.
broadcastMessage :: (Message a, MonadHS m) => a -> m ()
broadcastMessage a = withWindowSet $ \ws -> do
  -- this is O(n²), but we can't really fix this as there's code in
  -- xmonad-contrib that touches the windowset during handleMessage
  -- (returning Nothing for changes to not get overwritten), so we
  -- unfortunately need to do this one by one and persist layout states
  -- of each workspace separately)
  let c = W.workspace . W.current $ ws
      v = map W.workspace . W.visible $ ws
      h = W.hidden ws
  runInHS $ mapM_ (sendMessageWithNoRefresh a) (c : v ++ h)

-- | Throw a message to the current 'LayoutClass' possibly modifying how we
-- layout the windows, in which case changes are handled through a refresh.
sendMessage :: (Message a, MonadHS m) => a -> m ()
sendMessage a = runInHS $ do
  w <- gets $ W.workspace . W.current . view windowset
  ml' <- handleMessage (W.layout w) (SomeMessage a) `catchHS` return Nothing
  whenJust ml' $ \l' -> do
    modifyWindowSet $ \ws ->
      ws
        { W.current =
            (W.current ws)
              { W.workspace = (W.workspace $ W.current ws){W.layout = l'}
              }
        }
    manageDirty
  return ()

-- | Send a message to a layout, without refreshing.
sendMessageWithNoRefresh :: (Message a, MonadHS m) => a -> WindowSpace -> m ()
sendMessageWithNoRefresh a w = runInHS $
  handleMessage (W.layout w) (SomeMessage a) `catchHS` return Nothing
    >>= updateLayout (W.tag w)

-- | Force new manage sequence.
manageDirty :: (MonadH m) => m ()
manageDirty = liftH $ do
  -- logDebug $ "wm request: manage_dirty" :# ["stack" .= prettyCallStack callStack]
  withObject R.riverWindowManagerManageDirty
  -- not sure if this is ever necessary??
  writeMainQ MainCont

--------------------------------------------------------------

-- * Manage sequence /only/

-- NOTE: these operations can only be executed within an active render phase!

-- | Set the focus to the window on top of the stack, or root
--
-- /manage sequence/ focus a window in every seat.
setTopFocus :: (MonadEffects m, MonadHS m) => m ()
setTopFocus = withWindowSet $ maybe (pure ()) setTopFocus' . W.peek

-- | Set the specified window as focus (all seats).
setTopFocus' :: (MonadHS m, MonadEffects m) => RiverWindow -> m ()
setTopFocus' rw = mapSeats $ \s -> do
  when (s.focused /= rw) $ do
    withWindow_ rw $ \w -> do
      -- logDebug $ "seat: focus window" :# [ "window" .= show rw, "seat" .= s.name ]
      R.riverSeatFocusWindow s.river_seat rw
      modifySeat s.river_seat $ focused .~ rw
      -- FIXME: when focusing a newly created window, we end up here when w.x and w.y are still 0.
      -- The position is updated a bit later by the WindowDimensions event.
      when (s.suppressChangeFocus <= 0 && w ^. size /= Size 0 0) $ do
        let Position x' y' = fromMaybe w.position $ listToMaybe [pos | WRPosition pos <- w.pendingRender]
            px = x' + (fi w.size.width `div` 2)
            py = y' + (fi w.size.height `div` 2)
        -- logDebug $ "seat: pointer warp" :# [ "dest" .= (px, py), "seat" .= s.name, "window" .= show w.river_window ]
        io $ R.riverSeatPointerWarp s.river_seat px py

-- | See "GrabKeyboard" for reasoning why these exist.
seatDisableBindingsMatching :: (SomeSeat a, GetHState m, MonadEffects m) => a -> [ModMask] -> [KeySym] -> m ()
seatDisableBindingsMatching rs mods keys = do
  found <- lookupMatchingKeyBindings rs $ \(XBKey mod' key) -> any (\m -> m .&. mod' > 0) mods || key `elem` keys
  logInfo $ "seat: temporarily disabling bindings" :# ["count" .= length found]
  io $ forM_ found R.riverXkbBindingDisable

seatEnableBindingsMatching :: (SomeSeat a, GetHState m, MonadEffects m) => a -> [ModMask] -> [KeySym] -> m ()
seatEnableBindingsMatching rs mods keys = do
  found <- lookupMatchingKeyBindings rs $ \(XBKey mod' key) -> any (\m -> m .&. mod' > 0) mods || key `elem` keys
  logInfo $ "seat: restoring bindings to enabled" :# ["seat" .= show (rs ^. riverId), "count" .= length found]
  io $ forM_ found R.riverXkbBindingEnable

-- | Result is restricted to th eenabled (supposed to be) bindings under current keymap (usually base).
lookupMatchingKeyBindings :: (SomeSeat ss, MonadEffects m, GetHState m) => ss -> (XBKey -> Bool) -> m [R.RiverXkbBinding]
lookupMatchingKeyBindings ss match = fmap (fromMaybe mempty) $ withSeat ss $ \s ->
  return $ s ^. keyBindingsState . riverBoundKeys & (`M.restrictKeys` (s ^. keyBindingsState . riverBoundKeysEnabled)) & M.filterWithKey (\k _ -> match k) & M.elems

--------------------------------------------------------------

-- * Render sequence / defer to render sequence

-- NOTE: these operations can only be executed within an active render phase!

-- | /render sequence/
reveal, hide :: (MonadEffects m, GetHState m) => RiverWindow -> m ()
reveal rw = withWindow_ rw $ \_ -> R.riverWindowShow rw
hide rw = withWindow_ rw $ \_ -> R.riverWindowHide rw

-- | /render sequence/ Draw borders on the the window.
setWindowBorder :: (MonadHConf m, GetHState m) => RiverWindow -> Int32 -> RiverColor -> m ()
setWindowBorder w wbWidth wbColor = withWindow_ w $ \_ -> do
  wbEdges <- asks $ view (config . borderEdges)
  riverWindowSetBorders w R.WindowBorders{..}

riverWindowSetBorders :: MonadEffects m => RiverWindow -> R.WindowBorders -> m ()
riverWindowSetBorders w R.WindowBorders{wbColor = RiverColor{..}, ..} =
  R.riverWindowSetBorders w wbEdges wbWidth red green blue alpha

-- * State modifying

setWindowPosition :: (MonadEffects m, MonadHS m) => Window -> Int32 -> Int32 -> m ()
setWindowPosition w x y = runInHS $ do
  R.riverNodeSetPosition w.node x y
  modifyWindow w.river_window $ _x .~ x &+ _y .~ y

--------------------------------------------------------------

-- * WindowSet operations
-- ** Query the stack

-- | Run a monadic action with the current stack set
withWindowSet :: GetHState m => (WindowSet -> m a) -> m a
withWindowSet f = getHState >>= f . view windowset

-- | Return workspace visible on screen @sc@, or 'Nothing'.
screenWorkspace :: GetHState m => ScreenId -> m (Maybe WorkspaceId)
screenWorkspace sc = withWindowSet $ return . W.lookupWorkspace sc

-- | Given a window, find the screen it is located on, and compute
-- the geometry of that window WRT that screen.
floatLocation :: (SomeWindow a, GetHState m) => a -> m (Maybe (ScreenId, W.RationalRect))
floatLocation sw = withWindow sw $ \w -> do
  ws <- getHState <&> view windowset
  let bw = 2 :: Int -- (fromIntegral . wa_border_width) wa
  point_sc <- pointScreen (fi $ w ^. _x) (fi $ w ^. _y)
  -- ignore pointScreen for new windows unless it's the current
  -- screen, otherwise the float's relative size is computed against
  -- a different screen and the float ends up with the wrong size
  let sr_eq = (==) `on` fmap (view rectangle . W.screenDetail)
      sc =
        fromMaybe (W.current ws) $
          if point_sc `sr_eq` Just (W.current ws) then point_sc else Nothing
      sr = view rectangle . W.screenDetail $ sc
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

-- | Given a point, determine the screen (if any) that contains it.
pointScreen ::
  (GetHState m) => Position1D -> Position1D
  -> m (Maybe (W.Screen WorkspaceId (Layout RiverWindow) RiverWindow WorkspaceDetail ScreenId ScreenDetail))
pointScreen x y = withWindowSet $ return . L.find point . W.screens
  where
    point = pointWithin x y . view rectangle . W.screenDetail

--------------------------------------------------------------

-- ** Modify the Stack

-- | Set the layout of the currently viewed workspace.
setLayout :: MonadHS m => Layout RiverWindow -> m ()
setLayout l = runInHS $ do
  ss@W.StackSet{W.current = c@W.Screen{W.workspace = ws}} <- use windowset
  _ <- handleMessage (W.layout ws) (SomeMessage ReleaseResources)
  windows $ const $ ss{W.current = c{W.workspace = ws{W.layout = l}}}

-- | Update the layout field of a workspace.
updateLayout :: MonadHS m => WorkspaceId -> Maybe (Layout RiverWindow) -> m ()
updateLayout i ml = whenJust ml $ \l ->
  runOnWorkspaces $ \ww -> return $ if W.tag ww == i then ww{W.layout = l} else ww

windows :: MonadHS m => (WindowSet -> WindowSet) -> m ()
windows = modifyWindowSet

modifyWindowSet :: MonadHS m => (WindowSet -> WindowSet) -> m ()
modifyWindowSet = runInHS . modifying windowset

-- | This is basically a map function, running a function in the 'H' monad on
-- each workspace with the output of that function being the modified workspace.
runOnWorkspaces :: MonadHS m => (WindowSpace -> HS WindowSpace) -> m ()
runOnWorkspaces job = runInHS $ do
  ws <- use windowset
  h <- mapM job $ W.hidden ws
  c : v <-
    mapM (\s -> (\w -> s{W.workspace = w}) <$> job (W.workspace s)) $
      W.current ws : W.visible ws
  modify $ \s -> s{windowset = ws{W.current = c, W.visible = v, W.hidden = h}}

-- | Make a tiled window floating, using its suggested rectangle
-- (modifies the windowset only).
float :: (SomeWindow a, MonadHS m) => a -> m ()
float sw = floatLocation sw >>= mapM_ go
  where
    rw = sw ^. riverId
    go (sc, rr) = runInHS $ modifyWindowSet $ \ws -> W.float rw rr . fromMaybe ws $ do
      i <- W.findTag rw ws
      guard $ i `elem` map (W.tag . W.workspace) (W.screens ws)
      f <- W.peek ws
      tows <- W.lookupWorkspace sc ws
      return (W.focusWindow f . W.shiftWin tows rw $ ws)

--------------------------------------------------------------

-- * Output lookup and manipulation

lookupOutput :: (SomeOutput a, GetHState m) => a -> m (Maybe Output)
lookupOutput k = getHState <&> preview (outputList . eachRiverId k)

lookupOutputBy :: GetHState m => (Output -> Bool) -> m (Maybe Output)
lookupOutputBy f = getHState <&> preview (outputList . each . filtered f)

withOutput :: (SomeOutput a, GetHState m) => a -> (Output -> m b) -> m (Maybe b)
withOutput k f = lookupOutput k >>= mapM f

withOutput_ :: (SomeOutput a, GetHState m) => a -> (Output -> m ()) -> m ()
withOutput_ k f = lookupOutput k >>= mapM_ f

withScreenOutput :: GetHState m => ScreenId -> (Output -> m ()) -> m ()
withScreenOutput sid f = mapM_ f . L.find (\o -> o.screen == sid) =<< (getHState <&> view outputList)

-- ** Modify outputs

modifyOutput :: (SomeOutput a, MonadHS m) => a -> (Output -> Output) -> m ()
modifyOutput k f = runInHS $ outputList . eachRiverId k %= f

setOutputPower :: MonadHS m => Bool -> m ()
setOutputPower mode = runInHS $ do
  use outputList >>= traverseOf_ (each . filtered ((/= def) . view outputPower)) f
  where
    f output = do
      logInfo $ "Setting output power" :# ["on" .= mode, "output" .= show output.river_output, "opmId" .= show output.outputPower]
      WLR_OPM.outputPowerSetMode output.outputPower $
        if mode
          then WLR_OPM.OutputPowerModeOn
          else WLR_OPM.OutputPowerModeOff

--------------------------------------------------------------

-- * Seat lookup & manipulation

lookupSeat :: (SomeSeat a, GetHState m) => a -> m (Maybe Seat)
lookupSeat k = getHState <&> preview (seatList . eachRiverId k)

withSeat :: (SomeSeat a, GetHState m) => a -> (Seat -> m b) -> m (Maybe b)
withSeat k f = lookupSeat k >>= mapM f

withSeat_ :: (SomeSeat a, GetHState m) => a -> (Seat -> m ()) -> m ()
withSeat_ k = void . withSeat k

-- | Use seat list read-only.
mapSeats :: (GetHState m) => (Seat -> m ()) -> m ()
mapSeats f = getHState >>= mapM_ f . view seatList

-- ** Modify seats

startSeatOp :: (MonadHS m) => SeatOperation -> m ()
startSeatOp seatop = runInHS $ modifySeats (const True) $ pendingAction .~ S_START_OP seatop

modifySeat :: (SomeSeat a, MonadHS m) => a -> (Seat -> Seat) -> m ()
modifySeat k f = runInHS $ seatList . eachRiverId k %= f

-- | Casts the pointer into @RiverSeat@.
modifySeat' :: (MonadHS m) => Ptr Void -> (Seat -> Seat) -> m ()
modifySeat' ud = modifySeat (R.RiverSeat $ castPtr ud)

modifySeats :: (MonadHS m) => (Seat -> Bool) -> (Seat -> Seat) -> m ()
modifySeats choose f = runInHS $ seatList . each . filtered choose %= f

--------------------------------------------------------------

-- * Window lookup & manipulation

lookupWindow :: (SomeWindow a, GetHState m) => a -> m (Maybe Window)
lookupWindow k = getHState <&> preview (_windows . ix (k ^. riverId))

lookupWindows :: (SomeWindow a, GetHState m) => [a] -> m [Window]
lookupWindows ks = getHState <&>
  (^.. _windows . traversed . filtered (\x -> any (riverIdEq x) ks))

withWindow :: (SomeWindow a, GetHState m) => a -> (Window -> m b) -> m (Maybe b)
withWindow k f = lookupWindow k >>= mapM f

withWindow_ :: (SomeWindow a, GetHState m) => a -> (Window -> m ()) -> m ()
withWindow_ k f = lookupWindow k >>= mapM_ f

mapWindows :: (GetHState m) => (Window -> m ()) -> m ()
mapWindows f = (getHState <&> view _windows) >>= mapM_ f

withFocused :: (GetHState m) => (Window -> m ()) -> m ()
withFocused  f = (getHState <&> view windowset) >>= (`whenJust` (`withWindow_` f)) . W.peek

-- ** Modify windows

modifyWindow :: (SomeWindow a, MonadHS m) => a -> (Window -> Window) -> m ()
modifyWindow k f = alterWindow k (fmap f)

modifyWindow' :: (SomeWindow a, MonadEffects m, MonadHS m) => a -> (Window -> Window) -> m ()
modifyWindow' w = runInHS . modifyWindow w

alterWindow :: (SomeWindow a, MonadHS m) => a -> (Maybe Window -> Maybe Window) -> m ()
alterWindow k f = runInHS $ _windows . at (k ^. riverId) %= f

-------------------------------------------------------------------

-- * Restart (with state)

restart :: (HasCallStack) => FilePath -> H ()
restart prog0 = findExecutable prog0 >>= maybe notFound restart'
  where
    notFound = logError $ "not restarting: did not find desired executable" :# ["executable" .= prog0]
    restart' prog = do
      runInHS $ broadcastMessage ReleaseResources
      logInfo "Running exit hooks..."
      void . userCode =<< asks (view $ config . exitHook)
      statefile <- runInHS Persist.writeStateToFile
      let args = ["--state-file", statefile]
      logInfo $ "Now restarting! Executing file " <> toText prog <> "..." :# ["args" .= args]
      io =<< view _loggerCleanup
      res <- io $ try $ executeFile prog True args Nothing
      logError $
        "Uh-oh, executing the new program appears to have failed!"
          :# ["reason" .= show e | Left (e :: IOException) <- [res]]

-- | Trigger restart by signal (USR2).
sendRestart :: (MonadIO m) => m ()
sendRestart = io $ Posix.raiseSignal Posix.sigUSR2
