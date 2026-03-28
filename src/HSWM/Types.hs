{-# OPTIONS_GHC -Wno-orphans #-}

module HSWM.Types (
  module HSWM.Types,
  module HSWM.XKB,
  module HSWM.Core
  ) where

import           Data.Bits
import           Foreign
import           GHC.Generics (Generic)

import           HSWM.Core
import           HSWM.XKB
import           HSWM.Utils (parseRgba)
import           River

-- | Configuration defaults
instance (l ~ Full) => Default (HSWMConfig l) where
  def = HSWMConfig
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
    , handleEventHook = mempty
    , layoutHook      = Full
    , logHook         = mempty
    }

---------------------------------------------------------
-- wtf

data Action = ACTION_NONE
            | ACTION_FOCUS_NEXT
            | ACTION_MOVE
  deriving (Eq, Show, Enum, Generic)

instance Storable Action where
  sizeOf _ = sizeOf (0 :: Int)
  alignment _ = alignment (0 :: Int)
  peek p = toEnum <$> peek (castPtr p :: Ptr Int)
  poke p x = poke (castPtr p :: Ptr Int) (fromIntegral $ fromEnum x)

---------------------------------------------------------
-- $actionsAndMessages

--dispatchMessage :: SomeMessage -> H ()
--dispatchMessage msg = gets pendingEvents >>= liftIO . atomically . (`writeTQueue` msg)

dispatchAction :: SomeAction -> H ()
dispatchAction action = gets pendingActions >>= liftIO . atomically . (`writeTQueue` action)

-- data SomeMessage where
--   SomeMessage :: Show msg => msg -> SomeMessage
--   SomeMessageAction :: IsAction a => a -> SomeMessage

-- data SendMessage = SendMessage SomeMessage
--
-- instance IsAction SendMessage where
--   runner      (SendMessage msg) = dispatchMessage msg
--   actionDescription (SendMessage (SomeMessage m)) = "SendMsg: " ++ show m
--   actionDescription (SendMessage (SomeMessageAction m)) = "SendActionMsg: " ++ actionDescription m
