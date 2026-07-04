{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE NoFieldSelectors #-}

-- |
-- Module      : HSWM.Types.Config
-- Description : Main config
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Types.Config where

import qualified HSWM.StackSet as W
import           HSWM.Types.Action
import           HSWM.Types.Events
import           HSWM.Types.Lens
import           HSWM.Types.Simple
import           HSWM.Types.Output
import           HSWM.Types.Seat
import           HSWM.Types.Window
import           HSWM.Utils (parseRgba)

import qualified River as R

import           Data.Default.Internal (gdef)
import           Data.Kind
import qualified GHC.Generics as Generics

-- * User configuration

-- | User configuration
data HSWMConfig m l = HSWMConfig
  { keyBindings     :: [(XBKey, SomeAction m)]
  , pointerBindings :: [((String, Button), SomeAction m)]
  , defaultModMask  :: !String
  , borderWidth     :: !Int32
  , normalBorder    :: !R.RiverColor
  , focusedBorder   :: !R.RiverColor
  , borderEdges     :: !R.RiverWindowEdges
  , startupHook     :: !(m ())
  , layoutHook      :: !(l RiverWindow)
  , manageHook      :: !(ManageHookX (Stateful m))
  , renderHook      :: !(m ())
  , logHook         :: !(m ())
  , exitHook        :: !(m ())
  , handleEventHook :: !(Event -> m All)
  , workspaces      :: [WorkspaceId]
   -- | Keyboard layout set for connected keyboards
  , xkbLayout       :: !(Maybe XkbRuleNames)
   -- | Keyboard repeat (rate, delay)
  , repeatInfo      :: !RepeatInfo
   -- | XCursor theme and size
  , cursorTheme     :: !String
  , cursorSize      :: !Word32
  } deriving stock (Generic)

data RepeatInfo = RepeatInfo { rate, delay :: {-# UNPACK #-} !Int32 }
  deriving stock (Eq, Ord, Show, Read, Generic)
  deriving anyclass (Default)

instance {-# OVERLAPPABLE #-} (Default (l RiverWindow), Default (m ()), Default (Event -> m All), Monad (Stateful m))
  => Default (HSWMConfig m l) where
    def = (Generics.to gdef)
      { borderWidth    = 2
      , borderEdges    = mconcat [R.EdgeLeft, R.EdgeRight, R.EdgeTop, R.EdgeBottom]
      , normalBorder   = parseRgba "0x0000B0"
      , focusedBorder  = parseRgba "0xFA0050"
      , defaultModMask = "Ctrl"
      , workspaces     = ["1", "2", "3", "4"]
      }

-- * Configure modifiers

-- | Composable config modification.
type ConfigDoPure = forall m l. HSWMConfig m l -> HSWMConfig m l

type ConfigDoM m = forall l. HSWMConfig m l -> HSWMConfig m l

-- * WindowSet/StackSet

type WindowSetX l = W.StackSet WorkspaceId (l RiverWindow) RiverWindow WorkspaceDetail ScreenId ScreenDetail

type WindowSpaceX l = W.Workspace WorkspaceId (l RiverWindow) RiverWindow WorkspaceDetail

-- | Virtual workspace indices
type WorkspaceId = String

-- | The output dimensions
data ScreenDetail = SD {x, y, width, height :: {-# UNPACK #-} !Int}
  deriving (Eq, Show, Read, Generic, Default)

data WorkspaceDetail = WD
  deriving (Eq, Show, Read, Generic, Default)

-- * Query, ManageHook

newtype QueryX (m :: Type -> Type) a = Query { unwrap :: ReaderT Window m a }
  deriving newtype (Functor, Applicative, Monad, MonadIO, MonadReader Window)

type ManageHookX m = QueryX m (Endo (WindowSetX (LayoutProxy m)))

type MaybeManageHookX m = QueryX m (Maybe (Endo (WindowSetX (LayoutProxy m))))

instance Monad m => Default (QueryX m (Endo a)) where
  def = return mempty

runQuery :: QueryX m a -> Window -> m a
runQuery (Query q) = runReaderT q

-- ** Util

-- | This should usually map to @'Layout' 'RiverWindow'@
type family LayoutProxy (m :: Type -> Type) :: Type -> Type

-- * Lenses

makeLensesWith' classPerField
  [ ''RepeatInfo
  , ''XkbRuleNames
  , ''ScreenDetail
  ]

makeLensesCombine [] [ ''HSWMConfig ]

--instance HasRepeatInfo RepeatInfo RepeatInfo where repeatInfo = id

instance HasPosition ScreenDetail Position where
  position = lens (Position <$> view (_x . to fi) <*> view (_y . to fi)) (\s a -> (s::ScreenDetail) { x = fi a.x, y = fi a.y })

instance HasSize ScreenDetail Size where
  size = lens (Size <$> view (width . to fi) <*> view (height . to fi)) (\s a -> (s::ScreenDetail) { width = fi a.width, height = fi a.width })

-- * Utilities

screenRect :: ScreenDetail -> Rectangle
screenRect sd = Rectangle' (sd ^. position) (sd ^. size)
