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
  , makeLenses'
  , makeLensesMany
  , ToLocation(..)
  , A.decode
  , A.aesonQQ
  , A.parseJSON
  , A.fromJSON
  , A.Result(..)
  ) where

import qualified Data.Aeson as A
import qualified Data.Aeson.QQ.Simple as A
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
import           Data.Char
import           GHC.IsList
import           Language.Haskell.TH
import           Lens.Micro
import           Lens.Micro.TH
import qualified System.FilePath as FP

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

makeLenses' :: Name -> Q [Dec]
makeLenses' ty = makeLensesWith (classyRules
        & lensClass .~ const Nothing
        & lensField .~ getField) ty
 where
    getField _ _ n = case nameBase n of
                       base@(x : xs) -> [MethodName (mkName $ "Has" ++ toUpper x : xs) (mkName base)]
                       _ -> error "empty"

makeLensesMany :: [Name] -> Q [Dec]
makeLensesMany types = concat <$> mapM makeLenses' types

-- * class: ToLocation

class ToLocation a where
  makeLocation :: a -> Location

instance ToLocation (SymbolicPath Pkg 'File) where
  makeLocation sfp = maybe defAbs (Location sameDirectory) $ symbolicPathRelative_maybe norm
    where
      norm   = normaliseSymbolicPath sfp
      defAbs = Location (coerceSymbolicPath $ takeDirectorySymbolicPath norm) . makeRelativePathEx . FP.takeFileName $ getSymbolicPath norm

instance ToLocation (RelativePath from 'File) where
  makeLocation sfp = Location sameDirectory $ normaliseSymbolicPath sfp
