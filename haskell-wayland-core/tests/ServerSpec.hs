module ServerSpec where

import WL.Core.Server
import WL.Core.Server.Generated
import WL.Core.Server.Generated.Global
import WL.Internals.Types

import Foreign
import Foreign.C
import Foreign.Storable
import Test.Hspec

spec :: Spec
spec = do
  describe "server basics" $ do
    it "create display" $ do
      d <- displayCreate
      print d

    it "create global" $ do
      d <- displayCreate

      statePtr <- malloc @Int

      outputHandleBind <- fmap Wl_global_bind_func_t $
        toFunPtr $
          Wl_global_bind_func_t_Aux $ \client data' version id' -> do
            return ()

      iface <- Interface <$> (malloc >>= \p -> poke p wl_output_interface >> return p)
      g <- globalCreate d iface 1 {- version -} (castPtr statePtr) outputHandleBind
      print g
