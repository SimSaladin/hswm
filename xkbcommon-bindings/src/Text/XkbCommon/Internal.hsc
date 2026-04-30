-- |
-- Module      : Text.XkbCommon.Internal
-- Description : Functions used internally.
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Text.XkbCommon.Internal where

#define _GNU_SOURCE
#include <unistd.h>
#include <sys/mman.h>

import Foreign
import Foreign.C
import System.Posix (Fd(..))
import Control.Exception
import Control.Monad
import Data.Void

xkbThrowIfNull' :: Exception e => e -> Ptr a -> IO (Ptr a)
xkbThrowIfNull' ex res = do
  when (res == nullPtr) $ throwIO ex
  return res

mmap :: Ptr Void
     -> CSize
     -> CUInt -- ^ prot: PROT_{READ,WRITE,EXEC,NONE}
     -> CUInt -- ^ flags: MAP_SHARED or MAP_PRIVATE
     -> Fd -- ^ fildes
     -> CSize -- ^ offset
     -> IO (Ptr Void)
mmap ptr size prot flags fildes offset = throwErrnoIf (== mAP_FAILED) "mmap" $
  _mmap ptr size prot flags fildes offset

foreign import ccall unsafe "mmap"
  _mmap :: Ptr Void -> CSize -> CUInt {- prot -} -> CUInt {- flags -} -> Fd {- fildes -} -> CSize {- offset -}
        -> IO (Ptr Void)

munmap :: Integral a => Ptr Void -> a -> IO ()
munmap ptr size = throwErrnoIfMinus1_ "munmap" $ _munmap ptr (fromIntegral size)

foreign import ccall unsafe "munmap"
  _munmap :: Ptr Void -> CSize -> IO CInt

memfdCreate :: String -> CUInt -> IO Fd
memfdCreate name flags = withCString name $ \c_name ->
  throwErrnoIfMinus1 "memfd_create" $ _memfd_create c_name flags

foreign import ccall unsafe "memfd_create"
  _memfd_create :: CString -> CUInt -> IO Fd

mFD_CLOEXEC :: CUInt
mFD_CLOEXEC = #{const MFD_CLOEXEC}

mFD_ALLOW_SEALING :: CUInt
mFD_ALLOW_SEALING = #{const MFD_ALLOW_SEALING}

mAP_FAILED :: Ptr a
mAP_FAILED = wordPtrToPtr #{const MAP_FAILED}

mAP_PRIVATE :: CUInt
mAP_PRIVATE = #{const MAP_PRIVATE}

mAP_SHARED :: CUInt
mAP_SHARED = #{const MAP_SHARED}

pROT_READ :: CUInt
pROT_READ = #{const PROT_READ}
