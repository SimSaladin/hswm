------------------------------------------------------------------------------
-- |
-- Module      : River.WMP
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
-- License     : WTFPL
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
--
------------------------------------------------------------------------------
module River.WMP
  ( module River.WMP
  , module River.WMP.FFI
  , module River.WMP.MiscFFI
  ) where

import River.WMP.FFI
import River.WMP.MiscFFI
import HSWM.XKB (Modifiers, Button)

import GHC.Generics
import           Foreign.Storable.Generic (GStorable(..))
import Foreign

data Rectangle = Rectangle { x, y, width, height :: !Word32 }
  deriving (Show, Read, Eq)

setNodePosition :: MonadIO m => RiverNode -> Int32 -> Int32 -> m ()
setNodePosition n x y = liftIO $ river_node_v1_set_position n x y

-- * Pointer Binds

data PointerBinding a = PointerBinding
  { pointer_binding    :: RiverPointerBinding
  , river_seat         :: RiverSeat
  , action             :: a
  } deriving (Generic)

instance GStorable (PointerBinding ())


newPointerBinding :: (MonadIO m, Show a)
                  => PointerBindingListener
                  -> RiverSeat
                  -> Modifiers
                  -> Button
                  -> a
                  -> m (StablePtr (PointerBinding a))
newPointerBinding pointerBindingListener seat mods btn action = do
    log' $ "[pointer] binding button: " <> tshow (mods, btn, action)
    pb' <- liftIO $ river_seat_v1_get_pointer_binding seat (fi btn) (fi mods)
    dtPtr <- liftIO $ newStablePtr $ PointerBinding pb' seat action
    liftIO $ river_pointer_binding_v1_add_listener pb' pointerBindingListener (castStablePtrToPtr dtPtr)
    liftIO $ river_pointer_binding_v1_enable pb'
    return dtPtr

destroyPointerBinding :: MonadIO m => StablePtr (PointerBinding a) -> m ()
destroyPointerBinding _ = do
  log' "pointer_binding_destroy: not yet implemented"
