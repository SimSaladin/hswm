{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE NoFieldSelectors #-}
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
module HSWM.Types.WM (
  module HSWM.Types.WM,
  module HSWM.Types.Action,
  module HSWM.Types.Window,
  module HSWM.Types.Seat,
  module HSWM.Types.Output,
  module HSWM.Types.Config,
  module HSWM.Types.Simple,
  module HSWM.Types.Lens,
) where

import HSWM.StackSet qualified as W
import HSWM.Types.Action
import HSWM.Types.Config
import HSWM.Types.Events
import HSWM.Types.Lens
import HSWM.Types.Output
import HSWM.Types.Seat
import HSWM.Types.Simple
import HSWM.Types.TypeMap
import HSWM.Types.Window

import Text.XkbCommon qualified as Xkb
import WL.Client qualified as WL

import Control.Monad.Fix
import Control.Monad.State
import Data.Aeson qualified as A
import Data.Data
import Data.Map qualified as M
import Data.Monoid (Ap (..))
import GHC.Stack (callStack, prettyCallStack)

-- * Types

type WindowSpace = W.Workspace WorkspaceId (Layout RiverWindow) RiverWindow WorkspaceDetail
type WindowSet = W.StackSet WorkspaceId (Layout RiverWindow) RiverWindow WorkspaceDetail ScreenId ScreenDetail
type ManageHook = Query (Endo WindowSet)
type MaybeManageHook = Query (Maybe (Endo WindowSet))
type Query = QueryT HS

type Seat = Seat' H

type instance Stateful H = HS
type instance Stateful HS = HS
type instance ManageHook' H = ManageHook

-- type instance MaybeManageHook' H = MaybeManageHook

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
  --     persistent. Setting this method to 'PersistentExtension'
  --     will make the stored data survive restarts, but
  --     requires a to be an instance of Read and Show.
  --
  --     It defaults to 'StateExtension', i.e. no persistence.
  extensionType :: a -> StateExtension
  extensionType = StateExtension

-- | Existential type to store a state extension.
data StateExtension
  = -- | Non-persistent state extension
    forall a. (ExtensionClass a) => StateExtension a
  | -- | Persistent extension
    forall a. (Read a, Show a, ExtensionClass a) => PersistentExtension a

instance NFData StateExtension where
  rnf (StateExtension a) = a `seq` ()
  rnf (PersistentExtension a) = a `seq` ()

instance Data StateExtension where
  toConstr _ = error "toConstr"
  gunfold _ _ = error "gunfold"
  dataTypeOf _ = mkNoRepType "StateExtension"

--------------------------------------------------------------

-- * Layout messages

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

-- | 'LayoutMessages' are core messages that all layouts (especially stateful
-- layouts) should consider handling.
data LayoutMessages
  = -- | Sent when a layout becomes non-visible
    Hide
  | -- | Sent when WM is exiting or restarting
    ReleaseResources
  deriving stock (Eq, Ord, Show, Read, Generic, Data)
  deriving anyclass (NFData)

instance Message LayoutMessages

-- instance Message Event

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
  --     windows to be laid out, and 'emptyLayout' otherwise.  Most
  --     instances of 'LayoutClass' probably do not need to implement
  --     'runLayout'; it is only useful for layouts which wish to make
  --     use of more of the 'Workspace' information (for example,
  --     "XMonad.Layout.PerWorkspace").
  runLayout ::
    W.Workspace WorkspaceId (layout a) a WorkspaceDetail
    -> Rectangle
    -> HS ([(a, Rectangle)], Maybe (layout a))
  runLayout (W.Workspace _ l ms _) r = maybe (emptyLayout l r) (doLayout l r) ms

  -- | Given a 'Rectangle' in which to place the windows, and a 'Stack'
  --     of windows, return a list of windows and their corresponding
  --     Rectangles.  If an element is not given a Rectangle by
  --     'doLayout', then it is not shown on screen.  The order of
  --     windows in this list should be the desired stacking order.
  --
  --     Also possibly return a modified layout (by returning @Just
  --     newLayout@), if this layout needs to be modified (e.g. if it
  --     keeps track of some sort of state).  Return @Nothing@ if the
  --     layout does not need to be modified.
  --
  --     Layouts which do not need access to the 'H' monad ('IO', window
  --     manager state, or configuration) and do not keep track of their
  --     own state should implement 'pureLayout' instead of 'doLayout'.
  doLayout :: layout a -> Rectangle -> W.Stack a -> HS ([(a, Rectangle)], Maybe (layout a))
  doLayout l r s = return (pureLayout l r s, Nothing)

  -- | This is a pure version of 'doLayout', for cases where we
  --     don't need access to the 'H' monad to determine how to lay out
  --     the windows, and we don't need to modify the layout itself.
  pureLayout :: layout a -> Rectangle -> W.Stack a -> [(a, Rectangle)]
  pureLayout _ r s = [(W.focus s, r)]

  -- | 'emptyLayout' is called when there are no windows.
  emptyLayout :: layout a -> Rectangle -> HS ([(a, Rectangle)], Maybe (layout a))
  emptyLayout _ _ = return ([], Nothing)

  -- | 'handleMessage' performs message handling.  If
  --     'handleMessage' returns @Nothing@, then the layout did not
  --     respond to the message and the screen is not refreshed.
  --     Otherwise, 'handleMessage' returns an updated layout and the
  --     screen is refreshed.
  --
  --     Layouts which do not need access to the 'H' monad to decide how
  --     to handle messages should implement 'pureMessage' instead of
  --     'handleMessage' (this restricts the risk of error, and makes
  --     testing much easier).
  handleMessage :: layout a -> SomeMessage -> HS (Maybe (layout a))
  handleMessage l = return . pureMessage l

  -- | Respond to a message by (possibly) changing our layout, but
  --     taking no other action.  If the layout changes, the screen will
  --     be refreshed.
  pureMessage :: layout a -> SomeMessage -> Maybe (layout a)
  pureMessage _ _ = Nothing

  -- | This should be a human-readable string that is used when
  --     selecting layouts by name.  The default implementation is
  --     'show', which is in some cases a poor default.
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

instance (Typeable a) => Data (Layout a) where
  toConstr _ = error "toConstr"
  gunfold _ _ = error "gunfold"
  dataTypeOf _ = mkNoRepType "Layout"

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
  deriving stock (Eq, Ord, Show, Read, Generic, Data)
  deriving anyclass (Default, NFData)

instance LayoutClass Full a

-- * Event

-----------------------------------------------------------

-- * State & H/HS Monad

-- | The read-only window manager state.
data HConf = HConf
  { _stateLocked :: {-# UNPACK #-} !Bool
  -- ^ Reference counting for state lock.
  , thisSeat :: !(Maybe RiverSeat)
  -- ^ Just when executing seat-originating key/pointer bindings.
  , config :: !(HSWMConfig H Layout)
  -- ^ User-provided configuration. (Generally immutable after launch.)
  , _wlDisplay :: {-# UNPACK #-} !WL.Display
  -- ^ The Wayland display pointer
  , _logFunc :: !(Loc -> LogSource -> LogLevel -> LogStr -> IO ())
  -- ^ Root logger function.
  , _loggerCleanup :: !(IO ())
  -- ^ Finalizer for logger (FastLogger) resources.
  , globals :: !(MVar WL.RegistryState)
  -- ^ The global objects available through wl_registry.
  , _state :: !(TMVar HState)
  -- ^ The 'HState' XXX FIXME
  , eventQueue :: !(TQueue MainEvent)
  -- ^ Queue for main events.
  , pendingManageQ, pendingRenderQ :: !(TQueue (HS ()))
  -- ^ Pending actions to be emitted in the next manage and render queues (respectively).
  , globalTypeMap :: !(TMVar TypeMap)
  -- ^ Global type-indexed variables.
  , repeatWorker :: !(IORef (Async ()))
  }
  deriving (Generic)

-- deriving anyclass (NFData)

-- | Mutable stete.
data HState = HState
  { windowset :: !WindowSet
  -- ^ Current stackset
  , windowsetOld :: !WindowSet
  -- ^ Old stackset (for change tracking)
  , seatList :: ![Seat]
  -- ^ Current seats.
  , outputList :: ![Output]
  -- ^ Current outputs.
  , _windows :: !(M.Map RiverWindow Window)
  -- ^ Current windows.
  , recoveredWindows :: !(M.Map String RiverWindow)
  -- ^ While initializing after soft restart, windows from the old state are tracked here.
  , extensibleState :: !(M.Map String (Either String StateExtension))
  -- ^ stores custom state information.
  --
  --     The module "HSWM.Util.ExtensibleState"
  --     provides additional information and a simple interface for using this.
  }
  deriving stock (Generic, Data)
  deriving anyclass (Default, NFData)

-- | IO and read-only global environment 'HConf'.
--
-- Runnable in parallel.
--
-- Run 'HS' actions via 'runInHS'.
newtype H a = H (ReaderT HConf IO a)
  deriving newtype
    ( Functor
    , Applicative
    , Monad
    , MonadFix
    , MonadFail
    , MonadIO
    , MonadThrow
    , MonadCatch
    , MonadMask
    , MonadReader HConf
    , MonadUnliftIO
    )
  deriving (Semigroup, Monoid) via Ap H a

-- | IO, read-only global 'HConf' and modifiable 'HState'.
--
-- Only one 'HS' action can run concurrently.
newtype HS a = HS (StateT HState (ReaderT HConf IO) a)
  deriving newtype
    ( Functor
    , Applicative
    , Monad
    , MonadFix
    , MonadFail
    , MonadIO
    , MonadThrow
    , MonadCatch
    , MonadMask
    , MonadReader HConf
    , MonadState HState
    )
  deriving (Semigroup, Monoid) via Ap HS a

type MonadHConf m = (MonadReader HConf m, MonadEffects m)

-- * Lenses: (HConf, HState)

makeLensesWith' classPerField [''HConf, ''HState]

-- * HasGlobalsRegistry

class HasGlobalsRegistry env where
  globalsRegistryL :: Lens' env (MVar WL.RegistryState)

instance HasGlobalsRegistry (MVar WL.RegistryState) where
  globalsRegistryL = lens id const

instance HasGlobalTMap HConf where
  globalTMap = globalTypeMap

instance HasGlobalsRegistry HConf where
  globalsRegistryL = globals

-- * Monadic "HState" reader access.

class (Monad m) => GetHState m where
  getHState :: m HState

instance GetHState HS where
  getHState = use id

instance GetHState H where
  getHState = do
    locked <- view _stateLocked
    when locked $ throwM $ HSWMStateLocked $ "attempted to nest state lock?\n" ++ prettyCallStack callStack
    view _state >>= atomically . readTMVar

---------------------------------------------------------
-- H/HS instances

-- | Contexts in which it is possible to execute state-locked 'HS' actions.
class (Monad m) => MonadHS m where
  runInHS :: HS a -> m a

instance MonadHS HS where
  runInHS = id

instance MonadHS (QueryT HS) where
  runInHS ma = Query (lift ma)

instance MonadHS H where
  runInHS = runInHS'

runInHS' :: (HasCallStack) => (MonadIO m, MonadThrow m, MonadReader HConf m) => HS a -> m a
runInHS' a = do
  conf <- ask
  when conf._stateLocked $ throwM $ HSWMStateLocked $ "attempted to nest state lock?\n" ++ prettyCallStack callStack
  io $ bracketOnError (atomically $ takeTMVar conf._state) (atomically . tryPutTMVar conf._state) $ \st -> do
    res <- timeout 3_000_000 $ runHS conf{_stateLocked = True} st a
    case res of
      Just (r, st') -> atomically (putTMVar conf._state st') >> return r
      Nothing -> throwM $ HSWMTimeout $ "runInHS timed out (3s)!" ++ prettyCallStack callStack
  where
    runHS :: HConf -> HState -> HS a -> IO (a, HState)
    runHS c st (HS ma) = flip runReaderT c $ runStateT ma st

class (Monad m) => MonadH m where
  liftH :: H a -> m a

instance MonadH H where
  liftH = id

instance MonadH HS where
  liftH (H ma) = HS (lift ma)
instance MonadH (QueryT HS) where
  liftH ma = Query (lift $ liftH ma)

instance IsAction H (HS ()) where
  actionPassthru _ a = Just $ SomeAction (runInHS a :: H ())

instance MonadLoggerIO H where askLoggerIO = view _logFunc

instance MonadLogger H where
  monadLoggerLog loc src lvl msg = do
    f <- askLoggerIO
    io $ f loc src lvl (toLogStr msg)

instance MonadLoggerIO HS where
  askLoggerIO = liftH askLoggerIO
instance MonadLogger HS where
  monadLoggerLog loc src lvl msg = liftH (monadLoggerLog loc src lvl msg)

instance (Default a) => Default (H a) where def = pure def
instance (Default a) => Default (HS a) where def = pure def

instance (Monoid a) => Default (x -> H a) where
  def _ = pure mempty

-- XXX not particularly useful instances
instance (Typeable a) => Show (H a) where show _ = "H(" ++ show (typeRep (undefined :: Proxy a)) ++ ")"
instance (Typeable a) => Show (HS a) where show _ = "HS(" ++ show (typeRep (undefined :: Proxy a)) ++ ")"

instance ToJSON StateExtension where
  toJSON (StateExtension _) = A.object [("type", "StateExtension")]
  toJSON (PersistentExtension a) = A.object [("type", "PersistentExtension"), ("value", toJSON $ show a)]

instance ToJSON (Layout RiverWindow) where
  toJSON = toJSON . show

instance ToJSON HState where
  toJSON = genericToJSON aesonOptions
  toEncoding = genericToEncoding aesonOptions

instance ToJSON (HSWMConfig H Layout) where
  toJSON = genericToJSON aesonOptions
  toEncoding = genericToEncoding aesonOptions

instance ToJSON (a -> H All) where
  toJSON _ = A.Null
  omitField _ = True
instance {-# OVERLAPPABLE #-} (MonadH m) => ToJSON (m a) where
  toJSON _ = A.Null
  omitField _ = True

instance ToJSON Xkb.XkbRuleNames
instance ToJSON Xkb.OptionSpec
instance ToJSON Xkb.LayoutSpec
