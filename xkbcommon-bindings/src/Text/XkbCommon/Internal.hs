{-# LANGUAGE ExplicitForAll #-}

-- |
-- Module      : Text.XkbCommon.Internal
-- Description : Functions used internally.
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module Text.XkbCommon.Internal (
  -- * Exceptions
  throwIfNullEx,
  XkbCommonException (..),

  -- * Components
  hasComponent,

  -- * Logging
  LogFn,
  LogFnRaw,
  mkLogFnFunPtr,
  hs_free_fun_ptr,

  -- * @mmap@
  mmap,
  munmap,

  -- ** Flags
  MapFlags,
  mapShared,
  mapPrivate,
  mapFixed,

  -- ** Prot
  MapProt,
  protRead,
  protWrite,
  protExec,
  protNone,

  -- * @memfd_create@
  memfdCreate,

  -- ** Flags
  MfdFlags,
  mfdCloExec,
  mfdAllowSealing,

  -- * Re-exports
  NFData (..),
  Data,
  Default (..),
) where

import Text.XkbCommon.FFI

import Control.DeepSeq
import Control.Exception (throwIO)
import Control.Monad
import Data.Data
import Data.Default
import Data.Functor
import Foreign
import Foreign.C
import System.Posix (Fd (..))

hasComponent :: XkbStateComponent -> XkbStateComponent -> Bool
hasComponent haystack needle = haystack .&. needle > 0

type LogFnRaw = CUInt -> CString -> IO ()

type LogFn = LogLevel -> String -> IO ()

mkLogFnFunPtr :: LogFn -> IO (FunPtr LogFnRaw)
mkLogFnFunPtr f = mkLogFnFunPtrRaw $ \lv cs -> do
  s <- peekCString cs
  f (toEnum $ fromIntegral lv) s

foreign import ccall "wrapper"
  mkLogFnFunPtrRaw :: LogFnRaw -> IO (FunPtr LogFnRaw)

foreign import capi "&" hs_free_fun_ptr :: FunPtr (FunPtr a -> IO ())

data XkbCommonException
  = ContextNewFailed String
  | IncludePathUnavailable {message :: !String, path :: !FilePath}
  | KeymapCreationFailed {message :: String, keNames :: Maybe XkbRuleNames, keFormat :: !KeymapFormat}
  | KeymapGetAsStringFailed {keKeymap :: !XkbKeymap, keFormat :: !KeymapFormat}
  | KeymapBuilderCompilationFailed {rules, model :: String}
  | KeymapBuilderInvalidLayout {message :: !String, layout :: Layout}
  | KeymapBuilderInvalidOption {message :: !String, option :: LayoutOption}
  | XkbStateCreationFailed XkbKeymap
  deriving (Eq, Ord, Show, Generic)

instance Exception XkbCommonException

-- | Like @throwIfNull@ but throwing a specific exception instead.
throwIfNullEx :: (Exception e) => e -> Ptr a -> IO (Ptr a)
throwIfNullEx ex ptr = when (ptr == nullPtr) (throwIO ex) $> ptr

mmap ::
  forall a any.
  Ptr a
  -- ^ @addr@
  -> CSize
  -- ^ @size@
  -> MapProt
  -> MapFlags
  -> Fd
  -- ^ @fildes@
  -> CSize
  -- ^ @offset@
  -> IO (Ptr any)
mmap ptr size prot flags fildes offset =
  throwErrnoIf (== mapFailed) "mmap" $ c_mmap ptr size prot.unwrap flags.unwrap fildes offset

munmap :: (Integral a) => Ptr any -> a -> IO ()
munmap ptr size = throwErrnoIfMinus1_ "munmap" $ c_munmap ptr (fromIntegral size)

memfdCreate ::
  String
  -- ^ Name
  -> MfdFlags
  -> IO Fd
memfdCreate name flags =
  throwErrnoIfMinus1 ("memfd_create: " ++ name) $
    withCString name $ \c_name ->
      c_memfd_create c_name flags.unwrap

foreign import capi unsafe "sys/mman.h mmap"
  c_mmap :: forall a any. Ptr any -> CSize -> CUInt -> CUInt -> Fd -> CSize -> IO (Ptr a)

foreign import capi unsafe "sys/mman.h munmap"
  c_munmap :: forall a. Ptr a -> CSize -> IO CInt

foreign import capi unsafe "sys/mman.h memfd_create"
  c_memfd_create :: CString -> CUInt -> IO Fd

foreign import capi "sys/mman.h value MAP_SHARED" mapShared :: MapFlags

foreign import capi "sys/mman.h value MAP_PRIVATE" mapPrivate :: MapFlags

foreign import capi "sys/mman.h value MAP_FIXED" mapFixed :: MapFlags

foreign import capi "sys/mman.h value MAP_FAILED" mapFailed :: forall a. Ptr a

foreign import capi "sys/mman.h value MFD_CLOEXEC" mfdCloExec :: MfdFlags

foreign import capi "sys/mman.h value MFD_ALLOW_SEALING" mfdAllowSealing :: MfdFlags

foreign import capi "sys/mman.h value PROT_READ" protRead :: MapProt

foreign import capi "sys/mman.h value PROT_WRITE" protWrite :: MapProt

foreign import capi "sys/mman.h value PROT_EXEC" protExec :: MapProt

foreign import capi "sys/mman.h value PROT_NONE" protNone :: MapProt

newtype MapFlags = MapFlags {unwrap :: CUInt}
  deriving stock (Eq, Show)
  deriving newtype (Bits, Num)

newtype MapProt = MapProt {unwrap :: CUInt}
  deriving stock (Eq, Show)
  deriving newtype (Bits, Num)

newtype MfdFlags = MfdFlags {unwrap :: CUInt}
  deriving stock (Eq, Show)
  deriving newtype (Bits, Num)

instance Semigroup MapFlags where (<>) = (.|.)

instance Monoid MapFlags where mempty = MapFlags 0

instance Semigroup MapProt where (<>) = (.|.)

instance Monoid MapProt where mempty = protNone

instance Semigroup MfdFlags where (<>) = (.|.)

instance Monoid MfdFlags where mempty = MfdFlags 0
