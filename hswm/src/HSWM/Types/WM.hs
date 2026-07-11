{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE NoFieldSelectors  #-}
{-# LANGUAGE TemplateHaskell   #-}
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
module HSWM.Types.WM
  ( module HSWM.Types.WM
  , module HSWM.Types.Action
  , module HSWM.Types.Window
  , module HSWM.Types.Seat
  , module HSWM.Types.Output
  , module HSWM.Types.Config
  , module HSWM.Types.Simple
  , module HSWM.Types.Lens
  ) where

import qualified HSWM.StackSet as W
import           HSWM.Types.Action
import           HSWM.Types.Config
import           HSWM.Types.Events
import           HSWM.Types.Lens
import           HSWM.Types.Output
import           HSWM.Types.Seat
import           HSWM.Types.Simple
import           HSWM.Types.TypeMap
import           HSWM.Types.Window
import           HSWM.Wayland (HasGlobalsRegistry(..))

import qualified WL.Client as WL

import           Control.Monad.Fix
import           Control.Monad.State
import qualified Data.Map as M
import           Data.Monoid (Ap(..))
import           Data.Typeable
import           System.Log.FastLogger (LoggerSet)

-- * Types

type WindowSet       = WindowSetX Layout
type WindowSpace     = WindowSpaceX Layout
type Seat            = Seat' H
type Query           = QueryT HS
type ManageHook      = ManageHookX HS
type MaybeManageHook = MaybeManageHookX HS

-- * Exceptions

data HSWMException
  = HSWMStateLocked String
  | HSWMTimeout String
  deriving stock (Eq, Ord, Show, Generic)
  deriving anyclass (NFData)

instance Exception HSWMException

-- * WindowSet / Stacks

-- ---------------------------------------------------------------------
-- * Extensible state/config
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

instance NFData StateExtension where
  rnf (StateExtension a)      = a `seq` ()
  rnf (PersistentExtension a) = a `seq` ()

--------------------------------------------------------------
-- * Layout messages

-- | Based on ideas in /An Extensible Dynamically-Typed Hierarchy of
-- Exceptions/, Simon Marlow, 2006. Use extensible messages to the
-- 'handleMessage' handler.
--
-- User-extensible messages must be a member of this class.
class Typeable a => Message a

-- | A wrapped value of some type in the 'Message' class.
data SomeMessage = forall a. Message a => SomeMessage a

-- | And now, unwrap a given, unknown 'Message' type, performing a (dynamic)
-- type check on the result.
fromMessage :: Message m => SomeMessage -> Maybe m
fromMessage (SomeMessage m) = cast m

-- | 'LayoutMessages' are core messages that all layouts (especially stateful
-- layouts) should consider handling.
data LayoutMessages
  = -- | Sent when a layout becomes non-visible
    Hide
  | -- | Sent when WM is exiting or restarting
    ReleaseResources
  deriving stock (Eq, Ord, Show, Read, Generic)
  deriving anyclass (NFData)

instance Message LayoutMessages

instance Message Event

-------------------------------------------------------------------------
-- * Layouts

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
class (Typeable layout, Show (layout a)) => LayoutClass layout a where
  -- | By default, 'runLayout' calls 'doLayout' if there are any
  --   windows to be laid out, and 'emptyLayout' otherwise.  Most
  --   instances of 'LayoutClass' probably do not need to implement
  --   'runLayout'; it is only useful for layouts which wish to make
  --   use of more of the 'Workspace' information (for example,
  --   "XMonad.Layout.PerWorkspace").
  runLayout
    :: W.Workspace WorkspaceId (layout a) a WorkspaceDetail
    -> Rectangle
    -> HS ([(a, Rectangle)], Maybe (layout a))
  runLayout (W.Workspace _ l ms _) r = maybe (emptyLayout l r) (doLayout l r) ms

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
  doLayout :: layout a -> Rectangle -> W.Stack a -> HS ([(a, Rectangle)], Maybe (layout a))
  doLayout l r s = return (pureLayout l r s, Nothing)

  -- | This is a pure version of 'doLayout', for cases where we
  -- don't need access to the 'H' monad to determine how to lay out
  -- the windows, and we don't need to modify the layout itself.
  pureLayout :: layout a -> Rectangle -> W.Stack a -> [(a, Rectangle)]
  pureLayout _ r s = [(W.focus s, r)]

  -- | 'emptyLayout' is called when there are no windows.
  emptyLayout :: layout a -> Rectangle -> HS ([(a, Rectangle)], Maybe (layout a))
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
  handleMessage :: layout a -> SomeMessage -> HS (Maybe (layout a))
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

-- ** Layout

data Layout a = forall l. (LayoutClass l a, Read (l a)) => Layout (l a)

instance Default (Layout a) where
  def = Layout Full

instance Show (Layout a) where
  show (Layout l) = show l

instance NFData (Layout a) where
  rnf (Layout l) = l `seq` ()

instance LayoutClass Layout RiverWindow where
  runLayout (W.Workspace i (Layout l) ms wd) r = fmap (fmap Layout) `fmap` runLayout (W.Workspace i l ms wd) r
  doLayout (Layout l) r s = fmap (fmap Layout) `fmap` doLayout l r s
  emptyLayout (Layout l) r = fmap (fmap Layout) `fmap` emptyLayout l r
  handleMessage (Layout l) = fmap (fmap Layout) . handleMessage l
  description (Layout l) = description l

-- | Using the 'Layout' as a witness, parse existentially wrapped windows
-- from a 'String'.
readsLayout :: Layout a -> String -> [(Layout a, String)]
readsLayout (Layout l) s = [(Layout (asTypeOf x l), rs) | (x, rs) <- reads s]

-- * Full

-- | Simple fullscreen mode. Renders the focused window fullscreen.
data Full a = Full
  deriving stock (Eq, Ord, Show, Read, Generic)
  deriving anyclass (Default, NFData)

instance LayoutClass Full a

-- * Event

-----------------------------------------------------------
-- * State & H/HS Monad

-- | The read-only window manager state.
data HConf = HConf
  { _stateLocked                   :: {-# UNPACK #-} !Bool
    -- | Just when executing seat-originating key/pointer bindings.
  , thisSeat                       :: !(Maybe RiverSeat)
    -- | User-provided configuration.
  , config                         :: !(HSWMConfig H Layout)
    -- | The Wayland display pointer
  , _wlDisplay                     :: {-# UNPACK #-} !WL.Display
    -- | Root logger function.
  , _logFunc                       :: !(Loc -> LogSource -> LogLevel -> LogStr -> IO ())
    -- | The global objects available through wl_registry.
  , _loggerSet                     :: !LoggerSet
  , globals                        :: !(MVar WL.RegistryState)
    -- | The 'HState' XXX FIXME
  , _state                         :: !(TMVar HState)
    -- | Queue for main events.
  , eventQueue                     :: !(TQueue MainEvent)
    -- | Pending actions to be emitted in the next manage and render queues (respectively).
  , pendingManageQ, pendingRenderQ :: !(TQueue (HS ()))
    -- | Global type-indexed variables.
  , globalTypeMap                  :: !(TMVar TypeMap)
  } deriving (Generic)

-- | Mutable stete.
data HState = HState
    -- | Current stackset
  { windowset        :: !WindowSet
    -- | Old stackset (for change tracking)
  , windowsetOld     :: !WindowSet
    -- | Current seats.
  , seatList         :: ![Seat]
    -- | Current outputs.
  , outputList       :: ![Output]
    -- | Current windows.
  , _windows         :: !(M.Map RiverWindow Window)
    -- | While initializing after soft restart, windows from the old state are tracked here.
  , recoveredWindows :: !(M.Map String RiverWindow)
    -- | stores custom state information.
    --
    -- The module "HSWM.Util.ExtensibleState"
    -- provides additional information and a simple interface for using this.
  , extensibleState  :: !(M.Map String (Either String StateExtension))
  }
  deriving stock (Generic)
  deriving anyclass (Default, NFData)

-- | IO and read-only global environment 'HConf'.
--
-- Runnable in parallel.
--
-- Run 'HS' actions via 'runInHS'.
newtype H a = H (ReaderT HConf IO a)
  deriving newtype (Functor, Applicative, Monad, MonadFix, MonadFail, MonadIO, MonadThrow, MonadCatch, MonadMask)
  deriving newtype (MonadUnliftIO)
  deriving newtype (MonadReader HConf)
  deriving (Semigroup, Monoid) via Ap H a

-- | IO, read-only global 'HConf' and modifiable 'HState'.
--
-- Only one 'HS' action can run concurrently.
newtype HS a = HS (StateT HState (ReaderT HConf IO) a)
  deriving newtype (Functor, Applicative, Monad, MonadFix, MonadFail, MonadIO, MonadThrow, MonadCatch, MonadMask)
  deriving newtype (MonadReader HConf, MonadState HState)
  deriving (Semigroup, Monoid) via Ap HS a

-- Lenses

makeLensesWith' classPerField
  [ ''HConf
  , ''HState
  ]

-- Aliases  XXX
mainEventQL :: Lens' HConf (TQueue MainEvent)
mainEventQL = eventQueue

-- Aliases  XXX
pendingManageQL :: Lens' HConf (TQueue (HS ()))
pendingManageQL = pendingManageQ

-- Aliases  XXX
pendingRenderQL :: Lens' HConf (TQueue (HS ()))
pendingRenderQL = pendingRenderQ

instance HasGlobalTMap HConf where
  globalTMap = globalTypeMap

instance HasGlobalsRegistry HConf where
  globalsRegistryL = globals

---------------------------------------------------------
-- H/HS instances

type instance Stateful H  = HS
type instance Stateful HS = HS

type instance LayoutProxy H  = Layout
type instance LayoutProxy HS = Layout

instance Show (H ())    where show _ = "H()"
instance Show (H Bool)  where show _ = "H(Bool)"
instance Show (HS Bool) where show _ = "HS(Bool)"

instance Default a => Default (H a)  where def = pure def
instance Default a => Default (HS a) where def = pure def

instance MonadLoggerIO H  where askLoggerIO = view _logFunc
instance MonadLoggerIO HS where askLoggerIO = view _logFunc

instance MonadLogger H where
  monadLoggerLog loc src lvl msg = do
    f <- askLoggerIO
    io $ f loc src lvl (toLogStr msg)
instance MonadLogger HS where
  monadLoggerLog loc src lvl msg = do
    f <- askLoggerIO
    io $ f loc src lvl (toLogStr msg)

---------------------------------------------------------
-- Orphan instances

instance Show (Async a) where show _ = "<Async>"
