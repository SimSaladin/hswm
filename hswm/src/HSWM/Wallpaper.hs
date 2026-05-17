-- |
-- Module      : HSWM.Wallpaper
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Wallpaper
  ( WallpaperConfig (..),
    usingWallpaper,
    wpStartupHook,
    wpExitHook,
    wpHandleEventHook,
  )
where

import qualified HSWM.BufferPool as BP
import           HSWM.Core

import qualified Wayland as WL
import qualified Wayland.Viewporter as VP
import qualified Pixman as P

import qualified Bindings.River as R
import qualified Bindings.Wayland.FractionalScaleV1 as FS
import qualified Bindings.Wlr.LayerShellUnstableV1 as Wlr
import qualified Bindings.Wlr.LayerShellUnstableV1.Generated as Wlr

import qualified Codec.Picture as JP

import qualified Data.Map as M
import qualified Data.Vector.Storable as V
import           Foreign

-- * Usage

usingWallpaper :: WallpaperConfig -> HSWMConfig H l -> HSWMConfig H l
usingWallpaper cfg userConf = userConf
  { startupHook = userConf.startupHook <> wpStartupHook cfg,
    exitHook = userConf.exitHook <> wpExitHook,
    renderHook = userConf.renderHook <> render,
    handleEventHook = userConf.handleEventHook <> wpHandleEventHook
  }

newtype WallpaperConfig = WallpaperConfig { filepath :: FilePath }
  deriving (Show, Read)

-- * Implementation
-- ** Types

data Ctx = Ctx
  { outputsState :: !(Map RiverOutput OutputState)
  , src_image    :: !(Maybe (JP.Image JP.PixelRGBA8))
  , bufferPool   :: !(Maybe BP.ImageBufferPool)
  }
  deriving (Generic)

instance Default Ctx where
  def = Ctx def def def

data OutputState = OutputState
  { out_x, out_y, out_width, out_height :: !Int32
  , scale                               :: !Int32
  , pref_fract_scale                    :: !Word32
  , name                                :: !String
  , pending_render                      :: !Bool
  , configured                          :: !Bool
  , wl_output                           :: !WL.Output
  , surfaces                            :: !(Maybe Surfaces)
  } deriving (Generic)

instance Default OutputState where
  def = OutputState 0 0 0 0 1 0 "" False False def Nothing

data Surfaces = Surfaces
  { wl_surface   :: !WL.Surface
  , layerSurface :: !Wlr.LayerSurface
  , outViewport  :: !(Maybe VP.Viewport)
  } deriving (Eq, Show)

-- ** Hooks

wpStartupHook :: WallpaperConfig -> H ()
wpStartupHook conf = do
  logInfo $ "wallpaper: startup" :# [ "config" .= show conf ]
  ctx <- getObjectDef @Ctx
  -- create bufferpool if missing
  when (isNothing ctx.bufferPool) $ do
    bp <- BP.newImageBufferPool
    modifyObjectDef $ \c -> c {bufferPool = Just bp}
  -- load source image
  tryLoadImage (filepath conf)

wpExitHook :: H ()
wpExitHook = do
  logInfo "wallpaper: exiting"
  deinit

wpHandleEventHook :: Event -> H All
wpHandleEventHook (WindowManagerEvent (R.RiverWindowManagerOutput{})) = do
  modifyObjectDef $ \c -> c {bufferPool = fmap (BP.incSurfaceCount 1) (bufferPool c)}
  mempty
wpHandleEventHook (OutputEvent (R.RiverOutputDimensions _ ro w h)) = do
  updateOutputState ro $ \a -> a {pending_render = True, out_width = fi w, out_height = fi h}
  mempty
wpHandleEventHook (OutputEvent (R.RiverOutputPosition _ ro x y)) = do
  updateOutputState ro $ \a -> a {pending_render = True, out_x = fi x, out_y = fi y}
  mempty
wpHandleEventHook (OutputEvent (R.RiverOutputRemoved _ ro)) = do
  withOutputState ro deinitOutput
  modifyObjectDef $ \c -> c
    { bufferPool = fmap (BP.incSurfaceCount (-1)) (bufferPool c)
    , outputsState = M.delete ro c.outputsState
    }
  mempty
wpHandleEventHook (WlOutputEvent (WL.OutputScale ro _ scale)) = do
  let ro' = R.RiverOutput $ castPtr ro
  updateOutputState ro' $ \x -> x {pending_render = True, scale = scale}
  mempty
