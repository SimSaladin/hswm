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
import qualified WL.Wlr.OutputPowerManagement.Unstable.V1.Client as WLR_OPM
import qualified WL.XdgOutput.Unstable.V1.Client as XO

import qualified Data.List as L

-- | New output is added: is put to pending_setup.
--
-- When an OutputDone event is received for the output, it is moved to pending_manage.
added :: RiverOutput -> H ()
added k = do
  -- Assign screen Id
  output <- runInHS $ do
    scr <- nextScreenId
    let output = def & riverOutput .~ k & screen .~ scr
    outputList %= (<> [output])
    return output

  -- Add RiverOutput event listener
  withObject $ WL.listenerAdd_ k

  -- Create layer shell output + add listener
  lso <- withObject $ flip R.riverLayerShellGetOutput k
  withObject $ \l -> WL.listenerAdd lso l k
  modifyOutput' k $ layerShellOutput .~ lso

  logInfo $ "Output added, pending setup" :# [ "output" .= tshow k, "screen" .= tshow output.screen ]

-- |
-- - Delete screen from windowset
-- - Delete from list of outputs
-- - Destroy layer shell output and other objects.
destroyOutput :: RiverOutput -> HS ()
destroyOutput k = withOutput_ k $ \o -> do
    modifyWindowSet $ W.deleteScreen o.screen
    outputList %= filter (not . riverIdEq k)
    io $ WL.objectDestroy o.outputPower
    io $ WL.objectDestroy o.layerShellOutput
    io $ WL.objectDestroy o.river_output
    io $ WL.objectDestroy o.xdgOutput
    io $ WL.objectDestroy o.wlOutput

-- |
-- - bind a wl_output listener
-- - Set xdg_output
-- - Register output power mgmt
bindWlOutput :: RiverOutput -> WL.ObjectName -> H ()
bindWlOutput k name = do
    wlOut     <- bindGlobalName @WL.Output name Nothing
    xdgOut    <- withObject $ flip XO.outputManagerGetXdgOutput wlOut
    outputPwr <- withObject $ flip WLR_OPM.outputPowerManagerGetOutputPower wlOut
    withObject $ \l -> WL.listenerAdd wlOut l k
    withObject $ \l -> WL.listenerAdd xdgOut l k
    withObject $ \l -> WL.listenerAdd outputPwr l k
    modifyOutput' k $ wlOutput .~ wlOut &+ xdgOutput .~ xdgOut &+ outputPower .~ outputPwr

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
  R.RiverOutputRemoved    _ k      -> runInHS $ destroyOutput k
  R.RiverOutputWlOutput   _ k name -> bindWlOutput k name
  R.RiverOutputDimensions _ output w h -> modifyOutput' output $ width .~ fi w &+ height .~ fi h
  R.RiverOutputPosition   _ output x y -> modifyOutput' output $ _x .~ fi x &+ _y .~ fi y

handleWlOutput :: WL.OutputEvent -> H ()
handleWlOutput = \case
  WL.OutputScale       dt _ sc   -> modifyOutput' (toRiverId dt) $ scale .~ sc
  WL.OutputName        dt _ nm   -> modifyOutput' (toRiverId dt) $ _name .~ nm
  WL.OutputDescription dt _ desc -> modifyOutput' (toRiverId dt) $ outputDescription .~ desc
  WL.OutputDone        dt _      -> modifyOutput' (toRiverId dt) $ setupDone .~ True &+ managePending .~ True
  _ -> mempty

handleLayerShell :: R.RiverLayerShellOutputEvent -> H ()
handleLayerShell = \case
  R.RiverLayerShellOutputNonExclusiveArea dt _ x y w h ->
    modifyOutput' (toRiverId dt) $ nonExclusive ?~ Rectangle x y (fi w) (fi h)

----------------------------------------------------------

-- * Utilities

-- | Like 'modifyOutput', but runs screen-detail update afterwards also.
modifyOutput' :: RiverOutput -> (Output -> Output) -> H ()
modifyOutput' k f = runInHS $ modifyOutput k f >> updateScreenDetail k

updateScreenDetail :: SomeOutput a => a -> HS ()
updateScreenDetail k = withOutput_ k $ \o -> when (o ^. setupDone) $ do
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
