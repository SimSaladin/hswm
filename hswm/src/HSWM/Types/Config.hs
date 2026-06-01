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

import HSWM.Types.Window
import HSWM.Types.Events
import HSWM.Types.Action
import HSWM.Types.Output
import HSWM.Types.Seat
import qualified HSWM.StackSet as W
import qualified River as R
import Data.Kind
import Data.Default.Internal (gdef)
import qualified GHC.Generics as Generics
import HSWM.Utils (parseRgba)
import Data.Bits
import Language.Haskell.TH (mkName, nameBase)

-- * User configuration

-- | User configuration
data HSWMConfig m l = HSWMConfig
  { keyBindings     :: [(XBKey, SomeAction m)]
  , pointerBindings :: [((String, Button), SomeAction m)]
  , defaultModMask  :: !String
  , borderWidth     :: !Int32
  , normalBorder    :: !R.RiverColor
  , focusedBorder   :: !R.RiverColor
  , borderEdges     :: !Int32
  , startupHook     :: !(m ())
  , exitHook        :: !(m ())
  , handleEventHook :: !(Event -> m All)
  , layoutHook      :: !(l RiverWindow)
  , renderHook      :: !(m ())
  , logHook         :: !(m ())
  , manageHook      :: !(ManageHookX (Stateful m) (LayoutProxy m RiverWindow))
   -- | Keyboard layout set for connected keyboards
  , xkbLayout       :: !(Maybe XkbRuleNames)
  , workspaces      :: [WorkspaceId]
   -- | Keyboard repeat (rate, delay)
  , repeatInfo      :: !(Maybe (Int32, Int32))
   -- | XCursor theme and size
  , xcursor         :: !(Maybe (String, Word32))
  } deriving stock (Generic)

instance {-# OVERLAPPABLE #-}
  (Monad (Stateful m),
   Monoid (m All),
   Default (m ()),
   Default (l RiverWindow)
  ) => Default (HSWMConfig m l) where
    def = (Generics.to gdef)
      { borderWidth = 2,
        normalBorder = parseRgba "0x0000B0",
        focusedBorder = parseRgba "0xFA0050",
        borderEdges = foldl' (.|.) 0 (fi . R.fromCEnum <$> [R.EdgeLeft, R.EdgeRight, R.EdgeTop, R.EdgeBottom]),
        defaultModMask = "Ctrl",
        workspaces = ["1", "2", "3", "4"]
      }

type family LayoutProxy (m :: Type -> Type) :: Type -> Type

-- | Composable config modification.
type ConfigDoPure = forall m l. HSWMConfig m l -> HSWMConfig m l

type ConfigDoM m = forall l. HSWMConfig m l -> HSWMConfig m l

type WindowSetX l = W.StackSet WorkspaceId l {- (Layout RiverWindow) -} RiverWindow WorkspaceDetail ScreenId ScreenDetail

type WindowSpaceX l = W.Workspace WorkspaceId l {- (Layout RiverWindow) -} RiverWindow WorkspaceDetail

-- | Virtual workspace indices
type WorkspaceId = String

-- | The output dimensions
data ScreenDetail = SD {x, y, width, height :: {-# UNPACK #-} !Int}
  deriving (Eq, Show, Read, Generic, Default)

data WorkspaceDetail = WD
  deriving (Eq, Show, Read, Generic, Default)

newtype QueryX m a = Query (ReaderT Window m a)
  deriving newtype (Functor, Applicative, Monad, MonadIO, MonadReader Window)

type ManageHookX m l = QueryX m (Endo (WindowSetX l))

type MaybeManageHookX m l = QueryX m (Maybe (Endo (WindowSetX l)))

instance Monad m => Default (QueryX m (Endo (WindowSetX l))) where
  def = return $ Endo id

runQuery :: QueryX m a -> Window -> m a
runQuery (Query q) = runReaderT q

makeLensesWith (classyRules & lensField .~ \_ _ n -> [TopName $ mkName $ nameBase n]) ''HSWMConfig
