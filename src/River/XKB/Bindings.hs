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

import           HSWM.XKB

import           River.WMP
import           River.XKB.Bindings.FFI
import           River.XKB.Bindings.MiscFFI

import           Foreign
import           Foreign.Storable.Generic (GStorable(..))

data XkbBinding a = XkbBinding
  { xkb_binding :: RiverXkbBinding
  , river_seat  :: RiverSeat
  , action      :: a
  , subKeymap   :: StablePtr [StablePtr (XkbBinding a)]
  } deriving (Generic)

instance GStorable (XkbBinding ())

newXKBBinding
  :: (MonadIO m, Show action)
  => RiverXkbBindings
  -> XkbBindingListener
  -> RiverSeat
  -> Bool -- ^ Enable by default?
  -> Modifiers
  -> KeySym
  -> action -- ^ Action when pressed
  -> [StablePtr (XkbBinding action)] -- ^ Submap keys
  -> m (StablePtr (XkbBinding action))
newXKBBinding xkbBinds xkb_binding_listener seat enable mods keysym action subKM = do
  debug' $ "[keys] binding key: " <> toText (ppXkbModsKey mods keysym) <> " " <> tshow action
  xb <- io $ river_xkb_bindings_v1_get_xkb_binding xkbBinds seat keysym mods
  subP <- io $ newStablePtr subKM
  dtPtr <- io $ newStablePtr $ XkbBinding xb seat action subP
  io $ river_xkb_binding_v1_add_listener xb xkb_binding_listener (castStablePtrToPtr dtPtr)
  when enable $ io $ river_xkb_binding_v1_enable xb
  return dtPtr

destroyXKBBinding :: MonadIO m => StablePtr (XkbBinding a) -> m ()
destroyXKBBinding sptr = do
  xb <- io (deRefStablePtr sptr)
  io $ river_xkb_binding_v1_destroy xb.xkb_binding
  io (deRefStablePtr xb.subKeymap) >>= mapM_ destroyXKBBinding
  io $ freeStablePtr xb.subKeymap
  io $ freeStablePtr sptr
