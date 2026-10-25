{-# LANGUAGE StaticPointers #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE NoFieldSelectors #-}

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
  initialize,

  -- * Event handling
  handleInputManagerEvent,
  handleInputDeviceEvent,
  handleLibinputEvent,
  handleLibinputDeviceEvent,
  handleXkbConfigEvent,
  handleXkbKeyboardEvent,
  handleXkbKeymapEvent,
  HasInputConfigState (..),
  HasInputDevice (..),
  HasInputDeviceState (..),
  HasXkbKeyboardState (..),
  HasCurrentValue (..),
  HasDefaultValue (..),
  HasSupported (..),
) where

import Data.Coerce (coerce)
import HSWM.Core
import HSWM.Util.CommandStatic
import River qualified as R
import WL.Client (CEnum (..))
import WL.Client qualified as WL

-- import Data.List qualified as L
import Data.Map qualified as M
import HSWM.Wayland
import System.Posix
import Text.XkbCommon qualified as XKBC

-- * Commands (static)

initialize :: H ()
initialize = do
  registerCommand "set-repeat-info" setRepeatInfoCommand

setRepeatInfoCommand :: Command (R.RiverInputDevice, RepeatInfo) ()
setRepeatInfoCommand =
  mkCommand_
    (static Dict)
    ( static
        \(dev, p) ->
          R.riverInputDeviceSetRepeatInfo dev p.rate p.delay
    )

-- * Types

-- | Top-level record for input-config data.
--
-- On the top-level directly availale:
--
--    - R.RiverInputDevice
--      - contains 'InputDeviceState'
--
--    - R.RiverXkbKeyboard
--      - links to 'R.RiverInputDevice'
--
--    - R.RiverLibinputDevice
--      - links to 'R.RiverInputDevice'
data InputConfigState = InputConfigState
  { inputDevices :: M.Map R.RiverInputDevice InputDeviceState
  , xkbKeyboards :: M.Map R.RiverXkbKeyboard XkbKeyboardState
  , libinputDevices :: M.Map R.RiverLibinputDevice LibinputDeviceState
  , keymaps :: [(R.RiverXkbKeymap, Maybe XkbRuleNames)]
  }
  deriving stock (Eq, Show, Generic)
  deriving anyclass (Default)

data InputDeviceState = InputDeviceState
  { deviceType :: Maybe R.RiverInputDeviceType
  -- ^ keyboard/pointer/touch/tablet
  , deviceName :: String
  , xkbKeyboard :: Maybe R.RiverXkbKeyboard
  , repeatInfo :: Maybe RepeatInfo
  }
  deriving stock (Eq, Show, Generic)
  deriving anyclass (Default)

data KeymapState = KeymapState
  { keymap :: !R.RiverXkbKeymap
  , keymapFd :: !Fd
  , params :: !(Maybe XkbRuleNames)
  , resultVar :: TMVar (Either String ())
  }
  deriving stock (Eq, Generic)

-- | THe state associated with an 'RiverXkbKeyboard'.
data XkbKeyboardState = XkbKeyboardState
  { inputDevice :: !R.RiverInputDevice
  , layoutIndex :: !Word32
  , layoutName :: !String
  }
  deriving stock (Eq, Show, Generic)
  deriving anyclass (Default)

