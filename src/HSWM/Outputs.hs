{-# LANGUAGE DeriveAnyClass #-}
{-# OPTIONS_GHC -Wno-ambiguous-fields #-}


------------------------------------------------------------------------------
-- |
-- Module      : HSWM.Outputs
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
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
import           River
import qualified River.Safe as R
import           Wayland
import qualified Wayland.Client as WL

import qualified Data.List as L
import qualified Data.Map as M
import           Foreign
import           Foreign.C
import           Foreign.C.ConstPtr
import           GHC.Generics

data OutputManager = OutputManager
  { pending_setup :: M.Map RiverOutput Output
  , pending_manage :: [Output]
  , wl_outputs :: M.Map RiverOutput (Ptr WL.Wl_output)
  }
  deriving stock Generic
  deriving anyclass Default

-- | New output is added
added :: RiverOutput -> H ()
added out = do
    om <- getOrCreateObject $ pure def

    -- create layer shell output
    output_listener <- getObject
    shellOutputListener <- getObject -- @R.RiverLayerShellOutputV1Listener
    liftIO $ river_output_v1_add_listener out output_listener nullPtr
    layerShellOutput <- withObject @R.RiverLayerShellV1 $ \shell -> io $ R.river_layer_shell_v1_get_output shell out
    _ <- io $ R.river_layer_shell_output_v1_add_listener layerShellOutput shellOutputListener (castPtr out)

    screenId <- nextScreenId om

    let output = def
          { river_output = out
          , screen = screenId
          , river_layerShellOutput = layerShellOutput
          }

    putObject om { pending_setup = M.insert out output $ pending_setup om }

handle :: OutputEvent -> H ()
handle e = do
  om <- getOrCreateObject $ pure def
  case e of
    OutputRemoved _ output -> withOutput output $
      \Output{screen, river_layerShellOutput = layerShellOutput } -> do
        -- delete screen from windowset
        modifyWindowSet $ W.deleteScreen screen
        -- delete from list of outputs
        modify $ \s -> s { _outputs = filter (\x -> x.river_output /= output) s._outputs }
        -- destroy layer shell output
        io $ R.river_layer_shell_output_v1_destroy layerShellOutput
        -- destroy output
        liftIO $ river_output_v1_destroy output
        -- release wl_output
        forM_ (M.lookup output om.wl_outputs) $ \p -> io $ WL.wl_output_release p

    OutputWlOutput _ output name -> do
      -- bind a wl_output listener
      registry <- asks globals
      wlOutputListener <- getObject
      wl_output <- requireGlobal registry ("wl_output", 4) $ \(WlRegistry r) _ ver -> io $ WL.wl_registry_bind (castPtr r) name WL.wl_output_interface (fi ver)
      _ <- io $ WL.wl_output_add_listener (castPtr wl_output) wlOutputListener (castPtr output)
      putObject om { wl_outputs = M.insert output (castPtr wl_output) $ wl_outputs om }

    OutputDimensions _ output width height ->
      modifyOutput' output $ \x -> (x::Output) { width = fi width, height = fi height }

    OutputPosition _ output x y ->
      modifyOutput' output $ \a -> a { x = fi x, y = fi y }

handleLayerShell :: R.RiverLayerShellOutputV1Event -> H ()
handleLayerShell e = case e of
  R.RiverLayerShellOutputV1NonExclusiveArea ro _ x y w h ->
    modifyOutput' (castPtr ro) $ \o -> o { nonExclusive = Just (x, y, w, h) }

handleWlOutput :: WL.WlOutputEvent -> H ()
handleWlOutput e = case e of
    WL.WlOutputGeometry _o _ x y pw ph subpix make_s model_s trans -> do
      make <- io . peekCString $ unConstPtr make_s
      model <- io . peekCString $ unConstPtr model_s
      log' $ "output geometry: " <> tshow ((x, y), (pw, ph), subpix)
        <> " make: " <> toText make
        <> " model: " <> toText model
        <> " transform: " <> tshow trans
      return ()

    WL.WlOutputMode _o _ _flags _w _h _refresh ->
      return ()

    WL.WlOutputScale o _ i ->
      modifyOutput' (castPtr o) $ \x -> (x::Output) { scale = i }

    WL.WlOutputName o _ ptr -> do
      name <- io $ peekCString $ unConstPtr ptr
      log' $ "output: name: " <> toText name
      modifyOutput' (castPtr o) $ \x -> (x::Output) { outputName = name }

    WL.WlOutputDescription o _ ptr -> do
      desc <- io $ peekCString $ unConstPtr ptr
      log' $ "output: description: " <> toText desc
      modifyOutput' (castPtr o) $ \x -> (x::Output) { outputDescription = desc }

    WL.WlOutputDone o _ -> do
      om <- getObject
      forM_ (M.lookup (castPtr o) $ pending_setup om) $ \output ->
        putObject om { pending_setup = M.delete (castPtr o) (pending_setup om)
                     , pending_manage = output : pending_manage om }

manage :: H ()
manage = do
  om <- getObject

  -- handle new outputs
  forM_ om.pending_manage $ \output -> do
    modify $ \s -> s { _outputs = _outputs s ++ [output] }

    -- Adding to WindowSet
    defLayout <- asks (layoutHook . config)
    modifyWindowSet $ W.insertScreen defLayout output.screen (getScreenDetail output)

    log' $ "WM: set rivershelloutput default: " <> tshow  output.river_layerShellOutput
    io $ R.river_layer_shell_output_v1_set_default output.river_layerShellOutput

  putObject om { pending_manage = mempty }

render :: H ()
render = return ()

nextScreenId :: OutputManager -> H ScreenId
nextScreenId om = do
    curOutputs <- gets _outputs
    case [ i | i <- [S 0..], isNothing $ L.find ((i==) . screen) (curOutputs ++ M.elems om.pending_setup) ] of
      i : _ -> return i
      _ -> error "impossible"

getScreenDetail :: Output -> ScreenDetail
getScreenDetail o = case o.nonExclusive of
  Nothing -> SD { x = fi o.x, y = fi o.y, height = fi o.height, width = fi o.width }
  Just (x, y, w, h) ->  SD { x = fi x, y = fi y, height = fi h, width = fi w }

updateScreenDetail :: RiverOutput -> H ()
updateScreenDetail output = withOutput output $ \o -> do
  modifyWindowSet $ modifyScreen o.screen $ modifyScreenDetail $ \sd ->
    case o.nonExclusive of
      Nothing -> sd { x = fi o.x, y = fi o.y, height = fi o.height, width = fi o.width }
      Just (x, y, w, h) ->  sd { x = fi x, y = fi y, height = fi h, width = fi w }
  manageDirty
  where
    modifyScreen sid f = W.mapScreen (\s -> if sid == W.screen s then f s else s)
    modifyScreenDetail f scr = scr { W.screenDetail = f (W.screenDetail scr) }

modifyOutput' :: RiverOutput -> (Output -> Output) -> H ()
modifyOutput' output f = do
  om <- getObject
  case M.lookup output (pending_setup om) of
    Just o -> putObject om { pending_setup = M.insert output (f o) om.pending_setup }
    Nothing -> modifyOutput output f >> updateScreenDetail output
