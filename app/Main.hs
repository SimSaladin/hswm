module Main (main) where

import HSWM

main :: IO ()
main = hswm $ addKeys myKeys def
  { layoutHook = Tall 1 (3/100) (1/2) ||| Full
  }

myKeys =
  [ (("M", "n" :: String), toSomeAction FocusNext)
  , (("M", "Return"),      toSomeAction $ LaunchProgram "evince" [])
  ]
