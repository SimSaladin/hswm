{-# LANGUAGE MultiWayIf            #-}
{-# LANGUAGE MultilineStrings      #-}
{-# LANGUAGE NoTemplateHaskell     #-}
{-# LANGUAGE OverloadedRecordDot   #-}
{-# LANGUAGE QuasiQuotes           #-}
{-# LANGUAGE RecordWildCards       #-}
{-# LANGUAGE TemplateHaskellQuotes #-}
{-# OPTIONS_GHC -Wno-typed-holes #-}
{-# OPTIONS_GHC -ddump-deriv #-}


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
  , Generically(..)
  , Data
  , nullPtr
  , mkName
  , conT
  ) where

import           Distribution.Wayland.ProtocolXML
import           WL.Internals.Types

import           HsBindgen.Runtime.PtrConst

import           Control.Arrow
import           Control.DeepSeq (NFData)
import           Control.Monad
import           Control.Monad.IO.Class
import           Data.Char (toUpper)
import           Data.Default
import           Data.Hashable (Hashable)
import qualified Data.List as L
import           Data.Maybe
import           Data.Void
import           Data.Data (Data)
import           Foreign
import           Foreign.C
import           Foreign.C.ConstPtr
import           GHC.Generics (Generic, Generically(..))
import           GHC.Records (getField)
import           Language.Haskell.TH
import           Language.Haskell.TH.Syntax
import           Prelude hiding (head)
import           System.IO.Unsafe (unsafePerformIO)
import Data.Coerce
import Control.Exception (finally)
-- import Control.Monad.Trans.Writer.CPS

data ProtocolRenderSettings = ProtocolRenderSettings
  { prRequestOptions    :: [(String, String, RequestSettings)]
  , prValueNameModifier :: String -> String
  , prTypeNameModifier  :: String -> String

  , prInterfaceName :: ProtocolRenderSettings -> String -> String

  , prInterfaceEventName :: ProtocolRenderSettings -> String -> String
  -- ^ Interface name -> Event name

  , prEventDerive :: Interface -> [Q DerivClause]
  -- ^ Derived instances for event types

  , prEventArgTypeTrans :: ProtocolRenderSettings -> Interface -> IEvent -> Arg -> Type -> Q Type
  -- ^ Transform the type of event arguments.

  , prEventArgTrans :: ProtocolRenderSettings -> Interface -> IEvent -> Arg -> Type -> Q Exp -> Q Exp

  , prRequestArgTypeTrans :: ProtocolRenderSettings -> Interface -> IRequest -> Arg -> Type -> Q Type
  -- ^ Transform the type of request arguments.
  , prRequestArgTrans :: ProtocolRenderSettings -> Interface -> IRequest -> Arg -> Type -> Name -> (ExpQ, Maybe (Name -> ExpQ))

  , prEventArgName :: ProtocolRenderSettings -> Interface -> IEvent -> Arg -> Type -> String
  }

data RequestSettings = RequestSettings
  { reqErrnoIfError  :: Bool
  , reqCheckNull     :: Bool
  , reqCheckMinusOne :: Bool
  , reqDisable       :: Bool
  }

instance Default RequestSettings where
  def = RequestSettings False False False False

instance Default ProtocolRenderSettings where
  def = ProtocolRenderSettings
    { prValueNameModifier = fromSnailCase
    , prTypeNameModifier  = upperFirst . fromSnailCase
    , prInterfaceName     = \s -> s.prValueNameModifier . (++ "_interface") . s.prValueNameModifier
    , prRequestOptions    = []
    , prInterfaceEventName    = \s ifn -> s.prTypeNameModifier ifn ++ "Event"
    , prEventDerive       = const [derivClause Nothing [[t|Eq|], [t|Show|], [t|Generic|]] ]
    , prEventArgTypeTrans = defaultEventArgTypeTrans
    , prRequestArgTypeTrans = defaultRequestArgTypeTrans
    , prEventArgTrans = defaultEventArgTrans -- s iface ev arg t name
    , prRequestArgTrans = defaultRequestArgTrans
    , prEventArgName = defaultEventArgName
    }

-- type RenderM = WriterT String (ReaderT ProtocolRenderSettings Q)

-- type mapping

getArgIFName iface arg
  | AEnum _ (Just r) <- arg.argType = r
  | AObject (Just r) <- arg.argType = r
  | otherwise = iface.name

defaultEventArgName :: ProtocolRenderSettings -> Interface -> IEvent -> Arg -> Type -> String
defaultEventArgName s iface ev arg t
  | arg.name == "id", ANewId iface' <- argType arg
  = s.prValueNameModifier (fromMaybe "new_id" iface')

  | arg.name == "type" = "type'"

   -- river wm fix
  | arg.name `elem` ["hint", "state", "method", "methods", "button_map"]
  , AEnum enum _mobj <- argType arg
  = s.prValueNameModifier enum

  | otherwise = s.prValueNameModifier arg.name

defaultTypeTrans :: ProtocolRenderSettings -> Interface -> Arg -> Type -> Q Type
defaultTypeTrans s iface arg t
  | AEnum enum mobj <- arg.argType
  = conT =<< lookupImportedTypeName' mkName (getArgIFName iface arg) (s.prTypeNameModifier (s.prTypeNameModifier (fromMaybe iface.name mobj) ++ "_" ++ enum))

  | AppT (ConT cN) (ConT tN) <- t, cN == ''Ptr, nameBase tN == upperFirst iface.name
  = conT $ mkName $ s.prTypeNameModifier iface.name

  | AppT (ConT cN) (ConT tN) <- t, cN == ''Ptr, tN /= ''Void
  = conT =<< lookupImportedTypeName' mkName (getArgIFName iface arg) (s.prTypeNameModifier $ nameBase tN)

  | t == AppT (ConT ''PtrConst) (ConT ''CChar) = [t|Maybe String|]
  | otherwise = return t

defaultEventArgTypeTrans :: ProtocolRenderSettings -> Interface -> IEvent -> Arg -> Type -> Q Type
defaultEventArgTypeTrans s iface _ arg t
  | t == AppT (ConT ''PtrConst) (ConT ''CChar) = [t|String|]
  | otherwise = defaultTypeTrans s iface arg t

defaultRequestArgTypeTrans :: ProtocolRenderSettings -> Interface -> IRequest -> Arg -> Type -> Q Type
defaultRequestArgTypeTrans s iface _ arg t = defaultTypeTrans s iface arg t

-- value mapping

defaultEventArgTrans :: ProtocolRenderSettings -> Interface -> IEvent -> Arg -> Type -> Q Exp -> Q Exp
defaultEventArgTrans s iface _ev arg t x
  | ASelf <- arg.argType
  = [|return $! $(conE (mkName $ s.prTypeNameModifier iface.name)) $(x)|]

  | AEnum enum mobj <- arg.argType
  = let nm = conE =<< lookupImportedValueName' mkName (getArgIFName iface arg) (upperFirst (fromMaybe iface.name mobj) ++ "_" ++ enum)
     in [|return $! $nm (fromIntegral $(x))|]

  -- Some "Ptr a" (except "Ptr Void")
  | AppT (ConT cN) (ConT tN) <- t, cN == ''Ptr, tN /= ''Void
  = [|return $! $(conE =<< lookupImportedValueName' mkName (getArgIFName iface arg) (s.prTypeNameModifier $ nameBase tN)) $(x)|]

  | AppT (ConT cN) (ConT tN) <- t, cN == ''PtrConst, tN == ''CChar
  = [|let p = unConstPtr $(x) in if p == nullPtr then return "" else peekCString p|]

  | otherwise = [|return $(x)|]

defaultRequestArgTrans :: ProtocolRenderSettings -> Interface -> IRequest -> Arg -> Type -> Name -> (ExpQ, Maybe (Name -> ExpQ))
defaultRequestArgTrans s iface _ arg t name
  | ASelf <- arg.argType
  = (,Nothing) $ do
    x <- newName "x"
    letE [ valD (conP (mkName $ s.prTypeNameModifier iface.name) [varP x]) (normalB (varE name)) [] ]
      $ appE (varE 'return) $ varE x

  | AEnum enum Nothing <- arg.argType
  = (,Nothing) $ do
    x <- newName "x"
    letE [ valD (conP' (upperFirst iface.name ++ "_" ++ enum) [varP x]) (normalB (varE name)) [] ]
      $ appE (varE 'return) $ appE (varE 'fromIntegral) $ varE x

  | AEnum enum miface@(Just obj) <- arg.argType
  = (,Nothing) $ do
    x <- newName "x"
    letE [ valD (conP' (upperFirst obj ++ "_" ++ enum) [varP x]) (normalB (varE name)) [] ]
      $ appE (varE 'return) $ appE (varE 'fromIntegral) $ varE x

  | AppT (ConT cN) (ConT tN) <- t, cN == ''Ptr, tN /= ''Void, tN /= ''Word32
  = (,Nothing) $ do
    x <- newName "x"
    letE [ valD (conP' (prTypeNameModifier s (nameBase tN)) [varP x]) (normalB (varE name)) []]
      $ appE (varE 'return) $ varE x

  | AppT (ConT cN) (ConT tN) <- t, cN == ''PtrConst, tN == ''CChar
  = ([|ConstPtr <$> maybe (pure nullPtr) (liftIO . newCString) $(varE name)|], -- note: cleanup in argFinalizer
     Just $ \nm -> [|when (unConstPtr $(varE nm) /= nullPtr) $ liftIO . free $ unConstPtr $(varE nm)|])

  | otherwise = ([|return $(varE name)|], Nothing)
 where
    conP' str args = flip conP args =<< lookupImportedValueName' mkName (getArgIFName iface arg) str




commonSettings :: ProtocolRenderSettings
commonSettings = def
    { prTypeNameModifier  = (def::ProtocolRenderSettings).prTypeNameModifier . dropPre prefixes . dropEnd suffixes
    , prValueNameModifier = (def::ProtocolRenderSettings).prValueNameModifier . dropPre prefixes . dropEnd suffixes
    }
  where
      prefixes =
        let xs = [ "wl_", "wp_", "xdg_", "wlr_", "ext_" ]
            ys = xs ++ map ('z' :) xs
            zs = map (\(x:xs) -> toUpper x : xs) ys
         in xs ++ ys ++ zs

      suffixes = [ "_v" ++ show i | i <- [1..10::Int] ]

      dropPre (x : xs) t | Just r <- L.stripPrefix x t = r
                         | otherwise = dropPre xs t
      dropPre  _ t = t

      dropEnd (x : xs) t = dropEnd xs $ dropSuffix x t
      dropEnd  _ t = t

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
          liftIO $ putStrLn "Warning: server-side generation not done yet"
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
      , docSection "Requests" [ "    * '" ++ prValueNameModifier (prValueNameModifier iface.name ++ "_" ++ x.name) ++ "'\n" | x <- iface.requests, x.name /= "destroy" ]
      , docSection "Events"   [ "    * v'" ++ prTypeNameModifier (prTypeNameModifier iface.name ++ "_" ++ x.name) ++ "'\n" | x <- iface.events ]
      , docSection "Enums"    [ "    * t'" ++ prTypeNameModifier (prTypeNameModifier iface.name ++ "_" ++ x.name) ++ "'\n" | x <- iface.enums ]
      ]
    docSection _ _ = ""
    docSection name items = unlines $ [ "* " ++ name ++ "\n" ] ++ items

renderNewType :: Name -> Name -> String -> Q [Dec]
renderNewType ntName objT doc = do
  let con = recC ntName [ varBangType (mkName "unwrap") (bangType (bang noSourceUnpackedness noSourceStrictness) [t|Ptr $(conT objT)|]) ]
  let derivs = [ derivClause (Just StockStrategy)   [ [t|Eq|], [t|Ord|], [t|Generic|] ]
               -- , derivClause (Just AnyclassStrategy) [ [t|Data|] ]
               , derivClause (Just NewtypeStrategy) [ [t|Storable|], [t|Hashable|], [t|NFData|], [t|IsUserData|] ]
               ]
  concat <$> sequence
    [ sequence [ newtypeD_doc (pure []) ntName [] Nothing (con, Nothing, []) derivs (if doc == "" then Nothing else Just doc) ]
    , [d|
      instance Default $(conT ntName) where
        def = $(conE ntName) nullPtr
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
  , concat <$> mapM (renderMethod s iface) iface.requests
  , renderListenerEvents s iface
  ]

renderMethod :: ProtocolRenderSettings -> Interface -> IRequest -> Q [Dec]
renderMethod s iface req
 | reqDisable reqOpts = return []
 | otherwise = do
        reqFun <- lookupImportedValueName iface.name $ iface.name ++ "_" ++ req.name
        rawTy <- reifyType reqFun
        let (argsT, resT) = (init &&& last) $ getArrowArgs rawTy
            reqArgs       = [ argSelf | length argsT >= length (filter (not . argIsNewId) req.args)] ++
              filter (not . argIsNewId) req.args
        [d|
          instance HasMethod $(litT (strTyLit req.name)) $(conT ntName) $(litT $ numTyLit since) where
            type instance ObjectMethod $(conT ntName) $(litT (strTyLit req.name))
                = $(mapType (reqArgs ++ filter argIsNewId req.args) rawTy)
            objectMethod _ = $(methodImpl (varE reqFun) (zip reqArgs (getArrowArgs rawTy))) -- $(varE reqFun)
          |]
  where
    reqOpts = maybe def (\(_,_,x) -> x) $ L.find (\(ifN, rN, _) -> ifN == iface.name && rN == req.name) s.prRequestOptions

    methodImpl fn args = do
      lhsN <- replicateM (length args) (newName "a")
      rhsN <- replicateM (length args) (newName "b")
      let args' = [ argTrans arg ty a | (a, (arg, ty)) <- zip lhsN args ]
      lamE (varP <$> lhsN) $ doE $
        [ bindS (varP b) x | (b, (x, _)) <- zip rhsN args' ] ++
        [ noBindS [|coerce <$> finally $(appsE $ fn : map varE rhsN) $(doE [ noBindS (x n) | (n, (_, Just x)) <- zip rhsN args' ++ [(undefined, (undefined, Just $ \_ -> [|return ()|]))]]) |] ]

    ntName = mkName $ s.prTypeNameModifier iface.name
    since = fromIntegral $ fromMaybe iface.version req.since

    mapType (_: args) (AppT _ t) = mapType' args t
    mapType' (arg : args) = \case
      AppT (AppT ArrowT a) b -> appT (appT arrowT (mapType' [arg] a)) (mapType' args b)
      AppT a b | a == ConT ''IO -> AppT a <$> argTypeTrans arg b
      t -> argTypeTrans arg t
    mapType' [] = return

    argTypeTrans = s.prRequestArgTypeTrans s iface req
    argTrans = s.prRequestArgTrans s iface req
    argSelf = Arg "self" "" ASelf Nothing

renderInterfaceValue :: ProtocolRenderSettings -> Interface -> Q [Dec]
renderInterfaceValue s iface = do
  let name = mkName $ s.prInterfaceName s iface.name
      ifN  = mkName $ iface.name <> "_interface"
      doc  = Just $ unlines
       [ "Interface: @" ++ iface.name ++ "@, version: " ++ show iface.version ++ "\n"
       , formatDescription iface.description ]
  sequence
    [ sigD name [t|ConstPtr $(reifyType ifN)|]
    , funD_doc name [clause [] (normalB [|unsafePerformIO $! ConstPtr <$> new $(varE ifN)|]) []] doc []
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
    ntName = mkName $ s.prTypeNameModifier iface.name
    getFn fn = lookupImportedValueName iface.name (iface.name ++ "_" ++ fn)
    hasDestroy = any (\x -> requestType x == Just "destructor") iface.requests

    renderNT = renderNewType ntName (mkName $ upperFirst iface.name) $ unlines
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


    renderDestroy
      | not hasDestroy = pure []
      | otherwise = withDecsDoc doc [d|
          instance HasDestructor $(conT ntName) where
            objectDestroy $(conP ntName [[p|x|]]) = liftIO $ $(varE =<< getFn "destroy") x
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

lookupImportedValueName' :: (String -> Name) -> String -> String -> Q Name
lookupImportedValueName' onerr ifname str = do
  ModuleInfo imports <- reifyModule =<< thisModule
  let alts = [ nm ++ str | nm <- [ "IF_" ++ ifname ++ ".", "Safe.", "Unsafe.", "" ] ++ [ nm ++ "." | Module _ (ModName nm) <- imports ] ]
      find (x : xs) = lookupValueName x >>= maybe (find xs) pure
      find       [] = return $ onerr str
   in find alts

lookupImportedValueName :: String -> String -> Q Name
lookupImportedValueName = lookupImportedValueName' $ \s -> error $ "Value not found: " ++ s

lookupImportedTypeName' :: (String -> Name) -> String -> String -> Q Name
lookupImportedTypeName' onerr ifname strIn = do
  let str = upperFirst strIn
  ModuleInfo imports <- reifyModule =<< thisModule
  let alts = [ nm ++ str | nm <- [ "IF_" ++ ifname ++ ".", "Safe.", "Unsafe.", "" ] ++ [ nm ++ "." | Module _ (ModName nm) <- imports ] ]
      find (x : xs) = lookupTypeName x >>= maybe (find xs) pure
      find       [] = return $ onerr str
   in find alts

lookupImportedTypeName :: String -> String -> Q Name
lookupImportedTypeName = lookupImportedTypeName' $ \str -> error $ "Type not found: " ++ str

renderRequest :: ProtocolRenderSettings -> Interface -> IRequest -> Q [Dec]
renderRequest _ _ r | requestType r == Just "destructor" = pure []
renderRequest s iface request
 | reqDisable reqOpts = return []
 | otherwise = do

  let reqN = mkName $ prValueNameModifier s $ prValueNameModifier s iface.name ++ "_" ++ request.name
  f_name <- lookupImportedValueName iface.name $ iface.name ++ "_" ++ request.name
  f_type <- reifyType f_name

  let (argsT, resT) = (init &&& last) $ getArrowArgs f_type
      rargs'        = filter (not . argIsNewId) request.args
      rargs         = [ argSelf | AppT (ConT _cN) (ConT tN) : _ <- [ argsT ]
                                , nameBase tN == upperFirst iface.name ]
                                ++ rargs' ++ repeat argUnknown
      argRes        = fromMaybe argUnset $ L.find argIsNewId request.args

      doc = unlines $
        [ "@#" ++ request.name ++ " " ++ unwords [ a.name | a <- argSelf : rargs' ] ++ "@\n"
        , formatDescription request.description ]
        ++ [ "\nArgs: " ++ L.intercalate ", " [ argDoc a | a <- request.args ] ++ "\n" | not $ null request.args ]
        ++ [ "\nThrows if NULL." | reqCheckNull reqOpts]
        ++ [ "\nThrows if -1."   | reqCheckMinusOne reqOpts]

  namesP <- mapM (\_ -> newName "a") argsT

  let body = do
        resN <- newName "res"
        namesR <- mapM (\_ -> newName "r") namesP
        doE $
          [ bindS (varP rN) (fst $ argTransform arg argT pN) | (pN, rN, (argT, arg)) <- zip3 namesP namesR (zip argsT rargs) ] -- args
            ++ [bindS (varP resN) $ appsE (map varE (f_name : namesR)) ]
            ++ [noBindS finalizer | (rN, argT) <- zip namesR argsT, Just finalizer <- [argFinalizer argT rN] ]
            ++ [noBindS [|when ($(varE resN) == nullPtr) $ error    $ $(litE . StringL $ nameBase f_name) ++ " returned NULL"|] | reqCheckNull reqOpts, not (reqErrnoIfError reqOpts)]
            ++ [noBindS [|when ($(varE resN) == nullPtr) $ throwErrno $(litE . StringL $ nameBase f_name)|] | reqCheckNull reqOpts, reqErrnoIfError reqOpts]
            ++ [noBindS [|when ($(varE resN) == -1)      $ error    $ $(litE . StringL $ nameBase f_name) ++ " returned -1"|] | reqCheckMinusOne reqOpts, not (reqErrnoIfError reqOpts)]
            ++ [noBindS [|when ($(varE resN) == -1)      $ throwErrno $(litE . StringL $ nameBase f_name)|] | reqCheckMinusOne reqOpts, reqErrnoIfError reqOpts]
            ++ [noBindS $ resTransform resT resN ]

      body' = appE (varE 'liftIO) body
  sequence
    [ sigD reqN (toTypeTop (zip argsT rargs) (resT, argRes))
    , funD_doc reqN [clause (map varP namesP) (normalB body' {- $ appE (varE 'liftIO) body-}) []] (Just doc) []
    , pragInlD reqN Inline FunLike AllPhases
    ]
  where
    argSelf    = Arg "self" "" AEmpty Nothing
    argUnknown = Arg "unknown" "" AEmpty Nothing
    argUnset   = Arg "" "" AEmpty Nothing

    reqOpts = maybe def (\(_,_,x) -> x) $ L.find (\(ifN, rN, _) -> ifN == iface.name && rN == request.name) s.prRequestOptions

    toTypeTop args res = [t|forall m. MonadIO m => $(toType args)|]
      where
        toType ((x, arg) : xs) = appT (appT arrowT (argTypeTransform arg x)) (toType xs)
        toType []              = toTypeRes res

        toTypeRes (AppT (ConT cN) t, arg)
          | cN == ''IO         = appT (varT (mkName "m")) (argTypeTransform arg t)
        toTypeRes (x, _)       = error $ "toType: unexpected return type: " ++ pprint x

    argTypeTransform = s.prRequestArgTypeTrans s iface request
    argTransform = s.prRequestArgTrans s iface request

    argFinalizer t name
      | AppT (ConT cN) (ConT tN) <- t, cN == ''PtrConst, tN == ''CChar
      = Just [|when (unConstPtr $(varE name) /= nullPtr) $ liftIO . free $ unConstPtr $(varE name)|]
      | otherwise = Nothing

    resTransform (AppT (ConT _IO) (AppT (ConT _Ptr) (ConT obj))) name
      | obj /= ''Void
      = [|return $! $(conE' $ s.prTypeNameModifier $ nameBase obj) $(varE name)|]

    resTransform _ name = [|return $(varE name)|]

    conE' str = conE =<< lookupImportedValueName' mkName "_" str

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
-- instance HasListener Foobar
--
-- @
renderListenerEvents :: ProtocolRenderSettings -> Interface -> Q [Dec]
renderListenerEvents _ iface | null iface.events = pure []
renderListenerEvents s iface = concat <$> sequence [ mkEvent s iface, mkHasListenerInst ]
  where
    listenerN    = lookupImportedTypeName iface.name $ iface.name ++ "_listener"
    addListenerN = lookupImportedValueName iface.name $ iface.name ++ "_add_listener"
    objT         = conT (mkName $ s.prTypeNameModifier iface.name)
    eventN       = mkName $ s.prInterfaceEventName s iface.name

    mkHasListenerInst :: Q [Dec]
    mkHasListenerInst = do
      let doc =
            """
            @
            listener <- 'Wayland.createListener' $ \\case ...
            'Wayland.listenerAdd' object listener ()
            @
            """
      let listenerAddC = clause [] (normalB [|\o l -> $(varE =<< addListenerN) (coerce o) l|]) []
      sequence
        [ withDecDoc doc $ instanceD (pure []) [t|HasListener $(objT)|]
          [ tySynInstD $ tySynEqn Nothing [t|ObjectListener      $(objT)|] (conT =<< listenerN)
          , tySynInstD $ tySynEqn Nothing [t|ObjectListenerEvent $(objT)|] (conT eventN)
          , funD 'createListener [createListenerC]
          , funD 'objectListenerAdd [listenerAddC]
          , funD 'freeListener [mkFreeListener]
          ]
        ]

    evParams nm      = argUserdata : argSelf : (eventFromName nm).args
    eventFromName nm = head [ e | e <- iface.events, e.name == dropSuffix "'" nm ]
    argSelf          = Arg (prValueNameModifier s iface.name) "" ASelf Nothing
    argUserdata      = Arg "userdata" "" AEmpty Nothing

    createListenerC = do
      (_, TyConI (DataD _ _ _ _ [RecC recName recs] _)) <- interfaceListener iface
      handle <- newName "handle"
      let mkExp (evN, _, evType) = do
            let fields  = getFields evType
                ev      = eventFromName (nameBase evN)
                params  = evParams $ nameBase evN
                conName = mkName $ s.prTypeNameModifier iface.name ++ upperFirst (fromSnailCase $ nameBase evN)
            patNs <- forM fields $ \_ -> newName "a"
            argNs <- forM fields $ \_ -> newName "b"
            appE (varE 'toFunPtr) $ lamE (map varP patNs) $ doE $
                  [ bindS (varP aN) (argTransform ev arg pT pN)
                    | ((pN, aN), arg, pT) <- zip3 (zip patNs argNs) params fields ]
                  ++ [ noBindS $ varE handle `appE` appsE (conE conName : map varE argNs) ]
      fpNames <- forM recs $ \_ -> newName "fp"
      let fpExps = map mkExp recs
      let body = appE (varE 'liftIO) . doE $
            [ bindS   (varP nm) rhs | (nm, rhs) <- zip fpNames fpExps] ++
            [ noBindS [|unsafeFromPtr <$> new $(appsE $ conE recName : map varE fpNames)|] ]
      clause [varP handle] (normalB body) []

    mkFreeListener :: Q Clause
    mkFreeListener = do
      (_, TyConI (DataD _ _ _ _ [RecC conName recs] _)) <- interfaceListener iface
      ptr <- newName "p"
      fps <- forM recs $ \_ -> newName "fp"
      let pat  = conP conName (map varP fps)
      let body = appE (varE 'liftIO) $ doE $
            [ bindS pat [| Foreign.peek (unConstPtr $(varE ptr)) |] ] ++
            [ noBindS   [| freeHaskellFunPtr $(varE nm)    |] | nm <- fps ] ++
            [ noBindS   [| free $ unConstPtr $(varE ptr) |] ]
      clause [varP ptr] (normalB body) []

    argTransform ev arg t name = s.prEventArgTrans s iface ev arg t (varE name)

mkEvent :: ProtocolRenderSettings -> Interface -> Q [Dec]
mkEvent s iface = do
  (_, TyConI (DataD _ _ _ _ [RecC _ recs] _)) <- interfaceListener iface
  sequence [ dataD_doc (pure []) eventN [] Nothing (map mkEvCon recs) (s.prEventDerive iface) (Just "") ]

  where
    eventN = mkName $ s.prInterfaceEventName s iface.name

    argSelf      = Arg (s.prValueNameModifier iface.name) "" ASelf Nothing
    argUserdata  = Arg "userdata" "" AEmpty Nothing
    evParams ev  = argUserdata : argSelf : [ arg | e <- iface.events, e.name == dropSuffix "'" ev, arg <- e.args ]
    argTypeTrans = s.prEventArgTypeTrans s iface

    mkEvCon :: (Name, Bang, Type) -> (Q Con, Maybe String, [Maybe String])
    mkEvCon (evName', _, evType) =
      let event  = head [ e | e <- iface.events, e.name == dropSuffix "'" (nameBase evName') ]
          params = evParams $ nameBase evName'
          evConN = eventCon s iface (nameBase evName')
          con    = do
            fields <- forM (zip params $ getFields evType) $ \(arg, fT) -> do
              let name = s.prEventArgName s iface event arg fT
              return (argTypeTrans event arg fT, mkName name)
            recC evConN [varBangType fN (bangType (bang sourceUnpack sourceStrict) fT) | (fT, fN) <- fields]

          doc = "'" ++ pprint evName' ++ "'\n\n"
             ++ formatDescription event.description ++ "\n\n"
             ++ unlines ["- @" ++ a.name ++ "@: " ++ escapeString a.summary | a <- drop 2 params]

       in (con, Just doc, [])

eventCon s iface ev = mkName $ s.prTypeNameModifier $ s.prTypeNameModifier iface.name ++ "_" ++ ev

interfaceListener :: Interface -> Q (Name, Info)
interfaceListener iface = do
  name <- lookupImportedTypeName iface.name $ iface.name ++ "_listener"
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
