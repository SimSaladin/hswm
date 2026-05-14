{-# LANGUAGE CApiFFI #-}

module HSWM.XKB
  ( module HSWM.XKB,
    module Text.XkbCommon,
    module Text.XkbCommon.EventCodes,
  )
where

import Text.XkbCommon
import Text.XkbCommon.EventCodes
import Text.XkbCommon.KeySyms (key_NoSymbol)

import qualified Wayland as WL

import qualified Bindings.River as R
import qualified Bindings.RiverSafe as R

import qualified Data.List as L
import qualified Data.Map as M
import           Foreign

-- * Linux evdev codes

type Button = Word32

-- * KeySym parsing

class IsKeySym a where
  toKeySym :: a -> KeySym

instance IsKeySym KeySym where
  toKeySym = id

instance IsKeySym String where
  toKeySym s = fromMaybe key_NoSymbol $ keysymFromName s <|> keysymFromNameCaseInsensitive s

type XkbBindingMap a = M.Map XBKey (StablePtr (XkbBinding a))

data XkbBinding a = XkbBinding
  { xkb_binding :: {-# UNPACK #-} !R.RiverXkbBinding
  , river_seat  :: {-# UNPACK #-} !R.RiverSeat
  , action      :: !a
  , subKeymap   :: !(XkbBindingMap a)
  , autorepeat  :: {-# UNPACK #-} !Bool
  , running     :: {-# UNPACK #-} !(MVar (Async ()))
  } deriving (Generic)

type XBKey = (ModMask, KeySym)

createXkbBindings
  :: (MonadReader env m, MonadLogger m, MonadIO m, Show a, Typeable a)
  => (R.RiverXkbBindings, R.RiverXkbBindingListener, R.RiverSeat)
  -> (a -> [(XBKey, a)]) -- ^ 'actionSubmap' - get subkeys
  -> [(XBKey, a)]
  -> m (XkbBindingMap a)
createXkbBindings (a1, a2, a3) getSub keys = sequence top
  where
    top = M.fromList [(k, create1 True k v =<< createSubs (getSub v)) | (k, v) <- keys]
    createSubs ks = sequence $ M.fromList [(k, create1 False k v =<< createSubs (getSub v)) | (k, v) <- ks]
    create1 enable (m, k) = newXKBBinding a1 a2 a3 enable m k

newXKBBinding ::
  (MonadReader env m, MonadLogger m, MonadIO m, Show action, Typeable action) =>
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
  XkbBindingMap action
  -> m (StablePtr (XkbBinding action))
newXKBBinding xkbBinds xkb_binding_listener seat enable mods keysym action subKM = do
  logDebug $ "new xkb binding" :# [ "key" .= ppXkbModsKey mods keysym,  "action" .= show action ]
  xb <- R.riverXkbBindingsGetXkbBinding xkbBinds seat (fi keysym) (WL.toCEnum $ fi mods)
  -- subP <- io $ newStablePtr subKM
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

ppXkbModsKey :: ModMask -> KeySym -> String
ppXkbModsKey m ksym =
  L.intercalate "+" $
    [ name
    | (x, name) <-
        [ (R.RIVER_SEAT_V1_MODIFIERS_CTRL, "C"),
          (R.RIVER_SEAT_V1_MODIFIERS_SHIFT, "S"),
          (R.RIVER_SEAT_V1_MODIFIERS_MOD1, "M1"),
          (R.RIVER_SEAT_V1_MODIFIERS_MOD3, "M3"),
          (R.RIVER_SEAT_V1_MODIFIERS_MOD4, "M4"),
          (R.RIVER_SEAT_V1_MODIFIERS_MOD5, "M5")
        ],
      fi x.unwrap .&. m /= 0
    ]
      ++ [fromMaybe "???" $ keysymName ksym]

-- * Pointer Binds

data PointerBinding a = PointerBinding
  { pointer_binding :: !R.RiverPointerBinding
  , river_seat      :: !R.RiverSeat
  , action          :: !a
  } deriving (Generic)

newPointerBinding ::
  (MonadLogger m, MonadIO m, Show a, Typeable a)
  => R.RiverPointerBindingListener
  -> R.RiverSeat
  -> ModMask
  -> Button
  -> a
  -> m (StablePtr (PointerBinding a))
newPointerBinding pointerBindingListener seat mods btn action = do
  logInfo $ "new pointer binding" :# [ "key" .= ppXkbModsKey mods (fi btn) {- TODO wrong -}, "action" .= show action ]
  pb' <- R.riverSeatGetPointerBinding seat (fi btn) (WL.toCEnum $ fi mods)
  dtPtr <- io $ newStablePtr $ PointerBinding pb' seat action
  WL.listenerAdd pb' pointerBindingListener dtPtr
  _ <- R.riverPointerBindingEnable pb'
  return dtPtr

destroyPointerBinding :: (MonadIO m) => StablePtr (PointerBinding a) -> m ()
destroyPointerBinding sptr = io $ do
  pb <- deRefStablePtr sptr
  WL.objectDestroy pb.pointer_binding
  freeStablePtr sptr
