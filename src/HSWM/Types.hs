{-# OPTIONS_GHC -Wno-orphans #-}

module HSWM.Types (
  module HSWM.Types,
  module HSWM.XKB,
  module HSWM.Core
  ) where

import           Data.Bits
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
    , startupHook     = mempty
    , handleEventHook = mempty
    , layoutHook      = Full
    , logHook         = mempty
    , xkbLayout       = Nothing
    }
