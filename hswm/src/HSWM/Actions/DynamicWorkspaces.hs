-----------------------------------------------------------------------------
-- |
-- Module      :  HSWM.Actions.DynamicWorkspaces
-- Description :  Provides bindings to add and delete workspaces.
-- Copyright   :  (c) David Roundy <droundy@darcs.net>
-- License     :  BSD3-style (see LICENSE)
--
-- Maintainer  :  none
-- Stability   :  unstable
-- Portability :  unportable
--
-- Provides bindings to add and delete workspaces.
--
-----------------------------------------------------------------------------

module HSWM.Actions.DynamicWorkspaces (
                                         -- * Usage
                                         -- $usage
                                         addWorkspace, --addWorkspacePrompt,
                                         appendWorkspace, --appendWorkspacePrompt,
                                         addWorkspaceAt,
                                         removeWorkspace,
                                         removeWorkspaceByTag,
                                         removeEmptyWorkspace,
                                         removeEmptyWorkspaceByTag,
                                         removeEmptyWorkspaceAfter,
                                         removeEmptyWorkspaceAfterExcept,
                                         addHiddenWorkspace, addHiddenWorkspaceAt,
                                         --withWorkspace,
                                         --selectWorkspace, renameWorkspace,
                                         renameWorkspaceByName,
                                         toNthWorkspace, withNthWorkspace,
                                         setWorkspaceIndex, withWorkspaceIndex,
                                         WorkspaceIndex
                                       ) where

