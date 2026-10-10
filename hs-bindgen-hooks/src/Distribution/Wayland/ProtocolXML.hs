module Distribution.Wayland.ProtocolXML ( module Distribution.Wayland.ProtocolXML ) where

import qualified Text.XML as X
import           Text.XML.Cursor hiding (check)

import qualified Data.Aeson as A
import           Data.Char
import qualified Data.List as L
import           Data.Maybe
import           Data.Text (Text)
import qualified Data.Text as T
import qualified Data.Text.Lazy as TL
import           Distribution.Compat.Binary (Binary)
import           Distribution.Utils.String (trim)
import           Distribution.Utils.Structured
import           GHC.Generics (Generic)
import           GHC.Stack
import           Prelude hiding (getContents, head)
import qualified Text.PrettyPrint.HughesPJClass as P
import           Text.PrettyPrint.HughesPJClass (Doc, Pretty(..))

data Protocol = Protocol
  { name        :: !String
  , copyright   :: !String
  , description :: !Description
  , interfaces  :: ![Interface]
  } deriving (Eq, Show, Read, Generic, Binary)
  deriving (Structured, A.ToJSON)

data Interface = Interface
  { name        :: !String
  , version     :: !Int
  , description :: !Description
  , enums       :: ![IEnum]
  , requests    :: ![IRequest]
  , events      :: ![IEvent]
  } deriving (Eq, Show, Read, Generic, Binary)
  deriving (Structured, A.ToJSON)

data IEnum = IEnum
  { name        :: !String
  , entries     :: ![Entry]
  , since       :: !(Maybe Int) -- version
  } deriving (Eq, Show, Read, Generic, Binary)
  deriving (Structured, A.ToJSON)

data Entry = Entry
  { name        :: !String
  , value       :: !Int
  , summary     :: !String
  } deriving (Eq, Show, Read, Generic, Binary)
  deriving (Structured, A.ToJSON)

data IRequest = IRequest
  { name        :: !String
  , description :: !Description
  , requestType :: !(Maybe Text)
  , args        :: ![Arg]
  , since       :: !(Maybe Int) -- version
  } deriving (Eq, Show, Read, Generic, Binary)
  deriving (Structured, A.ToJSON)

data IEvent = IEvent
  { name        :: !String
  , description :: !Description
  , args        :: ![Arg]
  , since       :: !(Maybe Int) -- version
  } deriving (Eq, Show, Read, Generic, Binary)
  deriving (Structured, A.ToJSON)

data Description = Description
  { summary  :: !String
  , contents :: !String
  } deriving (Eq, Show, Read, Generic, Binary)
  deriving (Structured, A.ToJSON)

data Arg = Arg
  { name      :: !String
  , summary   :: !String
  , argType   :: !ArgType
  , nullable  :: !(Maybe Bool)
  } deriving (Eq, Show, Read, Generic, Binary)
  deriving (Structured, A.ToJSON)

data ArgType
  = ANewId { argInterface :: !(Maybe String) }

  | AEnum { enumName :: !String, enumObject :: !(Maybe String) }
  -- ^ E.g. @enum="wl_some_iface.foobar_enum"@

  | AObject { argInterface :: !(Maybe String) }

  | AArray
  -- ^ Unfortunately untyped array. Correct interpretation is explained in the protocol text.
  | AInt
  | AUInt
  | AFixed
  | AString
  | AFd
  | AEmpty -- ???
  | ASelf -- ???
  deriving (Eq, Show, Read, Generic, Binary)
  deriving (Structured, A.ToJSON)

instance Pretty Protocol where
  pPrint x =
    "Protocol" P.<+> P.text x.name P.$+$
    P.hang "Copyright:" 4 (P.text x.copyright) P.$+$
    P.vcat (P.punctuate "\n" $ map pPrint x.interfaces)

instance Pretty Interface where
  pPrint x =
    P.hang ("Interface:" P.<+> P.text x.name P.<+> P.parens ("version: " <> pPrint x.version)) 2 $
        P.vcat $ P.punctuate "\n" $ map pPrint x.enums ++ map pPrint x.requests ++ map pPrint x.events

instance Pretty IEnum where
  pPrint x =
    P.hang ("Enum" P.<+> P.doubleQuotes (P.text x.name) P.<+> ppSince x.since) 2 $
        P.vcat $ map pPrint x.entries

instance Pretty IRequest where
  pPrint x =
    P.hang ("Request" P.<+> P.doubleQuotes (P.text x.name) P.<+> ppSince x.since) 2 $
      P.vcat [ pPrint x.description
             , P.hang "Arguments:" 2 (P.vcat (map pPrint x.args))
             , maybe P.empty (("Type:" P.<+>) . (P.text . T.unpack)) x.requestType
             ]

instance Pretty IEvent where
  pPrint x =
    P.hang ("Event" P.<+> P.doubleQuotes (P.text x.name) P.<+> ppSince x.since) 2 $
        pPrint x.description P.$+$
        "Arguments:" P.$+$
        P.nest 4 (P.vcat (map pPrint x.args))

instance Pretty Entry where
  pPrint x = P.hang (P.text x.name) 4 $ pPrint x.value P.<+> P.brackets (P.text x.summary)

