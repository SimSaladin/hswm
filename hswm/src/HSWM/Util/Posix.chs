------------------------------------------------------------------------------
-- |
-- Module      : HSWM.Util.Posix
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
module HSWM.Util.Posix where

import Foreign
import Foreign.C
import System.Posix (Fd(..))
import qualified System.Posix as P

#define _GNU_SOURCE
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <poll.h>

newMemfd :: String -> IO Fd
newMemfd name = withCString name $ \c_name ->
  Fd <$> {#call memfd_create#} c_name (1 {- MFD_CLOEXEC-} .|. 2 {- MFD_ALLOW_SEALING -})

foreign import ccall unsafe "fcntl" c_fcntl :: Fd -> CUInt -> CUInt -> IO ()
foreign import ccall unsafe "munmap" munmap :: Ptr () -> Int -> IO ()

createShm :: Int -> IO (Fd, Ptr ())
createShm size = do
  fd <- newMemfd "hswm-shm"
  P.setFdSize fd (fi size)
  ptr <- {#call mmap as _mmap#} nullPtr (fromIntegral size) ({#const PROT_READ#} .|. {#const PROT_WRITE#}) {#const MAP_SHARED#} (fromIntegral fd) 0
  c_fcntl (fi fd) {#const F_ADD_SEALS#} ({#const F_SEAL_GROW#} .|. {#const F_SEAL_SHRINK#} .|. {#const F_SEAL_SEAL#})
  return (fd, ptr)

data PollFd = PollFd
  { pollfd_fd :: !Fd -- ^ Fd to poll
  , pollfd_events :: !CShort -- ^ types of events poller cares about
  , pollfd_revents :: !CShort -- ^ types of events that actually occurred
  }

-- | There is data to read
pOLLIN :: CShort
pOLLIN = {#const POLLIN#}

pOLLOUT :: CShort
pOLLOUT = {#const POLLOUT#}

-- | Hang up
pOLLHUP :: CShort
pOLLHUP = {#const POLLHUP#}

instance Storable PollFd where
  sizeOf _ = {#sizeof pollfd#}
  alignment _ = {#alignof pollfd#}
  peek p = PollFd
    <$> fmap Fd ({#get pollfd.fd#} p)
    <*> {#get pollfd.events#} p
    <*> {#get pollfd.revents#} p
  poke p (PollFd (Fd fd) events revents) = do
    {#set pollfd.fd#} p fd
    {#set pollfd.events#} p events
    {#set pollfd.revents#} p revents

{#pointer *pollfd as PollFdPtr -> PollFd#}

setPollEvents :: PollFdPtr -> CShort -> IO ()
setPollEvents p ev = {#set pollfd.events#} p ev

isRevent :: PollFdPtr -> CShort -> IO Bool
isRevent p ev = do
  rev <- {#get pollfd.revents#} p
  return $ rev .&. ev /= 0

data PollResult
  = PollResult !Int
  | PollTimeout
  | PollError

getPollResult :: CInt -> PollResult
getPollResult 0 = PollTimeout
getPollResult (-1) = PollError
getPollResult n = PollResult (fi n)

data PollTimeout = PollBlock | PollWaitMs Int

asPollTimeout :: PollTimeout -> CInt
asPollTimeout PollBlock = -1
asPollTimeout (PollWaitMs i) = fi i

{#fun unsafe poll as c_poll
  { `PollFdPtr'
  , `CULong'
  , asPollTimeout `PollTimeout'
  } -> `PollResult' getPollResult#}

withPollFds :: [PollFd] -> ((PollFdPtr, CULong) -> IO a) -> IO a
withPollFds pollfds f = withArray pollfds $ \p -> f (p, fi $ length pollfds)
