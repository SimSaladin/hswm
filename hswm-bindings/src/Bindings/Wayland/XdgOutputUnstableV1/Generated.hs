{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}

module Bindings.Wayland.XdgOutputUnstableV1.Generated
    ( Bindings.Wayland.XdgOutputUnstableV1.Generated.Zxdg_output_manager_v1
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.Zxdg_output_v1
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.zXDG_OUTPUT_MANAGER_V1_DESTROY
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.zXDG_OUTPUT_MANAGER_V1_GET_XDG_OUTPUT
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.zXDG_OUTPUT_MANAGER_V1_DESTROY_SINCE_VERSION
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.zXDG_OUTPUT_MANAGER_V1_GET_XDG_OUTPUT_SINCE_VERSION
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.Zxdg_output_v1_listener(..)
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.zXDG_OUTPUT_V1_DESTROY
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.zXDG_OUTPUT_V1_LOGICAL_POSITION_SINCE_VERSION
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.zXDG_OUTPUT_V1_LOGICAL_SIZE_SINCE_VERSION
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.zXDG_OUTPUT_V1_DONE_SINCE_VERSION
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.zXDG_OUTPUT_V1_NAME_SINCE_VERSION
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.zXDG_OUTPUT_V1_DESCRIPTION_SINCE_VERSION
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.zXDG_OUTPUT_V1_DESTROY_SINCE_VERSION
    )
  where

import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.Marshal as Marshal
import qualified HsBindgen.Runtime.PtrConst as PtrConst

