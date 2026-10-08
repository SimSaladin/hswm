{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -Wno-orphans #-}

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
  -- * Verbosity
  ( VerbosityFlags
  , makeVerbose
  , verbosityFromFlags
  , verbosityLevelInt
  -- * Misc.
  , getPkgConfDataDir
  , configurePrograms
  , makeLenses'
  , ToLocation(..)
  -- * Re-exports
  , A.decode
  , A.aesonQQ
  , A.parseJSON
  , A.fromJSON
  , A.Result(..)
  , A.Value
  , module Lens.Micro
  ) where

import           Distribution.Simple.SetupHooks
import           Distribution.Simple.Program
import           Distribution.Simple.Program.Db (ConfiguredProgs)
import           Distribution.Simple.Utils
import           Distribution.Utils.String (trim)
import           Distribution.Utils.Path
import           Distribution.Pretty
import           Distribution.Simple.SetupHooks.Rule (RuleId(..))
import           Distribution.Utils.ShortText
#if MIN_VERSION_Cabal(3,17,0)
import           Distribution.Verbosity (VerbosityFlags, makeVerbose)
#else
import           Distribution.ModuleName (ModuleName)
import           Distribution.Text (simpleParse)
#endif
import qualified Distribution.Verbosity as Verbosity

import           Control.Monad
import qualified Data.Aeson as A
import qualified Data.Aeson.QQ.Simple as A
import           Data.Char
import           GHC.IsList
import           Language.Haskell.TH hiding (location)
import           Lens.Micro
import           Lens.Micro.TH
import           Lens.Micro.GHC ()
import qualified System.FilePath as FP
import qualified Text.PrettyPrint as PP

-- * Verbosity

verbosityFromFlags :: VerbosityFlags -> Verbosity
#if MIN_VERSION_Cabal(3,17,0)
verbosityFromFlags = Verbosity.mkVerbosity Verbosity.defaultVerbosityHandles
#else
verbosityFromFlags = id
type VerbosityFlags = Verbosity
#endif

verbosityLevelInt :: Verbosity -> Int
#if MIN_VERSION_Cabal(3,17,0)
verbosityLevelInt = fromEnum . Verbosity.verbosityLevel
#else
verbosityLevelInt = fromEnum
#endif

#if !MIN_VERSION_Cabal(3,17,0)
-- | Increase verbosity up to verbose if not totally silent.
makeVerbose :: Verbosity -> Verbosity
makeVerbose v
  | v == Verbosity.normal = Verbosity.moreVerbose v
  | otherwise = v
#endif

-- * Program utils

configurePrograms :: Verbosity -> [String] -> ProgramDb -> IO ConfiguredProgs
configurePrograms v progs progdb = fmap fromList $ forM progs $ \prog ->
  configureUnconfiguredProgram v (simpleProgram prog) progdb >>= \case
    Just cp -> return (prog, cp)
    Nothing -> die' v $ "Failed to configure program: " ++ prog

-- | @pkg-config --variable=pkgdatadir somepkg@
getPkgConfDataDir :: Verbosity -> ProgramDb -> String -> IO (Maybe (AbsolutePath ('Dir to)))
getPkgConfDataDir v progdb arg = do
  dir <- trim <$> getDbProgramOutput v pkgConfigProgram progdb [arg, "--variable=pkgdatadir"]
  return $! do
    guard (dir /= "")
    Just $ AbsolutePath $ normaliseSymbolicPath $ makeSymbolicPath dir

-- * Lenses

makeLenses' :: Name -> Q [Dec]
makeLenses' = makeLensesWith $ classyRules
    & lensClass .~ const Nothing
    & lensField .~ getField
 where
    getField _ _ n
      | base@(x:xs) <- nameBase n = [MethodName (mkName $ "Has" ++ toUpper x : xs) (mkName base)]
      | otherwise = error "makeLenses: getField: empty list"

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

-- * Orphan instances

deriving anyclass instance A.FromJSON (SymbolicPathX a b c)
deriving anyclass instance A.ToJSON   (SymbolicPathX a b c)

#if MIN_VERSION_Cabal(3,17,0)
deriving anyclass instance A.FromJSON ModuleName
deriving anyclass instance A.ToJSON   ModuleName
#else
instance A.FromJSON ModuleName where parseJSON v = A.parseJSON v >>= maybe (fail "invalid ModuleName") pure . simpleParse
instance A.ToJSON   ModuleName where toJSON      = A.toJSON . prettyShow
#endif

instance A.FromJSON Location where
  parseJSON v = do
    (base, file) <- A.parseJSON v
    return $! Location base file
instance A.ToJSON Location where
  toJSON (Location base file) = A.toJSON (base, file)

instance Pretty Dependency where
  pretty (RuleDependency (RuleOutput rid index)) = "RuleDependency: " <> pretty rid <> " ix=" <> PP.text (show index)
  pretty (FileDependency loc) = "FileDependency:" <> pretty (location loc)

instance Pretty RuleId where
  pretty (RuleId _ns nm) = PP.text (fromShortText nm)
