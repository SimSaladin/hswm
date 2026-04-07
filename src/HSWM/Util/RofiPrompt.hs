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
import qualified Data.ByteString as BS
import qualified Data.ByteString.Char8 as C8
import System.Process.Typed
import System.IO (hPutStr)
import qualified Data.List as L

data RofiPromptConfig
  = RofiPromptConfig
    { _dmenu :: Bool -- ^ @-dmenu@
    , _prompt :: String -- ^ @-p Prompt:@
    , _msg :: String -- ^ @ -mesg MSG @
    , _markupRows :: Bool -- ^ @ -markup-rows @
    }
    deriving (Show, Read, Generic, Data, Default)

type MonadRofi m = (MonadIO m, MonadUnliftIO m)

rofiRun :: MonadRofi m => RofiPromptConfig -> [String] -> m (Maybe String)
rofiRun pcfg input = do
  withProcessWait_ (rofiToProc pcfg) $ \p -> do
    io $ hPutStr (getStdin p) $ L.intercalate "\n" input
    io $ hClose (getStdin p)
    out <- atomically (getStdout p)
    return $ if out == "" then Nothing else Just $ C8.unpack $ LB.toStrict out

-- rofiToProc :: RofiPromptConfig -> ProcessConfig _ _ _
rofiToProc pcfg =
  setCloseFds True $
  setStdin createPipe $
  setStdout byteStringOutput $
  proc "rofi" (toRofiArgs pcfg)

toRofiArgs :: RofiPromptConfig -> [String]
toRofiArgs RofiPromptConfig{..} = join $
  [ ["-dmenu"]       | _dmenu ] ++
  [ [ "-p", _prompt] | _prompt /= "" ] ++
  [ [ "-msg", _msg ] | _msg /= "" ] ++
  [ ["-markup-rows"] | _markupRows ]
