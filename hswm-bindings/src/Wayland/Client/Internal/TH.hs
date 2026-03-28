{-# LANGUAGE QuasiQuotes           #-}
{-# LANGUAGE TemplateHaskellQuotes #-}

module Wayland.Client.Internal.TH where

import           Foreign
import           Foreign.C.ConstPtr
import           Language.Haskell.TH
import           System.IO.Unsafe (unsafePerformIO)

-- | The generator hides the ConstPtr values... But we can re-create them here.
toConstPtr :: Storable a => a -> IO (ConstPtr a)
toConstPtr x = malloc >>= \ptr -> poke ptr x >> pure (ConstPtr ptr)

getConstPtrs :: [(String, Name)] -> Q [Dec]
getConstPtrs defs = concat <$> mapM mk defs
  where
    mk (name, val) = do
      let n = mkName name -- const pointer
          n2 = mkName (name <> "'") -- refers to the interface struct directly
          curType = reifyType val
      sequence
        -- New "foobar :: ConstPtr Wl_interface" with "{-# NOINLINE foobar #-}"
        [ sigD n $ appT [t| ConstPtr |] curType
        , pragInlD n NoInline FunLike AllPhases
        , valD (varP n) (normalB $ appE [| unsafePerformIO . toConstPtr |] (varE val)) []
        -- Old value renamed
        , sigD n2 curType
        , valD (varP n2) (normalB $ varE val) []
        ]
