module Wayland.Internal.TH.ProtocolXML
  ( module Wayland.Internal.TH.ProtocolXML
  ) where

import qualified Text.XML as X
import           Text.XML.Cursor

import           Prelude hiding (head)
import           Data.Maybe
import           Data.Text (Text)
import qualified Data.Text as T
import qualified Data.Text.Lazy as TL
import           GHC.Generics (Generic)
import           GHC.Stack

data Protocol = Protocol
  { name        :: String
  , copyright   :: String
  , description :: Description
  , interfaces  :: [Interface]
  } deriving (Show, Eq, Generic)

data Interface = Interface
  { name        :: String
  , version     :: Int
  , description :: Description
  , enums       :: [IEnum]
  , requests    :: [IRequest]
  , events      :: [IEvent]
  } deriving (Show, Eq, Generic)

data IEnum = IEnum
  { name        :: String
  , entries     :: [Entry]
  , since       :: Maybe Int -- version
  } deriving (Show, Eq, Generic)

data Entry = Entry
  { name        :: String
  , value       :: Int
  , summary     :: String
  } deriving (Show, Eq, Generic)

data IRequest = IRequest
  { name        :: String
  , description :: Description
  , requestType :: Maybe Text
  , args        :: [Arg]
  , since       :: Maybe Int -- version
  } deriving (Show, Eq, Generic)

data IEvent = IEvent
  { name        :: String
  , description :: Description
  , args        :: [Arg]
  } deriving (Show, Eq, Generic)

data Description = Description
  { summary  :: String
  , contents :: String
  } deriving (Show, Eq, Generic)

data Arg = Arg
  { name      :: String
  , summary   :: String
  , argType   :: ArgType
  , nullable  :: Maybe Bool
  } deriving (Show, Eq, Generic)

data ArgType
  = AInt
  | AUInt
  | AFixed
  | AString
  | AFd
  | AArray
  | AEnum { enumName :: String, enumObject :: Maybe String }
  | ANewId String
  | AObject String
  | AEmpty
  | ASelf
  deriving (Eq, Show, Generic)

getArgType :: Cursor -> ArgType
getArgType e =
  case attribute "type" e of
    ["int"] -> AInt
    ["uint"] -> case attribute "enum" e of
                  [] -> AUInt
                  [x]
                    | [obj, enum] <- T.split (== '.') x -> AEnum (T.unpack enum) (Just $ T.unpack obj)
                    | otherwise -> AEnum (T.unpack x) Nothing
                  x -> error $ "unknown argument type: uint: " ++ show x
    ["fixed"] -> AFixed
    ["string"] -> AString
    ["fd"] -> AFd
    ["array"] -> AArray
    ["new_id"] -> ANewId (T.unpack . head $ attribute "interface" e)
    ["object"] -> AObject (T.unpack . head $ attribute "interface" e)
    x -> error $ "unknown argument type: " ++ show x

protocolFromFile :: FilePath -> IO Protocol
protocolFromFile file = do
  doc <- X.readFile X.def file
  return $! protocolFromXML $ fromDocument doc

protocolFromString :: String -> Protocol
protocolFromString str = protocolFromXML $ fromDocument $ X.parseText_ X.def $ TL.pack str

protocolFromXML :: Cursor -> Protocol
protocolFromXML root = Protocol (getName root)
    (getContents $ root $/ element "copyright")
    (getDescription root)
    (map getInterface $ root $/ element "interface")
  where
    getInterface e = Interface (getName e)
      (read . T.unpack . head $ attribute "version" e)
      (getDescription e)
      (map getEnum $ e $/ element "enum")
      (map getRequest $ e $/ element "request")
      (map getEvent $ e $/ element "event")

    getEnum e = IEnum (getName e) (map getEntry $ e $/ element "entry")
      (getSince e)

    getEntry e = Entry (getName e)
      (read . T.unpack . head $ attribute "value" e)
      (getSummary e)

    getRequest e = IRequest (getName e) (getDescription e)
      (getRequestType e)
      (getArgs e)
      (getSince e)

    getSince e = listToMaybe $ read . T.unpack <$> attribute "since" e

    getRequestType e = case attribute "type" e of
                          [] -> Nothing
                          ["destructor"] -> Just "destructor"
                          x -> error $ "requestType: " ++ show x

    getArgs e = map getArg $ e $/ element "arg"

    getArg e = Arg (getName e) (getSummary e) (getArgType e) (getNullable e)

    getEvent e = IEvent (getName e) (getDescription e) (getArgs e)

    getDescription e = Description <$> unlines . map getSummary <*> getContents $ e $/ element "description"

    getNullable e = listToMaybe $ (== "true") <$> attribute "allow-null" e
    getName = T.unpack . head . attribute "name"
    getSummary = unlines . map T.unpack . attribute "summary"
    getContents = T.unpack . T.unlines . concatMap ($.// content)

head :: HasCallStack => [a] -> a
head (x:_) = x
head _ = error $ "head: empty list: " ++ prettyCallStack callStack
