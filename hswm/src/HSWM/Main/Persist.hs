-- | On-disk state fle management.
module HSWM.Main.Persist where

import HSWM.Core
import HSWM.Main.Options
import HSWM.StackSet qualified as W
import River qualified as R

import Control.Concurrent.Thread.Delay as Conc (delay)
import Data.List qualified as L
import Data.Map qualified as M
import Data.Time.Clock.System
import System.FilePath ((</>))
import System.IO (hGetContents)
import System.IO.Error
import Text.Printf

data StateData = StateData
  { sfWins :: W.StackSet WorkspaceId String (IntPtr, String) WorkspaceDetail ScreenId ScreenDetail
  , sfExt :: [(String, String)]
  }
  deriving (Show, Read)

scheduleStateSave :: Integer -> H ()
scheduleStateSave interval
  | interval <= 0 = return ()
  | otherwise = do
      let period = 1_000_000 * 60 * interval
      link =<< async (forever $ io (Conc.delay period) >> writeMainQ MainSaveToDisk)
      logInfo $ "started timer for saving state to disk every period" :# ["minutes" .= interval]

maybeRestoreState ::
  (MonadUnliftIO m, MonadLoggerIO m, MonadCatch m, LayoutClass l RiverWindow, Read (l RiverWindow)) =>
  Main
  -> HSWMConfig n l
  -> m (HSWMConfig n Layout, HState)
maybeRestoreState opts conf = do
  let newEmpty =
        let wset = W.new (Layout conf.layoutHook) conf.workspaces [SD 0 0 0 0]
         in def{windowset = wset, windowsetOld = wset}
  st <- fromMaybe newEmpty <$> readStateFile opts.mainStateFile conf
  return (conf{layoutHook = Layout conf.layoutHook}, st)

writeStateToFile :: HasCallStack => HS FilePath
writeStateToFile = do
  dir <- getStateDirectory
  ts <- getTimeStamp
  stateString <- dumpStateAsString
  let stateFileName = printf "savedstate-%i" ts
      stateFP = dir ++ "/" ++ stateFileName
      linkFP = dir ++ "/" ++ "savedstate"
      update = do
        writeBinaryFileAtomic stateFP (fromString stateString)
        isLink <- pathIsSymbolicLink linkFP
        exists <- doesFileExist linkFP
        when (isLink || exists) $ removeFile linkFP
        createFileLink stateFileName linkFP
      cleanup = do
        contents <- listDirectory dir
        forM_ contents $ \file ->
          when ("savedstate-" `L.isPrefixOf` file) $ do
            res <- tryIO $ systemSeconds . utcToSystemTime <$> getModificationTime (dir </> file)
            case res of
              Right mtime
                | mtime < ts - (60 * 60 * 12) -> removeFile (dir </> file)
                | otherwise -> return ()
              Left e
                -- try to remove anyway, it might be a broken symlink
                | isDoesNotExistError e -> void $ tryIO $ removeFile (dir </> file)
                | otherwise -> throwIO e

  resUpdate <- io $ tryIO update
  case resUpdate of
    Left err -> logError $ "Failed to write state file" :# ["state-file" .= stateFP, "exception" .= show err]
    Right{} -> logInfo $ "Wrote current WM state to disk" :# ["state-file" .= stateFP]
  resCleanup <- io $ tryIO cleanup
  case resCleanup of
    Left err -> logError $ "Could not cleanup old state files" :# ["state-file" .= stateFP, "exception" .= show err]
    Right{} -> return ()
  return stateFP
  where
    getTimeStamp :: (MonadIO m) => m Int64
    getTimeStamp = systemSeconds <$> io getSystemTime

dumpStateAsString :: HS String
dumpStateAsString = do
  let wsData s = W.mapLayout show $ W.mapWindow winIdent $ s.windowset
        where
          winIdent w
            | Just win <- L.find (\x -> x.river_window == w) s._windows = (rwToIntPtr w, win.identifier)
            | otherwise = (rwToIntPtr w, "")
  let maybeShow (t, Right (PersistentExtension ext)) = Just (t, show ext)
      maybeShow (t, Left str) = Just (t, str)
      maybeShow _ = Nothing
      extState = mapMaybe maybeShow . M.toList . view extensibleState
  stateData <- gets $ \s -> StateData (wsData s) (extState s)
  return $! show stateData
  where
    rwToIntPtr (R.RiverWindow w) = ptrToIntPtr w

-- | Read the state of a previous xmonad instance from a file and
-- return that state.  The state file is removed after reading it.
readStateFile ::
  forall m l m2.
  (MonadUnliftIO m, MonadCatch m, MonadLogger m, LayoutClass l RiverWindow, Read (l RiverWindow)) =>
  Maybe FilePath
  -> HSWMConfig m2 l
  -> m (Maybe HState)
readStateFile msf xmc = do
  sfile <- maybe getDefFile return msf
  exists <- doesFileExist sfile
  if exists then doIt sfile else return Nothing
  where
    doIt :: FilePath -> m (Maybe HState)
    doIt path = do
      -- I'm trying really hard here to make sure we read the entire
      -- contents of the file before it is removed from the file system.
      res <- try @_ @SomeException $ do
        raw <- io $ withFile path ReadMode readStrict
        return $! maybeRead reads raw
      case res of
        Right sf' -> do
          logInfo $ "Restoring WM state from file" :# ["statefile" .= path]
          return $ do
            sf <- sf'
            let wins = W.allWindows (sfWins sf)
            let winset =
                  W.ensureTags layout xmc.workspaces $
                    W.mapLayout (fromMaybe layout . maybeRead lreads) $
                      W.mapWindow (R.RiverWindow . intPtrToPtr . fst) (sfWins sf)
                extState = M.fromList . map (second Left) $ sfExt sf
            return
              def
                { windowset = winset
                , windowsetOld = winset
                , recoveredWindows = M.fromList [(b, R.RiverWindow $ intPtrToPtr a) | (a, b) <- wins]
                , extensibleState = extState
                }
        Left e -> do
          logError $ "Failed to restore WM state from file" :# ["exception" .= show e]
          return Nothing

    layout = Layout xmc.layoutHook
    lreads = readsLayout layout

    getDefFile = do
      dir <- getStateDirectory
      return $ dir </> "savedstate"

    maybeRead reads' s = case reads' s of
      [(x, "")] -> Just x
      _ -> Nothing

    readStrict :: Handle -> IO String
    readStrict h = hGetContents h >>= \s -> length s `seq` return s

getStateDirectory :: (HasCallStack, MonadIO m) => m FilePath
getStateDirectory = do
  dir <- getXdgDirectory XdgState "hswm"
  createDirectoryIfMissing True dir
  return dir
