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
  A.genericToJSON,
  A.genericToEncoding,
  Dynamic,
  toDyn,
  fromDynamic,
) where

import Data.Aeson qualified as A
import Data.Char
import Data.Coerce
import Data.Functor.Contravariant
import Data.Set qualified as Set
import Language.Haskell.TH hiding (Type)
import Language.Haskell.TH.Datatype qualified as D
import Language.Haskell.TH.Datatype.TyVarBndr qualified as D
import Lens.Micro.TH.Internal
import Text.Read (read)
import Data.Dynamic

import River qualified as R
import WL.Client qualified as WL
import WL.ExtIdleNotify.Staging.V1.Client qualified as EXT_IN
import WL.Wlr.OutputPowerManagement.Unstable.V1.Client qualified as OPM
import WL.XdgOutput.Unstable.V1.Client qualified as XO

---------------------------------------------------------
-- Orphan instances
-- XXX

instance Show (MVar (Async ())) where show _ = "<MVar>"
instance Show (Async a) where show _ = "<Async>"
instance Show (StablePtr a) where show _ = "<SP>"
instance NFData (StablePtr a) where rnf = rnf . castStablePtrToPtr
instance A.ToJSON (StablePtr a) where toJSON _ = "StablePtr"

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
  liftM2
    (++)
    (makeLensesWith' (fRules $ classPerField' $ const (`elem` fields)) namesPerField)
    (makeLensesWith' (fRules $ classPerType' $ const (`notElem` fields)) namesPerTy)

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

-- * LensRules

classPerField :: LensRules
classPerField = classPerField' (\_ _ -> True)

classPerField' :: (String -> String -> Bool) -> LensRules
classPerField' only =
  classyRules
    & lensClass
      .~ const Nothing
    & lensField
      .~ getName
    & simpleLenses
      .~ False
  where
    getName (nameBase -> ty) _ (nameBase -> n)
      | only ty n || only ty (fromSnake False n) =
          let method
                -- prefix short/common fields with _
                | n `elem` shortFields = "_" <> n
                | otherwise = fromSnake True n
           in [MethodName (mkName $ "Has" <> (fromSnake False n & _head %~ toUpper)) (mkName method)]
      | otherwise = []

classPerType :: LensRules
classPerType = classPerType' (\_ _ -> True)

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

-- * Utilities

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

type SomeWindow a = (HasRiverId a, RiverId a ~ R.RiverWindow)
type SomeOutput a = (HasRiverId a, RiverId a ~ R.RiverOutput)
type SomeSeat a = (HasRiverId a, RiverId a ~ R.RiverSeat)

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

instance HasRiverId R.RiverOutput where type RiverId R.RiverOutput = R.RiverOutput
instance HasRiverId R.RiverWindow where type RiverId R.RiverWindow = R.RiverWindow
instance HasRiverId R.RiverSeat where type RiverId R.RiverSeat = R.RiverSeat
instance HasRiverId R.RiverNode where type RiverId R.RiverNode = R.RiverNode
instance HasRiverId R.RiverLayerShellOutput where type RiverId R.RiverLayerShellOutput = R.RiverLayerShellOutput
instance HasRiverId R.RiverXkbBinding where type RiverId R.RiverXkbBinding = R.RiverXkbBinding
instance HasRiverId R.RiverPointerBinding where type RiverId R.RiverPointerBinding = R.RiverPointerBinding

-- * ToRiverId

-- | Default instances for matching 'Coercible' types.
class (HasRiverId a) => ToRiverId b a where
  toRiverId :: b -> a
  default toRiverId :: (Coercible b a) => b -> a
  toRiverId = coerce

-- Instances

instance ToRiverId (Ptr Void) R.RiverOutput
instance ToRiverId (Ptr Void) R.RiverWindow
instance ToRiverId (Ptr Void) R.RiverSeat
instance ToRiverId (Ptr Void) R.RiverNode
instance ToRiverId (Ptr Void) R.RiverLayerShellOutput

riverIdToWord :: (Coercible a (Ptr Void)) => a -> Word
riverIdToWord = coerce . ptrToWordPtr . coerce

wordToRiverId :: (ToRiverId (Ptr Void) a) => Word -> a
wordToRiverId = toRiverId . wordPtrToPtr @Void . WordPtr

riverIdToHex :: (WL.IsWlObject a, Show a) => a -> String
riverIdToHex = show

hexToRiverId :: (WL.IsWlObject a, Read a) => String -> a
hexToRiverId = read

-- Aeson instances

-- | For ToJSON/FromJSON instances
aesonOptions :: A.Options
aesonOptions = A.defaultOptions{A.omitNothingFields = True}

instance A.ToJSON R.RiverColor

instance A.ToJSONKey R.RiverWindow where toJSONKey = contramap riverIdToHex A.toJSONKey
instance A.FromJSONKey R.RiverWindow where fromJSONKey = fmap hexToRiverId A.fromJSONKey

instance A.ToJSON R.RiverWindow where toJSON = A.toJSON . riverIdToHex
instance A.ToJSON R.RiverSeat where toJSON = A.toJSON . riverIdToHex
instance A.ToJSON R.RiverOutput where toJSON = A.toJSON . riverIdToHex
instance A.ToJSON R.RiverNode where toJSON = A.toJSON . riverIdToHex
instance A.ToJSON R.RiverLayerShellOutput where toJSON = A.toJSON . riverIdToHex
instance A.ToJSON R.RiverXkbBindingsSeat where toJSON = A.toJSON . riverIdToHex
instance A.ToJSON R.RiverLayerShellSeat where toJSON = A.toJSON . riverIdToHex
instance A.ToJSON WL.Output where toJSON = A.toJSON . riverIdToHex
instance A.ToJSON WL.Seat where toJSON = A.toJSON . riverIdToHex
instance A.ToJSON WL.Keyboard where toJSON = A.toJSON . riverIdToHex
instance A.ToJSON WL.Pointer where toJSON = A.toJSON . riverIdToHex
instance A.ToJSON WL.Touch where toJSON = A.toJSON . riverIdToHex
instance A.ToJSON XO.Output where toJSON = A.toJSON . riverIdToHex
instance A.ToJSON OPM.OutputPower where toJSON = A.toJSON . riverIdToHex
instance A.ToJSON EXT_IN.IdleNotification where toJSON = A.toJSON . riverIdToHex

-- Enum instances...
instance A.ToJSON R.RiverOutputPresentationMode where toJSON = A.toJSON . fromIntegral @_ @Int . coerce
instance A.ToJSON R.RiverWindowDecorationHint where toJSON = A.toJSON . fromIntegral @_ @Int . coerce
instance A.ToJSON R.RiverWindowEdges where toJSON = A.toJSON . fromIntegral @_ @Int . coerce
instance A.ToJSON WL.SeatCapability where toJSON = A.toJSON . fromIntegral @_ @Int . coerce

-- FromJSON
instance A.FromJSON R.RiverWindow where parseJSON = fmap hexToRiverId . A.parseJSON
instance A.FromJSON R.RiverSeat where parseJSON = fmap hexToRiverId . A.parseJSON
instance A.FromJSON R.RiverOutput where parseJSON = fmap hexToRiverId . A.parseJSON
instance A.FromJSON R.RiverNode where parseJSON = fmap hexToRiverId . A.parseJSON
instance A.FromJSON R.RiverLayerShellOutput where parseJSON = fmap hexToRiverId . A.parseJSON
