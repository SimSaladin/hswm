{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Plugin () where

import Waybar.CFFI.Plugin.HSWM (MyMod)
import Waybar.CFFI.Plugin.TH

makeCFFIModule ''MyMod ["-N"]
