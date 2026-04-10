module HSWM.Actions.LockSession where

{-
import qualified Bindings.Wayland.ExtSessionLockV1 as SL

getOrCreateObject $ SL.mkSessionLockListener           $ handleE . SessionLockEvent

getOrCreateObject $ requireGlobal conf.globals ("ext_session_lock_manager_v1", 1) $ \r n v ->
   WL.registryBind r n SL.sessionLockManagerInterface (fi v) <&> SL.SessionLockManager

lockSession :: H ()
lockSession = do
  sm <- getObject
  slock <- io $ SL.sessionLockManagerLock sm
  outputs <- runInHS $ gets _outputs
  compositor <- getObject
  -- TODO should use shared pool
  bp <- BP.newImageBufferPool

  slsListener <- io $ SL.mkSessionLockSurfaceListener $ \case
    SL.SessionLockSurfaceConfigure ud sls serial w h -> do
      let surface = WL.Surface $ castPtr ud
      let scale = 1
      SL.sessionLockSurfaceAckConfigure sls serial
      region <- io $ WL.compositorCreateRegion compositor
      io $ WL.regionAdd region 0 0 (fi w) (fi h)
      io $ WL.surfaceSetOpaqueRegion surface region
      io $ WL.objectDestroy region
      buf <- io $ BP.nextBuffer bp (fi $ w * scale) (fi $ h * scale)
      io $ WL.surfaceAttach surface buf.buf 0 0
      io $ WL.surfaceDamageBuffer surface 0 0 (fi $ w * scale) (fi $ h * scale)
      io $ WL.surfaceCommit surface

  -- create sessionlock surfaces
  forM_ outputs $ \o -> do
    wo <- Outputs.getWlOutput o.river_output
    surface <- io $ WL.compositorCreateSurface compositor
    sls <- io $ SL.sessionLockGetLockSurface slock surface wo
    WL.listenerAdd sls slsListener (surface.unwrap)

handleEvent (SessionLockEvent e) =
  case e of
    SL.SessionLockLocked _ _slock -> pure ()
    SL.SessionLockFinished _ slock ->
      io $ SL.sessionLockUnlockAndDestroy slock
-}
