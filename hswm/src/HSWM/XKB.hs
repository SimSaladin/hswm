{-# LANGUAGE PartialTypeSignatures #-}

-- |
-- Module      : HSWM.XKB
-- Description : XKB definitions... Refactor, probably.
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Might also want one or both of these:
--
--    module Text.XkbCommon,
--    module Text.XkbCommon.EventCodes,
--
module HSWM.XKB (
  module HSWM.XKB,
)
where

import HSWM.Types.Action
import River qualified as R
import WL.Client qualified as WL

-- * Pointer Binds

newPointerBinding ::
  (MonadLogger m, MonadIO m, Show a, Typeable a) =>
  ConstPtr (WL.ObjectListener R.RiverPointerBinding)
  -> R.RiverSeat
  -> ModMask
  -> Button
  -> a
  -> m (PointerBindingPtr a)
newPointerBinding pointerBindingListener seat mods btn action = do
  let pk = PKey mods btn
  logInfo $ "new pointer binding" :# ["key" .= ppPKey @Text pk, "action" .= show action]
  pb' <- R.riverSeatGetPointerBinding seat (fi btn) (R.toCEnum $ fi mods)
  dtPtr <-
    io $
      newStablePtr $
        PointerBinding
          { riverPointerBinding = pb'
          , riverSeat = seat
          , boundAction = action
          }
  WL.listenerAdd pb' pointerBindingListener dtPtr
  _ <- R.riverPointerBindingEnable pb'
  return dtPtr

destroyPointerBinding :: (MonadIO m) => StablePtr (PointerBinding a) -> m ()
destroyPointerBinding sptr = io $ do
  pb <- deRefStablePtr sptr
  WL.objectDestroy pb.riverPointerBinding
  freeStablePtr sptr
