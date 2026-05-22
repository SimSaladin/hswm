{-# LANGUAGE TemplateHaskellQuotes #-}

module Wayland.Internal.TH.NewType where

import           Wayland.Types

import           Language.Haskell.TH

import           Control.Arrow
import           Foreign
import           GHC.Generics (Generic)
import           Control.DeepSeq (NFData)
import           Data.Hashable (Hashable)
import           GHC.Records

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
