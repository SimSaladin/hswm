------------------------------------------------------------------------------

------------------------------------------------------------------------------

-- |
-- Module      : River.XKB.Bindings
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module River.XKB.Bindings
  ( module River.XKB.Bindings,
  )
where

import Data.Map qualified as M
import Foreign
import HSWM.XKB
import River.Objects qualified as R
import River.WMP

type XBKey = (Modifiers, KeySym)

type XkbBindingMap a = M.Map XBKey (StablePtr (XkbBinding a))

data XkbBinding a = XkbBinding
  { xkb_binding :: R.RiverXkbBinding,
    river_seat :: R.RiverSeat,
    action :: a,
    subKeymap :: XkbBindingMap a
  }
  deriving (Generic)

createXkbBindings ::
  (MonadReader env m, HasLogFunc env, MonadIO m, Show a) =>
  (R.RiverXkbBindings, R.RiverXkbBindingListener, R.RiverSeat) ->
  -- | 'actionSubmap' - get subkeys
  (a -> [((ModMask, KeySym), a)]) ->
  [((ModMask, KeySym), a)] ->
  m (XkbBindingMap a)
createXkbBindings (a1, a2, a3) getSub keys = sequence top
  where
    top = M.fromList [(k, create1 True k v =<< createSubs (getSub v)) | (k, v) <- keys]

    createSubs ks = sequence $ M.fromList [(k, create1 False k v =<< createSubs (getSub v)) | (k, v) <- ks]

    create1 enable (m, k) = newXKBBinding a1 a2 a3 enable m k

newXKBBinding ::
  (MonadReader env m, HasLogFunc env, MonadIO m, Show action) =>
  R.RiverXkbBindings ->
  R.RiverXkbBindingListener ->
  R.RiverSeat ->
  -- | Enable by default?
  Bool ->
  Modifiers ->
  KeySym ->
  -- | Action when pressed
  action ->
  -- | Submap keys
  XkbBindingMap action ->
  m (StablePtr (XkbBinding action))
newXKBBinding xkbBinds xkb_binding_listener seat enable mods keysym action subKM = do
  logDebug $ "[keys] binding key: " <> fromString (ppXkbModsKey mods keysym) <> " " <> fromString (show action)
  xb <- io $ R.riverXkbBindingsGetXkbBinding xkbBinds seat (fi keysym) (fi mods)
  -- subP <- io $ newStablePtr subKM
  dtPtr <- io $ newStablePtr $ XkbBinding xb seat action subKM
  _ <- io $ R.listenerAdd xb xkb_binding_listener (castPtr $ castStablePtrToPtr dtPtr)
  when enable $ io $ R.riverXkbBindingEnable xb
  return dtPtr

destroyXKBBinding :: (MonadIO m) => StablePtr (XkbBinding a) -> m ()
destroyXKBBinding sptr = do
  xb <- io (deRefStablePtr sptr)
  io $ R.objectDestroy xb.xkb_binding
  mapM_ destroyXKBBinding xb.subKeymap
  io $ freeStablePtr sptr
