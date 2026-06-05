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

import           HSWM.Core hiding (width, height, size)
import           HSWM.Util.Posix

import qualified WL.Client as WL

import qualified Data.List as L
import           System.Posix (closeFd)

data ImageBufferPool = ImageBufferPool
  { bufferMultiplicity :: !Int -- ^ Buffer count limit per surface
  , surfaceCount       :: !Int -- ^ Number of surfaces serviced by this pool
  , wlShm              :: !WL.Shm
  , bufferListener     :: !(ConstPtr (WL.ObjectListener WL.Buffer))
  , buffers            :: !(IORef ([ImageBuffer], Int))
  } deriving (Eq, Generic)

data ImageBuffer = ImageBuffer
  { width, height :: !Int
  , stride        :: !Int
  , size          :: !CSize
  , shmFormat     :: !WL.ShmFormat -- ^ E.g. 'WL.WL_SHM_FORMAT_ABGR8888'
  , buf           :: !WL.Buffer
  , pool          :: !WL.ShmPool
  , ptr           :: !(Ptr Void)
  , busy          :: !(IORef Bool)
  , busyPtr       :: !(StablePtr (IORef Bool))
  } deriving (Eq, Generic)

newImageBufferPool :: H ImageBufferPool
newImageBufferPool = do
  let bufferMultiplicity = 3
      surfaceCount = 0
  wlShm <- getObject
  buffers <- newIORef ([], 0)
  bufferListener <- WL.createListener $ \case
    WL.BufferRelease ud _ -> do
      busy <- deRefStablePtr $ castPtrToStablePtr $ castPtr ud
      modifyIORef' busy $ const False
  return ImageBufferPool {..}

destroyImageBufferPool :: MonadIO m => ImageBufferPool -> m ()
destroyImageBufferPool pool = do
  (bufs, _) <- readIORef pool.buffers
  forM_ bufs destroyImageBuffer
  io $ WL.objectDestroy pool.bufferListener

initImageBuffer :: MonadIO m
                => ImageBufferPool
                -> WL.ShmFormat
                -> Int -- ^ width
                -> Int -- ^ height
                -> m ImageBuffer
initImageBuffer bp shmFormat width height = io $ do
  let stride = width * 4
      size = fi $ height * stride
  (fd, ptr) <- createShm (fi size)
  pool <- WL.shmCreatePool bp.wlShm (fi fd) (fi size)
  closeFd fd
  buf <- WL.shmPoolCreateBuffer pool 0 (fi width) (fi height) (fi stride) shmFormat
  busy <- newIORef True
  -- Sets busy = False
  busyPtr <- newStablePtr busy
  WL.listenerAdd buf bp.bufferListener busyPtr
  return ImageBuffer {..}

destroyImageBuffer :: MonadIO m => ImageBuffer -> m ()
destroyImageBuffer ImageBuffer{..} = io $ do
  WL.objectDestroy buf
  WL.objectDestroy pool
  munmap ptr size
  freeStablePtr busyPtr

incSurfaceCount :: Int -> ImageBufferPool -> ImageBufferPool
incSurfaceCount n bp = bp { surfaceCount = bp.surfaceCount + n }

nextBuffer :: (MonadIO m) => ImageBufferPool -> WL.ShmFormat -> Int -> Int -> m ImageBuffer
nextBuffer pool shmFormat w h = io $ do
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
    check b = b.width == w && b.height == h && b.shmFormat == shmFormat
    findSuitable (b : bs) = tryLockBuffer b >>= \case
                            True -> return b
                            False -> findSuitable bs
    findSuitable [] = do
      b <- initImageBuffer pool shmFormat w h
      modifyIORef' pool.buffers $ \(bs, l) -> (b : bs, l + 1)
      return b

tryLockBuffer :: MonadIO m => ImageBuffer -> m Bool
tryLockBuffer buf = atomicModifyIORef' buf.busy $ \s -> if not s then (True, True) else (s, False)
