{-# OPTIONS_GHC -Wno-ambiguous-fields #-}

------------------------------------------------------------------------------
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
--
------------------------------------------------------------------------------
module HSWM.Outputs where

import           HSWM.Core
import           HSWM.Operations
import qualified HSWM.StackSet as W

import qualified River.Objects as R
import           Wayland
import qualified Wayland.Client as WL

import qualified Data.List as L
import qualified Data.Map as M
import           Foreign

data OutputManager = OutputManager
  { pending_setup  :: M.Map RiverOutput Output
  , pending_manage :: [Output]
  , wl_outputs     :: M.Map RiverOutput WL.Output
  }
  deriving stock Generic
  deriving anyclass Default

-- | New output is added
added :: RiverOutput -> H ()
added out = do
    om <- getOrCreateObject $ pure def

    -- create layer shell output
    output_listener <- getObject
    shellOutputListener <- getObject -- @R.RiverLayerShellOutputListener
    _ <- liftIO $ R.listenerAdd out output_listener nullPtr
    layerShellOutput <- withObject @R.RiverLayerShell $ \shell ->
      io $ R.riverLayerShellGetOutput shell out
    _ <- io $ R.listenerAdd layerShellOutput shellOutputListener out

    screenId <- runInHS $ nextScreenId om

    let output = def
          { river_output = out
          , screen = screenId
          , river_layerShellOutput = layerShellOutput
          }

    putObject om { pending_setup = M.insert out output $ pending_setup om }

----------------------------------------------------------
-- * Events

handle :: R.RiverOutputEvent -> H ()
handle e = do
  om <- getOrCreateObject $ pure def
  case e of
    R.RiverOutputRemoved _ output -> runInHS $ withOutput output $
      \Output{screen, river_layerShellOutput = layerShellOutput } -> do
        -- delete screen from windowset
        modifyWindowSet $ W.deleteScreen screen
        -- delete from list of outputs
        modify $ \s -> s { _outputs = filter (\x -> x.river_output /= output) s._outputs }
        -- destroy layer shell output
        io $ R.objectDestroy layerShellOutput
        -- destroy output
        liftIO $ R.objectDestroy output
        -- release wl_output
        forM_ (M.lookup output om.wl_outputs) $ \p -> io $ WL.outputRelease p
    R.RiverOutputWlOutput _ output name -> do
      -- bind a wl_output listener
      registry <- asks globals
      wlOutputListener <- getObject
      wl_output <- requireGlobal registry ("wl_output", 4) $ \r _ ver ->
        io $ WL.Output <$> WL.registryBind r name WL.outputInterface (fi ver)
      _ <- io $ WL.listenerAdd wl_output wlOutputListener output
      putObject om { wl_outputs = M.insert output wl_output $ wl_outputs om }
    R.RiverOutputDimensions _ output width height ->
      modifyOutput' output $ \x -> (x::Output) { width = fi width, height = fi height }
    R.RiverOutputPosition _ output x y ->
      modifyOutput' output $ \a -> a { x = fi x, y = fi y }

-- toUserData (R.RiverOutput p) = castPtr p

handleWlOutput :: WL.OutputEvent -> H ()
handleWlOutput e = case e of
    -- WL.OutputGeometry _o _ x y pw ph subpix make_s model_s trans -> do
    --   --make <- io . peekCString $ unConstPtr make_s
    --   --model <- io . peekCString $ unConstPtr model_s
    --   --log' $ "output geometry: " <> tshow ((x, y), (pw, ph), subpix)
    --   --  <> " make: " <> toText make
    --   --  <> " model: " <> toText model
    --   --  <> " transform: " <> tshow trans

    -- WL.OutputMode _o _ _flags _w _h _refresh -> return ()

    WL.OutputScale o _ i ->
      modifyOutput' (R.RiverOutput $ castPtr o) $ \x -> (x::Output) { scale = i }

    WL.OutputName o _ name -> do
      modifyOutput' (R.RiverOutput $ castPtr o) $ \x -> (x::Output) { outputName = name }

    WL.OutputDescription o _ desc -> do
      modifyOutput' (R.RiverOutput $ castPtr o) $ \x -> (x::Output) { outputDescription = desc }

    WL.OutputDone o _ -> do
      om <- getObject
      forM_ (M.lookup (R.RiverOutput $ castPtr o) $ pending_setup om) $ \output ->
        putObject om { pending_setup = M.delete (R.RiverOutput $ castPtr o) (pending_setup om)
                     , pending_manage = output : pending_manage om }

    _ -> mempty

handleLayerShell :: R.RiverLayerShellOutputEvent -> H ()
handleLayerShell e = case e of
  R.RiverLayerShellOutputNonExclusiveArea ro _ x y w h ->
    modifyOutput' (R.RiverOutput $ castPtr ro) $ \o -> o { nonExclusive = Just (x, y, w, h) }

----------------------------------------------------------
-- * Manage

manage :: H ()
manage = do
  om <- getObject

  -- handle new outputs
  forM_ om.pending_manage $ \output -> do
    runInHS $ modify $ \s -> s { _outputs = _outputs s ++ [output] }

    -- Adding to WindowSet
    defLayout <- asks (layoutHook . config)
    runInHS $ modifyWindowSet $ W.insertScreen defLayout output.screen (getScreenDetail output)

    io $ R.riverLayerShellOutputSetDefault output.river_layerShellOutput

  putObject om { pending_manage = mempty }

----------------------------------------------------------
-- * Render

render :: H ()
render = return ()

----------------------------------------------------------
-- * Utilities

nextScreenId :: OutputManager -> HS ScreenId
nextScreenId om = do
    curOutputs <- gets _outputs
    case [ i | i <- [S 1..], isNothing $ L.find ((i==) . screen) (curOutputs ++ M.elems om.pending_setup) ] of
      i : _ -> return i
      _ -> error "impossible"

getScreenDetail :: Output -> ScreenDetail
getScreenDetail o = case o.nonExclusive of
  Nothing -> SD { x = fi o.x, y = fi o.y, height = fi o.height, width = fi o.width }
  Just (x, y, w, h) ->  SD { x = fi x, y = fi y, height = fi h, width = fi w }

updateScreenDetail :: RiverOutput -> HS ()
updateScreenDetail output = withOutput output $ \o -> do
  modifyWindowSet $ modifyScreen o.screen $ modifyScreenDetail $ \sd ->
    case o.nonExclusive of
      Nothing -> sd { x = fi o.x, y = fi o.y, height = fi o.height, width = fi o.width }
      Just (x, y, w, h) ->  sd { x = fi x, y = fi y, height = fi h, width = fi w }
  liftH manageDirty
  where
    modifyScreen sid f = W.mapScreen (\s -> if sid == W.screen s then f s else s)
    modifyScreenDetail f scr = scr { W.screenDetail = f (W.screenDetail scr) }

modifyOutput' :: RiverOutput -> (Output -> Output) -> H ()
modifyOutput' output f = do
  om <- getObject
  case M.lookup output (pending_setup om) of
    Just o -> putObject om { pending_setup = M.insert output (f o) om.pending_setup }
    Nothing -> runInHS $ modifyOutput output f >> updateScreenDetail output

getWlOutput :: RiverOutput -> H WL.Output
getWlOutput ro = do
  (om :: OutputManager) <- getOrCreateObject $ pure def
  case M.lookup ro om.wl_outputs of
    Just wo -> return wo
    Nothing -> error "No wl output output found"
