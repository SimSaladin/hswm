-----------------------------------------------------------------------------
-- |
-- Module      :  HSWM.Actions.CycleWS
-- Description :  Cycle through workspaces.
-- Copyright   :  (c) Joachim Breitner <mail@joachim-breitner.de>,
--                    Nelson Elhage <nelhage@mit.edu> (`toggleWS' function)
-- License     :  BSD3-style (see LICENSE)
--
-- Maintainer  :  Joachim Breitner <mail@joachim-breitner.de>
-- Stability   :  unstable
-- Portability :  unportable
--
-- Provides bindings to cycle forward or backward through the list of
-- workspaces, to move windows between workspaces, and to cycle
-- between screens.  More general combinators provide ways to cycle
-- through workspaces in various orders, to only cycle through some
-- subset of workspaces, and to cycle by more than one workspace at a
-- time.
--
-- Note that this module now subsumes the functionality of the former
-- @XMonad.Actions.RotView@.  Former users of @rotView@ can simply replace
-- @rotView True@ with @moveTo Next (Not emptyWS)@, and so on.
--
-- If you want to exactly replicate the action of @rotView@ (cycling
-- through workspace in order lexicographically by tag, instead of in
-- the order specified in the config), it can be implemented as:
--
-- > rotView b  = do t <- findWorkspace getSortByTag (bToDir b) (Not emptyWS) 1
-- >                 windows . greedyView $ t
-- >   where bToDir True  = Next
-- >         bToDir False = Prev
--
-----------------------------------------------------------------------------

module HSWM.Actions.CycleWS (
                                -- * Usage
                                -- $usage

                                -- * Moving between workspaces
                                -- $moving

                                nextWS
                              , prevWS
                              , shiftToNext
                              , shiftToPrev

                                -- * Toggling the previous workspace
                                -- $toggling
                              , toggleWS
                              , toggleWS'
                              , toggleOrView

                                -- * Moving between screens (xinerama)

                              , nextScreen
                              , prevScreen
                              , shiftNextScreen
                              , shiftPrevScreen
                              , swapNextScreen
                              , swapPrevScreen

                                -- * Moving between workspaces, take two!
                                -- $taketwo

                              , Direction1D(..)
                              , WSType(..)
                              , emptyWS
                              , hiddenWS
                              , anyWS
                              , wsTagGroup
                              , ignoringWSs

                              , shiftTo
                              , moveTo
                              , doTo

                                -- * The mother-combinator

                              , findWorkspace
                              , toggleOrDoSkip
                              , skipTags

                              , screenBy

                             ) where

--import XMonad.Prelude (find, findIndex, isJust, isNothing, liftM2)
import HSWM.Core
import HSWM.Operations
import qualified HSWM.StackSet as W
import qualified HSWM.Hooks.WorkspaceHistory as WH
import HSWM.Util.WorkspaceCompare
import qualified Data.List as L

-- $usage
-- You can use this module with the following in your @xmonad.hs@ file:
--
-- > import XMonad.Actions.CycleWS
-- >
-- > -- a basic CycleWS setup
-- >
-- >   , ((modm,               xK_Down),  nextWS)
-- >   , ((modm,               xK_Up),    prevWS)
-- >   , ((modm .|. shiftMask, xK_Down),  shiftToNext)
-- >   , ((modm .|. shiftMask, xK_Up),    shiftToPrev)
-- >   , ((modm,               xK_Right), nextScreen)
-- >   , ((modm,               xK_Left),  prevScreen)
-- >   , ((modm .|. shiftMask, xK_Right), shiftNextScreen)
-- >   , ((modm .|. shiftMask, xK_Left),  shiftPrevScreen)
-- >   , ((modm,               xK_z),     toggleWS)
--
-- If you want to follow the moved window, you can use both actions:
--
-- >   , ((modm .|. shiftMask, xK_Down), shiftToNext >> nextWS)
-- >   , ((modm .|. shiftMask, xK_Up),   shiftToPrev >> prevWS)
--
-- You can also get fancier with 'moveTo', 'shiftTo', and 'findWorkspace'.
-- For example:
--
-- >   , ((modm     , xK_f), moveTo Next emptyWS)  -- find a free workspace
-- >   , ((modm .|. controlMask, xK_Right),        -- a crazy keybinding!
-- >         do t <- findWorkspace getSortByXineramaRule Next (Not emptyWS) 2
-- >            windows . view $ t                                         )
--
-- For detailed instructions on editing your key bindings, see
-- <https://xmonad.org/TUTORIAL.html#customizing-xmonad the tutorial>.
--
-- When using the toggle functions, in order to ensure that the workspace
-- to which you switch is the previously viewed workspace, use the
-- 'logHook' in "XMonad.Hooks.WorkspaceHistory".

{- $moving

The following commands for moving the view and windows between
workspaces are somewhat inflexible, but are very simple and probably
Do The Right Thing for most users.

All of the commands in this section cycle through workspaces in the
order in which they are given in your config.

-}

-- | Switch to the next workspace.
nextWS :: H ()
nextWS = switchWorkspace 1

-- | Switch to the previous workspace.
prevWS :: H ()
prevWS = switchWorkspace (-1)

-- | Move the focused window to the next workspace.
shiftToNext :: H ()
shiftToNext = shiftBy 1

-- | Move the focused window to the previous workspace.
shiftToPrev :: H ()
shiftToPrev = shiftBy (-1)

-- $toggling

-- | Toggle to the workspace displayed previously.
toggleWS :: H ()
toggleWS = toggleWS' []

-- | Toggle to the previous workspace while excluding some workspaces.
--
-- > -- Ignore the scratchpad workspace while toggling:
-- > ("M-b", toggleWS' ["NSP"])
toggleWS' :: [WorkspaceId] -> H ()
toggleWS' skips = lastViewedHiddenExcept skips >>= flip whenJust (windows . W.view)

-- | 'XMonad.StackSet.greedyView' a workspace, or if already there, view
-- the previously displayed workspace ala weechat. Change @greedyView@ to
-- @toggleOrView@ in your workspace bindings as in the 'XMonad.StackSet.view'
-- faq at <http://haskell.org/haskellwiki/Xmonad/Frequently_asked_questions>.
-- For more flexibility see 'toggleOrDoSkip'.
toggleOrView :: WorkspaceId -> H ()
toggleOrView = toggleOrDoSkip [] W.greedyView

-- | Allows ignoring listed workspace tags (such as scratchpad's \"NSP\"), and
-- running other actions such as view, shift, etc.  For example:
--
-- > import qualified XMonad.StackSet as W
-- > import XMonad.Actions.CycleWS
-- >
-- > -- toggleOrView for people who prefer view to greedyView
-- > toggleOrView' = toggleOrDoSkip [] W.view
-- >
-- > -- toggleOrView ignoring scratchpad and named scratchpad workspace
-- > toggleOrViewNoSP = toggleOrDoSkip ["NSP"] W.greedyView
toggleOrDoSkip :: [WorkspaceId] -> (WorkspaceId -> WindowSet -> WindowSet)
                                  -> WorkspaceId -> H ()
toggleOrDoSkip skips f toWS = do
    cur <- gets (W.currentTag . windowset)
    if toWS == cur
        then lastViewedHiddenExcept skips >>= flip whenJust (windows . f)
        else windows (f toWS)

-- | List difference ('\\') for workspaces and tags. Removes workspaces
-- matching listed tags from the given workspace list.
skipTags :: (Eq i) => [W.Workspace i l a sd] -> [i] -> [W.Workspace i l a sd]
skipTags wss ids = filter ((`notElem` ids) . W.tag) wss

-- | Ignoring the skips, find the best candidate for the last viewed hidden
-- workspace.
lastViewedHiddenExcept :: [WorkspaceId] -> H (Maybe WorkspaceId)
lastViewedHiddenExcept skips = do
    hs <- gets $ map W.tag . flip skipTags skips . W.hidden . windowset
    choose hs . L.find (`elem` hs) <$> WH.workspaceHistory
    where choose []    _           = Nothing
          choose (h:_) Nothing     = Just h
          choose _     vh@(Just _) = vh

switchWorkspace :: Int -> H ()
switchWorkspace d = wsBy d >>= windows . W.greedyView

shiftBy :: Int -> H ()
shiftBy d = wsBy d >>= windows . W.shift

wsBy :: Int -> H WorkspaceId
wsBy = findWorkspace getSortByIndex Next anyWS

{- $taketwo

A few more general commands are also provided, which allow cycling
through subsets of workspaces.

For example,

>   moveTo Next emptyWS

will move to the first available workspace with no windows, and

>   shiftTo Prev (WSIs $ return (('p' `elem`) . tag))

will move the focused window backwards to the first workspace containing
the letter 'p' in its name. =)

-}

-- | What type of workspaces should be included in the cycle?
data WSType = WSIs (H (WindowSpace -> Bool))
                          -- ^ cycle through workspaces satisfying
                          --   an arbitrary predicate
            | WSType :&: WSType -- ^ cycle through workspaces satisfying both
                                --   predicates.
            | WSType :|: WSType -- ^ cycle through workspaces satisfying one of
                                --   the predicates.
            | Not WSType -- ^ cycle through workspaces not satisfying the predicate

-- | Convert a WSType value to a predicate on workspaces.
wsTypeToPred :: WSType -> H (WindowSpace -> Bool)
wsTypeToPred (WSIs p ) = p
wsTypeToPred (p :&: q) = liftM2 (&&) <$> wsTypeToPred p <*> wsTypeToPred q
wsTypeToPred (p :|: q) = liftM2 (||) <$> wsTypeToPred p <*> wsTypeToPred q
wsTypeToPred (Not p  ) = fmap not <$> wsTypeToPred p

-- | Cycle through empty workspaces
emptyWS :: WSType
emptyWS = WSIs . return $ isNothing . W.stack

-- | Cycle through non-visible workspaces
hiddenWS :: WSType
hiddenWS = WSIs $ do
  hs <- gets (map W.tag . W.hidden . windowset)
  return $ (`elem` hs) . W.tag

-- | Cycle through all workspaces
anyWS :: WSType
anyWS = WSIs . return $ const True

-- | Cycle through workspaces that are not in the given list. This could, for
--   example, be used for skipping the workspace reserved for
--   "XMonad.Util.NamedScratchpad":
--
-- >  moveTo Next $ hiddenWS :&: Not emptyWS :&: ignoringWSs [scratchpadWorkspaceTag]
--
ignoringWSs :: [WorkspaceId] -> WSType
ignoringWSs ts = WSIs . return $ (`notElem` ts) . W.tag

-- | Cycle through workspaces in the same group, the
--   group name is all characters up to the first
--   separator character or the end of the tag
wsTagGroup :: Char -> WSType
wsTagGroup sep = WSIs $ do
  cur <- groupName . W.workspace . W.current <$> gets windowset
  return $ (cur ==) . groupName
  where groupName = takeWhile (/= sep) . W.tag


-- | View the next workspace in the given direction that satisfies
--   the given condition.
moveTo :: Direction1D -> WSType -> H ()
moveTo dir t = doTo dir t getSortByIndex (windows . W.greedyView)

-- | Move the currently focused window to the next workspace in the
--   given direction that satisfies the given condition.
shiftTo :: Direction1D -> WSType -> H ()
shiftTo dir t = doTo dir t getSortByIndex (windows . W.shift)

-- | Using the given sort, find the next workspace in the given
-- direction of the given type, and perform the given action on it.
doTo :: Direction1D -> WSType -> H WorkspaceSort -> (WorkspaceId -> H ()) -> H ()
doTo dir t srt act = findWorkspace srt dir t 1 >>= act

-- | Given a function @s@ to sort workspaces, a direction @dir@, a
--   predicate @p@ on workspaces, and an integer @n@, find the tag of
--   the workspace which is @n@ away from the current workspace in
--   direction @dir@ (wrapping around if necessary), among those
--   workspaces, sorted by @s@, which satisfy @p@.
--
--   For some useful workspace sorting functions, see
--   "XMonad.Util.WorkspaceCompare".
--
--   For ideas of what to do with a workspace tag once obtained, note
--   that 'moveTo' and 'shiftTo' are implemented by applying @(>>=
--   (windows . greedyView))@ and @(>>= (windows . shift))@, respectively,
--   to the output of 'findWorkspace'.
findWorkspace :: H WorkspaceSort -> Direction1D -> WSType -> Int -> H WorkspaceId
findWorkspace s dir t n = findWorkspaceGen s (wsTypeToPred t) (maybeNegate dir n)
  where
    maybeNegate Next d = d
    maybeNegate Prev d = -d

findWorkspaceGen :: H WorkspaceSort -> H (WindowSpace -> Bool) -> Int -> H WorkspaceId
findWorkspaceGen _ _ 0 = gets (W.currentTag . windowset)
findWorkspaceGen sortX wsPredX d = do
    wsPred <- wsPredX
    sort   <- sortX
    ws     <- gets windowset
    let cur     = W.workspace (W.current ws)
        sorted  = sort (W.workspaces ws)
        pivoted = let (a,b) = span ((/= W.tag cur) . W.tag) sorted in b ++ a
        ws'     = filter wsPred pivoted
        mCurIx  = findWsIndex cur ws'
        d'      = if d > 0 then d - 1 else d
        next    = if null ws'
                      then cur
                      else case mCurIx of
                            Nothing -> ws' !! (d' `mod` length ws')
                            Just ix -> ws' !! ((ix + d) `mod` length ws')
    return $ W.tag next

findWsIndex :: WindowSpace -> [WindowSpace] -> Maybe Int
findWsIndex ws = L.findIndex ((== W.tag ws) . W.tag)

-- | View next screen
nextScreen :: H ()
nextScreen = switchScreen 1

-- | View prev screen
prevScreen :: H ()
prevScreen = switchScreen (-1)

switchScreen :: Int -> H ()
switchScreen d = do s <- screenBy d
                    mws <- screenWorkspace s
                    case mws of
                         Nothing -> return ()
                         Just ws -> windows (W.view ws)

{- | Get the 'ScreenId' /d/ places over. Example usage is a variation of the
the default screen keybindings:

>     -- mod-{w,e}, Switch to previous/next Xinerama screen
>     -- mod-shift-{w,e}, Move client to previous/next Xinerama screen
>     --
>     [((m .|. modm, key), sc >>= screenWorkspace >>= flip whenJust (windows . f))
>         | (key, sc) <- zip [xK_w, xK_e] [(screenBy (-1)),(screenBy 1)]
>         , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]

-}
screenBy :: Int -> H ScreenId
screenBy d = do ws <- gets windowset
                --let ss = sortBy screen (screens ws)
                let now = W.screen (W.current ws)
                return $ (now + fromIntegral d) `mod` fromIntegral (length (W.screens ws))

-- | Swap current screen with next screen
swapNextScreen :: H ()
swapNextScreen = swapScreen 1

-- | Swap current screen with previous screen
swapPrevScreen :: H ()
swapPrevScreen = swapScreen (-1)

swapScreen :: Int -> H ()
swapScreen d = do s <- screenBy d
                  mws <- screenWorkspace s
                  case mws of
                    Nothing -> return ()
                    Just ws -> windows (W.greedyView ws)

-- | Move focused window to workspace on next screen
shiftNextScreen :: H ()
shiftNextScreen = shiftScreenBy 1

-- | Move focused window to workspace on prev screen
shiftPrevScreen :: H ()
shiftPrevScreen = shiftScreenBy (-1)

shiftScreenBy :: Int -> H ()
shiftScreenBy d = do s <- screenBy d
                     mws <- screenWorkspace s
                     case mws of
                         Nothing -> return ()
                         Just ws -> windows (W.shift ws)
