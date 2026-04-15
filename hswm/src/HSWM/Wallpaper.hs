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

import Bindings.Wayland.FractionalScaleV1 qualified as FS
import Bindings.Wayland.Viewporter qualified as VP
import Bindings.Wayland.WlrLayerShellUnstableV1 qualified as Wlr
import Bindings.Wayland.WlrLayerShellUnstableV1.Generated qualified as Wlr
import Bindings.Wayland.WlrOutputManagementUnstableV1 qualified as Wlr
import Codec.Picture qualified as JP
import Data.Map qualified as M
import Data.Vector.Storable qualified as V
import Foreign
import Foreign.C
import Bindings.Pixman.Generated qualified as P
import Bindings.Pixman.Generated.Safe qualified as P
import HSWM.BufferPool qualified as BP
import HSWM.Core
import Bindings.River qualified as R
import System.Directory
import System.IO.Unsafe
import Bindings.Wayland.Client qualified as WL

-- * Usage

usingWallpaper :: WallpaperConfig -> HSWMConfig H l -> HSWMConfig H l
usingWallpaper cfg userConf =
  userConf
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
  { src_image :: !(Maybe (JP.Image JP.PixelRGBA8)),
    bufferPool :: !(Maybe BP.ImageBufferPool),
    outputsState :: !(Map RiverOutput OutputState)
  }
  deriving (Generic)

data OutputState = OutputState
  { out_x, out_y, out_width, out_height :: Int32,
    pending_render :: !Bool,
    configured :: Bool,
    surfaces :: !(Maybe Surfaces),
    name :: !String,
    scale :: !Int32,
    pref_fract_scale :: !Word32,
    wl_output :: !WL.Output
  }
  deriving (Generic)

data Surfaces = Surfaces
  { wl_surface   :: !WL.Surface,
    layerSurface :: !Wlr.LayerSurface,
    outViewport  :: !(Maybe VP.Viewport)
  }
  deriving (Eq, Show)

data WlrOutputState = WlrOutputState
  { wlrScale :: Double,
    outputHead :: Wlr.OutputHead
  }
  deriving (Generic)

instance Default WlrOutputState where
  def = WlrOutputState 1 (Wlr.OutputHead nullPtr)

instance Default OutputState where
  def = OutputState 0 0 0 0 False False Nothing "" 1 0 (WL.Output nullPtr)

-- ** State

ctxMVar :: MVar Ctx
{-# NOINLINE ctxMVar #-}
ctxMVar = unsafePerformIO $ newMVar $ Ctx Nothing Nothing mempty

-- ** Hooks

wpStartupHook :: WallpaperConfig -> H ()
wpStartupHook conf = do
  logInfo $ "wallpaper: startup" :# [ "config" .= show conf ]
  ctx <- io $ readMVar ctxMVar
  -- create bufferpool if missing
  when (isNothing ctx.bufferPool) $ do
    bp <- BP.newImageBufferPool
    io $ modifyMVar_ ctxMVar $ \c -> pure c {bufferPool = Just bp}
  -- load source image
  tryLoadImage (filepath conf)

wpExitHook :: H ()
wpExitHook = do
  logInfo "wallpaper: exiting"
  deinit

wpHandleEventHook :: Event -> H All
wpHandleEventHook (OutputEvent (R.RiverOutputDimensions _ ro w h)) = do
  updateOutputState ro $ \a -> a {pending_render = True, out_width = fi w, out_height = fi h}
  mempty
wpHandleEventHook (OutputEvent (R.RiverOutputPosition _ ro x y)) = do
  updateOutputState ro $ \a -> a {pending_render = True, out_x = fi x, out_y = fi y}
  mempty
wpHandleEventHook (WlOutputEvent (WL.OutputScale ro _ scale)) = do
  let ro' = R.RiverOutput $ castPtr ro
  updateOutputState ro' $ \x -> x {pending_render = True, scale = scale}
  mempty
wpHandleEventHook (WlOutputEvent (WL.OutputName ro wl_output name)) = do
  let ro' = R.RiverOutput $ castPtr ro
  updateOutputState ro' $ \x -> x {name = name, wl_output = wl_output}
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
        Right (dynimg, _metadata) -> io $ modifyMVar_ ctxMVar $ \ctx -> pure $ ctx {src_image = Just $ JP.convertRGBA8 dynimg}

-- ** Manage and Render

calculateScale :: (Integral i) => i -> Int32 -> Int32 -> Double
calculateScale src out scale = fi src / (fi out * fi scale)

calculateTransform :: (Integral i) => i -> Int32 -> Double -> Double
calculateTransform src out scale =
  (fi src / scale - fi out) / 2 / scale

render :: H ()
render = do
  ctx <- io $ readMVar ctxMVar
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

      -- Calculate the buffer size
      buf_size@(buf_w, buf_h)
          | pref_fract_scale > 0 =
              let buffer_width  = ceiling $ (fi w * fi pref_fract_scale + fract_denom / 2 :: Double) / fract_denom
                  buffer_height = ceiling $ (fi h * fi pref_fract_scale + fract_denom / 2 :: Double) / fract_denom
                  fract_denom = 120
               in (buffer_width, buffer_height)
          | otherwise = (w * scale, h * scale)

  -- Set opaque region
  compositor <- getObject
  opaqueRegion <- io $ WL.compositorCreateRegion compositor
  io $ WL.regionAdd opaqueRegion 0 0 w h
  io $ WL.surfaceSetOpaqueRegion wl_surface opaqueRegion
  io $ WL.objectDestroy opaqueRegion

  logDebug $ "drawing wallpaper" :# [ "outsize" .= (w, h)
                                    , "output" .= name
                                    , "image" .= (src_w, src_h)
                                    , "scale" .= scale
                                    , "bufsize" .= buf_size
                                    , "fscale" .= pref_fract_scale ]

  io $ V.unsafeWith (JP.imageData img) $ \bits ->
    alloca $ \t2 ->
      alloca $ \fTransform -> do
          pix <- P.pixman_image_create_bits P.PIXMAN_a8r8g8b8 (fi src_w) (fi src_h) (castPtr bits) (fi src_stride)

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
          _ <- P.pixman_image_set_transform pix (ConstPtr $ castPtr t2)
          _ <- P.pixman_image_set_filter pix P.PIXMAN_FILTER_BEST (ConstPtr nullPtr) 0

          buf <- io $ BP.nextBuffer bp (fi buf_w) (fi buf_h)

          P.pixman_image_composite32 P.PIXMAN_OP_SRC pix nullPtr buf.pixmanImage 0 0 0 0 0 0 buf_w buf_h
          _ <- P.pixman_image_unref pix

          WL.surfaceAttach wl_surface buf.buf 0 0
          WL.surfaceDamageBuffer wl_surface 0 0 buf_w buf_h
          case outViewport of
            Just vp -> io $ VP.viewportSetDestination vp w h
            Nothing -> return () -- io $ WL.surfaceSetBufferScale wl_surface scale -- XXX
          WL.surfaceCommit wl_surface