--import HSWM.Prelude (find, isNothing, nub, when)
import Data.List (nub, find)
import HSWM hiding (workspaces)
import HSWM.StackSet hiding (filter, modify, delete)
--import HSWM.Prompt.Workspace ( Wor(Wor), workspacePrompt )
--import HSWM.Prompt ( XPConfig, mkComplFunFromList', mkXPrompt )
import HSWM.Util.WorkspaceCompare ( getSortByIndex )
import qualified Data.Map.Strict as Map
import qualified HSWM.Util.ExtensibleState as XS

-- $usage
-- You can use this module with the following in your @xmonad.hs@ file:
--
-- > import HSWM.Actions.DynamicWorkspaces
-- > import HSWM.Actions.CopyWindow(copy)
--
-- Then add keybindings like the following:
--
-- >   , ((modm .|. shiftMask, xK_BackSpace), removeWorkspace)
-- >   , ((modm .|. shiftMask, xK_v      ), selectWorkspace def)
-- >   , ((modm, xK_m                    ), withWorkspace def (windows . W.shift))
-- >   , ((modm .|. shiftMask, xK_m      ), withWorkspace def (windows . copy))
-- >   , ((modm .|. shiftMask, xK_r      ), renameWorkspace def)
--
-- > -- mod-[1..9]       %! Switch to workspace N in the list of workspaces
-- > -- mod-shift-[1..9] %! Move client to workspace N in the list of workspaces
-- >    ++
-- >    zip (zip (repeat (modm)) [xK_1..xK_9]) (map (withNthWorkspace W.greedyView) [0..])
-- >    ++
-- >    zip (zip (repeat (modm .|. shiftMask)) [xK_1..xK_9]) (map (withNthWorkspace W.shift) [0..])
--
-- Alternatively, you can associate indexes (which don't depend of the
-- workspace list order) to workspaces by using following keybindings:
--
-- > -- mod-[1..9]         %! Switch to workspace of index N
-- > -- mod-control-[1..9] %! Set index N to the current workspace
-- >    ++
-- >    zip (zip (repeat (modm)) [xK_1..xK_9]) (map (withWorkspaceIndex W.greedyView) [1..])
-- >    ++
-- >    zip (zip (repeat (modm .|. controlMask)) [xK_1..xK_9]) (map (setWorkspaceIndex) [1..])
--
-- For detailed instructions on editing your key bindings, see
-- <https://xmonad.org/TUTORIAL.html#customizing-xmonad the tutorial>. See also the documentation for
-- "HSWM.Actions.CopyWindow", 'windows', 'shift', and 'XPConfig'.

type WorkspaceTag = String
-- | The workspace index is mapped to a workspace tag by the user and
-- can be updated.
type WorkspaceIndex  = Int

-- | Internal dynamic project state that stores a mapping between
--   workspace indexes and workspace tags.
newtype DynamicWorkspaceState = DynamicWorkspaceState {workspaceIndexMap :: Map.Map WorkspaceIndex WorkspaceTag}
  deriving (Read, Show)

instance ExtensionClass DynamicWorkspaceState where
  initialValue = DynamicWorkspaceState Map.empty
  extensionType = PersistentExtension

-- | Set the index of the current workspace.
setWorkspaceIndex :: WorkspaceIndex -> HS ()
setWorkspaceIndex widx = do
  wtag  <- gets (currentTag . windowset)
  wmap <- XS.gets workspaceIndexMap
  XS.modify $ \s -> s {workspaceIndexMap = Map.insert widx wtag wmap}

withWorkspaceIndex :: (String -> WindowSet -> WindowSet) -> WorkspaceIndex -> HS ()
withWorkspaceIndex job widx = do
  wtag <- ilookup widx
  maybe (return ()) (windows . job) wtag
    where
      ilookup :: WorkspaceIndex -> HS (Maybe WorkspaceTag)
      ilookup idx = Map.lookup idx <$> XS.gets workspaceIndexMap

--withWorkspace :: XPConfig -> (String -> HS ()) -> HS ()
--withWorkspace c job = do ws <- gets (workspaces . windowset)
--                         sort <- getSortByIndex
--                         let ts = map tag $ sort ws
--                             job' t | t `elem` ts = job t
--                                    | otherwise = addHiddenWorkspace t >> job t
--                         mkXPrompt (Wor "") c (mkComplFunFromList' c ts) job'
--
--renameWorkspace :: XPConfig -> HS ()
--renameWorkspace conf = workspacePrompt conf renameWorkspaceByName

renameWorkspaceByName :: String -> HS ()
renameWorkspaceByName w = do old  <- gets (currentTag . windowset)
                             windows $ \s -> let sett wk = wk { tag = w }
                                                 setscr scr = scr { workspace = sett $ workspace scr }
                                                 sets q = q { current = setscr $ current q }
                                             in sets $ removeWorkspace' w s
                             updateIndexMap old w
  where updateIndexMap oldIM newIM = do
          wmap <- XS.gets workspaceIndexMap
          XS.modify $ \s -> s {workspaceIndexMap = Map.map (\t -> if t == oldIM then newIM else t) wmap}

toNthWorkspace :: (String -> HS ()) -> Int -> HS ()
toNthWorkspace job wnum = do sort <- getSortByIndex
                             ws <- gets (map tag . sort . workspaces . windowset)
                             case drop wnum ws of
                               (w:_) -> job w
                               [] -> return ()

withNthWorkspace :: (String -> WindowSet -> WindowSet) -> Int -> HS ()
withNthWorkspace job wnum = do sort <- getSortByIndex
                               ws <- gets (map tag . sort . workspaces . windowset)
                               case drop wnum ws of
                                 (w:_) -> windows $ job w
                                 [] -> return ()

--selectWorkspace :: XPConfig -> HS ()
--selectWorkspace conf = workspacePrompt conf $ \w ->
--                       do s <- gets windowset
--                          if tagMember w s
--                            then windows $ greedyView w
--                            else addWorkspace w

-- | Add a new workspace with the given name, or do nothing if a
--   workspace with the given name already exists; then switch to the
--   newly created workspace.
addWorkspace :: String -> HS ()
addWorkspace = addWorkspaceAt (:)

-- | Same as addWorkspace, but adds the workspace to the end of the list of workspaces
appendWorkspace :: String -> HS ()
appendWorkspace = addWorkspaceAt (flip (++) . return)

-- | Adds a new workspace with the given name to the current list of workspaces.
--   This function allows the user to pass a function that inserts an element
--   into a list at an arbitrary spot.
addWorkspaceAt :: (WindowSpace -> [WindowSpace] -> [WindowSpace]) -> String -> HS ()
addWorkspaceAt add newtag = addHiddenWorkspaceAt add newtag >> windows (greedyView newtag)

---- | Prompt for the name of a new workspace, add it if it does not
----   already exist, and switch to it.
--addWorkspacePrompt :: XPConfig -> HS ()
--addWorkspacePrompt conf = mkXPrompt (Wor "New workspace name: ") conf (const (return [])) addWorkspace
--
---- | Prompt for the name of a new workspace, appending it to the end of the list of workspaces
----   if it does not already exist, and switch to it.
--appendWorkspacePrompt :: XPConfig -> HS ()
--appendWorkspacePrompt conf = mkXPrompt (Wor "New workspace name: ") conf (const (return [])) appendWorkspace

-- | Add a new hidden workspace with the given name, or do nothing if
--   a workspace with the given name already exists. Takes a function to insert
--   the workspace at an arbitrary spot in the list.
addHiddenWorkspaceAt :: (WindowSpace -> [WindowSpace] -> [WindowSpace]) -> String -> HS ()
addHiddenWorkspaceAt add newtag =
  whenM (gets (not . tagMember newtag . windowset)) $ do
    l <- asks (layoutHook . config)
    windows (addHiddenWorkspace' add newtag l)

-- | Add a new hidden workspace with the given name, or do nothing if
--   a workspace with the given name already exists.
addHiddenWorkspace :: String -> HS ()
addHiddenWorkspace = addHiddenWorkspaceAt (:)

-- | Remove the current workspace if it contains no windows.
removeEmptyWorkspace :: HS ()
removeEmptyWorkspace = gets (currentTag . windowset) >>= removeEmptyWorkspaceByTag

-- | Remove the current workspace.
removeWorkspace :: HS ()
removeWorkspace = gets (currentTag . windowset) >>= removeWorkspaceByTag

-- | Remove workspace with specific tag if it contains no windows.
removeEmptyWorkspaceByTag :: String -> HS ()
removeEmptyWorkspaceByTag t = whenM (isEmpty t) $ removeWorkspaceByTag t

-- | Remove workspace with specific tag.
removeWorkspaceByTag :: String -> HS ()
removeWorkspaceByTag torem = do
    s <- gets windowset
    case s of
        StackSet { current = Screen { workspace = cur }, hidden = (w:_) } -> do
                when (torem==tag cur) $ windows $ HSWM.StackSet.view $ tag w
                windows $ removeWorkspace' torem
        _ -> return ()

-- | Remove the current workspace after an operation if it is empty and hidden.
--   Can be used to remove a workspace if it is empty when leaving it. The
--   operation may only change workspace once, otherwise the workspace will not
--   be removed.
removeEmptyWorkspaceAfter :: HS () -> HS ()
removeEmptyWorkspaceAfter = removeEmptyWorkspaceAfterExcept []

-- | Like 'removeEmptyWorkspaceAfter' but use a list of sticky workspaces,
--   whose entries will never be removed.
removeEmptyWorkspaceAfterExcept :: [String] -> HS () -> HS ()
removeEmptyWorkspaceAfterExcept sticky f = do
    before <- gets (currentTag . windowset)
    f
    after <- gets (currentTag . windowset)
    when (before/=after && before `notElem` sticky) $ removeEmptyWorkspaceByTag before

isEmpty :: String -> HS Bool
isEmpty t = do wsl <- gets $ workspaces . windowset
               let mws = find (\ws -> tag ws == t) wsl
               return $ maybe True (isNothing . stack) mws

addHiddenWorkspace' :: Default wd => (Workspace i l a wd -> [Workspace i l a wd] -> [Workspace i l a wd]) -> i -> l -> StackSet i l a wd sid sd -> StackSet i l a wd sid sd
addHiddenWorkspace' add newtag l s@StackSet{ hidden = ws } = s { hidden = add (Workspace newtag l Nothing def) ws }

-- | Remove the hidden workspace with the given tag from the StackSet, if
--   it exists. All the windows in that workspace are moved to the current
--   workspace.
removeWorkspace' :: (Eq i, Eq a) => i -> StackSet i l a wd sid sd -> StackSet i l a wd sid sd
removeWorkspace' torem s@StackSet{ current = scr@Screen { workspace = wc }
                                 , hidden  = hs }
    = let (xs, ys) = break ((== torem) . tag) hs
      in removeWorkspace'' xs ys
   where meld Nothing Nothing = Nothing
         meld x Nothing = x
         meld Nothing x = x
         meld (Just x) (Just y) = differentiate . nub $ integrate x ++ integrate y
         removeWorkspace'' xs (y:ys) = s { current = scr { workspace = wc { stack = meld (stack y) (stack wc) } }
                                         , hidden = xs ++ ys }
         removeWorkspace'' _  _      = s

