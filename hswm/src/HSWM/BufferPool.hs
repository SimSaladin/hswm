-- |
-- Module      : HSWM.BufferPool
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.BufferPool where

import HSWM.Core
import HSWM.Util.Posix

import Bindings.Pixman.Generated qualified as P
import Bindings.Pixman.Generated.Safe qualified as P
import Bindings.Wayland.Client qualified as WL
import Bindings.Wayland.Client.Generated qualified as WL

import Foreign hiding (void)
import System.Posix (Fd, closeFd)

data ImageBufferPool = ImageBufferPool
  { buffers :: MVar ([ImageBuffer], Int),
    wlShm :: !WL.Shm,
    bufferListener :: !(ConstPtr WL.Wl_buffer_listener),
    -- | Buffer count limit per surface
    bufferMultiplicity :: !Int,
    -- | Number of surfaces serviced by this pool
    surfaceCount :: !Int
  }
  deriving (Generic)

data ImageBuffer = ImageBuffer
  { width, height, size :: !Int,
    -- | E.g. 'WL.WL_SHM_FORMAT_ABGR8888'
    shmFormat :: WL.Wl_shm_format,
    -- | E.g. 'P.PIXMAN_a8r8g8b8'
    pixmanFormat :: P.Pixman_format_code_t,
    fd :: !Fd,
    ptr :: !(Ptr ()),
    busy :: !(Ptr Bool),
    buf :: !WL.Buffer,
    pool :: !WL.ShmPool,
    pixmanImage :: !(Ptr P.Pixman_image_t)
  }
  deriving (Generic)

destroyImageBufferPool :: ImageBufferPool -> IO ()
destroyImageBufferPool pool = do
  tryReadMVar pool.buffers >>= \case
    Nothing -> pure ()
    Just (xs, _) -> forM_ xs destroyImageBuffer
  let p = unConstPtr pool.bufferListener
  WL.freeListener (Proxy :: Proxy WL.BufferEvent) =<< peek p

destroyImageBuffer :: ImageBuffer -> IO ()
destroyImageBuffer ImageBuffer{..} = do
  WL.objectDestroy buf
  WL.objectDestroy pool
  void $ P.pixman_image_unref pixmanImage
  munmap ptr size
  free busy

newImageBufferPool :: H ImageBufferPool
newImageBufferPool = do
  let bufferMultiplicity = 3
  let surfaceCount = 0
  wlShm <- getObject
  buffers <- io $ newMVar ([], 0)
  bufferListener <- io $ WL.mkBufferListener $ \case
    WL.BufferRelease aUserData _aBuf -> poke (castPtr aUserData :: Ptr Bool) False
  return ImageBufferPool {..}

nextBuffer :: ImageBufferPool -> Int -> Int -> IO ImageBuffer
nextBuffer pool w h = modifyMVar pool.buffers go00
  where
    shmFormat = WL.WL_SHM_FORMAT_ABGR8888
    pixmanFormat = P.PIXMAN_a8r8g8b8

    go00 x@(_, len) = if len > pool.bufferMultiplicity * pool.surfaceCount
                         then cullBuffers pool x >>= go0
                         else go0 x
    go0 (bufs, len) = go bufs
      where
        go (b : bs)
          | b.width == w, b.height == h =
              peek b.busy >>= \case
                True -> go bs
                False -> poke b.busy True >> return ((bufs, len), b)
          | otherwise = go bs
        go [] = do
          b <- initImageBuffer pool w h shmFormat pixmanFormat
          return ((b : bufs, len + 1), b)

cullBuffers :: ImageBufferPool -> ([ImageBuffer], Int) -> IO ([ImageBuffer], Int)
cullBuffers bp = go0
  where
    go0 (bufs, len) = go 0 [] (len - bp.bufferMultiplicity * bp.surfaceCount) bufs
      where
        go nlen nbufs overhead bs
          | overhead <= 0 = return (nbufs ++ bs, nlen + length bs)
        go nlen nbufs overhead (b : bs) =
          peek b.busy >>= \case
            True -> go (nlen + 1) (nbufs ++ [b]) overhead bs
            False -> destroyImageBuffer b >> go nlen nbufs (overhead - 1) bs
        go nlen nbufs _ [] = return (nbufs, nlen)

initImageBuffer :: ImageBufferPool -> Int -> Int -> WL.Wl_shm_format -> P.Pixman_format_code_t -> IO ImageBuffer
initImageBuffer ImageBufferPool {wlShm = wl_shm, bufferListener = listener} width height shmFormat pixmanFormat = do
  let stride = width * 4
      size = height * stride
      w = width
      h = height
  (fd, ptr) <- createShm (fi size)
  pool <- io $ WL.shmCreatePool wl_shm (fi fd) (fi size)
  io $ closeFd fd
  buf <- WL.shmPoolCreateBuffer pool 0 (fi w) (fi h) (fi stride) shmFormat
  -- Create pixman image
  pixmanImage <- io $ P.pixman_image_create_bits_no_clear pixmanFormat (fi w) (fi h) (castPtr ptr) (fi stride)
  busy <- Foreign.new True
  -- Sets busy = False
  _ <- io $ WL.listenerAdd buf listener (castPtr busy)
  return ImageBuffer {..}
