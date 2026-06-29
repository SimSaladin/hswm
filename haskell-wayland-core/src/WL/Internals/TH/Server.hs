{-# LANGUAGE RecordWildCards #-}

-- |
-- Module      : WL.Internals.TH.Server
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module WL.Internals.TH.Server where

import           Distribution.Wayland.ProtocolXML
import           WL.Internals.Types
import           WL.Internals.TH (ProtocolRenderSettings(..))
import qualified WL.Internals.TH as C

import           Control.Arrow
import           Control.DeepSeq (NFData)
import           Control.Exception (finally)
import           Control.Monad
import           Control.Monad.IO.Class
import           Data.Coerce
import           Data.Data (Data)
import           Data.Default
import           Data.Hashable (Hashable)
import qualified Data.List as L
import qualified Data.List.NonEmpty as NE
import           Data.Maybe
import           Data.Void
import           Foreign
import           Foreign.C
import           Foreign.C.ConstPtr
import           GHC.Generics (Generic, Generically(..))
import           GHC.Records (getField)
import           Language.Haskell.TH
import           Language.Haskell.TH.Syntax
import           System.Posix
import GHC.Exts

serverFromProtocolXML :: ProtocolRenderSettings -> String ->  Q [Dec]
serverFromProtocolXML s content = serverFromProtocol s (protocolFromString content)

serverFromProtocol :: ProtocolRenderSettings -> Protocol ->  Q [Dec]
serverFromProtocol s proto = do
  concat <$> forM proto.interfaces (renderInterface s)

renderInterface :: ProtocolRenderSettings -> Interface -> Q [Dec]
renderInterface s iface = concat <$> sequence
  [ renderInterfaceObject s iface
  ]

renderInterfaceObject :: ProtocolRenderSettings -> Interface -> Q [Dec]
renderInterfaceObject s iface = concat <$> sequence [ renderNT ] -- , renderIsWlObject, renderDestroy, renderHasIF ]
  where
    ntName = mkName $ s.prTypeNameModifier iface.name

    renderNT = C.renderNewType ntName (mkName $ C.upperFirst iface.name) $ C.formatDescription iface.description

makeWrappedNT :: ProtocolRenderSettings -> Name -> Q [Dec]
makeWrappedNT s name = C.renderNewType wName name ""
  where
    wName = mkName $ s.prTypeNameModifier (nameBase name)

data MethodConf = MethodConf
  { methodName :: String
  , methodUsage :: Maybe String
  , methodArgs :: [MArgConf]
  , methodResType :: Maybe (Q Type)
  , methodResTrans :: Maybe (Q Exp)
  , methodRetCheck :: Maybe (Q Exp)
  } deriving (Generic)

instance Default MethodConf where
  def = MethodConf
    { methodName = undefined
    , methodUsage = Nothing
    , methodArgs = []
    , methodResType = Nothing
    , methodResTrans = Nothing
    , methodRetCheck = Nothing
    }

instance IsString MethodConf where
  fromString str = def { methodName = str }

data MArgConf = MArgConf
  { argName :: Maybe String
  , argType :: Maybe (Q Type)
  , argTrans :: Maybe (Name -> Q Exp)
  , argCleanup :: Maybe (Q Exp)
  , argHelp :: Maybe String
  } deriving (Generic)

instance Default MArgConf where
  def = MArgConf
    { argName = Nothing
    , argHelp = Nothing
    , argType = Nothing
    , argTrans = Nothing
    , argCleanup = Nothing
    }

instance IsString MArgConf where
  fromString str = def { argName = Just str }

argument :: MArgConf -> MethodConf -> MethodConf
argument arg x = x { methodArgs = x.methodArgs ++ [arg] }

describe :: String -> MArgConf -> MArgConf
describe txt x = x { argHelp = Just txt }

coercedAs :: Q Type -> MArgConf -> MArgConf
coercedAs ty x = x { argType = Just ty, argTrans = Just (\nm -> [|pure (coerce $(varE nm))|]) }

stringInput :: MArgConf -> MArgConf
stringInput x = x
  { argType = Just [t|String|]
  , argTrans = Just $ \nm -> [| liftIO $! fmap coerce $! newCString $(varE nm) |]
  , argCleanup = Just [| free . coerce |]
  }

usage :: String -> MethodConf -> MethodConf
usage txt x = x { methodUsage = Just txt }

throwIfMinus1 :: MethodConf -> MethodConf
throwIfMinus1 x = x { methodRetCheck = Just [|throwErrnoIfMinus1 $(litE $ stringL $ x.methodName ++ " returned NULL!")|] }

throwIfMinus1_ :: MethodConf -> MethodConf
throwIfMinus1_ x = x
  { methodRetCheck = Just [|throwErrnoIfMinus1_ $(litE $ stringL $ x.methodName ++ " returned NULL!")|]
  , methodResType = Just [t|()|]
  , methodResTrans = Just [|return|]
  }

checkNotNull :: MethodConf -> MethodConf
checkNotNull x = x { methodRetCheck = Just [|throwErrnoIfNull $(litE $ stringL $ x.methodName ++ " returned NULL!")|] }

