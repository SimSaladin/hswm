{-# LANGUAGE ExplicitForAll #-}

-- |
-- Module      : Text.XkbCommon.Internal
-- Description : Functions used internally.
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Text.XkbCommon.Internal (
  -- * Error handling
  xkbThrowIfNull',
  -- * @mmap@
  mmap,
  munmap,
  mAP_PRIVATE,
  mAP_SHARED,
  mAP_FAILED,
  pROT_READ,
  pROT_WRITE,
  pROT_EXEC,
  pROT_NONE,
  -- * @memfd_create@
  memfdCreate,
  mFD_CLOEXEC,
  mFD_ALLOW_SEALING,
  ) where

#define _GNU_SOURCE
#include <unistd.h>
#include <sys/mman.h>

import Foreign
import Foreign.C
import System.Posix (Fd(..))
import Control.Exception
import Control.Monad

xkbThrowIfNull' :: Exception e => e -> Ptr a -> IO (Ptr a)
xkbThrowIfNull' ex res = do
  when (res == nullPtr) $ throwIO ex
  return res

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

pROT_WRITE :: CUInt
pROT_WRITE = #{const PROT_WRITE}

pROT_EXEC :: CUInt
pROT_EXEC = #{const PROT_EXEC}

pROT_NONE :: CUInt
pROT_NONE = #{const PROT_NONE}

mmap :: forall a any. Ptr a -- ^ @addr@
     -> CSize -- ^ @size@
     -> CUInt -- ^ @prot@: possible values: 'pROT_READ', 'pROT_WRITE', 'pROT_EXEC', 'pROT_NONE'
     -> CUInt -- ^ @flags@: 'mAP_SHARED' or 'mAP_PRIVATE'
     -> Fd -- ^ @fildes@
     -> CSize -- ^ @offset@
     -> IO (Ptr any)
mmap ptr size prot flags fildes offset = throwErrnoIf (== mAP_FAILED) "mmap" $
  c_mmap ptr size prot flags fildes offset

munmap :: Integral a => Ptr any -> a -> IO ()
munmap ptr size = throwErrnoIfMinus1_ "munmap" $ c_munmap ptr (fromIntegral size)

memfdCreate :: String -- ^ Name
            -> CUInt -- ^ Flags
            -> IO Fd
memfdCreate name flags = withCString name $ \c_name ->
  throwErrnoIfMinus1 "memfd_create" $ c_memfd_create c_name flags

foreign import ccall unsafe "mmap"
  c_mmap :: forall a any. Ptr any -> CSize -> CUInt {- prot -} -> CUInt {- flags -} -> Fd {- fildes -} -> CSize {- offset -}
         -> IO (Ptr a)

foreign import ccall unsafe "munmap"
  c_munmap :: forall a. Ptr a -> CSize -> IO CInt

foreign import ccall unsafe "memfd_create"
  c_memfd_create :: CString -> CUInt -> IO Fd
