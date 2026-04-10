-- |
-- Module      : HSWM.Core
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
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
    module HSWM.Types.TypeMap,
    module HSWM.Util.Types,
    module River,
    ModMask,
    KeySym,
  )
where

import Data.Map qualified as M
import Data.Monoid (Ap (..))
import Foreign hiding (void)
import Foreign.C
import HSWM.Util.Types
import HSWM.XKB
import River
import River.Objects qualified as R
import River.Safe qualified as R
import Wayland (RegistryCache)
import Wayland.Client qualified as WL hiding (display)
import Control.Monad.State
import Control.Monad.Fix

import HSWM.Types.WM
import HSWM.Types.Config
import HSWM.Types.Layouts
import HSWM.Types.Events
import HSWM.Types.TypeMap

-- * Program state (read + write)

-- | The read-only window manager state.
data HConf = HConf
  { _stateLocked :: Bool,
    thisSeat :: Maybe RiverSeat, -- ^ Just when executing seat-originating key/pointer bindings.
    config :: !(HSWMConfig H Layout), -- ^ User-provided configuration.
    _display :: !WL.Display, -- ^ The Wayland display pointer
    _logFunc :: !LogFunc, -- ^ Root logger function.
    globals :: !(IORef RegistryCache), -- ^ The global objects available through wl_registry.
    _state :: !(TMVar HState), -- ^ The 'HState' XXX FIXME
    eventQueue :: !(TQueue MainEvent), -- ^ XXX ???
    pendingManageQ, pendingRenderQ :: !(TQueue (HS ())),
    -- ^ Pending actions to be emitted in the next manage and render queues (respectively).
    globalTypeMap :: !(TMVar TypeMap)
  }
  deriving (Generic)

instance HasGlobalTMap HConf where
  globalTMap = lens globalTypeMap (\s a -> s { globalTypeMap = a })

instance HasLogFunc HConf where
  logFuncL = lens _logFunc (\s a -> s { _logFunc = a })

-- | Mutable stete.
data HState = HState
  { windowset :: !WindowSet,
    windowsetOld :: !WindowSet,
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

-- * H Monad

newtype H a = H (ReaderT HConf IO a)
  deriving newtype (Functor, Applicative, Monad, MonadFail, MonadIO, MonadReader HConf, MonadThrow, MonadUnliftIO)
  deriving (Semigroup, Monoid) via Ap H a

newtype HS a = HS (ReaderT HConf (StateT HState IO) a)
  deriving newtype (Functor, Applicative, Monad, MonadFail, MonadIO, MonadState HState, MonadReader HConf, MonadThrow)
  deriving (Semigroup, Monoid) via Ap HS a

instance Default (H ()) where def = return ()
instance Default (HS ()) where def = return ()

instance IsAction H (H ()) where runner = id

instance MonadFix H where
  mfix :: (a -> H a) -> H a
  mfix f = H (mfix g) where g a = let H a' = f a in a'
instance MonadFix HS where
  mfix :: (a -> HS a) -> HS a
  mfix f = HS (mfix g) where g a = let HS a' = f a in a'

runH :: HConf -> H a -> IO a
runH c (H a) = runReaderT a c

runHS :: HConf -> HState -> HS a -> IO (a, HState)
runHS c st (HS a) = runStateT (runReaderT a c) st

runInHS :: (MonadIO m, MonadReader HConf m) => HS a -> m a
runInHS a = do
  conf <- ask
  when conf._stateLocked $ throwString "runInHS: state locked (attempted to nest state lock?)"
  io $ bracketOnError (atomically $ takeTMVar conf._state) (atomically . putTMVar conf._state) $ \st -> do
    (r, st') <- runHS conf { _stateLocked = True } st a
    atomically $ putTMVar conf._state st'
    return r

liftH :: (MonadReader HConf m, MonadIO m) => H a -> m a
liftH a = do
  c <- ask
  io $ runH c a

-- a la xmonad
catchH :: H a -> H a -> H a
catchH job errcase = do
  c <- ask
  liftIO $ runH c job
        `catch` \e -> case fromException e of
          Just (_ :: ExitCode) -> throwM e
          _ -> hPutBuilder stderr (getUtf8Builder $ display @Text "error: " <> display (tshow e)) >> runH c errcase

catchHS :: HS a -> HS a -> HS a
catchHS job errcase = do
  c <- ask
  s <- get
  (a, s') <- liftIO $ runHS c s job
        `catch` \e -> case fromException e of
          Just (_ :: ExitCode) -> throwM e
          _ -> hPutBuilder stderr (getUtf8Builder $ display @Text "error: " <> display (tshow e)) >> runHS c s errcase
  put s'
  return a

-- a la xmonad
userCode :: H a -> H (Maybe a)
userCode a = catchH (Just <$> a) (return Nothing)

-- | Same as userCode but with a default argument to return instead of using
-- Maybe, provided for convenience.
userCodeDef :: a -> H a -> H a
userCodeDef defValue a = fromMaybe defValue <$> userCode a

-----------------------------------------------------------
-- * Manage/Render Event queues

class HasEventQueues env where
  pendingManageQL :: Lens' env (TQueue (HS ()))
  pendingRenderQL :: Lens' env (TQueue (HS ()))

instance HasEventQueues HConf where
  pendingManageQL = lens pendingManageQ $ \s a -> s { pendingManageQ = a }
  pendingRenderQL = lens pendingRenderQ $ \s a -> s { pendingRenderQ = a }

getEventQueueFuncs :: (MonadReader env m, HasEventQueues env, MonadIO inner)
                   => m (HS e1 -> inner (), HS e2 -> inner ()) -- ^ @(queueForManagePhase, queueForRenderPhase)@
getEventQueueFuncs = (wrap *** wrap) <$> asks ((,) <$> view pendingManageQL <*> view pendingRenderQL)
  where
    wrap q = atomically . writeTQueue q . void

-----------------------------------------------------------
-- River & Wayland

-- * River/WL Seat

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
    inputOverride :: !(Maybe (HS Bool, XkbBindingMap (SomeAction H))),
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
    S_INPUT_OVERRIDE (HS Bool) [((ModMask, KeySym), SomeAction H)]
  | -- | Cancel input override mode
    S_INPUT_OVERRIDE_CANCEL
  deriving (Show, Generic)

instance Default SeatAction where def = S_NONE

-- XXX
instance Show (StablePtr a) where show :: StablePtr a -> String
                                  show _ = "<SP>"
instance Show (H ()) where show _ = "H()"
instance Show (H Bool) where show _ = "H()"
instance Show (HS Bool) where show _ = "HS()"

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

-- * Wayland/River outputs management

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

-- * Window management

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

-- * WindowManager main loop

data WindowManageAction
  = WFullscreen
  | WFullscreenOnScreen RiverOutput
  | WExitFullscreen
  | WToggleFullscreen
  | WRequestClose
  deriving (Eq, Show, Generic)
