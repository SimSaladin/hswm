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
import           System.Directory
import           System.IO.Unsafe


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
  { pending_render    :: !Bool
  , surfaces          :: !(Maybe Surfaces)
  , render_width      :: !Int32
  , render_height     :: !Int32
  , src_image         :: !(Maybe (JP.Image JP.PixelRGBA8))
  , bufferPool        :: !(Maybe BP.ImageBufferPool)
  } deriving (Generic)

usingWallpaper :: Config -> HSWMConfig H l -> HSWMConfig H l
usingWallpaper cfg userConf = userConf
  { startupHook     = userConf.startupHook <> wpStartupHook cfg
  , exitHook        = userConf.exitHook <> wpExitHook
  , renderHook      = userConf.renderHook <> render
  , handleEventHook = userConf.handleEventHook <> wpHandleEventHook
  }

ctxMVar :: MVar Ctx
ctxMVar = unsafePerformIO $ newMVar $ Ctx False Nothing 0 0 Nothing Nothing
{-# NOINLINE ctxMVar #-}

wpStartupHook :: Config -> H ()
wpStartupHook conf = do
  ctx <- io $ readMVar ctxMVar
  -- create bufferpool if missing
  when (isNothing ctx.bufferPool) $ do
    bp <- BP.newImageBufferPool
    io $ modifyMVar_ ctxMVar $ \c -> pure c { bufferPool = Just bp }

  -- load source image
  tryLoadImage (filepath conf)

wpExitHook :: H ()
wpExitHook = deinit

wpHandleEventHook :: Event -> H All
wpHandleEventHook (OutputEvent (R.RiverOutputDimensions _ _ w h)) = do
  io $ modifyMVar_ ctxMVar $ \x -> pure x { pending_render = True, render_width = fi w, render_height = fi h }
  mempty
wpHandleEventHook (WlOutputEvent WL.OutputDone{}) = do
  --deinit
  initOutput
  mempty
wpHandleEventHook _ = mempty

render :: H ()
render = do
  ctx <- io $ readMVar ctxMVar
  when (ctx.pending_render && isJust ctx.surfaces && isJust ctx.src_image && isJust ctx.bufferPool) $ do
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
  Ctx{bufferPool = mPool, surfaces = Just Surfaces{..}, render_width = w, render_height = h, src_image = Just img} <- io $ readMVar ctxMVar
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
      debug' $ "wallpaper: drawing image w=" <> tshow w <> " h=" <> tshow h
      buf <- io $ BP.nextBuffer bp (fi w) (fi h)
      io $ R.riverNodeSetPosition node 0 0
      io $ R.riverNodePlaceBottom node
      io $ V.unsafeWith (JP.imageData img) $ \bits -> do
        piximg <- P.pixman_image_create_bits P.PIXMAN_a8r8g8b8 (fi src_w) (fi src_h) (castPtr bits) (fi src_stride)
        P.pixman_image_composite32 P.PIXMAN_OP_SRC piximg nullPtr buf.pixmanImage 0 0 0 0 0 0 (fi $ min w $ fi src_w) (fi $ min h $ fi src_h)
        _ <- P.pixman_image_unref piximg
        R.riverShellSurfaceSyncNextCommit rs_surface
        WL.surfaceAttach wl_surface buf.buf 0 0
        WL.surfaceDamageBuffer wl_surface 0 0 (fi w) (fi h)
        WL.surfaceCommit wl_surface
    Nothing -> log' "wallpaper: warning: bufferpool not initialized"

deinit :: H ()
deinit = do
  io $ modifyMVar_ ctxMVar $ \ctx -> case ctx.bufferPool of
      Nothing -> return ctx
      Just _ -> do -- return ctx -- XXX: ??
        case ctx.surfaces of
          Nothing -> return ctx
          Just ss -> do
            io $ R.objectDestroy ss.node
            io $ R.objectDestroy ss.rs_surface
            io $ WL.objectDestroy ss.wl_surface
            return ctx{surfaces = Nothing}

initOutput :: H ()
initOutput = do
  ctx <- io $ readMVar ctxMVar
  -- create surface etc.
  let w = ctx.render_width
  let h = ctx.render_height

  compositor <- getObject
  wm <- getObject
  ss <- case ctx.surfaces of
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
  io $ modifyMVar_ ctxMVar $ \x -> pure x { pending_render = True, surfaces = Just ss }
