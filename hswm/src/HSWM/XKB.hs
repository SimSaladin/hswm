{-# LANGUAGE PartialTypeSignatures #-}

module HSWM.XKB
  ( module HSWM.XKB,
    module Text.XkbCommon,
    module Text.XkbCommon.EventCodes,
  )
where

import           HSWM.Types.Action

import qualified River as R
import           Text.XkbCommon
import           Text.XkbCommon.EventCodes
import qualified WL.Client as WL

import qualified Data.Map as M

-- * KeySym parsing

type XkbBindCtx = (R.RiverXkbBindings, ConstPtr (WL.ObjectListener R.RiverXkbBinding), R.RiverSeat)

createXkbBindings
  :: forall env m a m2. (MonadReader env m, MonadLogger m, MonadIO m, Show a, Typeable a, a ~ SomeAction m2)
  => XkbBindCtx
  -> (a -> Submap a) -- ^ 'actionSubmap' - get subkeys + default action
  -> (a -> Bool) -- ^ should auto-repeat be enabled?
  -> [(XBKey, a)]
  -> m (XkbBindingMap2 a)
createXkbBindings ctx getSub getRepeat keys = sequence $ M.fromList top
  where
    top = [ (k, create1 subm.submapDefault True k v =<< createSubs subm) | (k, v) <- keys
          , let subm = getSub v
          ]

    createSubs :: Submap a -> m (XkbBindingMap2 a)
    createSubs subm = sequence $ M.fromList
      [(k, create1 subm.submapDefault False k v =<< createSubs (getSub v)) | (k, v) <- subm.submapKeys]

    create1 subdef enable (XBKey m k) a subks =
      newXKBBinding ctx enable m k a (getRepeat a) (subks, subdef)

newXKBBinding
  :: (MonadReader env m, MonadLogger m, MonadIO m, Show action, Typeable action)
  => XkbBindCtx
  -> Bool -- ^ Enable by default?
  -> ModMask -- ^ Modifiers
  -> KeySym -- ^ Key
  -> action -- ^ Action when pressed
  -> Bool -- ^ Auto-repeat on hold?
  -> (XkbBindingMap2 action, Maybe action) -- ^ Submap keys + default action
  -> m (XkbBindingPtr' Both action)
newXKBBinding (xkbBinds, xkb_binding_listener, seat) enable mods keysym action autorepeat_ (subKM, subDef) = do
  logInfo $ "new xkb binding" :#
    [ "key" .= ppXBKey @Text (XBKey mods keysym)
    , "action" .= show action
    , "autorepeat" .= autorepeat_
    , "enabled" .= enable
    , "seat" .= show seat
    ]
  xb <- R.riverXkbBindingsGetXkbBinding xkbBinds seat (fi keysym) (R.toCEnum $ fi mods)
  runvar <- newEmptyMVar
  let val = XkbBinding
        { boundAction = action
        , boundSubmap = subKM
        , defaultSubmapAction = subDef
        , riverXkbBinding = xb
        , riverSeat = seat
        , autorepeat = autorepeat_
        , runningVar = runvar
        }
  dtPtr <- io $ newStablePtr val
  WL.listenerAdd xb xkb_binding_listener dtPtr
  when enable $ R.riverXkbBindingEnable xb
  return $ Both (val, dtPtr)

destroyXKBBinding :: (MonadIO m) => XkbBindingPtr' Both a -> m ()
destroyXKBBinding (Both (_, sptr)) = do
  xb <- io (deRefStablePtr sptr)
  R.objectDestroy xb.riverXkbBinding
  mapM_ destroyXKBBinding xb.boundSubmap
  io $ freeStablePtr sptr

-- * Pointer Binds

newPointerBinding ::
  (MonadLogger m, MonadIO m, Show a, Typeable a)
  => ConstPtr (WL.ObjectListener R.RiverPointerBinding)
  -> R.RiverSeat
  -> ModMask
  -> Button
  -> a
  -> m (PointerBindingPtr a)
newPointerBinding pointerBindingListener seat mods btn action = do
  let pk = PKey mods btn
  logInfo $ "new pointer binding" :# [ "key" .= ppPKey @Text pk, "action" .= show action ]
  pb' <- R.riverSeatGetPointerBinding seat (fi btn) (R.toCEnum $ fi mods)
  dtPtr <- io $ newStablePtr $ PointerBinding
    { riverPointerBinding = pb'
    , riverSeat = seat
    , boundAction = action
    }
  WL.listenerAdd pb' pointerBindingListener dtPtr
  _ <- R.riverPointerBindingEnable pb'
  return dtPtr

destroyPointerBinding :: (MonadIO m) => StablePtr (PointerBinding a) -> m ()
destroyPointerBinding sptr = io $ do
  pb <- deRefStablePtr sptr
  WL.objectDestroy pb.riverPointerBinding
  freeStablePtr sptr
