{-# LANGUAGE DefaultSignatures      #-}
{-# LANGUAGE TypeFamilyDependencies #-}
{-# LANGUAGE UndecidableInstances   #-}
{-# LANGUAGE ViewPatterns           #-}


-- |
-- Module      : HSWM.Types.Lens
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Types.Lens where

import           Data.Char
import           Data.Kind
import qualified Data.List as L
import           Language.Haskell.TH hiding (Type)
-- import           Language.Haskell.TH.Syntax hiding (Type)
import qualified Data.Set as Set
import qualified Language.Haskell.TH.Datatype as D
import qualified Language.Haskell.TH.Datatype.TyVarBndr as D
import           Lens.Micro.TH.Internal
import Data.Coerce

import qualified River as R

-- | This uses the same record field names, you want to use @NoFieldSelectors@ with this.
makeLenses' :: [Name] -> Q [Dec]
makeLenses' = makeLensesWith' myLensRules

makeLensesWith' :: LensRules -> [Name] -> Q [Dec]
makeLensesWith' rules = fmap join . mapM (makeLensesWith rules)

-- | @makeLensesCombine fields types@: each field in fields gets its own @HasField@ class.
-- Other fields get lenses under a @HasType@ class.
makeLensesCombine :: [String] -> [Name] -> Q [Dec]
makeLensesCombine fieldsIn namesIn = do
  typeFields <- forM namesIn $ \ty -> do
    di <- D.reifyDatatype ty
    return (ty, [ x | con <- D.datatypeCons di, D.RecordConstructor xs <- [D.constructorVariant con], x <- xs ])

  let allFields = concatMap snd typeFields

  fieldsWithClass <- fmap mconcat $ forM allFields $ \field -> do
    let c = "Has" <> (fromSnake False (nameBase field) & _head %~ toUpper)
    exists <- isJust <$> lookupTypeName c
    return [ field | exists ]

  let fields = fieldsIn ++ map nameBase fieldsWithClass
      namesPerTy = [ ty | (ty, _) <- typeFields, (nameBase ty & _head %~ toLower) `notElem` map nameBase fieldsWithClass ] -- any ((`notElem` fields) . nameBase) fs ]
      namesPerField = namesIn

  liftM2 (++)
    (makeLensesWith' (classPerType' $ const (`notElem` fields)) namesPerTy)
    (makeLensesWith' (classPerField' $ const (`elem` fields)) namesPerField)

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
             $ stabToOptic defType `conAppsT` [VarT s,VarT a]
  s = mkName "s"
  a = mkName "a"
  stabToContext _ = []
  stabToOptic _   = mkName "Lens'"

classPerField :: LensRules
classPerField = classPerField' (\_ _ -> True)

classPerField' :: (String -> String -> Bool) -> LensRules
classPerField' only = classyRules
    & lensClass .~ const Nothing
    & lensField .~ getName
  where
    getName (nameBase -> ty) _ (nameBase -> n)
      | only ty n || only ty (fromSnake False n) = case () of
          _ | n `elem` shortFields  -- prefix short/common fields with _
            -> [ MethodName (mkName $ "Has" <> (fromSnake False n & _head %~ toUpper))
                            (mkName $ "_" <> n)
               --             (mkName $ (ty & _head %~ toLower & L.dropWhileEnd (=='\'')) ++ (n & _head %~ toUpper & fromSnake))
               ]
            | otherwise
            -> [ MethodName (mkName $ "Has" <> (fromSnake False n & _head %~ toUpper))
                            (mkName $ fromSnake True n) ]
      | otherwise = []

shortFields :: [String]
shortFields = [ "x", "y", "name", "node", "new" ]

classPerType :: LensRules
classPerType = classPerType' (\_ _ -> True)

classPerType' :: (String -> String -> Bool) -> LensRules
classPerType' only = classyRules & lensField .~ getName
  where
    getName (nameBase -> ty) _ (nameBase -> n)
      | only ty n || only ty (fromSnake False n)
      = [ TopName . mkName $ fromSnake False n ]
      | otherwise = []

myLensRules :: LensRules
myLensRules = classyRules & lensField .~ getName
  where
    getName (nameBase -> ty) _ (nameBase -> n)
      -- sub classes or such, prefix
      | n `elem`
          [ "size"
          , "position"
          , "new"
          , "name"
          , "river_seat"
          , "repeatInfo"
          ]
      = [ TopName $ mkName $ (ty & _head %~ toLower & L.dropWhileEnd (=='\'')) ++ (n & _head %~ toUpper & fromSnake False) ]

      -- prefix short/common fields with _
      | n `elem` [ "x", "y", "node" ] = [TopName $ mkName $ "_" ++ n]
      | otherwise = [TopName $ mkName n]

fromSnake :: Bool -> String -> String
fromSnake flag inp
  | flag, '_':xs <- inp = '_' : inner xs
  | otherwise           = inner inp
  where
    inner ('_':x:xs) = toUpper x : inner xs
    inner     (x:xs) = x : inner xs
    inner         [] = []

(&+) :: (b -> c) -> (a -> b) -> a -> c
(&+) = (.)
infixl 2 &+

class Eq (RiverId a) => HasRiverId a where

  type family RiverId a :: Type

  riverId :: Lens' a (RiverId a)
  default riverId :: (a ~ RiverId a) => Lens' a (RiverId a)
  riverId = id

riverIdEq :: (HasRiverId a, HasRiverId b, RiverId a ~ RiverId b) => b -> a -> Bool
riverIdEq a b = (a ^. riverId) == (b ^. riverId)

eachRiverId :: (RiverId a ~ RiverId b, HasRiverId a, HasRiverId b, Each s t a a) => b -> Traversal s t a a
eachRiverId k = each . filtered (riverIdEq k)

instance HasRiverId R.RiverOutput where
  type RiverId R.RiverOutput = R.RiverOutput

instance HasRiverId R.RiverWindow where
  type RiverId R.RiverWindow = R.RiverWindow

instance HasRiverId R.RiverSeat where
  type RiverId R.RiverSeat = R.RiverSeat

instance HasRiverId R.RiverXkbBinding where
  type RiverId R.RiverXkbBinding = R.RiverXkbBinding

instance HasRiverId R.RiverPointerBinding where
  type RiverId R.RiverPointerBinding = R.RiverPointerBinding

type SomeWindow a = (HasRiverId a, RiverId a ~ R.RiverWindow)
type SomeOutput a = (HasRiverId a, RiverId a ~ R.RiverOutput)
type SomeSeat a   = (HasRiverId a, RiverId a ~ R.RiverSeat)

class HasRiverId b => ToRiverId a b where
  toRiverId :: a -> b
  default toRiverId :: Coercible a b => a -> b
  toRiverId = coerce

instance ToRiverId (Ptr Void) R.RiverOutput
instance ToRiverId (Ptr Void) R.RiverWindow
instance ToRiverId (Ptr Void) R.RiverSeat
