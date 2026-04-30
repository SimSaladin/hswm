{-# LANGUAGE ExplicitForAll #-}

module Text.XkbCommon.XkbContext (
  XkbContextOptions(..),
  XkbContext,
  createXkbContext,
  withXkbContext,
  setXkbContextUserData,
  setXkbContextLogLevel,
  LogLevel(..),
  setXkbContextLogVerbosity,
  appendIncludePath,
  getIncludePaths,
  ) where

import Foreign
import Foreign.C
import Control.Monad

import Text.XkbCommon.Types
import Text.XkbCommon.Internal

#include <xkbcommon/xkbcommon.h>

data XkbContextOptions = XkbContextOptions
  { defaultIncludes  :: Bool
  , environmentNames :: Bool
  , secureGetEnv     :: Bool
  } deriving (Eq, Show, Read)

instance Default XkbContextOptions where
  def = XkbContextOptions True True True

optionsToFlags :: XkbContextOptions -> CUInt
optionsToFlags opts =
  #{const XKB_CONTEXT_NO_FLAGS} .|.
  f (not opts.defaultIncludes)  #{const XKB_CONTEXT_NO_DEFAULT_INCLUDES} .|.
  f (not opts.environmentNames) #{const XKB_CONTEXT_NO_ENVIRONMENT_NAMES} .|.
  f (not opts.secureGetEnv)     #{const XKB_CONTEXT_NO_SECURE_GETENV}
    where
      f True  x = x
      f False _ = 0

withXkbContext :: XkbContextOptions -> (XkbContext -> IO a) -> IO a
withXkbContext flags f = createXkbContext flags >>= f

createXkbContext :: XkbContextOptions -> IO XkbContext
createXkbContext opts = _xkbContextNew (optionsToFlags opts)
  >>= xkbThrowIfNull' (XkbOperationFailed "xkbContextNew")
  >>= fmap XkbContext . newForeignPtr _xkbContextUnref

setXkbContextUserData :: XkbContext -> Ptr a -> IO ()
setXkbContextUserData ctx ud = withForeignPtr ctx.unwrap $ \ctxPtr ->
  _xkbContextSetUserData ctxPtr ud

data LogLevel = LevelCritical
              | LevelError -- ^ The default
              | LevelWarning
              | LevelInfo
              | LevelDebug
  deriving (Eq, Ord, Show, Read)

setXkbContextLogLevel :: XkbContext -> LogLevel -> IO ()
setXkbContextLogLevel ctx level = withForeignPtr ctx.unwrap $ \ctxPtr ->
  _xkbContextSetLogLevel ctxPtr (fromLogLevel level)

fromLogLevel :: LogLevel -> CUInt
fromLogLevel level =
  case level of
    LevelCritical -> #{const XKB_LOG_LEVEL_CRITICAL}
    LevelError    -> #{const XKB_LOG_LEVEL_ERROR}
    LevelWarning  -> #{const XKB_LOG_LEVEL_WARNING}
    LevelInfo     -> #{const XKB_LOG_LEVEL_INFO}
    LevelDebug    -> #{const XKB_LOG_LEVEL_DEBUG}

setXkbContextLogVerbosity :: XkbContext -> Int -> IO ()
setXkbContextLogVerbosity ctx verbosity = withForeignPtr ctx.unwrap $ \ctxPtr ->
  _xkbContextSetLogVerbosity ctxPtr (fromIntegral verbosity)

appendIncludePath :: XkbContext -> FilePath -> IO ()
appendIncludePath ctx fp =
  withForeignPtr ctx.unwrap $ \ctxPtr ->
  withCString fp $ \fpPtr ->
    throwIf_ (/= 1) (\_ -> "xkbcontext: appending include path failed") $ _xkb_context_include_path_append ctxPtr fpPtr

getIncludePaths :: XkbContext -> IO [FilePath]
getIncludePaths ctx =
  withForeignPtr ctx.unwrap $ \ctxPtr -> do
    num <- _xkb_context_num_include_paths ctxPtr
    paths <- forM [0 .. num-1] $ \i ->
      _xkb_context_include_path_get ctxPtr i
    mapM peekCString paths

-- * Internals

foreign import ccall unsafe "xkb_context_new"
  _xkbContextNew :: CUInt -> IO (Ptr XkbContext)

foreign import ccall unsafe "&xkb_context_unref"
  _xkbContextUnref :: FunPtr (Ptr XkbContext -> IO ())

foreign import ccall unsafe "xkb_context_set_user_data"
  _xkbContextSetUserData :: forall a. Ptr XkbContext -> Ptr a -> IO ()

foreign import ccall unsafe "xkb_context_set_log_level"
  _xkbContextSetLogLevel :: Ptr XkbContext -> CUInt -> IO ()

foreign import ccall unsafe "xkb_context_set_log_verbosity"
  _xkbContextSetLogVerbosity :: Ptr XkbContext -> CInt -> IO ()

foreign import ccall unsafe "xkb_context_num_include_paths"
  _xkb_context_num_include_paths :: Ptr XkbContext -> IO CUInt

foreign import ccall unsafe "xkb_context_include_path_clear"
  _xkb_context_include_path_clear :: Ptr XkbContext -> IO ()

foreign import ccall unsafe "xkb_context_include_path_append"
  _xkb_context_include_path_append :: Ptr XkbContext -> CString -> IO CInt

foreign import ccall unsafe "xkb_context_include_path_get"
  _xkb_context_include_path_get :: Ptr XkbContext -> CUInt -> IO CString

--foreign import ccall unsafe "xkb_context_set_log_fn"
--  _xkbContextSetLogFn :: Ptr XkbContext -> FunPtr XkbLogFn -> IO ()
--
--type XkbLogFn = Ptr XkbContext -> XkbLogLevel -> _va_args
