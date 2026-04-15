-- |
-- Module      : HSWM.Util.RofiPrompt
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Util.RofiPrompt where

import HSWM hiding (readProcess)
import Data.ByteString.Char8 qualified as C8
import Data.ByteString.Lazy qualified as LB
import Data.List qualified as L
import System.Process.Typed
import System.Directory
import System.IO (readFile, appendFile)

data RofiPromptConfig
  = RofiPromptConfig
  { -- | @-dmenu@ - use rofi-dmenu mode.
    _dmenu :: Bool,
    -- | @-p Prompt:@
    _prompt :: String,
    -- | @ -mesg @. Supports Pango markup.
    _mesg :: String,
    -- | @ -markup-rows @
    _markupRows :: Bool,
    -- | @ -dpi @
    _dpi :: Int,
    -- | @ -a @ - active row(s).
    _active :: String,
    -- | @-no-custom@ - do not allow custom input.
    _noCustom :: Bool,
    -- | @-l@ - number of lines to show.
    _lines :: Int,
    -- | @-format@
    _format :: String,
    -- | If Just, history is saved under this key
    history :: Maybe String,
    -- | Add items in PATH to complete input
    pathCompl :: Bool
  }
  deriving (Show, Read, Generic, Data, Default)

type MonadRofi env m = (MonadUnliftIO m, MonadReader env m, MonadLogger m)

rofiRun :: (MonadRofi env m) => RofiPromptConfig -> [String] -> m (Maybe String)
rofiRun pcfg input = do
  input' <- rofiHistoryInput pcfg input
  p <-
    startProcess $
      setStdout byteStringOutput $
        setStdin (byteStringInput $ LB.fromStrict $ C8.pack $ L.intercalate "\n" input') $
          setStderr byteStringOutput $
          rofiToProc pcfg
  out <- atomically (getStdout p)
  res <- try @_ @SomeException $ stopProcess p
  logInfo $ "rofi: process stop" :# [ "result" .= show res ]
  case out of
    "" -> return Nothing
    _ -> do
      let out' = L.init $ C8.unpack $ LB.toStrict out
      rofiHistorySave pcfg out'
      return $ Just out'

rofiHistoryInput :: MonadRofi env m => RofiPromptConfig -> [String] -> m [String]
rofiHistoryInput s input
  | Just historyId <- s.history = do
      dir <- io $ getXdgDirectory XdgCache "hswm/rofi"
      let histFile = dir ++ "/" ++ historyId ++ ".history"
      hinput <- io (doesFileExist histFile) >>= \case
        False -> return []
        True -> lines <$> io (readFile histFile)
      return $ reverse hinput ++ input
  | otherwise = pure input

rofiHistorySave :: MonadRofi env m => RofiPromptConfig -> String -> m ()
rofiHistorySave s ln
  | Just historyId <- s.history = do
      dir <- io $ getXdgDirectory XdgCache "hswm/rofi"
      let histFile = dir ++ "/" ++ historyId ++ ".history"
      io $ createDirectoryIfMissing True dir
      io $ appendFile histFile $ ln ++ "\n"
  | otherwise = pure ()

rofiToProc :: RofiPromptConfig -> ProcessConfig () () ()
rofiToProc pcfg =
   setCreateGroup True $
     setNewSession True $
       setCloseFds True $
        proc "rofi" (toRofiArgs pcfg)

toRofiArgs :: RofiPromptConfig -> [String]
toRofiArgs RofiPromptConfig {..} =
  join $
    [["-dmenu"] | _dmenu]
      ++ [["-dpi", show _dpi] | _dpi /= 0]
      ++ [["-l", show _lines] | _lines > 0]
      ++ [["-p", _prompt] | _prompt /= ""]
      ++ [["-mesg", _mesg] | _mesg /= ""]
      ++ [["-a", _active] | _active /= ""]
      ++ [["-format", _format] | _format /= ""]
      ++ [["-no-custom"] | _noCustom]
      ++ [["-markup-rows"] | _markupRows]

runWithSystemD :: (HasCallStack, MonadRofi env m) => String -> m ()
runWithSystemD cmd = void $ readProcess $ proc "systemd-run" ["--user", "--no-block", "--collect", "--", "bash", "-c", cmd ]

promptRofi :: MonadRofi env m => String -> [String] -> m (Maybe String)
promptRofi prompt = rofiRun def { _prompt = prompt, _dmenu = True }

(++>) :: Monad m => m (Maybe String) -> (String -> m ()) -> m ()
ma ++> f = ma >>= flip whenJust f

confirmPrompt :: RofiPromptConfig -> String -> H () -> H ()
confirmPrompt cfg text act = rofiRun cfg { _dmenu = True, _mesg = text } ["yes", "no"] ++> apply
  where apply "yes" = act
        apply _ = return ()
