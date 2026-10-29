-- |
-- Module      : WL.Internals.Utils
-- Description : Internal utils
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module WL.Internals.Utils where

import UnliftIO.Exception
import Control.Monad
import Data.Char (isSpace)
import Data.Functor
import Data.Void
import Foreign
import Foreign.C
import Foreign.C.ConstPtr
import GHC.Records (HasField, getField)
import Text.ParserCombinators.ReadP qualified as P
import Text.ParserCombinators.ReadPrec qualified as R
import Text.Read.Lex (readHexP)

peekMaybeCString :: ConstPtr CChar -> IO (Maybe String)
peekMaybeCString (ConstPtr ptr)
  | ptr == nullPtr = return Nothing
  | otherwise = Just <$> peekCString ptr

throwExIfNull :: (Exception e) => e -> IO (Ptr a) -> IO (Ptr a)
throwExIfNull ex m = do
  r <- m
  when (r == nullPtr) $ throwIO ex
  return r

throwExIfMinus1 :: (Eq a, Num a, Exception e) => e -> IO a -> IO a
throwExIfMinus1 ex m = do
  r <- m
  when (r == -1) $ throwIO ex
  return r

showPtrHex :: Ptr a -> String
showPtrHex x = show (castPtr x :: Ptr Void)
{-# INLINE showPtrHex #-}

showObjHex :: (HasField "unwrap" a (Ptr a1)) => a -> String
showObjHex = showPtrHex . getField @"unwrap"

readPtrHexP :: P.ReadP (Ptr a)
readPtrHexP = P.munch isSpace >> P.char '0' >> P.char 'x' >> readHexP <&> wordPtrToPtr
{-# INLINE readPtrHexP #-}

readPtrHexPrec :: R.ReadPrec (Ptr a)
readPtrHexPrec = R.lift readPtrHexP
{-# INLINE readPtrHexPrec #-}
