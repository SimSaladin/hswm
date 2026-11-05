{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE NoFieldSelectors #-}

-- |
-- Module      : HSWM.Util.RofiPrompt
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Util.RofiPrompt (
  module HSWM.Util.RofiPrompt,
  module HSWM.Util.Rofi.Run,
) where

import Data.ByteString.Lazy qualified as LB
import Data.List qualified as L
import Data.Text.Lazy qualified as TL
import Data.Text.Lazy.Encoding qualified as TLE
import HSWM.Util.PangoMarkup (FromText (..))
import HSWM.Util.PangoMarkup qualified as P
import HSWM.Util.Rofi.Run

import Data.Typeable
import GHC.TypeLits

-- * Dmenu prompts

-- | For dmenu usage
dmenuPrompt :: (Default a) => RofiPromptConfig a 's'
dmenuPrompt = def & dmenuMode .~ True

-- | Select one of the options.
selectPrompt ::
  forall s i m.
  (Typeable s, RofiRunnable m i 'i' [Int], i ~ [P.Markup]) =>
  RofiPromptConfig i 'i'
  -> [(s, P.Markup)]
  -> m (Maybe s)
selectPrompt pc vals = map snd vals --?>> pconf :-->> select
  where
    pconf :: RofiPromptConfig [P.Markup] 'i'
    pconf =
      pc
        & noCustomInput .~ True
        & promptMessage . filtered (== "") .~ "Select " ++ show (typeRep vals)
    select (x : _) = pure $ map fst vals L.!? x
    select [] = pure Nothing

-- * Mode prompts

modePromptWith :: RofiPromptConfig i o -> Mode -> RofiPromptConfig () '_'
modePromptWith pc mo =
  pc
    & withHistory' Nothing
    & showMode ?~ mo
    & modes <>~ [mo]
    & dmenuMode .~ False

modePrompt :: Mode -> RofiPromptConfig () '_'
modePrompt mo = def & showMode ?~ mo & modes <>~ [mo]

-- * Prompt history

withHistory' :: Maybe (PromptHistory i) -> RofiPromptConfig i' o -> RofiPromptConfig i o'
withHistory' hist pc = pc{history = hist}

withHistory ::
  forall i o.
  String
  -- ^ History key
  -> HistoryRestore i
  -> (i -> i -> i)
  -- ^ merge history to other input
  -> (LazyText -> Maybe LazyText) -- save to history
  -> RofiPromptConfig i o
  -> RofiPromptConfig i o
withHistory key fun hmerge save pc =
  pc
    { history =
        Just
          HistoryUsing
            { historyKey = key
            , historyRestore = fun
            , historyMerge = hmerge
            , historyEncode = save
            }
    }

-- | History with the input/output rows directly
withLineHistory :: (i ~ [a], FromText a, Eq a) => String -> RofiPromptConfig i o -> RofiPromptConfig i o
withLineHistory key =
  withHistory
    key
    (map fromTextLazy)
    (\inp his -> inp <> (L.nub his L.\\ inp))
    Just

-- * Columns input

--  |
--  @
--  ColumnsInput [["row1", "row1b"], ["row2", "row3"]]
--     :: ColumnsInput '\x1' 2 [[Markup]]
--  @
data ColumnsInput input = ColumnsInput
  { columnsInput :: input
  , columnsSep :: Char
  , columnsHeader :: Bool
  }
  deriving (Eq)

instance (MonadRofi m, HasColumns a, InterpretOutput 'i' Int) => RofiRunnable m (ColumnsInput [(a, InputRowAttrs)]) 'i' Int where
  rofiRunnableInput ci _ =
    LB.intercalate "\n" $
      map (uncurry $ inputRowWithAttrs (LB.intercalate (fromString [ci.columnsSep]) . getColumns)) ci.columnsInput

  rofiRunnablePromptGet ci =
    (displayColumns .~ [1 .. fromIntegral $ natVal (Proxy @(ColumnsCount a))])
      . (columnSeparator .~ [ci.columnsSep])
      . (if ci.columnsHeader then selectedRow %~ max 1 else id)

withColumns :: (Foldable t) => t a -> ColumnsInput [(a, InputRowAttrs)]
withColumns input =
  ColumnsInput
    { columnsInput = map (,def) (toList input)
    , columnsSep = '\x1'
    , columnsHeader = True
    }

columnsWithHeader :: (Foldable t) => a -> t a -> ColumnsInput [(a, InputRowAttrs)]
columnsWithHeader hdr input =
  ColumnsInput
    { columnsInput = (hdr, def{nonselectable = True, permanent = True}) : map (,def) (toList input)
    , columnsSep = '\x1'
    , columnsHeader = True
    }

-- * HasColumns

class (KnownNat (ColumnsCount a)) => HasColumns a where
  type ColumnsCount a :: Nat

  getColumns :: a -> [LazyByteString]
  default getColumns :: forall a0. (P.ToMarkup a0, Each a a a0 a0) => a -> [LazyByteString]
  getColumns xs =
    let lst = xs & toListOf each :: [a0]
     in map (TLE.encodeUtf8 . TL.fromStrict . P.render . P.toMarkup) lst

instance (P.ToMarkup a) => HasColumns (a, a) where type ColumnsCount (a, a) = 2
instance (P.ToMarkup a) => HasColumns (a, a, a) where type ColumnsCount (a, a, a) = 3
instance (P.ToMarkup a) => HasColumns (a, a, a, a) where type ColumnsCount (a, a, a, a) = 4
instance (P.ToMarkup a) => HasColumns (a, a, a, a, a) where type ColumnsCount (a, a, a, a, a) = 5
