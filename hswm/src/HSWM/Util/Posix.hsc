-- |
-- Module      : HSWM.Util.Posix
-- Description :
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Util.Posix
  ( module HSWM.Util.Posix
  , CSize
  ) where

#define _GNU_SOURCE
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <poll.h>

import Foreign
import Foreign.C
import System.Posix (Fd(..))
import qualified System.Posix as P

-- | @memfdCreate name@
memfdCreate :: String -> IO Fd
memfdCreate name = withCString name $ \c_name ->
  throwErrnoIfMinus1 "memfd_create" $
    c_memfd_create c_name (#{const MFD_CLOEXEC} .|. #{const MFD_ALLOW_SEALING})

foreign import ccall unsafe "memfd_create"
  c_memfd_create :: CString -> CUInt -> IO Fd

createShm :: Int -> IO (Fd, Ptr Void)
createShm size = bracketOnError (memfdCreate "hswm-shm") P.closeFd $ \fd -> do
  P.setFdSize fd (fi size)
  bracketOnError (mmap fd) (flip munmap (fi size)) $ \ptr -> do
    fcntl fd #{const F_ADD_SEALS} (#{const F_SEAL_GROW} .|. #{const F_SEAL_SHRINK} .|. #{const F_SEAL_SEAL})
    return (fd, ptr)
  where
    mmap fd = throwErrnoIf (== wordPtrToPtr #{const MAP_FAILED}) "mmap" $
      c_mmap nullPtr (fi size) (#{const PROT_READ} .|. #{const PROT_WRITE}) #{const MAP_SHARED} fd 0

munmap :: Ptr a -> CSize -> IO ()
munmap ptr size = throwErrnoIfMinus1_ "munmap" $ c_munmap ptr size

foreign import ccall unsafe "munmap"
  c_munmap :: forall a. Ptr a -> CSize -> IO CInt

fcntl :: Fd -> CUInt -> CUInt -> IO ()
fcntl fd a b = throwErrnoIfMinus1_ "fcntl" $ c_fcntl fd a b

foreign import ccall unsafe "fcntl"
  c_fcntl :: Fd -> CUInt -> CUInt -> IO CInt

foreign import ccall unsafe "mmap"
  c_mmap :: forall a. Ptr a -> CSize -> CUInt -> CUInt -> Fd -> CSize -> IO (Ptr Void)

-- * Poll

data PollFd = PollFd
  { pollfd_fd      :: {-# UNPACK #-} !Fd -- ^ Fd to poll
  , pollfd_events  :: {-# UNPACK #-} !CShort -- ^ types of events poller cares about
  , pollfd_revents :: {-# UNPACK #-} !CShort -- ^ types of events that actually occurred
  } deriving (Eq, Show)

data PollResult = PollResult !Int
                | PollTimeout
  deriving (Eq, Ord, Show)

data PollTimeout = PollBlock
                 | PollWaitMs Int
  deriving (Eq, Ord, Show)

setPollEvents :: Ptr PollFd -> CShort -> IO ()
setPollEvents p ev = #{poke struct pollfd, events} p ev

isRevent :: Ptr PollFd -> CShort -> IO Bool
isRevent p ev = do
  rev <- #{peek struct pollfd, revents} p
  return $ rev .&. ev /= 0

instance Storable PollFd where
  sizeOf    _ = #{size struct pollfd}
  alignment _ = #{alignment struct pollfd}
  peek p = PollFd
    <$> fmap Fd (#{peek struct pollfd, fd} p)
    <*> #{peek struct pollfd, events} p
    <*> #{peek struct pollfd, revents} p
  poke p (PollFd (Fd fd) events revents) = do
    #{poke struct pollfd, fd}      p fd
    #{poke struct pollfd, events}  p events
    #{poke struct pollfd, revents} p revents

-- | There is data to read
pOLLIN :: CShort
pOLLIN = #{const POLLIN}

pOLLOUT :: CShort
pOLLOUT = #{const POLLOUT}

-- | Hang up
pOLLHUP :: CShort
pOLLHUP = #{const POLLHUP}

withPollFds :: [PollFd] -> ((Ptr PollFd, CULong) -> IO a) -> IO a
withPollFds fds f = withArray fds $ \p -> f (p, fi $ length fds)

poll :: Ptr PollFd -> Int -> PollTimeout -> IO PollResult
poll pfd npfd to = do
  r <- throwErrnoIfMinus1 "poll" $ c_poll pfd (fi npfd) (asPollTimeout to)
  return $! if r == 0 then PollTimeout else PollResult (fi r)
  where
    asPollTimeout PollBlock      = -1
    asPollTimeout (PollWaitMs i) = fi i

foreign import ccall unsafe "poll"
  c_poll :: Ptr PollFd -> CULong -> CInt -> IO CInt

-- * GNU extras

-- | Close a range of file descriptors (efficiently).
--
-- @
--   closeRange 0 maxBound False True
-- @
closeRange :: Integral i
           => i -- ^ First fd to close
           -> i -- ^ Last fd (max)
           -> Bool -- ^ Don't close, just set CLOEXEC?
           -> Bool -- ^ Unshare the fds before closing?
           -> IO ()
closeRange first last cloexec unshare =
  throwErrnoIfMinus1_ "close_range" $
    c_close_range (fi first) (fi last) $
      (if cloexec then #{const CLOSE_RANGE_CLOEXEC} else 0) .|.
      (if unshare then #{const CLOSE_RANGE_UNSHARE} else 0)

foreign import ccall unsafe "close_range"
  c_close_range :: CUInt -> CUInt -> CInt -> IO CInt
