-- |
-- Module      : HSWM.InputConfig
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Handling of various user input devices, e.g. pointers, keyboards, touch control
--
module HSWM.InputConfig where

import Data.Map qualified as M
import Foreign hiding (void)
import HSWM.Core
import HSWM.XKB
import Bindings.River qualified as R
import Bindings.RiverSafe qualified as R
import Bindings.Wayland.Client qualified as WL
import Bindings.Wayland.Client (CEnum(..))
import System.Posix
import Data.List qualified as L

data InputConfigState = InputConfigState
  { inputDevices :: M.Map R.RiverInputDevice InputDeviceState
  , libinputDevices :: M.Map R.RiverLibinputDevice LibinputDeviceState
  , xkbKeyboards :: M.Map R.RiverXkbKeyboard XkbKeyboardState
  , xkbKeymaps :: [KeymapState] -- M.Map String R.RiverXkbKeymap
  -- ^ Created xkbcommon keymaps
  }
  deriving stock (Eq, Show, Generic)
  deriving anyclass (Default)

data InputDeviceState = InputDeviceState
  { deviceType :: Maybe R.River_input_device_v1_type -- ^ keyboard/pointer/touch/tablet
  , deviceName :: String
  }
  deriving stock (Eq, Show, Generic)
  deriving anyclass (Default)

data LibinputDeviceState = LibinputDeviceState
  { inputDevice :: R.RiverInputDevice
  , sendEvents :: SDC R.RiverLibinputDeviceSendEventsModes R.RiverLibinputDeviceSendEventsModes
  , tap :: SDC Int32 R.RiverLibinputDeviceTapState
  , tapButtonMap :: DC R.RiverLibinputDeviceTapButtonMap
  , drag :: DC R.RiverLibinputDeviceDragState -- ^ tap-and-drag state
  , dragLock :: DC R.RiverLibinputDeviceDragLockState -- ^ drag lock state
  , threeFingerDrag :: SDC Int32 R.RiverLibinputDeviceThreeFingerDragState -- ^ three finger drag state
  , calibrationMatrix :: SDC Int32 WL.Array -- ^ calibration matrix. Supported if non-zero
  , accelProfile :: SDC R.RiverLibinputDeviceAccelProfiles R.RiverLibinputDeviceAccelProfile
  , accelSpeed :: DC WL.Array -- ^ accel speed
  , naturalScroll :: SDC Int32 R.RiverLibinputDeviceNaturalScrollState -- ^ natural scroll, supported if non-zero
  , leftHanded :: SDC Int32 R.RiverLibinputDeviceLeftHandedState -- ^ left-handed mode, supported if non-zero
  , clickMethod :: SDC R.RiverLibinputDeviceClickMethods R.RiverLibinputDeviceClickMethod -- ^ click methods
  , clickfingerButtonMap :: DC R.RiverLibinputDeviceClickfingerButtonMap -- ^ clickfinger button map, supported if cilck_methods.clickfinger
  , middleEmulation :: SDC Int32 R.RiverLibinputDeviceMiddleEmulationState -- ^ middle mouse button emulation, supported if non-zero
  , scrollMethod :: SDC R.RiverLibinputDeviceScrollMethods R.RiverLibinputDeviceScrollMethod -- ^ scroll method
  , scrollButton :: DC Word32 -- ^ scroll button, supported if scroll_methods.on_button_down is supported
  , scrollButtonLock :: DC R.RiverLibinputDeviceScrollButtonLockState -- ^ scroll button lock state, supported if ccroll_methods.on_button_down is supported
  , dwt :: SDC Int32 R.RiverLibinputDeviceDwtState -- ^ disable-while-typing, supported if non-zero
  , dwtp :: SDC Int32 R.RiverLibinputDeviceDwtpState -- ^ disable-while-trackpointing, supported if non-zero
  , rotation :: SDC Int32 Word32 -- ^ rotation angle, supported if non-zero
  }
  deriving stock (Eq, Show, Generic)
  deriving anyclass (Default)

-- | (support, default, current)
data SDC support a = SDC
  { support :: support
  , defval, curval :: a }
  deriving stock (Eq, Show, Generic)

