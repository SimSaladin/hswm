{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE QuasiQuotes #-}

module Wayland.Client.Internal.TH where

import Language.Haskell.TH
import Language.Haskell.TH.Quote
import Foreign
import Foreign.C.ConstPtr

-- -- | The generator hides the ConstPtr values... But we can re-create them here.
-- toConstPtr :: Wl_interface -> IO (ConstPtr Wl_interface)
-- toConstPtr x = alloca $ \p -> do poke p x
--                                  pure (ConstPtr p)

getConstPtrs :: [(String, Q Exp)] -> Q [Dec]
getConstPtrs defs = concat <$> mapM mk defs
  where
    -- mk :: (String, a) -> Q [Dec]
    mk (name, def) = do
      let n = mkName name

      let tv = mkName "Wl_interface"

      sig <- sigD n $ appT [t| ConstPtr |] (conT tv) -- (reifyType v) ---  Wl_interface |]

      pragma <- pragInlD n NoInline FunLike AllPhases

      let body = appE [| unsafePerformIO . toConstPtr |] def

      val <- valD (varP n) (normalB body) []

      return [sig, pragma, val]
