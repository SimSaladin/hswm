-- |
-- Module      : HSWM.Core
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
module HSWM.Core
  ( module HSWM.Core,
    module HSWM.Types.Config,
    module HSWM.Types.Events,
    module HSWM.Types.Layouts,
    module HSWM.Types.WM,
    module HSWM.Util.Types,
    module River,
    ModMask,
    KeySym,
  )
where

import Data.IORef
import Data.Map qualified as M
import Data.Monoid (Ap (..))
import Data.TMap qualified as TM
import Data.Typeable
import Foreign
import Foreign.C
import HSWM.Util.Types
import HSWM.XKB
import River
import River.Objects qualified as R
import River.Safe qualified as R
import System.Exit (ExitCode (..))
import Wayland
import Wayland.Client qualified as WL

import HSWM.Types.WM
import HSWM.Types.Config
import HSWM.Types.Layouts
import HSWM.Types.Events

-- | The read-only window manager state.
data HConf = HConf
  { config :: !(HSWMConfig H Layout),
    display :: !Display,
    -- | The global objects available through wl_registry.
    globals :: !(IORef RegistryCache),
    _state :: !(TMVar HState),
    eventQueue :: !(TQueue MainEvent),
    blockForManage :: MVar (H (), MVar ())
  }
  deriving (Generic)

-- | Mutable stete.
data HState = HState
  { windowset :: !WindowSet,
    windowsetOld :: !WindowSet,
    wlObjects :: !TypeMap,
    _seats :: [Seat],
    _outputs :: [Output],
    _windows :: M.Map RiverWindow Window,
    recoveredWindows :: !(M.Map String RiverWindow),
    -- | stores custom state information.
    --
    -- The module "XMonad.Util.ExtensibleState" in xmonad-contrib
    -- provides additional information and a simple interface for using this.
    extensibleState :: !(M.Map String (Either String StateExtension))
  }
  deriving (Generic, Default)

---------------------------------------------------------------

newtype TypeMap = TypeMap {unTypeMap :: TM.TMap}
  deriving (Show, Generic)

instance Default TypeMap where def = TypeMap TM.empty

---------------------------------------------------------------

-- a la xmonad
newtype H a = H (ReaderT HConf (StateT HState IO) a)
  deriving newtype (Functor, Applicative, Monad, MonadFail, MonadIO, MonadState HState, MonadReader HConf)
  deriving (Semigroup, Monoid) via Ap H a

instance Default (H ()) where def = return ()

instance IsAction H (H ()) where runner = id

-- a la xmonad
runH :: HConf -> HState -> H a -> IO (a, HState)
runH c st (H a) = runStateT (runReaderT a c) st