instance {-# OVERLAPPABLE #-} (CEnum a, CEnum b) => Default (SDC a b) where
  def = SDC (toCEnum 42) (toCEnum 42) (toCEnum 42)
instance {-# OVERLAPPABLE #-} (CEnum a) => Default (SDC Int32 a) where
  def = SDC minBound (toCEnum 42) (toCEnum 42)
instance Default (SDC Int32 WL.Array) where
  def = SDC minBound def def
instance Default (SDC Int32 Word32)   where
  def = SDC minBound maxBound maxBound

-- | (default, current)
data DC a = DC { defval, curval :: a }
  deriving stock (Eq, Show, Generic)

instance {-# OVERLAPPABLE #-} (CEnum a) => Default (DC a) where
  def = DC (toCEnum 42) (toCEnum 42)
instance Default (DC WL.Array) where
  def = DC def def
instance Default (DC Word32) where
  def = DC maxBound maxBound

data XkbKeyboardState = XkbKeyboardState
  { inputDevice :: !R.RiverInputDevice
  , layoutIndex :: !Word32
  , layoutName :: !String
  }
  deriving stock (Eq, Show, Generic)
  deriving anyclass (Default)

data KeymapState = KeymapState
  { created :: Bool
  , failure :: Maybe String
  , keymap :: R.RiverXkbKeymap
  , keymapFd :: Fd
  , params :: Maybe XkbRuleNames
  }
  deriving stock (Eq, Show, Generic)

keymapFromString :: String -> XkbRuleNames
keymapFromString name = XkbRuleNames { rules = "", model = "pc104", layout = name, variant = "intl", options = "" }

setKeyboardKeymaps :: (XkbKeyboardState -> Bool) -> XkbRuleNames -> H ()
setKeyboardKeymaps select params =
  withObject @InputConfigState $ \st ->
    forM_ (M.toList st.xkbKeyboards) $ \(kbd, ks) ->
      when (select ks) $ setKeyboardKeymap kbd params

setKeyboardKeymap :: R.RiverXkbKeyboard -> XkbRuleNames -> H ()
setKeyboardKeymap kbd params = do
  kmSt <- createKeyboardKeymap params
  if kmSt.created
     then R.riverXkbKeyboardSetKeymap kbd kmSt.keymap
     else void . async $ threadDelay 2_000_000 >> retry
  where
    retry = lookupValidKeymap params >>= \case
      Just kmSt -> R.riverXkbKeyboardSetKeymap kbd kmSt.keymap
      Nothing -> logError $ "Cannot set keymap: not created after 2s" :# [ "keyboard" .= show kbd, "params" .= show params ]

createKeyboardKeymap :: XkbRuleNames -> H KeymapState
createKeyboardKeymap params = lookupKeymaps params >>= \case
  xs | Just valid <- L.find (\ks -> ks.created) xs -> return valid
     | Just pending <- L.find (\ks -> ks.failure == Nothing) xs -> return pending
     | otherwise -> create
    where
    create = do
      xkbConfig <- getObject
      kmap <- io $ newXkbKeymapFromNames params
      fd <- io $ createXkbKeymapFd kmap
      keymap <- R.riverXkbConfigCreateKeymap xkbConfig (fi fd) R.RIVER_XKB_CONFIG_V1_KEYMAP_FORMAT_TEXT_V1
      let kmState = KeymapState { created = False, failure = Nothing, keymap, keymapFd = fd, params = Just params }
      modifyObjectDef $ \st -> st { xkbKeymaps = kmState : st.xkbKeymaps }
      runInIO <- askRunInIO
      l <- getOrCreateObjectIO $ R.mkRiverXkbKeymapListener $ runInIO . handleXkbKeymapEvent
      R.listenerAdd keymap l nullPtr
      return kmState

lookupKeymaps :: XkbRuleNames -> H [KeymapState]
lookupKeymaps params = do
  st <- getObjectDef @InputConfigState
  return $ L.filter (\ks -> ks.params == Just params) st.xkbKeymaps

lookupValidKeymap :: XkbRuleNames -> H (Maybe KeymapState)
lookupValidKeymap params = do
  st <- getObjectDef @InputConfigState
  return $ L.find (\ks -> ks.created && ks.params == Just params) st.xkbKeymaps

-- * Event handlers

handleXkbKeymapEvent :: (MonadUnliftIO m, MonadLogger m, MonadReader HConf m) => R.RiverXkbKeymapEvent -> m ()
handleXkbKeymapEvent = \case
  R.RiverXkbKeymapSuccess _ km -> do
    logInfo $ "Keymap created successfully" :# [ "keymap" .= show km ]
    kmaps <- modifyObjectDef' $ \st -> (st.xkbKeymaps, st { xkbKeymaps = adjust' (\ks -> ks { created = True }) km st.xkbKeymaps })
    io $ forM_ kmaps $ \ks -> when (ks.keymap == km) $ closeFd ks.keymapFd
  R.RiverXkbKeymapFailure _ km err -> do
    logError $ "Keymap creation failed" :# [ "keymap" .= show km, "err-msg" .= err ]
    kmaps <- modifyObjectDef' $ \st -> (st.xkbKeymaps, st { xkbKeymaps = adjust' (\ks -> ks { failure = Just err }) km st.xkbKeymaps })
    io $ forM_ kmaps $ \ks -> when (ks.keymap == km) $ closeFd ks.keymapFd
  where
    adjust' f k = map $ \ks -> if ks.keymap == k then f ks else ks