instance Pretty Description where
  pPrint x =
    "Summary:" P.<+> (P.text x.summary) P.$+$
    "Description:" P.<+> P.nest 2 (P.text x.contents)

instance Pretty Arg where
  pPrint x = P.hsep [ P.text x.name
                    , P.parens (pPrint x.argType)
                    , P.text x.summary
                    , ppNullable x.nullable
                    ]

instance Pretty ArgType where
   pPrint (AEnum nm (Just obj))  = "enum:" <> P.text obj <> "." <> P.text nm
   pPrint (AEnum nm Nothing)     = "enum:" <> P.text nm
   pPrint (AObject (Just iface)) = "object:" <> P.text iface
   pPrint (AObject Nothing)      = "object"
   pPrint (ANewId (Just str))    = "new_id:" <> P.text str
   pPrint (ANewId Nothing)       = "new_id"
   pPrint other                  = P.text $ map toLower $ drop 1 $ show other

ppNullable :: Maybe Bool -> Doc
ppNullable (Just x) = P.brackets $ "Nullable: " <> pPrint x
ppNullable Nothing = P.empty

ppSince :: Maybe Int -> Doc
ppSince (Just x) = P.parens ("Since: v" <> pPrint x)
ppSince Nothing  = P.empty

getArgType :: Cursor -> ArgType
getArgType e =
  case attribute "type" e of
    [ "new_id" ] -> ANewId  (fmap T.unpack . listToMaybe $ attribute "interface" e)
    [ "object" ] -> AObject (fmap T.unpack . listToMaybe $ attribute "interface" e)
    [ "array"  ] -> AArray
    [ "fixed"  ] -> AFixed
    [ "string" ] -> AString
    [ "fd"     ] -> AFd
    [ "int"    ] -> AInt
    [ "uint"   ] -> getEnum (attribute "enum" e)
    [          ] -> error "argument without type!"
    other        -> error $ "unknown argument type: " ++ show other
  where
    getEnum [some] | [iface, name] <- T.split (== '.') some = AEnum (T.unpack name) (Just $ T.unpack iface)
                   | otherwise                              = AEnum (T.unpack some) Nothing
    getEnum    []                                           = AUInt
    getEnum other                                           = error $ "unknown argument type: uint: " ++ show other


protocolFromFile :: FilePath -> IO Protocol
protocolFromFile file = do
  doc <- X.readFile X.def file
  return $! protocolFromXML $ fromDocument doc

protocolFromString :: String -> Protocol
protocolFromString str = protocolFromXML $ fromDocument $ X.parseText_ X.def $ TL.pack str

protocolFromXML :: Cursor -> Protocol
protocolFromXML root = Protocol (getName root)
    (getContents $ root $/ element "copyright")
    (getDescription $ root $/ element "description")
    (map getInterface $ root $/ element "interface")
  where
    getInterface e = Interface (getName e) (getVersion e)
      (getDescription $ e $/ element "description")
      (map getEnum    $ e $/ element "enum")
      (map getRequest $ e $/ element "request")
      (map getEvent   $ e $/ element "event")

    getEnum e    = IEnum    (getName e) (map getEntry $ e $/ element "entry") (getSince e)
    getRequest e = IRequest (getName e) (getDescription $ e $/ element "description") (getRequestType e) (getArgs e) (getSince e)
    getEvent e   = IEvent   (getName e) (getDescription $ e $/ element "description") (getArgs e) (getSince e)
    getEntry e   = Entry    (getName e) (getValue e) (getSummary e)
    getArg e     = Arg      (getName e) (getSummary e) (getArgType e) (getNullable e)

    getArgs e    = map getArg (e $/ element "arg")

    getDescription e = Description (trim . unlines $ map getSummary e) (getContents e)

    getRequestType e = case attribute "type" e of
                          ["destructor"] -> Just "destructor"
                          []             -> Nothing
                          x              -> error $ "requestType: " ++ show x

    getSince       = listToMaybe . fmap (read . T.unpack) . attribute "since"
    getNullable    = listToMaybe . fmap (== "true") . attribute "allow-null"
    getValue       = read . T.unpack . head . attribute "value"
    getVersion     = read . T.unpack . head . attribute "version"
    getName        = trim . T.unpack . head . attribute "name"
    getSummary     = trim . T.unpack . T.unlines . attribute "summary"
    getContents    = trim . T.unpack . T.unlines . concatMap ($.// content)

-- | Interfaces referenced by the protocol, that are not defined by the protocol.
getProtocolInterfaceDeps :: Protocol -> [String]
getProtocolInterfaceDeps proto = L.nub $ do
  arg <- do
    iface <- proto.interfaces
    concat $ [ x.args | x <- iface.requests ] ++ [ x.args | x <- iface.events ]
  case arg.argType of
    ANewId  (Just iface) | check iface -> return iface
    AEnum _ (Just iface) | check iface -> return iface
    AObject (Just iface) | check iface -> return iface
    _                                  -> []
  where
    check = (`notElem` [ x.name | x <- proto.interfaces ])

head :: HasCallStack => [a] -> a
head (x:_) = x
head _ = error $ "head: empty list: " ++ prettyCallStack callStack
