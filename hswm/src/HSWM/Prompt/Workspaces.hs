-- |
-- Module      : HSWM.Prompt.Workspaces
-- Description : Workspace prompts
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Prompt.Workspaces where

import HSWM
import qualified HSWM.Util.RofiPrompt as RP
import qualified HSWM.Actions.DynamicWorkspaceOrder as DWO
import qualified HSWM.Actions.DynamicWorkspaces as DynWS
import qualified HSWM.StackSet as W

-- | Go to workspace
workspacePrompt :: RP.RofiPromptConfig' -> H ()
workspacePrompt pc = mkWorkspacePrompt
  (\_ _ -> pc {RP.prompt = "Go to workspace"})
  (\_ input -> do
      logInfo $ "switching workspace" :# [ "tag" .= input ]
      exist <- runInHS $ do
        windows $ W.view input
        withWindowSet (return . W.tagMember input)
      if exist
         then manageDirty
         else handleNotExists input
  ) pc
  where
    handleNotExists tag = do
      RP.confirmPrompt (pc @[String]) ("Create new workspace '"++ tag ++ "'?") $ runInHS $ do
        -- modifySeats (const True) $ \s -> s { suppressChangeFocus = 2 }
        DynWS.addWorkspace tag
        manageDirty

renameWorkspacePrompt :: RP.RofiPromptConfig' -> H ()
renameWorkspacePrompt = mkWorkspacePrompt
  (\pc curTag -> pc {RP.prompt = "Rename workspace '" ++ curTag ++ "'"})
  (\old input -> runInHS $ do
      DWO.updateName old input
      DynWS.renameWorkspaceByName input)

addWorkspacePrompt :: RP.RofiPromptConfig' -> H ()
addWorkspacePrompt = mkWorkspacePrompt
  (\pc _ -> pc {RP.prompt = "Add new workspace"})
  ( \_ input -> do
      runInHS $ do
        modifySeats (const True) $ \s -> s { suppressChangeFocus = 2 }
        DynWS.addWorkspace input
      manageDirty)

mkWorkspacePrompt :: (RP.RofiPromptConfig' -> WorkspaceId -> RP.RofiPromptConfig')
                  -> (WorkspaceId -> String -> H a)
                  -> RP.RofiPromptConfig'
                  -> H ()
mkWorkspacePrompt prompt apply rofiPrompt = do
  (curTag, allTags) <- runInHS $ withWindowSet $ return . (W.currentTag &&& W.allTags)
  RP.runRofi (prompt rofiPrompt curTag) allTags >>= (`whenJust` doApply curTag)
  where
    doApply cur input = do
      _ <- apply cur input
      view (config . logHook) >>= void . userCode
