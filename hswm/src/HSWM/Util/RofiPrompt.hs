-- |
-- Module      : HSWM.Util.RofiPrompt
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Util.RofiPrompt where

import HSWM
import Data.ByteString.Char8 qualified as C8
import Data.ByteString.Lazy qualified as LB
import Data.List qualified as L
--import System.Process.Typed as PT
import System.IO (readFile, appendFile)
import qualified Data.Text as T
import qualified Data.Text.Encoding as TE
import qualified HSWM.Util.PangoMarkup as P

type MonadRofi env m = (MonadUnliftIO m, MonadReader env m, MonadLogger m)

data RofiPromptConfig
  = RofiPromptConfig
    {
    -- | @-modes@
    _modes :: String,
    -- | @-show@
    _show :: String,
    -- | @-show-icons@
    showIcons :: Bool,
    -- | @-modi@ e.g. @"clipboard:cliphist-rofi-img"@
    _modi :: String,
    -- | @ -dpi @
    _dpi :: Int,
    -- | If Just, history is saved under this key
    history :: Maybe String,
    -- | Add items in PATH to complete input
    pathCompl :: Bool,

    -- | @-dmenu@ - use rofi-dmenu mode.
    _dmenu :: Bool,
    -- | (dmenu) @-p Prompt:@
    _prompt :: String,
    -- | (dmenu) @ -mesg @. Supports Pango markup.
    _mesg :: String,
    -- | (dmenu) @-markup-rows@
    _markupRows :: Bool,
    -- | (dmenu) @ -a @ - active row(s).
    _active :: String,
    -- | (dmenu) @-no-custom@ - do not allow custom input.
    _noCustom :: Bool,
    -- | (dmenu) @-l@ - number of lines to show.
    _lines :: Int,
    -- | (dmenu) @-format@
    _format :: RofiFormat
  }
  deriving (Show, Read, Generic, Data, Default)

setMessage :: IsRofiInput a => a -> RofiPromptConfig -> RofiPromptConfig
setMessage a pc = pc { _mesg = toRofiInputString a }

data RofiFormat
  = SelectedString -- ^ s
  | SelectedIndex -- ^ i
  | QuoteString -- ^ q
  | SelectedStringStripped -- ^ p
  | FilterString -- ^ f
  | FilterStringQuoted -- ^ F
  deriving (Eq, Show, Read, Generic, Data)

instance Default RofiFormat where
  def = SelectedString

getFormat :: RofiFormat -> String
getFormat SelectedString = "s"
getFormat SelectedIndex = "i"
getFormat QuoteString = "q"
getFormat SelectedStringStripped = "p"
getFormat FilterString = "f"
getFormat FilterStringQuoted = "F"

-- | Launch the prompt without reading output.
rofiLaunch :: (MonadRofi env m) => RofiPromptConfig -> m ()
rofiLaunch rp =
  void $ async $ do
    res <- try @_ @SomeException $ readProcess $
      setStdin nullStream $
      setStdout nullStream $
      rofiToProc rp
    logInfo $ "rofi: launch finished" :# [ "result" .= show res ]

class IsRofiInput a where
  toRofiInput :: a -> LB.ByteString
  toRofiInputString :: a -> String

instance IsRofiInput String where
  toRofiInput = LB.fromStrict . C8.pack
  toRofiInputString = id

instance IsRofiInput T.Text where
  toRofiInput = LB.fromStrict . TE.encodeUtf8
  toRofiInputString = T.unpack

instance IsRofiInput (P.Markup T.Text) where
  toRofiInput = LB.fromStrict . TE.encodeUtf8 . P.render
  toRofiInputString = T.unpack . P.render

-- | Launch a prompt and read the output.
rofiRun :: (MonadRofi env m, IsRofiInput input) => RofiPromptConfig -> [input] -> m (Maybe String)
rofiRun pcfg input = do
  input' <- rofiHistoryInput pcfg input
  p <- startProcess $
    setStdin (byteStringInput $ LB.intercalate "\n" input') $
    setStdout byteStringOutput $
    setStderr byteStringOutput $
    rofiToProc pcfg
  out <- atomically (getStdout p)
  err <- atomically (getStderr p)
  when (err /= "") $
    logWarn $ "rofi output to stderr" :# [ "output" .= C8.unpack (LB.toStrict err) ]
  res <- try @_ @SomeException $ stopProcess p
  logInfo $ "rofi: process stop" :# [ "result" .= show res ]
  case out of
    "" -> return Nothing
    _ -> do
      let out' = L.init $ C8.unpack $ LB.toStrict out
      rofiHistorySave pcfg out'
      return $ Just out'

rofiHistoryInput :: (MonadRofi env m, IsRofiInput input) => RofiPromptConfig -> [input] -> m [LB.ByteString]
rofiHistoryInput s input
  | Just historyId <- s.history = do
      dir <- io $ getXdgDirectory XdgCache "hswm/rofi"
      let histFile = dir ++ "/" ++ historyId ++ ".history"
      hinput <- io (doesFileExist histFile) >>= \case
        False -> return []
        True -> map toRofiInput . lines <$> io (readFile histFile)
      return $ reverse (L.nub hinput) ++ map toRofiInput input
  | otherwise = pure $ map toRofiInput input

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
   --setCreateGroup True $
   setNewSession True $
   setCloseFds True $
   proc "rofi" (toRofiArgs pcfg)

toRofiArgs :: RofiPromptConfig -> [String]
toRofiArgs RofiPromptConfig {..} =
  join $
    [["-modes", _modes] | _modes /= ""]
      ++ [["-modi", _modi] | _modi /= ""]
      ++ [["-show", _show] | _show /= ""]
      ++ [["-show-icons"] | showIcons]
      ++ [["-dmenu"] | _dmenu]
      ++ [["-dpi", show _dpi] | _dpi /= 0]
      ++ [["-l", show _lines] | _lines > 0]
      ++ [["-p", _prompt] | _prompt /= ""]
      ++ [["-mesg", _mesg] | _mesg /= ""]
      ++ [["-a", _active] | _active /= ""]
      ++ [["-format", getFormat _format] | _format /= def]
      ++ [["-no-custom"] | _noCustom]
      ++ [["-markup-rows"] | _markupRows]


runWithSystemD :: (HasCallStack, MonadRofi env m) => String -> m ()
runWithSystemD cmd = void $ readProcess $ proc "systemd-run"
  [ "--user", "--no-block", "--collect", "--", "bash", "-c", cmd ]

promptRofi :: MonadRofi env m => String -> [String] -> m (Maybe String)
promptRofi prompt = rofiRun def { _prompt = prompt, _dmenu = True }

(++>) :: Monad m => m (Maybe String) -> (String -> m ()) -> m ()
ma ++> f = ma >>= flip whenJust f

confirmPrompt :: RofiPromptConfig -> String -> H () -> H ()
confirmPrompt cfg text act = rofiRun cfg { _dmenu = True, _mesg = text } ["yes", "no"] ++> apply
  where apply "yes" = act
        apply _ = return ()
