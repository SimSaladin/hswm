------------------------------------------------------------------------------
-- |
-- Module      : HSWM.Actions.WindowNavigation
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Re-implementation of 'XMonad.Actions.WindowNavigation' and similar solutions.
--
------------------------------------------------------------------------------
module HSWM.Actions.WindowNavigation
  ( mkWindowNavigationKeys
  , WNAction(..)
  , go
  , swap
  ) where

import           HSWM.Core hiding (Window)
import qualified HSWM.StackSet as W
import           HSWM.Operations hiding (mapWindows)
import           HSWM.Config

import qualified Data.List as L
import qualified Data.Map as M
import qualified Data.Set as S

type Window = RiverWindow -- XXX

-- | Creates key actions and appropriate logHook to enable WindowNavigation
-- in your config.
-- @
--      mkWindowNavigationKeys "abcd" ("M", "M-S")
-- @
mkWindowNavigationKeys
  :: (key, key, key, key)    -- ^ keys for (Up, Left, Down, Right)
  -> (mask, mask)            -- ^ mask for (go-to-window, swap-window)
  -> (mask -> key -> a)      -- ^ how to combine keys with masks
  -> IO ([(a, SomeAction H)], H ()) -- ^ (keyBindings, logHook)
mkWindowNavigationKeys (u, l, d, r) (modGo, modSwap) f = do
  stateRef <- newIORef mempty
  return (
     [ (f modGo   u, fromWNAction stateRef $ WNGo   U),
       (f modGo   l, fromWNAction stateRef $ WNGo   L),
       (f modGo   d, fromWNAction stateRef $ WNGo   D),
       (f modGo   r, fromWNAction stateRef $ WNGo   R),
       (f modSwap u, fromWNAction stateRef $ WNSwap U),
       (f modSwap l, fromWNAction stateRef $ WNSwap L),
       (f modSwap d, fromWNAction stateRef $ WNSwap D),
       (f modSwap r, fromWNAction stateRef $ WNSwap R) ], trackMovement stateRef)
  where
    fromWNAction stateRef x@(WNGo dir)   = namedA (show x) $ go   stateRef dir
    fromWNAction stateRef x@(WNSwap dir) = namedA (show x) $ swap stateRef dir

-- | Focus window in the given direction.
go :: IORef WNState -> Direction2D -> H ()
go stateRef dir = runPureAction stateRef (goPure dir)

-- | Swap current window with the window in the given direction.
-- Note: doesn't work with floating windows (don't think it makes much sense to swap floating windows).
swap :: IORef WNState -> Direction2D -> H ()
swap stateRef dir = runPureAction stateRef (swapPure dir)

-- | Run the pure action inside H monad.
runPureAction :: IORef WNState -> (WNInput HS -> HS WNOutput) -> H ()
runPureAction stateRef action = runInHS $ do
  oldState <- io (readIORef stateRef)
  oldWindowSet <- gets windowset
  mappedWindows <- M.keysSet <$> gets _windows
  (newState, newWindowSet) <- action (oldState, oldWindowSet, mappedWindows, windowRectX)
  modifyWindowSet (const newWindowSet)
  io $ writeIORef stateRef newState

