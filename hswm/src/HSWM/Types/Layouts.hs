-- |
-- Module      : HSWM.Types.Layouts
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Types.Layouts where

import HSWM.Types.WM
import HSWM.Util.Types
import River as HSWM.Types.WM (RiverWindow)
import HSWM.StackSet as W
import Data.Typeable
import HSWM.Types.Events
import Text.Read (reads)

type WindowSet = W.StackSet WorkspaceId (Layout RiverWindow) RiverWindow WorkspaceDetail ScreenId ScreenDetail

type WindowSpace = W.Workspace WorkspaceId (Layout RiverWindow) RiverWindow WorkspaceDetail

type HandleLayouts m = (Monad m)

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
  runLayout ::
    HandleLayouts m =>
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
    HandleLayouts m =>
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
  emptyLayout :: HandleLayouts m => layout a -> Rectangle -> m ([(a, Rectangle)], Maybe (layout a))
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
  handleMessage :: HandleLayouts m => layout a -> SomeMessage -> m (Maybe (layout a))
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

instance LayoutClass Layout RiverWindow where
  runLayout (Workspace i (Layout l) ms wd) r = fmap (fmap Layout) `fmap` runLayout (Workspace i l ms wd) r
  doLayout (Layout l) r s = fmap (fmap Layout) `fmap` doLayout l r s
  emptyLayout (Layout l) r = fmap (fmap Layout) `fmap` emptyLayout l r
  handleMessage (Layout l) = fmap (fmap Layout) . handleMessage l
  description (Layout l) = description l

instance Show (Layout a) where show (Layout l) = show l

-- | Simple fullscreen mode. Renders the focused window fullscreen.
data Full a = Full deriving (Show, Read)

instance LayoutClass Full a

instance Default (Layout a) where
  def = Layout Full

--------------------------------------------------------------
-- Layout messages

-- | Based on ideas in /An Extensible Dynamically-Typed Hierarchy of
-- Exceptions/, Simon Marlow, 2006. Use extensible messages to the
-- 'handleMessage' handler.
--
-- User-extensible messages must be a member of this class.
class (Typeable a) => Message a

-- |
-- A wrapped value of some type in the 'Message' class.
data SomeMessage = forall a. (Message a) => SomeMessage a

-- |
-- And now, unwrap a given, unknown 'Message' type, performing a (dynamic)
-- type check on the result.
fromMessage :: (Message m) => SomeMessage -> Maybe m
fromMessage (SomeMessage m) = cast m

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
