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
import Control.Monad

class ListenerEvent ev where
  type Listener ev :: Type
  freeListener :: Proxy ev -> Listener ev -> IO ()

class IsWlObject object where
  getVersion :: object -> IO Word32
  getUserData :: object -> IO (Ptr Void)
  setUserData :: object -> Ptr Void -> IO ()

class AddListener object where
  type ObjectListener object :: Type
  objectListenerAdd :: object -> PtrConst (ObjectListener object) -> Ptr Void -> IO CInt

class HasDestructor object where
  objectDestroy :: object -> IO ()

listenerAdd :: (AddListener a, IsUserData ud) => a -> PtrConst (ObjectListener a) -> ud -> IO ()
listenerAdd obj l ud = do
  res <- objectListenerAdd obj l (toUserData ud)
  when (res < 0) $ error "listenerAdd: returned -1"

class IsUserData a where
  toUserData :: a -> Ptr Void

instance IsUserData ()
  where toUserData _ = nullPtr
instance IsUserData (Ptr a)
  where toUserData = castPtr
instance IsUserData (StablePtr a) where
  toUserData = castPtr . castStablePtrToPtr
