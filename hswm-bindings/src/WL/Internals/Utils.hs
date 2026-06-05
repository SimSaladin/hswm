-- |
-- Module      : WL.Internals.Utils
-- Description : Internal utils
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module WL.Internals.Utils where

import Control.Monad
import Control.Exception
import Foreign
import Foreign.C
import Foreign.C.ConstPtr

peekMaybeCString :: ConstPtr CChar -> IO (Maybe String)
peekMaybeCString (ConstPtr ptr)
  | ptr == nullPtr = return Nothing
  | otherwise = Just <$> peekCString ptr

throwExIfNull :: Exception e => e -> IO (Ptr a) -> IO (Ptr a)
throwExIfNull ex m = do
  r <- m
  when (r == nullPtr) $ throwIO ex
  return r

throwExIfMinus1 :: (Eq a, Num a, Exception e) => e -> IO a -> IO a
throwExIfMinus1 ex m = do
  r <- m
  when (r == -1) $ throwIO ex
  return r