-- PtrConst
checkNotNull' :: MethodConf -> MethodConf
checkNotNull' x = x { methodRetCheck = Just [|fmap ConstPtr . throwErrnoIfNull $(litE $ stringL $ x.methodName ++ " returned NULL!") . fmap unConstPtr |] }

makeMethodWrappers :: ProtocolRenderSettings -> Name -> String -> [MethodConf] -> Q [Dec]
makeMethodWrappers s name methodPrefix methods = do
  concat <$> forM [x { methodName = methodPrefix <> x.methodName } | x <- methods] make
  where
    make MethodConf{..} = do
      let methodArgs' = methodArgs ++ repeat def
      let wName = mkName $ s.prValueNameModifier methodName
      (tyArgs, tyRes) <- (init &&& last) . C.getArrowArgs <$> reifyType (mkName methodName)
      as <- replicateM (length tyArgs) (newName "a")
      bs <- replicateM (length tyArgs) (newName "b")
      ret <- newName "ret"
      sequence
        [ sigD wName [t|forall m. MonadIO m => $(appsT ([ fromMaybe (argTypeTrans t) x.argType | (t, x) <- zip tyArgs methodArgs' ] ++
            [resTypeTrans methodResType tyRes]))|]
        , funD_doc wName
          [ clause [varP a | (a, _) <- zip as tyArgs]
            (normalB $ doE $
              [ bindS (varP b) (fromMaybe (argTrans t) x.argTrans a) | (a, b, (t, x)) <- zip3 as bs (zip tyArgs methodArgs') ] ++
              [ bindS (varP ret) [|liftIO $
                  $(fromMaybe (varE 'id) methodRetCheck)
                    $(appsE $ map varE $ mkName methodName : bs)
                      >>= $(fromMaybe (resTrans tyRes) methodResTrans) |]
              ] ++
              [ noBindS [|liftIO $ $(cleanup) $(varE b)|] | (b, x) <- zip bs methodArgs, cleanup <- maybeToList x.argCleanup ] ++
              [ noBindS [|return $(varE ret)|] ]
            ) []
          ]
          (Just $ "'" ++ methodName ++ "'" ++ maybe "" (\str -> "\n\n" ++ str) methodUsage)
          [ if doc /= "" then Just doc else Nothing
            | x <- methodArgs
            , let doc = maybe "" (\name -> "@" ++ name ++ "@ ") x.argName ++ fromMaybe "" x.argHelp
          ]
        ]

    notWrapper = [ ''Void, ''Word32, ''ProcessID, ''GroupID, ''UserID, ''CChar ]

    argTypeTrans ty
      | AppT (ConT outerTy) (ConT innerTy) <- ty, outerTy == ''Ptr, innerTy `notElem` notWrapper
      = case () of
          _ | nameBase innerTy == "Wl_list" -> [t|$(conT $ mkName "List") Void|]
            | otherwise                     -> conT $ mkName (s.prTypeNameModifier (nameBase innerTy))
      | AppT (ConT outerTy) (ConT innerTy) <- ty, outerTy == ''PtrConst, innerTy `notElem` notWrapper
      = case () of
          _ | otherwise                     -> conT $ mkName (s.prTypeNameModifier (nameBase innerTy))
      | otherwise = pure ty

    argTrans ty x
      | AppT (ConT outerTy) (ConT innerTy) <- ty, outerTy == ''Ptr, innerTy `notElem` notWrapper
      = case () of
          _ | nameBase innerTy == "Wl_list" -> [|pure $! (.unwrap) $(varE x)|]
            | otherwise                     -> [|pure $! (.unwrap) $(varE x)|]
      | AppT (ConT outerTy) (ConT innerTy) <- ty, outerTy == ''PtrConst, innerTy `notElem` notWrapper
      = case () of
          _ | otherwise                     -> [|pure $! ConstPtr $! (.unwrap) $(varE x)|]
      | otherwise = [|pure $(varE x)|]

    resTypeTrans minner ty
      | AppT (ConT outerTy) innerTy <- ty, outerTy == ''IO
      = [t|$(varT (mkName "m")) $(fromMaybe (argTypeTrans innerTy) minner)|]
      | otherwise = argTypeTrans ty

    resTrans ty
      | AppT (ConT outerTy) (AppT (ConT ptrTy) (ConT innerTy)) <- ty, outerTy == ''IO, ptrTy == ''Ptr, innerTy `notElem` notWrapper
      = [|return . $(conE $ mkName (s.prTypeNameModifier (nameBase innerTy)))|]
      | AppT (ConT outerTy) (AppT (ConT ptrTy) (ConT innerTy)) <- ty, outerTy == ''IO, ptrTy == ''PtrConst, innerTy `notElem` notWrapper
      = [|return . $(conE $ mkName (s.prTypeNameModifier (nameBase innerTy))) . unConstPtr|]
      | otherwise = [|return|]

appsT :: [Q Type] -> Q Type
appsT      [x] = x
appsT (x : xs) = appT (appT arrowT x) (appsT xs)
appsT        _ = [t|()|]
