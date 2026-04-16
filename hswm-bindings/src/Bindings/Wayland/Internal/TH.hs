{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE MultilineStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TemplateHaskellQuotes #-}
{-# LANGUAGE NoTemplateHaskell #-}

module Bindings.Wayland.Internal.TH (module Bindings.Wayland.Internal.TH) where

import           Control.Arrow
import           Control.DeepSeq (NFData)
import           Control.Monad
import           Control.Monad.IO.Class
import           Data.Char (toLower, toUpper)
import           Data.Default as Bindings.Wayland.Internal.TH
import           Data.Hashable (Hashable)
import qualified Data.List as L
import           Data.Maybe
import           Data.String (IsString(..))
import           Data.Text (Text)
import qualified Data.Text as T
import           Data.Void
import           Foreign
import           Foreign.C
import           Foreign.C.ConstPtr
import           GHC.Generics (Generic)
import           GHC.Stack
import           HsBindgen.Runtime.Prelude
import           HsBindgen.Runtime.PtrConst
import           Language.Haskell.TH
import           Language.Haskell.TH.Syntax
import           Prelude hiding (head)
import           System.IO.Unsafe (unsafePerformIO)
import qualified Text.XML as X
import           Text.XML.Cursor
import GHC.Records

import           Bindings.Wayland.Internal.Types

commonSettings :: ProtocolRenderSettings
commonSettings = def
  { prTypeNameModifier = upperFirst . fromSnailCase
    . dropPrefix "Wl_" . dropPrefix "wl_"
    . dropPrefix "Wp_" . dropPrefix "wp_"
    . dropPrefix "zwp_" . dropPrefix "Zwp_"
    . dropPrefix "ext_" . dropPrefix "Ext_"
    . dropPrefix "zwlr_" . dropPrefix "Zwlr_"
    . dropPrefix "zxdg_" . dropPrefix "Zxdg_"
    . dropSuffix "_v1" . dropSuffix "_v2"
  , prValueNameModifier = fromSnailCase
    . dropPrefix "wl_"
    . dropPrefix "zwp_"
    . dropPrefix "zwlr_"
    . dropPrefix "zxdg_"
    . dropPrefix "wp_"
    . dropPrefix "ext_"
    . dropSuffix "_v1" . dropSuffix "_v2"
  }

head :: HasCallStack => [a] -> a
head (x:_) = x
head _ = error $ "head: empty list: " ++ prettyCallStack callStack

-- * Protocol XML

data Protocol = Protocol
  { protocolName :: String
  , protocolCopyright :: Text
  , protocolDescription :: (String, String)
  , protocolInterfaces :: [Interface]
  } deriving (Show, Eq, Generic)

data Interface = Interface
  { interfaceName :: String
  , interfaceVersion :: Int
  , interfaceDescription :: (String, String)
  , interfaceEnums :: [IEnum]
  , interfaceRequests :: [IRequest]
  , interfaceEvents :: [IEvent]
  } deriving (Show, Eq, Generic)

data IEnum = IEnum
  { enumName :: String
  , enumEntries :: [EnumEntry]
  } deriving (Show, Eq, Generic)

data EnumEntry = EnumEntry
  { entryName :: String
  , entryValue :: String
  , entrySummary :: String
  } deriving (Show, Eq, Generic)

data IRequest = IRequest
  { requestName :: String
  , requestDescription :: (String, String)
  , requestType :: Maybe Text
  , requestArgs :: [Arg]
  } deriving (Show, Eq, Generic)

data Arg = Arg
  { argName :: String
  , argType :: String
  , argEnum :: Maybe String
  , argInterface :: Maybe String
  , argSummary :: String
  } deriving (Show, Eq, Generic)

data IEvent = IEvent
  { eventName :: String
  , eventDescription :: (String, String)
  , eventArgs :: [Arg]
  } deriving (Show, Eq, Generic)

clientFromProtocolXML :: ProtocolRenderSettings -> FilePath ->  Q [Dec]
clientFromProtocolXML settings filepath = do
  pkgRoot <- getPackageRoot
  protoDoc <- runIO $ X.readFile X.def (pkgRoot ++ "/protocol/" ++ filepath)
  let proto = prProtocolModifier settings $ protocolFromXML $ fromDocument protoDoc

  -- runIO $ print proto
  addModFinalizer $ putDoc ModuleDoc $ unlines $
    [ "Description: " ++ fst (protocolDescription proto)
    , "Stability: unstable"
    , "Portability: unportable"
    , ""
    , "__Protocol:__ @" ++ protocolName proto ++ "@"
    , ""
    , formatDescription (snd $ protocolDescription proto)
    , ""
    ]
    ++ [ ifaceDoc settings iface | iface <- protocolInterfaces proto ]
    ++ [ "\n__Protocol copyright:__ " ++ T.unpack (protocolCopyright proto) ]

  concat <$> forM (protocolInterfaces proto) (renderInterface settings)

ifaceDoc :: ProtocolRenderSettings -> Interface -> String
ifaceDoc ProtocolRenderSettings{..} Interface{..} = unlines $
  [ "__Interface__: '" ++ prTypeNameModifier interfaceName ++ "' (" ++ interfaceName ++ ")"
  , ""
  ]
  ++ [ "  - Request: '" ++ prValueNameModifier (prValueNameModifier interfaceName ++ "_" ++ requestName) ++ "'\n" | IRequest{..} <- interfaceRequests ]
  ++ [ "  - Event: v'" ++ prTypeNameModifier (prTypeNameModifier interfaceName ++ "_" ++ eventName) ++ "'\n" | IEvent{..} <- interfaceEvents ]
  ++ [ "  - Enum: t'" ++ prTypeNameModifier (prTypeNameModifier interfaceName ++ "_" ++ enumName) ++ "'\n" | IEnum{..} <- interfaceEnums ]

data ProtocolRenderSettings = ProtocolRenderSettings
  { prValueNameModifier :: String -> String
  , prTypeNameModifier :: String -> String
  , prInterfaceName :: ProtocolRenderSettings -> String -> String
  , prRequestOptions :: [(String, String, RequestSettings)]
  , prEnumModule :: String -> String
  , prProtocolModifier :: Protocol -> Protocol
  }

instance Default ProtocolRenderSettings where
  def = ProtocolRenderSettings
    fromSnailCase
    (upperFirst . fromSnailCase)
    (\s -> prValueNameModifier s . (++ "_interface") . prValueNameModifier s)
    []
    (\name -> case () of
      _ | "wl_" `L.isPrefixOf` name -> "Bindings.Wayland.Client."
        | otherwise -> ""
    )
    id

data RequestSettings = RequestSettings
  { reqErrnoIfError :: Bool
  , reqCheckNull :: Bool
  , reqCheckMinusOne :: Bool
  }

instance Default RequestSettings where
  def = RequestSettings False False False

renderInterface :: ProtocolRenderSettings -> Interface -> Q [Dec]
renderInterface s@ProtocolRenderSettings{..} iface@Interface{..} = do
  let ifN = mkName $ interfaceName <> "_interface"
  let ifT = reifyType $ mkName $ interfaceName <> "_interface"
  let ifN' = mkName $ prInterfaceName s interfaceName
  let doc = "Interface: @" ++ interfaceName ++ "@, version: " ++ show interfaceVersion ++ "\n\n" ++ formatDescription (snd interfaceDescription)
  ifaceD <- sequence
    [ sigD ifN' (appT [t|ConstPtr|] ifT)
    , pragInlD ifN' NoInline FunLike AllPhases
    , funD_doc ifN' [clause [] (normalB [|unsafePerformIO $ toConstPtr $(varE ifN)|]) []] (Just doc) []
    ]
  objectD <- renderInterfaceObject s iface
  enumsD <- concat <$> mapM (renderEnum s iface) interfaceEnums
  requestsD <- concat <$> mapM (renderRequest s iface) interfaceRequests
  let hasListener = not $ null interfaceEvents
  listenerEventsD <- if hasListener then renderListenerEvents s iface else pure []
  return $ objectD ++ ifaceD ++ enumsD ++ requestsD ++ listenerEventsD

renderEnum :: ProtocolRenderSettings -> Interface -> IEnum -> Q [Dec]
renderEnum s Interface{..} IEnum{..} = do
  let enumN = mkName $ prTypeNameModifier s $ prTypeNameModifier s interfaceName ++ "_" ++ enumName
      enumT = mkName $ upperFirst interfaceName ++ "_" ++ enumName

  mdoc <- getDoc $ DeclDoc enumT
  let doc = fromMaybe "" mdoc
  typD <- withDecDoc doc $ tySynD enumN [] (conT enumT)
  entriesD <- concat <$> mapM renderEnumEntry enumEntries
  return $ typD : entriesD
  where
    renderEnumEntry EnumEntry{..} = do
      let enumN = mkName $ prTypeNameModifier s $ prTypeNameModifier s interfaceName ++ "_" ++ enumName
      let eN = mkName $ fromSnailCase $ prValueNameModifier s interfaceName ++ "_" ++ enumName ++ "_" ++ entryName
      let doc = formatDescription entrySummary ++ "\n\nValue: " ++ entryValue
      let body = [|toCEnum $(litE $ integerL $ read entryValue)|]
      sequence
       [ funD_doc eN [clause [] (normalB body) []] (Just doc) []
       , sigD eN (conT enumN)
       ]

renderInterfaceObject :: ProtocolRenderSettings -> Interface -> Q [Dec]
renderInterfaceObject s Interface{..} = do
  let objT = mkName $ upperFirst interfaceName
  let ntName = mkName $ prTypeNameModifier s interfaceName
  let deriv = derivClause Nothing [ [t|Eq|]
                           , [t|Ord|]
                           , [t|Storable|]
                           , [t|Generic|]
                           , [t|Hashable|]
                           , [t|NFData|]
                           , [t|IsUserData|] -- via NT (Ptr)
                                  ]

  let doc = formatDescription (snd interfaceDescription)
        ++ "\n\nEnums: " ++ unwords [ enumName e | e <- interfaceEnums ]
        ++ "\n\nRequests: " ++ unwords [ requestName r | r <- interfaceRequests ]
        ++ "\n\nEvents: " ++ unwords [ eventName e | e <- interfaceEvents ]

  ntD <- newtypeD_doc (pure []) ntName [] Nothing
      (recC ntName [ varBangType (mkName "unwrap") (bangType (bang noSourceUnpackedness noSourceStrictness) [t|Ptr $(conT objT)|]) ], Nothing, [])
      [deriv] (Just doc)
  showID <- [d|
    instance Show $(conT ntName) where show = show . ptrToWordPtr . getField @"unwrap"
    instance Read $(conT ntName) where readsPrec n xs = first ($(conE ntName) . wordPtrToPtr) <$> readsPrec n xs
    |]

  let hasDestroy = any (\x -> requestType x == Just "destructor") interfaceRequests

  let getFn fn = mkName $ interfaceName ++ "_" ++ fn

  let destroyDocS = unlines [ formatDescription (snd $ requestDescription r) | r <- interfaceRequests, requestType r == Just "destructor" ]
  destroyD <- withDecsDoc destroyDocS (if hasDestroy then [d|
    instance HasDestructor $(conT ntName) where
      objectDestroy $(conP ntName [[p|x|]]) = $(varE (getFn "destroy")) x
    |] else pure [])

  let docIF = "@" ++ show (interfaceName, interfaceVersion) ++ "@"
  hasIFD <- withDecsDoc docIF [d|
    instance HasInterface $(conT ntName) where
      type instance InterfaceType $(conT ntName) = $(conT $ mkName "Wl_interface")
      objectInterface _ = $(varE $ mkName $ prInterfaceName s s interfaceName)
      objectInterfaceName _ = $(litE $ stringL interfaceName)
      objectInterfaceVersion _ = $(litE $ integerL $ fromIntegral interfaceVersion)
      objectBindWrap = $(conE $ mkName $ prTypeNameModifier s interfaceName) . castPtr
    |]

  return $ ntD : showID ++ hasIFD ++ destroyD

renderRequest :: ProtocolRenderSettings -> Interface -> IRequest -> Q [Dec]
renderRequest _ _ r | requestType r == Just "destructor" = pure []
renderRequest s Interface{..} IRequest{..}  = do
  let reqN = mkName $ prValueNameModifier s $ prValueNameModifier s interfaceName ++ "_" ++ requestName

  VarI f_name f_type _ <- reify $ mkName $ interfaceName ++ "_" ++ requestName
  let (argsT, resT) = (init &&& last) $ getArrowArgs f_type
  let rargs' = filter (\x -> argType x /= "new_id") requestArgs
  let rargs = [ argSelf | (AppT (ConT _cN) (ConT tN)) : _ <- [argsT], nameBase tN == upperFirst interfaceName ] ++  rargs' ++ repeat argUnknown
  let argRes = fromMaybe (Arg "id" "" Nothing Nothing "") $ L.find (\x -> argType x == "new_id") requestArgs

  let doc = unlines $ [ formatDescription (snd requestDescription)
                      , "\n\nArgs: " ++ unlines [ argDoc a ++ "\n" | a <- requestArgs ]
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
  sequence
    [ sigD reqN (toTypeTop (zip argsT rargs) (resT, argRes))
    , funD_doc reqN [clause c_pat body []] (Just doc) []
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
  | Just iface <- argInterface a = "@" ++ iface ++ "@ (object): " ++ formatDescription (argSummary a)
  | Just enum <- argEnum a = "@" ++ enum ++ "@ (enum): " ++ formatDescription (argSummary a)
  | otherwise = argType a ++ " " ++ formatDescription (argSummary a)

renderListenerEvents :: ProtocolRenderSettings -> Interface -> Q [Dec]
renderListenerEvents s Interface{..} = do
  -- instance AddListener Foobar
  -- type FoobarListener = ...
  listenerD <- mkAddListenerInst
  -- data FoobarEvent
  -- mkFoobarListener
  eventD <- mkEvent
  return $ listenerD ++ eventD
  where
    objN = prTypeNameModifier s interfaceName
    listenerN = mkName $ upperFirst interfaceName ++ "_listener"
    evName = mkName $ objN ++ "Event"
    mkListenerName = mkName $ "mk" ++ objN ++ "Listener"

    mkAddListenerInst :: Q [Dec]
    mkAddListenerInst = do
      let mk_clause = do
            pname <- newName "p"
            clause [conP (mkName objN) [varP pname]] (normalB (appE (varE (mkName $ interfaceName ++ "_add_listener")) (varE pname))) []
      let docAddListenerS =
            """
            @
            listener <- 'mk""" ++ objN ++ """Listener'
            'Bindings.Wayland.Internal.Types.listenerAdd' object listener nullPtr
            @
            """
      sequence
        [ withDecDoc docAddListenerS $ instanceD
          (pure [])
          (appT (conT ''AddListener) (conT $ mkName objN))
          [ tySynInstD $ tySynEqn Nothing (appT (conT ''ObjectListener) (conT $ mkName objN)) (conT listenerN),
            funD 'objectListenerAdd [mk_clause]
          ]
        , tySynD (mkName $ objN ++ "Listener") [] [t| PtrConst (ObjectListener $(conT $ mkName objN)) |]
        ]

    argSelf = Arg (prValueNameModifier s interfaceName) "" Nothing Nothing ""

    evParams ev =
      Arg "userdata" "" Nothing Nothing ""
      : argSelf
      : [ arg | IEvent{..} <- interfaceEvents, eventName == dropSuffix "'" ev, arg <- eventArgs ]

    mkEvent :: Q [Dec]
    mkEvent = do
      (TyConI (DataD _ _ _ _ [RecC recName recs] _)) <- reify listenerN
      cons <- mapM mkEvCon recs
      sequence
        [ dataD_doc (pure []) evName [] Nothing cons [derivClause Nothing [conT ''Eq, conT ''Show, conT ''Generic]] (Just "")
        , sigD mkListenerName [t|forall m. MonadIO m => ($(conT evName) -> IO ()) -> m ($(conT (mkName $ objN ++ "Listener")))|]
        , funD_doc mkListenerName [mkListenerFun recName recs] (Just "This should be destroyed using destroyListener when no longer needed.") []
        , instanceD
            (pure [])
            (appT (conT ''ListenerEvent) (conT evName))
            [ tySynInstD $ tySynEqn Nothing (appT (conT ''Listener) (conT evName)) (conT listenerN),
              funD 'freeListener [mkFreeListener recName recs]
            ]
        ]

    mkFreeListener conName recs' = do
      funNames <- forM recs' $ \_ -> newName "fun"
      clause
        [wildP, conP conName [varP nm | nm <- funNames]]
        (normalB $ doE [noBindS [|freeHaskellFunPtr $(varE nm)|] | nm <- funNames])
        []

    mkListenerFun :: Name -> [VarBangType] -> Q Clause
    mkListenerFun recN recs = do
      handle <- newName "handle"
      listener <- newName "listener"
      funNs <- forM recs $ \_ -> newName "f"
      funPtrs <- forM recs $ \(evN, _, evType) -> do
        let fields = getFields evType
            conName = mkName $ objN ++ upperFirst (fromSnailCase $ nameBase evN)
        let params = evParams $ nameBase evN
        patNs <- forM fields $ \_ -> newName "a"
        argNs <- forM fields $ \_ -> newName "b"
        appE (varE 'toFunPtr) $ lamE (map varP patNs) $ doE $
            [bindS (varP aN) (argTransform arg pT pN) | ((pN, aN), arg, pT) <- zip3 (zip patNs argNs) params fields ]
            ++ [noBindS $ appE (varE handle) $ appsE $ conE conName : map varE argNs]

      listenerExp <- appE (varE 'return) $ appsE $ conE recN : map varE funNs
      let stmts = [bindS (varP nm) (pure rhs) | (nm, rhs) <- zip funNs funPtrs] ++ [bindS (varP listener) (pure listenerExp), noBindS (toPtr listener)]
      clause [varP handle] (normalB $ appE (varE 'liftIO) $ doE stmts) []

    -- MonadIO m => a -> m (PtrConst a)
    toPtr name = [|unsafeFromPtr <$> new $(varE name)|]

    mkEvCon :: (Name, Bang, Type) -> Q (Q Con, Maybe String, [Maybe String])
    mkEvCon (evName', _, evType) = do
      let event = head [ e | e <- interfaceEvents, eventName e == dropSuffix "'" (nameBase evName') ]
      -- mdoc <- getDoc $ DeclDoc evName'
      let params = evParams $ nameBase evName'
      let evConN = mkName $ objN ++ upperFirst (fromSnailCase $ nameBase evName')
      let doc = "'" ++ pprint evName' ++ "'\n\n"
             ++ formatDescription (snd $ eventDescription event)
             ++ "\n\n" ++ unlines ["- @" ++ argName a ++ "@:" ++ formatDescription (argSummary a) | a <- params]
             -- ++ "\n\n" ++ fromMaybe "" mdoc
      let con = do
            fields <- forM (zip params $ getFields evType) $ \(arg, fT) -> do
              let name
                    | argName arg == "id", Just iface <- argInterface arg = prValueNameModifier s iface
                     -- river wm fix
                    | argName arg `elem` ["hint", "state", "method", "methods", "button_map"], Just enum <- argEnum arg, (_, '.' : b) <- L.span (/= '.') enum = prValueNameModifier s b
                    | argName arg `elem` ["hint", "state", "method", "methods", "button_map"], Just enum <- argEnum arg, (a, "") <- L.span (/= '.') enum = prValueNameModifier s a
                    | argName arg == "type" = "type'"
                    | otherwise = argName arg
              return (argTypeTrans arg fT, mkName $ fromSnailCase name)
            recC evConN [varBangType fN (bangType (bang noSourceUnpackedness sourceStrict) fT) | (fT, fN) <- fields]
      length doc `seq` return (con, Just doc, [])

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
      -- = appE (varE 'peekCString) $ appE (varE 'unConstPtr) (varE name)
      = [|let p = unConstPtr $(varE name) in if p == nullPtr then return "" else peekCString p|]
      | Just enum <- argEnum, '.' `notElem` enum
      = appE (varE 'return) $ appE (conE (mkName $ upperFirst interfaceName ++ "_" ++ enum)) (appE (varE 'fromIntegral) (varE name))
      | Just enum <- argEnum, (obj, _ : enum') <- span (/= '.') enum
      = appE (varE 'return) $ appE (conE (mkName $ prEnumModule s enum ++ upperFirst obj ++ "_" ++ enum')) (appE (varE 'fromIntegral) (varE name))
      | otherwise = [|return $(varE name)|]

formatDescription :: String -> String
formatDescription = concatMap escape
  where
    escape x
      | x `elem` ("\\/'`\"@<$#" :: [Char]) = "\\" ++ [x]
      | otherwise = [x]

protocolFromXML :: Cursor -> Protocol
protocolFromXML root = Protocol (name root) (contents $ root $/ element "copyright") (getDescription root)
  (map getInterface $ root $/ element "interface")
  where
    name = T.unpack . head . attribute "name"
    contents = T.unlines . concatMap ($.// content)
    summary = fromMaybe "" . listToMaybe . attribute "summary"

    getInterface e = Interface (name e) (read . T.unpack . head $ attribute "version" e) (getDescription e)
      (map getEnum $ e $/ element "enum")
      (map getRequest $ e $/ element "request")
      (map getEvent $ e $/ element "event")
    -- XXX: summary attribute ignored
    getDescription e = (unlines . map (T.unpack . summary) $ e $/ element "description", T.unpack . contents $ e $/ element "description")
    getEnum e = IEnum (name e) (map getEntry $ e $/ element "entry")
    getEntry e = EnumEntry (name e)
      (T.unpack . head $ attribute "value" e)
      (unlines . map T.unpack $ attribute "summary" e)
    getRequest e = IRequest (name e)
      (getDescription e)
      (listToMaybe $ attribute "type" e)
      (map getArg $ e $/ element "arg")
    getArg e = Arg (name e)
      (T.unpack . head $ attribute "type" e)
      (fmap T.unpack . listToMaybe $ attribute "enum" e)
      (fmap T.unpack . listToMaybe $ attribute "interface" e)
      (T.unpack $ summary e)
    getEvent e = IEvent (name e) (getDescription e) (map getArg $ e $/ element "arg")

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
    objEventFieldNames :: [(String, [String])], -- ^ Per-event record field names
    objDeriveShow :: Bool
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
    True

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
      [derivClause Nothing $ [ [t|Eq|]
                           , [t|Ord|]
                           , [t|Storable|]
                           , [t|Generic|]
                           , [t|Hashable|]
                           , [t|NFData|]
                           , [t|IsUserData|] -- via NT (Ptr)
                           ] ++ [ [t|Show|] | objDeriveShow cfg ]

      ]
                           -- XXX: [t|Data|]]] Data a => Data (Ptr a)
      (Just $ "See '" ++ pprint (objType cfg) ++ "'")
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
        version <- 'Bindings.Wayland.Internal.Types.getVersion' object
        'Bindings.Wayland.Internal.Types.setUserData' object (castPtr userData)
        userData <- fmap castPtr 'Bindings.Wayland.Internal.Types.getUserData' object
        @
        """
      destroyDocS =
        """
        @
        'Bindings.Wayland.Internal.Types.objectDestroy' object
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
            'Bindings.Wayland.Internal.Types.listenerAdd' object listener nullPtr
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
      f_doc <- getDoc $ DeclDoc f_name
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
          docStr = unlines $
            maybeToList f_doc
            ++ [ nameBase nm ++ " " ++ unwords [ fromMaybe "_" (fa_doc oa) | (_, oa) <- zip [(1::Int)..] of_args ] ]
            ++ ["\nSee: '" ++ nameBase f_name ++ "'"]
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
      cons <- mapM mkEvCon recs
      sequence
        [ dataD_doc (pure []) evName [] Nothing cons
            [derivClause Nothing [conT ''Eq, conT ''Show, conT ''Generic]]
            (Just "")

        , sigD (mkName $ "mk" ++ listenerName') [t|($(conT evName) -> IO ()) -> IO ($(conT (mkName $ objTypePrefix ++ "Listener")))|]
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

        mkEvCon :: (Name, Bang, Type) -> Q (Q Con, Maybe String, [Maybe String])
        mkEvCon (evName, _bang, evType) = do
          mdoc <- getDoc $ DeclDoc evName
          return (con, Just $ "'" ++ pprint evName ++ "'\n\n" ++ fromMaybe "" mdoc, [])
         where
           con = do
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
                      [|(if unConstPtr $(varE anm) == nullPtr then pure "" else peekCString (unConstPtr $(varE anm))) >>= $(lamE [varP arg] (toEventE (args ++ [varE arg]) xs))|]
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
