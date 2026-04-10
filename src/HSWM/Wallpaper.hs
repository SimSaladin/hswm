------------------------------------------------------------------------------
-- |
-- Module      : HSWM.Wallpaper
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
module HSWM.Wallpaper
  ( usingWallpaper, Config(..), wpStartupHook, wpExitHook, wpHandleEventHook
  ) where

import qualified HSWM.BufferPool as BP
import           HSWM.Core

import qualified Generated.Pixman as P
import qualified Generated.Pixman.Safe as P
import qualified Wayland.Client as WL
import qualified River.Objects as R

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
  { node              :: !RiverNode
  , wl_surface        :: !WL.Surface
  , rs_surface        :: !R.RiverShellSurface
  } deriving (Eq, Show)

data Ctx = Ctx
  { src_image         :: !(Maybe (JP.Image JP.PixelRGBA8))
  , bufferPool        :: !(Maybe BP.ImageBufferPool)
  , outputsState      :: !(Map RiverOutput OutputState)
  } deriving (Generic)

data OutputState = OutputState
  { out_width, out_height :: Int32
  , out_scale :: Int32
  , pending_render :: !Bool
  , surfaces :: !(Maybe Surfaces)
  } deriving (Generic)

instance Default OutputState where
  def = OutputState 0 0 1 False Nothing

usingWallpaper :: Config -> HSWMConfig H l -> HSWMConfig H l
usingWallpaper cfg userConf = userConf
  { startupHook     = userConf.startupHook <> wpStartupHook cfg
  , exitHook        = userConf.exitHook <> wpExitHook
  , renderHook      = userConf.renderHook <> render
  , handleEventHook = userConf.handleEventHook <> wpHandleEventHook
  }

ctxMVar :: MVar Ctx
ctxMVar = unsafePerformIO $ newMVar $ Ctx Nothing Nothing mempty
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

updateOutputState :: RiverOutput -> (OutputState -> OutputState) -> H ()
updateOutputState ro f = modifyMVar_ ctxMVar $ \x -> pure x { outputsState = M.alter (Just . f . fromMaybe def) ro (outputsState x) }

withOutputState :: RiverOutput -> (OutputState -> H ()) -> H ()
withOutputState ro f = readMVar ctxMVar >>= mapM_ (\(k,v) -> when (k == ro) (f v)) . M.toList . outputsState

wpHandleEventHook :: Event -> H All
wpHandleEventHook (OutputEvent (R.RiverOutputDimensions _ ro w h)) = do
  updateOutputState ro $ \x -> x { pending_render = True, out_width = fi w, out_height = fi h }
  mempty
wpHandleEventHook (WlOutputEvent (WL.OutputScale ro _ scale)) = do
  updateOutputState (R.RiverOutput $ castPtr ro) $ \x -> x { out_scale = scale }
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
      (Just img, Just surfaces) -> when (os.pending_render && isJust ctx.bufferPool) $ do
        drawImage ctx os img surfaces
        updateOutputState ro $ \x -> x { pending_render = False }
      _ -> return ()

tryLoadImage :: FilePath -> H ()
tryLoadImage fp = io (doesFileExist fp) >>= \case
  False -> return ()
  True -> io (JP.readImageWithMetadata fp) >>= \case
    Left _ -> return ()
    Right (dynimg, _metadata) -> io $ modifyMVar_ ctxMVar $ \ctx -> pure $ ctx { src_image = Just $ JP.convertRGBA8 dynimg }

calculateScale :: Integral i => i -> Int32 -> Int32 -> Double
calculateScale src out scale = fi src / (fi out * fi scale)

calculateTransform :: Integral i => i -> Int32 -> Double -> Double
calculateTransform src out scale =
  (fi src / scale - fi out) / 2 / scale

