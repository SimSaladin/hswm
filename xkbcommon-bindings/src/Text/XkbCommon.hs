module Text.XkbCommon
  ( module X,
    module Text.XkbCommon,
    def
  )
where

import Text.XkbCommon.FFI as X
import Data.Default

xkbRealModifierNames :: [String]
xkbRealModifierNames = [_XKB_MOD_NAME_SHIFT, _XKB_MOD_NAME_CAPS, _XKB_MOD_NAME_CTRL, _XKB_MOD_NAME_MOD1, _XKB_MOD_NAME_MOD2, _XKB_MOD_NAME_MOD3, _XKB_MOD_NAME_MOD4, _XKB_MOD_NAME_MOD5]

xkbVirtualModifierNames :: [String]
xkbVirtualModifierNames = [_XKB_VMOD_NAME_ALT, _XKB_VMOD_NAME_HYPER, _XKB_VMOD_NAME_LEVEL3, _XKB_VMOD_NAME_LEVEL5, _XKB_VMOD_NAME_META, _XKB_VMOD_NAME_NUM, _XKB_VMOD_NAME_SCROLL, _XKB_VMOD_NAME_SUPER]
