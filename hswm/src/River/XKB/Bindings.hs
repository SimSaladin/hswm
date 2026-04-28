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

import           HSWM.XKB

import qualified Bindings.River as R
import qualified Bindings.Wayland.Client as WL
import qualified Data.Map as M
import           Foreign
import           River.WMP

type XBKey = (ModMask, KeySym)

type XkbBindingMap a = M.Map XBKey (StablePtr (XkbBinding a))

data XkbBinding a = XkbBinding
  { xkb_binding :: R.RiverXkbBinding,
    river_seat :: R.RiverSeat,
    action :: a,
    subKeymap :: XkbBindingMap a,
    autorepeat :: Bool,
    running :: MVar (Async ())
  }
  deriving (Generic)

createXkbBindings ::
  (MonadReader env m, MonadLogger m, MonadIO m, Show a) =>
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
  (MonadReader env m, MonadLogger m, MonadIO m, Show action) =>
  R.RiverXkbBindings ->
  R.RiverXkbBindingListener ->
  R.RiverSeat ->
  -- | Enable by default?
  Bool ->
  ModMask ->
  KeySym ->
  -- | Action when pressed
  action ->
  -- | Submap keys
  XkbBindingMap action ->
  m (StablePtr (XkbBinding action))
newXKBBinding xkbBinds xkb_binding_listener seat enable mods keysym action subKM = do
  logDebug $ "new xkb binding" :# [ "key" .= ppXkbModsKey mods keysym,  "action" .= show action ]
  xb <- io $ R.riverXkbBindingsGetXkbBinding xkbBinds seat (fi keysym) (WL.toCEnum $ fi mods)
  -- subP <- io $ newStablePtr subKM
  runvar <- newEmptyMVar
  dtPtr <- io $ newStablePtr $ XkbBinding xb seat action subKM autorepeat runvar
  _ <- io $ R.listenerAdd xb xkb_binding_listener (castPtr $ castStablePtrToPtr dtPtr)
  when enable $ io $ R.riverXkbBindingEnable xb
  return dtPtr
    where autorepeat = False -- XXX : breaks GrabKeyboard repeating...

destroyXKBBinding :: (MonadIO m) => StablePtr (XkbBinding a) -> m ()
destroyXKBBinding sptr = do
  xb <- io (deRefStablePtr sptr)
  io $ R.objectDestroy xb.xkb_binding
  mapM_ destroyXKBBinding xb.subKeymap
  io $ freeStablePtr sptr
