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
  { protocolName        :: String
  , protocolCopyright   :: Text
  , protocolDescription :: (String, String)
  , protocolInterfaces  :: [Interface]
  } deriving (Show, Eq, Generic)

data Interface = Interface
  { interfaceName        :: String
  , interfaceVersion     :: Int
  , interfaceDescription :: (String, String)
  , interfaceEnums       :: [IEnum]
  , interfaceRequests    :: [IRequest]
  , interfaceEvents      :: [IEvent]
  } deriving (Show, Eq, Generic)

data IEnum = IEnum
  { enumName    :: String
  , enumEntries :: [EnumEntry]
  } deriving (Show, Eq, Generic)

data EnumEntry = EnumEntry
  { entryName    :: String
  , entryValue   :: String
  , entrySummary :: String
  } deriving (Show, Eq, Generic)

data IRequest = IRequest
  { requestName        :: String
  , requestDescription :: (String, String)
  , requestType        :: Maybe Text
  , requestArgs        :: [Arg]
  } deriving (Show, Eq, Generic)

data IEvent = IEvent
  { eventName        :: String
  , eventDescription :: (String, String)
  , eventArgs        :: [Arg]
  } deriving (Show, Eq, Generic)

data Arg = Arg
  { argName      :: String
  , argType      :: String
  , argEnum      :: Maybe String
  , argInterface :: Maybe String
  , argSummary   :: String
  } deriving (Show, Eq, Generic)

protocolFromFile :: FilePath -> IO Protocol
protocolFromFile file = do
  doc <- X.readFile X.def file
  return $! protocolFromXML $ fromDocument doc

protocolFromString :: String -> Protocol
protocolFromString str = protocolFromXML $ fromDocument $ X.parseText_ X.def $ TL.pack str

protocolFromXML :: Cursor -> Protocol
protocolFromXML root = Protocol (name root) (contents $ root $/ element "copyright") (getDescription root) (map getInterface $ root $/ element "interface")
  where
    getInterface e = Interface (name e)
      (read . T.unpack . head $ attribute "version" e)
      (getDescription e)
      (map getEnum $ e $/ element "enum")
      (map getRequest $ e $/ element "request")
      (map getEvent $ e $/ element "event")
    getEnum e = IEnum (name e)
      (map getEntry $ e $/ element "entry")
    getEntry e = EnumEntry (name e)
      (T.unpack . head $ attribute "value" e)
      (unlines . map T.unpack $ attribute "summary" e)
    getRequest e = IRequest (name e) (getDescription e)
      (listToMaybe $ attribute "type" e)
      (map getArg $ e $/ element "arg")
    getArg e = Arg (name e)
      (T.unpack . head $ attribute "type" e)
      (fmap T.unpack . listToMaybe $ attribute "enum" e)
      (fmap T.unpack . listToMaybe $ attribute "interface" e)
      (T.unpack $ summary e)
    getEvent e = IEvent (name e)
      (getDescription e)
      (map getArg $ e $/ element "arg")

    -- XXX: summary attribute ignored
    getDescription e = (unlines . map (T.unpack . summary) $ e $/ element "description", T.unpack . contents $ e $/ element "description")

    name     = T.unpack . head . attribute "name"
    contents = T.unlines . concatMap ($.// content)
    summary  = fromMaybe "" . listToMaybe . attribute "summary"

head :: HasCallStack => [a] -> a
head (x:_) = x
head _ = error $ "head: empty list: " ++ prettyCallStack callStack
