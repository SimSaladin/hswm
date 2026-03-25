{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE DefaultSignatures #-}

module HSWM.Types (
  module HSWM.Types,
  module HSWM.XKB
  ) where

import           Data.Bits
import qualified Data.Map as M
import qualified Data.TMap as TM
import           Data.Typeable
import           Foreign (StablePtr, Ptr, castPtr, nullPtr)
import           Foreign.C (CUInt)
import           Foreign.Storable (Storable(..))
import           Foreign.Storable.Generic (GStorable(..))
import           GHC.Generics (Generic)
import           System.Exit (ExitCode(..))

import           HSWM.XKB
import           River
import           Wayland (WlDisplay, WlSeat)

-- | User configuration
data HSWMConfig = HSWMConfig
  { keyBindings     :: [((String, KeySym), SomeAction)]
  , pointerBindings :: [((String, KeySym), SomeAction)]
  , defaultModMask  :: String
  , borderWidth     :: Int
  , borderColor     :: (CUInt, CUInt, CUInt, CUInt)
  , borderEdges     :: Int
  } deriving Show

-- | Configuration defaults
instance Default HSWMConfig where
  def = HSWMConfig
    { borderWidth     = 2
    , borderColor     = (50000, 50000, 50000, 50000)
    , borderEdges     = foldl (.|.) 0 (fromEnum <$> [EdgeLeft, EdgeRight, EdgeTop, EdgeBottom])
    , keyBindings     = [ -- (("M", _XKB_KEY_n), SendMessage ACTION_FOCUS_NEXT)
                        ]
    , pointerBindings = [ -- (("M", _BTN_LEFT), SendMessage ACTION_MOVE)
                        -- , (("", _BTN_RIGHT), SendMessage ACTION_MOVE)
                        ]
    , defaultModMask  = "Control"
    }

class IsAction a where
  runner :: a -> H ()

  -- | Description based on the value (defaults to type info)
  description :: a -> String
  description = typeDescription

  -- | Description based on type info
  typeDescription :: a -> String
  default typeDescription :: Typeable a => a -> String
  typeDescription = show . typeOf


data SomeAction where
  SomeAction :: forall a. IsAction a => a -> SomeAction

instance Show SomeAction where
  show            (SomeAction a) = description a

instance IsAction SomeAction where
  runner          (SomeAction a) = runner a
  description     (SomeAction a) = description a
  typeDescription (SomeAction a) = typeDescription a

toSomeAction :: IsAction a => a -> SomeAction
toSomeAction = SomeAction



data SomeMessage where
  SomeMessage :: Show msg => msg -> SomeMessage
  SomeMessageAction :: IsAction a => a -> SomeMessage


data SendMessage = SendMessage SomeMessage

instance IsAction SendMessage where
  runner      (SendMessage msg) = dispatchMessage msg
  description (SendMessage (SomeMessage m)) = "SendMsg: " ++ show m
  description (SendMessage (SomeMessageAction m)) = "SendActionMsg: " ++ description m


data SeatOp = SEAT_OP_NONE
            | SEAT_OP_MOVE
            | SEAT_OP_RESIZE

data Action = ACTION_NONE
            | ACTION_FOCUS_NEXT
            | ACTION_MOVE
  deriving (Eq, Show, Enum, Generic)

instance Storable Action where
  sizeOf _ = sizeOf (0 :: Int)
  alignment _ = alignment (0 :: Int)
  peek p = toEnum <$> peek (castPtr p :: Ptr Int)
  poke p x = poke (castPtr p :: Ptr Int) (fromIntegral $ fromEnum x)

data XkbBinding a = XkbBinding
  { xkb_binding :: RiverXkbBinding
  , river_seat  :: RiverSeat
  , action      :: a
  } deriving (Generic)

data PointerBinding a = PointerBinding
  { pointer_binding    :: RiverPointerBinding
  , river_seat         :: RiverSeat
  , action             :: a
  } deriving (Generic)

instance GStorable (XkbBinding ())
instance GStorable (PointerBinding ())

data Seat = Seat
  { river_seat :: RiverSeat
  , new :: Bool
  , removed :: Bool
  , focused, hovered, interacted :: RiverWindow
  , op_window :: RiverWindow
  , op :: SeatOp
  , op_release :: Bool
  , op_start_x, op_start_y, op_dx, op_dy :: Int
  , op_start_width, op_start_height :: Int
  , op_edges :: Int
  , xkb_bindings :: [StablePtr (XkbBinding SomeAction)]
  , pointer_bindings :: [StablePtr (PointerBinding SomeAction)]
  , pending_action :: !(Maybe SomeAction)
  }

instance Default Seat where
  def = Seat (RiverSeat nullPtr) True False invalidWindow invalidWindow invalidWindow
    invalidWindow SEAT_OP_NONE False 0 0 0 0 0 0 0 mempty mempty Nothing

data Output = Output
  { river_output :: RiverOutput
  , new :: Bool
  , removed :: Bool
  } deriving Show

instance Default Output where
  def = Output (RiverOutput nullPtr) True False

data Window = Window
  { river_window :: RiverWindow
  , new :: Bool
  , node :: RiverNode
  , closed :: Bool
  , x, y, width, height :: Int
  , pointer_move_requested :: RiverSeat
  , pointer_resize_requested :: RiverSeat
  , pointer_resize_requested_edges :: Int
  } deriving Show

instance Default Window where
  def = Window invalidWindow True (RiverNode nullPtr) False 0 0 0 0 invalidSeat invalidSeat 0

data Event = EOutput OutputEvent
           | EWindow WindowEvent
           | EManage WindowManagerEvent
           | ESeat SeatEvent

data HConf = HConf
  { display                 :: WlDisplay
  , userConfig              :: !(HSWMConfig)
  , handleEventHook         :: Event -> H ()
  , defaultBorders          :: WindowBorders
  , _xkbBindingListener     :: XkbBindingListener
  , _pointerBindingListener :: PointerBindingListener
  , _windowListener         :: WindowListener
  , _seatListener           :: RiverSeatListener
  , _outputListener         :: RiverOutputListener
  , _managerListener        :: RiverWindowManagerListener
  }

data HState = HState
  { _seats    :: [Seat]
  , _outputs  :: [Output]
  , _windows  :: [Window]
  , _riverWM  :: RiverWindowManager
  , _xkbBinds :: RiverXkbBindings
  , wlObjects :: TM.TMap
  , _wlSeats  :: TVar (M.Map Int WlSeat)
  , pendingEvents  :: TQueue SomeMessage
  , pendingActions :: TQueue SomeAction
  }

-- a la xmonad
newtype H a = H (ReaderT HConf (StateT HState IO) a)
  deriving (Functor, Applicative, Monad, MonadFail, MonadIO, MonadState HState, MonadReader HConf)

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

-- a la xmonad
userCode :: H a -> H (Maybe a)
userCode a = catchH (Just <$> a) (return Nothing)

dispatchMessage :: SomeMessage -> H ()
dispatchMessage msg = gets pendingEvents >>= liftIO . atomically . (`writeTQueue` msg)

dispatchAction :: SomeAction -> H ()
dispatchAction action = gets pendingActions >>= liftIO . atomically . (`writeTQueue` action)
