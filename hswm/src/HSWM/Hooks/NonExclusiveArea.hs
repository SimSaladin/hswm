-- |
-- Module      : HSWM.Hooks.NonExclusiveArea
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Hooks.NonExclusiveArea where

import HSWM
import HSWM.Layout.LayoutModifier
import qualified Data.List as L

nonExclusiveArea :: LayoutClass l a => l a -> ModifiedLayout NonExclusiveArea l a
nonExclusiveArea = ModifiedLayout $ NonExclusiveArea True

newtype NonExclusiveArea a = NonExclusiveArea { enabled :: Bool }
  deriving ( Read, Show )

data ToggleNonExclusiveArea = ToggleNonExclusiveArea
  deriving (Show, Read)

instance Message ToggleNonExclusiveArea

instance LayoutModifier NonExclusiveArea a where
  modifyLayout (NonExclusiveArea ss) w r
    | not ss = runLayout w r
    | otherwise = do
      outputs <- gets _outputs
      case L.find (\x -> x.x == r.x && x.y == r.y) outputs of
        Just out | Just (x,y,width,h) <- out.nonExclusive -> do
          let srect = Rectangle (fi x) (fi y) (fi width) (fi h)
          runLayout w srect
        _ -> runLayout w r

  pureMess (NonExclusiveArea ss) m
        | Just ToggleNonExclusiveArea <- fromMessage m = Just $ NonExclusiveArea (not ss)
        -- | Just (SetStruts n k) <- fromMessage m
        --, let newSS = S.fromList n `S.union` (ss S.\\ S.fromList k)
        --, newSS /= ss = Just $ AvoidStruts newSS
        -- | Just UpdateDocks <- fromMessage m = Just as
        | otherwise = Nothing
