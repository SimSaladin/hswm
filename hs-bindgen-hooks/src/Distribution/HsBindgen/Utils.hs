{-# LANGUAGE CPP                 #-}

-- |
-- Module      : Distribution.HsBindgen.Utils
-- Description : Misc. utilities
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Distribution.HsBindgen.Utils
  ( VerbosityFlags
  , verbosityFromFlags
  , verbosityLevelInt
  , getPkgConfDataDir
  , configurePrograms
  ) where

import           Distribution.Simple.SetupHooks
import           Distribution.Simple.Program
import           Distribution.Simple.Program.Db (ConfiguredProgs)
import           Distribution.Simple.Utils
import           Distribution.Utils.String (trim)
import           Distribution.Utils.Path

#if MIN_VERSION_Cabal(3,17,0)
import           Distribution.Verbosity
#endif

import           Control.Monad
import           GHC.IsList

verbosityFromFlags :: VerbosityFlags -> Verbosity
#if MIN_VERSION_Cabal(3,17,0)
verbosityFromFlags = mkVerbosity defaultVerbosityHandles
#else
verbosityFromFlags = id
type VerbosityFlags = Verbosity
#endif

verbosityLevelInt :: Verbosity -> Int
#if MIN_VERSION_Cabal(3,17,0)
verbosityLevelInt = fromEnum . verbosityLevel
#else
verbosityLevelInt = fromEnum
#endif

-- | @pkg-config --variable=pkgdatadir somepkg@
getPkgConfDataDir :: Verbosity -> ProgramDb -> String -> IO (Maybe (AbsolutePath ('Dir to)))
getPkgConfDataDir v progdb arg = do
  dir <- trim <$> getDbProgramOutput v pkgConfigProgram progdb [arg, "--variable=pkgdatadir"]
  return $! do
    guard (dir /= "")
    Just $ AbsolutePath $ normaliseSymbolicPath $ makeSymbolicPath dir

configurePrograms :: Verbosity -> [String] -> ProgramDb -> IO ConfiguredProgs
configurePrograms v progs progdb = fmap fromList $ forM progs $ \prog ->
  configureUnconfiguredProgram v (simpleProgram prog) progdb >>= \case
    Just cp -> return (prog, cp)
    Nothing -> die' v $ "Failed to configure program '" ++ prog ++ "'"
