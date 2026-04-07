{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE MultilineStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TemplateHaskellQuotes #-}
{-# LANGUAGE NoTemplateHaskell #-}

module Wayland.Client.Internal.TH where

import           Control.DeepSeq (NFData)
import           Control.Monad
import           Data.Char (toLower, toUpper)
import           Data.Hashable (Hashable)
import qualified Data.List as L
import           Data.Maybe
import           Data.String (IsString(..))
import           Data.Void
import           Foreign
import           Foreign.C
import           Foreign.C.ConstPtr
import           GHC.Generics (Generic)
import           HsBindgen.Runtime.Prelude
import           HsBindgen.Runtime.PtrConst
import           Language.Haskell.TH
import           System.IO.Unsafe (unsafePerformIO)

import           Wayland.Client.Internal.Types

-- * Configuration

data ObjectCfg = ObjectCfg
  { objType :: Name, -- ^ input: the object type name
    objFunctions :: [ObjectFn], -- ^ input: functions to be wrapped
    objListener :: Maybe Name, -- ^ input: listener type name
    objInterface :: Maybe Name, -- ^ Input: interface value name
    objFunctionPrefix :: String, -- ^ output: value name prefix
    objTypePrefix :: String, -- ^ output: type name prefix
    objIsWlObject :: Bool, -- ^ create IsWsObject instance?
    objHasDestructor :: Bool, -- ^ has @*_destroy@ function?
    objAutoMarshall :: Maybe (Int -> Type -> Q ObjectFnA), -- ^ type-based field/function argument transformations
    objEventFieldNamesCommon :: [String], -- ^ Common event record field names
    objEventFieldNames :: [(String, [String])] -- ^ Per-event record field names
  }

data ObjectFn = ObjectFn
  { of_name :: String,
    of_nullCheck :: Bool,
    of_throwIfMinus1 :: Bool,
    of_getErrno :: Bool,
    of_arguments :: [ObjectFnA]
  }

instance IsString ObjectFn where
  fromString s = ObjectFn s False False False []

data ObjectFnA = ObjectFnA
  { fa_type :: Type -> Type,
    fa_doc :: Maybe String,
    fa_val_out :: Maybe ExpQ,
    fa_val_in :: Maybe (Name -> PatQ),
    fa_val_in_e :: Maybe (Name -> ExpQ)
  }

instance IsString ObjectFnA where
  fromString s = ObjectFnA id (if s == "" then Nothing else Just s) Nothing Nothing Nothing

objDropPrefixSuffix :: String -> String -> ObjectCfg -> ObjectCfg
objDropPrefixSuffix pre suf cfg = cfg
  { objFunctionPrefix = lowerFirst . fromSnailCase . dropPrefix pre . dropSuffix suf $ nameBase (objType cfg)
  , objTypePrefix = upperFirst . fromSnailCase . dropPrefix pre . dropSuffix suf $ nameBase (objType cfg)
  , objEventFieldNamesCommon = [ "userdata", lowerFirst . fromSnailCase . dropPrefix pre . dropSuffix suf $ nameBase (objType cfg) ]
  }

objAddMarshall :: [(TypeQ, TypeQ, ExpQ, ExpQ)] -> ObjectCfg -> ObjectCfg
objAddMarshall pairs cfg = cfg
  { objAutoMarshall = Just $ \_ inT ->
    let go ((qT, rT, rInE, rOutE) : xs) = do
          t <- qT
          if t == inT then
                      do
                        t' <- rT
                        return "" { fa_type = const t'
                                  , fa_val_in_e = Just $ appE rInE . varE
                                  , fa_val_out = Just rOutE
                                  }
                      else go xs
        go [] = return ""
     in go pairs
  }

-- | for Wl_display:
--  listener = Wl_display_listener
--  interface = Wl_display_interface
wlobj :: Name -> [ObjectFn] -> ObjectCfg
wlobj t fns =
  ObjectCfg
    t
    fns
    (Just $ mkName $ nameBase t ++ "_listener")
    (Just $ mkName $ map toLower (nameBase t) ++ "_interface")
    (drop 3 $ map toLower $ nameBase t)
    (mkConName 3 "" t)
    True
    False
    Nothing
    [ "userdata" ]
    [ ]

riverObj :: Name -> [ObjectFn] -> ObjectCfg
riverObj t fns = (wlobj t fns)
  { objFunctionPrefix = fromSnailCase $ dropSuffix "_v1" $ map toLower $ nameBase t
  , objTypePrefix = upperFirst $ fromSnailCase $ dropSuffix "_v1" $ nameBase t
  , objHasDestructor = True
  , objEventFieldNamesCommon = [ "userdata", lowerFirst $ fromSnailCase $ dropSuffix "_v1" $ nameBase t ]
  , objAutoMarshall = Just $ \_ tT ->
    case tT of
      AppT (ConT pn) (ConT nm)
        | pn == ''Ptr, "Wl_" == take 3 (nameBase nm) ->
          let cN = mkName $ mkConName 3 "" nm
           in return (fromString (nameBase nm)) { fa_type = \_ -> ConT cN, fa_val_in = Just $ \n -> conP cN [varP n], fa_val_out = Just [|$(conE cN)|] }
        | pn == ''Ptr, "River_" == take 6 (nameBase nm) ->
          let cN = mkName $ mkConName 0 "_v1" nm
           in return (fromString (nameBase nm)) { fa_type = \_ -> ConT cN, fa_val_in = Just $ \n -> conP cN [varP n], fa_val_out = Just [|$(conE cN)|] }

      AppT (ConT nIO) (AppT (ConT nPtr) (ConT nm))
        | nIO == ''IO, nPtr == ''Ptr, "Wl_" == take 3 (nameBase nm) ->
          let cN = mkName $ mkConName 3 "" nm
           in return (fromString (nameBase nm)) { fa_type = \_ -> AppT (ConT nIO) (ConT cN), fa_val_out = Just [|return . $(conE cN)|] }
        | nIO == ''IO, nPtr == ''Ptr, "River_" == take 6 (nameBase nm) ->
          let cN = mkName $ mkConName 0 "_v1" nm
           in return (fromString (nameBase nm)) { fa_type = \_ -> AppT (ConT nIO) (ConT cN), fa_val_out = Just [|return . $(conE cN)|] }
      _ -> return $ fromString ""
  }

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

-- * Functions

mkWlObject :: ObjectCfg -> Q [Dec]
mkWlObject cfg = do
  a <- mkWlObjectType cfg
  b <- mkWlObjectMisc cfg
  return (a ++ b)

-- |
-- @
--   newtype FooBarXyz = FooBarXyz { unwrap :: Ptr Foo_bar_xyz }
-- @
mkWlObjectType :: ObjectCfg -> Q [Dec]
mkWlObjectType cfg = do
  let ntName = mkName $ objTypePrefix cfg
  join <$> sequence
    [ pure <$> newtypeD_doc (pure []) ntName [] Nothing
      (recC ntName [ varBangType (mkName "unwrap") (bangType (bang noSourceUnpackedness noSourceStrictness) [t|Ptr $(conT (objType cfg))|]) ], Nothing, [])
      [derivClause Nothing [ [t|Eq|]
                           , [t|Show|]
                           , [t|Ord|]
                           , [t|Storable|]
                           , [t|Generic|]
                           , [t|Hashable|]
                           , [t|NFData|]
                           , [t|IsUserData|] -- via NT (Ptr)
                           ]
      ]
                           -- XXX: [t|Data|]]] Data a => Data (Ptr a)
      (Just $ "See '" ++ nameBase (objType cfg) ++ "'")
    ]

