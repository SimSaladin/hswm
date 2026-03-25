module HSWM.XKB.FFI where

import Foreign
import Foreign.C
import System.IO.Unsafe

#include <unistd.h>
#include <sys/mman.h>
#include <xkbcommon/xkbcommon-keysyms.h>
#include <xkbcommon/xkbcommon-names.h>
#include <xkbcommon/xkbcommon.h>
#include <linux/input-event-codes.h>

type KeySym = CUInt
type ModIndex = {#type xkb_mod_index_t#}
type ModMask = {#type xkb_mod_index_t#}
type Button = {#type uint32_t#}
type Modifiers = {#type uint32_t#}
type Fd = CInt

{#pointer *xkb_keymap as XkbKeymap #}
{#pointer *xkb_state as XkbState #}
{#pointer *xkb_context as XkbContext #}

{#fun xkb_keymap_mod_get_mask {`XkbKeymap', `String'} -> `ModMask' fromIntegral #}
{#fun xkb_keymap_mod_get_name {`XkbKeymap', fromIntegral `ModIndex'} -> `String'#}
{#fun xkb_state_get_keymap {`XkbState'} -> `XkbKeymap' #}

-- enum xkb_keysym_flags {
--     /** Do not apply any flags. */
--     XKB_KEYSYM_NO_FLAGS = 0,
--     /** Find keysym by case-insensitive search. */
--     XKB_KEYSYM_CASE_INSENSITIVE = (1 << 0)
-- };

xkb_keysym_from_name :: String -> KeySym
xkb_keysym_from_name name = unsafePerformIO $ withCString name $ \c_name -> return $!
  let res = {#call pure xkb_keysym_from_name as _xkb_keysym_from_name#} c_name 1 in
      if res == 0 then error ("xkb_keysym_from_name: name not found: " ++ name) else res
{-# NOINLINE xkb_keysym_from_name #-}

-- XKB_EXPORT int
-- xkb_keysym_get_name(xkb_keysym_t keysym, char *buffer, size_t size);

_XKB_KEY_n :: KeySym
_XKB_KEY_n = {#const XKB_KEY_n#}

createKeymap :: Fd -> CUInt -> IO XkbKeymap
createKeymap fd size = do
  ptr <- {#call mmap as _mmap#} nullPtr (fromIntegral size) {#const PROT_READ#} {#const MAP_PRIVATE#} (fromIntegral fd) 0
  ctx <- {#call xkb_context_new#} 0
  keymap <- {#call xkb_keymap_new_from_string#} ctx (castPtr ptr) 1{-xkb_KEYMAP_FORMAT_TEXT_V1-} 0
  _ <- {#call munmap#} ptr (fromIntegral size)
  _ <- {#call close#} (fromIntegral fd)
  return keymap

-- | real-modifier-names
_XKB_MOD_NAME_SHIFT, _XKB_MOD_NAME_CAPS, _XKB_MOD_NAME_CTRL, _XKB_MOD_NAME_MOD1, _XKB_MOD_NAME_MOD2, _XKB_MOD_NAME_MOD3, _XKB_MOD_NAME_MOD4, _XKB_MOD_NAME_MOD5 :: String
_XKB_MOD_NAME_SHIFT = {#const XKB_MOD_NAME_SHIFT#} --   "Shift"
_XKB_MOD_NAME_CAPS  = {#const XKB_MOD_NAME_CAPS #} -- "Lock"
_XKB_MOD_NAME_CTRL  = {#const XKB_MOD_NAME_CTRL #} -- "Control"
_XKB_MOD_NAME_MOD1  = {#const XKB_MOD_NAME_MOD1 #} -- "Mod1"
_XKB_MOD_NAME_MOD2  = {#const XKB_MOD_NAME_MOD2 #} -- "Mod2"
_XKB_MOD_NAME_MOD3  = {#const XKB_MOD_NAME_MOD3 #} -- "Mod3"
_XKB_MOD_NAME_MOD4  = {#const XKB_MOD_NAME_MOD4 #} -- "Mod4"
_XKB_MOD_NAME_MOD5  = {#const XKB_MOD_NAME_MOD5 #} -- "Mod5"

-- | virtual-modifier-names
_XKB_VMOD_NAME_ALT, _XKB_VMOD_NAME_HYPER, _XKB_VMOD_NAME_LEVEL3, _XKB_VMOD_NAME_LEVEL5, _XKB_VMOD_NAME_META, _XKB_VMOD_NAME_NUM, _XKB_VMOD_NAME_SCROLL, _XKB_VMOD_NAME_SUPER :: String
_XKB_VMOD_NAME_ALT     = {#const XKB_VMOD_NAME_ALT    #} -- "Alt"
_XKB_VMOD_NAME_HYPER   = {#const XKB_VMOD_NAME_HYPER  #} -- "Hyper"
_XKB_VMOD_NAME_LEVEL3  = {#const XKB_VMOD_NAME_LEVEL3 #} -- "LevelThree"
_XKB_VMOD_NAME_LEVEL5  = {#const XKB_VMOD_NAME_LEVEL5 #} -- "LevelFive"
_XKB_VMOD_NAME_META    = {#const XKB_VMOD_NAME_META   #} -- "Meta"
_XKB_VMOD_NAME_NUM     = {#const XKB_VMOD_NAME_NUM    #} -- "NumLock"
_XKB_VMOD_NAME_SCROLL  = {#const XKB_VMOD_NAME_SCROLL #} -- "ScrollLock"
_XKB_VMOD_NAME_SUPER   = {#const XKB_VMOD_NAME_SUPER  #} -- "Super"

xkbRealModifierNames :: [String]
xkbRealModifierNames = [_XKB_MOD_NAME_SHIFT, _XKB_MOD_NAME_CAPS, _XKB_MOD_NAME_CTRL, _XKB_MOD_NAME_MOD1, _XKB_MOD_NAME_MOD2, _XKB_MOD_NAME_MOD3, _XKB_MOD_NAME_MOD4, _XKB_MOD_NAME_MOD5]

xkbVirtualModifierNames :: [String]
xkbVirtualModifierNames = [_XKB_VMOD_NAME_ALT, _XKB_VMOD_NAME_HYPER, _XKB_VMOD_NAME_LEVEL3, _XKB_VMOD_NAME_LEVEL5, _XKB_VMOD_NAME_META, _XKB_VMOD_NAME_NUM, _XKB_VMOD_NAME_SCROLL, _XKB_VMOD_NAME_SUPER]

-- evdev-codes

_BTN_LEFT, _BTN_RIGHT :: Button
_BTN_LEFT = {#const BTN_LEFT#}
_BTN_RIGHT = {#const BTN_RIGHT#}