withRunInH :: ((forall a. H a -> IO a) -> IO b) -> H b
withRunInH f = do
  conf <- ask
  io $ f $ \a -> bracketOnError (atomically $ takeTMVar conf._state) (atomically . putTMVar conf._state) $ \st -> do
    (r, st') <- runH conf st a
    atomically $ putTMVar conf._state st'
    return r

-- a la xmonad
catchH :: H a -> H a -> H a
catchH job errcase = do
  st <- get
  c <- ask
  (a, s') <-
    liftIO $
      runH c st job
        `catch` \e -> case fromException e of
          Just (_ :: ExitCode) -> throw e
          _ -> log' ("error: " <> tshow e) >> runH c st errcase
  put s'
  return a

-- | Conditionally run an action, using a monadic event to decide
whenM :: (Monad m) => m Bool -> m () -> m ()
whenM a f = a >>= \b -> when b f

-- a la xmonad
userCode :: H a -> H (Maybe a)
userCode a = catchH (Just <$> a) (return Nothing)

-- | Same as userCode but with a default argument to return instead of using
-- Maybe, provided for convenience.
userCodeDef :: a -> H a -> H a
userCodeDef defValue a = fromMaybe defValue <$> userCode a

data SeatAction
  = -- | no action / reset
    S_NONE
  | -- | start pointer drag operation
    S_START_OP SeatOp
  | -- | interpret next keypress for submap, swallowing an unexpected key
    S_SUBMAP_NEXT_KEY (SomeAction H) (XkbBindingMap (SomeAction H))
  | -- | Cancel submap input, resetting to root bindings.
    S_SUBMAP_CANCEL
  | -- | Temporarily interpret all keyboard input differently.
    S_INPUT_OVERRIDE (H Bool) [((ModMask, KeySym), (SomeAction H))]
  | -- | Cancel input override mode
    S_INPUT_OVERRIDE_CANCEL
  deriving (Show, Generic)

instance Default SeatAction where def = S_NONE

data Seat = Seat
  { river_seat :: !RiverSeat,
    river_layer_shell_seat :: !R.RiverLayerShellSeat,
    xkb_bindings_seat :: !R.RiverXkbBindingsSeat,
    wl_seat :: !WL.Seat,
    name :: !String,
    caps :: !WL.Wl_seat_capability,
    --
    xkb_bindings :: !(XkbBindingMap (SomeAction H)),
    pointer_bindings :: [StablePtr (PointerBinding (SomeAction H))],
    --
    pending_action :: !SeatAction,
    submap_pending :: Maybe (SomeAction H, XkbBindingMap (SomeAction H)),
    inputOverride :: !(Maybe (H Bool, XkbBindingMap (SomeAction H))),
    -- Pointer move/resize
    op :: SeatOp,
    op_window :: RiverWindow,
    op_release :: Bool,
    op_start_x, op_start_y, op_dx, op_dy :: Int32,
    op_start_width, op_start_height :: Int32,
    op_edges :: Int32,
    -- TODO: review below
    removed :: Bool,
    focused, hovered, interacted :: RiverWindow
  }
  deriving (Show, Generic)

-- XXX
instance Show (StablePtr a) where show _ = "<SP>"
instance Show (H ()) where show _ = "H()"
instance Show (H Bool) where show _ = "H()"

instance Default Seat where
  def =
    Seat
      { river_seat = def,
        wl_seat = WL.Seat nullPtr,
        xkb_bindings_seat = R.RiverXkbBindingsSeat nullPtr,
        inputOverride = Nothing,
        name = "",
        caps = WL.toCEnum 0,
        removed = False,
        focused = invalidWindow,
        hovered = invalidWindow,
        interacted = invalidWindow,
        op_window = invalidWindow,
        op = SEAT_OP_NONE,
        op_release = False,
        op_start_x = 0,
        op_start_y = 0,
        op_dx = 0,
        op_dy = 0,
        op_start_width = 0,
        op_start_height = 0,
        op_edges = 0,
        xkb_bindings = mempty,
        pointer_bindings = mempty,
        pending_action = S_NONE,
        submap_pending = Nothing,
        river_layer_shell_seat = R.RiverLayerShellSeat nullPtr
      }

-- XXX: ????
data SeatOp
  = SEAT_OP_NONE
  | SEAT_OP_MOVE
  | SEAT_OP_RESIZE
  deriving (Eq, Show)

data Output = Output
  { river_output :: !RiverOutput,
    width, height, x, y :: !Int32,
    scale :: !Int32,
    screen :: !ScreenId,
    outputName :: !String,
    outputDescription :: !String,
    river_layerShellOutput :: !R.RiverLayerShellOutput,
    nonExclusive :: Maybe (Int32, Int32, Int32, Int32) -- x, y, w, h
  }
  deriving (Show, Generic)

instance Default Output where
  def = Output def 0 0 0 0 0 (S (-1)) "" "" (R.RiverLayerShellOutput nullPtr) Nothing

data Window = Window
  { river_window :: !RiverWindow,
    node :: !RiverNode,
    x, y, width, height :: !Int32,
    title, appId, identifier :: !String,
    -- | Dimension hints
    min_height, min_width, max_height, max_width :: !Int,
    parent :: !(Maybe RiverWindow),
    unreliablePid :: !(Maybe Int),
    decorationHint :: !(Maybe R.River_window_v1_decoration_hint),
    presentationHint :: !(Maybe R.River_output_v1_presentation_mode),
    new :: Bool,
    closed :: Bool,
    fullscreen :: Bool,
    p_manage_action :: [WindowManageAction],
    p_render_border :: Maybe RiverColor,
    p_render_pos :: Maybe (Int32, Int32),
    p_render_place :: CInt,
    p_set_visible :: Maybe Bool,
    -- TODO: review below
    pointer_move_requested :: RiverSeat,
    pointer_resize_requested :: RiverSeat,
    pointer_resize_requested_edges :: Int32
  }
  deriving stock (Show, Generic)
  deriving anyclass (Default)

data WindowManageAction
  = WFullscreen
  | WFullscreenOnScreen RiverOutput
  | WExitFullscreen
  | WToggleFullscreen
  | WRequestClose
  deriving (Eq, Show, Generic)

-------------------------------------------------------

-- | Run a monadic action with the current stack set
withWindowSet :: (WindowSet -> H a) -> H a
withWindowSet f = gets windowset >>= f

modifyWindowSet :: (WindowSet -> WindowSet) -> H ()
modifyWindowSet f = modify' $ \s -> s {windowset = f (windowset s)}

-------------------------------------------------------

getOrCreateObject :: (Typeable a, MonadState HState m, MonadIO m) => IO a -> m a
getOrCreateObject m =
  gets (TM.lookup . unTypeMap . wlObjects) >>= \case
    Just x -> return x
    Nothing -> liftIO m >>= \x -> modifyWlObjects (TM.insert x) >> return x

modifyWlObjects :: (MonadState HState m) => (TM.TMap -> TM.TMap) -> m ()
modifyWlObjects f = modify $ \s -> s {wlObjects = TypeMap $ f $! unTypeMap $ wlObjects s}

withObjects :: (MonadState HState m) => (TM.TMap -> m a) -> m a
withObjects f = gets (unTypeMap . wlObjects) >>= f

putObject :: (Typeable a) => a -> H ()
putObject x = modifyWlObjects $ TM.insert x

getObject :: (Typeable a) => H a
getObject =
  gets (TM.lookup . unTypeMap . wlObjects) >>= \case
    (Nothing :: Maybe a) -> error ("getObject: no such object: " ++ show (typeRep (Proxy :: Proxy a)))
    Just x -> return x

withObject :: (Typeable a) => (a -> H b) -> H b
withObject f =
  gets (TM.lookup . unTypeMap . wlObjects) >>= \case
    (Nothing :: Maybe a) -> error ("withObject: no such object: " ++ show (typeRep (Proxy :: Proxy a)))
    Just x -> f x

withObjectDef :: (Typeable a, MonadState HState m) => b -> (a -> m b) -> m b
withObjectDef od f =
  gets (TM.lookup . unTypeMap . wlObjects) >>= \case
    Nothing -> return od
    Just x -> f x
