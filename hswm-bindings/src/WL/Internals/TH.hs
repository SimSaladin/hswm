{-# LANGUAGE MultiWayIf            #-}
{-# LANGUAGE MultilineStrings      #-}
{-# LANGUAGE NoTemplateHaskell     #-}
{-# LANGUAGE OverloadedRecordDot   #-}
{-# LANGUAGE QuasiQuotes           #-}
{-# LANGUAGE RecordWildCards       #-}
{-# LANGUAGE TemplateHaskellQuotes #-}
{-# OPTIONS_GHC -Wno-typed-holes #-}

module WL.Internals.TH
  -- * Protocol XML
  ( clientFromProtocolXML
  , clientFromProtocolXML'
  , commonSettings
  , ProtocolRenderSettings(..)
  , defaultEventArgTypeTrans
  , defaultEventArgTrans
  , defaultRequestArgTypeTrans
  , RequestSettings(..)
  , Protocol(..)
  , Interface(..)
  , IRequest(..)
  , IEvent(..)
  , Arg(..)
  , ArgType(..)

  -- * NewType only
  , renderNewType

  -- * Re-export
  , Default(..)
  , nullPtr
  , mkName
  , conT
  ) where

import           Distribution.Wayland.ProtocolXML
import           WL.Internals.Types

import           HsBindgen.Runtime.PtrConst

import           Control.Arrow
import           Control.Arrow ()
import           Control.DeepSeq (NFData)
import           Control.Monad
import           Control.Monad.IO.Class
import           Data.Char (toUpper)
import           Data.Default
import           Data.Hashable (Hashable)
import qualified Data.List as L
import           Data.Maybe
import           Data.Void
import           Foreign
import           Foreign.C
import           Foreign.C.ConstPtr
import           GHC.Generics (Generic)
import           GHC.Records (getField)
import           Language.Haskell.TH
import           Language.Haskell.TH.Syntax
import           Prelude hiding (head)
import           System.IO.Unsafe (unsafePerformIO)

data ProtocolRenderSettings = ProtocolRenderSettings
  { prValueNameModifier :: String -> String
  , prTypeNameModifier  :: String -> String
  , prInterfaceName     :: ProtocolRenderSettings -> String -> String
  , prRequestOptions    :: [(String, String, RequestSettings)]
  , prEnumModule        :: Maybe String -> String -> String

  , prInterfaceEventName :: ProtocolRenderSettings -> String -> String
  -- ^ Interface name -> Event name

  , prEventDerive :: Interface -> [Q DerivClause]
  -- ^ Derived instances for event types

  , prEventArgTypeTrans :: ProtocolRenderSettings -> Interface -> IEvent -> Arg -> Type -> Q Type
  -- ^ Transform the type of event arguments.

  , prEventArgTrans :: ProtocolRenderSettings -> Interface -> IEvent -> Arg -> Type -> Q Exp -> Q Exp

  , prRequestArgTypeTrans :: ProtocolRenderSettings -> Interface -> IRequest -> Arg -> Type -> Q Type
  -- ^ Transform the type of request arguments.
  }

data RequestSettings = RequestSettings
  { reqErrnoIfError  :: Bool
  , reqCheckNull     :: Bool
  , reqCheckMinusOne :: Bool
  , reqDisable       :: Bool
  }

instance Default ProtocolRenderSettings where
  def = ProtocolRenderSettings
    { prValueNameModifier = fromSnailCase
    , prTypeNameModifier  = upperFirst . fromSnailCase
    , prInterfaceName     = \s -> s.prValueNameModifier . (++ "_interface") . s.prValueNameModifier
    , prRequestOptions    = []
    , prEnumModule        = \iface _name -> ""
    , prInterfaceEventName    = \s ifn -> s.prTypeNameModifier ifn ++ "Event"
    , prEventDerive       = \_ -> [derivClause Nothing [conT ''Eq, conT ''Show, conT ''Generic]]
    , prEventArgTypeTrans = defaultEventArgTypeTrans
    , prRequestArgTypeTrans = defaultRequestArgTypeTrans
    , prEventArgTrans = defaultEventArgTrans -- s iface ev arg t name
    }

defaultEventArgTypeTrans :: ProtocolRenderSettings -> Interface -> IEvent -> Arg -> Type -> Q Type
defaultEventArgTypeTrans s iface _ arg t
  | AppT (ConT cN) (ConT tN) <- t, cN == ''Ptr, nameBase tN == upperFirst iface.name
  = conT $ mkName $ s.prTypeNameModifier iface.name

  | AppT (ConT cN) (ConT tN) <- t, cN == ''Ptr, tN /= ''Void
  = conT =<< lookupImportedTypeName' mkName (s.prTypeNameModifier $ nameBase tN)

  | AppT (ConT cN) (ConT tN) <- t, cN == ''PtrConst, tN == ''CChar
  = conT ''String

  | AEnum enum miface@Nothing <- arg.argType
  = conT =<< lookupImportedTypeName' mkName (s.prEnumModule miface enum ++ s.prTypeNameModifier (s.prTypeNameModifier iface.name ++ "_" ++ enum))
  | AEnum enum miface@(Just obj) <- arg.argType
  = conT =<< lookupImportedTypeName' mkName (s.prEnumModule miface enum ++ s.prTypeNameModifier (s.prTypeNameModifier obj ++ "_" ++ enum))

  | otherwise = pure t

defaultRequestArgTypeTrans :: ProtocolRenderSettings -> Interface -> IRequest -> Arg -> Type -> Q Type
defaultRequestArgTypeTrans s iface _ arg t
  | AppT (ConT cN) (ConT tN) <- t, cN == ''Ptr, nameBase tN == upperFirst iface.name
  = conT $ mkName $ s.prTypeNameModifier iface.name

  | AppT (ConT cN) (ConT tN) <- t, cN == ''Ptr, tN /= ''Void, tN /= ''Word32
  = conT =<< lookupImportedTypeName' mkName (getModule tN ++ s.prTypeNameModifier (nameBase tN))

  | AppT (ConT cN) (ConT tN) <- t, cN == ''PtrConst, tN == ''CChar
  = [t|Maybe String|]

  | AEnum enum miface@Nothing <- arg.argType
  = conT =<< lookupImportedTypeName' mkName (s.prEnumModule miface enum ++ s.prTypeNameModifier (s.prTypeNameModifier iface.name ++ "_" ++ enum))
  | AEnum enum miface@(Just obj) <- arg.argType
  = conT =<< lookupImportedTypeName' mkName (s.prEnumModule miface enum ++ s.prTypeNameModifier (s.prTypeNameModifier obj ++ "_" ++ enum))

  | otherwise = pure t

defaultEventArgTrans :: ProtocolRenderSettings -> Interface -> IEvent -> Arg -> Type -> Q Exp -> Q Exp
defaultEventArgTrans s iface _ev arg t x
  | ASelf <- arg.argType
  = [|return $! $(conE (mkName $ s.prTypeNameModifier iface.name)) $(x)|]

  -- Some "Ptr a" (except "Ptr Void")
  | AppT (ConT cN) (ConT tN) <- t, cN == ''Ptr, tN /= ''Void
  = [|return $! $(conE =<< lookupImportedValueName' mkName (s.prTypeNameModifier $ nameBase tN)) $(x)|]

  | AppT (ConT cN) (ConT tN) <- t, cN == ''PtrConst, tN == ''CChar
  = [|let p = unConstPtr $(x) in if p == nullPtr then return "" else peekCString p|]

  | AEnum enum miface <- arg.argType
  = let nm = upperFirst $ case miface of
               Just obj -> obj
               Nothing -> iface.name

     in [|return $! $(conE =<< lookupImportedValueName' mkName (s.prEnumModule miface enum ++ nm ++ "_" ++ enum)) (fromIntegral $(x))|]

  | otherwise = [|return $(x)|]

instance Default RequestSettings where
  def = RequestSettings False False False False

commonSettings :: ProtocolRenderSettings
commonSettings = res
    where
      res = doDropSuffix "_v1" . doDropSuffix "_v2" . doDropSuffix "_v3"
        $ doDropPre "Wl_" "wl_"
        $ doDropPre "Wp_" "wp_"
        $ doDropPre "Zwp_"   "zwp_"
        -- $ doDropPre "Zxdg_"  "zxdg_"
        -- $ doDropPre "Xdg_"   "xdg_" -- conflicts with dropping Wl_
        -- $ doDropPre "Zwlr_"  "zwlr_"
        -- $ doDropPre "Ext_"   "ext_"
        $ ini

      ini = def
        { prTypeNameModifier  = upperFirst . fromSnailCase
        , prValueNameModifier = fromSnailCase }

      doDropPre ty pre = doBefore (dropPrefix ty . dropPrefix pre) (dropPrefix pre)
      doDropSuffix suf = doBefore (dropSuffix suf) (dropSuffix suf)

      doBefore f g s = s
        { prTypeNameModifier = s.prTypeNameModifier . f
        , prValueNameModifier = s.prValueNameModifier . g
        }

-- * Protocol XML

clientFromProtocolXML :: ProtocolRenderSettings -> FilePath ->  Q [Dec]
clientFromProtocolXML settings filepath = do
  pkgRoot <- getPackageRoot
  proto <- runIO $ protocolFromFile (pkgRoot ++ "/protocol/" ++ filepath)
  clientFromProtocol settings proto

clientFromProtocolXML' :: ProtocolRenderSettings -> String ->  Q [Dec]
clientFromProtocolXML' settings content =
  clientFromProtocol settings $ protocolFromString content

clientFromProtocol :: ProtocolRenderSettings -> Protocol -> Q [Dec]
clientFromProtocol settings proto = do
  Module _ (ModName this) <- thisModule
  case this of
    _ | "Server" `L.isSuffixOf` this -> do
          liftIO $ putStrLn $ "Warning: server-side generation not done yet"
          return []
      | otherwise -> doClient settings proto

doClient :: ProtocolRenderSettings -> Protocol -> Q [Dec]
doClient settings proto = do
  addModFinalizer $ putDoc ModuleDoc $ unlines
    [ "Description: " ++ proto.description.summary
    , "Stability: unstable"
    , "Portability: unportable"
    , ""
    , "__Protocol:__ @" ++ proto.name ++ "@\n"
    , formatDescription proto.description ++ "\n"
    , unlines [ ifaceDoc settings iface | iface <- proto.interfaces ]
    , ""
    , "__Protocol copyright:__ " ++ proto.copyright
    ]
  concat <$> forM proto.interfaces (renderInterface settings)
    where

    ifaceDoc ProtocolRenderSettings{..} iface = unlines
      [ "__Interface__: '" ++ prTypeNameModifier iface.name ++ "' (@" ++ iface.name ++ "@)\n"
      , "* Requests\n"
      , unlines [ "    * '" ++ prValueNameModifier (prValueNameModifier iface.name ++ "_" ++ x.name) ++ "'\n" | x <- iface.requests, x.name /= "destroy" ]
      , "* Events\n"
      , unlines [ "    * v'" ++ prTypeNameModifier (prTypeNameModifier iface.name ++ "_" ++ x.name) ++ "'\n" | x <- iface.events ]
      , "* Enums\n"
      , unlines [ "    * t'" ++ prTypeNameModifier (prTypeNameModifier iface.name ++ "_" ++ x.name) ++ "'\n" | x <- iface.enums ]
      ]

renderNewType :: String -> Name -> String -> Q [Dec]
renderNewType objN objT doc = do
  let ntName = mkName objN
  let con = recC ntName [ varBangType (mkName "unwrap") (bangType (bang noSourceUnpackedness noSourceStrictness) [t|Ptr $(conT objT)|]) ]
  let derivs = [ derivClause (Just StockStrategy)   [ [t|Eq|], [t|Ord|], [t|Generic|] ]
               , derivClause (Just NewtypeStrategy) [ [t|Storable|], [t|Hashable|], [t|NFData|], [t|IsUserData|] ]
               ]
  concat <$> sequence
    [ sequence [ newtypeD_doc (pure []) ntName [] Nothing (con, Nothing, []) derivs (if doc == "" then Nothing else Just doc) ]
    , [d|
      instance Show $(conT ntName) where
        show = show . ptrToWordPtr . getField @"unwrap"
      instance Read $(conT ntName) where
        readsPrec n xs = first ($(conE ntName) . wordPtrToPtr) <$> readsPrec n xs
      |]
    ]

renderInterface :: ProtocolRenderSettings -> Interface -> Q [Dec]
renderInterface s iface = concat <$> sequence
  [ renderInterfaceValue s iface
  , renderInterfaceObject s iface
  , concat <$> mapM (renderEnum s iface) iface.enums
  , concat <$> mapM (renderRequest s iface) iface.requests
  , renderListenerEvents s iface
  ]

renderInterfaceValue :: ProtocolRenderSettings -> Interface -> Q [Dec]
renderInterfaceValue s iface = do
  let name = mkName $ s.prInterfaceName s iface.name
      ifN = mkName $ iface.name <> "_interface"
      ifT = reifyType ifN
      doc = Just $ unlines
       [ "Interface: @" ++ iface.name ++ "@, version: " ++ show iface.version ++ "\n"
       , formatDescription iface.description ]
  sequence
    [ sigD name [t|ConstPtr $ifT|]
    , funD_doc name [clause [] (normalB [|unsafePerformIO $ ConstPtr <$> new $(varE ifN)|]) []] doc []
    , pragInlD name NoInline FunLike AllPhases
    ]

renderEnum :: ProtocolRenderSettings -> Interface -> IEnum -> Q [Dec]
renderEnum s iface e = do
  let enumN = mkName $ s.prTypeNameModifier $ s.prTypeNameModifier iface.name ++ "_" ++ e.name
      enumT = mkName $ upperFirst iface.name ++ "_" ++ e.name
  doc <- fmap (fromMaybe "") $ getDoc $ DeclDoc enumT
  x <- withDecDoc doc $ tySynD enumN [] (conT enumT)
  xs <- concat <$> mapM (renderEntry enumN) e.entries
  return (x : xs)
  where
    renderEntry eT en = do
      let entryName = mkName $ fromSnailCase $ s.prValueNameModifier iface.name ++ "_" ++ e.name ++ "_" ++ en.name
          doc = escapeString en.summary ++ "\n\nValue: " ++ show en.value
      sequence
        [ sigD entryName (conT eT)
        , funD_doc entryName [clause [] (normalB [|toCEnum $(litE $ integerL $ fromIntegral en.value)|]) []] (Just doc) []
        ]

-- |
-- @
-- newtype IF = IF { unwrap :: Ptr IF }
--
-- instance IsWlObject IF
--
-- instance HasDestructor IF
--
-- instance HasInterface IF
-- @
renderInterfaceObject :: ProtocolRenderSettings -> Interface -> Q [Dec]
renderInterfaceObject s iface = concat <$> sequence [ renderNT, renderIsWlObject, renderDestroy, renderHasIF ]
  where
    ntName = mkName $ prTypeNameModifier s iface.name
    getFn fn = lookupImportedValueName (iface.name ++ "_" ++ fn)

    renderNT = renderNewType (s.prTypeNameModifier iface.name) (mkName $ upperFirst iface.name) $ unlines
        [ formatDescription iface.description
        , "\nEnums: "    ++ unwords [ e.name | e <- iface.enums ]
        , "\nRequests: " ++ unwords [ r.name | r <- iface.requests ]
        , "\nEvents: "   ++ unwords [ e.name | e <- iface.events ]
        ]

    renderIsWlObject = [d|
      instance IsWlObject $(conT ntName) where
        toProxy     $(conP ntName [[p|x|]]) = castPtr x
        getVersion  $(conP ntName [[p|x|]]) = $(varE =<< getFn "get_version") x
        getUserData $(conP ntName [[p|x|]]) = $(varE =<< getFn "get_user_data") x
        setUserData $(conP ntName [[p|x|]]) = $(varE =<< getFn "set_user_data") x
      |]

    hasDestroy = any (\x -> requestType x == Just "destructor") iface.requests

    renderDestroy
      | not hasDestroy = pure []
      | otherwise = withDecsDoc doc [d|
          instance HasDestructor $(conT ntName) where
            objectDestroy $(conP ntName [[p|x|]]) = $(varE =<< getFn "destroy") x
          |]
            where
              doc = unlines
                [ formatDescription r.description
                  | r <- iface.requests, requestType r == Just "destructor"
                ]

    renderHasIF = withDecsDoc doc [d|
      instance HasInterface $(conT ntName) where
        objectInterface        _ = $(varE $ mkName $ s.prInterfaceName s iface.name)
        objectInterfaceName    _ = $(litE $ stringL iface.name)
        objectInterfaceVersion _ = $(litE $ integerL $ fromIntegral iface.version)
        objectBindWrap           = $(conE $ mkName $ prTypeNameModifier s iface.name) . castPtr
      |]
      where doc = "@" ++ show (iface.name, iface.version) ++ "@"

argIsNewId :: Arg -> Bool
argIsNewId Arg{argType=t}
  | ANewId{} <- t = True
  | otherwise = False

lookupImportedValueName :: String -> Q Name
lookupImportedValueName = lookupImportedValueName' $ \s -> error $ "Value not found: " ++ s

lookupImportedValueName' :: (String -> Name) -> String -> Q Name
lookupImportedValueName' onerr str = do
  ModuleInfo imports <- reifyModule =<< thisModule
  let alts = str : [ nm ++ "." ++ str | nm <- [ "Safe", "Unsafe" ] ++ [ nm | Module _ (ModName nm) <- imports ] ]
      find (x : xs) = lookupValueName x >>= maybe (find xs) pure
      find       [] = return $ onerr str
   in find alts

lookupImportedTypeName :: String -> Q Name
lookupImportedTypeName = lookupImportedTypeName' $ \str -> error $ "Type not found: " ++ str

lookupImportedTypeName' :: (String -> Name) -> String -> Q Name
lookupImportedTypeName' onerr str = do
  ModuleInfo imports <- reifyModule =<< thisModule
  let alts = str : [ nm ++ "." ++ str | nm <- [ "Safe", "Unsafe" ] ++ [ nm | Module _ (ModName nm) <- imports ] ]
      find (x : xs) = lookupTypeName x >>= maybe (find xs) pure
      find       [] = return $ onerr str
   in find alts

renderRequest :: ProtocolRenderSettings -> Interface -> IRequest -> Q [Dec]
renderRequest _ _ r | requestType r == Just "destructor" = pure []
renderRequest s iface request  = do

  let reqN = mkName $ prValueNameModifier s $ prValueNameModifier s iface.name ++ "_" ++ request.name
      funName = iface.name ++ "_" ++ request.name

  f_name <- lookupImportedValueName funName
  VarI _ f_type _ <- reify f_name

  let (argsT, resT) = (init &&& last) $ getArrowArgs f_type
      rargs'        = filter (not . argIsNewId) request.args
      rargs         = [ argSelf | AppT (ConT _cN) (ConT tN) : _ <- [ argsT ]
                                , nameBase tN == upperFirst iface.name ]
                                ++ rargs' ++ repeat argUnknown
      argRes        = fromMaybe argUnset $ L.find argIsNewId request.args

      doc = unlines $ [ formatDescription request.description ]
        ++ [ "\nArgs: " ++ L.intercalate ", " [ argDoc a | a <- request.args ] ++ "\n" | not $ null request.args ]
        ++ [ "\nThrows if NULL." | reqCheckNull reqOpts]
        ++ [ "\nThrows if -1."   | reqCheckMinusOne reqOpts]

  namesP <- mapM (\_ -> newName "a") argsT

  let c_pat = map varP namesP
      body = normalB $ do
        resN <- newName "res"
        namesR <- mapM (\_ -> newName "r") namesP
        doE $
          [ bindS (varP rN) (argTransform arg argT pN) | (pN, rN, (argT, arg)) <- zip3 namesP namesR (zip argsT rargs) ] -- args
            ++ [bindS (varP resN) $ appE (varE 'liftIO) $ appsE [varE n | n <- f_name : namesR] ]
            ++ [noBindS finalizer | (rN, argT) <- zip namesR argsT, Just finalizer <- [argFinalizer argT rN] ]
            ++ [noBindS [|when ($(varE resN) == nullPtr) $ liftIO $ error    $ $(litE . StringL $ nameBase f_name) ++ " returned NULL"|] | reqCheckNull reqOpts, not (reqErrnoIfError reqOpts)]
            ++ [noBindS [|when ($(varE resN) == nullPtr) $ liftIO $ throwErrno $(litE . StringL $ nameBase f_name)|] | reqCheckNull reqOpts, reqErrnoIfError reqOpts]
            ++ [noBindS [|when ($(varE resN) == -1)      $ liftIO $ error    $ $(litE . StringL $ nameBase f_name) ++ " returned -1"|] | reqCheckMinusOne reqOpts, not (reqErrnoIfError reqOpts)]
            ++ [noBindS [|when ($(varE resN) == -1)      $ liftIO $ throwErrno $(litE . StringL $ nameBase f_name)|] | reqCheckMinusOne reqOpts, reqErrnoIfError reqOpts]
            ++ [noBindS $ resTransform resT resN ]
  if reqDisable reqOpts then return [] else
    sequence
      [ sigD reqN (toTypeTop (zip argsT rargs) (resT, argRes))
      , funD_doc reqN [clause c_pat body []] (Just doc) []
      , pragInlD reqN Inline FunLike AllPhases
      ]
  where
    argSelf    = Arg "self" "" AEmpty Nothing
    argUnknown = Arg "unknown" "" AEmpty Nothing
    argUnset   = Arg "" "" AEmpty Nothing

    reqOpts = maybe def (\(_,_,x) -> x) $ L.find (\(ifN, rN, _) -> ifN == iface.name && rN == request.name) (prRequestOptions s)

    toTypeTop args res = [t|forall m. MonadIO m => $(toType args)|]
      where
        toType ((x, arg) : xs) = appT (appT arrowT (argTypeTransform arg x)) (toType xs)
        toType []              = toTypeRes res

        toTypeRes (AppT (ConT cN) t, arg)
          | cN == ''IO         = appT (varT (mkName "m")) (argTypeTransform arg t)
        toTypeRes (x, _)       = error $ "toType: unexpected return type: " ++ pprint x

    argTypeTransform = s.prRequestArgTypeTrans s iface request

    argTransform arg t name
      | arg == argSelf
      = do
        x <- newName "x"
        letE [ valD (conP (mkName $ s.prTypeNameModifier iface.name) [varP x]) (normalB (varE name)) [] ]
          $ appE (varE 'return) $ varE x

      | AppT (ConT cN) (ConT tN) <- t, cN == ''Ptr, tN /= ''Void, tN /= ''Word32
      = do
        x <- newName "x"
        letE [ valD (conP' (getModule tN ++ prTypeNameModifier s (nameBase tN)) [varP x]) (normalB (varE name)) []]
          $ appE (varE 'return) $ varE x

      | AEnum enum Nothing <- arg.argType
      = do
        x <- newName "x"
        letE [ valD (conP' (upperFirst iface.name ++ "_" ++ enum) [varP x]) (normalB (varE name)) [] ]
          $ appE (varE 'return) $ appE (varE 'fromIntegral) $ varE x

      | AEnum enum miface@(Just obj) <- arg.argType
      = do
        x <- newName "x"
        letE [ valD (conP' (s.prEnumModule miface enum ++ upperFirst obj ++ "_" ++ enum) [varP x]) (normalB (varE name)) [] ]
          $ appE (varE 'return) $ appE (varE 'fromIntegral) $ varE x

      | AppT (ConT cN) (ConT tN) <- t, cN == ''PtrConst, tN == ''CChar
      = [|ConstPtr <$> maybe (pure nullPtr) (liftIO . newCString) $(varE name)|] -- note: cleanup in argFinalizer

      | otherwise = [|return $(varE name)|]

    argFinalizer t name
      | AppT (ConT cN) (ConT tN) <- t, cN == ''PtrConst, tN == ''CChar
      = Just [|when (unConstPtr $(varE name) /= nullPtr) $ liftIO . free $ unConstPtr $(varE name)|]
      | otherwise = Nothing

    resTransform (AppT (ConT _IO) (AppT (ConT _Ptr) (ConT obj))) name
      | obj /= ''Void
      = [|return $! $(conE' $ s.prTypeNameModifier $ nameBase obj) $(varE name)|]

    resTransform _ name = [|return $(varE name)|]

    conP' str args = flip conP args =<< lookupImportedValueName' mkName str
    conE' str = conE =<< lookupImportedValueName' mkName str

getModule :: Name -> String
getModule name = case (nameModule name, nameBase name) of
              -- Just m' -> dropSuffix ".Generated" m' ++ "."
              -- (Just _, "Wl_surface") -> "WL.Core.Client." -- XXX: client only
              -- (Just _, "Wl_output") -> "WL.Core.Client."
              _ -> ""

argDoc :: Arg -> String
argDoc a = "@" ++ show a.argType ++ "@: " ++ escapeString a.summary ++ docNullable a.nullable
  where
    docNullable (Just True)  = " __(nullable)__"
    docNullable (Just False) = " __(not nullable)__"
    docNullable Nothing      = ""

-- |
-- @
-- data FoobarEvent = ...
--
-- mkFoobarListener :: (FoobarEvent -> IO ()) -> m FoobarListener
--
-- instance HasListener Foobar
--
-- type FoobarListener = ...
--
-- @
renderListenerEvents :: ProtocolRenderSettings -> Interface -> Q [Dec]
renderListenerEvents _ iface | null iface.events = pure []
renderListenerEvents s iface = concat <$> sequence [ mkEvent s iface, mkMkListener, mkHasListenerInst ]
  where
    objN         = s.prTypeNameModifier iface.name
    listenerN    = lookupImportedTypeName $ upperFirst iface.name ++ "_listener"
    addListenerN = lookupImportedValueName $ iface.name ++ "_add_listener"

    objT           = conT (mkName objN)
    eventN         = mkName $ s.prInterfaceEventName s iface.name
    mkListenerName = mkName $ "mk" ++ objN ++ "Listener"

    mkMkListener :: Q [Dec]
    mkMkListener = do
      (_, TyConI (DataD _ _ _ _ [RecC recName recs] _)) <- interfaceListener iface
      sequence
        [ sigD     mkListenerName [t|forall m. MonadIO m => ($(conT eventN) -> IO ()) -> m ($(conT (mkName $ objN ++ "Listener")))|]
        , funD_doc mkListenerName [mkListenerFun recName recs] (Just "This should be destroyed using destroyListener when no longer needed.") []
        ]

    mkHasListenerInst :: Q [Dec]
    mkHasListenerInst = do
      let doc =
            """
            @
            listener <- 'Wayland.createListener' $ \\case ...
            'Wayland.listenerAdd' object listener ()
            @
            """
      let listenerAddC = do
            pname <- newName "p"
            clause [conP (mkName objN) [varP pname]] (normalB $ appE (varE =<< addListenerN) (varE pname)) []
      sequence
        [ withDecDoc doc $ instanceD (pure []) [t|HasListener $(objT)|]
          [ tySynInstD $ tySynEqn Nothing [t|ObjectListener      $(objT)|] (conT =<< listenerN)
          , tySynInstD $ tySynEqn Nothing [t|ObjectListenerEvent $(objT)|] (conT eventN)
          , funD 'createListener [clause [] (normalB $ varE mkListenerName) []]
          , funD 'objectListenerAdd [listenerAddC]
          , funD 'freeListener [mkFreeListener] ]
        , tySynD (mkName $ objN ++ "Listener") [] [t|ConstPtr (ObjectListener $(objT))|] ]

    evParams nm      = argUserdata : argSelf : (eventFromName nm).args
    eventFromName nm = head [ e | e <- iface.events, e.name == dropSuffix "'" nm ]
    argSelf          = Arg (prValueNameModifier s iface.name) "" ASelf Nothing
    argUserdata      = Arg "userdata" "" AEmpty Nothing

    mkFreeListener :: Q Clause
    mkFreeListener = do
      (_, TyConI (DataD _ _ _ _ [RecC conName recs] _)) <- interfaceListener iface
      ptr <- newName "p"
      fps <- forM recs $ \_ -> newName "fp"
      let pat  = conP conName (map varP fps)
      let body = normalB $ doE $
            [ bindS pat [| Foreign.peek (unConstPtr $(varE ptr)) |] ] ++
            [ noBindS   [| freeHaskellFunPtr $(varE nm)    |] | nm <- fps ] ++
            [ noBindS   [| free $ unConstPtr $(varE ptr) |] ]
      clause [wildP, varP ptr] body []

    mkListenerFun :: Name -> [VarBangType] -> Q Clause
    mkListenerFun recN recs = do
      handle   <- newName "handle"
      listener <- newName "listener"
      fpNames  <- forM recs $ \_ -> newName "fp"

      let mkExp (evN, _, evType) = do
            let fields  = getFields evType
                ev      = eventFromName (nameBase evN)
                params  = evParams $ nameBase evN
                conName = mkName $ objN ++ upperFirst (fromSnailCase $ nameBase evN)
            patNs <- forM fields $ \_ -> newName "a"
            argNs <- forM fields $ \_ -> newName "b"
            appE (varE 'toFunPtr) $ lamE (map varP patNs) $ doE $
                  [ bindS (varP aN) (argTransform ev arg pT pN)
                    | ((pN, aN), arg, pT) <- zip3 (zip patNs argNs) params fields ]
                  ++ [ noBindS $ varE handle `appE` appsE (conE conName : map varE argNs) ]

      let fpExps = map mkExp recs

      let body = normalB . appE (varE 'liftIO) . doE $
            [ bindS   (varP nm) rhs | (nm, rhs) <- zip fpNames fpExps] ++
            [ bindS   (varP listener) [|return $(appsE $ conE recN : map varE fpNames)|]
            , noBindS (toPtr listener) ]

      clause [varP handle] body []

    argTransform ev arg t name = s.prEventArgTrans s iface ev arg t (varE name)

mkEvent :: ProtocolRenderSettings -> Interface -> Q [Dec]
mkEvent s iface = do
  (_, TyConI (DataD _ _ _ _ [RecC _ recs] _)) <- interfaceListener iface
  cons <- mapM mkEvCon recs
  sequence [ dataD_doc (pure []) eventN [] Nothing cons (s.prEventDerive iface) (Just "") ]

  where
    eventN = mkName $ s.prInterfaceEventName s iface.name
    objN   = s.prTypeNameModifier iface.name

    argSelf      = Arg (prValueNameModifier s iface.name) "" ASelf Nothing
    argUserdata  = Arg "userdata" "" AEmpty Nothing
    evParams ev  = argUserdata : argSelf : [ arg | e <- iface.events, e.name == dropSuffix "'" ev, arg <- e.args ]
    argTypeTrans = s.prEventArgTypeTrans s iface

    mkEvCon :: (Name, Bang, Type) -> Q (Q Con, Maybe String, [Maybe String])
    mkEvCon (evName', _, evType) = do
      let event  = head [ e | e <- iface.events, e.name == dropSuffix "'" (nameBase evName') ]
          params = evParams $ nameBase evName'
          evConN = mkName $ objN ++ upperFirst (fromSnailCase $ nameBase evName')
          con    = do
            fields <- forM (zip params $ getFields evType) $ \(arg, fT) -> do
              let name
                    | arg.name == "id", ANewId iface' <- argType arg = prValueNameModifier s (fromMaybe "new_id" iface')
                    | arg.name == "type" = "type'"

                     -- river wm fix
                    | arg.name `elem` ["hint", "state", "method", "methods", "button_map"]
                    , AEnum enum _mobj <- argType arg
                    = prValueNameModifier s enum

                    | otherwise = arg.name
              return (argTypeTrans event arg fT, mkName $ fromSnailCase name)
            recC evConN [varBangType fN (bangType (bang sourceUnpack sourceStrict) fT) | (fT, fN) <- fields]

          doc = "'" ++ pprint evName' ++ "'\n\n"
             ++ formatDescription event.description ++ "\n\n"
             ++ unlines ["- @" ++ a.name ++ "@: " ++ escapeString a.summary | a <- drop 2 params]

      return (con, Just doc, [])

interfaceListener :: Interface -> Q (Name, Info)
interfaceListener iface = do
  name <- lookupImportedTypeName $ upperFirst iface.name ++ "_listener"
  info <- reify name
  return (name, info)

-- * Type utils

getArrowArgs :: Type -> [Type]
getArrowArgs (AppT (AppT ArrowT x) y) = x : getArrowArgs y
getArrowArgs x = [x]

getFields :: Type -> [Type]
getFields (AppT _ x) = init $ getArrowArgs x
getFields _ = error "getFields"

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

upperFirst :: String -> String
upperFirst (x : xs) = toUpper x : xs
upperFirst [] = []

escapeString :: String -> String
escapeString = concatMap escape
  where
    escape x
      | x `elem` ("\\/'`\"@<$#" :: [Char]) = "\\" ++ [x]
      | otherwise = [x]

formatDescription :: Description -> String
formatDescription desc = escapeString desc.summary
   ++ (if desc.contents /= "" then "\n\n" ++ escapeString desc.contents else "")

-- * Misc.

-- MonadIO m => a -> m (PtrConst a)
toPtr :: Name -> Q Exp
toPtr name = [|unsafeFromPtr <$> new $(varE name)|]
