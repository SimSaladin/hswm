{-# LANGUAGE CApiFFI #-}

module HSWM.XKB
  ( module HSWM.XKB,
    module Text.XkbCommon,
    module Text.XkbCommon.EventCodes,
  )
where

import Text.XkbCommon
import Text.XkbCommon.EventCodes
import Text.XkbCommon.KeySyms (key_NoSymbol)

-- * Linux evdev codes

type Button = Word32

-- * KeySym parsing

class IsKeySym a where
  toKeySym :: a -> KeySym

instance IsKeySym KeySym where
  toKeySym = id

instance IsKeySym String where
  toKeySym s = fromMaybe key_NoSymbol $ keysymFromName s <|> keysymFromNameCaseInsensitive s
