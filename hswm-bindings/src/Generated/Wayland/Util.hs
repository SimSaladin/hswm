{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UnboxedTuples #-}
{-# LANGUAGE UndecidableInstances #-}

module Generated.Wayland.Util
    ( Generated.Wayland.Util.wL_MAX_MESSAGE_SIZE
    , Generated.Wayland.Util.Wl_fixed_t(..)
    )
  where

import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.Marshal as Marshal

{-| __C declaration:__ @macro WL_MAX_MESSAGE_SIZE@

    __defined at:__ @wayland-util.h 99:9@

    __exported by:__ @wayland-util.h@
-}
wL_MAX_MESSAGE_SIZE :: RIP.CInt
wL_MAX_MESSAGE_SIZE = (4096 :: RIP.CInt)

{-| __C declaration:__ @wl_fixed_t@

    __defined at:__ @wayland-util.h 621:17@

    __exported by:__ @wayland-util.h@
-}
newtype Wl_fixed_t = Wl_fixed_t
  { unwrap :: HsBindgen.Runtime.LibC.Int32
  }
  deriving stock (Eq, RIP.Generic, Ord, Read, Show)
  deriving newtype
    ( RIP.Bitfield
    , RIP.Bits
    , Bounded
    , Enum
    , RIP.FiniteBits
    , RIP.HasFFIType
    , Integral
    , RIP.Ix
    , Num
    , RIP.Prim
    , Marshal.ReadRaw
    , Real
    , Marshal.StaticSize
    , RIP.Storable
    , Marshal.WriteRaw
    )

instance ( ((~) ty) HsBindgen.Runtime.LibC.Int32
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_fixed_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_fixed_t "unwrap" where

  type CFieldType Wl_fixed_t "unwrap" =
    HsBindgen.Runtime.LibC.Int32

  offset# = \_ -> \_ -> 0