-- | Version of `go` not dependent on H monad (needed for testing).
goPure :: Monad x => Direction2D -> WNInput x -> x WNOutput
goPure dir input@(oldState, oldWindowSet, mappedWindows, _) =
  if length (filter (`S.member` mappedWindows) $ W.integrate' $ W.stack $ W.workspace $ W.current oldWindowSet) == 1
  then
    -- Handle the special case of Full layout, when there's only one mapped window on a screen.
    return ( oldState
           , case dir of
               U -> W.focusUp oldWindowSet
               L -> W.focusDown oldWindowSet
               D -> W.focusDown oldWindowSet
               R -> W.focusUp oldWindowSet
           )
  else
    withTargetWindow W.focusWindow dir input

-- | Version of `swap` not dependent on H monad (needed for testing).
swapPure :: Monad x => Direction2D -> WNInput x -> x WNOutput
swapPure = withTargetWindow swapWithFocused
  where swapWithFocused targetWin winSet =
            case W.peek winSet of
                Just currentWin -> W.focusWindow currentWin $
                                   mapWindows (swapWin currentWin targetWin) winSet
                Nothing -> winSet
        mapWindows f = W.mapWorkspace (mapWindows' f)
        mapWindows' f ws@W.Workspace{ W.stack = s } = ws { W.stack = mapWindows'' f <$> s }
        mapWindows'' f (W.Stack focused up down) = W.Stack (f focused) (map f up) (map f down)
        swapWin win1 win2 win
          | win == win1 = win2
          | win == win2 = win1
          | otherwise = win

data WNAction = WNGo Direction2D | WNSwap Direction2D
  deriving (Eq, Show, Read, Generic)

type WNState = M.Map WorkspaceId Point

type WindowRectFn x = (Window -> x (Maybe Rectangle))
-- | (state, oldWindowSet, mappedWindows, windowRect)
type WNInput x = (WNState, WindowSet, S.Set Window, WindowRectFn x)
type WNOutput = (WNState, WindowSet)

-- | Select a target window in the given direction and modify the WindowSet.
-- 1. Get current position, verifying it matches the current window (exit if no focused window).
-- 2. Get the target window.
-- 3. Execute an action on the target window and windowset.
-- 4. Set the new position.
withTargetWindow :: Monad x => (Window -> WindowSet -> WindowSet) -> Direction2D -> WNInput x -> x WNOutput
withTargetWindow adj dir input@(oldState, oldWindowSet, _, _) = do
  whenJust' (getCurrentWindow input) (oldState, oldWindowSet) $ \(win, winRect, pos) -> do
    targetMaybe <- L.find ((/= win) . fst) <$> navigableTargets input dir winRect pos
    whenJust' (pure targetMaybe) (oldState, oldWindowSet) $ \(targetWin, newPos) ->
      let newWindowSet = adj targetWin oldWindowSet
      in return (modifyState newWindowSet newPos oldState, newWindowSet)

-- | Update position on outside changes in windows.
trackMovement :: IORef WNState -> H ()
trackMovement stateRef = runInHS $ do
  oldState <- io (readIORef stateRef)
  oldWindowSet <- gets windowset
  mappedWindows <- gets (M.keysSet . _windows)
  whenJust' (getCurrentWindow (oldState, oldWindowSet, mappedWindows, windowRectX)) () $ \(_, _, pos) -> do
      io $ writeIORef stateRef $ modifyState oldWindowSet pos oldState

-- | Get focused window and current position.
getCurrentWindow :: Monad x => WNInput x -> x (Maybe (Window, Rectangle, Point))
getCurrentWindow input@(_, oldWindowSet, _, _) =
  whenJust' (pure $ W.peek oldWindowSet) Nothing $ \window -> do
    (pos, rect) <- currentPosition input
    return $ Just (window, rect, pos)

-- | Gets the current position from the state passed in, or if nothing
-- (say, from a restart), derives the current position from the current window.
-- Also, verifies that the position is congruent with the current window
-- (say, if you moved focus using mouse or something).
-- Returns the window rectangle for convenience, since we'll need it later anyway.
currentPosition :: Monad x => WNInput x -> x (Point, Rectangle)
currentPosition (state, oldWindowSet, _, windowRect) = do
  currentRect <- fromMaybe (Rectangle 0 0 0 0) <$> maybe (pure Nothing) windowRect (W.peek oldWindowSet)
  let posMaybe = M.lookup (W.currentTag oldWindowSet) state
      middleOf (Rectangle x y w h) = Point (midPoint x w) (midPoint y h)
  return $ case posMaybe of
    Nothing -> (middleOf currentRect, currentRect)
    Just pos -> (centerPosition currentRect pos, currentRect)

-- | Inserts new position into the state.
modifyState :: WindowSet -> Point -> WNState -> WNState
modifyState oldWindowSet =
  M.insert (W.currentTag oldWindowSet)

-- | "Jumps" the current position into the middle of target rectangle.
-- (keeps the position as-is if it is already inside the target rectangle)
centerPosition :: Rectangle -> Point -> Point
centerPosition r@(Rectangle rx ry rw rh) pos@(Point x y) = do
  if pointWithin x y r
  then pos
  else Point (midPoint rx rw) (midPoint ry rh)

midPoint :: Position -> Dimension -> Position
midPoint pos dim = pos + fromIntegral dim `div` 2

-- | Make a list of target windows we can navigate to,
-- sorted by desirability of navigation.
navigableTargets :: Monad x => WNInput x -> Direction2D -> Rectangle -> Point -> x [(Window, Point)]
navigableTargets input@(_, oldWindowSet, _, _) dir currentRect currentPos = do
  allScreensWindowsAndRectangles <- mapSnd (rectTransform dir) <$> windowRects input
  let
    screenWindows = S.fromList $ W.integrate' $ W.stack $ W.workspace $ W.current oldWindowSet
    (thisScreenWindowsAndRectangles, otherScreensWindowsAndRectangles) = L.partition (\(w, _) -> S.member w screenWindows) allScreensWindowsAndRectangles

    pos = pointTransform dir currentPos
    wr = rectTransform dir currentRect

    rectInside r = (rect_p1 r >= rect_p1 wr && rect_p1 r < rect_p2 wr && rect_p2 r > rect_p1 wr && rect_p2 r <= rect_p2 wr) &&
                   ((rect_o1 r >= rect_o1 wr && rect_o1 r < rect_o2 wr && rect_o2 r > rect_o1 wr && rect_o2 r <= rect_o2 wr) ||
                    (rect_o1 r <= rect_o1 wr && rect_o2 r >= rect_o2 wr)) -- include windows that fully overlaps current on the orthogonal axis
    sortByP2 = L.sortOn (rect_p2 . snd)
    posBeforeEdge r = point_p pos < rect_p2 r

    rectOverlapsEdge r = rect_p1 r <= rect_p2 wr && rect_p2 r > rect_p2 wr &&
                         rect_o1 r < rect_o2 wr && rect_o2 r > rect_o1 wr
    rectOverlapsOneEdge r = rectOverlapsEdge r && rect_p1 r > rect_p1 wr
    rectOverlapsBothEdges r = rectOverlapsEdge r &&
                              rect_o1 r > rect_o1 wr && rect_o2 r < rect_o2 wr && point_o pos >= rect_o1 r && point_o pos < rect_o2 r
    distanceToRectEdge r = max (max 0 (rect_o1 r - point_o pos)) (max 0 (point_o pos + 1 - rect_o2 r))
    distanceToRectCenter r =
      let distance = (rect_o1 r + rect_o2 r) `div` 2 - point_o pos
      in if distance <= 0
         then distance + 1
         else distance
    sortByPosDistance = L.sortOn ((\r -> (rect_p1 r, distanceToRectEdge r, distanceToRectCenter r)) . snd)

    rectOutside r = rect_p1 r < rect_p1 wr && rect_p2 r > rect_p2 wr &&
                    rect_o1 r < rect_o1 wr && rect_o2 r > rect_o2 wr
    sortByLength = L.sortOn (rect_psize . snd)

    rectAfterEdge r = rect_p1 r > rect_p2 wr

    -- Modified from David Roundy and Devin Mullins original implementation of WindowNavigation:
    inr r = point_p pos < rect_p2 r && point_o pos >= rect_o1 r && point_o pos < rect_o2 r

    clamp v v1 v2 | v < v1 = v1
                  | v >= v2 = v2 - 1
                  | otherwise = v
    dragPos r = DirPoint (max (point_p pos) (rect_p1 r)) (clamp (point_o pos) (rect_o1 r) (rect_o2 r))

  return $ mapSnd (inversePointTransform dir) $ concat
    [
      -- First, navigate to windows that are fully inside current window
      -- and have higher coordinate bigger than current position.
      -- ┌──────────────────┐
      -- │   current        │  (all examples assume direction=R)
      -- │    ┌──────────┐  │
      -- │  ──┼─► inside │  │
      -- │    └──────────┘  │
      -- └──────────────────┘
      -- Also include windows fully overlapping current on the orthogonal axis:
      --             ┌──────────────┐
      --             │ overlapping  │
      -- ┌───────────┤              ├────┐
      -- │ current ──┼─►            │    │
      -- └───────────┤              ├────┘
      --             └──────────────┘
      mapSnd dragPos $ sortByP2 $ filterSnd posBeforeEdge $ filterSnd rectInside thisScreenWindowsAndRectangles

      -- Then navigate to windows that touch or overlap the edge of current window in the chosen direction.
      -- ┌──────────────┬─────────────┐   ┌───────────┐                   ┌─────────────┐
      -- │ current      │ adjacent    │   │ current   │                   │ current     │
      -- │            ──┼─►           │   │       ┌───┴───────────────┐   │         ┌───┴─────────────┐
      -- │              │             │   │     ──┼─► │   overlapping │   │       ──┼─►               │
      -- │              ├─────────────┘   │       └───┬───────────────┘   └─────────┤     overlapping │
      -- │              │                 │           │                             │                 │
      -- └──────────────┘                 └───────────┘                             └─────────────────┘
    , mapSnd dragPos $ sortByPosDistance $ filterSnd rectOverlapsOneEdge thisScreenWindowsAndRectangles

      -- Windows fully overlapping current window "in the middle" on the parallel axis are also included,
      -- if position is inside them:
      --     ┌───────────┐
      --     │  current  │
      -- ┌───┤-----------├────────────────┐
      -- │   │     *   ──┼─►  overlapping │
      -- └───┤-----------├────────────────┘
      --     └───────────┘
    , mapSnd (\_ -> DirPoint (rect_p2 wr) (point_o pos)) $ sortByPosDistance $ filterSnd rectOverlapsBothEdges thisScreenWindowsAndRectangles

      -- Then navigate to windows that fully encompass the current window.
      -- ┌─────────────────────┐
      -- │    outer            │
      -- │  ┌─────────────┐    │
      -- │  │  current  ──┼─►  │
      -- │  └─────────────┘    │
      -- └─────────────────────┘
    , mapSnd (\_ -> DirPoint (rect_p2 wr) (point_o pos)) $ sortByLength $ filterSnd rectOutside thisScreenWindowsAndRectangles

      -- Then navigate to windows that are fully after current window in the chosen direction.
      -- ┌──────────────┐
      -- │ current      │  ┌────────────────┐
      -- │              │  │                │
      -- │            ──┼──┼─► not adjacent │
      -- │              │  │                │
      -- │              │  └────────────────┘
      -- └──────────────┘
    , mapSnd dragPos $ sortByPosDistance $ filterSnd rectAfterEdge thisScreenWindowsAndRectangles

      -- Cast a ray from the current position, jump to the first window (on another screen) that intersects this ray.
    , mapSnd dragPos $ sortByPosDistance $ filterSnd inr otherScreensWindowsAndRectangles

      -- If everything else fails, then navigate to the window that is fully inside current window,
      -- but is before the current position.
      -- This can happen when we are at the last window on a screen, and attempt to navigate even further.
      -- In this case it seems okay to jump to the remaining inner windows, since we don't have any other choice anyway,
      -- and user is probably not so fully aware of the precise position anyway.
    , mapSnd (\r -> DirPoint (rect_p2 r - 1) (clamp (point_o pos) (rect_o1 r) (rect_o2 r))) $
      sortByP2 $ filterSnd (not . posBeforeEdge) $ filterSnd rectInside thisScreenWindowsAndRectangles
    ]

-- Structs for direction-independent space - equivalent to rotating points and rectangles such that
-- navigation direction points to the right.
-- Allows us to abstract over direction in the navigation functions.
data DirPoint = DirPoint
  { point_p :: Position -- coordinate parallel to the direction
  , point_o :: Position -- coordinate orthogonal to the direction
  }
data DirRectangle = DirRectangle
  { rect_p1 :: Position -- lower rectangle coordinate parallel to the direction
  , rect_p2 :: Position -- higher rectangle coordinate parallel to the direction
  , rect_o1 :: Position -- lower rectangle coordinate orthogonal to the direction
  , rect_o2 :: Position -- higher rectangle coordinate orthogonal to the direction
  }
{- HLINT ignore "Use camelCase" -}
rect_psize :: DirRectangle -> Dimension
rect_psize r = fromIntegral (rect_p2 r - rect_p1 r)

-- | Transform a point from screen space into direction-independent space.
pointTransform :: Direction2D -> Point -> DirPoint
pointTransform dir (Point x y) = case dir of
  U -> DirPoint (negate y - 1) x
  L -> DirPoint (negate x - 1) (negate y - 1)
  D -> DirPoint y (negate x - 1)
  R -> DirPoint x y

-- | Transform a point from direction-independent space back into screen space.
inversePointTransform :: Direction2D -> DirPoint -> Point
inversePointTransform dir p = case dir of
  U -> Point (point_o p) (negate $ point_p p + 1)
  L -> Point (negate $ point_p p + 1) (negate $ point_o p + 1)
  D -> Point (negate $ point_o p + 1) (point_p p)
  R -> Point (point_p p) (point_o p)

-- | Transform a rectangle from screen space into direction-independent space.
rectTransform :: Direction2D -> Rectangle -> DirRectangle
rectTransform dir (Rectangle x y w h) = case dir of
  U -> DirRectangle (negate $ y + fromIntegral h) (negate y) x (x + fromIntegral w)
  L -> DirRectangle (negate $ x + fromIntegral w) (negate x) (negate $ y + fromIntegral h) (negate y)
  D -> DirRectangle y (y + fromIntegral h) (negate $ x + fromIntegral w) (negate x)
  R -> DirRectangle x (x + fromIntegral w) y (y + fromIntegral h)

-- | Produces a list of normal-state windows on all screens, excluding currently focused window.
windowRects :: Monad x => WNInput x -> x [(Window, Rectangle)]
windowRects (_, oldWindowSet, mappedWindows, windowRect) =
  let
    allWindows = filter (\w -> w `notElem` W.peek oldWindowSet) $ S.toList mappedWindows
    windowRect2 w = fmap (w,) <$> windowRect w
  in catMaybes <$> mapM windowRect2 allWindows

windowRectX :: Window -> HS (Maybe Rectangle)
windowRectX rw = lookupWindow rw >>= \case
  Nothing -> pure Nothing
  Just win -> return $ Just $ Rectangle (fi win.x) (fi win.y) (fi win.width) (fi win.height)

-- Maybe below functions can be replaced with some standard helper functions?

-- | Execute a monadic action on the contents if Just, otherwise wrap default value and return it.
whenJust' :: Monad x => x (Maybe a) -> b -> (a -> x b) -> x b
whenJust' monadMaybeValue deflt f = do
  maybeValue <- monadMaybeValue
  case maybeValue of
    Nothing -> return deflt
    Just value -> f value

-- | Filter a list of tuples on the second tuple member.
filterSnd :: (b -> Bool) -> [(a, b)] -> [(a, b)]
filterSnd f = filter (f . snd)

-- | Map a second tuple member in a list of tuples.
mapSnd :: (b -> b') -> [(a, b)] -> [(a, b')]
mapSnd f = map (second f)
