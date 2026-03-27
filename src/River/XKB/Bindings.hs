------------------------------------------------------------------------------
-- |
-- Module      : River.XKB.Bindings
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
------------------------------------------------------------------------------
module River.XKB.Bindings
  ( module River.XKB.Bindings
  , module River.XKB.Bindings.FFI
  , module River.XKB.Bindings.MiscFFI
  ) where

import HSWM.XKB
import River.XKB.Bindings.FFI
import River.XKB.Bindings.MiscFFI
import River.WMP
import GHC.Generics
import           Foreign.Storable.Generic (GStorable(..))
import Foreign

data XkbBinding a = XkbBinding
  { xkb_binding :: RiverXkbBinding
  , river_seat  :: RiverSeat
  , action      :: a
  } deriving (Generic)

instance GStorable (XkbBinding ())

newXKBBinding
  :: (MonadIO m, Show action)
  => RiverXkbBindings
  -> XkbBindingListener
  -> RiverSeat
  -> Modifiers
  -> KeySym
  -> action
  -> m (StablePtr (XkbBinding action))
newXKBBinding xkbBinds xkb_binding_listener seat mods keysym action = do
  debug' $ "[keys] binding key: " <> tshow (mods, keysym, action)
  xb <- liftIO $ river_xkb_bindings_v1_get_xkb_binding xkbBinds seat keysym mods
  dtPtr <- liftIO $ newStablePtr $ XkbBinding xb seat action
  liftIO $ river_xkb_binding_v1_add_listener xb xkb_binding_listener (castStablePtrToPtr dtPtr)
  liftIO $ river_xkb_binding_v1_enable xb
  return dtPtr

destroyXKBBinding :: MonadIO m => StablePtr (XkbBinding a) -> m ()
destroyXKBBinding sptr = do
  xb <- liftIO $ deRefStablePtr sptr
  liftIO $ river_xkb_binding_v1_destroy xb.xkb_binding
  io $ freeStablePtr sptr