{-| __C declaration:__ @struct zxdg_output_manager_v1@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 77:8@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
data Zxdg_output_manager_v1

{-| __C declaration:__ @struct zxdg_output_v1@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 78:8@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
data Zxdg_output_v1

{-| __C declaration:__ @macro ZXDG_OUTPUT_MANAGER_V1_DESTROY@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 131:9@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zXDG_OUTPUT_MANAGER_V1_DESTROY :: RIP.CInt
zXDG_OUTPUT_MANAGER_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro ZXDG_OUTPUT_MANAGER_V1_GET_XDG_OUTPUT@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 132:9@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zXDG_OUTPUT_MANAGER_V1_GET_XDG_OUTPUT :: RIP.CInt
zXDG_OUTPUT_MANAGER_V1_GET_XDG_OUTPUT =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZXDG_OUTPUT_MANAGER_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 138:9@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zXDG_OUTPUT_MANAGER_V1_DESTROY_SINCE_VERSION :: RIP.CInt
zXDG_OUTPUT_MANAGER_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZXDG_OUTPUT_MANAGER_V1_GET_XDG_OUTPUT_SINCE_VERSION@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 142:9@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zXDG_OUTPUT_MANAGER_V1_GET_XDG_OUTPUT_SINCE_VERSION :: RIP.CInt
zXDG_OUTPUT_MANAGER_V1_GET_XDG_OUTPUT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-|

  > iface_zxdg_output_v1

  > zxdg_output_v1_listener

__C declaration:__ @struct zxdg_output_v1_listener@

__defined at:__ @xdg-output-unstable-v1-client-protocol.h 199:8@

__exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
data Zxdg_output_v1_listener = Zxdg_output_v1_listener
  { logical_position :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ position of the output within the global compositor space

       The position event describes the location of the wl_output within the global compositor space.

       The logical_position event is sent after creating an xdg_output (see xdg_output_manager.get_xdg_output) and whenever the location of the output changes within the global compositor space.

       [__@x@ /(input)/__]: x position within the global compositor space

       [__@y@ /(input)/__]: y position within the global compositor space

    __C declaration:__ @logical_position@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 213:9@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
    -}
  , logical_size :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ size of the output in the global compositor space

       The logical_size event describes the size of the output in the global compositor space.

       Most regular Wayland clients should not pay attention to the logical size and would rather rely on xdg_shell interfaces.

       Some clients such as Xwayland, however, need this to configure their surfaces in the global compositor space as the compositor may apply a different scale from what is advertised by the output scaling property (to achieve fractional scaling, for example).

       For example, for a wl_output mode 3840×2160 and a scale factor 2:

       * A compositor not scaling the monitor viewport in its compositing space will advertise a logical size of 3840×2160,

       * A compositor scaling the monitor viewport with scale factor 2 will advertise a logical size of 1920×1080,

       * A compositor scaling the monitor viewport using a fractional scale of 1.5 will advertise a logical size of 2560×1440.

       For example, for a wl_output mode 1920×1080 and a 90 degree rotation, the compositor will advertise a logical size of 1080x1920.

       The logical_size event is sent after creating an xdg_output (see xdg_output_manager.get_xdg_output) and whenever the logical size of the output changes, either as a result of a change in the applied scale or because of a change in the corresponding output mode(see wl_output.mode) or transform (see wl_output.transform).

       [__@width@ /(input)/__]: width in global compositor space

       [__@height@ /(input)/__]: height in global compositor space

    __C declaration:__ @logical_size@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 256:9@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
    -}
  , done :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> IO ())
    {- ^ all information about the output have been sent

       This event is sent after all other properties of an xdg_output have been sent.

       This allows changes to the xdg_output properties to be seen as atomic, even if they happen via multiple events.

       For objects version 3 onwards, this event is deprecated. Compositors are not required to send it anymore and must send wl_output.done instead.

       __deprecated:__ Deprecated since version 3

    __C declaration:__ @done@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 274:9@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
    -}
  , name :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ name of this output

       Many compositors will assign names to their outputs, show them to the user, allow them to be configured by name, etc. The client may wish to know this name as well to offer the user similar behaviors.

       The naming convention is compositor defined, but limited to alphanumeric characters and dashes (-). Each name is unique among all wl_output globals, but if a wl_output global is destroyed the same name may be reused later. The names will also remain consistent across sessions with the same hardware and software configuration.

       Examples of names include 'HDMI-A-1', 'WL-1', 'X11-1', etc. However, do not assume that the name is a reflection of an underlying DRM connector, X11 connection, etc.

       The name event is sent after creating an xdg_output (see xdg_output_manager.get_xdg_output). This event is only sent once per xdg_output, and the name does not change over the lifetime of the wl_output global.

       This event is deprecated, instead clients should use wl_output.name. Compositors must still support this event.

       [__@name@ /(input)/__]: output name

       @since:  2

    __C declaration:__ @name@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 305:9@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
    -}
  , description :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ human-readable description of this output

       Many compositors can produce human-readable descriptions of their outputs. The client may wish to know this description as well, to communicate the user for various purposes.

       The description is a UTF-8 string with no convention defined for its contents. Examples might include 'Foocorp 11" Display' or 'Virtual X11 output via :1'.

       The description event is sent after creating an xdg_output (see xdg_output_manager.get_xdg_output) and whenever the description changes. The description is optional, and may not be sent at all.

       For objects of version 2 and lower, this event is only sent once per xdg_output, and the description does not change over the lifetime of the wl_output global.

       This event is deprecated, instead clients should use wl_output.description. Compositors must still support this event.

       [__@description@ /(input)/__]: output description

       @since:  2

    __C declaration:__ @description@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 334:9@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Zxdg_output_v1_listener where

  staticSizeOf = \_ -> (40 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Zxdg_output_v1_listener where

  readRaw =
    \ptr0 ->
          pure Zxdg_output_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"logical_position") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"logical_size") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"done") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"name") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"description") ptr0

instance Marshal.WriteRaw Zxdg_output_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Zxdg_output_v1_listener
            logical_position2
            logical_size3
            done4
            name5
            description6 ->
                 HasCField.writeRaw (RIP.Proxy @"logical_position") ptr0 logical_position2
              >> HasCField.writeRaw (RIP.Proxy @"logical_size") ptr0 logical_size3
              >> HasCField.writeRaw (RIP.Proxy @"done") ptr0 done4
              >> HasCField.writeRaw (RIP.Proxy @"name") ptr0 name5
              >> HasCField.writeRaw (RIP.Proxy @"description") ptr0 description6

deriving via Marshal.EquivStorable Zxdg_output_v1_listener instance RIP.Storable Zxdg_output_v1_listener

instance HasCField.HasCField Zxdg_output_v1_listener "logical_position" where

  type CFieldType Zxdg_output_v1_listener "logical_position" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "logical_position" (RIP.Ptr Zxdg_output_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"logical_position")

