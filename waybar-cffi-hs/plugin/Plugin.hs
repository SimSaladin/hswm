{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Plugin () where

import Waybar.CFFI.Plugin.HSWM
import Waybar.CFFI.Plugin.TH

makeCFFIModule ''HSWMPlugin ["-N", "-maxN4", "-M800M", "-xn"]
