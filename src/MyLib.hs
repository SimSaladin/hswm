module MyLib (someFunc) where

import Core
import Control.Monad
import Data.Default


someFunc :: IO ()
someFunc = do
  display <- openDisplay ""
  startHSWM display def

