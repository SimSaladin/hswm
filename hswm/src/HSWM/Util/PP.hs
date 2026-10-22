module HSWM.Util.PP (
  module X,
  module HSWM.Util.PP,
) where

import Prettyprinter.Combinators
import Prettyprinter.Generics as X (PPGeneric (..), PPGenericOverride (..), Pretty (..))
import Prettyprinter.Show as X (ppShow)

import Text.Pretty.Simple qualified as P

ppRenderForLog :: Doc ann -> Text
ppRenderForLog = renderWith defaultLayoutOptions{layoutPageWidth = Unbounded}

logTraceShow :: (MonadIO m, MonadReader env m, MonadLogger m, Show show) => show -> m ()
logTraceShow x =
  logDebug $
    P.pShowOpt
      P.defaultOutputOptionsNoColor
        { P.outputOptionsPageWidth = 380
        , P.outputOptionsCompact = True
        , P.outputOptionsCompactParens = True
        , P.outputOptionsInitialIndent = 0
        , -- P.outputOptionsColorOptions = Just P.defaultColorOptionsDarkBg
          P.outputOptionsColorOptions = Nothing
        }
      x
      ^. strict
      :# []

pTrace :: (MonadIO m, Show a) => a -> m ()
pTrace =
  P.pHPrintOpt
    P.CheckColorTty
    P.defaultOutputOptionsNoColor
      { P.outputOptionsPageWidth = 380
      , P.outputOptionsCompact = True
      , P.outputOptionsCompactParens = True
      , -- P.outputOptionsInitialIndent = 4,
        -- P.outputOptionsColorOptions = Just P.defaultColorOptionsDarkBg
        P.outputOptionsColorOptions = Nothing
      }
    stderr
