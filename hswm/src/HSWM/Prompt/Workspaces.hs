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
workspacePrompt :: RP.RofiPromptConfig RP.SelectS -> H ()
workspacePrompt = mkWorkspacePrompt
  (\p _ -> p {RP.prompt = "Go to workspace"})
  (\_ input -> do
      logInfo $ "switching workspace" :# [ "tag" .= input ]
      runInHS $ windows $ W.view input
      manageDirty
  )

renameWorkspacePrompt :: RP.RofiPromptConfig RP.SelectS -> H ()
renameWorkspacePrompt rofiPrompt = do
  (curTag, allTags) <- runInHS $ withWindowSet $ return . (W.currentTag &&& W.allTags)
  RP.rofiRun rofiPrompt {RP.prompt = "Rename " ++ curTag} allTags >>= (`whenJust` apply curTag)
  where
    apply old input = do
      runInHS $ do
        DWO.updateName old input
        DynWS.renameWorkspaceByName input
      view (config . logHook) >>= void . userCode

addWorkspacePrompt :: RP.RofiPromptConfig RP.SelectS -> H ()
addWorkspacePrompt =
  mkWorkspacePrompt
    (\p _ -> p {RP.prompt = "Add workspace"})
    ( \_ input -> do
        runInHS $ do
          modifySeats (const True) $ \s -> s { suppressChangeFocus = 2 }
          DynWS.addWorkspace input
        manageDirty
    )

mkWorkspacePrompt :: (RP.RofiPromptConfig RP.SelectS -> WorkspaceId -> RP.RofiPromptConfig RP.SelectS)
                  -> (WorkspaceId -> String -> H a)
                  -> RP.RofiPromptConfig RP.SelectS
                  -> H ()
mkWorkspacePrompt prompt apply rofiPrompt = do
  (curTag, allTags) <- runInHS $ withWindowSet $ return . (W.currentTag &&& W.allTags)
  RP.rofiRun (prompt rofiPrompt curTag) allTags >>= (`whenJust` doApply curTag)
  where
    doApply cur input = do
      _ <- apply cur input
      view (config . logHook) >>= void . userCode
