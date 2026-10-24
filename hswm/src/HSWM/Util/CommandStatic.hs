-- |
-- Module      : HSWM.Util.CommandStatic
-- Description : Command interface using static pointers
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Util.CommandStatic
    ( mkCommand
    , mkCommand_
    , registerCommand
    , runCommand
    , runCommandJSON
    , SomeCommand(..)
    , Command
    , Dict(..)
    , CommandStore(..)
    ) where

import HSWM.IPC (MethodParams(..))
import HSWM.Core as HSWM
import GHC.StaticPtr
import Data.Aeson qualified as A
import Data.Aeson.Types qualified as A
import Data.Map qualified as M
import Data.Typeable

data Command arg res = Command
  { actionPtr :: !(StaticPtr (arg -> H res))
  , actionArg :: !(Maybe (Argument arg))
  , cmdInstances :: !(StaticPtr (Dict (CommandCtx arg res)))
  }
  deriving (Generic)

type CommandCtx arg res =
  ( Typeable arg
  , FromJSON arg
  , Show arg
  , Typeable res
  , ToJSON res
  , Show res
  )

newtype Argument arg = Argument {getArg :: arg}
  deriving (Eq, Ord, Show, Generic)

data Dict c where
  Dict :: (c) => Dict c

instance Show (Command arg res) where
  show (Command ptr _ dict) =
    case deRefStaticPtr dict of
      (Dict :: Dict (CommandCtx arg res)) ->
        let fnTy = typeRep (undefined :: proxy (arg -> H res))
         in "Command"
              ++ "{ type = "
              ++ show fnTy
              ++ ", ptr = "
              ++ showStaticPtr ptr
              ++ "}"
    where
      showStaticPtr p =
        let StaticPtrInfo{..} = staticPtrInfo p
         in show (staticKey ptr) ++ " @(" ++ spInfoUnitId ++ ":" ++ spInfoModuleName ++ ":" ++ (\(x, y) -> show x ++ ":" ++ show y) spInfoSrcLoc ++ ")"

data SomeCommand where
  SomeCommand :: forall arg res. {someCommand :: Command arg res} -> SomeCommand

instance Show SomeCommand where
  show (SomeCommand cmd) = show cmd

mkCommand :: StaticPtr (Dict (CommandCtx arg res)) -> StaticPtr (arg -> H res) -> Maybe () -> Command arg res
mkCommand dict action _arg =
  Command
    { actionPtr = action
    , actionArg = Nothing -- Argument arg
    , cmdInstances = dict
    }

mkCommand_ :: StaticPtr (Dict (CommandCtx arg res)) -> StaticPtr (arg -> H res) -> Command arg res
mkCommand_ d p = mkCommand d p Nothing

runCommand :: Command arg res -> arg -> H res
runCommand (Command ptr _ _) = deRefStaticPtr ptr

runCommandJSON :: Command arg res -> MethodParams -> H (Either String A.Value)
runCommandJSON cmd@(Command _ _ dict) (MethodParams val) =
  case deRefStaticPtr dict of
    (Dict :: Dict (CommandCtx arg res)) ->
      case A.parseEither A.parseJSON val :: Either String arg of
        Left err -> return (Left err)
        Right arg1 -> Right . A.toJSON <$> runCommand cmd arg1

newtype CommandStore = CommandStore {commands :: M.Map String SomeCommand}
  deriving stock (Show, Generic)
  deriving anyclass (Default)

registerCommand :: String -> Command arg res -> H ()
registerCommand name cmd =
  modifyObjectDef @CommandStore $ \st -> st{commands = M.insert name (SomeCommand cmd) st.commands}
