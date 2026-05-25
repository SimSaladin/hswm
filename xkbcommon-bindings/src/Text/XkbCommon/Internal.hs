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

mmap :: forall a any. Ptr a -- ^ @addr@
     -> CSize -- ^ @size@
     -> MapProt
     -> MapFlags
     -> Fd -- ^ @fildes@
     -> CSize -- ^ @offset@
     -> IO (Ptr any)
mmap ptr size prot flags fildes offset =
  throwErrnoIf (== mapFailed) "mmap" $ c_mmap ptr size prot.unwrap flags.unwrap fildes offset

munmap :: Integral a => Ptr any -> a -> IO ()
munmap ptr size = throwErrnoIfMinus1_ "munmap" $ c_munmap ptr (fromIntegral size)

memfdCreate :: String -- ^ Name
            -> MfdFlags -> IO Fd
memfdCreate name flags =
  throwErrnoIfMinus1 "memfd_create" $
  withCString name $ \c_name ->
    c_memfd_create c_name flags.unwrap

foreign import capi unsafe "sys/mman.h mmap"
  c_mmap :: forall a any. Ptr any -> CSize -> CUInt -> CUInt -> Fd -> CSize -> IO (Ptr a)

foreign import capi unsafe "sys/mman.h munmap"
  c_munmap :: forall a. Ptr a -> CSize -> IO CInt

foreign import capi unsafe "sys/mman.h memfd_create"
  c_memfd_create :: CString -> CUInt -> IO Fd

foreign import capi "sys/mman.h value MAP_SHARED"  mapShared :: MapFlags

foreign import capi "sys/mman.h value MAP_PRIVATE" mapPrivate :: MapFlags

foreign import capi "sys/mman.h value MAP_FIXED"   mapFixed :: MapFlags

foreign import capi "sys/mman.h value MAP_FAILED"  mapFailed :: forall a. Ptr a

foreign import capi "sys/mman.h value MFD_CLOEXEC" mfdCloExec :: MfdFlags

foreign import capi "sys/mman.h value MFD_ALLOW_SEALING" mfdAllowSealing :: MfdFlags

foreign import capi "sys/mman.h value PROT_READ"  protRead :: MapProt

foreign import capi "sys/mman.h value PROT_WRITE" protWrite :: MapProt

foreign import capi "sys/mman.h value PROT_EXEC"  protExec :: MapProt

foreign import capi "sys/mman.h value PROT_NONE"  protNone :: MapProt

newtype MapFlags = MapFlags { unwrap :: CUInt }
  deriving stock (Eq, Show)
  deriving newtype (Bits, Num)

newtype MapProt = MapProt { unwrap :: CUInt }
  deriving stock (Eq, Show)
  deriving newtype (Bits, Num)

newtype MfdFlags = MfdFlags { unwrap :: CUInt }
  deriving stock (Eq, Show)
  deriving newtype (Bits, Num)

instance Semigroup MapFlags where (<>) = (.|.)

instance Monoid MapFlags where mempty = MapFlags 0

instance Semigroup MapProt where (<>) = (.|.)

instance Monoid MapProt where mempty = protNone

instance Semigroup MfdFlags where (<>) = (.|.)

instance Monoid MfdFlags where mempty = MfdFlags 0
