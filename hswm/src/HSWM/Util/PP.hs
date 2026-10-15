module HSWM.Util.PP
  ( module X
  , ppRenderForLog
  ) where

import Prettyprinter.Combinators
import Prettyprinter.Generics as X (PPGeneric(..), PPGenericOverride(..), Pretty(..))
import Prettyprinter.Show as X (ppShow)

-- TODO: shouldn't do this here

--deriving via (PP.PPGeneric ScreenId) instance PP.Pretty ScreenId
--deriving via (PP.PPGeneric Position) instance PP.Pretty Position

ppRenderForLog :: Doc ann -> Text
ppRenderForLog = renderWith defaultLayoutOptions { layoutPageWidth = Unbounded }
