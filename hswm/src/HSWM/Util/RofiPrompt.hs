-- |
-- Module      : HSWM.Util.RofiPrompt
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Util.RofiPrompt where

import qualified Data.ByteString.Lazy as LB
import qualified Data.ByteString.Char8 as C8
import System.Process.Typed
import qualified Data.List as L

data RofiPromptConfig
  = RofiPromptConfig
    { _dmenu :: Bool
    -- ^ @-dmenu@ - use rofi-dmenu mode.
    , _prompt :: String
    -- ^ @-p Prompt:@
    , _mesg :: String
    -- ^ @ -mesg @. Supports Pango markup.
    , _markupRows :: Bool -- ^ @ -markup-rows @
    , _dpi :: Int -- ^ @ -dpi @
    , _active :: String
    -- ^ @ -a @ - active row(s).
    , _noCustom :: Bool
    -- ^ @-no-custom@ - do not allow custom input.
    , _lines :: Int
    -- ^ @-l@ - number of lines to show.
    , _format :: String
    -- ^ @-format@
    }
    deriving (Show, Read, Generic, Data, Default)

type MonadRofi env m = (MonadUnliftIO m, MonadReader env m, HasLogFunc env)

rofiRun :: MonadRofi env m => RofiPromptConfig -> [String] -> m (Maybe String)
rofiRun pcfg input = do
  p <- startProcess
    $ setStdout byteStringOutput
    $ setStdin (byteStringInput $ LB.fromStrict $ C8.pack $ L.intercalate "\n" input)
    $ rofiToProc pcfg
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
toRofiArgs RofiPromptConfig{..} = join $
  [ ["-dmenu"]       | _dmenu ] ++
  [ ["-dpi", show _dpi] | _dpi /= 0 ] ++
  [ ["-l", show _lines] | _lines > 0 ] ++
  [ [ "-p", _prompt] | _prompt /= "" ] ++
  [ [ "-mesg", _mesg ] | _mesg /= "" ] ++
  [ [ "-a", _active ] | _active /= "" ] ++
  [ [ "-format", _format ] | _format /= "" ] ++
  [ [ "-no-custom" ] | _noCustom ] ++
  [ ["-markup-rows"] | _markupRows ]
