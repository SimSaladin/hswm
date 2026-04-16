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
import Bindings.Wayland.Client.Generated.Safe qualified as WL

import Foreign
import System.Posix (Fd)

data ImageBufferPool = ImageBufferPool
  { buffers :: MVar ([ImageBuffer], Int),
    wlShm :: !WL.Shm,
    bufferListener :: !(ConstPtr WL.Wl_buffer_listener)
  }
  deriving (Generic)

data ImageBuffer = ImageBuffer
  { width, height, size :: !Int,
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
destroyImageBuffer ibuf = do
  WL.objectDestroy ibuf.buf
  WL.objectDestroy ibuf.pool
  _ <- P.pixman_image_unref ibuf.pixmanImage
  munmap ibuf.ptr ibuf.size
  free ibuf.busy

newImageBufferPool :: H ImageBufferPool
newImageBufferPool = do
  wlShm <- getObject
  buffers <- io $ newMVar ([], 0)
  bufferListener <- io $ WL.mkBufferListener $ \case
    WL.BufferRelease aUserData _aBuf -> do
      let p = castPtr aUserData :: Ptr Bool
      poke p False
  return ImageBufferPool {..}

nextBuffer :: ImageBufferPool -> Int -> Int -> IO ImageBuffer
nextBuffer pool w h = modifyMVar pool.buffers go00
  where
    go00 x@(_, len) = if len > 10 then cullBuffers 3 x >>= go0 else go0 x
    go0 (bufs, len) = go bufs
      where
        go (b : bs)
          | b.width == w,
            b.height == h =
              peek b.busy >>= \case
                True -> go bs
                False -> poke b.busy True >> return ((bufs, len), b)
          | otherwise = go bs
        go [] = do
          b <- initImageBuffer pool w h
          return ((b : bufs, len + 1), b)

cullBuffers :: Int -> ([ImageBuffer], Int) -> IO ([ImageBuffer], Int)
cullBuffers limit = go0
  where
    go0 (bufs, len) = go 0 [] (len - 3 * limit) bufs
      where
        go nlen nbufs overhead bs
          | overhead <= 0 = return (nbufs ++ bs, nlen + length bs)
        go nlen nbufs overhead (b : bs) =
          peek b.busy >>= \case
            True -> go (nlen + 1) (nbufs ++ [b]) overhead bs
            False -> destroyImageBuffer b >> go nlen nbufs (overhead - 1) bs
        go nlen nbufs _ [] = return (nbufs, nlen)

initImageBuffer :: ImageBufferPool -> Int -> Int -> IO ImageBuffer
initImageBuffer ImageBufferPool {wlShm = wl_shm, bufferListener = listener} width height = do
  let stride = width * 4
      size = height * stride
      w = width
      h = height
  (fd, ptr) <- createShm (fi size)
  pool <- io $ WL.shmCreatePool wl_shm (fi fd) (fi size)
  buf <- WL.shmPoolCreateBuffer pool 0 (fi w) (fi h) (fi stride) WL.WL_SHM_FORMAT_ABGR8888
  -- create pixman image
  pixmanImage <- io $ P.pixman_image_create_bits_no_clear P.PIXMAN_a8r8g8b8 (fi w) (fi h) (castPtr ptr) (fi stride)
  busy <- Foreign.new True
  -- Sets busy = False
  _ <- io $ {-WL.wl_buffer_add_listener-} WL.listenerAdd buf listener (castPtr busy)
  return ImageBuffer {..}
