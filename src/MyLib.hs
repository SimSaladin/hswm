module MyLib (someFunc) where

import Core

someFunc :: IO ()
someFunc = do
  display <- openDisplay ""
  startHSWM display def

