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
  -- * @mmap@
  mmap,
  munmap,
  -- ** Flags
  MapFlags,
  mapShared, mapPrivate, mapFixed,
  -- ** Prot
  MapProt,
  protRead, protWrite, protExec, protNone,
  -- * @memfd_create@
  memfdCreate,
  -- ** Flags
  MfdFlags,
  mfdCloExec, mfdAllowSealing,
  ) where

import Foreign
import Foreign.C
import System.Posix (Fd(..))

#define _GNU_SOURCE
#include <unistd.h>
#include <sys/mman.h>

newtype MapFlags = MapFlags { unwrap :: CUInt }
  deriving stock (Eq)
  deriving newtype (Bits)

instance Semigroup MapFlags where (<>) = (.|.)
instance Monoid MapFlags where mempty = MapFlags 0

mapShared, mapPrivate, mapFixed :: MapFlags
mapShared  = MapFlags #{const MAP_SHARED}
mapPrivate = MapFlags #{const MAP_PRIVATE}
mapFixed   = MapFlags #{const MAP_FIXED}

newtype MapProt = MapProt { unwrap :: CUInt }
  deriving stock (Eq)
  deriving newtype (Bits)

instance Semigroup MapProt where (<>) = (.|.)
instance Monoid MapProt where mempty = protNone

protRead, protWrite, protExec, protNone :: MapProt
protRead  = MapProt #{const PROT_READ}
protWrite = MapProt #{const PROT_WRITE}
protExec  = MapProt #{const PROT_EXEC}
protNone  = MapProt #{const PROT_NONE}

mmap :: forall a any. Ptr a -- ^ @addr@
     -> CSize -- ^ @size@
     -> MapProt
     -> MapFlags
     -> Fd -- ^ @fildes@
     -> CSize -- ^ @offset@
     -> IO (Ptr any)
mmap ptr size prot flags fildes offset =
  throwErrnoIf (== mapFailed) "mmap" $ c_mmap ptr size prot.unwrap flags.unwrap fildes offset
  where
  mapFailed :: Ptr x
  mapFailed = wordPtrToPtr #{const MAP_FAILED}

munmap :: Integral a => Ptr any -> a -> IO ()
munmap ptr size =
  throwErrnoIfMinus1_ "munmap" $ c_munmap ptr (fromIntegral size)

newtype MfdFlags = MfdFlags { unwrap :: CUInt }
  deriving stock (Eq)
  deriving newtype (Bits)

instance Semigroup MfdFlags where (<>) = (.|.)
instance Monoid MfdFlags where mempty = MfdFlags 0

mfdCloExec, mfdAllowSealing :: MfdFlags
mfdCloExec      = MfdFlags #{const MFD_CLOEXEC}
mfdAllowSealing = MfdFlags #{const MFD_ALLOW_SEALING}

memfdCreate :: String -- ^ Name
            -> MfdFlags -> IO Fd
memfdCreate name flags = withCString name $ \c_name ->
  throwErrnoIfMinus1 "memfd_create" $ c_memfd_create c_name flags.unwrap

foreign import ccall unsafe "mmap"
  c_mmap :: forall a any. Ptr any -> CSize -> CUInt -> CUInt -> Fd -> CSize -> IO (Ptr a)

foreign import ccall unsafe "munmap"
  c_munmap :: forall a. Ptr a -> CSize -> IO CInt

foreign import ccall unsafe "memfd_create"
  c_memfd_create :: CString -> CUInt -> IO Fd
