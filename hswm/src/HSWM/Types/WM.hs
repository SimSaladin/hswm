{-# LANGUAGE DefaultSignatures #-}
{-# OPTIONS_GHC -Wno-orphans #-}

-- |
-- Module      : HSWM.Types.WM
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Basic window management -related types.
module HSWM.Types.WM where

import Control.Monad.Fix
import Control.Monad.State
import Data.Aeson qualified as A
import Data.Map qualified as M
import Data.Monoid (Ap (..))
import Data.Typeable
import Foreign
import Foreign.C
import HSWM.StackSet as W
import HSWM.Types.Events
import HSWM.Types.TypeMap
import HSWM.Util.Types
import HSWM.Utils
import HSWM.XKB
import River
import Bindings.River qualified as R
import Bindings.RiverSafe qualified as R
import Wayland (RegistryCache, HasGlobalsRegistry(..))
import Bindings.Wayland.Client qualified as WL hiding (display)
import Bindings.Wayland.WlrOutputPowerManagementUnstableV1 qualified as Wlr

-- * User configuration

-- | User configuration
data HSWMConfig m l = HSWMConfig
  { keyBindings :: [((ModMask, KeySym), SomeAction m)],
    pointerBindings :: [((String, KeySym), SomeAction m)],
    defaultModMask :: !String,
    borderWidth :: !Int32,
    normalBorder :: !RiverColor,
    focusedBorder :: !RiverColor,
    borderEdges :: !Int32,
    startupHook :: !(m ()),
    exitHook :: !(m ()),
    handleEventHook :: !(Event -> m All),
    layoutHook :: !(l RiverWindow),
    renderHook :: !(m ()),
    logHook :: !(m ()),
    manageHook :: !ManageHook,
    -- | Keyboard layout set for connected keyboards
    xkbLayout :: !(Maybe XkbRuleNames),
    workspaces :: [WorkspaceId],
    -- | Keyboard repeat (rate, delay)
    repeatInfo :: !(Maybe (Int32, Int32)),
    -- | XCursor theme and size
    xcursor :: !(Maybe (String, Word32))
  }
  deriving stock (Generic)

-- | Default config (defaults).
instance (Default (m ()), Monoid (m ()), Monoid (m All)) => Default (HSWMConfig m Full) where
  def =
    (def :: HSWMConfig m Layout)
      { borderWidth = 2,
        normalBorder = parseRgba "0x0000B0",
        focusedBorder = parseRgba "0xFA0050",
        borderEdges = foldl' (.|.) 0 (fi . (.unwrap) <$> [EdgeLeft, EdgeRight, EdgeTop, EdgeBottom]),
        keyBindings = [],
        pointerBindings = [],
        defaultModMask = "Ctrl",
        startupHook = mempty,
        handleEventHook = mempty,
        layoutHook = Full,
        logHook = mempty,
        xkbLayout = Nothing,
        workspaces = ["1", "2", "3", "4"],
        xcursor = Nothing
      }

instance Default (Query (Endo WindowSet)) where
  def = return $ Endo id

deriving anyclass instance (Default (m ()), Monoid (m All), Monoid (m ())) => Default (HSWMConfig m Layout)

-- WindowSet / Stacks

-- | Virtual workspace indices
type WorkspaceId = String

-- | Physical screen indices
newtype ScreenId = S Int
  deriving stock (Eq, Show, Read, Generic)
  deriving newtype (Ord, Enum, Num, Integral, Real, A.ToJSON, A.FromJSON)

instance Bounded ScreenId where
  minBound = S 1
  maxBound = S maxBound

instance Default ScreenId where def = S (-1)

-- | The output dimensions
data ScreenDetail = SD {x, y, width, height :: !Int}
  deriving (Eq, Show, Read, Generic, Default)

data WorkspaceDetail = WD
  deriving (Eq, Show, Read, Generic, Default)

type WindowSet = W.StackSet WorkspaceId (Layout RiverWindow) RiverWindow WorkspaceDetail ScreenId ScreenDetail

type WindowSpace = W.Workspace WorkspaceId (Layout RiverWindow) RiverWindow WorkspaceDetail

-- ---------------------------------------------------------------------
-- Extensible state/config
--

-- | Every module must make the data it wants to store
-- an instance of this class.
--
-- Minimal complete definition: initialValue
class (Typeable a) => ExtensionClass a where
  {-# MINIMAL initialValue #-}

  -- | Defines an initial value for the state extension
  initialValue :: a

  -- | Specifies whether the state extension should be
  -- persistent. Setting this method to 'PersistentExtension'
  -- will make the stored data survive restarts, but
  -- requires a to be an instance of Read and Show.
  --
  -- It defaults to 'StateExtension', i.e. no persistence.
  extensionType :: a -> StateExtension
  extensionType = StateExtension

-- | Existential type to store a state extension.
data StateExtension
  = -- | Non-persistent state extension
    forall a. (ExtensionClass a) => StateExtension a
  | -- | Persistent extension
    forall a. (Read a, Show a, ExtensionClass a) => PersistentExtension a

-- | Existential type to store a config extension.
data ConfExtension = forall a. (Typeable a) => ConfExtension a

--------------------------------------------------------------
-- Layout messages

-- | Based on ideas in /An Extensible Dynamically-Typed Hierarchy of
-- Exceptions/, Simon Marlow, 2006. Use extensible messages to the
-- 'handleMessage' handler.
--
-- User-extensible messages must be a member of this class.
class (Typeable a) => Message a

-- | A wrapped value of some type in the 'Message' class.
data SomeMessage = forall a. (Message a) => SomeMessage a

-- | And now, unwrap a given, unknown 'Message' type, performing a (dynamic)
-- type check on the result.
fromMessage :: (Message m) => SomeMessage -> Maybe m
fromMessage (SomeMessage m) = cast m

-------------------------------------------------------------------------
-- Layouts

data Layout a = forall l. (LayoutClass l a, Read (l a)) => Layout (l a)

-- | Every layout must be an instance of 'LayoutClass', which defines
-- the basic layout operations along with a sensible default for each.
--
-- All of the methods have default implementations, so there is no
-- minimal complete definition.  They do, however, have a dependency
-- structure by default; this is something to be aware of should you
-- choose to implement one of these methods.  Here is how a minimal
-- complete definition would look like if we did not provide any default
-- implementations:
--
-- * 'runLayout' || (('doLayout' || 'pureLayout') && 'emptyLayout')
--
-- * 'handleMessage' || 'pureMessage'
--
-- * 'description'
--
-- Note that any code which /uses/ 'LayoutClass' methods should only
-- ever call 'runLayout', 'handleMessage', and 'description'!  In
-- other words, the only calls to 'doLayout', 'pureMessage', and other
-- such methods should be from the default implementations of
-- 'runLayout', 'handleMessage', and so on.  This ensures that the
-- proper methods will be used, regardless of the particular methods
-- that any 'LayoutClass' instance chooses to define.
class (Show (layout a), Typeable layout) => LayoutClass layout a where
  -- | By default, 'runLayout' calls 'doLayout' if there are any
  --   windows to be laid out, and 'emptyLayout' otherwise.  Most
  --   instances of 'LayoutClass' probably do not need to implement
  --   'runLayout'; it is only useful for layouts which wish to make
  --   use of more of the 'Workspace' information (for example,
  --   "XMonad.Layout.PerWorkspace").
  runLayout ::
    (HandleLayouts m) =>
    Workspace WorkspaceId (layout a) a WorkspaceDetail ->
    Rectangle ->
    m ([(a, Rectangle)], Maybe (layout a))
  runLayout (Workspace _ l ms _) r = maybe (emptyLayout l r) (doLayout l r) ms

  -- | Given a 'Rectangle' in which to place the windows, and a 'Stack'
  -- of windows, return a list of windows and their corresponding
  -- Rectangles.  If an element is not given a Rectangle by
  -- 'doLayout', then it is not shown on screen.  The order of
  -- windows in this list should be the desired stacking order.
  --
  -- Also possibly return a modified layout (by returning @Just
  -- newLayout@), if this layout needs to be modified (e.g. if it
  -- keeps track of some sort of state).  Return @Nothing@ if the
  -- layout does not need to be modified.
  --
  -- Layouts which do not need access to the 'H' monad ('IO', window
  -- manager state, or configuration) and do not keep track of their
  -- own state should implement 'pureLayout' instead of 'doLayout'.
  doLayout ::
    (HandleLayouts m) =>
    layout a ->
    Rectangle ->
    Stack a ->
    m ([(a, Rectangle)], Maybe (layout a))
  doLayout l r s = return (pureLayout l r s, Nothing)

  -- | This is a pure version of 'doLayout', for cases where we
  -- don't need access to the 'H' monad to determine how to lay out
  -- the windows, and we don't need to modify the layout itself.
  pureLayout :: layout a -> Rectangle -> Stack a -> [(a, Rectangle)]
  pureLayout _ r s = [(W.focus s, r)]

  -- | 'emptyLayout' is called when there are no windows.
  emptyLayout :: (HandleLayouts m) => layout a -> Rectangle -> m ([(a, Rectangle)], Maybe (layout a))
  emptyLayout _ _ = return ([], Nothing)

  -- | 'handleMessage' performs message handling.  If
  -- 'handleMessage' returns @Nothing@, then the layout did not
  -- respond to the message and the screen is not refreshed.
  -- Otherwise, 'handleMessage' returns an updated layout and the
  -- screen is refreshed.
  --
  -- Layouts which do not need access to the 'H' monad to decide how
  -- to handle messages should implement 'pureMessage' instead of
  -- 'handleMessage' (this restricts the risk of error, and makes
  -- testing much easier).
  handleMessage :: (HandleLayouts m) => layout a -> SomeMessage -> m (Maybe (layout a))
  handleMessage l = return . pureMessage l

  -- | Respond to a message by (possibly) changing our layout, but
  -- taking no other action.  If the layout changes, the screen will
  -- be refreshed.
  pureMessage :: layout a -> SomeMessage -> Maybe (layout a)
  pureMessage _ _ = Nothing

  -- | This should be a human-readable string that is used when
  -- selecting layouts by name.  The default implementation is
  -- 'show', which is in some cases a poor default.
  description :: layout a -> String
  description = show

type HandleLayouts m = (Monad m, m ~ HS)

-- | Simple fullscreen mode. Renders the focused window fullscreen.
data Full a = Full deriving (Show, Read)

instance LayoutClass Full a

instance Default (Layout a) where
  def = Layout Full

instance LayoutClass Layout RiverWindow where
  runLayout (Workspace i (Layout l) ms wd) r = fmap (fmap Layout) `fmap` runLayout (Workspace i l ms wd) r
  doLayout (Layout l) r s = fmap (fmap Layout) `fmap` doLayout l r s
  emptyLayout (Layout l) r = fmap (fmap Layout) `fmap` emptyLayout l r
  handleMessage (Layout l) = fmap (fmap Layout) . handleMessage l
  description (Layout l) = description l

instance Show (Layout a) where show (Layout l) = show l

-- | Using the 'Layout' as a witness, parse existentially wrapped windows
-- from a 'String'.
readsLayout :: Layout a -> String -> [(Layout a, String)]
readsLayout (Layout l) s = [(Layout (asTypeOf x l), rs) | (x, rs) <- reads s]

-- | 'LayoutMessages' are core messages that all layouts (especially stateful
-- layouts) should consider handling.
data LayoutMessages
  = -- | sent when a layout becomes non-visible
    Hide
  | -- | sent when xmonad is exiting or restarting
    ReleaseResources
  deriving (Eq, Show)

instance Message LayoutMessages

instance Message Event

-----------------------------------------------------------
-- * State & H/HS Monad

newtype H a = H (ReaderT HConf IO a)
  deriving newtype (Functor, Applicative, Monad, MonadFail, MonadIO, MonadReader HConf, MonadThrow, MonadUnliftIO)
  deriving newtype (MonadCatch, MonadMask)
  deriving (Semigroup, Monoid) via Ap H a

instance MonadLogger H where
  monadLoggerLog loc src lvl msg = do
    f <- asks _logFunc
    io $ f loc src lvl $ toLogStr msg
instance MonadLoggerIO H where
  askLoggerIO = asks _logFunc

newtype HS a = HS (ReaderT HConf (StateT HState IO) a)
  deriving newtype (Functor, Applicative, Monad, MonadFail, MonadIO, MonadState HState, MonadReader HConf, MonadThrow)
  deriving newtype (MonadCatch, MonadMask)
  deriving (Semigroup, Monoid) via Ap HS a

instance MonadLogger HS where
  monadLoggerLog loc src lvl msg = do
    f <- asks _logFunc
    io $ f loc src lvl $ toLogStr msg
instance MonadLoggerIO HS where
  askLoggerIO = asks _logFunc

-- | The read-only window manager state.
data HConf = HConf
  { _stateLocked :: Bool,
    -- | Just when executing seat-originating key/pointer bindings.
    thisSeat :: Maybe RiverSeat,
    -- | User-provided configuration.
    config :: !(HSWMConfig H Layout),
    -- | The Wayland display pointer
    _display :: !WL.Display,
    -- | Root logger function.
    _logFunc :: !(Loc -> LogSource -> LogLevel -> LogStr -> IO ()),
    -- | The global objects available through wl_registry.
    globals :: !(IORef RegistryCache),
    -- | The 'HState' XXX FIXME
    _state :: !(TMVar HState),
    -- | XXX ???
    eventQueue :: !(TQueue MainEvent),
    -- | Pending actions to be emitted in the next manage and render queues (respectively).
    pendingManageQ, pendingRenderQ :: !(TQueue (HS ())),
    globalTypeMap :: !(TMVar TypeMap)
  }
  deriving (Generic)

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

instance HasGlobalTMap HConf where
  globalTMap = lens globalTypeMap (\s a -> s {globalTypeMap = a})

instance HasGlobalsRegistry HConf where
  globalsRegistryL = lens globals (\s a -> s { globals = a })

-- instance HasLogFunc HConf where
--   logFuncL = lens _logFunc (\s a -> s {_logFunc = a})

instance Default (H ()) where def = return ()

instance Default (HS ()) where def = return ()

instance IsAction H (H ()) where runner = id

instance MonadFix H where
  mfix :: (a -> H a) -> H a
  mfix f = H (mfix g) where g a = let H a' = f a in a'

instance MonadFix HS where
  mfix :: (a -> HS a) -> HS a
  mfix f = HS (mfix g) where g a = let HS a' = f a in a'

-----------------------------------------------------------
-- * Query & ManageHook

type ManageHook = Query (Endo WindowSet)

type MaybeManageHook = Query (Maybe (Endo WindowSet))

newtype Query a = Query (ReaderT Window HS a)
  deriving newtype (Functor, Applicative, Monad, MonadIO, MonadReader Window)

runQuery :: Query a -> Window -> HS a
runQuery (Query q) = runReaderT q

liftHS :: HS a -> Query a
liftHS a = Query (lift a)

-----------------------------------------------------------
-- River & Wayland

-- ** Windows

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
    wBorderWidth :: !(Maybe Int32),
    new :: Bool,
    closed :: Bool,
    fullscreen :: Maybe RiverOutput,
    minimized :: Bool,
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

-- * River/WL Seat

data Seat = Seat
  { river_seat :: !RiverSeat,
    river_layer_shell_seat :: !R.RiverLayerShellSeat,
    xkb_bindings_seat :: !R.RiverXkbBindingsSeat,
    wl_seat :: !WL.Seat,
    position :: !(Int32, Int32), -- x, y
    name :: !String,
    caps :: !WL.Wl_seat_capability,
    --
    xkb_bindings :: !(XkbBindingMap (SomeAction H)),
    pointer_bindings :: [StablePtr (PointerBinding (SomeAction H))],
    --
    pending_action :: !SeatAction,
    submap_pending :: Maybe (SomeAction H, XkbBindingMap (SomeAction H)),
    currentFocus :: !SeatFocus,
    pendingPointerEnter :: !(Maybe (RiverWindow, (Int32, Int32))),
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
    focused, hovered, interacted :: RiverWindow,
    suppressChangeFocus :: !Int
  }
  deriving (Show, Generic)

data SeatFocus
  = SFocusNone
  | SFocusLayerShell SeatFocus -- ^ previous focus
  | SFocusWindow RiverWindow
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
  | -- | A key bind autorepeat is in progress.
    S_KEYBIND_REPEAT R.RiverXkbBinding (Async ())
  deriving (Show, Generic)

data SeatOp
  = SEAT_OP_NONE
  | SEAT_OP_MOVE
  | SEAT_OP_RESIZE
  deriving (Eq, Show)

instance Default SeatAction where def = S_NONE

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
        position = (0,0),
        name = "",
        caps = WL.toCEnum 0,
        removed = False,
        currentFocus = SFocusNone,
        pendingPointerEnter = Nothing,
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
        river_layer_shell_seat = R.RiverLayerShellSeat nullPtr,
        suppressChangeFocus = 0
      }

-- ** Outputs

data Output = Output
  { river_output :: !RiverOutput,
    width, height, x, y :: !Int32,
    scale :: !Int32,
    screen :: !ScreenId,
    outputName :: !String,
    outputDescription :: !String,
    river_layerShellOutput :: !R.RiverLayerShellOutput,
    nonExclusive :: Maybe (Int32, Int32, Int32, Int32), -- x, y, w, h
    outputPower :: Maybe Wlr.OutputPower,
    wlOutput :: !WL.Output
  }
  deriving (Show, Generic)

instance Default Output where
  def = Output def 0 0 0 0 0 (S (-1)) "" "" (R.RiverLayerShellOutput nullPtr) Nothing Nothing (WL.Output nullPtr)

---------------------------------------------------------
-- Actions / Submaps

data SomeAction m where
  SomeAction :: forall m a. (IsAction m a) => a -> SomeAction m

data Submap m = Submap
  { submapKeys :: [((ModMask, KeySym), SomeAction m)],
    submapDefault :: Maybe (SomeAction m)
  }
  deriving (Show, Generic)

class (Monad m, MonadIO m) => IsAction m a where
  runner :: a -> m ()

  actionSubmap :: a -> [((ModMask, KeySym), SomeAction m)]
  actionSubmap _ = []

  -- | Description based on the value (defaults to type info)
  actionDescription :: Proxy m -> a -> String
  actionDescription = typeDescription

  -- | Description based on type info
  typeDescription :: Proxy m -> a -> String
  default typeDescription :: (Typeable a) => Proxy m -> a -> String
  typeDescription _ = show . typeOf

instance (MonadIO m) => IsAction m (IO ()) where
  runner = liftIO

instance (MonadIO m) => IsAction m (SomeAction m) where
  runner (SomeAction a) = runner a
  actionSubmap (SomeAction a) = actionSubmap a
  actionDescription mp (SomeAction a) = actionDescription mp a
  typeDescription mp (SomeAction a) = typeDescription mp a

instance (MonadIO m, Typeable m) => IsAction m (Submap m) where
  runner Submap {..} = whenJust submapDefault runner
  actionSubmap Submap {..} = submapKeys

instance (MonadIO m) => Show (SomeAction m) where
  show x = case x of
    SomeAction (val :: (IsAction m a) => a) -> actionDescription (Proxy :: Proxy m) val

---------------------------------------------------------
-- Orphan instances

instance Show (Async a) where
  show :: Async a -> String
  show _ = "<Async>"

instance Show (StablePtr a) where
  show :: StablePtr a -> String
  show _ = "<SP>"
