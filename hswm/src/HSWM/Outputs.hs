{-# OPTIONS_GHC -Wno-ambiguous-fields #-}

-- |
-- Module      : HSWM.Outputs
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
module HSWM.Outputs where

import           HSWM.Core
import           HSWM.Operations
import qualified HSWM.StackSet as W
import           HSWM.Wayland

import qualified WL.Client as WL
import qualified River as R
import qualified WL.Wlr.OutputPowerManagement.Unstable.V1.Client as Wlr
import qualified WL.XdgOutput.Unstable.V1.Client as Zdg

import qualified Data.List as L

-- | New output is added: is put to pending_setup.
--
-- When an OutputDone event is received for the output, it is moved to pending_manage.
added :: RiverOutput -> H ()
added ro = do
  -- Assign screen Id
  output <- runInHS $ do
    scr <- nextScreenId
    let output = def & riverOutput .~ ro & screen .~ scr
    outputList %= (<> [output])
    return output

  -- Add RiverOutput event listener
  withObject $ WL.listenerAdd_ ro

  -- Create layer shell output + add listener
  lso <- withObject $ flip R.riverLayerShellGetOutput ro
  withObject $ \l -> WL.listenerAdd lso l ro
  runInHS $ outputList . eachRiverId ro . layerShellOutput %= const lso

  logInfo $ "Output added, pending setup" :# [ "output" .= tshow ro, "screen" .= tshow output.screen ]

-- * Manage

manage :: H ()
manage = do
  runInHS $ do
    outputs <- use outputList
    forM_ outputs $ \o -> when (o ^. managePending) $ do
      modifyOutput o.river_output $ managePending .~ False
      updateScreenDetail o.river_output
      defLayout <- view (config . layoutHook)
      -- Add output to windowSet
      modifyWindowSet $ W.insertScreen defLayout o.screen (getScreenDetail o)
      R.riverLayerShellOutputSetDefault o.layerShellOutput

----------------------------------------------------------

-- * Events

handle :: R.RiverOutputEvent -> H ()
handle = \case
  R.RiverOutputRemoved _ output -> runInHS $ withOutput output $ \o -> do
    -- delete screen from windowset
    modifyWindowSet $ W.deleteScreen o.screen
    -- delete from list of outputs
    outputList %= filter (not . riverIdEq output)
    -- destroy layer shell output, output, wl_output
    io $ mapM_ WL.objectDestroy o.outputPower
    io $ WL.objectDestroy o.layerShellOutput
    io $ WL.objectDestroy output
    io $ WL.objectDestroy o.wlOutput

  R.RiverOutputWlOutput _ output name -> do
    -- bind a wl_output listener
    wlo <- bindGlobalName @WL.Output name Nothing
    withObject $ \l -> WL.listenerAdd wlo l output
    -- xdg_output
    zdg_output <- withObject $ flip Zdg.outputManagerGetXdgOutput wlo
    withObject $ \l -> WL.listenerAdd zdg_output l output
    -- output power mgmt
    power <- withObject $ flip Wlr.outputPowerManagerGetOutputPower wlo
    modifyOutput' output $ wlOutput .~ wlo &+ outputPower ?~ power

  R.RiverOutputDimensions _ output w h -> modifyOutput' output $ width .~ fi w &+ height .~ fi h
  R.RiverOutputPosition   _ output x y -> modifyOutput' output $ _x .~ fi x &+ _y .~ fi y

handleWlOutput :: WL.OutputEvent -> H ()
handleWlOutput = \case
  WL.OutputScale       o _ sc   -> modifyOutput' (R.RiverOutput $ castPtr o) $ scale .~ sc
  WL.OutputName        o _ nm   -> modifyOutput' (R.RiverOutput $ castPtr o) $ _name .~ nm
  WL.OutputDescription o _ desc -> modifyOutput' (R.RiverOutput $ castPtr o) $ outputDescription .~ desc
  WL.OutputDone        o _      -> modifyOutput' (R.RiverOutput $ castPtr o) $ setupDone .~ True &+ managePending .~ True
  _ -> mempty

handleLayerShell :: R.RiverLayerShellOutputEvent -> H ()
handleLayerShell = \case
  R.RiverLayerShellOutputNonExclusiveArea ro _ x y w h ->
    modifyOutput' (R.RiverOutput $ castPtr ro) $ nonExclusive ?~ Rectangle x y (fi w) (fi h)

----------------------------------------------------------

-- * Utilities

modifyOutput' :: RiverOutput -> (Output -> Output) -> H ()
modifyOutput' ro f = runInHS $ modifyOutput ro f >> updateScreenDetail ro

updateScreenDetail :: RiverOutput -> HS ()
updateScreenDetail ro = withOutput ro $ \o -> when (o ^. setupDone) $ do
  modifyWindowSet $ modifyScreen o.screen $ modifyScreenDetail $ \_ -> getScreenDetail o
  liftH manageDirty
  where
    modifyScreen sid f = W.mapScreen (\s -> if sid == W.screen s then f s else s)
    modifyScreenDetail f scr = scr {W.screenDetail = f (W.screenDetail scr)}

getScreenDetail :: Output -> ScreenDetail
getScreenDetail o = SD {x = fi $ o^._x, y = fi $ o^._y, height = fi $ o^.height, width = fi $ o^.width}

nextScreenId :: HasCallStack => HS ScreenId
nextScreenId = do
  outputs <- use outputList
  let check x = isNothing $ L.find ((x ==) . view screen) outputs
  case filter check [S 1 ..] of
    x : _ -> return x
    _ -> throwString "nextScreenId"
