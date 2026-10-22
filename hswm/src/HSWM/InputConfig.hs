{-# LANGUAGE UndecidableInstances #-}

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
module HSWM.InputConfig (
  InputConfigState (..),
  setKeyboardKeymaps,
  setKeyboardKeymap,

  -- * Event handling
  handleInputManagerEvent,
  handleInputDeviceEvent,
  handleLibinputEvent,
  handleLibinputDeviceEvent,
  handleXkbConfigEvent,
  handleXkbKeyboardEvent,
) where

import HSWM.Core

import River qualified as R
import WL.Client (CEnum (..))
import WL.Client qualified as WL

import Data.Coerce (coerce)
import Data.List qualified as L
import Data.Map qualified as M
import System.Posix

data InputConfigState = InputConfigState
  { xkbKeyboards :: M.Map R.RiverXkbKeyboard XkbKeyboardState
  , xkbKeymaps :: M.Map R.RiverXkbKeymap KeymapState
  -- ^ xkbcommon keymaps
  , inputDevices :: M.Map R.RiverInputDevice InputDeviceState
  , libinputDevices :: M.Map R.RiverLibinputDevice LibinputDeviceState
  }
  deriving stock (Eq, Show, Generic)
  deriving anyclass (Default)

data XkbKeyboardState = XkbKeyboardState
  { inputDevice :: !R.RiverInputDevice
  , layoutIndex :: !Word32
  , layoutName :: !String
  }
  deriving stock (Eq, Show, Generic)
  deriving anyclass (Default)

data KeymapState = KeymapState
  { keymap :: !R.RiverXkbKeymap
  , keymapFd :: !Fd
  , params :: !(Maybe XkbRuleNames)
  , failure :: !(Maybe String)
  , created :: !Bool
  }
  deriving stock (Eq, Show, Generic)

data InputDeviceState = InputDeviceState
  { deviceType :: Maybe R.RiverInputDeviceType
  -- ^ keyboard/pointer/touch/tablet
  , deviceName :: String
  }
  deriving stock (Eq, Show, Generic)
  deriving anyclass (Default)

data LibinputDeviceState = LibinputDeviceState
  { inputDevice :: R.RiverInputDevice
  , sendEvents :: SDC R.RiverLibinputDeviceSendEventsModes
  , tap :: SDC R.RiverLibinputDeviceTapState
  , tapButtonMap :: DC R.RiverLibinputDeviceTapButtonMap
  , drag :: DC R.RiverLibinputDeviceDragState
  -- ^ tap-and-drag state
  , dragLock :: DC R.RiverLibinputDeviceDragLockState
  -- ^ drag lock state
  , threeFingerDrag :: SDC R.RiverLibinputDeviceThreeFingerDragState
  -- ^ three finger drag state
  , calibrationMatrix :: SDC CalibrationMatrix
  -- ^ calibration matrix. Supported if non-zero
  , accelProfile :: SDC R.RiverLibinputDeviceAccelProfile
  , accelSpeed :: DC [Double]
  -- ^ accel speed
  , naturalScroll :: SDC R.RiverLibinputDeviceNaturalScrollState
  -- ^ natural scroll, supported if non-zero
  , leftHanded :: SDC R.RiverLibinputDeviceLeftHandedState
  -- ^ left-handed mode, supported if non-zero
  , clickMethod :: SDC R.RiverLibinputDeviceClickMethod
  -- ^ click methods
  , clickfingerButtonMap :: DC R.RiverLibinputDeviceClickfingerButtonMap
  -- ^ clickfinger button map, supported if cilck_methods.clickfinger
  , middleEmulation :: SDC R.RiverLibinputDeviceMiddleEmulationState
  -- ^ middle mouse button emulation, supported if non-zero
  , scrollMethod :: SDC R.RiverLibinputDeviceScrollMethod
  -- ^ scroll method
  , scrollButton :: DC Word32
  -- ^ scroll button, supported if scroll_methods.on_button_down is supported
  , scrollButtonLock :: DC R.RiverLibinputDeviceScrollButtonLockState
  -- ^ scroll button lock state, supported if ccroll_methods.on_button_down is supported
  , dwt :: SDC R.RiverLibinputDeviceDwtState
  -- ^ disable-while-typing, supported if non-zero
  , dwtp :: SDC R.RiverLibinputDeviceDwtpState
  -- ^ disable-while-trackpointing, supported if non-zero
  , rotation :: SDC RotationAngle
  -- ^ rotation angle, supported if non-zero
  }
  deriving stock (Eq, Show, Generic)
  deriving anyclass (Default)

newtype RotationAngle = RotationAngle {unwrap :: Word32}
  deriving (Eq, Ord, Show, Generic)

newtype CalibrationMatrix = CalibrationMatrix {unwrap :: [Float]}
  deriving (Eq, Ord, Show, Generic)

type family StateSupported a where
  StateSupported R.RiverLibinputDeviceSendEventsModes = Maybe R.RiverLibinputDeviceSendEventsModes
  -- \| Finger count indicated
  StateSupported R.RiverLibinputDeviceTapState = Int32
  -- \| Finger count indicated; if less than 3 then 3f drag is not supported.
  StateSupported R.RiverLibinputDeviceThreeFingerDragState = Int32
  -- \| Supported if non-zero
  StateSupported CalibrationMatrix = Bool
  -- \| Profiles is bitfield
  StateSupported R.RiverLibinputDeviceAccelProfile = R.RiverLibinputDeviceAccelProfiles
  StateSupported R.RiverLibinputDeviceNaturalScrollState = Bool
  StateSupported R.RiverLibinputDeviceLeftHandedState = Bool
  StateSupported R.RiverLibinputDeviceClickMethod = R.RiverLibinputDeviceClickMethods
  StateSupported R.RiverLibinputDeviceMiddleEmulationState = Bool
  StateSupported R.RiverLibinputDeviceScrollMethod = R.RiverLibinputDeviceScrollMethods
  StateSupported R.RiverLibinputDeviceDwtState = Bool
  StateSupported R.RiverLibinputDeviceDwtpState = Bool
  StateSupported RotationAngle = Bool

-- | (support, default, current)
data SDC a = SDC
  { supported :: StateSupported a
  , defaultValue, currentValue :: a
  }
  deriving stock (Generic)

deriving instance (Eq a, Eq (StateSupported a)) => Eq (SDC a)
deriving instance (Show a, Show (StateSupported a)) => Show (SDC a)

instance {-# OVERLAPPABLE #-} (CEnum a, Default (StateSupported a)) => Default (SDC a) where
  def = SDC def (toCEnum 42) (toCEnum 42)

instance Default (SDC CalibrationMatrix) where def = SDC False (CalibrationMatrix []) (CalibrationMatrix [])
instance Default (SDC RotationAngle) where def = SDC False (RotationAngle 0) (RotationAngle 0)
instance Default (SDC R.RiverLibinputDeviceAccelProfile) where def = SDC (toCEnum 0) (toCEnum 0) (toCEnum 0)
instance Default (SDC R.RiverLibinputDeviceClickMethod) where def = SDC (toCEnum 0) (toCEnum 0) (toCEnum 0)
instance Default (SDC R.RiverLibinputDeviceScrollMethod) where def = SDC (toCEnum 0) (toCEnum 0) (toCEnum 0)

-- | (default, current)
data DC a = DC {defaultValue, currentValue :: a}
  deriving stock (Eq, Show, Generic)

instance {-# OVERLAPPABLE #-} (CEnum a) => Default (DC a) where
  def = DC (toCEnum 42) (toCEnum 42)

instance Default (DC [a]) where
  def = DC def []

instance Default (DC Word32) where
  def = DC maxBound maxBound

setKeyboardKeymaps :: (XkbKeyboardState -> Bool) -> XkbRuleNames -> H ()
setKeyboardKeymaps select params = do
  st <- getObjectDef @InputConfigState
  forM_ (M.toList st.xkbKeyboards) $ \(kbd, ks) ->
    when (select ks) $ setKeyboardKeymap kbd params

-- | Set the keyboard's keymap.
setKeyboardKeymap :: R.RiverXkbKeyboard -> XkbRuleNames -> H ()
setKeyboardKeymap kbd params = do
  kmSt <- createKeyboardKeymap params
  if kmSt.created
    then R.riverXkbKeyboardSetKeymap kbd kmSt.keymap
    else void . async $ threadDelay 2_000_000 >> retry
  where
    retry =
      lookupValidKeymap params >>= \case
        Just kmSt -> R.riverXkbKeyboardSetKeymap kbd kmSt.keymap
        Nothing -> logError $ "Cannot set keymap: not created after 2s" :# ["keyboard" .= show kbd, "params" .= show params]

-- | Given keymap parameters return a matching keymap. It is created if it does not exist yet.
createKeyboardKeymap :: XkbRuleNames -> H KeymapState
createKeyboardKeymap params =
  lookupKeymaps params >>= \case
    xs
      | Just valid <- L.find (.created) xs -> return valid
      | Just pending <- L.find (\ks -> isNothing ks.failure) xs -> return pending
      | otherwise -> create
      where
        create = do
          logInfo $ "Attempting to create a new keymap" :# ["params" .= show params]
          ctx <- io $ createXkbContext def
          kmap <- io $ createKeymapFromNames ctx params KeymapFormatTextV1
          fd <- io $ keymapAsStringFd kmap KeymapFormatTextV1
          keymap <- withObject $ \xkbConfig ->
            R.riverXkbConfigCreateKeymap xkbConfig (fi fd) R.RiverXkbConfigKeymapFormatTextV1
          let kmState = KeymapState{created = False, failure = Nothing, keymap, keymapFd = fd, params = Just params}
          modifyObjectDef $ \st -> st{xkbKeymaps = M.insert keymap kmState st.xkbKeymaps}
          l <- getOrCreateObject $ do
            runInIO <- askRunInIO
            WL.createListener $ runInIO . handleXkbKeymapEvent
          WL.listenerAdd_ keymap l
          return kmState

lookupKeymaps :: XkbRuleNames -> H [KeymapState]
lookupKeymaps params = do
  st <- getObjectDef @InputConfigState
  return $! L.filter (\ks -> ks.params == Just params) $ M.elems st.xkbKeymaps

lookupValidKeymap :: XkbRuleNames -> H (Maybe KeymapState)
lookupValidKeymap params = do
  st <- getObjectDef @InputConfigState
  return $! L.find (\ks -> ks.created && ks.params == Just params) $ M.elems st.xkbKeymaps

-- * Event handlers

handleXkbKeymapEvent :: (MonadStateGlobal s m) => R.RiverXkbKeymapEvent -> m ()
handleXkbKeymapEvent = \case
  R.RiverXkbKeymapSuccess _ km -> do
    logInfo $ "Keymap created successfully" :# ["keymap" .= show km]
    kmaps <- modifyObjectDef' $ \st -> (st.xkbKeymaps, st{xkbKeymaps = M.adjust (\ks -> ks{created = True}) km st.xkbKeymaps})
    io $ forM_ kmaps $ \ks -> when (ks.keymap == km) $ closeFd ks.keymapFd
  R.RiverXkbKeymapFailure _ km err -> do
    logError $ "Keymap creation failed" :# ["keymap" .= show km, "err-msg" .= err]
    kmaps <- modifyObjectDef' $ \st -> (st.xkbKeymaps, st{xkbKeymaps = M.adjust (\ks -> ks{failure = Just err}) km st.xkbKeymaps})
    io $ forM_ kmaps $ \ks -> when (ks.keymap == km) $ closeFd ks.keymapFd

handleInputManagerEvent :: (MonadStateGlobal s m) => R.RiverInputManagerEvent -> m ()
handleInputManagerEvent (R.RiverInputManagerFinished _ rim) = do
  io $ WL.objectDestroy rim
handleInputManagerEvent (R.RiverInputManagerInputDevice _ _ dev) = do
  modifyObjectDef $ \st -> st{inputDevices = M.insert dev def st.inputDevices}
  withObject $ WL.listenerAdd_ dev

handleInputDeviceEvent :: (MonadStateGlobal HConf m) => R.RiverInputDeviceEvent -> m ()
handleInputDeviceEvent ev = case ev of
  R.RiverInputDeviceType _ dev deviceType -> do
    modifyObjectDef $ \st -> st{inputDevices = M.adjust (\ds -> ds{deviceType = Just deviceType}) dev st.inputDevices}
    -- Set repeat rate & delay for keyboard device
    when (deviceType == R.RiverInputDeviceTypeKeyboard) $ do
      info <- view (config . repeatInfo)
      when (info.rate > 0 && info.delay > 0) $
        R.riverInputDeviceSetRepeatInfo dev info.rate info.delay
  R.RiverInputDeviceName _ dev name -> modifyObjectDef $ \st -> st{inputDevices = M.adjust (\ds -> ds{deviceName = name}) dev st.inputDevices}
  R.RiverInputDeviceRemoved _ dev -> do
    modifyObjectDef $ \st -> st{inputDevices = M.delete dev st.inputDevices}
    io $ WL.objectDestroy dev
  R.RiverInputDeviceDone{} -> do
    return () -- TODO take advantage of this event

-- river_xkb_config_v1
handleXkbConfigEvent :: R.RiverXkbConfigEvent -> H ()
handleXkbConfigEvent = \case
  R.RiverXkbConfigXkbKeyboard _ _ kbd -> do
    modifyObjectDef $ \st -> st{xkbKeyboards = M.insert kbd def st.xkbKeyboards}
    withObject $ WL.listenerAdd_ kbd
    -- Set the default keymap
    view (config . xkbLayout) >>= (`whenJust` setKeyboardKeymap kbd)
  R.RiverXkbConfigFinished _ xc -> io $ WL.objectDestroy xc

handleXkbKeyboardEvent :: (MonadStateGlobal env m) => R.RiverXkbKeyboardEvent -> m ()
handleXkbKeyboardEvent = \case
  R.RiverXkbKeyboardLayout _ kbd index name -> modifyObjectDef $ \st -> st{xkbKeyboards = M.adjust (\ks -> ks{layoutIndex = index, layoutName = name}) kbd st.xkbKeyboards}
  R.RiverXkbKeyboardInputDevice _ kbd dev -> modifyObjectDef $ \st -> st{xkbKeyboards = M.adjust (\ks -> ks{inputDevice = dev} :: XkbKeyboardState) kbd st.xkbKeyboards}
  R.RiverXkbKeyboardRemoved _ kbd -> do
    modifyObjectDef $ \st -> st{xkbKeyboards = M.delete kbd st.xkbKeyboards}
    WL.objectDestroy kbd
  R.RiverXkbKeyboardDone _ _kbd -> return () -- TODO
  _ -> return () -- TODO capslock/numlock/scrolllock enabled/disabled

-- | river_libinput_config_v1
handleLibinputEvent :: (MonadStateGlobal s m) => R.RiverLibinputConfigEvent -> m ()
handleLibinputEvent = \case
  R.RiverLibinputConfigLibinputDevice _ _ dev -> do
    modifyObjectDef $ \st -> st{libinputDevices = M.insert dev def st.libinputDevices}
    withObject $ WL.listenerAdd_ dev
  R.RiverLibinputConfigFinished _ lic -> WL.objectDestroy lic

-- | river_libinput_device_v1
handleLibinputDeviceEvent :: (MonadStateGlobal s m) => R.RiverLibinputDeviceEvent -> m ()
handleLibinputDeviceEvent = \case
  R.RiverLibinputDeviceRemoved _ dev -> do
    modifyObjectDef $ \st -> st{libinputDevices = M.delete dev st.libinputDevices}
    WL.objectDestroy dev
  R.RiverLibinputDeviceInputDevice _ dev inputDevice -> modifyLibinputDevice dev $ \s -> s{inputDevice} :: LibinputDeviceState
  R.RiverLibinputDeviceSendEventsSupport _ dev modes -> modifyLibinputDevice dev $ \s -> s{sendEvents = s.sendEvents{supported = Just modes}}
  R.RiverLibinputDeviceSendEventsDefault _ dev mode -> modifyLibinputDevice dev $ \s -> s{sendEvents = s.sendEvents{defaultValue = mode}}
  R.RiverLibinputDeviceSendEventsCurrent _ dev mode -> modifyLibinputDevice dev $ \s -> s{sendEvents = s.sendEvents{currentValue = mode}}
  R.RiverLibinputDeviceTapSupport _ dev fingercount -> modifyLibinputDevice dev $ \s -> s{tap = s.tap{supported = fingercount}}
  R.RiverLibinputDeviceTapDefault _ dev tapSt -> modifyLibinputDevice dev $ \s -> s{tap = s.tap{defaultValue = tapSt}}
  R.RiverLibinputDeviceTapCurrent _ dev tapSt -> modifyLibinputDevice dev $ \s -> s{tap = s.tap{currentValue = tapSt}}
  R.RiverLibinputDeviceTapButtonMapDefault _ dev tbMap -> modifyLibinputDevice dev $ \s -> s{tapButtonMap = s.tapButtonMap{defaultValue = tbMap}}
  R.RiverLibinputDeviceTapButtonMapCurrent _ dev tbMap -> modifyLibinputDevice dev $ \s -> s{tapButtonMap = s.tapButtonMap{currentValue = tbMap}}
  R.RiverLibinputDeviceDragDefault _ dev dragSt -> modifyLibinputDevice dev $ \s -> s{drag = s.drag{defaultValue = dragSt}}
  R.RiverLibinputDeviceDragCurrent _ dev dragSt -> modifyLibinputDevice dev $ \s -> s{drag = s.drag{currentValue = dragSt}}
  R.RiverLibinputDeviceDragLockDefault _ dev dragLockSt -> modifyLibinputDevice dev $ \s -> s{dragLock = s.dragLock{defaultValue = dragLockSt}}
  R.RiverLibinputDeviceDragLockCurrent _ dev dragLockSt -> modifyLibinputDevice dev $ \s -> s{dragLock = s.dragLock{currentValue = dragLockSt}}
  R.RiverLibinputDeviceThreeFingerDragSupport _ dev fingercount -> modifyLibinputDevice dev $ \s -> s{threeFingerDrag = s.threeFingerDrag{supported = fingercount}}
  R.RiverLibinputDeviceThreeFingerDragDefault _ dev tfdSt -> modifyLibinputDevice dev $ \s -> s{threeFingerDrag = s.threeFingerDrag{defaultValue = tfdSt}}
  R.RiverLibinputDeviceThreeFingerDragCurrent _ dev tfdSt -> modifyLibinputDevice dev $ \s -> s{threeFingerDrag = s.threeFingerDrag{currentValue = tfdSt}}
  R.RiverLibinputDeviceCalibrationMatrixSupport _ dev supported -> modifyLibinputDevice dev $ \s -> s{calibrationMatrix = s.calibrationMatrix{supported = supported /= 0}}
  R.RiverLibinputDeviceCalibrationMatrixDefault _ dev mat -> WL.arrayToList mat >>= \arr -> modifyLibinputDevice dev $ \s -> s{calibrationMatrix = s.calibrationMatrix{defaultValue = CalibrationMatrix $ map coerce arr}}
  R.RiverLibinputDeviceCalibrationMatrixCurrent _ dev mat -> WL.arrayToList mat >>= \arr -> modifyLibinputDevice dev $ \s -> s{calibrationMatrix = s.calibrationMatrix{currentValue = CalibrationMatrix $ map coerce arr}}
  R.RiverLibinputDeviceAccelProfilesSupport _ dev profiles -> modifyLibinputDevice dev $ \s -> s{accelProfile = s.accelProfile{supported = profiles}}
  R.RiverLibinputDeviceAccelProfileDefault _ dev profile -> modifyLibinputDevice dev $ \s -> s{accelProfile = s.accelProfile{defaultValue = profile}}
  R.RiverLibinputDeviceAccelProfileCurrent _ dev profile -> modifyLibinputDevice dev $ \s -> s{accelProfile = s.accelProfile{currentValue = profile}}
  R.RiverLibinputDeviceAccelSpeedDefault _ dev speed -> WL.arrayToList speed >>= \arr -> modifyLibinputDevice dev $ \s -> s{accelSpeed = s.accelSpeed{defaultValue = map coerce arr}}
  R.RiverLibinputDeviceAccelSpeedCurrent _ dev speed -> WL.arrayToList speed >>= \arr -> modifyLibinputDevice dev $ \s -> s{accelSpeed = s.accelSpeed{currentValue = map coerce arr}}
  R.RiverLibinputDeviceNaturalScrollSupport _ dev supported -> modifyLibinputDevice dev $ \s -> s{naturalScroll = s.naturalScroll{supported = supported /= 0}}
  R.RiverLibinputDeviceNaturalScrollDefault _ dev nsSt -> modifyLibinputDevice dev $ \s -> s{naturalScroll = s.naturalScroll{defaultValue = nsSt}}
  R.RiverLibinputDeviceNaturalScrollCurrent _ dev nsSt -> modifyLibinputDevice dev $ \s -> s{naturalScroll = s.naturalScroll{currentValue = nsSt}}
  R.RiverLibinputDeviceLeftHandedSupport _ dev supported -> modifyLibinputDevice dev $ \s -> s{leftHanded = s.leftHanded{supported = supported /= 0}}
  R.RiverLibinputDeviceLeftHandedDefault _ dev lhSt -> modifyLibinputDevice dev $ \s -> s{leftHanded = s.leftHanded{defaultValue = lhSt}}
  R.RiverLibinputDeviceLeftHandedCurrent _ dev lhSt -> modifyLibinputDevice dev $ \s -> s{leftHanded = s.leftHanded{currentValue = lhSt}}
  R.RiverLibinputDeviceClickMethodSupport _ dev clickMethods -> modifyLibinputDevice dev $ \s -> s{clickMethod = s.clickMethod{supported = clickMethods}}
  R.RiverLibinputDeviceClickMethodDefault _ dev clickMethod -> modifyLibinputDevice dev $ \s -> s{clickMethod = s.clickMethod{defaultValue = clickMethod}}
  R.RiverLibinputDeviceClickMethodCurrent _ dev clickMethod -> modifyLibinputDevice dev $ \s -> s{clickMethod = s.clickMethod{currentValue = clickMethod}}
  R.RiverLibinputDeviceClickfingerButtonMapDefault _ dev cbmap -> modifyLibinputDevice dev $ \s -> s{clickfingerButtonMap = s.clickfingerButtonMap{defaultValue = cbmap}}
  R.RiverLibinputDeviceClickfingerButtonMapCurrent _ dev cbmap -> modifyLibinputDevice dev $ \s -> s{clickfingerButtonMap = s.clickfingerButtonMap{currentValue = cbmap}}
  R.RiverLibinputDeviceMiddleEmulationSupport _ dev supported -> modifyLibinputDevice dev $ \s -> s{middleEmulation = s.middleEmulation{supported = supported /= 0}}
  R.RiverLibinputDeviceMiddleEmulationDefault _ dev meSt -> modifyLibinputDevice dev $ \s -> s{middleEmulation = s.middleEmulation{defaultValue = meSt}}
  R.RiverLibinputDeviceMiddleEmulationCurrent _ dev meSt -> modifyLibinputDevice dev $ \s -> s{middleEmulation = s.middleEmulation{currentValue = meSt}}
  R.RiverLibinputDeviceScrollMethodSupport _ dev scrollMethods -> modifyLibinputDevice dev $ \s -> s{scrollMethod = s.scrollMethod{supported = scrollMethods}}
  R.RiverLibinputDeviceScrollMethodDefault _ dev scrollMethod -> modifyLibinputDevice dev $ \s -> s{scrollMethod = s.scrollMethod{defaultValue = scrollMethod}}
  R.RiverLibinputDeviceScrollMethodCurrent _ dev scrollMethod -> modifyLibinputDevice dev $ \s -> s{scrollMethod = s.scrollMethod{currentValue = scrollMethod}}
  R.RiverLibinputDeviceScrollButtonDefault _ dev button -> modifyLibinputDevice dev $ \s -> s{scrollButton = s.scrollButton{defaultValue = button}}
  R.RiverLibinputDeviceScrollButtonCurrent _ dev button -> modifyLibinputDevice dev $ \s -> s{scrollButton = s.scrollButton{currentValue = button}}
  R.RiverLibinputDeviceScrollButtonLockDefault _ dev lockSt -> modifyLibinputDevice dev $ \s -> s{scrollButtonLock = s.scrollButtonLock{defaultValue = lockSt}}
  R.RiverLibinputDeviceScrollButtonLockCurrent _ dev lockSt -> modifyLibinputDevice dev $ \s -> s{scrollButtonLock = s.scrollButtonLock{currentValue = lockSt}}
  R.RiverLibinputDeviceDwtSupport _ dev supported -> modifyLibinputDevice dev $ \s -> s{dwt = s.dwt{supported = supported /= 0}}
  R.RiverLibinputDeviceDwtDefault _ dev dwtSt -> modifyLibinputDevice dev $ \s -> s{dwt = s.dwt{defaultValue = dwtSt}}
  R.RiverLibinputDeviceDwtCurrent _ dev dwtSt -> modifyLibinputDevice dev $ \s -> s{dwt = s.dwt{currentValue = dwtSt}}
  R.RiverLibinputDeviceDwtpSupport _ dev supported -> modifyLibinputDevice dev $ \s -> s{dwtp = s.dwtp{supported = supported /= 0}}
  R.RiverLibinputDeviceDwtpDefault _ dev dwtpSt -> modifyLibinputDevice dev $ \s -> s{dwtp = s.dwtp{defaultValue = dwtpSt}}
  R.RiverLibinputDeviceDwtpCurrent _ dev dwtpSt -> modifyLibinputDevice dev $ \s -> s{dwtp = s.dwtp{currentValue = dwtpSt}}
  R.RiverLibinputDeviceRotationSupport _ dev supported -> modifyLibinputDevice dev $ \s -> s{rotation = s.rotation{supported = supported /= 0}}
  R.RiverLibinputDeviceRotationDefault _ dev angle -> modifyLibinputDevice dev $ \s -> s{rotation = s.rotation{defaultValue = RotationAngle angle}}
  R.RiverLibinputDeviceRotationCurrent _ dev angle -> modifyLibinputDevice dev $ \s -> s{rotation = s.rotation{currentValue = RotationAngle angle}}
  R.RiverLibinputDeviceDone _ dev -> return () -- TODO take advantage of this event
  where
    modifyLibinputDevice dev f = modifyObjectDef $ \st -> st{libinputDevices = M.adjust f dev st.libinputDevices}
