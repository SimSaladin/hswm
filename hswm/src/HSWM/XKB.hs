{-# LANGUAGE CApiFFI #-}

module HSWM.XKB
  ( module HSWM.XKB,
    module Text.XkbCommon,
  )
where

import Foreign.C
import Text.XkbCommon

-- * Linux evdev codes

type Button = CUInt

foreign import capi "linux/input-event-codes.h value BTN_RIGHT" _BTN_RIGHT :: Button

foreign import capi "linux/input-event-codes.h value BTN_LEFT" _BTN_LEFT :: Button

foreign import capi "linux/input-event-codes.h value BTN_MIDDLE" _BTN_MIDDLE :: Button

-- * KeySym parsing

class IsKeySym a where
  toKeySym :: a -> KeySym

instance IsKeySym KeySym where toKeySym = id

-- | NOTE: this throws impure exception on invalid keysym names!
instance IsKeySym String where toKeySym = fromMaybe 0xffffffff . xkbKeysymFromName xkbKeysymCaseInsensitive
