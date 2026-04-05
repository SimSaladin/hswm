{-# LANGUAGE TypeFamilies #-}

------------------------------------------------------------------------------
-- |
-- Module      : Wayland.Client.Internal.Types
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
--
------------------------------------------------------------------------------
module Wayland.Client.Internal.Types
  ( module Wayland.Client.Internal.Types
  , module HsBindgen.Runtime.Prelude
  ) where

import           HsBindgen.Runtime.Prelude (ToFunPtr(..), FromFunPtr(..), PtrConst)
import Data.Proxy
import Data.Kind (Type)
import Foreign.C
import Foreign
import Data.Void

class ListenerEvent ev where
  type Listener ev :: Type
  freeListener :: Proxy ev -> Listener ev -> IO ()

class IsWlObject object where
  getVersion :: object -> IO Word32
  getUserData :: object -> IO (Ptr Void)
  setUserData :: object -> Ptr Void -> IO ()

class AddListener object where
  type ObjectListener object :: Type
  listenerAdd :: object -> PtrConst (ObjectListener object) -> Ptr Void -> IO CInt

class HasDestructor object where
  objectDestroy :: object -> IO ()
