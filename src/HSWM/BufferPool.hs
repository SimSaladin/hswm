------------------------------------------------------------------------------
-- |
-- Module      : HSWM.BufferPool
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
module HSWM.BufferPool where

import           Data.Proxy
import           Foreign
import           System.Posix (Fd)

import qualified Generated.Pixman as P
import qualified Generated.Pixman.Safe as P
import qualified Generated.Wayland.Client as WL
import           HSWM.Core
import           HSWM.Util.Posix
import qualified Wayland.Client as WL

data ImageBufferPool = ImageBufferPool
  { buffers        :: MVar ([ImageBuffer], Int)
  , wlShm          :: Ptr WL.Wl_shm
  , bufferListener :: ConstPtr WL.Wl_buffer_listener
  } deriving (Generic)

data ImageBuffer = ImageBuffer
  { fd            :: !Fd
  , ptr           :: !(Ptr ())
  , width, height :: Int
  , size          :: !Int
  , buf           :: !(Ptr WL.Wl_buffer)
  , pixmanImage   :: !(Ptr P.Pixman_image_t)
  , busy          :: !(Ptr Bool)
  , pool          :: Ptr WL.Wl_shm_pool
  } deriving (Generic)

newImageBufferPool :: H ImageBufferPool
newImageBufferPool = do
  wlShm <- getObject
  buffers <- io $ newMVar ([], 0)
  bufferListener <- io $ WL.mkWlBufferListener $ \case
    WL.WlBufferRelease aUserData _aBuf -> do
      let p = castPtr aUserData :: Ptr Bool
      poke p False
  return ImageBufferPool{..}

nextBuffer :: ImageBufferPool -> Int -> Int -> IO ImageBuffer
nextBuffer pool w h = modifyMVar pool.buffers go00
  where
    go00 x@(_, len) = if len > 10 then cullBuffers 3 x >>= go0 else go0 x
    go0 (bufs, len) = go bufs
      where
      go (b:bs)
        | b.width == w, b.height == h = peek b.busy >>= \case
            True -> go bs
            False -> poke b.busy True >> return ((bufs, len), b)
        | otherwise = go bs
      go [] = do
        b <- initImageBuffer pool w h
        return ((b : bufs, len + 1), b)

cullBuffers :: Int -> ([ImageBuffer], Int) -> IO ([ImageBuffer], Int)
cullBuffers limit = go0
  where
    go0 (bufs, len) = go 0 [] (len - 3 * limit) bufs where
      go nlen nbufs overhead bs
        | overhead <= 0 = return (nbufs ++ bs, nlen + length bs)
      go nlen nbufs overhead (b:bs) = peek b.busy >>= \case
        True  -> go (nlen + 1) (nbufs ++ [b]) overhead bs
        False -> destroyImageBuffer b >> go nlen nbufs (overhead - 1) bs
      go nlen nbufs _ [] = return (nbufs, nlen)

initImageBuffer :: ImageBufferPool -> Int -> Int -> IO ImageBuffer
initImageBuffer ImageBufferPool{wlShm = wl_shm, bufferListener = listener} width height = do
    let stride = width * 4
        size = height * stride
        w = width
        h = height

    (fd, ptr) <- createShm (fi size)
    pool <- io $ WL.wl_shm_create_pool wl_shm (fi fd) (fi size)
    buf <- io $ WL.wl_shm_pool_create_buffer pool 0 (fi w) (fi h) (fi stride) (fi (WL.WL_SHM_FORMAT_ABGR8888).unwrap)

    -- create pixman image
    pixmanImage <- io $ P.pixman_image_create_bits_no_clear P.PIXMAN_a8r8g8b8 (fi w) (fi h) (castPtr ptr) (fi stride)

    busy <- Foreign.new True

    -- Set busy = False
    _ <- io $ WL.wl_buffer_add_listener buf listener (castPtr busy)
    return ImageBuffer{..}

destroyImageBufferPool :: ImageBufferPool -> IO ()
destroyImageBufferPool pool = do
    tryReadMVar pool.buffers >>= \case
      Nothing -> pure ()
      Just (xs, _) -> forM_ xs destroyImageBuffer
    let p = unConstPtr pool.bufferListener
    WL.freeListener (Proxy :: Proxy WL.WlBufferEvent) =<< peek p
    free p

destroyImageBuffer :: ImageBuffer -> IO ()
destroyImageBuffer ibuf = do
    WL.wl_buffer_destroy ibuf.buf
    WL.wl_shm_pool_destroy ibuf.pool
    _ <- P.pixman_image_unref ibuf.pixmanImage
    munmap ibuf.ptr ibuf.size
    free ibuf.busy
