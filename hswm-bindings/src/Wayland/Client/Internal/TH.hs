{-# LANGUAGE QuasiQuotes           #-}
{-# LANGUAGE TemplateHaskellQuotes #-}

module Wayland.Client.Internal.TH where

import           Control.Monad
import           Data.Char (toUpper)
import           Foreign
import           Foreign.C.ConstPtr
import           GHC.Generics (Generic)
import           HsBindgen.Runtime.Prelude
import           HsBindgen.Runtime.PtrConst
import           Language.Haskell.TH
import           System.IO.Unsafe (unsafePerformIO)

import           Wayland.Client.Internal.Types

-- | The generator hides the ConstPtr values... But we can re-create them here.
toConstPtr :: Storable a => a -> IO (ConstPtr a)
toConstPtr x = malloc >>= \ptr -> poke ptr x >> pure (ConstPtr ptr)

getConstPtrs :: [(String, Name)] -> Q [Dec]
getConstPtrs defs = concat <$> mapM mk defs
  where
    mk (name, val) = do
      let n = mkName name -- const pointer
          n2 = mkName (name <> "'") -- refers to the interface struct directly
          curType = reifyType val
      sequence
        -- New "foobar :: ConstPtr Wl_interface" with "{-# NOINLINE foobar #-}"
        [ sigD n $ appT [t| ConstPtr |] curType
        , pragInlD n NoInline FunLike AllPhases
        , valD (varP n) (normalB $ appE [| unsafePerformIO . toConstPtr |] (varE val)) []
        -- Old value renamed
        , sigD n2 curType
        , valD (varP n2) (normalB $ varE val) []
        ]

mkInterface :: Name -> Name -> Q [Dec]
mkInterface ptrType val = do
  let n = mkName $ nameBase val -- const pointer
      n2 = mkName (nameBase val <> "'") -- refers to the interface struct directly
      curType = reifyType val
      ptrName = mkName $ fromSnailCase $ nameBase ptrType
  sequence
    -- New "foobar :: ConstPtr Wl_interface" with "{-# NOINLINE foobar #-}"
    [ sigD n $ appT [t| ConstPtr |] curType
    , pragInlD n NoInline FunLike AllPhases
    , valD (varP n) (normalB $ appE [| unsafePerformIO . toConstPtr |] (varE val)) []
    -- Old value renamed
    , sigD n2 curType
    , valD (varP n2) (normalB $ varE val) []
    -- Ptr alias
    , tySynD ptrName [] $ appT [t| Ptr |] $ conT ptrType
    ]

fromSnailCase :: String -> String
fromSnailCase = go
  where
    go ('_':x:xs) = toUpper x : go xs
    go (x:xs) = x : go xs
    go [ ] = []

dropSuffix, dropPrefix :: String -> String -> String
dropPrefix pre xs = if take (length pre) xs == pre then drop (length pre) xs else xs
dropSuffix suf xs = reverse $ dropPrefix (reverse suf) (reverse xs)

mkListenerEvent :: Name -> Q [Dec]
mkListenerEvent listenerTypeName = do
  TyConI (DataD _ listenerName _ _ [RecC recName recs] _) <- reify listenerTypeName

  let listenerName' = fromSnailCase (nameBase listenerName)
  let objectName = fromSnailCase $ dropSuffix "_listener" (nameBase listenerName)
  let evName = mkName $ objectName ++ "Event"

  evData <- dataD (pure []) evName [] Nothing (map (mkEvCon $ mkName objectName) recs)
    [ derivClause Nothing [conT ''Eq, conT ''Show, conT ''Generic] ]

  {-
     mkFoobarListener :: (FoobarEvent -> IO ()) -> IO FoobarListener
     mkFoobarListener h = FoobarListener
        <$> toFunPtr (\a b c -> h (FoobarEvent a b c))
     -}
  mkFunSig <- sigD (mkName $ "mk" ++ listenerName') [t|($(conT evName) -> IO ()) -> IO (PtrConst $(conT listenerName))|]
  mkFun <- funD_doc (mkName $ "mk" ++ listenerName') [mkListenerFun recName (mkName objectName) recs]
    (Just "This should be destroyed using destroyListener when no longer needed.")
    []

  inst <- instanceD (pure []) (appT (conT ''ListenerEvent) (conT evName))
    [ tySynInstD $ tySynEqn Nothing (appT (conT ''Listener) (conT evName)) (conT listenerName)
    , funD 'freeListener [mkFreeListener recName recs]
    ]
  -- inst <- tySynInstD $ tySynEqn Nothing (appT (conT ''EventListener) (conT evName)) (conT listenerName)

  return [evData, mkFunSig, mkFun, inst]
    where
      mkFreeListener conName recs = do
        funNames <- forM recs $ \_ -> newName "fun"
        clause [wildP, conP conName [ varP nm | nm <- funNames ]]
          (normalB $ doE [noBindS [|freeHaskellFunPtr $(varE nm)|] | nm <- funNames]) []

      mkEvCon :: Name -> (Name, Bang, Type) -> Q Con
      mkEvCon prefix (evName, _bang, evType) = do
        let fields = [ pure (Bang NoSourceUnpackedness SourceStrict, x) | x <- getFields evType]
        normalC (mkName $ nameBase prefix ++ upperFirst (fromSnailCase $ nameBase evName)) fields

      mkListenerFun recName prefix recs = do
        handle <- newName "h"
        listener <- newName "listener"
        funPtrs <- forM recs $ \(evName, _, evType) -> do
          let fields = getFields evType
              conName = mkName $ nameBase prefix ++ upperFirst (fromSnailCase $ nameBase evName)
          pats <- forM (take (length fields) ([0 ..]:: [Int])) $ \_ -> newName "a"
          rhs <- appE (varE 'toFunPtr) (lamE (map varP pats) (appE (varE handle) (appsE $ conE conName : map varE pats)))
          nm <- newName "fun"
          return (nm, BindS (VarP nm) rhs)
        listenerExp <- appE (varE 'return) $ appsE $ conE recName : map (varE . fst) funPtrs
        let stmts = map pure (map snd funPtrs) ++ [bindS (varP listener) (pure listenerExp), noBindS (toPtr listener)]
        clause [varP handle] (normalB $ doE stmts) []

      toPtr name = [|unsafeFromPtr <$> new $(varE name)|]

      getFields (AppT ArrowT x) = [x]
      getFields (AppT x y) = getFields x ++ getFields y
      getFields _ = []

      upperFirst (x:xs) = toUpper x : xs
      upperFirst [] = []

mkListenerEvents :: [Name] -> Q [Dec]
mkListenerEvents names = join <$> mapM mkListenerEvent names
