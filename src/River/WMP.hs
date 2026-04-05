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

import           HSWM.XKB
import           River.WMP.FFI
import           River.WMP.MiscFFI
import qualified River.Objects as R

import qualified Data.List as L
import           Foreign
import           Foreign.Storable.Generic (GStorable(..))

ppXkbModsKey :: Modifiers -> KeySym -> String
ppXkbModsKey m ksym =
  L.intercalate "+" $
    [ name | (x, name) <- [ (ModifiersCtrl, "C"), (ModifiersShift, "S"), (ModifiersMod1, "M1"), (ModifiersMod3, "M3"), (ModifiersMod4, "M4"), (ModifiersMod5, "M5") ]
           , fi (fromEnum x) .&. m /= 0 ]
    ++ [ xkbKeysymToText ksym ]

setNodePosition :: MonadIO m => RiverNode -> Int32 -> Int32 -> m ()
setNodePosition n x y = liftIO $ R.riverNodeSetPosition n x y

-- * Pointer Binds

data PointerBinding a = PointerBinding
  { pointer_binding    :: R.RiverPointerBinding
  , river_seat         :: RiverSeat
  , action             :: a
  } deriving (Generic)

instance GStorable (PointerBinding ())


newPointerBinding :: (MonadIO m, Show a)
                  => R.RiverPointerBindingListener
                  -> RiverSeat
                  -> Modifiers
                  -> Button
                  -> a
                  -> m (StablePtr (PointerBinding a))
newPointerBinding pointerBindingListener seat mods btn action = do
    log' $ "[pointer] binding button: " <> toText (ppXkbModsKey mods btn) <> " " <> tshow action
    pb' <- liftIO $ R.riverSeatGetPointerBinding seat (fi btn) (fi mods)
    dtPtr <- liftIO $ newStablePtr $ PointerBinding pb' seat action
    liftIO $ R.listenerAdd pb' pointerBindingListener (castPtr $ castStablePtrToPtr dtPtr)
    liftIO $ R.riverPointerBindingEnable pb'
    return dtPtr

destroyPointerBinding :: MonadIO m => StablePtr (PointerBinding a) -> m ()
destroyPointerBinding sptr = do
  pb <- liftIO $ deRefStablePtr sptr
  liftIO $ R.objectDestroy pb.pointer_binding
  io $ freeStablePtr sptr