wpHandleEventHook (WlOutputEvent (WL.OutputName ro wl_output name)) = do
  let ro' = R.RiverOutput $ castPtr ro
  updateOutputState ro' $ \x -> x {name, wl_output}
  mempty
wpHandleEventHook (WlOutputEvent (WL.OutputDone ro _)) = do
  let ro' = R.RiverOutput $ castPtr ro
  initOutput ro'
  mempty
wpHandleEventHook _ = mempty

-- ** Loading image files

tryLoadImage :: FilePath -> H ()
tryLoadImage fp =
  io (doesFileExist fp) >>= \case
    False -> return ()
    True ->
      io (JP.readImageWithMetadata fp) >>= \case
        Left _ -> return ()
        Right (dynimg, _metadata) -> modifyObjectDef $ \ctx -> ctx {src_image = Just $ JP.convertRGBA8 dynimg}

-- ** Manage and Render

calculateScale :: (Integral i) => i -> Int32 -> Int32 -> Double
calculateScale src out scale = fi src / (fi out * fi scale)

calculateTransform :: (Integral i) => i -> Int32 -> Double -> Double
calculateTransform src out scale = (fi src / scale - fi out) / 2 / scale

render :: H ()
render = do
  ctx <- getObjectDef @Ctx
  forM_ (M.toList ctx.outputsState) $ \(ro, os) ->
    case (ctx.bufferPool, ctx.src_image, os.surfaces) of
      (Just bp, Just img, Just surfaces) -> when (os.pending_render && os.configured && os.out_width > 0 && os.out_height > 0) $ do
        drawImage bp os img surfaces
        updateOutputState ro $ \x -> x {pending_render = False}
      _ -> return ()

drawImage :: BP.ImageBufferPool -> OutputState -> JP.Image JP.PixelRGBA8 -> Surfaces -> H ()
drawImage bp OutputState {..} img Surfaces {..} = do
  let w = out_width
      h = out_height
      src_w = JP.imageWidth img
      src_h = JP.imageHeight img
      src_stride = src_w * 4
      shmFormat = WL.ShmFormatABGR8888
      pixmanFormat = BP.getPixmanFormatBE shmFormat

      -- Calculate the buffer size
      buf_size@(buf_w, buf_h)
          | pref_fract_scale > 0 =
              let buffer_width  = ceiling $ (fi w * fi pref_fract_scale + fract_denom / 2 :: Double) / fract_denom
                  buffer_height = ceiling $ (fi h * fi pref_fract_scale + fract_denom / 2 :: Double) / fract_denom
                  fract_denom = 120
               in (buffer_width, buffer_height)
          | otherwise = (w * scale, h * scale)

      -- calculate scale
      sx' = calculateScale src_w buf_w 1 -- scale
      sy' = calculateScale src_h buf_h 1 -- scale
      (sx, sy) = if sx' > sy' then (sy', sy') else (sx', sx')

      tx = calculateTransform src_w buf_w sx
      ty = calculateTransform src_h buf_h sy

  -- Set opaque region
  compositor <- getObject
  WL.withNewRegion compositor $ \opaqueRegion -> do
    WL.regionAdd opaqueRegion 0 0 w h
    WL.surfaceSetOpaqueRegion wl_surface opaqueRegion

  buf <- BP.nextBuffer bp shmFormat (fi buf_w) (fi buf_h)

  logDebug $ "drawing wallpaper" :#
    [ "out" .= name
    , "out-size" .= (w, h)
    , "out-scale" .= scale
    , "out-fscale" .= pref_fract_scale
    , "src-size" .= (src_w, src_h)
    , "buf-size" .= buf_size
    , "calc-scale" .= ((sx', sy'), (sx, sy))
    , "calc-trans" .= (tx, ty)
    ]

  _ <- io $ V.unsafeWith (JP.imageData img) $ \bits -> do
    let trans = P.transformScale sx sy False
              $ P.transformTranslate tx ty False P.transformIdentity
    let pix =
          P.imageSetFilter P.FilterBest [] $
          P.imageSetTransform (P.fromFTransform trans) $
          P.imageWithBits pixmanFormat (fi src_w, fi src_h) True (castPtr bits) (fi src_stride)
    let dest =
          P.imageSetComposite32 (P.setComposite32 pix) { P.op = P.OpSrc, P.size = (buf_w, buf_h) } $
          P.imageWithBits pixmanFormat (buf.width, buf.height) False (castPtr buf.ptr) buf.stride
    P.createImage dest

  WL.surfaceAttach wl_surface buf.buf 0 0
  WL.surfaceDamageBuffer wl_surface 0 0 buf_w buf_h
  case outViewport of
    Just vp -> VP.viewportSetDestination vp w h
    Nothing -> return () -- io $ WL.surfaceSetBufferScale wl_surface scale -- XXX
  WL.surfaceCommit wl_surface

