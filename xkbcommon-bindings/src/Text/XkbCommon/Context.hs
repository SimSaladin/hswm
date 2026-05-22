{-# LANGUAGE ExplicitForAll #-}

-- |
-- Description : The context contains various general library data and state.
--
-- The context contains various general library data and state, like
-- logging level and include paths.
--
-- Objects are created in a specific context, and multiple contexts may
-- coexist simultaneously.  Objects from different contexts are completely
-- separated and do not share any memory or state.
module Text.XkbCommon.Context (

  -- * New
  XkbContext,
  XkbContextOptions(..),
  createXkbContext,
  withXkbContext,

  -- * Exceptions
  XkbContextException(..),

  -- * Include Paths
  contextIncludePathGet,
  contextIncludePathAppend,
  contextIncludePathAppendDefault,
  contextIncludePathClear,
  contextIncludePathResetDefaults,

  -- * Logging
  LogLevel(..),
  setXkbContextLogLevel,
  setXkbContextLogVerbosity,

  -- * User data
  contextGetUserData,
  setXkbContextUserData,
  ) where

import Foreign
import Foreign.C
import Foreign.C.ConstPtr
import Control.Monad
import Control.Exception

import Text.XkbCommon.FFI

-- | Context-related exceptions.
data XkbContextException
  = XkbContextCreationFailed !XkbContextOptions
  | IncludePathUnavailable { context :: !XkbContext, path :: !FilePath }
  deriving (Eq, Ord, Show, Generic)

instance Exception XkbContextException

-- | Create a new "XkbContext" with the given options.
--
-- Throws "XkbContextCreationFailed" on failure.
createXkbContext :: XkbContextOptions -> IO XkbContext
createXkbContext opts = do
  ctx <- c_new (optionsToFlags opts)
    >>= xkbThrowIfNull' (XkbContextCreationFailed opts)
    >>= fmap XkbContext . newForeignPtr c_unref
  forM_ opts.contextLogLevel $ setXkbContextLogLevel ctx
  forM_ opts.contextLogVerbosity $ setXkbContextLogVerbosity ctx
  return ctx

-- | See 'createXkbContext'
withXkbContext :: XkbContextOptions -> (XkbContext -> IO a) -> IO a
withXkbContext flags f = createXkbContext flags >>= f

-- | Get the context user data. By default it is @NULL@.
contextGetUserData :: XkbContext -> IO (Ptr a)
contextGetUserData ctx = withForeignPtr ctx.unwrap $ \ptr ->
  c_get_udata ptr

-- | Set the context user data.
setXkbContextUserData :: XkbContext -> Ptr a -> IO ()
setXkbContextUserData ctx ud = withForeignPtr ctx.unwrap $ \ctxPtr ->
  c_set_udata ctxPtr ud

-- | Set context log level.
setXkbContextLogLevel :: XkbContext -> LogLevel -> IO ()
setXkbContextLogLevel ctx level = withForeignPtr ctx.unwrap $ \ctxPtr ->
  c_set_log_level ctxPtr (fromLogLevel level)

-- | Set context log verbosity. See 'contextLogVerbosity' for details.
setXkbContextLogVerbosity :: XkbContext -> Int -> IO ()
setXkbContextLogVerbosity ctx verbosity = withForeignPtr ctx.unwrap $ \ctxPtr ->
  c_set_log_verbosity ctxPtr (fromIntegral verbosity)

-- | Append an include path to the context.
--
-- Throws "IncludePathUnavailable" on problem.
contextIncludePathAppend :: XkbContext -> FilePath -> IO ()
contextIncludePathAppend ctx fp =
  withForeignPtr ctx.unwrap $ \ctxPtr ->
  withCString fp $ \fpPtr -> do
    r <- c_include_path_append ctxPtr $ ConstPtr fpPtr
    when (r /= 1) $ throwIO $ IncludePathUnavailable ctx fp

-- | Reset the include path to defaults.
--
-- Throws "IncludePathUnavailable" on problem.
contextIncludePathResetDefaults :: XkbContext -> IO ()
contextIncludePathResetDefaults ctx =
  withForeignPtr ctx.unwrap $ \ctxPtr -> do
    r <- c_include_path_reset_defaults ctxPtr
    when (r /= 1) $ throwIO $ IncludePathUnavailable ctx "(reset)"

-- | Append the default include paths.
--
-- Throws "IncludePathUnavailable" on problem.
contextIncludePathAppendDefault :: XkbContext -> IO ()
contextIncludePathAppendDefault ctx =
  withForeignPtr ctx.unwrap $ \ctxPtr -> do
    r <- c_include_path_append_default ctxPtr
    when (r /= 1) $ throwIO $ IncludePathUnavailable ctx "(default)"

-- | Enumerate include paths.
contextIncludePathGet :: XkbContext -> IO [FilePath]
contextIncludePathGet ctx =
  withForeignPtr ctx.unwrap $ \ctxPtr -> do
    num <- c_num_num_include_paths ctxPtr
    forM [0 .. num - 1] $ c_include_path_get ctxPtr >=> peekCString . unConstPtr

-- | Remove all entries from the include path.
contextIncludePathClear :: XkbContext -> IO ()
contextIncludePathClear ctx =
  withForeignPtr ctx.unwrap $ \ptr ->
    c_include_path_clear ptr

-- * Internals

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_context_new"
  c_new :: CUInt -> IO (Ptr XkbContext)

foreign import capi unsafe "xkbcommon/xkbcommon.h &xkb_context_unref"
  c_unref :: FunPtr (Ptr XkbContext -> IO ())

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_context_get_user_data"
  c_get_udata :: forall a. Ptr XkbContext -> IO (Ptr a)

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_context_set_user_data"
  c_set_udata :: forall a. Ptr XkbContext -> Ptr a -> IO ()

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_context_set_log_level"
  c_set_log_level :: Ptr XkbContext -> CUInt -> IO ()

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_context_set_log_verbosity"
  c_set_log_verbosity :: Ptr XkbContext -> CInt -> IO ()

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_context_num_include_paths"
  c_num_num_include_paths :: Ptr XkbContext -> IO CUInt

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_context_include_path_clear"
  c_include_path_clear :: Ptr XkbContext -> IO ()

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_context_include_path_append"
  c_include_path_append :: Ptr XkbContext -> ConstPtr CChar -> IO CInt

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_context_include_path_append_default"
  c_include_path_append_default :: Ptr XkbContext -> IO CInt

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_context_include_path_get"
  c_include_path_get :: Ptr XkbContext -> CUInt -> IO (ConstPtr CChar)

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_context_include_path_reset_defaults"
  c_include_path_reset_defaults :: Ptr XkbContext -> IO CInt

--foreign import capi unsafe "xkb_context_set_log_fn"
--  _xkbContextSetLogFn :: Ptr XkbContext -> FunPtr XkbLogFn -> IO ()
--
--type XkbLogFn = Ptr XkbContext -> XkbLogLevel -> _va_args
