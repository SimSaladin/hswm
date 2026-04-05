{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TemplateHaskellQuotes #-}
{-# LANGUAGE NoTemplateHaskell #-}

module Wayland.Client.Internal.TH where

import Control.Monad
import Data.Char (toLower, toUpper)
import Data.String (IsString (..))
import Foreign
import Foreign.C
import Foreign.C.ConstPtr
import GHC.Generics (Generic)
import HsBindgen.Runtime.Prelude
import HsBindgen.Runtime.PtrConst
import Language.Haskell.TH
import System.IO.Unsafe (unsafePerformIO)
import Wayland.Client.Internal.Types
import Data.Maybe
import qualified Data.List as L

-- | The generator hides the ConstPtr values... But we can re-create them here.
toConstPtr :: (Storable a) => a -> IO (ConstPtr a)
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
        [ sigD n $ appT [t|ConstPtr|] curType,
          pragInlD n NoInline FunLike AllPhases,
          valD (varP n) (normalB $ appE [|unsafePerformIO . toConstPtr|] (varE val)) [],
          -- Old value renamed
          sigD n2 curType,
          valD (varP n2) (normalB $ varE val) []
        ]

mkInterface :: Name -> Name -> Q [Dec]
mkInterface ptrType val = do
  let n = mkName $ nameBase val -- const pointer
      n2 = mkName (nameBase val <> "'") -- refers to the interface struct directly
      curType = reifyType val
      ptrName = mkName $ fromSnailCase $ nameBase ptrType
  lev <- mkListenerEvent ptrType
  sequence $
    -- New "foobar :: ConstPtr Wl_interface" with "{-# NOINLINE foobar #-}"
    [ sigD n $ appT [t|ConstPtr|] curType,
      pragInlD n NoInline FunLike AllPhases,
      valD (varP n) (normalB $ appE [|unsafePerformIO . toConstPtr|] (varE val)) [],
      -- Old value renamed
      sigD n2 curType,
      valD (varP n2) (normalB $ varE val) [],
      -- Ptr alias
      tySynD ptrName [] $ appT [t|Ptr|] $ conT ptrType
    ]
      ++ map pure lev

fromSnailCase :: String -> String
fromSnailCase = go
  where
    go ('_' : x : xs) = toUpper x : go xs
    go (x : xs) = x : go xs
    go [] = []

dropSuffix, dropPrefix :: String -> String -> String
dropPrefix pre xs = if take (length pre) xs == pre then drop (length pre) xs else xs
dropSuffix suf xs = reverse $ dropPrefix (reverse suf) (reverse xs)

mkListenerEvent :: Name -> Q [Dec]
mkListenerEvent listenerTypeName = do
  res <- reify listenerTypeName
  go res
  where
    go (TyConI (DataD _ listenerName _ _ [RecC recName recs] _)) = do
      let listenerName' = fromSnailCase (nameBase listenerName)
      let objectName = fromSnailCase $ dropSuffix "_listener" (nameBase listenerName)
      let evName = mkName $ objectName ++ "Event"

      evData <-
        dataD
          (pure [])
          evName
          []
          Nothing
          (map (mkEvCon $ mkName objectName) recs)
          [derivClause Nothing [conT ''Eq, conT ''Show, conT ''Generic]]

      {-
         mkFoobarListener :: (FoobarEvent -> IO ()) -> IO FoobarListener
         mkFoobarListener h = FoobarListener
            <$> toFunPtr (\a b c -> h (FoobarEvent a b c))
         -}
      mkFunSig <- sigD (mkName $ "mk" ++ listenerName') [t|($(conT evName) -> IO ()) -> IO (PtrConst $(conT listenerName))|]
      mkFun <-
        funD_doc
          (mkName $ "mk" ++ listenerName')
          [mkListenerFun recName (mkName objectName) recs]
          (Just "This should be destroyed using destroyListener when no longer needed.")
          []

      inst <-
        instanceD
          (pure [])
          (appT (conT ''ListenerEvent) (conT evName))
          [ tySynInstD $ tySynEqn Nothing (appT (conT ''Listener) (conT evName)) (conT listenerName),
            funD 'freeListener [mkFreeListener recName recs]
          ]

      return [evData, mkFunSig, mkFun, inst]
      where
        mkFreeListener conName recs' = do
          funNames <- forM recs' $ \_ -> newName "fun"
          clause
            [wildP, conP conName [varP nm | nm <- funNames]]
            (normalB $ doE [noBindS [|freeHaskellFunPtr $(varE nm)|] | nm <- funNames])
            []

        mkEvCon :: Name -> (Name, Bang, Type) -> Q Con
        mkEvCon prefix (evName, _bang, evType) = do
          let fields = [pure (Bang NoSourceUnpackedness SourceStrict, x) | x <- getFields evType]
          normalC (mkName $ nameBase prefix ++ upperFirst (fromSnailCase $ nameBase evName)) fields

        mkListenerFun recName prefix recs' = do
          handle <- newName "h"
          listener <- newName "listener"
          funPtrs <- forM recs' $ \(evName, _, evType) -> do
            let fields = getFields evType
                conName = mkName $ nameBase prefix ++ upperFirst (fromSnailCase $ nameBase evName)
            pats <- forM (take (length fields) ([0 ..] :: [Int])) $ \_ -> newName "a"
            rhs <- appE (varE 'toFunPtr) (lamE (map varP pats) (appE (varE handle) (appsE $ conE conName : map varE pats)))
            nm <- newName "fun"
            return (nm, BindS (VarP nm) rhs)
          listenerExp <- appE (varE 'return) $ appsE $ conE recName : map (varE . fst) funPtrs
          let stmts = map (pure . snd) funPtrs ++ [bindS (varP listener) (pure listenerExp), noBindS (toPtr listener)]
          clause [varP handle] (normalB $ doE stmts) []

        toPtr name = [|unsafeFromPtr <$> new $(varE name)|]

        getFields (AppT ArrowT x) = [x]
        getFields (AppT x y) = getFields x ++ getFields y
        getFields _ = []

        upperFirst (x : xs) = toUpper x : xs
        upperFirst [] = []
    go _ = return []

mkListenerEvents :: [Name] -> Q [Dec]
mkListenerEvents names = join <$> mapM mkListenerEvent names

-----------

data ObjectFnA = ObjectFnA
  { fa_type :: Type -> Type,
    fa_doc :: Maybe String,
    fa_val_out :: Maybe ExpQ,
    fa_val_in :: Maybe (Name -> PatQ),
    fa_val_in_e :: Maybe (Name -> ExpQ)
  }

instance IsString ObjectFnA where
  fromString s = ObjectFnA id (if s == "" then Nothing else Just s) Nothing Nothing Nothing

data ObjectFn = ObjectFn
  { of_name :: String,
    of_nullCheck :: Bool,
    of_throwIfMinus1 :: Bool,
    of_getErrno :: Bool,
    of_arguments :: [ObjectFnA]
  }

instance IsString ObjectFn where
  fromString s = ObjectFn s False False False []

data ObjectCfg = ObjectCfg
  { objType :: Name,
    objListener :: Maybe Name,
    objFunctions :: [ObjectFn],
    objInterface :: Maybe Name,
    objFunctionPrefix :: String,
    objTypePrefix :: String,
    objIsWlObject :: Bool,
    objHasDestructor :: Bool,
    objAutoMarshall :: Maybe (Int -> Type -> Q ObjectFnA),
    objEventFieldNamesCommon :: [String],
    objEventFieldNames :: [(String, [String])]
  }

-- | for Wl_display:
--  listener = Wl_display_listener
--  interface = Wl_display_interface
wlobj :: Name -> [ObjectFn] -> ObjectCfg
wlobj t fns =
  ObjectCfg
    t
    (Just $ mkName $ nameBase t ++ "_listener")
    fns
    (Just $ mkName $ map toLower (nameBase t) ++ "_interface")
    (drop 3 $ map toLower $ nameBase t)
    (mkConName 3 "" t)
    True
    False
    Nothing
    [ "userdata" ]
    [ ]

mkConName i suf t = let (x : xs) = fromSnailCase $ drop i $ dropSuffix suf $ nameBase t in toUpper x : xs

riverObj :: Name -> [ObjectFn] -> ObjectCfg
riverObj t fns = (wlobj t fns)
  { objFunctionPrefix = fromSnailCase $ dropSuffix "_v1" $ {-drop 6 $-} map toLower $ nameBase t
  , objTypePrefix = let (x : xs) = fromSnailCase $ dropSuffix "_v1" $ {-drop 6 $-} nameBase t in toUpper x : xs
  , objHasDestructor = True
  , objEventFieldNamesCommon = [ "userdata", let x :xs = fromSnailCase $ dropSuffix "_v1" $ {-drop 6 $-} nameBase t in toLower x : xs ]
  , objAutoMarshall = Just $ \i t -> case t of
                                     AppT (ConT pn) (ConT nm)
                                       | i > 0, pn == ''Ptr, "Wl_" == take 3 (nameBase nm) ->
                                         let cN = mkName $ mkConName 3 "" nm
                                          in return (fromString (nameBase nm)) { fa_type = \_ -> ConT cN, fa_val_in = Just $ \n -> conP cN [varP n], fa_val_out = Just [|$(conE cN)|] }
                                       | i > 0, pn == ''Ptr, "River_" == take 6 (nameBase nm) ->
                                         let cN = mkName $ mkConName 0 "_v1" nm
                                          in return (fromString (nameBase nm)) { fa_type = \_ -> ConT cN, fa_val_in = Just $ \n -> conP cN [varP n], fa_val_out = Just [|$(conE cN)|] }

                                     AppT (ConT nIO) (AppT (ConT nPtr) (ConT nm))
                                       | i > 0, nIO == ''IO, nPtr == ''Ptr, "Wl_" == take 3 (nameBase nm) ->
                                         let cN = mkName $ mkConName 3 "" nm
                                          in return (fromString (nameBase nm)) { fa_type = \_ -> AppT (ConT nIO) (ConT cN), fa_val_out = Just [|return . $(conE cN)|] }
                                       | i > 0, nIO == ''IO, nPtr == ''Ptr, "River_" == take 6 (nameBase nm) ->
                                         let cN = mkName $ mkConName 0 "_v1" nm
                                          in return (fromString (nameBase nm)) { fa_type = \_ -> AppT (ConT nIO) (ConT cN), fa_val_out = Just [|return . $(conE cN)|] }
                                     _ -> return $ fromString ""
  }

mkWlObject :: ObjectCfg -> Q [Dec]
mkWlObject cfg = do
  a <- mkWlObjectType cfg
  b <- mkWlObjectMisc cfg
  return (a ++ b)

mkWlObjectType :: ObjectCfg -> Q [Dec]
mkWlObjectType cfg = do
  let ntName = mkName $ objTypePrefix cfg
  ntD <-
    newtypeD_doc
      (pure [])
      ntName
      []
      Nothing
      (normalC ntName [bangType (bang noSourceUnpackedness noSourceStrictness) [t|Ptr $(conT (objType cfg))|]], Nothing, [])
      [derivClause Nothing [[t|Eq|], [t|Show|], [t|Ord|], [t|Storable|]]]
      (Just $ "See '" ++ nameBase (objType cfg) ++ "'")
  return [ntD]


mkWlObjectMisc :: ObjectCfg -> Q [Dec]
mkWlObjectMisc cfg = do
  pname <- newName "p"
  wloD <-
    sequence
      [ instanceD
          (pure [])
          (appT (conT ''IsWlObject) (conT ntName))
          [ funD 'getVersion [clause [conP ntName [varP pname]] (normalB (appE (varE (getFn (objType cfg) "get_version")) (varE pname))) []],
            funD 'getUserData [clause [conP ntName [varP pname]] (normalB (appE (varE (getFn (objType cfg) "get_user_data")) (varE pname))) []],
            funD 'setUserData [clause [conP ntName [varP pname]] (normalB (appE (varE (getFn (objType cfg) "set_user_data")) (varE pname))) []]
          ]
      | objIsWlObject cfg
      ]
  destroyD <-
    sequence
      [ instanceD
          (pure [])
          (appT (conT ''HasDestructor) (conT ntName))
          [ funD 'objectDestroy [clause [conP ntName [varP pname]] (normalB (appE (varE (getFn (objType cfg) "destroy")) (varE pname))) []]
          ]
      | objHasDestructor cfg
      ]

  listenerD <- case objListener cfg of
    Nothing -> pure []
    Just listener -> mkAddListenerInst (objType cfg) listener

  ifDs <- case (objListener cfg, objInterface cfg) of
    (Just listener, Just iface) -> mkInterfaceNew cfg listener iface
    (Nothing, Just iface) -> mkInterfaceNew cfg (objType cfg) iface
    _ -> return []

  fnDs <- forM (objFunctions cfg) $ \x -> mkFn x

  return $ wloD ++ destroyD ++ listenerD ++ ifDs ++ concat fnDs
  where
    ntName = mkName $ objTypePrefix cfg

    mkAddListenerInst :: Name -> Name -> Q [Dec]
    mkAddListenerInst objN listenerN = do
      let mk_clause = do
            pname <- newName "p"
            clause [conP ntName [varP pname]] (normalB (appE (varE (getFn objN "add_listener")) (varE pname))) []
      sequence
        [ instanceD
          (pure [])
          (appT (conT ''AddListener) (conT ntName))
          [ tySynInstD $ tySynEqn Nothing (appT (conT ''ObjectListener) (conT ntName)) (conT listenerN),
            funD 'listenerAdd [mk_clause]
          ]
        , tySynD (mkName $ objTypePrefix cfg ++ "Listener") [] [t| PtrConst (ObjectListener $(conT ntName)) |]
        ]

    getFn objN name = mkName $ map toLower (nameBase objN) ++ "_" ++ name

    mkFn :: ObjectFn -> Q [Dec]
    mkFn ObjectFn {..} = do
      let fn = of_name
      let nm = mkName $ fromSnailCase $ objFunctionPrefix cfg ++ "_" ++ fn
      VarI f_name f_type _ <- reify $ getFn (objType cfg) fn
      let args = getArrowArgs f_type
      of_args <- forM (zip [0..] args) $ \(idx, aT) -> do
        if | Just userA <- of_arguments L.!? idx -> return userA
           | Just doA <- objAutoMarshall cfg -> doA idx aT
           | otherwise -> return $ fromString ""
      let res_type = last args
          res_trans
            | res_type == AppT (ConT ''IO) (AppT (ConT ''Ptr) (ConT (objType cfg))) = [|return . $(conE ntName)|]
            | ObjectFnA{fa_val_out = Just vE} : _ <- drop (length args - 1) of_args = vE
            | otherwise = [|return|]
      argNames <- replicateM (length (init args)) $ newName "a"
      let c_pat = do
            (argT, argN, fa) <- zip3 (init args) argNames of_args
            return $
              if | Nothing <- fa_val_in fa, argT == AppT (ConT ''Ptr) (ConT (objType cfg)) -> conP ntName [varP argN]
                 | otherwise -> varP argN

          toBodyE as [] = appsE (varE f_name : map varE as)
          toBodyE as ((t, fa, (anm, bnm)) : xs)
            | Just inP <- fa_val_in fa = letE [valD (inP bnm) (normalB $ varE anm) []] (toBodyE (as ++ [bnm]) xs)
            | Just inE <- fa_val_in_e fa = letE [valD (varP bnm) (normalB $ inE anm) []] (toBodyE (as ++ [bnm]) xs)
            | t == AppT (ConT ''PtrConst) (ConT ''CChar) = [| maybe (\f -> f nullPtr) withCString $(varE anm) ($(lamE [varP bnm] (toBodyE (as ++ [bnm]) xs)) . ConstPtr) |]
            | otherwise = letE [valD (varP bnm) (normalB $ varE anm) []] (toBodyE (as ++ [bnm]) xs)

          c_body = normalB $ do
            resN <- newName "res"
            argNames' <- replicateM (length (init args)) $ newName "b"
            doE $
              [bindS (varP resN) (toBodyE [] (zip3 (init args) (of_args ++ repeat "") (zip argNames argNames')))]
                ++ [noBindS [|when ($(varE resN) == nullPtr) $ error "returned NULL"|] | of_nullCheck]
                ++ [noBindS [|when ($(varE resN) == -1) $ error "returned -1"|] | of_throwIfMinus1, not of_getErrno]
                ++ [noBindS [|when ($(varE resN) == -1) $ throwErrno $(litE $ StringL $ nameBase nm)|] | of_throwIfMinus1, of_getErrno]
                ++ [noBindS $ appE res_trans (varE resN)]
          docStr =
            unlines $
                [ "Argument " ++ show i ++ ": " ++ fromMaybe "_" (fa_doc oa) ++ "\n" | (i, oa) <- zip [(1::Int)..] of_args ]
                ++ ["See 'AddListener', 'IsWlObject', '" ++ nameBase f_name ++ "'"]
                ++ ["\nThrows an exception on -1 return value." | of_throwIfMinus1]
                ++ ["\nThrows an exception on null return value." | of_nullCheck]
      sequence
        [ funD_doc nm [clause c_pat c_body []] (Just docStr) ([fa_doc x | x <- of_args]),
          sigD nm (return $ mapTypeArgs of_args $ typeTrans f_type)
        ]

    typeTrans =
      mapType (AppT (ConT ''Ptr) (ConT (objType cfg))) (ConT ntName)
        . mapType (AppT (ConT ''PtrConst) (ConT ''CChar)) (AppT (ConT ''Maybe) (ConT ''String))

mapTypeArgs :: [ObjectFnA] -> Type -> Type
mapTypeArgs (a : as) (AppT (AppT ArrowT x) y) = AppT (AppT ArrowT (fa_type a x)) (mapTypeArgs as y)
mapTypeArgs (a : _) t = fa_type a t
mapTypeArgs [] t = t

mapType :: Type -> Type -> Type -> Type
mapType old newt t | t == old = newt
mapType old newt (AppT a b) = AppT (mapType old newt a) (mapType old newt b)
mapType _ _ t = t

getArrowArgs :: Type -> [Type]
getArrowArgs (AppT (AppT ArrowT x) y) = x : getArrowArgs y
getArrowArgs x = [x]

mkInterfaceNew :: ObjectCfg -> Name -> Name -> Q [Dec]
mkInterfaceNew cfg@ObjectCfg {..} listenerValName ifaceVN = do
  let ifaceVN' = mkName $ objFunctionPrefix ++ "Interface" -- nameBase ifaceVN -- const pointer
      ifaceVN'' = mkName $ objFunctionPrefix ++ "Interface_" -- refers to the interface struct directly
      ifaceT = reifyType ifaceVN
  lev <- mkListenerEventNew cfg listenerValName
  sequence $
    -- New "foobar :: ConstPtr Wl_interface" with "{-# NOINLINE foobar #-}"
    [ sigD ifaceVN' $ appT [t|ConstPtr|] ifaceT,
      pragInlD ifaceVN' NoInline FunLike AllPhases,
      valD (varP ifaceVN') (normalB $ appE [|unsafePerformIO . toConstPtr|] (varE ifaceVN)) [],
      -- Old value renamed
      sigD ifaceVN'' ifaceT,
      valD (varP ifaceVN'') (normalB $ varE ifaceVN) []
    ]
      ++ map pure lev

mkListenerEventNew :: ObjectCfg -> Name -> Q [Dec]
mkListenerEventNew ObjectCfg {..} listenerTypeName = do
  res <- reify listenerTypeName
  go res
  where
    go (TyConI (DataD _ listenerName _ _ [RecC recName recs] _)) = do
      let listenerName' = objTypePrefix ++ "Listener" -- fromSnailCase (nameBase listenerName)
      let objectName = objTypePrefix -- fromSnailCase $ dropSuffix "_listener" (nameBase listenerName)
      let evName = mkName $ objectName ++ "Event"

      -- data FoobarEvent = ...
      evData <- dataD (pure []) evName [] Nothing (map (mkEvCon $ mkName objectName) recs)
          [derivClause Nothing [conT ''Eq, conT ''Show, conT ''Generic]]

      {-
         mkFoobarListener :: (FoobarEvent -> IO ()) -> IO FoobarListener
         mkFoobarListener h = FoobarListener
            <$> toFunPtr (\a b c -> h (FoobarEvent a b c))
         -}
      mkFunSig <- sigD (mkName $ "mk" ++ listenerName') [t|($(conT evName) -> IO ()) -> IO (PtrConst $(conT listenerName))|]
      mkFun <-
        funD_doc
          (mkName $ "mk" ++ listenerName')
          [mkListenerFun (mkName objectName) recs]
          (Just "This should be destroyed using destroyListener when no longer needed.")
          []
      inst <-
        instanceD
          (pure [])
          (appT (conT ''ListenerEvent) (conT evName))
          [ tySynInstD $ tySynEqn Nothing (appT (conT ''Listener) (conT evName)) (conT listenerName),
            funD 'freeListener [mkFreeListener recName recs]
          ]
      return [evData, mkFunSig, mkFun, inst]
      where
        mkFreeListener conName recs' = do
          funNames <- forM recs' $ \_ -> newName "fun"
          clause
            [wildP, conP conName [varP nm | nm <- funNames]]
            (normalB $ doE [noBindS [|freeHaskellFunPtr $(varE nm)|] | nm <- funNames])
            []

        fieldName eN i _fT
          | Just nm <- objEventFieldNamesCommon L.!? i = return $ mkName nm
          | Just xs <- L.lookup (nameBase eN) objEventFieldNames, Just nm <- xs L.!? (i - length objEventFieldNamesCommon) = return $ mkName nm
          | otherwise = newName $ "_" ++ nameBase eN ++ "_" ++ show i

        mkEvCon :: Name -> (Name, Bang, Type) -> Q Con
        mkEvCon prefix (evName, _bang, evType) = do
          let evConN = mkName $ nameBase prefix ++ upperFirst (fromSnailCase $ nameBase evName)
          fields <- forM (zip [(0::Int)..] $ getFields evType) $ \(idx, fT) -> do
            fa <- if | Just doA <- objAutoMarshall -> doA 1 fT
                     -- | Just userA <- of_arguments L.!? idx -> return userA
                     | otherwise -> return $ fromString ""
            fN <- fieldName evName idx (fa_type fa fT)
            return (fT, fa, fN)
          recC evConN
            [varBangType fN (bangType (bang noSourceUnpackedness sourceStrict) (pure $ typeTrans $ fa_type fa fT)) | (fT, fa, fN) <- fields]

        mkListenerFun prefix recs' = do
          handle <- newName "h"
          listener <- newName "listener"
          funPtrs <- forM recs' $ \(evName, _, evType) -> do
            let fields = getFields evType
                conName = mkName $ nameBase prefix ++ upperFirst (fromSnailCase $ nameBase evName)
            pats <- forM (take (length fields) ([0 ..] :: [Int])) $ \_ -> newName "a"

            let toEventE args [] = appE (varE handle) (appsE $ conE conName : args)
                toEventE args ((t, anm) : xs)
                  | t == AppT (ConT ''Ptr) (ConT objType) = do
                      arg <- newName "a"
                      letE [valD (varP arg) (normalB $ appE (conE $ mkName objTypePrefix) (varE anm)) []] (toEventE (args ++ [varE arg]) xs)
                  | t == AppT (ConT ''PtrConst) (ConT ''CChar) = do
                      arg <- newName "a"
                      [|peekCString (unConstPtr $(varE anm)) >>= $(lamE [varP arg] (toEventE (args ++ [varE arg]) xs))|]
                  | Just doA <- objAutoMarshall = do
                      arg <- newName "a"
                      fa <- doA 1 t
                      case fa_val_out fa of
                        Just outE -> letE [valD (varP arg) (normalB $ appE outE (varE anm)) []] (toEventE (args ++ [varE arg]) xs)
                        Nothing -> letE [valD (varP arg) (normalB $ varE anm) []] (toEventE (args ++ [varE arg]) xs)
                  | otherwise = do
                      arg <- newName "a"
                      letE [valD (varP arg) (normalB $ varE anm) []] (toEventE (args ++ [varE arg]) xs)

            rhs <- appE (varE 'toFunPtr) (lamE (map varP pats) (toEventE [] $ zip fields pats))
            nm <- newName "fun"
            return (nm, BindS (VarP nm) rhs)
          listenerExp <- appE (varE 'return) $ appsE $ conE recName : map (varE . fst) funPtrs
          let stmts = map (pure . snd) funPtrs ++ [bindS (varP listener) (pure listenerExp), noBindS (toPtr listener)]
          clause [varP handle] (normalB $ doE stmts) []

        toPtr name = [|unsafeFromPtr <$> new $(varE name)|]

        getFields (AppT ArrowT x) = [x]
        getFields (AppT x y) = getFields x ++ getFields y
        getFields _ = []

        upperFirst (x : xs) = toUpper x : xs
        upperFirst [] = []

        typeTrans =
          mapType (AppT (ConT ''Ptr) (ConT objType)) (ConT (mkName objTypePrefix))
            . mapType (AppT (ConT ''PtrConst) (ConT ''CChar)) (ConT ''String)
    go _ = return []

mkPtrArg :: String -> Name -> Name -> ObjectFnA
mkPtrArg doc tN cN = (fromString doc)
  { fa_type = \_ -> ConT tN
  , fa_val_in = Just $ \v -> conP cN [varP v]
  , fa_val_out = Just [|$(conE cN)|]
  }

mkIOPtrArg :: String -> Name -> Name -> ObjectFnA
mkIOPtrArg doc tN cN = (fromString doc)
  { fa_type = \_ -> AppT (ConT ''IO) (ConT tN)
  , fa_val_out = Just [|return . $(conE cN)|]
  }
