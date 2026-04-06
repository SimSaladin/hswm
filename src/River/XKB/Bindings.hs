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
  ) where

import           HSWM.XKB

import qualified River.Objects as R
import           River.WMP

import           Foreign
import           Foreign.Storable.Generic (GStorable(..))

data XkbBinding a = XkbBinding
  { xkb_binding :: R.RiverXkbBinding
  , river_seat  :: R.RiverSeat
  , action      :: a
  , subKeymap   :: StablePtr [StablePtr (XkbBinding a)]
  } deriving (Generic)

instance GStorable (XkbBinding ())

newXKBBinding
  :: (MonadIO m, Show action)
  => R.RiverXkbBindings
  -> R.RiverXkbBindingListener
  -> R.RiverSeat
  -> Bool -- ^ Enable by default?
  -> Modifiers
  -> KeySym
  -> action -- ^ Action when pressed
  -> [StablePtr (XkbBinding action)] -- ^ Submap keys
  -> m (StablePtr (XkbBinding action))
newXKBBinding xkbBinds xkb_binding_listener seat enable mods keysym action subKM = do
  debug' $ "[keys] binding key: " <> toText (ppXkbModsKey mods keysym) <> " " <> tshow action
  xb <- io $ R.riverXkbBindingsGetXkbBinding xkbBinds seat (fi keysym) (fi mods)
  subP <- io $ newStablePtr subKM
  dtPtr <- io $ newStablePtr $ XkbBinding xb seat action subP
  _ <- io $ R.listenerAdd xb xkb_binding_listener (castPtr $ castStablePtrToPtr dtPtr)
  when enable $ io $ R.riverXkbBindingEnable xb
  return dtPtr

destroyXKBBinding :: MonadIO m => StablePtr (XkbBinding a) -> m ()
destroyXKBBinding sptr = do
  xb <- io (deRefStablePtr sptr)
  io $ R.objectDestroy xb.xkb_binding
  io (deRefStablePtr xb.subKeymap) >>= mapM_ destroyXKBBinding
  io $ freeStablePtr xb.subKeymap
  io $ freeStablePtr sptr
