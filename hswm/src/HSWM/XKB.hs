module HSWM.XKB
  ( module HSWM.XKB,
    module Text.XkbCommon,
    module Text.XkbCommon.EventCodes,
  )
where

import           HSWM.Types.Action
import           HSWM.Utils

import qualified River as R
import           Text.XkbCommon
import           Text.XkbCommon.EventCodes
import qualified WL.Client as WL

import qualified Data.Map as M

-- * KeySym parsing

createXkbBindings
  :: (MonadReader env m, MonadLogger m, MonadIO m, Show a, Typeable a)
  => (R.RiverXkbBindings, ConstPtr (WL.ObjectListener R.RiverXkbBinding), R.RiverSeat)
  -> (a -> [(XBKey, a)]) -- ^ 'actionSubmap' - get subkeys
  -> [(XBKey, a)]
  -> m (XkbBindingMap a)
createXkbBindings (a1, a2, a3) getSub keys = sequence top
  where
    top = M.fromList [(k, create1 True k v =<< createSubs (getSub v)) | (k, v) <- keys]
    createSubs ks = sequence $ M.fromList [(k, create1 False k v =<< createSubs (getSub v)) | (k, v) <- ks]
    create1 enable (m, k) = newXKBBinding a1 a2 a3 enable m k

newXKBBinding
  :: (MonadReader env m, MonadLogger m, MonadIO m, Show action, Typeable action)
  => R.RiverXkbBindings
  -> ConstPtr (WL.ObjectListener R.RiverXkbBinding)
  -> R.RiverSeat
  -> Bool -- ^ Enable by default?
  -> ModMask
  -> KeySym
  -> action -- ^ Action when pressed
  -> XkbBindingMap action -- ^ Submap keys
  -> m (StablePtr (XkbBinding action))
newXKBBinding xkbBinds xkb_binding_listener seat enable mods keysym action subKM = do
  logDebug $ "new xkb binding" :# [ "key" .= ppXBKey (mods, keysym),  "action" .= show action ]
  xb <- R.riverXkbBindingsGetXkbBinding xkbBinds seat (fi keysym) (R.toCEnum $ fi mods)
  runvar <- newEmptyMVar
  dtPtr <- io $ newStablePtr $ XkbBinding xb seat action subKM autorepeat runvar
  WL.listenerAdd xb xkb_binding_listener dtPtr
  when enable $ R.riverXkbBindingEnable xb
  return dtPtr
    where autorepeat = False -- XXX : breaks GrabKeyboard repeating...

destroyXKBBinding :: (MonadIO m) => StablePtr (XkbBinding a) -> m ()
destroyXKBBinding sptr = do
  xb <- io (deRefStablePtr sptr)
  io $ R.objectDestroy xb.xkb_binding
  mapM_ destroyXKBBinding xb.subKeymap
  io $ freeStablePtr sptr

-- * Pointer Binds

newPointerBinding ::
  (MonadLogger m, MonadIO m, Show a, Typeable a)
  => ConstPtr (WL.ObjectListener R.RiverPointerBinding)
  -> R.RiverSeat
  -> ModMask
  -> Button
  -> a
  -> m (StablePtr (PointerBinding a))
newPointerBinding pointerBindingListener seat mods btn action = do
  logInfo $ "new pointer binding" :# [ "key" .= ppButton (mods, btn), "action" .= show action ]
  pb' <- R.riverSeatGetPointerBinding seat (fi btn) (R.toCEnum $ fi mods)
  dtPtr <- io $ newStablePtr $ PointerBinding pb' seat action
  WL.listenerAdd pb' pointerBindingListener dtPtr
  _ <- R.riverPointerBindingEnable pb'
  return dtPtr

destroyPointerBinding :: (MonadIO m) => StablePtr (PointerBinding a) -> m ()
destroyPointerBinding sptr = io $ do
  pb <- deRefStablePtr sptr
  WL.objectDestroy pb.pointer_binding
  freeStablePtr sptr
