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
    module HSWM.Types.TypeMap,
    module HSWM.Util.Types,
    module River,
    ModMask,
    KeySym,
  )
where

import Data.IORef
import Data.Map qualified as M
import Data.Monoid (Ap (..))
import Foreign
import Foreign.C
import HSWM.Util.Types
import HSWM.XKB
import River
import River.Objects qualified as R
import River.Safe qualified as R
import System.Exit (ExitCode (..))
import Wayland (RegistryCache)
import Wayland.Client qualified as WL hiding (display)
import Control.Monad.State
import Control.Monad.Fix

import HSWM.Types.WM
import HSWM.Types.Config
import HSWM.Types.Layouts
import HSWM.Types.Events
import HSWM.Types.TypeMap

-----------------------------------------------------------
-- Program state (read + write)

-- | The read-only window manager state.
data HConf = HConf
  { config :: !(HSWMConfig H Layout), -- ^ User-provided configuration.
    _display :: !WL.Display, -- ^ The Wayland display pointer
    _logFunc :: !LogFunc, -- ^ Root logger function.
    globals :: !(IORef RegistryCache), -- ^ The global objects available through wl_registry.
    _state :: !(TMVar HState), -- ^ The 'HState' XXX FIXME
    eventQueue :: !(TQueue MainEvent), -- ^ XXX ???
    pendingManageQ, pendingRenderQ :: !(TQueue (H ()))
    -- ^ Pending actions to be emitted in the next manage and render queues (respectively).
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
-- * H Monad

-- a la xmonad
newtype H a = H (ReaderT HConf (StateT HState IO) a)
  deriving newtype (Functor, Applicative, Monad, MonadFail, MonadIO, MonadState HState, MonadReader HConf, MonadThrow)
  deriving (Semigroup, Monoid) via Ap H a

instance Default (H ()) where def = return ()

instance IsAction H (H ()) where runner = id

instance HasGlobalTMap HState where
  globalTMap = lens wlObjects (\s a -> s { wlObjects = a })

instance HasLogFunc HConf where
  logFuncL = lens _logFunc (\s a -> s { _logFunc = a })

instance MonadUnliftIO H where
  withRunInIO :: ((forall a. H a -> IO a) -> IO b) -> H b
  withRunInIO f = do
    conf <- ask
    io $! f (\a -> bracketOnError (atomically $ takeTMVar conf._state) (atomically . putTMVar conf._state) (runner conf a))
      where
    runner c a st = do
      (r, st') <- runH c st a
      atomically (putTMVar c._state st')
      return r

instance MonadFix H where
  mfix :: (a -> H a) -> H a
  mfix f = H (mfix g) where g a = let H a' = f a in a'


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
  (a, s') <- liftIO $ runH c st job
        `catch` \e -> case fromException e of
          Just (_ :: ExitCode) -> throwM e
          _ -> hPutBuilder stderr (getUtf8Builder $ display @Text "error: " <> display (tshow e)) >> runH c st errcase
  put s'
  return a

-- -- | Conditionally run an action, using a monadic event to decide
-- whenM :: (Monad m) => m Bool -> m () -> m ()
-- whenM a f = a >>= \b -> when b f

-- a la xmonad
userCode :: H a -> H (Maybe a)
userCode a = catchH (Just <$> a) (return Nothing)

-- | Same as userCode but with a default argument to return instead of using
-- Maybe, provided for convenience.
userCodeDef :: a -> H a -> H a
userCodeDef defValue a = fromMaybe defValue <$> userCode a

-----------------------------------------------------------
-- * manage/render Event queues

class HasEventQueues env where
  pendingManageQL :: Lens' env (TQueue (H ()))
  pendingRenderQL :: Lens' env (TQueue (H ()))

instance HasEventQueues HConf where
  pendingManageQL = lens pendingManageQ $ \s a -> s { pendingManageQ = a }
  pendingRenderQL = lens pendingRenderQ $ \s a -> s { pendingRenderQ = a }

getEventQueueFuncs :: (MonadReader env m, HasEventQueues env, MonadIO inner)
                   => m (H e1 -> inner (), H e2 -> inner ()) -- ^ @(queueForManagePhase, queueForRenderPhase)@
getEventQueueFuncs = (wrap *** wrap) <$> asks ((,) <$> view pendingManageQL <*> view pendingRenderQL)
  where
    wrap q = atomically . writeTQueue q . fmap (const ())

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
    S_INPUT_OVERRIDE (H Bool) [((ModMask, KeySym), SomeAction H)]
  | -- | Cancel input override mode
    S_INPUT_OVERRIDE_CANCEL
  deriving (Show, Generic)

instance Default SeatAction where def = S_NONE

-- XXX
instance Show (StablePtr a) where show :: StablePtr a -> String
                                  show _ = "<SP>"
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