instance HasCField.HasCField Zxdg_output_v1_listener "logical_size" where

  type CFieldType Zxdg_output_v1_listener "logical_size" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "logical_size" (RIP.Ptr Zxdg_output_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"logical_size")

instance HasCField.HasCField Zxdg_output_v1_listener "done" where

  type CFieldType Zxdg_output_v1_listener "done" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> IO ()))
         ) => RIP.HasField "done" (RIP.Ptr Zxdg_output_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"done")

instance HasCField.HasCField Zxdg_output_v1_listener "name" where

  type CFieldType Zxdg_output_v1_listener "name" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "name" (RIP.Ptr Zxdg_output_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"name")

instance HasCField.HasCField Zxdg_output_v1_listener "description" where

  type CFieldType Zxdg_output_v1_listener "description" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "description" (RIP.Ptr Zxdg_output_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"description")

{-| __C declaration:__ @macro ZXDG_OUTPUT_V1_DESTROY@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 350:9@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zXDG_OUTPUT_V1_DESTROY :: RIP.CInt
zXDG_OUTPUT_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro ZXDG_OUTPUT_V1_LOGICAL_POSITION_SINCE_VERSION@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 355:9@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zXDG_OUTPUT_V1_LOGICAL_POSITION_SINCE_VERSION :: RIP.CInt
zXDG_OUTPUT_V1_LOGICAL_POSITION_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZXDG_OUTPUT_V1_LOGICAL_SIZE_SINCE_VERSION@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 359:9@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zXDG_OUTPUT_V1_LOGICAL_SIZE_SINCE_VERSION :: RIP.CInt
zXDG_OUTPUT_V1_LOGICAL_SIZE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZXDG_OUTPUT_V1_DONE_SINCE_VERSION@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 363:9@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zXDG_OUTPUT_V1_DONE_SINCE_VERSION :: RIP.CInt
zXDG_OUTPUT_V1_DONE_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZXDG_OUTPUT_V1_NAME_SINCE_VERSION@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 367:9@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zXDG_OUTPUT_V1_NAME_SINCE_VERSION :: RIP.CInt
zXDG_OUTPUT_V1_NAME_SINCE_VERSION = (2 :: RIP.CInt)

{-| __C declaration:__ @macro ZXDG_OUTPUT_V1_DESCRIPTION_SINCE_VERSION@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 371:9@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zXDG_OUTPUT_V1_DESCRIPTION_SINCE_VERSION :: RIP.CInt
zXDG_OUTPUT_V1_DESCRIPTION_SINCE_VERSION =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro ZXDG_OUTPUT_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 376:9@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zXDG_OUTPUT_V1_DESTROY_SINCE_VERSION :: RIP.CInt
zXDG_OUTPUT_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

foreign import ccall safe "wrapper" hs_bindgen_9e3cb2316da9d94b_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> IO ())@
hs_bindgen_9e3cb2316da9d94b ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> IO ()))
hs_bindgen_9e3cb2316da9d94b =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_9e3cb2316da9d94b_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_89c3527776e71a96_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> IO ())@
hs_bindgen_89c3527776e71a96 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> IO ()
hs_bindgen_89c3527776e71a96 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_89c3527776e71a96_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> IO ()) where

  toFunPtr = hs_bindgen_9e3cb2316da9d94b

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_89c3527776e71a96

foreign import ccall safe "wrapper" hs_bindgen_0b49fa81c558bb67_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_0b49fa81c558bb67 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_0b49fa81c558bb67 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_0b49fa81c558bb67_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_16cfdffb9cb8b291_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_16cfdffb9cb8b291 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()
hs_bindgen_16cfdffb9cb8b291 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_16cfdffb9cb8b291_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  toFunPtr = hs_bindgen_0b49fa81c558bb67

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  fromFunPtr = hs_bindgen_16cfdffb9cb8b291

foreign import ccall safe "wrapper" hs_bindgen_906c62331480c0bb_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_906c62331480c0bb ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_906c62331480c0bb =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_906c62331480c0bb_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_59fcfed8979b3362_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_59fcfed8979b3362 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_59fcfed8979b3362 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_59fcfed8979b3362_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_906c62331480c0bb

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zxdg_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_59fcfed8979b3362
