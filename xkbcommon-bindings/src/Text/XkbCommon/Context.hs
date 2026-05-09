{-# LANGUAGE ExplicitForAll #-}

module Text.XkbCommon.Context (
  XkbContextOptions(..),
  XkbContext(..),
  LogLevel(..),
  createXkbContext,
  withXkbContext,
  getIncludePaths,
  -- * Internals
  appendIncludePath,
  setXkbContextUserData,
  setXkbContextLogLevel,
  setXkbContextLogVerbosity,
  ) where

import Foreign
import Foreign.C
import Foreign.C.ConstPtr
import Control.Monad
import Control.Exception

import Text.XkbCommon.FFI

withXkbContext :: XkbContextOptions -> (XkbContext -> IO a) -> IO a
withXkbContext flags f = createXkbContext flags >>= f

-- | Throws "XkbContextCreationFailed" on failure.
createXkbContext :: XkbContextOptions -> IO XkbContext
createXkbContext opts = do
  ctx <- _xkbContextNew (optionsToFlags opts)
    >>= xkbThrowIfNull' XkbContextCreationFailed
    >>= fmap XkbContext . newForeignPtr _xkbContextUnref
  forM_ opts.contextLogLevel $ setXkbContextLogLevel ctx
  forM_ opts.contextLogVerbosity $ setXkbContextLogVerbosity ctx
  return ctx

setXkbContextUserData :: XkbContext -> Ptr a -> IO ()
setXkbContextUserData ctx ud = withForeignPtr ctx.unwrap $ \ctxPtr ->
  _xkbContextSetUserData ctxPtr ud

setXkbContextLogLevel :: XkbContext -> LogLevel -> IO ()
setXkbContextLogLevel ctx level = withForeignPtr ctx.unwrap $ \ctxPtr ->
  _xkbContextSetLogLevel ctxPtr (fromLogLevel level)

setXkbContextLogVerbosity :: XkbContext -> Int -> IO ()
setXkbContextLogVerbosity ctx verbosity = withForeignPtr ctx.unwrap $ \ctxPtr ->
  _xkbContextSetLogVerbosity ctxPtr (fromIntegral verbosity)

appendIncludePath :: XkbContext -> FilePath -> IO ()
appendIncludePath ctx fp =
  withForeignPtr ctx.unwrap $ \ctxPtr ->
  withCString fp $ \fpPtr -> do
    r <- _xkb_context_include_path_append ctxPtr $ ConstPtr fpPtr
    when (r /= 1) $ throwIO $ XkbContextIncludePathFailed fp

-- | Enumerate include paths.
getIncludePaths :: XkbContext -> IO [FilePath]
getIncludePaths ctx =
  withForeignPtr ctx.unwrap $ \ctxPtr -> do
    num <- _xkb_context_num_include_paths ctxPtr
    forM [0 .. num - 1] $ _xkb_context_include_path_get ctxPtr >=> peekCString

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
  _xkb_context_include_path_append :: Ptr XkbContext -> ConstPtr CChar -> IO CInt

foreign import ccall unsafe "xkb_context_include_path_get"
  _xkb_context_include_path_get :: Ptr XkbContext -> CUInt -> IO CString

--foreign import ccall unsafe "xkb_context_set_log_fn"
--  _xkbContextSetLogFn :: Ptr XkbContext -> FunPtr XkbLogFn -> IO ()
--
--type XkbLogFn = Ptr XkbContext -> XkbLogLevel -> _va_args
