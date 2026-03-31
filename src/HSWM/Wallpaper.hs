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
module HSWM.Wallpaper where

import qualified Codec.Picture as JP
import qualified Codec.Picture.Metadata as JP
import qualified Data.Vector.Storable as V
import           Foreign
import           System.Directory
import           System.IO.Unsafe
import           System.Posix (Fd)

import           HSWM.Core
import           HSWM.Util.Posix
import qualified Generated.Pixman as P
import qualified Generated.Pixman.Safe as P
import qualified Generated.Wayland.Client as WL
import           River
import qualified Wayland.Client as WL

data Config = Config
  { filepath :: FilePath
  } deriving (Show, Read)

type Image = (JP.DynamicImage, JP.Metadatas)

data Ctx = Ctx
  { pending_render :: Bool
  , node :: RiverNode
  , wl_surface :: Ptr WL.Wl_surface
  , render_width :: Int32
  , render_height :: Int32
  , src_image :: Maybe (JP.Image JP.PixelRGBA8)
  , shm_mem :: Maybe (Fd, Ptr (), Int)
  , shm_pool :: Ptr WL.Wl_shm_pool
  , buffer :: Ptr WL.Wl_buffer
  , render_pixman_img :: Ptr P.Pixman_image_t
  }

ctxMVar :: MVar Ctx
ctxMVar = unsafePerformIO newEmptyMVar
{-# NOINLINE ctxMVar #-}

startupHook :: Config -> H ()
startupHook conf = do
  compositor <- getObject
  wm <- getObject
  wl_surface <- io $ WL.wl_compositor_create_surface compositor
  river_shell_surface <- io $ riverWindowManagerGetShellSurface wm wl_surface
  ss_node <- io $ riverShellSurfaceGetNode river_shell_surface
  -- set no input region
  emptyRegion <- io $ WL.wl_compositor_create_region compositor
  io $ WL.wl_surface_set_input_region wl_surface emptyRegion
  io $ WL.wl_region_destroy emptyRegion
  io $ putMVar ctxMVar $ Ctx False ss_node wl_surface 0 0 Nothing Nothing nullPtr nullPtr nullPtr
  tryLoadImage (filepath conf)

handleEventHook :: Event -> H All
handleEventHook (WindowManagerEvent WindowManagerRenderStart{}) = render >> mempty
handleEventHook (OutputEvent (OutputDimensions _ _ w h)) = do
  deinit
  initOutput (fi w) (fi h)
  mempty
handleEventHook _ = mempty

render :: H ()
render = do
  ctx <- io $ readMVar ctxMVar
  when (ctx.pending_render && isJust ctx.src_image && isJust ctx.shm_mem) $ do
    drawImage
    io $ modifyMVar_ ctxMVar $ \x -> pure $ x { pending_render = False }

tryLoadImage :: FilePath -> H ()
tryLoadImage fp = io (doesFileExist fp) >>= \case
  False -> return ()
  True -> io (JP.readImageWithMetadata fp) >>= \case
    Left _ -> return ()
    Right (dynimg, _metadata) -> io $ modifyMVar_ ctxMVar $ \ctx -> pure $ ctx { src_image = Just $ JP.convertRGBA8 dynimg }

drawImage :: H ()
drawImage = do
  ctx@Ctx{wl_surface = surface, render_width = w, render_height = h, src_image = Just img} <- io $ readMVar ctxMVar

  let src_w = JP.imageWidth img
      src_h = JP.imageHeight img
      src_stride = src_w * 4

  debug' $ "wallpaper: drawing image w=" <> tshow w <> " h=" <> tshow h

  io $ river_node_v1_place_bottom ctx.node

  io $ V.unsafeWith (JP.imageData img) $ \bits -> do

    piximg <- P.pixman_image_create_bits P.PIXMAN_a8r8g8b8 (fi src_w) (fi src_h) (castPtr bits) (fi src_stride)
    P.pixman_image_composite32 P.PIXMAN_OP_SRC piximg nullPtr ctx.render_pixman_img 0 0 0 0 0 0 (fi $ min w $ fi src_w) (fi $ min h $ fi src_h)
    _ <- P.pixman_image_unref piximg

    WL.wl_surface_attach surface ctx.buffer 0 0
    WL.wl_surface_damage_buffer surface 0 0 (fi w) (fi h)
    WL.wl_surface_commit surface

deinit :: H ()
deinit = do
  io $ modifyMVar_ ctxMVar $ \ctx -> case ctx.shm_mem of
      Nothing -> return ctx
      Just (_fd, ptr, size) -> do
        WL.wl_buffer_destroy ctx.buffer
        WL.wl_shm_pool_destroy ctx.shm_pool
        _ <- P.pixman_image_unref ctx.render_pixman_img
        munmap ptr size
        --free ptr
        --closeFd fd
        return ctx { shm_mem = Nothing }

initOutput :: Int32 -> Int32 -> H ()
initOutput w h =
  withObject @(Ptr WL.Wl_shm) $ \wl_shm ->
  withObject @(Ptr WL.Wl_compositor) $ \compositor -> do
    ctx <- io $ readMVar ctxMVar
    -- set opaque region
    opaqueRegion <- io $ WL.wl_compositor_create_region compositor
    io $ WL.wl_region_add opaqueRegion 0 0 w h
    io $ WL.wl_surface_set_opaque_region ctx.wl_surface opaqueRegion
    io $ WL.wl_region_destroy opaqueRegion
    -- create shm buffer
    let stride = w * 4
        size = h * stride
    (fd, ptr) <- io $ createShm (fi size)
    pool <- io $ WL.wl_shm_create_pool wl_shm (fi fd) (fi size)
    buffer <- io $ WL.wl_shm_pool_create_buffer pool 0 (fi w) (fi h) (fi stride) (fi (WL.WL_SHM_FORMAT_ABGR8888).unwrap)
    -- create pixman image
    pixmanImg <- io $ P.pixman_image_create_bits_no_clear P.PIXMAN_a8r8g8b8 (fi w) (fi h) (castPtr ptr) (fi stride)
    -- update ctx
    io $ modifyMVar_ ctxMVar $ \x -> pure x
      { pending_render = True
      , render_width = w
      , render_height = h
      , shm_mem = Just (fd, ptr, fi size)
      , shm_pool = pool
      , buffer = buffer
      , render_pixman_img = pixmanImg
      }
