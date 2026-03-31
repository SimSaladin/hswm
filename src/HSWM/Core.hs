{-# LANGUAGE DerivingVia #-}
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

import           Data.Monoid (Ap(..))
import qualified Data.TMap as TM
import           Data.Typeable
import           Foreign
import           System.Exit (ExitCode(..))
import           Data.IORef

import           HSWM.StackSet (Stack, Workspace(..))
import qualified HSWM.StackSet as W
import           HSWM.XKB
import           River
import           Wayland
import qualified Wayland.Client as WL
import qualified River.Safe as R
import qualified Generated.River.LayerShellV1 as R

-- | User configuration
data HSWMConfig l = HSWMConfig
  { keyBindings     :: [((String, KeySym), SomeAction)]
  , pointerBindings :: [((String, KeySym), SomeAction)]
  , defaultModMask  :: !String
  , borderWidth     :: !Int32
  , normalBorder    :: !RiverColor
  , focusedBorder   :: !RiverColor
  , borderEdges     :: !Int32
  , startupHook     :: !(H ())
  , handleEventHook :: !(Event -> H All)
  , layoutHook      :: !(l RiverWindow)
  , logHook         :: !(H ())
  , xkbLayout       :: !(Maybe XkbRuleNames) -- ^ Keyboard layout set for connected keyboards
  }

-- | The read-only window manager state.
data HConf = HConf
  { config  :: !(HSWMConfig Layout)
  , display :: !WlDisplay
    -- | The global objects available through wl_registry.
  , globals :: !(IORef RegistryCache)
  }

-- | Mutable stete.
data HState = HState
  { windowset      :: !WindowSet
  , windowsetOld   :: !WindowSet
  , wlObjects      :: !TM.TMap
  , _seats         :: [Seat]
  , _outputs       :: [Output]
  , _windows       :: [Window]
  }

-- | Mash-up of all River/Wayland generated events
data Event = WindowManagerEvent !WindowManagerEvent
           | OutputEvent !OutputEvent
           | WindowEvent !WindowEvent
           | SeatEvent !SeatEvent
           | PointerEvent !PointerEvent
           | XkbEvent !XkbEvent
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
           deriving (Show)

type WindowSet   = W.StackSet  WorkspaceId (Layout RiverWindow) RiverWindow WorkspaceDetail ScreenId ScreenDetail
type WindowSpace = W.Workspace WorkspaceId (Layout RiverWindow) RiverWindow WorkspaceDetail

-- | Virtual workspace indices
type WorkspaceId = String

-- | Physical screen indices
newtype ScreenId = S Int deriving (Eq,Ord,Show,Read,Enum,Num,Integral,Real)

-- | The output dimensions
data ScreenDetail = SD { x, y, width, height :: !Int }
  deriving (Eq, Show, Read)

data WorkspaceDetail = WD
  deriving (Eq, Show, Read)

instance Default WorkspaceDetail where
  def = WD

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
    deriving Eq

instance Message LayoutMessages

---------------------------------------------------------------

-- a la xmonad
newtype H a = H (ReaderT HConf (StateT HState IO) a)
  deriving (Functor, Applicative, Monad, MonadFail, MonadIO, MonadState HState, MonadReader HConf)
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

data Seat = Seat
  { river_seat                           :: RiverSeat
  , new                                  :: Bool
  , removed                              :: Bool
  , focused, hovered, interacted         :: RiverWindow
  , op_window                            :: RiverWindow
  , op                                   :: SeatOp
  , op_release                           :: Bool
  , op_start_x, op_start_y, op_dx, op_dy :: Int32
  , op_start_width, op_start_height      :: Int32
  , op_edges                             :: Int32
  , xkb_bindings                         :: [StablePtr (XkbBinding SomeAction)]
  , pointer_bindings                     :: [StablePtr (PointerBinding SomeAction)]
  , pending_action                       :: !(Maybe SomeAction)
  , river_layer_shell_seat :: Ptr R.River_layer_shell_seat_v1
  }

instance Default Seat where
  def = Seat
    { river_seat = nullPtr
    , new = True
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
    , pending_action = Nothing
    , river_layer_shell_seat = nullPtr
    }

-- XXX: ????
data SeatOp = SEAT_OP_NONE
            | SEAT_OP_MOVE
            | SEAT_OP_RESIZE

data Output = Output
  { river_output        :: RiverOutput
  , width, height, x, y :: !Int32
  , screen              :: !ScreenId
  , new                 :: Bool
  , river_layerShellOutput    :: Ptr R.River_layer_shell_output_v1
  , nonExclusive :: Maybe (Int32, Int32, Int32, Int32) -- x, y, w, h
  } deriving Show

instance Default Output where
  def = Output nullPtr 0 0 0 0 (S (-1)) True nullPtr Nothing

data Window = Window
  { river_window                   :: RiverWindow
  , new                            :: Bool
  , node                           :: RiverNode
  , closed                         :: Bool
  , x, y, width, height            :: Int32
  , pointer_move_requested         :: RiverSeat
  , pointer_resize_requested       :: RiverSeat
  , pointer_resize_requested_edges :: Int32
  , appId                          :: String
  , title                          :: String
  , min_height, min_width, max_height, max_width :: Int
  } deriving Show

instance Default Window where
  def = Window
    { river_window = invalidWindow
    , new = True -- XXX
    , node = RiverNode nullPtr
    , closed = False -- XXX
    , x = 0
    , y = 0
    , width = 0
    , height = 0
    , pointer_move_requested = invalidSeat -- XXX
    , pointer_resize_requested = invalidSeat -- XXX
    , pointer_resize_requested_edges = 0 -- XXX
    , appId = ""
    , title = ""
    , min_height = 0
    , min_width = 0
    , max_height = maxBound
    , max_width = maxBound
    }

-------------------------------------------------------

-- | Run a monadic action with the current stack set
withWindowSet :: (WindowSet -> H a) -> H a
withWindowSet f = gets windowset >>= f

modifyWindowSet :: (WindowSet -> WindowSet) -> H ()
modifyWindowSet f = modify' $ \s -> s { windowset = f (windowset s) }

-------------------------------------------------------
-- $wlObjects

getOrCreateObject :: (Typeable a, MonadState HState m, MonadIO m) => IO a -> m a
getOrCreateObject m = gets (TM.lookup . wlObjects) >>= \case
  Just x -> return x
  Nothing -> liftIO m >>= \x -> withWlObjects (TM.insert x) >> return x

withWlObjects :: MonadState HState m => (TM.TMap -> TM.TMap) -> m ()
withWlObjects f = modify $ \s -> s { wlObjects = f $! wlObjects s }

getObject :: Typeable a => H a
getObject = gets (TM.lookup . wlObjects) >>= \case
  Nothing -> error "getObject: no such object"
  Just x -> return x

withObject :: (Typeable a) => (a -> H b) -> H b
withObject f = gets (TM.lookup . wlObjects) >>= \case
  Nothing -> error "withObject: no such object"
  Just x -> f x

withObjectDef :: (Typeable a, MonadState HState m) => b -> (a -> m b) -> m b
withObjectDef od f = gets (TM.lookup . wlObjects) >>= \case
  Nothing -> return od
  Just x -> f x

---------------------------------------------------------
-- Actions

toSomeAction :: IsAction a => a -> SomeAction
toSomeAction = SomeAction

data SomeAction where
  SomeAction :: forall a. IsAction a => a -> SomeAction

class IsAction a where
  runner :: a -> H ()

  -- | Description based on the value (defaults to type info)
  actionDescription :: a -> String
  actionDescription = typeDescription

  -- | Description based on type info
  typeDescription :: a -> String
  default typeDescription :: Typeable a => a -> String
  typeDescription = show . typeOf

instance IsAction SomeAction where
  runner          (SomeAction a) = runner a
  actionDescription     (SomeAction a) = actionDescription a
  typeDescription (SomeAction a) = typeDescription a

instance Show SomeAction where
  show (SomeAction a) = actionDescription a
