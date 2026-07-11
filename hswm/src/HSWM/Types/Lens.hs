{-# LANGUAGE DefaultSignatures      #-}
{-# LANGUAGE TypeFamilyDependencies #-}
{-# LANGUAGE ViewPatterns           #-}
{-# OPTIONS_GHC -Wno-orphans #-}

-- |
-- Module      : HSWM.Types.Lens
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Types.Lens
  ( module HSWM.Types.Lens
  -- * Re-exports
  , mkName
  , nameBase
  , toUpper
  , toLower
  ) where

import           Data.Char
import           Data.Coerce
import qualified Data.Set as Set
import           Language.Haskell.TH hiding (Type)
import qualified Language.Haskell.TH.Datatype as D
import qualified Language.Haskell.TH.Datatype.TyVarBndr as D
import           Lens.Micro.TH.Internal

import qualified River as R

-- Orphan instances

instance NFData (StablePtr a) where
  rnf = rnf . castStablePtrToPtr

-- * Constants

shortFields :: [String]
shortFields =
  [ "x"
  , "y"
  , "name"
  , "node"
  , "new"
  , "tag"
  ]

-- * Make lenses

-- | This uses the same record field names, you want to use @NoFieldSelectors@ with this.
makeLenses' :: [Name] -> Q [Dec]
makeLenses' = makeLensesWith' classPerType

makeLensesWith' :: LensRules -> [Name] -> Q [Dec]
makeLensesWith' rules = fmap join . mapM (makeLensesWith rules)

-- |
-- @
-- makeLensesCombine fields types
-- @
--
-- Each field in @fields@ gets its own @HasField@ class.
--
-- Other fields get lenses under a @HasType@ class.
makeLensesCombine :: [String] -> [Name] -> Q [Dec]
makeLensesCombine = makeLensesCombine' id

makeLensesCombine' :: (LensRules -> LensRules) -> [String] -> [Name] -> Q [Dec]
makeLensesCombine' fRules fieldsIn namesIn = do
  -- [(type-name, [field-name])] -- all types + their fields
  typeFields <- forM namesIn $ \ty -> do
    di <- D.reifyDatatype ty
    return (ty, [ x | con <- D.datatypeCons di, D.RecordConstructor xs <- [D.constructorVariant con], x <- xs ])
  -- [field-name] ~ all fields of all target types
  let allFields = concatMap snd typeFields
  --existsFieldValues <- fmap catMaybes $ forM allFields $ \nm -> do
  --  exists <- isJust <$> lookupValueName (nameBase nm)
  --  return $ guard exists $> nm
  -- [field-name] -- fields that have a defined 'HasField' class in scope
  fieldsWithClass <- fmap mconcat $ forM allFields $ \field -> do
    let c = "Has" <> (nameBase field & fromSnake False & _head %~ toUpper)
    exists <- isJust <$> lookupTypeName c
    return [ field | exists ]
  -- [field-name] -- fields that get lenses on class-per-field basis
  let fields = fieldsIn ++ map nameBase fieldsWithClass
     -- [type-name] -- types that get lenses on class-per-field basis
      namesPerField = namesIn
     -- [type-name] -- types that get lenses on class-per-type basis
      namesPerTy =
        [ ty
          | (ty, fs) <- typeFields
          , (nameBase ty & _head %~ toLower) `notElem` map nameBase fieldsWithClass
          , any ((`notElem` fields) . nameBase) fs
        ]
  liftM2 (++)
    (makeLensesWith' (fRules $ classPerField' $ const (`elem` fields)) namesPerField)
    (makeLensesWith' (fRules $ classPerType' $ const (`notElem` fields)) namesPerTy)

makeFieldClassesIfMissing :: [String] -> Q [Dec]
makeFieldClassesIfMissing fields = do
  res <- fmap join $ forM fields $ \field -> do
    let c = mkName $ "Has" <> (fromSnake False field & _head %~ toUpper)
        n | field `elem` shortFields = mkName $ "_" <> fromSnake True field
          | otherwise = mkName $ fromSnake True field
        defType = ()
    exists <- isJust <$> lookupTypeName (show c)
    return $ [makeFieldClass defType c n | not exists]
  sequence res

makeFieldClass :: Quote m => () -> Name -> Name -> m Dec
makeFieldClass defType className methodName =
  classD (cxt []) className [D.plainTV s, D.plainTV a] [FunDep [s] [a]]
         [sigD methodName (return methodType)]
  where
  methodType = quantifyType' (Set.fromList [s,a])
                             (stabToContext defType)
             $ stabToOptic defType `conAppsT` [VarT s, VarT a]
  s = mkName "s"
  a = mkName "a"
  stabToContext _ = []
  stabToOptic _   = mkName "Lens'"

-- * LensRules

classPerField :: LensRules
classPerField = classPerField' (\_ _ -> True)

classPerField' :: (String -> String -> Bool) -> LensRules
classPerField' only = classyRules
    & lensClass .~ const Nothing
    & lensField .~ getName
    & simpleLenses .~ False
  where
    getName (nameBase -> ty) _ (nameBase -> n)
      | only ty n || only ty (fromSnake False n) =
       let method
              -- prefix short/common fields with _
              | n `elem` shortFields = "_" <> n
              | otherwise            = fromSnake True n
       in [ MethodName (mkName $ "Has" <> (fromSnake False n & _head %~ toUpper)) (mkName method) ]
      | otherwise = []

classPerType :: LensRules
classPerType = classPerType' (\_ _ -> True)

classPerType' :: (String -> String -> Bool) -> LensRules
classPerType' only = classyRules
    & lensField .~ getName
    & simpleLenses .~ True -- needs to be True to work with createClass for more complex types
  where
    getName (nameBase -> ty) _ (nameBase -> n)
      | only ty n || only ty (fromSnake False n) =
       let method
              -- prefix short/common fields with _
              | n `elem` shortFields = "_" <> n
              | otherwise            = fromSnake False n
       in [ TopName (mkName method) ]
      | otherwise = []

-- * Utilities

fromSnake :: Bool -> String -> String
fromSnake flag inp
  | flag, '_':xs <- inp = '_' : inner xs
  | otherwise           = inner inp
  where
    inner ('_':x:xs) = toUpper x : inner xs
    inner     (x:xs) = x : inner xs
    inner         [] = []

-- * Operators

(&+) :: (b -> c) -> (a -> b) -> a -> c
(&+) = (.)
infixl 2 &+

-- * HasRiverId

-- | Data structures that are or contain some River identifier of type 'RiverId'.
--
-- Useful to overload functions that operate on an identifier to work directly with data types that contain an
-- identifier.
class Eq (RiverId a) => HasRiverId a where

  type family RiverId a

  riverId :: Lens' a (RiverId a)
  default riverId :: (a ~ RiverId a) => Lens' a (RiverId a)
  riverId = id

type SameRiverId a b = (HasRiverId a, HasRiverId b, RiverId a ~ RiverId b)

riverIdEq :: SameRiverId a b => a -> b -> Bool
riverIdEq a b = (a ^. riverId) == (b ^. riverId)

eachRiverId :: (SameRiverId k a, Each s s a a) => k -> Traversal' s a
eachRiverId k = each . filtered (riverIdEq k)

instance HasRiverId R.RiverOutput         where type RiverId R.RiverOutput = R.RiverOutput
instance HasRiverId R.RiverWindow         where type RiverId R.RiverWindow = R.RiverWindow
instance HasRiverId R.RiverSeat           where type RiverId R.RiverSeat = R.RiverSeat
instance HasRiverId R.RiverXkbBinding     where type RiverId R.RiverXkbBinding = R.RiverXkbBinding
instance HasRiverId R.RiverPointerBinding where type RiverId R.RiverPointerBinding = R.RiverPointerBinding

type SomeWindow a = (HasRiverId a, RiverId a ~ R.RiverWindow)
type SomeOutput a = (HasRiverId a, RiverId a ~ R.RiverOutput)
type SomeSeat a   = (HasRiverId a, RiverId a ~ R.RiverSeat)

-- * ToRiverId

-- | Default instances for matching 'Coercible' types.
class HasRiverId rid => ToRiverId a rid where
  toRiverId :: a -> rid
  default toRiverId :: Coercible a rid => a -> rid
  toRiverId = coerce

instance ToRiverId (Ptr Void) R.RiverOutput
instance ToRiverId (Ptr Void) R.RiverWindow
instance ToRiverId (Ptr Void) R.RiverSeat
