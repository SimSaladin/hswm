{-# LANGUAGE NoFieldSelectors     #-}
{-# LANGUAGE TemplateHaskell      #-}
{-# LANGUAGE UndecidableInstances #-}

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

import           Control.Monad.Fix
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

instance
  (Default (l RiverWindow),
   Default (m ()),
   Default (Event -> m All),
   Monad (Stateful m)
  ) => Default (HSWMConfig m l) where
    def = (Generics.to gdef)
      { borderWidth    = 2
      , borderEdges    = mconcat [R.EdgeLeft, R.EdgeRight, R.EdgeTop, R.EdgeBottom]
      , normalBorder   = parseRgba "0x0000B0"
      , focusedBorder  = parseRgba "0xFA0050"
      , defaultModMask = "Ctrl"
      , workspaces     = ["1", "2", "3", "4"]
      }

data RepeatInfo = RepeatInfo { rate, delay :: {-# UNPACK #-} !Int32 }
  deriving stock (Eq, Ord, Show, Read, Generic)
  deriving anyclass (Default, NFData)

-- | Composable config modification.
type ConfigDoPure = forall m l. HSWMConfig m l -> HSWMConfig m l

-- | Composable config modification.
type ConfigDoM m = forall l. HSWMConfig m l -> HSWMConfig m l

-- * WindowSet/StackSet

type WindowSetX l = W.StackSet WorkspaceId (l RiverWindow) RiverWindow WorkspaceDetail ScreenId ScreenDetail

type WindowSpaceX l = W.Workspace WorkspaceId (l RiverWindow) RiverWindow WorkspaceDetail

-- | Virtual workspace indices
type WorkspaceId = String

-- | The output dimensions
data ScreenDetail = SD {x, y, width, height :: {-# UNPACK #-} !Int}
  deriving stock (Eq, Show, Read, Generic)
  deriving anyclass (Default, NFData)

data WorkspaceDetail = WD
  deriving stock (Eq, Show, Read, Generic)
  deriving anyclass (Default, NFData)

-- * QueryT

newtype QueryT m a = Query { unwrap :: ReaderT Window m a }
  deriving newtype (Functor, Applicative, Monad, MonadIO, MonadFix, MonadThrow, MonadReader Window)

instance Applicative m => Default (QueryT m (Endo a)) where
  def = pure mempty

runQuery :: QueryT m a -> Window -> m a
runQuery (Query q) = runReaderT q

type ManageHookX m = QueryT m (Endo (WindowSetX (LayoutProxy m)))

type MaybeManageHookX m = QueryT m (Maybe (Endo (WindowSetX (LayoutProxy m))))

-- | This should usually map to @'Layout' 'RiverWindow'@
type family LayoutProxy (m :: Type -> Type) :: Type -> Type

-- * Lenses

makeLensesWith' classPerField
  [ ''RepeatInfo
  , ''XkbRuleNames
  , ''ScreenDetail
  ]

makeLensesCombine'
  (lensField %~ (\f ty b n -> if nameBase n == "layoutHook" then [] else f ty b n))
  [ ] [ ''HSWMConfig ]

-- | Correctly type-changing lens for @layoutHook@ (the generated yields invalid signature...)
layoutHook :: Lens (HSWMConfig m l) (HSWMConfig m l') (l RiverWindow) (l' RiverWindow)
layoutHook = lens (.layoutHook) (\s b -> s { layoutHook = b })

instance HasPosition ScreenDetail Position where
  position = lens (Position <$> view (_x . to fi) <*> view (_y . to fi)) (\s a -> (s :: ScreenDetail) { x = fi a.x, y = fi a.y })

instance HasSize ScreenDetail Size where
  size = lens (Size <$> view (width . to fi) <*> view (height . to fi)) (\s a -> (s :: ScreenDetail) { width = fi a.width, height = fi a.width })

-- * Utilities

screenRect :: ScreenDetail -> Rectangle
screenRect sd = Rectangle' (sd ^. position) (sd ^. size)