-- |
-- Common operations ('IsWlObject'):
--
-- @
--   instance IsWlObject Foo ...
-- @
--
-- Destructor API:
-- @
--   instance HasDestructor Foo ...
-- @
--
-- Listener API:
--
-- @
--   instance AddListener Foo ...
--
--   type FooListener = PtrConst (ObjectListener Foo)
-- @
--
-- Interface and event:
--
-- @
--   fooInterface :: ConstPtr wl_interface
--   fooInterface = ...
--
--   data FoobarEvent = ...
--
--   mkFoobarListener :: (FoobarEvent -> IO ()) -> IO FoobarListener
--   mkFoobarListener h = FoobarListener <$> toFunPtr (\a b c -> h (FoobarEvent a b c)) -}
-- @
--
-- Functions:
--
-- @
--   fooThing1, fooThing2 :: Foo -> ...
-- @
mkWlObjectMisc :: ObjectCfg -> Q [Dec]
mkWlObjectMisc cfg = do
  let isWlObjDocS =
        """
        @
        version <- 'Wayland.Client.Internal.Types.getVersion' object
        'Wayland.Client.Internal.Types.setUserData' object (castPtr userData)
        userData <- fmap castPtr 'Wayland.Client.Internal.Types.getUserData' object
        @
        """
      destroyDocS =
        """
        @
        'Wayland.Client.Internal.Types.objectDestroy' object
        @
        """

  wloD <- join <$> sequence [ withDecsDoc isWlObjDocS [d|
    instance IsWlObject $(conT ntName) where
      getVersion  $(conP ntName [[p|x|]]) = $(varE $ getFn (objType cfg) "get_version") x
      getUserData $(conP ntName [[p|x|]]) = $(varE $ getFn (objType cfg) "get_user_data") x
      setUserData $(conP ntName [[p|x|]]) = $(varE $ getFn (objType cfg) "set_user_data") x
    |] | objIsWlObject cfg ]

  destroyD <- join <$> sequence [ withDecsDoc destroyDocS [d|
    instance HasDestructor $(conT ntName) where
      objectDestroy $(conP ntName [[p|x|]]) = $(varE (getFn (objType cfg) "destroy")) x
    |] | objHasDestructor cfg ]

  listenerD <- join <$> sequence [
    mkAddListenerInst (objType cfg) listener
      | Just listener <- [objListener cfg] ]

  ifDs <- case (objListener cfg, objInterface cfg) of
    (Just listener, Just iface) -> mkInterfaceNew cfg listener iface
    (Nothing, Just iface) -> mkInterfaceNew cfg (objType cfg) iface
    _ -> return []

  fnDs <- forM (objFunctions cfg) mkFn

  return $ wloD ++ destroyD ++ listenerD ++ ifDs ++ concat fnDs
  where
    ntName = mkName $ objTypePrefix cfg

    mkAddListenerInst :: Name -> Name -> Q [Dec]
    mkAddListenerInst objN listenerN = do
      let mk_clause = do
            pname <- newName "p"
            clause [conP ntName [varP pname]] (normalB (appE (varE (getFn objN "add_listener")) (varE pname))) []
      let docAddListenerS =
            """
            @
            listener <- 'mk""" ++ objTypePrefix cfg ++ """Listener'
            'Wayland.Client.Internal.Types.listenerAdd' object listener nullPtr
            @
            """
      sequence
        [ withDecDoc docAddListenerS $ instanceD
          (pure [])
          (appT (conT ''AddListener) (conT ntName))
          [ tySynInstD $ tySynEqn Nothing (appT (conT ''ObjectListener) (conT ntName)) (conT listenerN),
            funD 'objectListenerAdd [mk_clause]
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
                ++ [noBindS [|when ($(varE resN) == nullPtr) $ error    $ $(litE . StringL $ nameBase nm) ++ " returned NULL"|] | of_nullCheck]
                ++ [noBindS [|when ($(varE resN) == -1)      $ error    $ $(litE . StringL $ nameBase nm) ++ " returned -1"|] | of_throwIfMinus1, not of_getErrno]
                ++ [noBindS [|when ($(varE resN) == -1)      $ throwErrno $(litE $ StringL $ nameBase nm)|] | of_throwIfMinus1, of_getErrno]
                ++ [noBindS $ appE res_trans (varE resN)]
          docStr =
            unlines $
                [ "Argument " ++ show i ++ ": " ++ fromMaybe "_" (fa_doc oa) ++ "\n" | (i, oa) <- zip [(1::Int)..] of_args ]
                ++ ["See: '" ++ nameBase f_name ++ "'"]
                ++ ["\nThrows an exception on -1 return value." | of_throwIfMinus1]
                ++ ["\nThrows an exception on null return value." | of_nullCheck]
      sequence
        [ funD_doc nm [clause c_pat c_body []] (Just docStr) ([fa_doc x | x <- of_args]),
          sigD nm (return $ mapTypeArgs of_args $ typeTrans f_type)
        ]

    typeTrans =
      mapType (AppT (ConT ''Ptr) (ConT (objType cfg))) (ConT ntName)
        . mapType (AppT (ConT ''PtrConst) (ConT ''CChar)) (AppT (ConT ''Maybe) (ConT ''String))

-- | New "foobar :: ConstPtr Wl_interface" with "{-# NOINLINE foobar #-}"
mkInterfaceNew :: ObjectCfg -> Name -> Name -> Q [Dec]
mkInterfaceNew cfg@ObjectCfg {..} listenerValName ifaceVN = do
  let ifaceVN' = mkName $ objFunctionPrefix ++ "Interface" -- nameBase ifaceVN -- const pointer
      ifaceT = reifyType ifaceVN
  lev <- mkListenerEventNew cfg listenerValName
  sequence $
    [ sigD ifaceVN' $ appT [t|ConstPtr|] ifaceT,
      pragInlD ifaceVN' NoInline FunLike AllPhases,
      valD (varP ifaceVN') (normalB $ appE [|unsafePerformIO . toConstPtr|] (varE ifaceVN)) []
    ] ++ map pure lev

-- |
-- @
--   data FoobarEvent = ...
--
--   mkFoobarListener :: (FoobarEvent -> IO ()) -> IO FoobarListener
--   mkFoobarListener h = FoobarListener <$> toFunPtr (\a b c -> h (FoobarEvent a b c)) -}
-- @
mkListenerEventNew :: ObjectCfg -> Name -> Q [Dec]
mkListenerEventNew ObjectCfg {..} listenerTypeName = do
  res <- reify listenerTypeName
  go res
  where
    go (TyConI (DataD _ listenerName _ _ [RecC recName recs] _)) = do
      let listenerName' = objTypePrefix ++ "Listener"
          objectName = objTypePrefix
          evName = mkName $ objectName ++ "Event"
      sequence
        [ dataD (pure []) evName [] Nothing (map mkEvCon recs)
            [derivClause Nothing [conT ''Eq, conT ''Show, conT ''Generic]]

        , sigD (mkName $ "mk" ++ listenerName') [t|($(conT evName) -> IO ()) -> IO (PtrConst $(conT listenerName))|]
        , funD_doc
            (mkName $ "mk" ++ listenerName')
            [mkListenerFun (mkName objectName) recs]
            (Just "This should be destroyed using destroyListener when no longer needed.")
            []
        , instanceD
            (pure [])
            (appT (conT ''ListenerEvent) (conT evName))
            [ tySynInstD $ tySynEqn Nothing (appT (conT ''Listener) (conT evName)) (conT listenerName),
              funD 'freeListener [mkFreeListener recName recs]
            ]
        ]
      where
        mkFreeListener conName recs' = do
          funNames <- forM recs' $ \_ -> newName "fun"
          clause
            [wildP, conP conName [varP nm | nm <- funNames]]
            (normalB $ doE [noBindS [|freeHaskellFunPtr $(varE nm)|] | nm <- funNames])
            []

        fieldName eN i fT
          | Just nm <- objEventFieldNamesCommon L.!? i = return $ mkName nm
          | Just xs <- L.lookup (nameBase eN) objEventFieldNames, Just nm <- xs L.!? (i - length objEventFieldNamesCommon) = return $ mkName nm
          | otherwise = do
            oType <- [t|Ptr $(conT objType)|]
            if fT == oType
               then return $ mkName $ lowerFirst objTypePrefix
               else case fT of
                      ConT nm
                        | nm `elem` [''Word32,''Int32,''Void] -> return $ mkName $ "_" ++ nameBase nm ++ "_" ++ show i
                        | otherwise -> return $ mkName $ lowerFirst $ nameBase nm
                      AppT (ConT nm) (ConT nm')
                        | nm == ''PtrConst, nm' == ''CChar -> return $ mkName $ "string_" ++ show i
                        | otherwise -> return $ mkName $ "_" ++ lowerFirst (dropPrefix "Wl_" $ nameBase nm')
                      _ -> return $ mkName $ "_" ++ nameBase eN ++ "_" ++ show i

        mkEvCon :: (Name, Bang, Type) -> Q Con
        mkEvCon (evName, _bang, evType) = do
          let prefix = mkName objTypePrefix
          let evConN = mkName $ nameBase prefix ++ upperFirst (fromSnailCase $ nameBase evName)
          fields' <- forM (zip [(0::Int)..] $ getFields evType) $ \(idx, fT) -> do
            fa <- if | Just doA <- objAutoMarshall -> doA 1 fT
                     -- | Just userA <- of_arguments L.!? idx -> return userA
                     | otherwise -> return $ fromString ""
            fN <- fieldName evName idx (fa_type fa fT)
            return (fT, fa, fN)
          let fields = snd $ foldl (\(used, res) x@(fT,fa,fN) ->
                if fN `elem` used
                   then (mkName (nameBase fN ++ "_2") : used, res ++ [(fT,fa,mkName $ nameBase fN ++ "_2")])
                   else (fN : used, res ++ [x])
                ) ([],[]) fields'
          recC evConN [varBangType fN (bangType (bang noSourceUnpackedness sourceStrict) (pure $ typeTrans $ fa_type fa fT)) | (fT, fa, fN) <- fields]

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
        typeTrans =
          mapType (AppT (ConT ''Ptr) (ConT objType)) (ConT (mkName objTypePrefix))
            . mapType (AppT (ConT ''PtrConst) (ConT ''CChar)) (ConT ''String)
    go _ = return []

-- | The generator hides the ConstPtr values... But we can re-create them here.
toConstPtr :: (Storable a) => a -> IO (ConstPtr a)
toConstPtr x = malloc >>= \ptr -> poke ptr x >> pure (ConstPtr ptr)

-- * Type utils

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

getFields :: Type -> [Type]
getFields (AppT ArrowT x) = [x]
getFields (AppT x y) = getFields x ++ getFields y
getFields _ = []

-- * Text utils

fromSnailCase :: String -> String
fromSnailCase = go
  where
    go ('_' : x : xs) = toUpper x : go xs
    go (x : xs) = x : go xs
    go [] = []

dropSuffix, dropPrefix :: String -> String -> String
dropPrefix pre xs = if take (length pre) xs == pre then drop (length pre) xs else xs
dropSuffix suf xs = reverse $ dropPrefix (reverse suf) (reverse xs)

upperFirst, lowerFirst :: String -> String
upperFirst (x : xs) = toUpper x : xs
upperFirst [] = []

lowerFirst (x : xs) = toLower x : xs
lowerFirst [] = []

mkConName :: Int -> String -> Name -> String
mkConName i suf t = upperFirst $ fromSnailCase $ drop i $ dropSuffix suf $ nameBase t
