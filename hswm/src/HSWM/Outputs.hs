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

import qualified Wayland as WL

import qualified Bindings.River as R
import qualified Bindings.Wayland.WlrOutputPowerManagementUnstableV1 as Wlr
import qualified Bindings.Wayland.XdgOutputUnstableV1 as Zdg

import qualified Data.List as L
import qualified Data.Map as M
import           Foreign

data OutputManager = OutputManager
  { pending_setup :: M.Map RiverOutput Output -- ^ Waiting for OutputDone event
  , pending_manage :: [Output]
  }
  deriving stock (Generic)
  deriving anyclass (Default)

-- | New output is added
added :: RiverOutput -> H ()
added out = do
  -- Assign screen Id
  om <- getObjectDef
  screen <- runInHS $ nextScreenId om
  -- Add RiverOutput event listener
  withObject $ WL.listenerAdd_ out
  -- Create layer shell output
  layerShellOutput <- withObject @R.RiverLayerShell $ \shell ->
    R.riverLayerShellGetOutput shell out
  -- Add layer shell output listener
  withObject $ \l -> WL.listenerAdd layerShellOutput l out
  let output = def { river_output = out, screen, layerShellOutput }
  logInfo $ "Output added" :# [ "output" .= tshow out, "screen" .= tshow screen ]
  modifyObject $ \st -> st {pending_setup = M.insert out output $ pending_setup st}

----------------------------------------------------------

-- * Events

handle :: R.RiverOutputEvent -> H ()
handle e = do
  case e of
    R.RiverOutputRemoved _ output -> runInHS $
      withOutput output $
        \o@Output {screen, layerShellOutput, wlOutput} -> do
          -- delete screen from windowset
          modifyWindowSet $ W.deleteScreen screen
          -- delete from list of outputs
          modify $ \s -> s {_outputs = filter (\x -> x.river_output /= output) s._outputs}
          -- destroy layer shell output, output, wl_output
          io $ WL.objectDestroy layerShellOutput
          io $ WL.objectDestroy output
          io $ WL.objectDestroy wlOutput
          io $ whenJust (outputPower o) WL.objectDestroy

    R.RiverOutputWlOutput _ output name -> do
      -- bind a wl_output listener
      wl_output <- bindGlobalWith @WL.Output name (Just 4)
      withObject $ \l -> WL.listenerAdd wl_output l output
      -- xdg_output
      zdgOM <- getObject
      zdg_output <- Zdg.outputManagerGetXdgOutput zdgOM wl_output
      withObject $ \l -> WL.listenerAdd zdg_output l output
      -- output power mgmt
      power <- withObject $ \opm -> Wlr.outputPowerManagerGetOutputPower opm wl_output
      modifyObjectDef $ \om -> om
        { pending_setup = M.adjust (\o -> o { wlOutput = wl_output, outputPower = Just power }) output (pending_setup om) }

    R.RiverOutputDimensions _ output width height ->
      modifyOutput' output $ \x -> (x :: Output) {width = fi width, height = fi height}

    R.RiverOutputPosition _ output x y ->
      modifyOutput' output $ \a -> a {x = fi x, y = fi y}

handleWlOutput :: WL.OutputEvent -> H ()
handleWlOutput = \case
  WL.OutputScale o _ scale ->
    modifyOutput' (R.RiverOutput $ castPtr o) $ \x -> (x :: Output) {scale}
  WL.OutputName o _ outputName ->
    modifyOutput' (R.RiverOutput $ castPtr o) $ \x -> (x :: Output) {outputName}
  WL.OutputDescription o _ outputDescription ->
    modifyOutput' (R.RiverOutput $ castPtr o) $ \x -> (x :: Output) {outputDescription}

  --WL.OutputGeometry _o _ x y pw ph subpix make_s model_s trans -> do
  --  --log' $ "output geometry: " <> tshow ((x, y), (pw, ph), subpix)
  --  --  <> " make: " <> toText make
  --  --  <> " model: " <> toText model
  --  --  <> " transform: " <> tshow trans

  --WL.OutputMode _o _ _flags _w _h _refresh -> return ()

  WL.OutputDone o _ -> do
    modifyObjectDef $ \om ->
      case M.lookup (R.RiverOutput $ castPtr o) $ pending_setup om of
        Just output -> om
          { pending_setup = M.delete (R.RiverOutput $ castPtr o) (pending_setup om),
            pending_manage = output : pending_manage om
          }
        Nothing -> om

  _ -> mempty

handleLayerShell :: R.RiverLayerShellOutputEvent -> H ()
handleLayerShell = \case
  R.RiverLayerShellOutputNonExclusiveArea ro _ x y w h ->
    modifyOutput' (R.RiverOutput $ castPtr ro) $ \o -> o {nonExclusive = Just (x, y, w, h)}

----------------------------------------------------------

-- * Manage

manage :: H ()
manage = do
  om <- getObject @OutputManager
  -- handle new outputs
  forM_ om.pending_manage $ \output -> do
    runInHS $ modify $ \s -> s {_outputs = _outputs s ++ [output]}
    -- Adding to WindowSet
    defLayout <- asks (layoutHook . config)
    runInHS $ modifyWindowSet $ W.insertScreen defLayout output.screen (getScreenDetail output)
    R.riverLayerShellOutputSetDefault output.layerShellOutput
    modifyObject $ \st -> st { pending_manage = filter (\x -> x.river_output /= output.river_output) $ pending_manage st }

----------------------------------------------------------

-- * Render

render :: H ()
render = return ()

----------------------------------------------------------

-- * Utilities

nextScreenId :: OutputManager -> HS ScreenId
nextScreenId om = do
  curOutputs <- gets _outputs
  case [i | i <- [S 1 ..], isNothing $ L.find ((i ==) . screen) (curOutputs ++ M.elems om.pending_setup ++ om.pending_manage)] of
    i : _ -> return i
    _ -> error "impossible"

getScreenDetail :: Output -> ScreenDetail
getScreenDetail o = SD {x = fi o.x, y = fi o.y, height = fi o.height, width = fi o.width}

updateScreenDetail :: RiverOutput -> HS ()
updateScreenDetail output = withOutput output $ \o -> do
  modifyWindowSet $ modifyScreen o.screen $ modifyScreenDetail $ \_ -> getScreenDetail o
  liftH manageDirty
  where
    modifyScreen sid f = W.mapScreen (\s -> if sid == W.screen s then f s else s)
    modifyScreenDetail f scr = scr {W.screenDetail = f (W.screenDetail scr)}

modifyOutput' :: RiverOutput -> (Output -> Output) -> H ()
modifyOutput' output f = do
  modifyObjectDef $ \st -> st { pending_setup = M.adjust f output st.pending_setup }
  runInHS $ modifyOutput output f >> updateScreenDetail output
