-- |
-- Module      : HSWM.Util.RofiPrompt
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Util.RofiPrompt where

import Data.ByteString.Char8 qualified as C8
import Data.ByteString.Lazy qualified as LB
import Data.List qualified as L
import System.Process.Typed

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
    _format :: String
  }
  deriving (Show, Read, Generic, Data, Default)

type MonadRofi env m = (MonadUnliftIO m, MonadReader env m, HasLogFunc env)

rofiRun :: (MonadRofi env m) => RofiPromptConfig -> [String] -> m (Maybe String)
rofiRun pcfg input = do
  p <-
    startProcess $
      setStdout byteStringOutput $
        setStdin (byteStringInput $ LB.fromStrict $ C8.pack $ L.intercalate "\n" input) $
          rofiToProc pcfg
  out <- atomically (getStdout p)
  _ <- try @_ @SomeException $ stopProcess p
  return $ if out == "" then Nothing else Just $ L.init $ C8.unpack $ LB.toStrict out

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
