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

import           HSWM.Core
import           HSWM.Util.Posix

import qualified Bindings.Pixman.Generated as P
import qualified Bindings.Pixman.Generated.Safe as P
import qualified Bindings.Wayland.Client as WL
import qualified Bindings.Wayland.Client.Generated as WL

import qualified Data.List as L
import           Foreign hiding (void)
import           System.Posix (closeFd)

data ImageBufferPool = ImageBufferPool
  { -- | Buffer count limit per surface
    bufferMultiplicity :: !Int,
    -- | Number of surfaces serviced by this pool
    surfaceCount       :: !Int,
    wlShm              :: !WL.Shm,
    bufferListener     :: !(ConstPtr WL.Wl_buffer_listener),
    buffers            :: !(IORef ([ImageBuffer], Int))
  } deriving (Eq, Generic)

data ImageBuffer = ImageBuffer
  { buf           :: !WL.Buffer,
    pool          :: !WL.ShmPool,
    width, height :: !Int,
    size          :: !CSize,
    -- | E.g. 'WL.WL_SHM_FORMAT_ABGR8888'
    shmFormat     :: !WL.Wl_shm_format,
    -- | E.g. 'P.PIXMAN_a8r8g8b8'
    pixmanFormat  :: !P.Pixman_format_code_t,
    busy          :: !(IORef Bool),
    ptr           :: !(Ptr Void),
    busyPtr       :: !(StablePtr (IORef Bool)),
    pixmanImage   :: !(Ptr P.Pixman_image_t)
  } deriving (Eq, Generic)

newImageBufferPool :: H ImageBufferPool
newImageBufferPool = do
  let bufferMultiplicity = 3
  let surfaceCount = 0
  wlShm <- getObject
  buffers <- newIORef ([], 0)
  bufferListener <- WL.mkBufferListener $ \case
    WL.BufferRelease ud _ -> do
      busy <- deRefStablePtr $ castPtrToStablePtr $ castPtr ud
      modifyIORef' busy $ const False
  return ImageBufferPool {..}

destroyImageBufferPool :: ImageBufferPool -> IO ()
destroyImageBufferPool pool = do
  (bufs, _) <- readIORef pool.buffers
  forM_ bufs destroyImageBuffer
  WL.freeListener (Proxy :: Proxy WL.Buffer) pool.bufferListener

initImageBuffer :: ImageBufferPool -> Int -> Int -> WL.Wl_shm_format -> P.Pixman_format_code_t -> IO ImageBuffer
initImageBuffer ImageBufferPool {wlShm = wl_shm, bufferListener = listener} width height shmFormat pixmanFormat = do
  let stride = width * 4
      size = fi $ height * stride
      w = width
      h = height
  (fd, ptr) <- createShm (fi size)
  pool <- WL.shmCreatePool wl_shm (fi fd) (fi size)
  closeFd fd
  buf <- WL.shmPoolCreateBuffer pool 0 (fi w) (fi h) (fi stride) shmFormat
  -- Create pixman image
  pixmanImage <- P.pixman_image_create_bits_no_clear pixmanFormat (fi w) (fi h) (castPtr ptr) (fi stride)
  busy <- newIORef True
  -- Sets busy = False
  busyPtr <- newStablePtr busy
  _ <- WL.listenerAdd buf listener busyPtr
  return ImageBuffer {..}

destroyImageBuffer :: ImageBuffer -> IO ()
destroyImageBuffer ImageBuffer{..} = do
  WL.objectDestroy buf
  WL.objectDestroy pool
  void $ P.pixman_image_unref pixmanImage
  munmap ptr size
  freeStablePtr busyPtr

incSurfaceCount :: Int -> ImageBufferPool -> ImageBufferPool
incSurfaceCount n bp = bp { surfaceCount = bp.surfaceCount + n }

nextBuffer :: ImageBufferPool -> Int -> Int -> WL.Wl_shm_format -> IO ImageBuffer
nextBuffer pool w h shmFormat = do
  (bufs, len) <- readIORef pool.buffers

  -- Cull buffers
  when (len > pool.bufferMultiplicity * pool.surfaceCount) $ do
    let cullMax = len - pool.bufferMultiplicity * pool.surfaceCount
        doCull    _       [] = return []
        doCull    0        _ = return []
        doCull left (b : bs) = tryLockBuffer b >>= \case
          True -> (b :) <$> doCull (left - 1) bs
          False -> doCull left bs
    bufsDel <- doCull cullMax bufs
    modifyIORef' pool.buffers $ \(bs, l) -> (bs L.\\ bufsDel, l - length bufsDel)
    mapM_ destroyImageBuffer bufsDel

  -- Find suitable buffer
  findSuitable . filter check . fst =<< readIORef pool.buffers
  where
    pixmanFormat = getPixmanFormatBE shmFormat
    check b = b.width == w && b.height == h && b.shmFormat == shmFormat
    findSuitable (b : bs) = tryLockBuffer b >>= \case
                            True -> return b
                            False -> findSuitable bs
    findSuitable [] = do
      b <- initImageBuffer pool w h shmFormat pixmanFormat
      modifyIORef' pool.buffers $ \(bs, l) -> (b : bs, l + 1)
      return b

