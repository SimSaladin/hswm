{-# LANGUAGE FlexibleContexts, FlexibleInstances, MultiParamTypeClasses #-}

-----------------------------------------------------------------------------
-- |
-- Module      :  HSWM.Layout.Maximize
-- Description :  Temporarily yank the focused window out of the layout to mostly fill the screen.
-- Copyright   :  (c) 2007 James Webb
-- License     :  BSD3-style (see LICENSE)
--
-- Maintainer  :  xmonad#jwebb,sygneca,com
-- Stability   :  unstable
-- Portability :  unportable
--
-- Temporarily yanks the focused window out of the layout to mostly fill
-- the screen.
--
-----------------------------------------------------------------------------

module HSWM.Layout.Maximize (
        -- * Usage
        -- $usage
        maximize,
        maximizeWithPadding,
        maximizeRestore,
        Maximize, MaximizeRestore,
    ) where

import HSWM hiding (Maximize)
import Data.List (partition)
import qualified HSWM.StackSet as S
import HSWM.Layout.LayoutModifier

-- $usage
-- You can use this module with the following in your @xmonad.hs@:
--
-- > import HSWM.Layout.Maximize
--
-- Then edit your @layoutHook@ by adding the Maximize layout modifier:
--
-- > myLayout = maximize (Tall 1 (3/100) (1/2)) ||| Full ||| etc..)
-- > main = xmonad def { layoutHook = myLayout }
--
-- Or, if you want to control the amount of padding placed around the
-- maximized window:
--
-- > myLayout = maximizeWithPadding 10 (Tall 1 (3/100) (1/2)) ||| Full ||| etc..)
-- > main = xmonad def { layoutHook = myLayout }
--
-- For more detailed instructions on editing the layoutHook see
-- <https://xmonad.org/TUTORIAL.html#customizing-xmonad the tutorial> and
-- "HSWM.Doc.Extending#Editing_the_layout_hook".
--
-- In the key-bindings, do something like:
--
-- >        , ((modm, xK_backslash), withFocused (sendMessage . maximizeRestore))
-- >        ...
--
-- For detailed instruction on editing the key binding see:
--
-- <https://xmonad.org/TUTORIAL.html#customizing-xmonad the tutorial>.

data Maximize a = Maximize Dimension (Maybe RiverWindow) deriving ( Read, Show )
maximize :: LayoutClass l RiverWindow => l RiverWindow -> ModifiedLayout Maximize l RiverWindow
maximize = ModifiedLayout $ Maximize 25 Nothing

-- | Like 'maximize', but allows you to specify the amount of padding
-- placed around the maximized window.
maximizeWithPadding :: LayoutClass l RiverWindow => Dimension -> l RiverWindow -> ModifiedLayout Maximize l RiverWindow
maximizeWithPadding padding = ModifiedLayout $ Maximize padding Nothing

newtype MaximizeRestore = MaximizeRestore RiverWindow deriving ( Eq )
instance Message MaximizeRestore
maximizeRestore :: RiverWindow -> MaximizeRestore
maximizeRestore = MaximizeRestore

instance LayoutModifier Maximize RiverWindow where
    modifierDescription (Maximize _ _) = "Maximize"
    pureModifier (Maximize padding (Just target)) rect (Just (S.Stack focused _ _)) wrs =
            if focused == target
                then (maxed ++ rest, Nothing)
                else (rest ++ maxed, lay)
        where
            (toMax, rest) = partition (\(w, _) -> w == target) wrs
            maxed = map (\(w, _) -> (w, maxRect)) toMax
            maxRect = Rectangle (rect.x + fromIntegral padding)
                                (rect.y + fromIntegral padding)
                                (rect.width  - padding * 2)
                                (rect.height - padding * 2)
            lay | null maxed = Just (Maximize padding Nothing)
                | otherwise  = Nothing
    pureModifier _ _ _ wrs = (wrs, Nothing)

    pureMess (Maximize padding mw) m = case fromMessage m of
        Just (MaximizeRestore w) -> case mw of
            Just w' -> if w == w'
                        then Just $ Maximize padding Nothing   -- restore window
                        else Just $ Maximize padding $ Just w  -- maximize different window
            Nothing -> Just $ Maximize padding $ Just w        -- maximize window
        _ -> Nothing

-- vim: sw=4:et
