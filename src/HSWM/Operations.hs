module HSWM.Operations where

import           HSWM.Types
import           River

-- | Draw borders on the the window.
wSetBorders :: RiverWindow -> H ()
wSetBorders w = do
    borders <- asks defaultBorders
    debug' $ "[w] draw borders " <> tshow borders <> " " <> tshow w
    liftIO $ river_window_v1_set_borders w borders
