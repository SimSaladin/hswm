{-# LANGUAGE TemplateHaskell #-}

module Plugin () where

import Waybar.CFFI.Plugin.TH
import Waybar.CFFI.Plugin.HSWM (MyMod)

makeCFFIModule ''MyMod [ "-N" ]
