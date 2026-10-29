{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE UndecidableInstances #-}
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

import HSWM.Types.Action
import HSWM.Types.Events
import HSWM.Types.Lens
import HSWM.Types.Simple
import HSWM.Types.Window
import HSWM.Types.KeyBindings (KeyBindings)
import HSWM.Utils (parseRgba)
import River qualified as R

import Control.Monad.Fix
import Data.Default.Internal (gdef)
import Data.Kind
import GHC.Generics qualified as Generics

-- | Composable config modification.
type ConfigDoM m = forall l. HSWMConfig m l -> HSWMConfig m l

type family ManageHook' (m :: k) :: Type

-- * User configuration

-- | User configuration
data HSWMConfig m l = HSWMConfig
  { keyBindings :: KeyBindings XBKey (SomeAction m)
  , pointerBindings :: [((String, Button), SomeAction m)]
  , defaultModMask :: !String
  , borderWidth :: !Int32
  , normalBorder :: !R.RiverColor
  , focusedBorder :: !R.RiverColor
  , borderEdges :: !R.RiverWindowEdges
  , startupHook :: !(m ())
  , layoutHook :: !(l RiverWindow)
  , manageHook :: !(ManageHook' m)
  , renderHook :: !(m ())
  , logHook :: !(m ())
  , exitHook :: !(m ())
  , handleEventHook :: !(Event -> m All)
  , handleEventHookDynamic :: !(Dynamic -> m All)
  , workspaces :: [WorkspaceId]
  , xkbLayout :: !(Maybe XkbRuleNames)
  -- ^ Keyboard layout set for connected keyboards
  , repeatInfo :: !RepeatInfo
  -- ^ Keyboard repeat (rate, delay)
  , cursorTheme :: !String
  -- ^ XCursor theme and size
  , cursorSize :: !Word32
  }
  deriving stock (Generic)

instance
  ( Default (l RiverWindow)
  , Default (m ())
  , Default (ManageHook' m)
  , Monoid (m All)
  , Default (Dynamic -> m All)
  , Applicative m
  ) =>
  Default (HSWMConfig m l)
  where
  def =
    (Generics.to gdef)
      { borderWidth = 2
      , borderEdges = mconcat [R.EdgeLeft, R.EdgeRight, R.EdgeTop, R.EdgeBottom]
      , normalBorder = parseRgba "0x0000B0"
      , focusedBorder = parseRgba "0xFA0050"
      , defaultModMask = "Ctrl"
      , workspaces = ["1", "2", "3", "4"]
      , handleEventHook = mempty
      , handleEventHookDynamic = mempty
      }

-- * WindowSet/StackSet

-- | Virtual workspace indices
type WorkspaceId = String

-- | The output dimensions
data ScreenDetail = SD {x, y, width, height :: {-# UNPACK #-} !Int}
  deriving stock (Eq, Show, Read, Generic, Data)
  deriving anyclass (Default, NFData)

data WorkspaceDetail = WD
  deriving stock (Eq, Show, Read, Generic, Data)
  deriving anyclass (Default, NFData)

-- * QueryT

newtype QueryT m a = Query {unwrap :: ReaderT Window m a}
  deriving newtype
    ( Functor
    , Applicative
    , Monad
    , MonadIO
    , MonadFix
    , MonadThrow
    , MonadCatch
    , MonadMask
    , MonadReader Window
    )

instance MonadTrans QueryT where
  lift = Query . lift

instance (Applicative m) => Default (QueryT m (Endo a)) where
  def = pure mempty

runQuery :: QueryT m a -> Window -> m a
runQuery (Query q) = runReaderT q

-- * Lenses

makeLensesWith' classPerField [''XkbRuleNames ]
makeLensesCombine' (ignoreFields [ "layoutHook", "repeatInfo"]) ["pointerBindings", "keyBindings"] [''HSWMConfig, ''ScreenDetail]

-- | Correctly type-changing lens for @layoutHook@ (the generated yields invalid signature...)
layoutHook :: Lens (HSWMConfig m l) (HSWMConfig m l') (l RiverWindow) (l' RiverWindow)
layoutHook = lens (.layoutHook) (\s b -> s{layoutHook = b})

instance HasRepeatInfo (HSWMConfig l m)  where
  repeatInfo = lens (.repeatInfo) (\s b -> s{repeatInfo = b} :: HSWMConfig l m)

instance HasPosition ScreenDetail where
  position = lens (Position <$> view (_x . to fi) <*> view (_y . to fi)) (\s a -> (s :: ScreenDetail){x = fi a.x, y = fi a.y})

instance HasSize ScreenDetail where
  size = lens (Size <$> view (width . to fi) <*> view (height . to fi)) (\s a -> (s :: ScreenDetail){width = fi a.width, height = fi a.width})

instance HasRectangle ScreenDetail where
  rectangle = lens (Rectangle' <$> view position <*> view size) (\s a -> s & position .~ a.position & size .~ a.size)

-- ToJSON/FromJSON

instance ToJSON ScreenDetail where
  toJSON = genericToJSON aesonOptions
  toEncoding = genericToEncoding aesonOptions
instance ToJSON WorkspaceDetail where
  toJSON = genericToJSON aesonOptions
  toEncoding = genericToEncoding aesonOptions