-- | Destroy ctx
deinit :: H ()
deinit = do
  ctx <- getObjectDef @Ctx
  forM_ ctx.outputsState $ deinitOutput
  forM_ ctx.bufferPool $ io . BP.destroyImageBufferPool
  modifyObjectDef $ \c -> c {outputsState = mempty, bufferPool = def}

deinitOutput :: OutputState -> H ()
deinitOutput os = forM_ os.surfaces $ \ss -> do
  io $ WL.objectDestroy ss.wl_surface
  io $ WL.objectDestroy ss.layerSurface
  forM_ ss.outViewport $ io . WL.objectDestroy

-- | Create surface etc.
initOutput :: RiverOutput -> H ()
initOutput ro = withOutputState ro $ \os -> do
  compositor <- getObject
  let w = os.out_width
  let h = os.out_height
  ss <- case os.surfaces of
    Just ss -> return ss
    Nothing -> do
      runInIO <- askRunInIO
      wl_surface <- WL.compositorCreateSurface compositor

      -- surface: set no input region
      WL.withNewRegion compositor $ WL.surfaceSetInputRegion wl_surface

      -- fractional scale
      fractSurface <- withObject $ \fsm -> FS.fractionalScaleManagerGetFractionalScale fsm wl_surface

      fsl <- WL.createListener $ \case
        FS.FractionalScalePreferredScale _ _ fscale -> runInIO $ do
          logInfo $ "wallpaper: fractional scale updated" :# [ "fscale" .= fscale, "output" .= show ro ]
          updateOutputState ro $ \x -> x {pref_fract_scale = fscale, pending_render = True}
      WL.listenerAdd_ fractSurface fsl

      -- viewport
      viewport <- withObject $ \vpr -> VP.viewporterGetViewport vpr wl_surface

       -- layersurface
      layerSurface <- withObject $ \layerShell ->
        Wlr.layerShellGetLayerSurface layerShell wl_surface os.wl_output Wlr.ZWLR_LAYER_SHELL_V1_LAYER_BACKGROUND (Just "wallpaper")
      Wlr.layerSurfaceSetSize layerSurface 0 0
      Wlr.layerSurfaceSetAnchor layerSurface (R.toCEnum $ 1 + 2 + 4 + 8) --1 + 2 + 4 + 8)
      Wlr.layerSurfaceSetExclusiveZone layerSurface (-1)

      lsListener <- WL.createListener $ \case
        Wlr.LayerSurfaceConfigure _ ls serial cw ch -> runInIO $ do
          Wlr.layerSurfaceAckConfigure ls serial
          logInfo $ "wallpaper: layer surface configure" :# [ "size" .= show (cw, ch), "old-size" .= show (w, h), "output" .= show ro ]
          updateOutputState ro $ \x -> x
              { out_width = fi cw
              , out_height = fi ch
              , configured = True
              , pending_render = not x.configured || (x.out_width, x.out_height) /= (fi cw, fi ch)
              }

        Wlr.LayerSurfaceClosed {} -> do
          runInIO $ logError "Layer surface closed!"
          return ()

      WL.listenerAdd_ layerSurface lsListener
      WL.surfaceCommit wl_surface

      return $ Surfaces {wl_surface, layerSurface, outViewport = Just viewport}

  -- set opaque region
  WL.withNewRegion compositor $ \opaqueRegion -> do
    WL.regionAdd opaqueRegion 0 0 w h
    WL.surfaceSetOpaqueRegion ss.wl_surface opaqueRegion

  -- Update ctx
  updateOutputState ro $ \x -> x {surfaces = Just ss}

------------------------------------------
-- Internal boilerplate

updateOutputState :: RiverOutput -> (OutputState -> OutputState) -> H ()
updateOutputState ro f = modifyObjectDef $ \x -> x {outputsState = M.alter (Just . f . fromMaybe def) ro (outputsState x)}

withOutputState :: RiverOutput -> (OutputState -> H ()) -> H ()
withOutputState ro f = getObjectDef >>= mapM_ (\(k, v) -> when (k == ro) (f v)) . M.toList . outputsState
