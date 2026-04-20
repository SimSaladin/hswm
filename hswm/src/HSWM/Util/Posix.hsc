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

data PollFd = PollFd
  { pollfd_fd :: !Fd -- ^ Fd to poll
  , pollfd_events :: !CShort -- ^ types of events poller cares about
  , pollfd_revents :: !CShort -- ^ types of events that actually occurred
  } deriving (Eq, Show)

data PollResult = PollResult !Int | PollTimeout
  deriving (Eq, Ord, Show)

data PollTimeout = PollBlock | PollWaitMs Int
  deriving (Eq, Ord, Show)

foreign import ccall unsafe "memfd_create" _memfd_create :: CString -> CUInt -> IO Fd
foreign import ccall unsafe "fcntl" _fcntl :: Fd -> CUInt -> CUInt -> IO CInt
foreign import ccall unsafe "munmap" _munmap :: Ptr Void -> CSize -> IO CInt
foreign import ccall unsafe "mmap" _mmap :: Ptr Void -> CSize -> CUInt {- prot -} -> CUInt {- flags -} -> Fd {- fildes -} -> CSize {- offset -} -> IO (Ptr Void)
foreign import ccall unsafe "poll" _poll :: Ptr PollFd -> CULong -> CInt -> IO CInt

-- | @newMemFd name@
newMemFd :: String -> IO Fd
newMemFd name = withCString name $ \c_name ->
  throwErrnoIfMinus1 "memfd_create" $ _memfd_create c_name (#{const MFD_CLOEXEC} .|. #{const MFD_ALLOW_SEALING})

createShm :: Int -> IO (Fd, Ptr Void)
createShm size =
  -- fd <- newMemFd "hswm-shm"
  bracketOnError (newMemFd "hswm-shm") P.closeFd $ \fd -> do
    P.setFdSize fd (fi size)
    bracketOnError (throwErrnoIf (== wordPtrToPtr #{const MAP_FAILED}) "mmap" $
      _mmap nullPtr (fromIntegral size) (#{const PROT_READ} .|. #{const PROT_WRITE}) #{const MAP_SHARED} fd 0)
      (flip munmap (fi size)) $ \ptr -> do
        throwErrnoIfMinus1_ "fcntl" $ _fcntl fd #{const F_ADD_SEALS} (#{const F_SEAL_GROW} .|. #{const F_SEAL_SHRINK} .|. #{const F_SEAL_SEAL})
        return (fd, ptr)

munmap :: Ptr Void -> CSize -> IO ()
munmap ptr size = throwErrnoIfMinus1_ "munmap" $ _munmap ptr size

setPollEvents :: Ptr PollFd -> CShort -> IO ()
setPollEvents p ev = #{poke struct pollfd, events} p ev

isRevent :: Ptr PollFd -> CShort -> IO Bool
isRevent p ev = do
  rev <- #{peek struct pollfd, revents} p
  return $ rev .&. ev /= 0

instance Storable PollFd where
  sizeOf _ = #{size struct pollfd}
  alignment _ = #{alignment struct pollfd}
  peek p = PollFd
    <$> fmap Fd (#{peek struct pollfd, fd} p)
    <*> #{peek struct pollfd, events} p
    <*> #{peek struct pollfd, revents} p
  poke p (PollFd (Fd fd) events revents) = do
    #{poke struct pollfd, fd} p fd
    #{poke struct pollfd, events} p events
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
  r <- throwErrnoIfMinus1 "poll" $ _poll pfd (fi npfd) (asPollTimeout to)
  return $! if r == 0 then PollTimeout else PollResult (fi r)
  where
    asPollTimeout PollBlock = -1
    asPollTimeout (PollWaitMs i) = fi i