handleInputManagerEvent :: (MonadUnliftIO m, MonadLogger m, MonadReader HConf m) => R.RiverInputManagerEvent -> m ()
handleInputManagerEvent (R.RiverInputManagerFinished _ rim) = do
  io $ WL.objectDestroy rim
handleInputManagerEvent (R.RiverInputManagerInputDevice _ _ dev) = do
  modifyObjectDef $ \st -> st { inputDevices = M.insert dev def st.inputDevices }
  l <- getObject
  io $ R.listenerAdd dev l nullPtr

handleInputDeviceEvent :: (MonadStateGlobal HConf m) => R.RiverInputDeviceEvent -> m ()
handleInputDeviceEvent (R.RiverInputDeviceType' _ dev deviceType) = do
  modifyObjectDef $ \st -> st { inputDevices = M.adjust (\ds -> ds { deviceType = Just deviceType }) dev st.inputDevices }
  when (deviceType == R.riverInputDeviceTypeKeyboard) $ do
    -- Set repeat rate & delay for keyboard device
    asks (repeatInfo . config) >>= (`whenJust` uncurry (R.riverInputDeviceSetRepeatInfo dev))
handleInputDeviceEvent (R.RiverInputDeviceName _ dev name) = do
  modifyObjectDef $ \st -> st { inputDevices = M.adjust (\ds -> ds { deviceName = name }) dev st.inputDevices }
handleInputDeviceEvent (R.RiverInputDeviceRemoved _ dev) = do
  modifyObjectDef $ \st -> st { inputDevices = M.delete dev st.inputDevices }
  io $ WL.objectDestroy dev

-- river_xkb_config_v1
handleXkbConfigEvent :: R.RiverXkbConfigEvent -> H ()
handleXkbConfigEvent (R.RiverXkbConfigFinished _ xc) = do
  io $ WL.objectDestroy xc
handleXkbConfigEvent (R.RiverXkbConfigXkbKeyboard _ _ kbd) = do
  modifyObjectDef $ \st -> st { xkbKeyboards = M.insert kbd def st.xkbKeyboards }
  l <- getObject
  io $ R.listenerAdd kbd l nullPtr
  -- Set the default keymap
  asks (xkbLayout . config) >>= (`whenJust` setKeyboardKeymap kbd)

handleXkbKeyboardEvent :: (MonadStateGlobal env m) => R.RiverXkbKeyboardEvent -> m ()
handleXkbKeyboardEvent (R.RiverXkbKeyboardRemoved _ kbd) = do
  modifyObjectDef $ \st -> st { xkbKeyboards = M.delete kbd st.xkbKeyboards }
  io $ WL.objectDestroy kbd
handleXkbKeyboardEvent (R.RiverXkbKeyboardLayout _ kbd index name) = modifyObjectDef $ \st -> st { xkbKeyboards = M.adjust (\ks -> ks { layoutIndex = index, layoutName = name }) kbd st.xkbKeyboards }
handleXkbKeyboardEvent (R.RiverXkbKeyboardInputDevice _ kbd dev) = modifyObjectDef $ \st -> st { xkbKeyboards = M.adjust (\ks -> ks { inputDevice = dev } :: XkbKeyboardState) kbd st.xkbKeyboards }
handleXkbKeyboardEvent _ = return ()

-- | river_libinput_config_v1
handleLibinputEvent :: (HasGlobalTMap s, MonadReader s m, MonadUnliftIO m, MonadLogger m) => R.RiverLibinputConfigEvent -> m ()
handleLibinputEvent (R.RiverLibinputConfigFinished _ lic) = do
  io $ WL.objectDestroy lic
handleLibinputEvent (R.RiverLibinputConfigLibinputDevice _ _ dev) = do
  modifyObjectDef $ \st -> st { libinputDevices = M.insert dev def st.libinputDevices }
  l <- getObject
  io $ WL.listenerAdd dev l nullPtr

handleLibinputDeviceEvent :: (HasGlobalTMap s, MonadReader s m, MonadUnliftIO m, MonadLogger m) => R.RiverLibinputDeviceEvent -> m ()
handleLibinputDeviceEvent = \case
  R.RiverLibinputDeviceRemoved _ dev -> do
    modifyObjectDef $ \st -> st { libinputDevices = M.delete dev st.libinputDevices }
    io $ WL.objectDestroy dev
  R.RiverLibinputDeviceInputDevice _ dev inputDevice            -> modifyLibinputDevice dev $ \s -> s { inputDevice } :: LibinputDeviceState
  R.RiverLibinputDeviceSendEventsSupport _ dev modes            -> modifyLibinputDevice dev $ \s -> s { sendEvents = s.sendEvents { support = modes } }
  R.RiverLibinputDeviceSendEventsDefault _ dev mode             -> modifyLibinputDevice dev $ \s -> s { sendEvents = s.sendEvents { defval = mode } }
  R.RiverLibinputDeviceSendEventsCurrent _ dev mode             -> modifyLibinputDevice dev $ \s -> s { sendEvents = s.sendEvents { curval = mode } }
  R.RiverLibinputDeviceTapSupport _ dev fingercount             -> modifyLibinputDevice dev $ \s -> s { tap = s.tap { support = fingercount } }
  R.RiverLibinputDeviceTapDefault _ dev tapSt                   -> modifyLibinputDevice dev $ \s -> s { tap = s.tap { defval = tapSt } }
  R.RiverLibinputDeviceTapCurrent _ dev tapSt                   -> modifyLibinputDevice dev $ \s -> s { tap = s.tap { curval = tapSt } }
  R.RiverLibinputDeviceTapButtonMapDefault _ dev tbMap          -> modifyLibinputDevice dev $ \s -> s { tapButtonMap = s.tapButtonMap { defval = tbMap } }
  R.RiverLibinputDeviceTapButtonMapCurrent _ dev tbMap          -> modifyLibinputDevice dev $ \s -> s { tapButtonMap = s.tapButtonMap { curval = tbMap } }
  R.RiverLibinputDeviceDragDefault _ dev dragSt                 -> modifyLibinputDevice dev $ \s -> s { drag = s.drag { defval = dragSt } }
  R.RiverLibinputDeviceDragCurrent _ dev dragSt                 -> modifyLibinputDevice dev $ \s -> s { drag = s.drag { curval = dragSt } }
  R.RiverLibinputDeviceDragLockDefault _ dev dragLockSt         -> modifyLibinputDevice dev $ \s -> s { dragLock = s.dragLock { defval = dragLockSt } }
  R.RiverLibinputDeviceDragLockCurrent _ dev dragLockSt         -> modifyLibinputDevice dev $ \s -> s { dragLock = s.dragLock { curval = dragLockSt } }
  R.RiverLibinputDeviceThreeFingerDragSupport _ dev fingercount -> modifyLibinputDevice dev $ \s -> s { threeFingerDrag = s.threeFingerDrag { support = fingercount } }
  R.RiverLibinputDeviceThreeFingerDragDefault _ dev tfdSt       -> modifyLibinputDevice dev $ \s -> s { threeFingerDrag = s.threeFingerDrag { defval = tfdSt } }
  R.RiverLibinputDeviceThreeFingerDragCurrent _ dev tfdSt       -> modifyLibinputDevice dev $ \s -> s { threeFingerDrag = s.threeFingerDrag { curval = tfdSt } }
  R.RiverLibinputDeviceCalibrationMatrixSupport _ dev supported -> modifyLibinputDevice dev $ \s -> s { calibrationMatrix = s.calibrationMatrix { support = supported } }
  R.RiverLibinputDeviceCalibrationMatrixDefault _ dev mat       -> modifyLibinputDevice dev $ \s -> s { calibrationMatrix = s.calibrationMatrix { defval = mat } }
  R.RiverLibinputDeviceCalibrationMatrixCurrent _ dev mat       -> modifyLibinputDevice dev $ \s -> s { calibrationMatrix = s.calibrationMatrix { curval = mat } }
  R.RiverLibinputDeviceAccelProfilesSupport _ dev profiles      -> modifyLibinputDevice dev $ \s -> s { accelProfile = s.accelProfile { support = profiles } }
  R.RiverLibinputDeviceAccelProfileDefault _ dev profile        -> modifyLibinputDevice dev $ \s -> s { accelProfile = s.accelProfile { defval = profile } }
  R.RiverLibinputDeviceAccelProfileCurrent _ dev profile        -> modifyLibinputDevice dev $ \s -> s { accelProfile = s.accelProfile { curval = profile } }
  R.RiverLibinputDeviceAccelSpeedDefault _ dev speed            -> modifyLibinputDevice dev $ \s -> s { accelSpeed = s.accelSpeed { defval = speed } }
  R.RiverLibinputDeviceAccelSpeedCurrent _ dev speed            -> modifyLibinputDevice dev $ \s -> s { accelSpeed = s.accelSpeed { curval = speed } }
  R.RiverLibinputDeviceNaturalScrollSupport _ dev supported     -> modifyLibinputDevice dev $ \s -> s { naturalScroll = s.naturalScroll { support = supported } }
  R.RiverLibinputDeviceNaturalScrollDefault _ dev nsSt          -> modifyLibinputDevice dev $ \s -> s { naturalScroll = s.naturalScroll { defval = nsSt } }
  R.RiverLibinputDeviceNaturalScrollCurrent _ dev nsSt          -> modifyLibinputDevice dev $ \s -> s { naturalScroll = s.naturalScroll { curval = nsSt } }
  R.RiverLibinputDeviceLeftHandedSupport _ dev supported        -> modifyLibinputDevice dev $ \s -> s { leftHanded = s.leftHanded { support = supported } }
  R.RiverLibinputDeviceLeftHandedDefault _ dev lhSt             -> modifyLibinputDevice dev $ \s -> s { leftHanded = s.leftHanded { defval = lhSt } }
  R.RiverLibinputDeviceLeftHandedCurrent _ dev lhSt             -> modifyLibinputDevice dev $ \s -> s { leftHanded = s.leftHanded { defval = lhSt } }
  R.RiverLibinputDeviceClickMethodSupport _ dev clickMethods    -> modifyLibinputDevice dev $ \s -> s { clickMethod = s.clickMethod { support = clickMethods } }
  R.RiverLibinputDeviceClickMethodDefault _ dev clickMethod     -> modifyLibinputDevice dev $ \s -> s { clickMethod = s.clickMethod { defval = clickMethod } }
  R.RiverLibinputDeviceClickMethodCurrent _ dev clickMethod     -> modifyLibinputDevice dev $ \s -> s { clickMethod = s.clickMethod { curval = clickMethod } }
  R.RiverLibinputDeviceClickfingerButtonMapDefault _ dev cbmap  -> modifyLibinputDevice dev $ \s -> s { clickfingerButtonMap = s.clickfingerButtonMap { defval = cbmap } }
  R.RiverLibinputDeviceClickfingerButtonMapCurrent _ dev cbmap  -> modifyLibinputDevice dev $ \s -> s { clickfingerButtonMap = s.clickfingerButtonMap { curval = cbmap } }
  R.RiverLibinputDeviceMiddleEmulationSupport _ dev supported   -> modifyLibinputDevice dev $ \s -> s { middleEmulation = s.middleEmulation { support = supported } }
  R.RiverLibinputDeviceMiddleEmulationDefault _ dev meSt        -> modifyLibinputDevice dev $ \s -> s { middleEmulation = s.middleEmulation { defval = meSt } }
  R.RiverLibinputDeviceMiddleEmulationCurrent _ dev meSt        -> modifyLibinputDevice dev $ \s -> s { middleEmulation = s.middleEmulation { curval = meSt } }
  R.RiverLibinputDeviceScrollMethodSupport _ dev scrollMethods  -> modifyLibinputDevice dev $ \s -> s { scrollMethod = s.scrollMethod { support = scrollMethods } }
  R.RiverLibinputDeviceScrollMethodDefault _ dev scrollMethod   -> modifyLibinputDevice dev $ \s -> s { scrollMethod = s.scrollMethod { defval = scrollMethod } }
  R.RiverLibinputDeviceScrollMethodCurrent _ dev scrollMethod   -> modifyLibinputDevice dev $ \s -> s { scrollMethod = s.scrollMethod { curval = scrollMethod } }
  R.RiverLibinputDeviceScrollButtonDefault _ dev button         -> modifyLibinputDevice dev $ \s -> s { scrollButton = s.scrollButton { defval = button } }
  R.RiverLibinputDeviceScrollButtonCurrent _ dev button         -> modifyLibinputDevice dev $ \s -> s { scrollButton = s.scrollButton { curval = button } }
  R.RiverLibinputDeviceScrollButtonLockDefault _ dev lockSt     -> modifyLibinputDevice dev $ \s -> s { scrollButtonLock = s.scrollButtonLock { defval = lockSt } }
  R.RiverLibinputDeviceScrollButtonLockCurrent _ dev lockSt     -> modifyLibinputDevice dev $ \s -> s { scrollButtonLock = s.scrollButtonLock { curval = lockSt } }
  R.RiverLibinputDeviceDwtSupport _ dev supported               -> modifyLibinputDevice dev $ \s -> s { dwt = s.dwt { support = supported } }
  R.RiverLibinputDeviceDwtDefault _ dev dwtSt                   -> modifyLibinputDevice dev $ \s -> s { dwt = s.dwt { defval = dwtSt } }
  R.RiverLibinputDeviceDwtCurrent _ dev dwtSt                   -> modifyLibinputDevice dev $ \s -> s { dwt = s.dwt { curval = dwtSt } }
  R.RiverLibinputDeviceDwtpSupport _ dev supported              -> modifyLibinputDevice dev $ \s -> s { dwtp = s.dwtp { support = supported } }
  R.RiverLibinputDeviceDwtpDefault _ dev dwtpSt                 -> modifyLibinputDevice dev $ \s -> s { dwtp = s.dwtp { defval = dwtpSt } }
  R.RiverLibinputDeviceDwtpCurrent _ dev dwtpSt                 -> modifyLibinputDevice dev $ \s -> s { dwtp = s.dwtp { curval = dwtpSt } }
  R.RiverLibinputDeviceRotationSupport _ dev supported          -> modifyLibinputDevice dev $ \s -> s { rotation = s.rotation { support = supported } }
  R.RiverLibinputDeviceRotationDefault _ dev angle              -> modifyLibinputDevice dev $ \s -> s { rotation = s.rotation { defval = angle } }
  R.RiverLibinputDeviceRotationCurrent _ dev angle              -> modifyLibinputDevice dev $ \s -> s { rotation = s.rotation { curval = angle } }

  where
    modifyLibinputDevice dev f = modifyObjectDef $ \st -> st { libinputDevices = M.adjust f dev st.libinputDevices }
