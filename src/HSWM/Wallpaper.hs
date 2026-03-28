------------------------------------------------------------------------------
-- |
-- Module      : HSWM.Wallpaper
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
--
------------------------------------------------------------------------------
module HSWM.Wallpaper where

import HSWM.Core
import System.Directory

data Config = Config
  { filepath :: FilePath
  } deriving (Show, Read)

startupHook :: H ()
startupHook = do
  let conf = Config { filepath = "~/Pictures/fun-and-memes/torille.jpg" }
  tryLoadImage (filepath conf) >>= whenJust drawImage

tryLoadImage :: FilePath -> H (Maybe img)
tryLoadImage fp = doesFileExist fp >>= \case
  False -> return Nothing
  True -> do
    return _img

drawImage :: img -> H ()
drawImage img = do
    (fd, ptr) <- createShm size
    pool <- wl_shm_create_pool shm fd size
    buffer <- wl_shm_pool_create_buffer pool 0 width height stride format
    copyPixels ptr img
    wl_surface_attach surface buffer 0 0
    wl_surface_damage_buffer surface 0 0 width height
    wl_surface_commit surface
