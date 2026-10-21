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

            -- Ptr Wl_client → Ptr Void → Word32 → Word32 → IO ()
            let handler = Wl_global_bind_func_t_Aux $ \client data' version id' -> do
                    return ()
            outputHandleBind <- Wl_global_bind_func_t <$> toFunPtr handler

            iface <- Interface <$> (malloc >>= \p -> poke p wl_output_interface >> return p)
            g <-
                globalCreate
                    d
                    iface
                    1 -- version
                    (castPtr statePtr)
                    outputHandleBind
            print g
