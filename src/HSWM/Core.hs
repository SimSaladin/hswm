{-# LANGUAGE DefaultSignatures #-}
------------------------------------------------------------------------------
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
--
------------------------------------------------------------------------------
module HSWM.Core where

import           HSWM.StackSet (Stack, Workspace(..))
import qualified HSWM.StackSet as W
import           HSWM.XKB
import           HSWM.Utils

import           River
import qualified River.Safe as R
import           Wayland
import qualified Wayland.Client as WL
import qualified Wayland.Client.Extras as WL

import           Data.IORef
import qualified Data.Map as M
import           Data.Monoid (Ap(..))
import qualified Data.TMap as TM
import           Data.Typeable
import           Foreign
import           Foreign.C
import           System.Exit (ExitCode(..))

-- | User configuration
data HSWMConfig l = HSWMConfig
  { keyBindings     :: [((ModMask, KeySym), SomeAction)]
  , pointerBindings :: [((String, KeySym), SomeAction)]
  , defaultModMask  :: !String
  , borderWidth     :: !Int32
  , normalBorder    :: !RiverColor
  , focusedBorder   :: !RiverColor
  , borderEdges     :: !Int32
  , startupHook     :: !(H ())
  , exitHook        :: !(H ())
  , handleEventHook :: !(Event -> H All)
  , layoutHook      :: !(l RiverWindow)
  , manageHook      :: !(H ())
  , renderHook      :: !(H ())
  , logHook         :: !(H ())
  , xkbLayout       :: !(Maybe XkbRuleNames) -- ^ Keyboard layout set for connected keyboards
  , workspaces      :: [WorkspaceId]
  , repeatInfo      :: !(Maybe (Int32, Int32)) -- ^ Keyboard repeat (rate, delay)
  } deriving stock (Generic)

-- | The read-only window manager state.
data HConf = HConf
  { config  :: !(HSWMConfig Layout)
  , display :: !WlDisplay
    -- | The global objects available through wl_registry.
  , globals :: !(IORef RegistryCache)
  } deriving (Generic)

newtype TypeMap = TypeMap { unTypeMap :: TM.TMap }
  deriving (Show, Generic)

instance Default TypeMap where def = TypeMap TM.empty

-- | Mutable stete.
data HState = HState
  { windowset      :: !WindowSet
  , windowsetOld   :: !WindowSet
  , wlObjects      :: !TypeMap
  , _seats         :: [Seat]
  , _outputs       :: [Output]
  , _windows       :: [Window]
  , recoveredWindows :: !(M.Map String RiverWindow)
  } deriving (Generic, Default)

-- | Mash-up of all River/Wayland generated events
data Event = WindowManagerEvent !WindowManagerEvent
           | OutputEvent !OutputEvent
           | WindowEvent !WindowEvent
           | SeatEvent !SeatEvent
           | PointerEvent !PointerEvent
           | XkbEvent !XkbEvent
           | XkbSeatEvent !R.RiverXkbBindingsSeatV1Event
           | XkbConfigEvent !RiverXkbConfigV1Event
           | XkbKeyboardEvent !RiverXkbKeyboardV1Event
           | WlOutputEvent !WL.WlOutputEvent
           | WlShellSurfaceEvent !WL.WlShellSurfaceEvent
           | WlShmEvent !WL.WlShmEvent
           | LayerShellOutputEvent !R.RiverLayerShellOutputV1Event
           | LayerShellSeatEvent !R.RiverLayerShellSeatV1Event
           | InputManagerEvent !R.RiverInputManagerV1Event
           | InputDeviceEvent !R.RiverInputDeviceV1Event
           | LibinputConfigEvent !R.RiverLibinputConfigV1Event
           | ForeignTopLevelListV1 !WL.ExtForeignToplevelListV1Event
           | ForeignTopLevelHandleV1 !WL.ExtForeignToplevelHandleV1Event
           deriving (Show, Generic)

type WindowSet   = W.StackSet  WorkspaceId (Layout RiverWindow) RiverWindow WorkspaceDetail ScreenId ScreenDetail
type WindowSpace = W.Workspace WorkspaceId (Layout RiverWindow) RiverWindow WorkspaceDetail

-- | Virtual workspace indices
type WorkspaceId = String

-- | Physical screen indices
newtype ScreenId = S Int
  deriving stock (Eq,Show,Read,Generic)
  deriving newtype (Ord,Enum,Num,Integral,Real)

-- | The output dimensions
data ScreenDetail = SD { x, y, width, height :: !Int }
  deriving (Eq, Show, Read, Generic, Default)

data WorkspaceDetail = WD
  deriving (Eq, Show, Read, Generic, Default)

-------------------------------------------------------------------------
-- instance Default

deriving anyclass instance Default (HSWMConfig Layout)
instance                   Default (Event -> H All) where def = \_ -> mempty
instance                   Default (H ())           where def = return ()
instance                   Default ScreenId         where def = S (-1)

-------------------------------------------------------------------------
-- Layouts

data Layout a = forall l. (LayoutClass l a, Read (l a)) => Layout (l a)

-- | Using the 'Layout' as a witness, parse existentially wrapped windows
-- from a 'String'.
readsLayout :: Layout a -> String -> [(Layout a, String)]
readsLayout (Layout l) s = [(Layout (asTypeOf x l), rs) | (x, rs) <- reads s]

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
    runLayout :: Workspace WorkspaceId (layout a) a WorkspaceDetail
              -> Rectangle
              -> H ([(a, Rectangle)], Maybe (layout a))
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
    doLayout    :: layout a -> Rectangle -> Stack a
                -> H ([(a, Rectangle)], Maybe (layout a))
    doLayout l r s   = return (pureLayout l r s, Nothing)

    -- | This is a pure version of 'doLayout', for cases where we
    -- don't need access to the 'H' monad to determine how to lay out
    -- the windows, and we don't need to modify the layout itself.
    pureLayout  :: layout a -> Rectangle -> Stack a -> [(a, Rectangle)]
    pureLayout _ r s = [(W.focus s, r)]

    -- | 'emptyLayout' is called when there are no windows.
    emptyLayout :: layout a -> Rectangle -> H ([(a, Rectangle)], Maybe (layout a))
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
    handleMessage :: layout a -> SomeMessage -> H (Maybe (layout a))
    handleMessage l  = return . pureMessage l

    -- | Respond to a message by (possibly) changing our layout, but
    -- taking no other action.  If the layout changes, the screen will
    -- be refreshed.
    pureMessage :: layout a -> SomeMessage -> Maybe (layout a)
    pureMessage _ _  = Nothing

    -- | This should be a human-readable string that is used when
    -- selecting layouts by name.  The default implementation is
    -- 'show', which is in some cases a poor default.
    description :: layout a -> String
    description      = show

instance LayoutClass Layout RiverWindow where
    runLayout (Workspace i (Layout l) ms wd) r = fmap (fmap Layout) `fmap` runLayout (Workspace i l ms wd) r
    doLayout (Layout l) r s  = fmap (fmap Layout) `fmap` doLayout l r s
    emptyLayout (Layout l) r = fmap (fmap Layout) `fmap` emptyLayout l r
    handleMessage (Layout l) = fmap (fmap Layout) . handleMessage l
    description (Layout l)   = description l

instance Show (Layout a) where show (Layout l) = show l

-- | Simple fullscreen mode. Renders the focused window fullscreen.
data Full a = Full deriving (Show, Read)

instance LayoutClass Full a

instance Default (Layout a) where
  def = Layout $ Full

--------------------------------------------------------------
-- Layout messages

-- | Based on ideas in /An Extensible Dynamically-Typed Hierarchy of
-- Exceptions/, Simon Marlow, 2006. Use extensible messages to the
-- 'handleMessage' handler.
--
-- User-extensible messages must be a member of this class.
--
class Typeable a => Message a

-- |
-- A wrapped value of some type in the 'Message' class.
--
data SomeMessage = forall a. Message a => SomeMessage a

-- |
-- And now, unwrap a given, unknown 'Message' type, performing a (dynamic)
-- type check on the result.
--
fromMessage :: Message m => SomeMessage -> Maybe m
fromMessage (SomeMessage m) = cast m

-- X Events are valid Messages.
instance Message Event

-- | 'LayoutMessages' are core messages that all layouts (especially stateful
-- layouts) should consider handling.
data LayoutMessages = Hide              -- ^ sent when a layout becomes non-visible
                    | ReleaseResources  -- ^ sent when xmonad is exiting or restarting
    deriving (Eq, Show)

instance Message LayoutMessages

---------------------------------------------------------------

-- a la xmonad
newtype H a = H (ReaderT HConf (StateT HState IO) a)
  deriving newtype (Functor, Applicative, Monad, MonadFail, MonadIO, MonadState HState, MonadReader HConf)
  deriving (Semigroup, Monoid) via Ap H a

-- a la xmonad
runH :: HConf -> HState -> H a -> IO (a, HState)
runH c st (H a) = runStateT (runReaderT a c) st

-- a la xmonad
catchH :: H a -> H a -> H a
catchH job errcase = do
  st <- get
  c <- ask
  (a, s') <- liftIO $ runH c st job `catch`
    \e -> case fromException e of
            Just (_ :: ExitCode) -> throw e
            _ -> log' ("error: " <> tshow e) >> runH c st errcase
  put s'
  return a

-- | Conditionally run an action, using a monadic event to decide
whenM :: Monad m => m Bool -> m () -> m ()
whenM a f = a >>= \b -> when b f

-- a la xmonad
userCode :: H a -> H (Maybe a)
userCode a = catchH (Just <$> a) (return Nothing)

-- | Same as userCode but with a default argument to return instead of using
-- Maybe, provided for convenience.
userCodeDef :: a -> H a -> H a
userCodeDef defValue a = fromMaybe defValue <$> userCode a

data SeatAction = S_NONE
                | S_SUBMAP_NEXT_KEY SomeAction [StablePtr (XkbBinding SomeAction)]
                | S_SUBMAP_CANCEL
                deriving (Generic)

instance Default SeatAction where def = S_NONE

data Seat = Seat
  { river_seat                           :: !RiverSeat
  , river_layer_shell_seat               :: !(Ptr R.River_layer_shell_seat_v1)
  , xkb_bindings_seat                    :: !R.RiverXkbBindingsSeatV1
  --
  , xkb_bindings                         :: [StablePtr (XkbBinding SomeAction)]
  , pointer_bindings                     :: [StablePtr (PointerBinding SomeAction)]
  --
  , pending_action                       :: !SeatAction
  , submap_pending                       :: Maybe (SomeAction, [StablePtr (XkbBinding SomeAction)])
  -- TODO: review below
  , removed                              :: Bool
  , focused, hovered, interacted         :: RiverWindow
  , op_window                            :: RiverWindow
  , op                                   :: SeatOp
  , op_release                           :: Bool
  , op_start_x, op_start_y, op_dx, op_dy :: Int32
  , op_start_width, op_start_height      :: Int32
  , op_edges                             :: Int32
  } deriving (Generic)

instance Default Seat where
  def = Seat
    { river_seat = nullPtr
    , xkb_bindings_seat = nullPtr
    , removed = False
    , focused = invalidWindow
    , hovered = invalidWindow
    , interacted = invalidWindow
    , op_window = invalidWindow
    , op = SEAT_OP_NONE
    , op_release = False
    , op_start_x = 0
    , op_start_y = 0
    , op_dx = 0
    , op_dy = 0
    , op_start_width = 0
    , op_start_height = 0
    , op_edges = 0
    , xkb_bindings = mempty
    , pointer_bindings = mempty
    , pending_action = S_NONE
    , submap_pending = Nothing
    , river_layer_shell_seat = nullPtr
    }

-- XXX: ????
data SeatOp = SEAT_OP_NONE
            | SEAT_OP_MOVE
            | SEAT_OP_RESIZE

data Output = Output
  { river_output           :: !RiverOutput
  , width, height, x, y    :: !Int32
  , scale                  :: !Int32
  , screen                 :: !ScreenId
  , outputName             :: !String
  , outputDescription      :: !String
  , river_layerShellOutput :: !(Ptr R.River_layer_shell_output_v1)
  , nonExclusive           :: Maybe (Int32, Int32, Int32, Int32) -- x, y, w, h
  } deriving (Show, Generic)

instance Default Output where
  def = Output nullPtr 0 0 0 0 0 (S (-1)) "" "" nullPtr Nothing

data Window = Window
  { river_window                                 :: !RiverWindow
  , node                                         :: !RiverNode
  , x, y, width, height                          :: !Int32
  , title, appId, identifier                     :: !String
  , min_height, min_width, max_height, max_width :: !Int -- ^ Dimension hints
  , parent                                       :: !(Maybe RiverWindow)
  , unreliablePid                                :: !(Maybe Int)
  , decorationHint                               :: !(Maybe R.River_window_v1_decoration_hint)
  , presentationHint                             :: !(Maybe R.River_output_v1_presentation_mode)
  , new                                          :: Bool
  , closed                                       :: Bool
  , fullscreen                                   :: Bool
  , p_manage_action                              :: [WindowManageAction]
  , p_render_border                              :: Maybe RiverColor
  , p_render_pos                                 :: Maybe (Int32, Int32)
  , p_render_place                               :: CInt
  , p_set_visible                                :: Maybe Bool
  -- TODO: review below
  , pointer_move_requested                       :: RiverSeat
  , pointer_resize_requested                     :: RiverSeat
  , pointer_resize_requested_edges               :: Int32
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
modifyWindowSet f = modify' $ \s -> s { windowset = f (windowset s) }

-------------------------------------------------------
-- $wlObjects

getOrCreateObject :: (Typeable a, MonadState HState m, MonadIO m) => IO a -> m a
getOrCreateObject m = gets (TM.lookup . unTypeMap . wlObjects) >>= \case
  Just x -> return x
  Nothing -> liftIO m >>= \x -> modifyWlObjects (TM.insert x) >> return x

modifyWlObjects :: MonadState HState m => (TM.TMap -> TM.TMap) -> m ()
modifyWlObjects f = modify $ \s -> s { wlObjects = TypeMap $ f $! unTypeMap $ wlObjects s }

withObjects :: MonadState HState m => (TM.TMap -> m a) -> m a
withObjects f = gets (unTypeMap . wlObjects) >>= f

putObject :: Typeable a => a -> H ()
putObject x = modifyWlObjects $ TM.insert x

getObject :: Typeable a => H a
getObject = gets (TM.lookup . unTypeMap . wlObjects) >>= \case
  (Nothing :: Maybe a) -> error ("getObject: no such object: " ++ show (typeRep (Proxy :: Proxy a)))
  Just x -> return x

withObject :: (Typeable a) => (a -> H b) -> H b
withObject f = gets (TM.lookup . unTypeMap . wlObjects) >>= \case
  (Nothing :: Maybe a) -> error ("withObject: no such object: " ++ show (typeRep (Proxy :: Proxy a)))
  Just x -> f x

withObjectDef :: (Typeable a, MonadState HState m) => b -> (a -> m b) -> m b
withObjectDef od f = gets (TM.lookup . unTypeMap . wlObjects) >>= \case
  Nothing -> return od
  Just x -> f x

---------------------------------------------------------
-- Actions

toSomeAction :: IsAction a => a -> SomeAction
toSomeAction = SomeAction

class IsAction a where
  runner :: a -> H ()

  actionSubmap :: a -> [((ModMask, KeySym), SomeAction)]
  actionSubmap _ = []

  -- | Description based on the value (defaults to type info)
  actionDescription :: a -> String
  actionDescription = typeDescription

  -- | Description based on type info
  typeDescription :: a -> String
  default typeDescription :: Typeable a => a -> String
  typeDescription = show . typeOf

data SomeAction where
  SomeAction :: forall a. IsAction a => a -> SomeAction

instance IsAction SomeAction where
  runner             (SomeAction a) = runner a
  actionSubmap       (SomeAction a) = actionSubmap a
  actionDescription  (SomeAction a) = actionDescription a
  typeDescription    (SomeAction a) = typeDescription a

instance Show SomeAction where
  show (SomeAction a) = actionDescription a

data Submap = Submap
  { submapKeys    :: [((ModMask, KeySym), SomeAction)]
  , submapDefault :: Maybe SomeAction
  } deriving (Show, Generic)

instance IsAction Submap where
  runner Submap{..} = whenJust submapDefault runner

  actionSubmap Submap{..} = submapKeys

  --actionDescription Submap{..} = "Submap"

----------------------------------------------------------
-- Default config

-- | Configuration defaults
instance Default (HSWMConfig Full) where
  def = (def :: HSWMConfig Layout)
    { borderWidth     = 2
    , normalBorder    = parseRgba "0x0000B0"
    , focusedBorder   = parseRgba "0xFA0050"
    , borderEdges     = foldl (.|.) 0 (fi . fromEnum <$> [EdgeLeft, EdgeRight, EdgeTop, EdgeBottom])
    , keyBindings     = [ -- (("M", _XKB_KEY_n), SendMessage ACTION_FOCUS_NEXT)
                        ]
    , pointerBindings = [ -- (("M", _BTN_LEFT), SendMessage ACTION_MOVE)
                        -- , (("", _BTN_RIGHT), SendMessage ACTION_MOVE)
                        ]
    , defaultModMask  = "Ctrl"
    , startupHook     = mempty
    , handleEventHook = mempty
    , layoutHook      = Full
    , logHook         = mempty
    , xkbLayout       = Nothing
    , workspaces      = [ "1", "2", "3", "4" ]
    }