drawImage :: Ctx -> OutputState -> JP.Image JP.PixelRGBA8 -> Surfaces -> H ()
drawImage ctx OutputState{..} img Surfaces{..}= do
  let mPool = bufferPool ctx
  let w = out_width
      h = out_height
      scale = out_scale
  -- set opaque region
  compositor <- getObject -- @(Ptr WL.Wl_compositor)
  opaqueRegion <- io $ WL.compositorCreateRegion compositor
  io $ WL.regionAdd opaqueRegion 0 0 w h
  io $ WL.surfaceSetOpaqueRegion wl_surface opaqueRegion
  io $ WL.objectDestroy opaqueRegion
  case mPool of
    Just bp -> do
      let src_w = JP.imageWidth img
          src_h = JP.imageHeight img
          src_stride = src_w * 4
      logDebug $ display $ "wallpaper: drawing image w=" <> tshow w <> " h=" <> tshow h

      buf <- io $ BP.nextBuffer bp (fi $ w * scale) (fi $ h * scale)

      runInIO <- askRunInIO
      io $ R.riverNodeSetPosition node 0 0
      io $ R.riverNodePlaceBottom node
      io $ V.unsafeWith (JP.imageData img) $ \bits ->
        alloca $ \t2 ->
        alloca $ \fTransform ->
        do
          piximg <- P.pixman_image_create_bits P.PIXMAN_a8r8g8b8 (fi src_w) (fi src_h) (castPtr bits) (fi src_stride)

          -- calculate scale
          let sx' = calculateScale src_w w scale
              sy' = calculateScale src_h h scale
              (sx, sy) = if sx' > sy' then (sy', sy') else (sx', sx')

              tx = calculateTransform src_w (w * scale) sx
              ty = calculateTransform src_h (h * scale) sy

          P.pixman_f_transform_init_identity fTransform
          _ <- P.pixman_f_transform_scale fTransform nullPtr (CDouble sx) (CDouble sy)
          _ <- P.pixman_f_transform_translate fTransform nullPtr (CDouble tx) (CDouble ty)
          _ <- P.pixman_transform_from_pixman_f_transform t2 (ConstPtr fTransform)
          _ <- P.pixman_image_set_transform piximg (ConstPtr $ castPtr t2)
          _ <- P.pixman_image_set_filter piximg P.PIXMAN_FILTER_BEST (ConstPtr nullPtr) 0

          P.pixman_image_composite32 P.PIXMAN_OP_SRC piximg nullPtr buf.pixmanImage 0 0 0 0 0 0 (fi $ w * scale) (fi $ h * scale) --- (fi $ min w $ fi src_w) (fi $ min h $ fi src_h)

          runInIO $ logInfo $ "wallpaper: render " <> displayShow (w * scale, h * scale) <> " scaled from " <> displayShow (src_w, src_h)

          _ <- P.pixman_image_unref piximg
          R.riverShellSurfaceSyncNextCommit rs_surface
          WL.surfaceSetBufferScale wl_surface scale
          WL.surfaceAttach wl_surface buf.buf 0 0
          WL.surfaceDamageBuffer wl_surface 0 0 (fi $ w * scale) (fi $ h * scale)
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
              io $ R.objectDestroy ss.node
              io $ R.objectDestroy ss.rs_surface
              io $ WL.objectDestroy ss.wl_surface
        return ctx { outputsState = mempty }

initOutput :: RiverOutput -> H ()
initOutput ro = withOutputState ro $ \os -> do
  -- create surface etc.
  let w = os.out_width
  let h = os.out_height

  compositor <- getObject
  wm <- getObject
  ss <- case os.surfaces of
          Nothing -> do
            wl_surface <- io $ WL.compositorCreateSurface compositor
            river_shell_surface <- io $ R.riverWindowManagerGetShellSurface wm wl_surface
            ss_node <- io $ R.riverShellSurfaceGetNode river_shell_surface
            return $ Surfaces { node = ss_node, wl_surface = wl_surface, rs_surface = river_shell_surface }
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
  updateOutputState ro $ \x -> x { pending_render = True, surfaces = Just ss }
