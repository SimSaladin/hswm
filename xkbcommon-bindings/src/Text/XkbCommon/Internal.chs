module Text.XkbCommon.Internal where

import RIO
import Data.Enum
import Foreign
import Foreign.C
import System.IO.Unsafe
import System.Posix (Fd(..), closeFd, fdWrite)

#define _GNU_SOURCE

#include <unistd.h>
#include <sys/mman.h>
#include <xkbcommon/xkbcommon.h>

-- * Exceptions

data XkbCommonException = XkbKeysymNameNotFound String
                        | XkbKeymapCreateException String
                        | XkbException String
  deriving Show

instance Exception XkbCommonException

-- * Types

type KeySym       = CUInt
type Modifiers    = {#type uint32_t#}
type ModMask      = {#type xkb_mod_index_t#}
type ModIndex     = {#type xkb_mod_index_t#}
type LayoutIndex  = {#type xkb_layout_index_t#}
type XkbKeycode   = {#type xkb_keycode_t#}

{#pointer *xkb_context as XkbContext #}
{#pointer *xkb_keymap  as XkbKeymap #}
{#pointer *xkb_state   as XkbState #}

{#enum xkb_context_flags        as XkbContextFlag        {} deriving (Eq, Show)#}
{#enum xkb_keymap_format        as XkbKeymapFormat       {} deriving (Eq, Show)#}
{#enum xkb_keymap_compile_flags as XkbKeymapCompileFlags {} deriving (Eq, Show)#}
{#enum xkb_state_component      as XkbStateComponent     {} deriving (Eq, Show)#}

-- | @ struct xkb_rule_names @
data XkbRuleNames = XkbRuleNames { rules, model, layout, variant, options :: !String }
  deriving (Show, Read, Eq)

-- ** Internal utilities

enumsToIntegral :: (Enum a, Integral b) => [a] -> b
enumsToIntegral xs = fromIntegral $ foldl' (.&.) 0 (map fromEnum xs)

checkXkbKeymapResult :: XkbKeymap -> IO XkbKeymap
checkXkbKeymapResult res = do
  when (res == nullPtr) $ throwM $ XkbKeymapCreateException "keymap creation failed (return null)"
  return res

xkbThrowIfNull :: String -> Ptr a -> IO (Ptr a)
xkbThrowIfNull str res = do
  when (res == nullPtr) $ throwM $ XkbException str
  return res

checkXkbContext :: XkbContext -> IO XkbContext
checkXkbContext = xkbThrowIfNull "xkb_context_new returned null"

checkXkbState :: XkbState -> IO XkbState
checkXkbState = xkbThrowIfNull "xkb_state_new returned null"

maybeToEnum :: (Enum a, Integral b) => b -> Maybe a
maybeToEnum a = if fromInteger 0 == a then Nothing else Just (toEnum $ fromIntegral a)

-- * XkbContext

{#fun xkb_context_new as ^
  { enumsToIntegral `[XkbContextFlag]'
  } -> `XkbContext' checkXkbContext* #}

{#fun xkb_context_unref as ^ {`XkbContext'} -> `()'#}

withXkbContext :: [XkbContextFlag] -> (XkbContext -> IO a) -> IO a
withXkbContext a1 f = bracket (xkbContextNew a1) xkbContextUnref f

-- * XkbKeymap

{#fun xkb_keymap_new_from_string as ^
  { `XkbContext'
  , `CString'
  , `XkbKeymapFormat'
  , `XkbKeymapCompileFlags'
  } -> `XkbKeymap' checkXkbKeymapResult* #}

-- | returns A keymap compiled according to the [RMLVO] names, or `NULL` if
-- the compilation failed.
{#fun xkb_keymap_new_from_names2 as ^
  {                   `XkbContext'
  , withXkbRuleNames* `XkbRuleNames'
  ,                   `XkbKeymapFormat'
  ,                   `XkbKeymapCompileFlags'
  } -> `XkbKeymap' checkXkbKeymapResult* #}

{#fun xkb_keymap_unref as ^ {`XkbKeymap'} -> `()'#}

{#fun xkb_keymap_get_as_string as ^   {`XkbKeymap', `XkbKeymapFormat'} -> `String' #}
{#fun xkb_keymap_mod_get_mask as ^    {`XkbKeymap', `String'} -> `ModMask' fromIntegral #}
{#fun xkb_keymap_mod_get_name as ^    {`XkbKeymap', fromIntegral `ModIndex'} -> `String'#}

createKeymap :: Fd -> CSize -> IO XkbKeymap
createKeymap fd size = withXkbContext [] $ \ctx -> do
  createKeymap' ctx fd size

createKeymap' :: XkbContext -> Fd -> CSize -> IO XkbKeymap
createKeymap' ctx fd size = do
  keymap <- bracket
     ({#call mmap as _mmap#} nullPtr (fromIntegral size) {#const PROT_READ#} {#const MAP_PRIVATE#} (fromIntegral fd) 0)
     (\ptr -> {#call munmap#} ptr (fromIntegral size)) $ \ptr ->
       xkbKeymapNewFromString ctx (castPtr ptr) XKB_KEYMAP_FORMAT_TEXT_V1 XKB_KEYMAP_COMPILE_NO_FLAGS
  closeFd fd
  return keymap

createKeymap'' :: XkbContext -> Fd -> CSize -> IO XkbKeymap
createKeymap'' ctx fd size = do
  keymap <- bracket
     ({#call mmap as _mmap#} nullPtr (fromIntegral size) {#const PROT_READ#} {#const MAP_SHARED#} (fromIntegral fd) 0)
     (\ptr -> {#call munmap#} ptr (fromIntegral size)) $ \ptr ->
       xkbKeymapNewFromString ctx (castPtr ptr) XKB_KEYMAP_FORMAT_TEXT_V1 XKB_KEYMAP_COMPILE_NO_FLAGS
  closeFd fd
  return keymap

createXkbKeymapFd :: XkbKeymap -> IO Fd
createXkbKeymapFd kmap = withCString "hswm-xkb-keymap" $ \c_name -> do
  fd <- Fd <$> {#call memfd_create#} c_name (1 {- MFD_CLOEXEC-} .|. 2 {- MFD_ALLOW_SEALING -})
  str <- xkbKeymapGetAsString kmap XKB_KEYMAP_FORMAT_TEXT_V1
  _ <- fdWrite fd str
  return fd

withXkbKeymapFd :: XkbKeymap -> (Fd -> IO b) -> IO b
withXkbKeymapFd kmap f = do
  fd <- createXkbKeymapFd kmap
  r <- f fd
  closeFd fd
  return r

newXkbKeymapFromNames :: XkbRuleNames -> IO XkbKeymap
newXkbKeymapFromNames opts = withXkbContext [] $ \ctx ->
  xkbKeymapNewFromNames2 ctx opts XKB_KEYMAP_FORMAT_TEXT_V1 XKB_KEYMAP_COMPILE_NO_FLAGS

withXkbRuleNames :: XkbRuleNames -> (Ptr () -> IO b) -> IO b
withXkbRuleNames x m = allocaBytesAligned {#sizeof xkb_rule_names#} {#alignof xkb_rule_names#} $ \p ->
    withCString x.rules $ \c_rules ->
    withCString x.model $ \c_model ->
    withCString x.layout $ \c_layout ->
    withCString x.variant $ \c_variant ->
    withCString x.options $ \c_options -> do
      {#set xkb_rule_names.rules#} p c_rules
      {#set xkb_rule_names.model#} p c_model
      {#set xkb_rule_names.layout#} p c_layout
      {#set xkb_rule_names.variant#} p c_variant
      {#set xkb_rule_names.options#} p c_options
      m $ castPtr p

-- * XkbState

{#fun xkb_state_new as ^ {`XkbKeymap'} -> `XkbState' checkXkbState* #}

{#fun xkb_state_unref as ^ {`XkbState'} -> `()'#}

-- | Note: the lifetime of the keymap is tied to the state by default!
{#fun xkb_state_get_keymap as ^ {`XkbState'} -> `XkbKeymap' #}

{#fun xkb_state_update_mask as ^
  {`XkbState'
  ,id `ModMask'
  ,id `ModMask'
  ,id `ModMask'
  ,id `LayoutIndex'
  ,id `LayoutIndex'
  ,id `LayoutIndex'
  } -> `Maybe XkbStateComponent' maybeToEnum #}

{#fun xkb_state_key_get_one_sym as ^ { `XkbState' , fromIntegral `XkbKeycode' } -> `KeySym' fromIntegral #}

-- * XkbKeysym

-- enum xkb_keysym_flags:
--     XKB_KEYSYM_NO_FLAGS         = 0,       /** Do not apply any flags. */
--     XKB_KEYSYM_CASE_INSENSITIVE = (1 << 0) /** Find keysym by case-insensitive search. */

xkbKeysymFromName :: String -> KeySym
xkbKeysymFromName name = unsafePerformIO $ withCString name $ \c_name -> return $!
  let res = {#call pure xkb_keysym_from_name as _xkb_keysym_from_name#} c_name 1 in
      if res == 0 then impureThrow $ XkbKeysymNameNotFound ("xkb_keysym_from_name(" ++ name ++ ")") else res

xkbKeysymGetName :: KeySym -> String
xkbKeysymGetName k = unsafePerformIO $ allocaBytes 64 $ \buf ->
    let len = {#call pure xkb_keysym_get_name#} k buf 64 in
    if len == -1 then impureThrow $ XkbKeysymNameNotFound ("xkb_keysym_get_name " ++ show k) else peekCStringLen (buf, fromIntegral len)

-----------------------------------------------------------------------------
-- * KeySyms

--_XKB_KEY_n :: KeySym
--_XKB_KEY_n = {#const XKB_KEY_n#}

-- | real-modifier-names
_XKB_MOD_NAME_SHIFT, _XKB_MOD_NAME_CAPS, _XKB_MOD_NAME_CTRL, _XKB_MOD_NAME_MOD1, _XKB_MOD_NAME_MOD2, _XKB_MOD_NAME_MOD3, _XKB_MOD_NAME_MOD4, _XKB_MOD_NAME_MOD5 :: String
_XKB_MOD_NAME_SHIFT = {#const XKB_MOD_NAME_SHIFT#} -- "Shift"
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

-- * Internal