deinit :: H ()
deinit = do
  -- Destroy ctx
  io $ modifyMVar_ ctxMVar $ \ctx -> case ctx.bufferPool of
    Nothing -> return ctx
    Just _ -> do
      -- return ctx -- XXX: ??
      forM_ ctx.outputsState $ \os -> case os.surfaces of
          Nothing -> return ()
          Just ss -> do
            -- io $ R.objectDestroy ss.node
            -- io $ R.objectDestroy ss.rs_surface
            io $ WL.objectDestroy ss.wl_surface
      return ctx {outputsState = mempty}

-- | Create surface etc.
initOutput :: RiverOutput -> H ()
initOutput ro = withOutputState ro $ \os -> do
  compositor <- getObject
  let w = os.out_width
  let h = os.out_height
  ss <- case os.surfaces of
    Nothing -> do
      fsm <- getObject
      vpr <- getObject
      layerShell <- getObject
      runInIO <- askRunInIO
      -- Surface
      wl_surface <- io $ WL.compositorCreateSurface compositor
      -- fractional scale
      fractSurface <- io $ FS.fractionalScaleManagerGetFractionalScale fsm wl_surface
      fsl <- io $ FS.mkFractionalScaleListener $ \case
        FS.FractionalScalePreferredScale _ _ fscale ->
          runInIO $ do
            updateOutputState ro $ \x -> x {pref_fract_scale = fscale, pending_render = True}
      io $ WL.listenerAdd fractSurface fsl nullPtr
      -- viewport
      viewport <- io $ VP.viewporterGetViewport vpr wl_surface
       -- layersurface
      layerSurface <- io $ Wlr.layerShellGetLayerSurface layerShell wl_surface os.wl_output Wlr.ZWLR_LAYER_SHELL_V1_LAYER_BACKGROUND (Just "wallpaper")
      io $ Wlr.layerSurfaceSetSize layerSurface 0 0
      io $ Wlr.layerSurfaceSetAnchor layerSurface (WL.toCEnum $ 1 + 2 + 4 + 8)
      io $ Wlr.layerSurfaceSetExclusiveZone layerSurface (-1)
      lsListener <- io $ Wlr.mkLayerSurfaceListener $ \case
        Wlr.LayerSurfaceConfigure _ ls serial _w _h -> do
          Wlr.layerSurfaceAckConfigure ls serial
          runInIO $ do
            updateOutputState ro $ \x -> x
              { out_width = fi w
              , out_height = fi h
              , configured = True
              , pending_render = not x.configured || (x.out_width, x.out_height) /= (fi w, fi h)
              }
        Wlr.LayerSurfaceClosed {} -> do
          runInIO $ logError "Layer surface closed!"
          return ()
      io $ WL.listenerAdd layerSurface lsListener nullPtr
      io $ WL.surfaceCommit wl_surface
      return $ Surfaces {wl_surface = wl_surface, layerSurface, outViewport = Just viewport}
    Just ss -> return ss

  -- set no input region
  emptyRegion <- WL.compositorCreateRegion compositor
  io $ WL.surfaceSetInputRegion ss.wl_surface emptyRegion
  io $ WL.objectDestroy emptyRegion

  -- set opaque region
  opaqueRegion <- WL.compositorCreateRegion compositor
  io $ WL.regionAdd opaqueRegion 0 0 w h
  io $ WL.surfaceSetOpaqueRegion ss.wl_surface opaqueRegion
  io $ WL.objectDestroy opaqueRegion

  -- Update ctx
  updateOutputState ro $ \x -> x {surfaces = Just ss}

------------------------------------------
-- Internal boilerplate

updateOutputState :: RiverOutput -> (OutputState -> OutputState) -> H ()
updateOutputState ro f = modifyMVar_ ctxMVar $ \x -> pure x {outputsState = M.alter (Just . f . fromMaybe def) ro (outputsState x)}

withOutputState :: RiverOutput -> (OutputState -> H ()) -> H ()
withOutputState ro f = readMVar ctxMVar >>= mapM_ (\(k, v) -> when (k == ro) (f v)) . M.toList . outputsState
