{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedRecordDot #-}

-- |
-- Module      : Waybar.CFFI.Plugin.HSWM
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
module Waybar.CFFI.Plugin.HSWM where

import Control.Concurrent
import Control.Monad
import GI.Gtk as Gtk
import HSWM (withStderrLogging, ScreenId)
import HSWM.Util.IPC (ProtoMsg (..), clientRun)
import Waybar.CFFI.Plugin.Base
import Data.IORef
import qualified Data.Text as T
import Data.Char (isDigit)
import qualified Data.List as L
import Data.Maybe
import Control.Monad.Fix

data ModState = ModState
  { tagWidgets :: [Label]
  , thisOutputName :: !T.Text
  , outputs :: [(T.Text, ScreenId)]
  , workspaces :: !(Maybe ([String], (String, ScreenId, T.Text), [(String, ScreenId, T.Text)]))
  }

data MyMod = MyMod
  { -- | GtkBox* container
    topContainer :: !Box,
    workspacesContainer :: !Box,
    layoutWidget :: !Label,
    stRef :: !(IORef ModState),
    wmThread :: !ThreadId
  }
  deriving (Generic)

connectToWM :: (ProtoMsg -> IO ()) -> IO ()
connectToWM onMsg = withStderrLogging $ clientRun Nothing onMsg (\_say -> forever $ threadDelay maxBound)

instanceNew :: IConf a -> IO MyMod
instanceNew iconf@IConf {..} = do
  putStrLn $ "cffi_example: init config: waybar " ++ wbVersion ++ " :: config entries " <> show (length configs) <> ":"
  putStrLn $ "configs: " ++ show configs

  -- Add a container for displaying the next widgets
  topContainer <- boxNew OrientationHorizontal 5
  widgetSetName topContainer "hswm"
  sc <- widgetGetStyleContext topContainer
  styleContextAddClass sc "module"
  containerAdd rootWidget topContainer

  workspacesContainer <- boxNew OrientationHorizontal 5
  containerAdd topContainer workspacesContainer

  layoutWidget <- labelNew Nothing
  containerAdd topContainer layoutWidget

  stRef <- newIORef $ ModState [] "" mempty Nothing

  mfix $ \myMod -> do
    _ <- forkIO $ updateOutputName iconf myMod
    wmThread <- forkIO $ do
      putStrLn "Connecting..."
      connectToWM (handleMsg iconf myMod)
    return MyMod {..}

handleMsg :: IConf a -> MyMod -> ProtoMsg -> IO ()
handleMsg _ _ Identify{} = pure ()
handleMsg _ m OutputInfo{..} = do
  modifyIORef (stRef m) $ \s -> s { outputs = outputs }
handleMsg _ m WsInfo{..} = do
  modifyIORef (stRef m) $ \s -> s { workspaces = Just (wsNames, wsFocused, wsVisible) }
  updateWorkspaces m
handleMsg _ _ msg = putStrLn $ "warn: unhandled incoming message: " <> show msg

updateOutputName :: IConf a -> MyMod -> IO ()
updateOutputName _ m = do
  -- wait for the window to be created
  threadDelay 1000000
  -- figure out the output name of this bar instance
  rootPath <- widgetGetPath (topContainer m)
  classes <- widgetPathIterListClasses rootPath 0
  case filter check classes of
    [] -> putStrLn "could not determine output name name!"
    name : _ -> do
      putStrLn $ "output name detected: " ++ T.unpack name
      modifyIORef (stRef m) $ \s -> s { thisOutputName = name }
      updateWorkspaces m
  where
    check s
      | Just ('-', x) <- T.uncons (T.takeEnd 2 s), Just (n, _) <- T.uncons x = isDigit n
      | otherwise = False

updateWorkspaces :: MyMod -> IO ()
updateWorkspaces m = do
  st <- readIORef (stRef m)
  case workspaces st of
    Nothing -> return ()
    Just (tags, (focusedTag, focusedScreen, focusedLayout), visibleTags) -> do
      let thisScreen = fromMaybe maxBound (L.lookup (thisOutputName st) st.outputs)

      let add tag = do
            l <- labelNew (Just $ T.pack tag)
            sc <- widgetGetStyleContext l
            styleContextAddClass sc (T.pack "workspace")
            containerAdd (workspacesContainer m) l
            return l

          remove l = do
            putStrLn "destroying ws label"
            widgetDestroy l

      -- create new
      newTags <- forM (drop (length (tagWidgets st)) tags) add

      -- destroy deleted
      forM_ (drop (length tags) (tagWidgets st)) remove

      let tagWidgets' = take (length tags) (tagWidgets st) ++ newTags

      forM_ (zip tags tagWidgets') $ \(tag, w) -> do
        setLabelLabel w (T.pack tag)
        sc <- widgetGetStyleContext w
        if | tag == focusedTag, thisScreen == focusedScreen -> do
              styleContextAddClass sc (T.pack "focused")
              styleContextRemoveClass sc (T.pack "visible")
              labelSetText (layoutWidget m) focusedLayout
           | (_, _screen, layout) : _ <- [ x | x@(vtag, _, _) <- visibleTags, vtag == tag ] -> do
              styleContextAddClass sc (T.pack "visible")
              styleContextRemoveClass sc (T.pack "focused")
              labelSetText (layoutWidget m) layout
           | otherwise -> do
             styleContextRemoveClass sc (T.pack "visible")
             styleContextRemoveClass sc (T.pack "focused")

      writeIORef (stRef m) st { tagWidgets = tagWidgets' }

instanceDestroy :: IConf MyMod -> IO ()
instanceDestroy IConf {instanceData = MyMod {..}} = do
  putStrLn "deinit..."
  killThread wmThread
  widgetDestroy topContainer

-- | Update the UI
updateDo :: IConf MyMod -> IO ()
updateDo IConf{..} = updateWorkspaces instanceData

-- | Handle signal which was propagated by waybar (reload, etc.)
signalDo :: IConf MyMod -> Int -> IO ()
signalDo _ _ = pure ()

-- | Trigger a module action
actionDo :: IConf MyMod -> String -> IO ()
actionDo _iconf actStr = do
  putStrLn $ "warn: unhandled module action (" <> actStr <> ")"
