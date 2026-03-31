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

newMemfd :: String -> IO Fd
newMemfd name = withCString name $ \c_name ->
  Fd <$> {#call memfd_create#} c_name (1 {- MFD_CLOEXEC-} .|. 2 {- MFD_ALLOW_SEALING -})

foreign import ccall safe "fcntl" c_fcntl :: Fd -> CUInt -> CUInt -> IO ()
foreign import ccall safe "munmap" munmap :: Ptr () -> Int -> IO ()

createShm :: Int -> IO (Fd, Ptr ())
createShm size = do
  fd <- newMemfd "hswm-shm"
  P.setFdSize fd (fi size)
  ptr <- {#call mmap as _mmap#} nullPtr (fromIntegral size) ({#const PROT_READ#} .|. {#const PROT_WRITE#}) {#const MAP_SHARED#} (fromIntegral fd) 0
  c_fcntl (fi fd) {#const F_ADD_SEALS#} ({#const F_SEAL_GROW#} .|. {#const F_SEAL_SHRINK#} .|. {#const F_SEAL_SEAL#})
  return (fd, ptr)
