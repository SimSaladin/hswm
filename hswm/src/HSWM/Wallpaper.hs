------------------------------------------------------------------------------
-- |
-- Module      : HSWM.Wallpaper
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
module HSWM.Wallpaper
  ( usingWallpaper, Config(..), wpStartupHook, wpExitHook, wpHandleEventHook
  ) where

import qualified HSWM.BufferPool as BP
import           HSWM.Core

import qualified Generated.Pixman as P
import qualified Generated.Pixman.Safe as P
import qualified Wayland.Client as WL
import qualified River.Objects as R
import qualified Bindings.Wayland.FractionalScaleV1 as FS
import qualified Bindings.Wayland.WlrOutputManagementUnstableV1 as Wlr
import qualified Bindings.Wayland.WlrLayerShellUnstableV1 as Wlr
import qualified Bindings.Wayland.Viewporter as VP
import qualified Bindings.Wayland.WlrLayerShellUnstableV1.Generated as Wlr

import qualified Codec.Picture as JP
import qualified Data.Vector.Storable as V
import           Foreign
import Foreign.C
import           System.Directory
import           System.IO.Unsafe
import qualified Data.Map as M


data Config = Config
  { filepath :: FilePath
  }
  deriving (Show, Read)

data Surfaces = Surfaces
  -- { node              :: !RiverNode
  { wl_surface        :: !WL.Surface
  --, rs_surface        :: !R.RiverShellSurface
  , layerSurface      :: !(Wlr.LayerSurface)
  , outViewport       :: !(Maybe VP.Viewport)
  } deriving (Eq, Show)

data Ctx = Ctx
  { src_image         :: !(Maybe (JP.Image JP.PixelRGBA8))
  , bufferPool        :: !(Maybe BP.ImageBufferPool)
  , outputsState      :: !(Map RiverOutput OutputState)
  , wlrOutputScale    :: !(Map String WlrOutputState)
  } deriving (Generic)

data WlrOutputState = WlrOutputState
  { wlrScale   :: Double
  , outputHead :: Wlr.OutputHead
  } deriving (Generic)

instance Default WlrOutputState where
  def = WlrOutputState 1 (Wlr.OutputHead nullPtr)

data OutputState = OutputState
  { out_x, out_y, out_width, out_height :: Int32
  , pending_render :: !Bool
  , configured :: Bool
  , surfaces :: !(Maybe Surfaces)
  , name :: !String
  , scale :: !Int32
  , pref_fract_scale :: !Word32
  , wl_output :: !WL.Output
  } deriving (Generic)

instance Default OutputState where
  def = OutputState 0 0 0 0 False False Nothing "" 1 0 (WL.Output nullPtr)

usingWallpaper :: Config -> HSWMConfig H l -> HSWMConfig H l
usingWallpaper cfg userConf = userConf
  { startupHook     = userConf.startupHook <> wpStartupHook cfg
  , exitHook        = userConf.exitHook <> wpExitHook
  , renderHook      = userConf.renderHook <> render
  , handleEventHook = userConf.handleEventHook <> wpHandleEventHook
  }

ctxMVar :: MVar Ctx
ctxMVar = unsafePerformIO $ newMVar $ Ctx Nothing Nothing mempty mempty
{-# NOINLINE ctxMVar #-}

wpStartupHook :: Config -> H ()
wpStartupHook conf = do
  logDebug "Wallpaper startup..."
  ctx <- io $ readMVar ctxMVar
  -- create bufferpool if missing
  when (isNothing ctx.bufferPool) $ do
    bp <- BP.newImageBufferPool
    io $ modifyMVar_ ctxMVar $ \c -> pure c { bufferPool = Just bp }

  -- load source image
  tryLoadImage (filepath conf)

wpExitHook :: H ()
wpExitHook = deinit

updateWlrOutputState :: String -> (WlrOutputState -> WlrOutputState) -> H ()
updateWlrOutputState name f = modifyMVar_ ctxMVar $ \x -> pure x { wlrOutputScale = M.alter (Just . f . fromMaybe def) name (wlrOutputScale x) }

updateOutputState :: RiverOutput -> (OutputState -> OutputState) -> H ()
updateOutputState ro f = modifyMVar_ ctxMVar $ \x -> pure x { outputsState = M.alter (Just . f . fromMaybe def) ro (outputsState x) }

withOutputState :: RiverOutput -> (OutputState -> H ()) -> H ()
withOutputState ro f = readMVar ctxMVar >>= mapM_ (\(k,v) -> when (k == ro) (f v)) . M.toList . outputsState

withWlrOutputScale :: String -> (Double -> H ()) -> H ()
withWlrOutputScale name f = readMVar ctxMVar >>= mapM_ (\(k,v) -> when (k == name) (f v.wlrScale)) . M.toList . wlrOutputScale

wpHandleEventHook :: Event -> H All
--wpHandleEventHook (OutputEvent (R.RiverOutputDimensions _ ro w h)) = do
--  updateOutputState ro $ \x -> x { pending_render = True, out_width = fi w, out_height = fi h }
--  mempty

wpHandleEventHook (OutputEvent (R.RiverOutputPosition _ ro x y)) = do
  updateOutputState ro $ \a -> a { pending_render = True, out_x = fi x, out_y = fi y }
  mempty

wpHandleEventHook (WlrOutputHeadEvent (Wlr.OutputHeadName _ oh name)) = do
  updateWlrOutputState name $ \x -> x { outputHead = oh }
  mempty
wpHandleEventHook (WlrOutputHeadEvent (Wlr.OutputHeadScale _ oh i)) = do
  CDouble scale' <- io $ WL.wl_fixed_to_double i
  modifyMVar_ ctxMVar $ \x -> pure x { wlrOutputScale = M.map (\s -> if s.outputHead == oh then s { wlrScale = scale' } :: WlrOutputState else s) (wlrOutputScale x) }
  mempty

wpHandleEventHook (WlOutputEvent (WL.OutputScale ro _ scale)) = do
  let ro' = R.RiverOutput $ castPtr ro
  updateOutputState ro' $ \x -> x { scale = scale }
  mempty

wpHandleEventHook (WlOutputEvent (WL.OutputName ro wl_output name)) = do
  let ro' = R.RiverOutput $ castPtr ro
  updateOutputState ro' $ \x -> x { name = name, wl_output = wl_output }
  mempty

wpHandleEventHook (WlOutputEvent (WL.OutputDone ro _)) = do
  let ro' = R.RiverOutput $ castPtr ro
  --deinit
  initOutput ro'
  mempty
wpHandleEventHook _ = mempty

render :: H ()
render = do
  ctx <- io $ readMVar ctxMVar
  forM_ (M.toList ctx.outputsState) $ \(ro, os) ->
    case (ctx.src_image, os.surfaces) of
      (Just img, Just surfaces) -> when (os.pending_render && os.configured && isJust ctx.bufferPool) $ do
        drawImage ctx os img surfaces
        updateOutputState ro $ \x -> x { pending_render = False }
      _ -> return ()

tryLoadImage :: FilePath -> H ()
tryLoadImage fp = io (doesFileExist fp) >>= \case
  False -> return ()
  True -> io (JP.readImageWithMetadata fp) >>= \case
    Left _ -> return ()
    Right (dynimg, _metadata) -> io $ modifyMVar_ ctxMVar $ \ctx -> pure $ ctx { src_image = Just $ JP.convertRGBA8 dynimg }

calculateScale :: (Integral i) => i -> Int32 -> Int32 -> Double
calculateScale src out scale = fi src / (fi out * fi scale)

calculateTransform :: Integral i => i -> Int32 -> Double -> Double
calculateTransform src out scale =
  (fi src / scale - fi out) / 2 / scale

drawImage :: Ctx -> OutputState -> JP.Image JP.PixelRGBA8 -> Surfaces -> H ()
drawImage ctx OutputState{..} img Surfaces{..}= do
  let mPool = bufferPool ctx
  let x = out_x
  let y = out_y
  let w = out_width
      h = out_height

  -- calculate buffer size
  buf_size@(buf_w, buf_h) <- return $ case () of
                _ | pref_fract_scale > 0 ->
                        let buffer_width = ceiling $ (fi w * fi pref_fract_scale + fract_denom / 2) / fract_denom
                            buffer_height = ceiling $ (fi h * fi pref_fract_scale + fract_denom / 2) / fract_denom
                            fract_denom = 120
                         in (buffer_width, buffer_height)
                _ -> (w * scale, h * scale)

  -- set opaque region
  compositor <- getObject
  opaqueRegion <- io $ WL.compositorCreateRegion compositor
  io $ WL.regionAdd opaqueRegion 0 0 w h
  io $ WL.surfaceSetOpaqueRegion wl_surface opaqueRegion
  io $ WL.objectDestroy opaqueRegion

  case mPool of
    Just bp -> do
      let src_w = JP.imageWidth img
          src_h = JP.imageHeight img
          src_stride = src_w * 4
      logDebug $ display $ "wallpaper: drawing image w=" <> tshow w <> " h=" <> tshow h <> " scale=" <> tshow scale <> " buf=" <> tshow buf_size <> " ffract=" <> tshow pref_fract_scale

      buf <- io $ BP.nextBuffer bp (fi buf_w) (fi buf_h)

      runInIO <- askRunInIO
      --io $ R.riverNodeSetPosition node x y
      --io $ R.riverNodePlaceBottom node
      io $ V.unsafeWith (JP.imageData img) $ \bits ->
        alloca $ \t2 ->
        alloca $ \fTransform ->
        do
          piximg <- P.pixman_image_create_bits P.PIXMAN_a8r8g8b8 (fi src_w) (fi src_h) (castPtr bits) (fi src_stride)

          -- calculate scale
          let sx' = calculateScale src_w buf_w 1 -- scale
              sy' = calculateScale src_h buf_h 1 -- scale
              (sx, sy) = if sx' > sy' then (sy', sy') else (sx', sx')

              tx = calculateTransform src_w buf_w sx
              ty = calculateTransform src_h buf_h sy

          P.pixman_f_transform_init_identity fTransform
          _ <- P.pixman_f_transform_scale fTransform nullPtr (CDouble sx) (CDouble sy)
          _ <- P.pixman_f_transform_translate fTransform nullPtr (CDouble tx) (CDouble ty)
          _ <- P.pixman_transform_from_pixman_f_transform t2 (ConstPtr fTransform)
          _ <- P.pixman_image_set_transform piximg (ConstPtr $ castPtr t2)
          _ <- P.pixman_image_set_filter piximg P.PIXMAN_FILTER_BEST (ConstPtr nullPtr) 0

          P.pixman_image_composite32 P.PIXMAN_OP_SRC piximg nullPtr buf.pixmanImage 0 0 0 0 0 0 buf_w buf_h --- (fi $ min w $ fi src_w) (fi $ min h $ fi src_h)

          _ <- P.pixman_image_unref piximg
          --R.riverShellSurfaceSyncNextCommit rs_surface
          WL.surfaceAttach wl_surface buf.buf 0 0
          WL.surfaceDamageBuffer wl_surface 0 0 buf_w buf_h

          case outViewport of
            Just vp -> io $ VP.viewportSetDestination vp w h
            Nothing -> return () -- io $ WL.surfaceSetBufferScale wl_surface scale

          WL.surfaceCommit wl_surface
    Nothing -> log' "wallpaper: warning: bufferpool not initialized"

deinit :: H ()
deinit = do
  io $ modifyMVar_ ctxMVar $ \ctx -> case ctx.bufferPool of
      Nothing -> return ctx
      Just _ -> do -- return ctx -- XXX: ??
        forM_ ctx.outputsState $ \os -> do
          case os.surfaces of
            Nothing -> return ()
            Just ss -> do
              --io $ R.objectDestroy ss.node
              --io $ R.objectDestroy ss.rs_surface
              io $ WL.objectDestroy ss.wl_surface
        return ctx { outputsState = mempty }

initOutput :: RiverOutput -> H ()
initOutput ro = withOutputState ro $ \os -> withWlrOutputScale os.name $ \scale -> do
  -- create surface etc.
  let x = os.out_x
  let y = os.out_y
  let w = os.out_width
  let h = os.out_height

  compositor <- getObject
  --wm <- getObject
  ss <- case os.surfaces of
          Nothing -> do
            wl_surface <- io $ WL.compositorCreateSurface compositor
            --river_shell_surface <- io $ R.riverWindowManagerGetShellSurface wm wl_surface
            --ss_node <- io $ R.riverShellSurfaceGetNode river_shell_surface

            runInIO <- askRunInIO
            fsl <- io $ FS.mkFractionalScaleListener $ \case
              FS.FractionalScalePreferredScale ud fs fscale ->
                runInIO $ updateOutputState ro $ \x -> x { pref_fract_scale = fscale, pending_render = True }

            fsm <- getObject
            fractSurface <- io $ FS.fractionalScaleManagerGetFractionalScale fsm wl_surface
            io $ WL.listenerAdd fractSurface fsl nullPtr

            vpr <- getObject
            viewport <- io $ VP.viewporterGetViewport vpr wl_surface

            lsListener <- io $ Wlr.mkLayerSurfaceListener $ \case
              Wlr.LayerSurfaceConfigure _ ls serial w h -> do
                Wlr.layerSurfaceAckConfigure ls serial
                runInIO $ updateOutputState ro $ \x -> x { out_width = fi w, out_height = fi h, configured = True, pending_render = True }
              Wlr.LayerSurfaceClosed{} -> do
                runInIO $ logError "Layer surface closed!"
                return ()

            layerShell <- getObject
            layerSurface <- io $ Wlr.layerShellGetLayerSurface layerShell wl_surface os.wl_output (fi $ R.fromCEnum Wlr.ZWLR_LAYER_SHELL_V1_LAYER_BACKGROUND) (Just "wallpaper")
            io $ Wlr.layerSurfaceSetSize layerSurface 0 0
            io $ Wlr.layerSurfaceSetAnchor layerSurface (1 + 2 + 4 + 8)
            io $ Wlr.layerSurfaceSetExclusiveZone layerSurface (-1)
            io $ WL.listenerAdd layerSurface lsListener nullPtr

            io $ WL.surfaceCommit wl_surface

            return $ Surfaces { wl_surface = wl_surface, layerSurface, outViewport = Just viewport }
          Just ss -> return ss

  -- set no input region
  emptyRegion <- io $ WL.compositorCreateRegion compositor
  io $ WL.surfaceSetInputRegion ss.wl_surface emptyRegion
  io $ WL.objectDestroy emptyRegion

  -- set opaque region
  opaqueRegion <- io $ WL.compositorCreateRegion compositor
  io $ WL.regionAdd opaqueRegion 0 0 w h
  io $ WL.surfaceSetOpaqueRegion ss.wl_surface opaqueRegion
  io $ WL.objectDestroy opaqueRegion

  -- update ctx
  updateOutputState ro $ \x -> x { surfaces = Just ss }
