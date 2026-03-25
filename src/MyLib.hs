module MyLib (someFunc) where

import HSWM.Types
import HSWM.Actions
import Core

someFunc :: IO ()
someFunc = do
  display <- openDisplay ""
  startHSWM display $
    addKeys myKeys def

myKeys =
  [ (("M", "n" :: String), toSomeAction FocusNext)
  , (("M", "Return"),      toSomeAction $ LaunchProgram "evince" [])
  ]