data LibinputDeviceState = LibinputDeviceState
  { inputDevice :: R.RiverInputDevice
  , sendEvents :: SDC R.RiverLibinputDeviceSendEventsModes
  , tap :: SDC R.RiverLibinputDeviceTapState
  , tapButtonMap :: DC R.RiverLibinputDeviceTapButtonMap
  -- ^ lrm (left/right/middle) or lmr (left/middle/right)
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
  deriving stock (Eq, Ord, Show, Generic)
  deriving newtype (FromJSON, ToJSON)

newtype CalibrationMatrix = CalibrationMatrix {unwrap :: [Float]}
  deriving stock (Eq, Ord, Show, Generic)
  deriving newtype (FromJSON, ToJSON)

type family StateSupported a where
  StateSupported R.RiverLibinputDeviceSendEventsModes = Maybe R.RiverLibinputDeviceSendEventsModes
  -- \| Finger count indicated: tap-to-click is supported if @fingercount > 0@
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

-- | (default, current)
data DC a = DC {defaultValue, currentValue :: a}
  deriving stock (Eq, Show, Generic)

deriving instance (Eq a, Eq (StateSupported a)) => Eq (SDC a)
deriving instance (Show a, Show (StateSupported a)) => Show (SDC a)

-- TODO get rid of these ad-hoc shits
instance {-# OVERLAPPABLE #-} (CEnum a, Default (StateSupported a)) => Default (SDC a) where def = SDC def (toCEnum 42) (toCEnum 42)
instance Default (SDC CalibrationMatrix) where def = SDC False (CalibrationMatrix []) (CalibrationMatrix [])
instance Default (SDC RotationAngle) where def = SDC False (RotationAngle 0) (RotationAngle 0)
instance Default (SDC R.RiverLibinputDeviceAccelProfile) where def = SDC (toCEnum 0) (toCEnum 0) (toCEnum 0)
instance Default (SDC R.RiverLibinputDeviceClickMethod) where def = SDC (toCEnum 0) (toCEnum 0) (toCEnum 0)
instance Default (SDC R.RiverLibinputDeviceScrollMethod) where def = SDC (toCEnum 0) (toCEnum 0) (toCEnum 0)
instance {-# OVERLAPPABLE #-} (CEnum a) => Default (DC a) where def = DC (toCEnum 42) (toCEnum 42)
instance Default (DC [a]) where def = DC def []
instance Default (DC Word32) where def = DC maxBound maxBound

-- * Lenses

makeFieldClassesIfMissing ["inputDevice"]
makeLensesCombine' id ["inputDevice", "repeatInfo"] [''InputConfigState, ''XkbKeyboardState, ''InputDeviceState, ''LibinputDeviceState]

makeFieldClassesIfMissing ["currentValue", "defaultValue"]
makeLensesWith' classPerField [''SDC, ''DC]

-- * Aeson instances

instance ToJSON XkbKeyboardState where
  toJSON = genericToJSON aesonOptions
  toEncoding = genericToEncoding aesonOptions

instance ToJSON InputDeviceState where
  toJSON = genericToJSON aesonOptions
  toEncoding = genericToEncoding aesonOptions

instance (ToJSON a, ToJSON (StateSupported a)) => ToJSON (SDC a)
instance (ToJSON a) => ToJSON (DC a)
instance ToJSON LibinputDeviceState where
  toJSON = genericToJSON aesonOptions
  toEncoding = genericToEncoding aesonOptions

-- * Helper combinators

modifyConfigs :: (a ~ InputConfigState, MonadStateGlobal s m) => (a -> a) -> m ()
modifyConfigs = modifyObjectDef @InputConfigState

-- * Keymap functions

lookupInputDevice :: R.RiverInputDevice -> H (Maybe InputDeviceState)
lookupInputDevice dev = withObjectDef @InputConfigState $ return . view (inputDevices . at dev)

inputDeviceHook :: R.RiverInputDevice -> H ()
inputDeviceHook dev = do
  lookupInputDevice dev >>= \case
    Nothing -> return ()
    Just st ->
      -- Set repeat rate & delay for keyboard device
      when (st.deviceType == Just R.RiverInputDeviceTypeKeyboard) $ do
        info <- view (config . repeatInfo)
        when (info.rate > 0 && info.delay > 0) $
          setRepeatInfo dev info

setRepeatInfo :: R.RiverInputDevice -> RepeatInfo -> H ()
setRepeatInfo dev info = do
  when (info.rate < 0 || info.delay < 0) $ throwString $ "setRepeatInfo: rate and delay must be over 0. " ++ show info
  R.riverInputDeviceSetRepeatInfo dev info.rate info.delay
  modifyConfigs $ inputDevices . ix dev . repeatInfo ?~ info

-- | Sets the keymap for all selected keyboards.
setKeyboardKeymaps :: (HandleEvent H R.RiverXkbKeymapEvent) => (XkbKeyboardState -> Bool) -> XkbRuleNames -> H ()
setKeyboardKeymaps sel kmdef =
  withObjectDef @InputConfigState $ \st ->
    forM_ (M.toList st.xkbKeyboards) $ \(kbd, ks) ->
      when (sel ks) $ setKeyboardKeymap kbd kmdef

-- | Set the keyboard's keymap.
setKeyboardKeymap :: (HandleEvent H R.RiverXkbKeymapEvent) => R.RiverXkbKeyboard -> XkbRuleNames -> H ()
setKeyboardKeymap kbd kmdef = do
  getOrCreateKeyboardKeymap kmdef >>= \case
    Left err -> logError $ "Unable to set keymap: keymap creation failed" :# ["params" .= show kmdef, "error" .= err]
    Right km -> R.riverXkbKeyboardSetKeymap kbd km

-- else void . async $ threadDelay 2_000_000 >> retry
--    retry =
--      lookupValidKeymap kmdef >>= \case
--        Just kmSt -> R.riverXkbKeyboardSetKeymap kbd kmSt.keymap
--        Nothing -> logError $ "Cannot set keymap: not created after 2s" :# ["keyboard" .= show kbd, "params" .= show kmdef]

newtype PendingKeymaps = PendingKeymaps {_unwrap :: [(XkbRuleNames, KeymapState)]}

-- | Given keymap parameters return a matching keymap. It is created if it does not exist yet.
getOrCreateKeyboardKeymap :: (HandleEvent H R.RiverXkbKeymapEvent) => XkbRuleNames -> H (Either String R.RiverXkbKeymap)
getOrCreateKeyboardKeymap kmdef =
  lookupKeymap kmdef >>= \case
    Just x -> return $ Right x
    Nothing -> do
      pendingVar <- getOrCreateObjectIO @(MVar PendingKeymaps) $ newMVar (PendingKeymaps [])
      res <- modifyMVar pendingVar $ \pending'@(PendingKeymaps pending) ->
        case pending ^? each . filtered (^. _1 . to (== kmdef)) . _2 of
          Just res -> return (pending', res)
          Nothing -> do
            st <- create
            return (PendingKeymaps $ (kmdef, st) : pending, st)
      returnResult res
      where
        returnResult res =
          atomically (readTMVar res.resultVar) >>= \case
            Right () -> return $ Right res.keymap
            Left err -> return $ Left err
        create = do
          logInfo $ "Attempting to create a new keymap" :# ["params" .= show kmdef]
          fd <- io $ do
            ctx <- XKBC.createXkbContext def
            kmap <- XKBC.createKeymapFromNames ctx kmdef XKBC.KeymapFormatTextV1
            XKBC.keymapAsStringFd kmap XKBC.KeymapFormatTextV1
          km <- withObject $ \xkbConfig ->
            R.riverXkbConfigCreateKeymap xkbConfig (fi fd) R.RiverXkbConfigKeymapFormatTextV1
          rvar <- newEmptyTMVarIO
          let kmState = KeymapState{keymap = km, keymapFd = fd, params = Just kmdef, resultVar = rvar}
          rvarPtr <- newStablePtr kmState
          addGlobalListener km (Just rvarPtr)
          return kmState

lookupKeymap :: XkbRuleNames -> H (Maybe R.RiverXkbKeymap)
lookupKeymap kmdef = do
  st <- getObjectDef @InputConfigState
  return $! st ^? keymaps . each . filtered (^. _2 . to (== Just kmdef)) . _1

-- * Event handlers

-- | InputManager events inform us of all 'inputDevice'.
handleInputManagerEvent :: (MonadStateGlobal s m) => R.RiverInputManagerEvent -> m ()
handleInputManagerEvent (R.RiverInputManagerFinished _ rim) = WL.objectDestroy rim
handleInputManagerEvent (R.RiverInputManagerInputDevice _ _ dev) = do
  modifyConfigs $ inputDevices . at dev ?~ def
  withObject $ WL.listenerAdd_ dev

-- | Input device events give us details about the device.
handleInputDeviceEvent :: R.RiverInputDeviceEvent -> H ()
handleInputDeviceEvent = \case
  R.RiverInputDeviceName _ dev n -> modifyConfigs $ inputDevices . ix dev . deviceName .~ n
  R.RiverInputDeviceType _ dev t -> modifyConfigs $ inputDevices . ix dev . deviceType ?~ t
  R.RiverInputDeviceDone _ dev -> inputDeviceHook dev
  R.RiverInputDeviceRemoved _ dev -> modifyConfigs (inputDevices . at dev .~ Nothing) >> WL.objectDestroy dev

-- | For keymap creation
handleXkbKeymapEvent :: (MonadStateGlobal s m) => R.RiverXkbKeymapEvent -> m ()
handleXkbKeymapEvent = \case
  R.RiverXkbKeymapSuccess ud km -> do
    logInfo $ "Keymap created successfully" :# ["keymap" .= show km]
    (res :: KeymapState) <- io $ WL.fromUserData ud >>= deRefStablePtr
    io $ closeFd res.keymapFd
    modifyConfigs $ keymaps <>~ [(km, res.params)]
    atomically $ putTMVar res.resultVar (Right ())
  R.RiverXkbKeymapFailure ud km err -> do
    logError $ "Keymap creation failed" :# ["keymap" .= show km, "err-msg" .= err]
    (res :: KeymapState) <- io $ WL.fromUserData ud >>= deRefStablePtr
    io $ closeFd res.keymapFd
    atomically $ putTMVar res.resultVar (Left err)

-- | A new xkbcommon keyboard has been created (via river_xkb_config_v1)
handleXkbConfigEvent :: (HandleEvent H R.RiverXkbKeymapEvent, HandleEvent H R.RiverXkbKeyboardEvent) => R.RiverXkbConfigEvent -> H ()
handleXkbConfigEvent = \case
  R.RiverXkbConfigXkbKeyboard _ _ kbd -> do
    modifyConfigs $ xkbKeyboards . at kbd ?~ def
    addGlobalListener_ kbd
    -- Set the default keymap
    view (config . xkbLayout) >>= (`whenJust` void . async . setKeyboardKeymap kbd)
  R.RiverXkbConfigFinished _ xc -> WL.objectDestroy xc

-- | Events on an XkbKeyboard
handleXkbKeyboardEvent :: (MonadStateGlobal env m) => R.RiverXkbKeyboardEvent -> m ()
handleXkbKeyboardEvent = \case
  R.RiverXkbKeyboardLayout _ kbd i n -> modifyConfigs $ xkbKeyboards . ix kbd %~ ((layoutIndex .~ i) . (layoutName .~ n))
  R.RiverXkbKeyboardInputDevice _ kbd dev -> do
    modifyConfigs $ xkbKeyboards . ix kbd . inputDevice .~ dev
    modifyConfigs $ inputDevices . ix dev . xkbKeyboard ?~ kbd
  R.RiverXkbKeyboardRemoved _ kbd -> modifyConfigs (xkbKeyboards . at kbd .~ Nothing) >> WL.objectDestroy kbd
  R.RiverXkbKeyboardDone _ _ -> return () -- TODO
  _ -> return () -- TODO capslock/numlock/scrolllock enabled/disabled

-- | river_libinput_config_v1
handleLibinputEvent :: (HandleEvent H R.RiverLibinputDeviceEvent) => R.RiverLibinputConfigEvent -> H ()
handleLibinputEvent = \case
  R.RiverLibinputConfigLibinputDevice _ _ dev -> modifyConfigs (libinputDevices . at dev ?~ def) >> addGlobalListener_ dev
  R.RiverLibinputConfigFinished _ lic -> WL.objectDestroy lic

-- | river_libinput_device_v1
handleLibinputDeviceEvent :: R.RiverLibinputDeviceEvent -> H ()
handleLibinputDeviceEvent = \case
  R.RiverLibinputDeviceRemoved _ dev -> modifyConfigs (libinputDevices . at dev .~ Nothing) >> WL.objectDestroy dev
  R.RiverLibinputDeviceInputDevice _ dev indev -> modifyLibinputDevice dev $ \s -> s{inputDevice = indev} :: LibinputDeviceState
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
  R.RiverLibinputDeviceCalibrationMatrixSupport _ dev sup -> modifyLibinputDevice dev $ \s -> s{calibrationMatrix = s.calibrationMatrix{supported = sup /= 0}}
  R.RiverLibinputDeviceCalibrationMatrixDefault _ dev mat -> WL.arrayToList mat >>= \arr -> modifyLibinputDevice dev $ \s -> s{calibrationMatrix = s.calibrationMatrix{defaultValue = CalibrationMatrix $ map coerce arr}}
  R.RiverLibinputDeviceCalibrationMatrixCurrent _ dev mat -> WL.arrayToList mat >>= \arr -> modifyLibinputDevice dev $ \s -> s{calibrationMatrix = s.calibrationMatrix{currentValue = CalibrationMatrix $ map coerce arr}}
  R.RiverLibinputDeviceAccelProfilesSupport _ dev profiles -> modifyLibinputDevice dev $ \s -> s{accelProfile = s.accelProfile{supported = profiles}}
  R.RiverLibinputDeviceAccelProfileDefault _ dev profile -> modifyLibinputDevice dev $ \s -> s{accelProfile = s.accelProfile{defaultValue = profile}}
  R.RiverLibinputDeviceAccelProfileCurrent _ dev profile -> modifyLibinputDevice dev $ \s -> s{accelProfile = s.accelProfile{currentValue = profile}}
  R.RiverLibinputDeviceAccelSpeedDefault _ dev speed -> WL.arrayToList speed >>= \arr -> modifyLibinputDevice dev $ \s -> s{accelSpeed = s.accelSpeed{defaultValue = map coerce arr}}
  R.RiverLibinputDeviceAccelSpeedCurrent _ dev speed -> WL.arrayToList speed >>= \arr -> modifyLibinputDevice dev $ \s -> s{accelSpeed = s.accelSpeed{currentValue = map coerce arr}}
  R.RiverLibinputDeviceNaturalScrollSupport _ dev sup -> modifyLibinputDevice dev $ \s -> s{naturalScroll = s.naturalScroll{supported = sup /= 0}}
  R.RiverLibinputDeviceNaturalScrollDefault _ dev nsSt -> modifyLibinputDevice dev $ \s -> s{naturalScroll = s.naturalScroll{defaultValue = nsSt}}
  R.RiverLibinputDeviceNaturalScrollCurrent _ dev nsSt -> modifyLibinputDevice dev $ \s -> s{naturalScroll = s.naturalScroll{currentValue = nsSt}}
  R.RiverLibinputDeviceLeftHandedSupport _ dev sup -> modifyLibinputDevice dev $ \s -> s{leftHanded = s.leftHanded{supported = sup /= 0}}
  R.RiverLibinputDeviceLeftHandedDefault _ dev lhSt -> modifyLibinputDevice dev $ \s -> s{leftHanded = s.leftHanded{defaultValue = lhSt}}
  R.RiverLibinputDeviceLeftHandedCurrent _ dev lhSt -> modifyLibinputDevice dev $ \s -> s{leftHanded = s.leftHanded{currentValue = lhSt}}
  R.RiverLibinputDeviceClickMethodSupport _ dev clickMethods -> modifyLibinputDevice dev $ \s -> s{clickMethod = s.clickMethod{supported = clickMethods}}
  R.RiverLibinputDeviceClickMethodDefault _ dev cm -> modifyLibinputDevice dev $ \s -> s{clickMethod = s.clickMethod{defaultValue = cm}}
  R.RiverLibinputDeviceClickMethodCurrent _ dev cm -> modifyLibinputDevice dev $ \s -> s{clickMethod = s.clickMethod{currentValue = cm}}
  R.RiverLibinputDeviceClickfingerButtonMapDefault _ dev cbmap -> modifyLibinputDevice dev $ \s -> s{clickfingerButtonMap = s.clickfingerButtonMap{defaultValue = cbmap}}
  R.RiverLibinputDeviceClickfingerButtonMapCurrent _ dev cbmap -> modifyLibinputDevice dev $ \s -> s{clickfingerButtonMap = s.clickfingerButtonMap{currentValue = cbmap}}
  R.RiverLibinputDeviceMiddleEmulationSupport _ dev sup -> modifyLibinputDevice dev $ \s -> s{middleEmulation = s.middleEmulation{supported = sup /= 0}}
  R.RiverLibinputDeviceMiddleEmulationDefault _ dev meSt -> modifyLibinputDevice dev $ \s -> s{middleEmulation = s.middleEmulation{defaultValue = meSt}}
  R.RiverLibinputDeviceMiddleEmulationCurrent _ dev meSt -> modifyLibinputDevice dev $ \s -> s{middleEmulation = s.middleEmulation{currentValue = meSt}}
  R.RiverLibinputDeviceScrollMethodSupport _ dev scrollMethods -> modifyLibinputDevice dev $ \s -> s{scrollMethod = s.scrollMethod{supported = scrollMethods}}
  R.RiverLibinputDeviceScrollMethodDefault _ dev sm -> modifyLibinputDevice dev $ \s -> s{scrollMethod = s.scrollMethod{defaultValue = sm}}
  R.RiverLibinputDeviceScrollMethodCurrent _ dev sm -> modifyLibinputDevice dev $ \s -> s{scrollMethod = s.scrollMethod{currentValue = sm}}
  R.RiverLibinputDeviceScrollButtonDefault _ dev button -> modifyLibinputDevice dev $ \s -> s{scrollButton = s.scrollButton{defaultValue = button}}
  R.RiverLibinputDeviceScrollButtonCurrent _ dev button -> modifyLibinputDevice dev $ \s -> s{scrollButton = s.scrollButton{currentValue = button}}
  R.RiverLibinputDeviceScrollButtonLockDefault _ dev lockSt -> modifyLibinputDevice dev $ \s -> s{scrollButtonLock = s.scrollButtonLock{defaultValue = lockSt}}
  R.RiverLibinputDeviceScrollButtonLockCurrent _ dev lockSt -> modifyLibinputDevice dev $ \s -> s{scrollButtonLock = s.scrollButtonLock{currentValue = lockSt}}
  R.RiverLibinputDeviceDwtSupport _ dev sup -> modifyLibinputDevice dev $ \s -> s{dwt = s.dwt{supported = sup /= 0}}
  R.RiverLibinputDeviceDwtDefault _ dev dwtSt -> modifyLibinputDevice dev $ \s -> s{dwt = s.dwt{defaultValue = dwtSt}}
  R.RiverLibinputDeviceDwtCurrent _ dev dwtSt -> modifyLibinputDevice dev $ \s -> s{dwt = s.dwt{currentValue = dwtSt}}
  R.RiverLibinputDeviceDwtpSupport _ dev sup -> modifyLibinputDevice dev $ \s -> s{dwtp = s.dwtp{supported = sup /= 0}}
  R.RiverLibinputDeviceDwtpDefault _ dev dwtpSt -> modifyLibinputDevice dev $ \s -> s{dwtp = s.dwtp{defaultValue = dwtpSt}}
  R.RiverLibinputDeviceDwtpCurrent _ dev dwtpSt -> modifyLibinputDevice dev $ \s -> s{dwtp = s.dwtp{currentValue = dwtpSt}}
  R.RiverLibinputDeviceRotationSupport _ dev sup -> modifyLibinputDevice dev $ \s -> s{rotation = s.rotation{supported = sup /= 0}}
  R.RiverLibinputDeviceRotationDefault _ dev angle -> modifyLibinputDevice dev $ \s -> s{rotation = s.rotation{defaultValue = RotationAngle angle}}
  R.RiverLibinputDeviceRotationCurrent _ dev angle -> modifyLibinputDevice dev $ \s -> s{rotation = s.rotation{currentValue = RotationAngle angle}}
  R.RiverLibinputDeviceDone _ dev -> return () -- TODO take advantage of this event
  where
    modifyLibinputDevice dev f = modifyConfigs $ \st -> st{libinputDevices = M.adjust f dev st.libinputDevices}