tryLockBuffer :: ImageBuffer -> IO Bool
tryLockBuffer buf = atomicModifyIORef' buf.busy $ \s -> if not s then (True, True) else (s, False)


-- | little-endian
getPixmanFormatLE :: WL.Wl_shm_format -> P.Pixman_format_code_t
getPixmanFormatLE = \case
  WL.WL_SHM_FORMAT_RGB332      -> P.PIXMAN_r3g3b2
  WL.WL_SHM_FORMAT_BGR233      -> P.PIXMAN_b2g3r3
  WL.WL_SHM_FORMAT_ARGB4444    -> P.PIXMAN_a4r4g4b4
  WL.WL_SHM_FORMAT_XRGB4444    -> P.PIXMAN_x4r4g4b4
  WL.WL_SHM_FORMAT_ABGR4444    -> P.PIXMAN_a4b4g4r4
  WL.WL_SHM_FORMAT_XBGR4444    -> P.PIXMAN_x4b4g4r4
  WL.WL_SHM_FORMAT_ARGB1555    -> P.PIXMAN_a1r5g5b5
  WL.WL_SHM_FORMAT_XRGB1555    -> P.PIXMAN_x1r5g5b5
  WL.WL_SHM_FORMAT_ABGR1555    -> P.PIXMAN_a1b5g5r5
  WL.WL_SHM_FORMAT_XBGR1555    -> P.PIXMAN_x1b5g5r5
  WL.WL_SHM_FORMAT_RGB565      -> P.PIXMAN_r5g6b5
  WL.WL_SHM_FORMAT_BGR565      -> P.PIXMAN_b5g6r5
  WL.WL_SHM_FORMAT_RGB888      -> P.PIXMAN_r8g8b8
  WL.WL_SHM_FORMAT_BGR888      -> P.PIXMAN_b8g8r8
  WL.WL_SHM_FORMAT_ARGB8888    -> P.PIXMAN_a8r8g8b8
  WL.WL_SHM_FORMAT_XRGB8888    -> P.PIXMAN_x8r8g8b8
  WL.WL_SHM_FORMAT_ABGR8888    -> P.PIXMAN_a8b8g8r8
  WL.WL_SHM_FORMAT_XBGR8888    -> P.PIXMAN_x8b8g8r8
  WL.WL_SHM_FORMAT_BGRA8888    -> P.PIXMAN_b8g8r8a8
  WL.WL_SHM_FORMAT_BGRX8888    -> P.PIXMAN_b8g8r8x8
  WL.WL_SHM_FORMAT_RGBA8888    -> P.PIXMAN_r8g8b8a8
  WL.WL_SHM_FORMAT_RGBX8888    -> P.PIXMAN_r8g8b8x8
  WL.WL_SHM_FORMAT_ARGB2101010 -> P.PIXMAN_a2r10g10b10
  WL.WL_SHM_FORMAT_ABGR2101010 -> P.PIXMAN_a2b10g10r10
  WL.WL_SHM_FORMAT_XRGB2101010 -> P.PIXMAN_x2r10g10b10
  WL.WL_SHM_FORMAT_XBGR2101010 -> P.PIXMAN_x2b10g10r10
  _                            -> WL.toCEnum 0

getPixmanFormatBE :: WL.Wl_shm_format -> P.Pixman_format_code_t
getPixmanFormatBE = \case
  WL.WL_SHM_FORMAT_ARGB8888 -> P.PIXMAN_b8g8r8a8
  WL.WL_SHM_FORMAT_XRGB8888 -> P.PIXMAN_b8g8r8x8
  WL.WL_SHM_FORMAT_ABGR8888 -> P.PIXMAN_r8g8b8a8
  WL.WL_SHM_FORMAT_XBGR8888 -> P.PIXMAN_r8g8b8x8
  WL.WL_SHM_FORMAT_BGRA8888 -> P.PIXMAN_a8r8g8b8
  WL.WL_SHM_FORMAT_BGRX8888 -> P.PIXMAN_x8r8g8b8
  WL.WL_SHM_FORMAT_RGBA8888 -> P.PIXMAN_a8b8g8r8
  WL.WL_SHM_FORMAT_RGBX8888 -> P.PIXMAN_x8b8g8r8
  _                         -> WL.toCEnum 0
