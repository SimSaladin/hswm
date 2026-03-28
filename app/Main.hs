{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}


module Main (main) where

import HSWM

main :: IO ()
main = hswm $ addKeys myKeys def
  { layoutHook = Tall 1 (3/100) (1/2) ||| Full
  , handleEventHook = debugHook
  }

myKeys =
  [ (("M", "n" :: String), toSomeAction FocusNext)
  , (("M", "Return"),      toSomeAction $ LaunchProgram "evince" [])
  ]

debugHook :: Event -> H All
debugHook ev
   | WindowManagerEvent WindowManagerManageStart{} <- ev = mempty
   | WindowManagerEvent WindowManagerRenderStart{} <- ev = mempty

   | XkbEvent (XkbKeyPressed dt _) = do
      xb <- liftIO $ deRefStablePtr (castPtrToStablePtr dt :: StablePtr (XkbBinding SomeAction))
      debug' $ toText $ printf "[EH] KEY PRESS ev=%s action=%s" (show e) (show xb.action)

   | otherwise = do
     debug' $ "[EH] " <> tshow ev
     mempty
