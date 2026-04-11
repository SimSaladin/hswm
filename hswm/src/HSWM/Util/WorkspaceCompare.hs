-----------------------------------------------------------------------------

-----------------------------------------------------------------------------

-- |
-- Module      :  HSWM.Util.WorkspaceCompare
-- Description :  Functions for examining, comparing, and sorting workspaces.
-- Copyright   :  (c) Spencer Janssen <spencerjanssen@gmail.com>
-- License     :  BSD3-style (see LICENSE)
--
-- Maintainer  :  Spencer Janssen <spencerjanssen@gmail.com>
-- Stability   :  unstable
-- Portability :  unportable
module HSWM.Util.WorkspaceCompare
  ( WorkspaceCompare,
    WorkspaceSort,
    filterOutWs,
    getWsIndex,
    getWsCompare,
    getWsCompareByTag,
    getXineramaPhysicalWsCompare,
    getXineramaWsCompare,
    mkWsSort,
    getSortByIndex,
    getSortByTag,
    getSortByXineramaPhysicalRule,
    getSortByXineramaRule,
  )
where

import Data.List (elemIndex, find, sortBy)
import Data.Maybe (fromJust)
import HSWM
import HSWM.Actions.PhysicalScreens (ScreenComparator (ScreenComparator), getScreenIdAndRectangle, screenComparatorById)
import HSWM.StackSet qualified as S

type WorkspaceCompare = WorkspaceId -> WorkspaceId -> Ordering

type WorkspaceSort = [WindowSpace] -> [WindowSpace]

-- | Transforms a workspace list by filtering out the workspaces that
-- correspond to the given 'tag's.  Intended for use with 'logHook's (see
-- 'XMonad.Hooks.StatusBar.PP.filterOutWsPP') and "XMonad.Hooks.EwmhDesktops"
-- (see 'XMonad.Hooks.EwmhDesktops.addEwmhWorkspaceSort').
filterOutWs :: [WorkspaceId] -> WorkspaceSort
filterOutWs ws = filter (\S.Workspace {S.tag = tag} -> tag `notElem` ws)

-- | Lookup the index of a workspace id in the user's config, return Nothing
-- if that workspace does not exist in the config.
getWsIndex :: H (WorkspaceId -> Maybe Int)
getWsIndex = do
  spaces <- asks (workspaces . config)
  return $ flip elemIndex spaces

-- | Compare Maybe's differently, so Nothing (i.e. workspaces without indexes)
-- come last in the order
indexCompare :: Maybe Int -> Maybe Int -> Ordering
indexCompare Nothing Nothing = EQ
indexCompare Nothing (Just _) = GT
indexCompare (Just _) Nothing = LT
indexCompare a b = compare a b

-- | A comparison function for WorkspaceId, based on the index of the
--   tags in the user's config.
getWsCompare :: HS WorkspaceCompare
getWsCompare = do
  wsIndex <- liftH getWsIndex
  return $ mconcat [indexCompare `on` wsIndex, compare]

-- | A simple comparison function that orders workspaces
--   lexicographically by tag.
getWsCompareByTag :: HS WorkspaceCompare
getWsCompareByTag = return compare

-- | A comparison function for Xinerama based on visibility, workspace
--   and screen id. It produces the same ordering as
--   'XMonad.Hooks.StatusBar.PP.pprWindowSetXinerama'.
getXineramaWsCompare :: HS WorkspaceCompare
getXineramaWsCompare = getXineramaPhysicalWsCompare $ screenComparatorById compare

-- | A comparison function like 'getXineramaWsCompare', but uses physical locations for screens.
getXineramaPhysicalWsCompare :: ScreenComparator -> HS WorkspaceCompare
getXineramaPhysicalWsCompare (ScreenComparator sc) = do
  w <- gets windowset
  return $ \a b -> case (isOnScreen a w, isOnScreen b w) of
    (True, True) -> compareUsingScreen w a b
    (False, False) -> compare a b
    (True, False) -> LT
    (False, True) -> GT
  where
    onScreen w = S.current w : S.visible w
    isOnScreen a w = a `elem` map (S.tag . S.workspace) (onScreen w)
    tagToScreen s x = fromJust $ find ((== x) . S.tag . S.workspace) s
    compareUsingScreen w = sc `on` getScreenIdAndRectangle . tagToScreen (onScreen w)

-- | Create a workspace sorting function from a workspace comparison
--   function.
mkWsSort :: HS WorkspaceCompare -> HS WorkspaceSort
mkWsSort cmpX = do
  cmp <- cmpX
  return $ sortBy (\a b -> cmp (S.tag a) (S.tag b))

-- | Sort several workspaces according to their tags' indices in the
--   user's config.
getSortByIndex :: HS WorkspaceSort
getSortByIndex = mkWsSort getWsCompare

-- | Sort workspaces lexicographically by tag.
getSortByTag :: HS WorkspaceSort
getSortByTag = mkWsSort getWsCompareByTag

-- | Sort serveral workspaces for xinerama displays, in the same order
--   produced by 'XMonad.Hooks.StatusBar.PP.pprWindowSetXinerama': first
--   visible workspaces, sorted by screen, then hidden workspaces,
--   sorted by tag.
getSortByXineramaRule :: HS WorkspaceSort
getSortByXineramaRule = mkWsSort getXineramaWsCompare

-- | Like 'getSortByXineramaRule', but allow you to use physical locations for screens.
getSortByXineramaPhysicalRule :: ScreenComparator -> HS WorkspaceSort
getSortByXineramaPhysicalRule sc = mkWsSort $ getXineramaPhysicalWsCompare sc
