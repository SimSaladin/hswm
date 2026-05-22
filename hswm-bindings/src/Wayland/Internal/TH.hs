{-# LANGUAGE MultiWayIf            #-}
{-# LANGUAGE MultilineStrings      #-}
{-# LANGUAGE NoTemplateHaskell     #-}
{-# LANGUAGE QuasiQuotes           #-}
{-# LANGUAGE RecordWildCards       #-}
{-# LANGUAGE TemplateHaskellQuotes #-}

module Wayland.Internal.TH
  -- * Protocol XML
  ( clientFromProtocolXML
  , clientFromProtocolXML'
  , commonSettings
  , ProtocolRenderSettings(..)
  , RequestSettings(..)
  , Protocol(..)
  , Interface(..)
  , IRequest(..)
  , Arg(..)

  -- * NewType only
  , renderNewType

  -- * Re-export
  , Default(..)
  ) where

import           Wayland.Types
import Wayland.Internal.TH.NewType
import Wayland.Internal.TH.ProtocolXML

import           Control.Arrow
import           Control.Monad
import           Control.Monad.IO.Class
import           Data.Char (toUpper)
import           Data.Default
import qualified Data.List as L
import           Data.Maybe
import qualified Data.Text as T
import           Data.Void
import           Foreign
import           Foreign.C
import           Foreign.C.ConstPtr
import           GHC.Generics (Generic)

import           HsBindgen.Runtime.PtrConst

import           Language.Haskell.TH
import           Language.Haskell.TH.Syntax

import           Prelude hiding (head)
import           System.IO.Unsafe (unsafePerformIO)

data ProtocolRenderSettings = ProtocolRenderSettings
  { prValueNameModifier :: String -> String
  , prTypeNameModifier  :: String -> String
  , prInterfaceName     :: ProtocolRenderSettings -> String -> String
  , prRequestOptions    :: [(String, String, RequestSettings)]
  , prEnumModule        :: String -> String
  , prInterfaceEvent    :: ProtocolRenderSettings -> String -> String
  , prEventDerive       :: String -> [Q DerivClause] -- ^ Derived instances for event types
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
    , prInterfaceName     = \s -> prValueNameModifier s . (++ "_interface") . prValueNameModifier s
    , prRequestOptions    = []
    , prEnumModule        = \name -> case () of
                                       _ | "wl_" `L.isPrefixOf` name -> "Bindings.Wayland.Client."
                                         | otherwise -> ""
    , prInterfaceEvent    = \s ifn -> prTypeNameModifier s ifn ++ "Event"
    , prEventDerive       = \_ -> [derivClause Nothing [conT ''Eq, conT ''Show, conT ''Generic]]
    }

instance Default RequestSettings where
  def = RequestSettings False False False False

commonSettings :: ProtocolRenderSettings
commonSettings = def
  { prTypeNameModifier = upperFirst . fromSnailCase
    . dropPrefix "Wl_"    . dropPrefix "wl_"
    . dropPrefix "Wp_"    . dropPrefix "wp_"
    . dropPrefix "zwp_"   . dropPrefix "Zwp_"
    . dropPrefix "ext_"   . dropPrefix "Ext_"
    . dropPrefix "zwlr_"  . dropPrefix "Zwlr_"
    . dropPrefix "zxdg_"  . dropPrefix "Zxdg_"
    . dropPrefix "Xdg_"   . dropPrefix "xdg_"
    . dropSuffix "_v1"    . dropSuffix "_v2"
  , prValueNameModifier = fromSnailCase
    . dropPrefix "wl_"
    . dropPrefix "zwp_"
    . dropPrefix "zwlr_"
    . dropPrefix "zxdg_"
    . dropPrefix "xdg_"
    . dropPrefix "wp_"
    . dropPrefix "ext_"
    . dropSuffix "_v1" . dropSuffix "_v2"
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
  addModFinalizer $ putDoc ModuleDoc $ unlines
    [ "Description: " ++ fst (protocolDescription proto)
    , "Stability: unstable"
    , "Portability: unportable"
    , ""
    , "__Protocol:__ @" ++ protocolName proto ++ "@\n"
    , formatDescription (snd $ protocolDescription proto) ++ "\n"
    , unlines [ ifaceDoc settings iface | iface <- protocolInterfaces proto ]
    , ""
    , "__Protocol copyright:__ " ++ T.unpack (protocolCopyright proto)
    ]
  concat <$> forM (protocolInterfaces proto) (renderInterface settings)
    where

    ifaceDoc ProtocolRenderSettings{..} Interface{..} = unlines
      [ "__Interface__: '" ++ prTypeNameModifier interfaceName ++ "' (@" ++ interfaceName ++ "@)\n"
      , "* Requests\n"
      , unlines [ "    * '" ++ prValueNameModifier (prValueNameModifier interfaceName ++ "_" ++ requestName) ++ "'\n" | IRequest{..} <- interfaceRequests, requestName /= "destroy" ]
      , "* Events\n"
      , unlines [ "    * v'" ++ prTypeNameModifier (prTypeNameModifier interfaceName ++ "_" ++ eventName) ++ "'\n" | IEvent{..} <- interfaceEvents ]
      , "* Enums\n"
      , unlines [ "    * t'" ++ prTypeNameModifier (prTypeNameModifier interfaceName ++ "_" ++ enumName) ++ "'\n" | IEnum{..} <- interfaceEnums ]
      ]

renderInterface :: ProtocolRenderSettings -> Interface -> Q [Dec]
renderInterface s iface@Interface{..} = concat <$> sequence
  [ renderInterfaceValue s iface
  , renderInterfaceObject s iface
  , concat <$> mapM (renderEnum s iface) interfaceEnums
  , concat <$> mapM (renderRequest s iface) interfaceRequests
  , renderListenerEvents s iface
  ]

renderInterfaceValue :: ProtocolRenderSettings -> Interface -> Q [Dec]
renderInterfaceValue s@ProtocolRenderSettings{..} Interface{..} = do
  let name = mkName $ prInterfaceName s interfaceName
      ifN = mkName $ interfaceName <> "_interface"
      ifT = reifyType ifN
      doc = Just $ unlines
       [ "Interface: @" ++ interfaceName ++ "@, version: " ++ show interfaceVersion ++ "\n"
       , formatDescription (snd interfaceDescription) ]
  sequence
    [ sigD name [t|ConstPtr $ifT|]
    , funD_doc name [clause [] (normalB [|unsafePerformIO $ toConstPtr $(varE ifN)|]) []] doc []
    , pragInlD name NoInline FunLike AllPhases
    ]

renderEnum :: ProtocolRenderSettings -> Interface -> IEnum -> Q [Dec]
renderEnum s Interface{..} IEnum{..} = do
  let enumN = mkName $ prTypeNameModifier s $ prTypeNameModifier s interfaceName ++ "_" ++ enumName
      enumT = mkName $ upperFirst interfaceName ++ "_" ++ enumName
  doc <- fmap (fromMaybe "") $ getDoc $ DeclDoc enumT
  x <- withDecDoc doc $ tySynD enumN [] (conT enumT)
  xs <- concat <$> mapM renderEnumEntry enumEntries
  return (x : xs)
  where
    renderEnumEntry EnumEntry{..} = do
      let eN = mkName $ fromSnailCase $ prValueNameModifier s interfaceName ++ "_" ++ enumName ++ "_" ++ entryName
      let eT = mkName $ prTypeNameModifier s $ prTypeNameModifier s interfaceName ++ "_" ++ enumName
          doc = formatDescription entrySummary ++ "\n\nValue: " ++ entryValue
      sequence
        [ funD_doc eN [clause [] (normalB [|toCEnum $(litE $ integerL $ read entryValue)|]) []] (Just doc) []
        , sigD eN (conT eT)
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
renderInterfaceObject s Interface{..} = concat <$> sequence [ renderNT, renderIsWlObject, renderDestroy, renderHasIF ]
  where
    ntName = mkName $ prTypeNameModifier s interfaceName
    getFn fn = mkName $ interfaceName ++ "_" ++ fn

    renderNT = renderNewType (prTypeNameModifier s interfaceName) (mkName $ upperFirst interfaceName) $ unlines
        [ formatDescription (snd interfaceDescription)
        , "\nEnums: "    ++ unwords [ enumName e | e <- interfaceEnums ]
        , "\nRequests: " ++ unwords [ requestName r | r <- interfaceRequests ]
        , "\nEvents: "   ++ unwords [ eventName e | e <- interfaceEvents ]
        ]

    renderIsWlObject = [d|
      instance IsWlObject $(conT ntName) where
        toProxy     $(conP ntName [[p|x|]]) = castPtr x
        getVersion  $(conP ntName [[p|x|]]) = $(varE $ getFn "get_version") x
        getUserData $(conP ntName [[p|x|]]) = $(varE $ getFn "get_user_data") x
        setUserData $(conP ntName [[p|x|]]) = $(varE $ getFn "set_user_data") x
      |]

    hasDestroy = any (\x -> requestType x == Just "destructor") interfaceRequests

    renderDestroy
      | not hasDestroy = pure []
      | otherwise = withDecsDoc doc [d|
          instance HasDestructor $(conT ntName) where
            objectDestroy $(conP ntName [[p|x|]]) = $(varE (getFn "destroy")) x
          |]
            where
              doc = unlines
                [ formatDescription (snd $ requestDescription r)
                  | r <- interfaceRequests, requestType r == Just "destructor"
                ]

    renderHasIF = withDecsDoc doc [d|
      instance HasInterface $(conT ntName) where
        objectInterface        _ = $(varE $ mkName $ prInterfaceName s s interfaceName)
        objectInterfaceName    _ = $(litE $ stringL interfaceName)
        objectInterfaceVersion _ = $(litE $ integerL $ fromIntegral interfaceVersion)
        objectBindWrap           = $(conE $ mkName $ prTypeNameModifier s interfaceName) . castPtr
      |]
      where doc = "@" ++ show (interfaceName, interfaceVersion) ++ "@"

renderRequest :: ProtocolRenderSettings -> Interface -> IRequest -> Q [Dec]
renderRequest _ _ r | requestType r == Just "destructor" = pure []
renderRequest s Interface{..} IRequest{..}  = do
  let reqN = mkName $ prValueNameModifier s $ prValueNameModifier s interfaceName ++ "_" ++ requestName

  VarI f_name f_type _ <- reify $ mkName $ interfaceName ++ "_" ++ requestName
  let (argsT, resT) = (init &&& last) $ getArrowArgs f_type
  let rargs' = filter (\x -> argType x /= "new_id") requestArgs
  let rargs = [ argSelf | (AppT (ConT _cN) (ConT tN)) : _ <- [argsT], nameBase tN == upperFirst interfaceName ] ++  rargs' ++ repeat argUnknown
  let argRes = fromMaybe (Arg "id" "" Nothing Nothing "") $ L.find (\x -> argType x == "new_id") requestArgs

  let doc = unlines $
        [ formatDescription (snd requestDescription) ++ "\n"
        , "Args: " ++ L.intercalate ", " [ argDoc a | a <- requestArgs ] ++ "\n"
        ]
        ++ ["\nThrows if NULL." | reqCheckNull reqOpts]
        ++ ["\nThrows if -1." | reqCheckMinusOne reqOpts]

  namesP <- mapM (\_ -> newName "a") argsT
  let c_pat = [ varP nm | nm <- namesP ]
  let body = normalB $ do
        resN <- newName "res"
        namesR <- mapM (\_ -> newName "r") namesP
        doE $
          [ bindS (varP rN) (argTransform arg argT pN) | (pN, rN, (argT, arg)) <- zip3 namesP namesR (zip argsT rargs) ] -- args
            ++ [bindS (varP resN) $ appE (varE 'liftIO) $ appsE $ varE f_name : [varE n | n <- namesR] ]
            ++ [noBindS finalizer | (rN, argT) <- zip namesR argsT, Just finalizer <- [argFinalizer argT rN] ]
            ++ [noBindS [|when ($(varE resN) == nullPtr) $ liftIO $ error    $ $(litE . StringL $ nameBase f_name) ++ " returned NULL"|] | reqCheckNull reqOpts, not (reqErrnoIfError reqOpts)]
            ++ [noBindS [|when ($(varE resN) == nullPtr) $ liftIO $ throwErrno $(litE . StringL $ nameBase f_name)|] | reqCheckNull reqOpts, reqErrnoIfError reqOpts]
            ++ [noBindS [|when ($(varE resN) == -1)      $ liftIO $ error    $ $(litE . StringL $ nameBase f_name) ++ " returned -1"|] | reqCheckMinusOne reqOpts, not (reqErrnoIfError reqOpts)]
            ++ [noBindS [|when ($(varE resN) == -1)      $ liftIO $ throwErrno $(litE $ StringL $ nameBase f_name)|] | reqCheckMinusOne reqOpts, reqErrnoIfError reqOpts]
            ++ [noBindS $ resTransform resT resN ]
  if reqDisable reqOpts then return [] else
    sequence
      [ sigD reqN (toTypeTop (zip argsT rargs) (resT, argRes))
      , funD_doc reqN [clause c_pat body []] (Just doc) []
      , pragInlD reqN Inline FunLike AllPhases
      ]
  where
    argSelf = Arg "self" "" Nothing Nothing ""
    argUnknown = Arg "unknown" "" Nothing Nothing ""

    reqOpts = maybe def (\(_,_,x) -> x) $ L.find (\(ifN, rN, _) -> ifN == interfaceName && rN == requestName) (prRequestOptions s)

    toTypeTop args res = forallT [plainTV (mkName "m")] (pure [AppT (ConT ''MonadIO) $ VarT (mkName "m")]) (toType $ args ++ [res])

    toType [(AppT (ConT cN) t, arg)]
      | cN == ''IO = appT (varT (mkName "m")) (argTypeTransform arg t)
    toType [(x, _)] = error $ "toType: unexpected return type: " ++ pprint x
    toType ((x, arg) : xs) = appT (appT arrowT (argTypeTransform arg x)) (toType xs)
    toType [] = error "toType: empty list"

    argTypeTransform Arg{..} t
      | AppT (ConT cN) (ConT tN) <- t, cN == ''Ptr, nameBase tN == upperFirst interfaceName
      = conT $ mkName $ prTypeNameModifier s interfaceName
      | AppT (ConT cN) (ConT tN) <- t, cN == ''Ptr, tN /= ''Void, tN /= ''Word32
      = conT $ mkName $ getModule tN ++ prTypeNameModifier s (nameBase tN)
      | AppT (ConT cN) (ConT tN) <- t, cN == ''PtrConst, tN == ''CChar
      = [t|Maybe String|]
      | Just enum <- argEnum, '.' `notElem` enum
      = conT (mkName $ prTypeNameModifier s $ prTypeNameModifier s interfaceName ++ "_" ++ enum)
      | Just enum <- argEnum, (obj, _ : enum') <- span (/= '.') enum
      = conT (mkName $ prEnumModule s enum ++ upperFirst obj ++ "_" ++ enum')
      | otherwise = pure t

    argTransform arg@Arg{..} t name
      | arg == argSelf
      = letE [ valD (conP (mkName $ prTypeNameModifier s interfaceName) [varP $ mkName "x"]) (normalB (varE name)) []] $ appE (varE 'return) $ varE $ mkName "x"
      | AppT (ConT cN) (ConT tN) <- t, cN == ''Ptr, tN /= ''Void, tN /= ''Word32
      = letE [ valD (conP (mkName $ getModule tN ++ prTypeNameModifier s (nameBase tN)) [varP $ mkName "x"]) (normalB (varE name)) []] $ appE (varE 'return) $ varE $ mkName "x"
      | AppT (ConT cN) (ConT tN) <- t, cN == ''PtrConst, tN == ''CChar
      = [|ConstPtr <$> maybe (pure nullPtr) (liftIO . newCString) $(varE name)|] -- note: cleanup in argFinalizer
      | Just enum <- argEnum, '.' `notElem` enum
      = letE [ valD (conP (mkName $ upperFirst interfaceName ++ "_" ++ enum) [varP $ mkName "x"]) (normalB (varE name)) []] $ appE (varE 'return) $ appE (varE 'fromIntegral) $ varE $ mkName "x"
      | Just enum <- argEnum, (obj, _ : enum') <- span (/= '.') enum
      = letE [ valD (conP (mkName $ prEnumModule s enum ++ upperFirst obj ++ "_" ++ enum') [varP $ mkName "x"]) (normalB (varE name)) []] $ appE (varE 'return) $ appE (varE 'fromIntegral) $ varE $ mkName "x"
      | otherwise = [|return $(varE name)|]

    argFinalizer t name
      | AppT (ConT cN) (ConT tN) <- t, cN == ''PtrConst, tN == ''CChar
      = Just [|when (unConstPtr $(varE name) /= nullPtr) $ liftIO . free $ unConstPtr $(varE name)|]
      | otherwise = Nothing

    resTransform (AppT (ConT _IO) (AppT (ConT _Ptr) (ConT obj))) name
      | obj /= ''Void = appE (varE 'return) $ appE (conE $ mkName $ prTypeNameModifier s $ nameBase obj) (varE name)
      | otherwise = appE (varE 'return) (varE name)
    resTransform _ name = appE (varE 'return) (varE name)

    getModule name = case nameModule name of
                  Just m' -> dropSuffix ".Generated" m' ++ "."
                  _ -> ""

argDoc :: Arg -> String
argDoc a
  | Just iface <- argInterface a = "@" ++ iface     ++ "@ (object: " ++ formatDescription (argSummary a) ++ ")"
  | Just enum <- argEnum a       = "@" ++ enum      ++ "@ (enum: " ++ formatDescription (argSummary a) ++ ")"
  | otherwise                    = "@" ++ argType a ++ "@ (" ++ formatDescription (argSummary a) ++ ")"

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
renderListenerEvents _ Interface{..} | null interfaceEvents = pure []
renderListenerEvents s Interface{..} = concat <$> sequence [ mkEvent, mkMkListener, mkHasListenerInst ]
  where
    eventN = mkName $ prInterfaceEvent s s interfaceName
    objN = prTypeNameModifier s interfaceName
    listenerN = mkName $ upperFirst interfaceName ++ "_listener"
    mkListenerName = mkName $ "mk" ++ objN ++ "Listener"

    mkEvent :: Q [Dec]
    mkEvent = do
      (TyConI (DataD _ _ _ _ [RecC _ recs] _)) <- reify listenerN
      cons <- mapM mkEvCon recs
      sequence [ dataD_doc (pure []) eventN [] Nothing cons (prEventDerive s "") (Just "") ]

    mkEvCon :: (Name, Bang, Type) -> Q (Q Con, Maybe String, [Maybe String])
    mkEvCon (evName', _, evType) = do
      let event = head [ e | e <- interfaceEvents, eventName e == dropSuffix "'" (nameBase evName') ]
          params = evParams $ nameBase evName'
          evConN = mkName $ objN ++ upperFirst (fromSnailCase $ nameBase evName')
          con = do
            fields <- forM (zip params $ getFields evType) $ \(arg, fT) -> do
              let name
                    | argName arg == "id", Just iface <- argInterface arg = prValueNameModifier s iface
                    | argName arg == "type" = "type'"
                     -- river wm fix
                    | argName arg `elem` ["hint", "state", "method", "methods", "button_map"], Just enum <- argEnum arg, (_, '.' : b) <- L.span (/= '.') enum = prValueNameModifier s b
                    | argName arg `elem` ["hint", "state", "method", "methods", "button_map"], Just enum <- argEnum arg, (a, "") <- L.span (/= '.') enum = prValueNameModifier s a
                    | otherwise = argName arg
              return (argTypeTrans arg fT, mkName $ fromSnailCase name)
            recC evConN [varBangType fN (bangType (bang sourceUnpack sourceStrict) fT) | (fT, fN) <- fields]

          doc = "'" ++ pprint evName' ++ "'\n\n"
             ++ formatDescription (snd $ eventDescription event) ++ "\n\n"
             ++ unlines ["- @" ++ argName a ++ "@: " ++ formatDescription (argSummary a) | a <- params]

      return (con, Just doc, [])

    mkMkListener :: Q [Dec]
    mkMkListener = do
      (TyConI (DataD _ _ _ _ [RecC recName recs] _)) <- reify listenerN
      sequence
        [ sigD mkListenerName [t|forall m. MonadIO m => ($(conT eventN) -> IO ()) -> m ($(conT (mkName $ objN ++ "Listener")))|]
        , funD_doc mkListenerName [mkListenerFun recName recs] (Just "This should be destroyed using destroyListener when no longer needed.") []
        ]

    mkHasListenerInst :: Q [Dec]
    mkHasListenerInst = do
      let listenerAddC = do
            pname <- newName "p"
            clause [conP (mkName objN) [varP pname]] (normalB (appE (varE (mkName $ interfaceName ++ "_add_listener")) (varE pname))) []
      let doc =
            """
            @
            listener <- 'Wayland.createListener' $ \\case ...
            'Wayland.listenerAdd' object listener ()
            @
            """
      sequence
        [ withDecDoc doc $ instanceD
          (pure [])
          (appT (conT ''HasListener) (conT $ mkName objN))
          [ tySynInstD $ tySynEqn Nothing (appT (conT ''ObjectListener)      (conT $ mkName objN)) (conT listenerN)
          , tySynInstD $ tySynEqn Nothing (appT (conT ''ObjectListenerEvent) (conT $ mkName objN)) (conT eventN)
          , funD 'createListener [clause [] (normalB $ varE mkListenerName) []]
          , funD 'objectListenerAdd [listenerAddC]
          , funD 'freeListener [mkFreeListener]
          ]
        , tySynD (mkName $ objN ++ "Listener") [] [t| PtrConst (ObjectListener $(conT $ mkName objN)) |]
        ]

    argSelf = Arg (prValueNameModifier s interfaceName) "" Nothing Nothing ""

    evParams ev =
      Arg "userdata" "" Nothing Nothing ""
      : argSelf
      : [ arg | IEvent{..} <- interfaceEvents, eventName == dropSuffix "'" ev, arg <- eventArgs ]

    mkFreeListener :: Q Clause
    mkFreeListener = do
      (TyConI (DataD _ _ _ _ [RecC conName recs] _)) <- reify listenerN
      ptrNm <- newName "p"
      funNames <- forM recs $ \_ -> newName "fun"
      let body = doE $
            [ bindS (conP conName [varP nm | nm <- funNames]) [|Foreign.peek (unConstPtr $(varE ptrNm))|] ] ++
            [ noBindS [|freeHaskellFunPtr $(varE nm)|] | nm <- funNames ] ++
            [ noBindS [|free $ unConstPtr $(varE ptrNm)|] ]
      clause [wildP, varP ptrNm] (normalB body) []

    mkListenerFun :: Name -> [VarBangType] -> Q Clause
    mkListenerFun recN recs = do
      handle <- newName "handle"
      listener <- newName "listener"

      funPtrs <- forM recs $ \(evN, _, evType) -> do
        nm <- newName "fp"
        let fields = getFields evType
            params = evParams $ nameBase evN
            conName = mkName $ objN ++ upperFirst (fromSnailCase $ nameBase evN)
        patNs <- forM fields $ \_ -> newName "a"
        argNs <- forM fields $ \_ -> newName "b"
        val <- appE (varE 'toFunPtr) $ lamE (map varP patNs) $ doE $
            [bindS (varP aN) (argTransform arg pT pN) | ((pN, aN), arg, pT) <- zip3 (zip patNs argNs) params fields ]
            ++ [noBindS $ varE handle `appE` appsE (conE conName : map varE argNs)]
        return (nm, val)

      let listenerExp = appE (varE 'return) $ appsE $ conE recN : map (varE . fst) funPtrs
      let body = normalB . appE (varE 'liftIO) . doE $
            [ bindS (varP nm) (pure rhs) | (nm, rhs) <- funPtrs] ++
            [ bindS (varP listener) listenerExp
            , noBindS (toPtr listener) ]

      clause [varP handle] body []

    argTypeTrans Arg{..} t
      | AppT (ConT cN) (ConT tN) <- t, cN == ''Ptr, nameBase tN == upperFirst interfaceName
      = conT $ mkName $ prTypeNameModifier s interfaceName
      | AppT (ConT cN) (ConT tN) <- t, cN == ''Ptr, tN /= ''Void
      = conT $ mkName $ prTypeNameModifier s $ nameBase tN
      | AppT (ConT cN) (ConT tN) <- t, cN == ''PtrConst, tN == ''CChar
      = conT ''String
      | Just enum <- argEnum, '.' `notElem` enum
      = conT (mkName $ upperFirst interfaceName ++ "_" ++ enum)
      | Just enum <- argEnum, (obj, _ : enum') <- span (/= '.') enum
      = conT (mkName $ prEnumModule s enum ++ upperFirst obj ++ "_" ++ enum')
      | otherwise = pure t

    argTransform arg@Arg{..} t name
      | arg == argSelf
      = appE (varE 'return) $ appE (conE (mkName $ prTypeNameModifier s interfaceName)) (varE name)

      | AppT (ConT cN) (ConT tN) <- t, cN == ''Ptr, tN /= ''Void
      = appE (varE 'return) $ appE (conE (mkName $ prTypeNameModifier s $ nameBase tN)) (varE name)

      | AppT (ConT cN) (ConT tN) <- t, cN == ''PtrConst, tN == ''CChar
      = [|let p = unConstPtr $(varE name) in if p == nullPtr then return "" else peekCString p|]

      | Just enum <- argEnum, '.' `notElem` enum
      = appE (varE 'return) $ appE (conE (mkName $ upperFirst interfaceName ++ "_" ++ enum)) (appE (varE 'fromIntegral) (varE name))

      | Just enum <- argEnum, (obj, _ : enum') <- span (/= '.') enum
      = appE (varE 'return) $ appE (conE (mkName $ prEnumModule s enum ++ upperFirst obj ++ "_" ++ enum')) (appE (varE 'fromIntegral) (varE name))

      | otherwise = [|return $(varE name)|]

-- | The generator hides the ConstPtr values... But we can re-create them here.
toConstPtr :: (Storable a) => a -> IO (ConstPtr a)
toConstPtr x = malloc >>= \ptr -> poke ptr x >> pure (ConstPtr ptr)

-- * Type utils

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

upperFirst :: String -> String
upperFirst (x : xs) = toUpper x : xs
upperFirst [] = []

--lowerFirst (x : xs) = toLower x : xs
--lowerFirst [] = []

formatDescription :: String -> String
formatDescription = concatMap escape
  where
    escape x
      | x `elem` ("\\/'`\"@<$#" :: [Char]) = "\\" ++ [x]
      | otherwise = [x]

-- * Misc.

-- MonadIO m => a -> m (PtrConst a)
toPtr :: Name -> Q Exp
toPtr name = [|unsafeFromPtr <$> new $(varE name)|]
