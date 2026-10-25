{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE TypeFamilyDependencies #-}
{-# LANGUAGE ViewPatterns #-}
{-# OPTIONS_GHC -Wno-orphans #-}

-- |
-- Module      : HSWM.Types.Lens
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Types.Lens (
  module HSWM.Types.Lens,

  -- * Re-exports
  mkName,
  nameBase,
  toUpper,
  toLower,
  A.ToJSON (..),
  A.FromJSON (..),
  A.genericParseJSON,
  A.genericToJSON,
  A.genericToEncoding,
  Dynamic,
  toDyn,
  fromDynamic,
) where

import Data.Aeson qualified as A
import Data.Char
import Data.Coerce
import Data.Dynamic
import Data.Set qualified as Set
import Data.Typeable
import Language.Haskell.TH hiding (Type)
import Language.Haskell.TH.Datatype qualified as D
import Language.Haskell.TH.Datatype.TyVarBndr qualified as D
import Lens.Micro.TH.Internal
import Text.Read (read)

import River qualified as R
import WL.Client qualified as WL

---------------------------------------------------------
-- Orphan instances
-- XXX

instance (Typeable a) => Show (MVar a) where
  show a = "MVar " ++ show (typeOf a)
instance (Typeable a) => Show (Async a) where
  show a = "Async " ++ show (typeOf a)
instance (Typeable a) => Show (StablePtr a) where
  show a = "StablePtr " ++ show (typeOf a)

instance NFData (StablePtr a) where
  rnf = rnf . castStablePtrToPtr

instance A.ToJSON (StablePtr a) where
  toJSON _ = A.Null
  omitField _ = True

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

-- |
-- Method A. Generate one class per type. The class shall contain the lens methods.
--
-- This uses the same record field names, you want to use @NoFieldSelectors@ with this.
makeLenses' :: [Name] -> Q [Dec]
makeLenses' = makeLensesWith' classPerType

-- | Wrapper over 'makeLensesWith' that takes a list of types and creates lenses for them all
-- using the same set of options.
makeLensesWith' :: LensRules -> [Name] -> Q [Dec]
makeLensesWith' rules = fmap join . mapM (makeLensesWith rules)

-- |
-- Method B. (Hybrid) field mentioned in the supplied list are /not/ included in generated
-- type-oriented classes (the @HasType@ classes that are created for each type).
--
-- The selected fields get their respective @HasField@ classes (which host
-- field-oriented lenses normally).
--
-- @
-- makeLensesCombine fields types
-- @
makeLensesCombine :: [String] -> [Name] -> Q [Dec]
makeLensesCombine = makeLensesCombine' id

-- | Like 'makeLensesCombine' but further customizable: the first parameter (function)
-- is applied to the inferred LensRules before using.
makeLensesCombine' :: (LensRules -> LensRules) -> [String] -> [Name] -> Q [Dec]
makeLensesCombine' fRules fieldsIn namesIn = do
  -- [(type-name, [field-name])] -- all types + their fields
  typeFields <- forM namesIn $ \ty -> do
    di <- D.reifyDatatype ty
    return (ty, [x | con <- D.datatypeCons di, D.RecordConstructor xs <- [D.constructorVariant con], x <- xs])
  -- [field-name] ~ all fields of all target types
  let allFields = concatMap snd typeFields
  -- existsFieldValues <- fmap catMaybes $ forM allFields $ \nm -> do
  --  exists <- isJust <$> lookupValueName (nameBase nm)
  --  return $ guard exists $> nm
  -- [field-name] -- fields that have a defined 'HasField' class in scope
  fieldsWithClass <- fmap mconcat $ forM allFields $ \field -> do
    let c = "Has" <> (nameBase field & fromSnake False & _head %~ toUpper)
    exists <- isJust <$> lookupTypeName c
    return [field | exists]
  -- [field-name] -- fields that get lenses on class-per-field basis
  let fields =
        let fs = fieldsIn ++ map nameBase fieldsWithClass
         in fs ++ map (fromSnake False) fs
      -- [type-name] -- types that get lenses on class-per-field basis
      namesPerField = namesIn
      -- [type-name] -- types that get lenses on class-per-type basis
      namesPerTy =
        [ ty
        | (ty, fs) <- typeFields
        , (nameBase ty & _head %~ toLower) `notElem` map nameBase fieldsWithClass
        , any ((`notElem` fields) . nameBase) fs
        ]
  liftM2
    (++)
    (makeLensesWith' (fRules $ classPerField' $ const (`elem` fields)) namesPerField)
    (makeLensesWith' (fRules $ classPerType' $ const (`notElem` fields)) namesPerTy)

-- | This will create any missing classes for the supplied field/record names.
-- Useful to call before a makeLenses* call that needs it, but can't figure it out when
-- the class won't exist until in the same splice (where it is at that point unavailable).
makeFieldClassesIfMissing :: [String] -> Q [Dec]
makeFieldClassesIfMissing fields = do
  res <- fmap join $ forM fields $ \field -> do
    let c = mkName $ "Has" <> (fromSnake False field & _head %~ toUpper)
        n
          | field `elem` shortFields = mkName $ "_" <> fromSnake True field
          | otherwise = mkName $ fromSnake True field
        defType = ()
    exists <- isJust <$> lookupTypeName (show c)
    return $ [makeFieldClass defType c n | not exists]
  sequence res

-- | Used by 'makeFieldClassesIfMissing'.
makeFieldClass :: (Quote m) => () -> Name -> Name -> m Dec
makeFieldClass defType className methodName =
  classD
    (cxt [])
    className
    [D.plainTV s, D.plainTV a]
    [FunDep [s] [a]]
    [sigD methodName (return methodType)]
  where
    methodType =
      quantifyType'
        (Set.fromList [s, a])
        (stabToContext defType)
        $ stabToOptic defType `conAppsT` [VarT s, VarT a]
    s = mkName "s"
    a = mkName "a"
    stabToContext _ = []
    stabToOptic _ = mkName "Lens'"

-- * The LensRules

-- ** Class-per-Field

-- | Rules used for the @HasField@-style.
classPerField :: LensRules
classPerField = classPerField' (\_ _ -> True)

-- | Just like 'classPerField', with an additional parameter for further customization.
classPerField' :: (String -> String -> Bool) -> LensRules
classPerField' only =
  classyRules
    & lensClass .~ const Nothing
    & lensField .~ getName
    & simpleLenses .~ False
  where
    getName (nameBase -> ty) _ (nameBase -> n)
      | only ty n || only ty (fromSnake False n) =
          let method
                -- prefix short/common fields with _
                | n `elem` shortFields = "_" <> n
                | otherwise = fromSnake True n
           in [MethodName (mkName $ "Has" <> (fromSnake False n & _head %~ toUpper)) (mkName method)]
      | otherwise = []

-- ** Class-per-type

-- | Rules used for the @HasClass@-style.
classPerType :: LensRules
classPerType = classPerType' (\_ _ -> True)

-- | Customizable version of 'classPerType'. The function parameter is used to further select which
-- fields are accepted.
classPerType' :: (String -> String -> Bool) -> LensRules
classPerType' only =
  classyRules
    & lensField
      .~ getName
    & simpleLenses
      .~ True -- needs to be True to work with createClass for more complex types
  where
    getName (nameBase -> ty) _ (nameBase -> n)
      | only ty n || only ty (fromSnake False n) =
          let method
                -- prefix short/common fields with _
                | n `elem` shortFields = "_" <> n
                | otherwise = fromSnake False n
           in [TopName (mkName method)]
      | otherwise = []

-- ** Utility functions

-- | Convert @snake_case_input@ to @snakeCaseInput@
fromSnake :: Bool -> String -> String
fromSnake flag inp
  | flag, '_' : xs <- inp = '_' : inner xs
  | otherwise = inner inp
  where
    inner ('_' : x : xs) = toUpper x : inner xs
    inner (x : xs) = x : inner xs
    inner [] = []

-- * Operators

-- | For easier lens operation composition.
(&+) :: (b -> c) -> (a -> b) -> a -> c
(&+) = (.)

infixl 2 &+

-- * HasRiverId

-- | Data structures that are or contain some River identifier of type 'RiverId'.
--
-- Useful to overload functions that operate on an identifier to work directly with data types that contain an
-- identifier.
class (Eq (RiverId a)) => HasRiverId a where
  type RiverId a

  riverId :: Lens' a (RiverId a)
  default riverId :: (a ~ RiverId a) => Lens' a (RiverId a)
  riverId = id

riverIdEq :: (SameRiverId a b) => a -> b -> Bool
riverIdEq a b = (a ^. riverId) == (b ^. riverId)

-- | An 'Each' traversal that goes
eachRiverId :: (Each s s a a, SameRiverId k a) => k -> Traversal' s a
eachRiverId k = each . filtered (riverIdEq k)

type SameRiverId a b = (HasRiverId a, HasRiverId b, RiverId a ~ RiverId b)

-- | Constraints for indicating that the input is or has a distinguishing identifier.
type SomeWindow a = (HasRiverId a, RiverId a ~ R.RiverWindow)

type SomeOutput a = (HasRiverId a, RiverId a ~ R.RiverOutput)
type SomeSeat a = (HasRiverId a, RiverId a ~ R.RiverSeat)

instance HasRiverId R.RiverOutput where type RiverId R.RiverOutput = R.RiverOutput
instance HasRiverId R.RiverWindow where type RiverId R.RiverWindow = R.RiverWindow
instance HasRiverId R.RiverSeat where type RiverId R.RiverSeat = R.RiverSeat
instance HasRiverId R.RiverNode where type RiverId R.RiverNode = R.RiverNode
instance HasRiverId R.RiverLayerShellOutput where type RiverId R.RiverLayerShellOutput = R.RiverLayerShellOutput
instance HasRiverId R.RiverXkbBinding where type RiverId R.RiverXkbBinding = R.RiverXkbBinding
instance HasRiverId R.RiverPointerBinding where type RiverId R.RiverPointerBinding = R.RiverPointerBinding

-- * ToRiverId

-- | Class for types that can be transformed into thte primary identifier.
--
-- Default implementation exists via 'Coercible' for compatible types.
class (HasRiverId a) => ToRiverId b a where
  toRiverId :: b -> a
  default toRiverId :: (Coercible b a) => b -> a
  toRiverId = coerce

-- | RiverIds can be converted into "Word" without conversion loss.
riverIdToWord :: (Coercible a (Ptr Void)) => a -> Word
riverIdToWord = coerce . ptrToWordPtr . coerce

-- | The reverse of 'riverIdToWord'. @Word -> RiverId@.
wordToRiverId :: (ToRiverId (Ptr Void) a) => Word -> a
wordToRiverId = toRiverId . wordPtrToPtr @Void . WordPtr

-- | 'riverIdToHex' and 'hexToRiverId' is the encoding used for JSON too.
-- They also correspond to the (custom) 'Show' and 'Read' instances.
riverIdToHex :: (WL.IsWlObject a, Show a) => a -> String
hexToRiverId :: (WL.IsWlObject a, Read a) => String -> a
riverIdToHex = show

hexToRiverId = read

-- Instances for most common River identifiers...
instance ToRiverId (Ptr Void) R.RiverOutput
instance ToRiverId (Ptr Void) R.RiverWindow
instance ToRiverId (Ptr Void) R.RiverSeat
instance ToRiverId (Ptr Void) R.RiverNode
instance ToRiverId (Ptr Void) R.RiverLayerShellOutput

-- * Aeson instances

-- | The shared Aeson generation options. These same ptions should be used across the project.
--
-- ToJSON/FromJSON instances
aesonOptions :: A.Options
aesonOptions = A.defaultOptions{A.omitNothingFields = True}
