{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE NoFieldSelectors  #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# LANGUAGE UndecidableInstances #-}

-- |
-- Module      : HSWM.Util.RofiPrompt
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Util.RofiPrompt where

import qualified Data.ByteString.Char8 as C8
import qualified Data.ByteString.Lazy as LB
import qualified Data.ByteString.Lazy.Char8 as LC8
-- import qualified Data.ByteString.Builder as BB
import           Data.Kind
import qualified Data.List as L
import qualified Data.Text as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Builder as TLB
import qualified Data.Text.Encoding as TE
import qualified Data.Text.Lazy.Encoding as TLE
import qualified GHC.IsList
import           GHC.Show
import           GHC.TypeLits
import           HSWM
import qualified HSWM.Util.PangoMarkup as P
import           System.FilePath (takeDirectory)
import           System.IO (readFile, writeFile)
import Data.Typeable

type MonadRofi env m = (MonadUnliftIO m, MonadReader env m, MonadLogger m, MonadLoggerIO m)

-- * Configuration

--type data PromptType = DMenu | ShowMode

data RofiPromptConfig (i :: Type) (o :: OutputFormat) (a :: Type) = RofiPromptConfig
  { modes           :: [Mode]       -- ^ Modes to enable.e.g. @"clipboard:cliphist-rofi-img"@ @-modes@
  , showMode        :: Maybe Mode   -- ^ Which mode to open with. @-show@
  , showIcons       :: Bool         -- ^ Enable showing icons? __flag__: @-show-icons@
  , dpi             :: Int          -- ^ Override DPI. __Int__: @ -dpi @
  , history         :: PromptHistory i -- ^ __str__: If 'Just', history is saved under this key
  , dmenuMode       :: Bool         -- ^ Use rofi-dmenu mode. @-dmenu@
  , markupInput     :: Bool         -- ^ (dmenu) Input is Pango Markup encoded. @-markup-rows@
  , noCustomInput   :: Bool         -- ^ (dmenu) Do not allow custom input. @-no-custom@
  , maxLines        :: Int          -- ^ (dmenu) Number of lines to show. @-l@
  , rowHeight       :: Int          -- ^ Row height in characters (default: 1)
  , multiSelect     :: Bool         -- ^ (dmenu) possible to select multiple lines?
  , prompt          :: String       -- ^ (dmenu) Prompt text. @-p Prompt:@
  , promptMessage   :: String       -- ^ (dmenu) Message line below the filter entry box. Supports Pango markup. @ -mesg @.
  , activeRow       :: RowSelector  -- ^ (dmenu) Active row(s). @-a@
  , urgentRow       :: RowSelector  -- ^ (dmenu) Urgent row(s). @-u@
  , selectedRow     :: Int          -- ^ Which row to select at the beginning
  , displayColumns  :: [Int]        -- ^ (dmenu) Columns to display. @-display-columns@
  , columnSeparator :: String       -- ^ (dmenu) Display column separator. (Regex)
  , extraArgs       :: [String]     -- ^ Additional arguments to rofi
  , smartCase       :: Bool         -- ^ --smart-case
  , filterString    :: String       -- ^ Sets the initial filter string input
  , matching        :: String       -- ^ Matching style: normal,regex,glob,fuzzy,prefix
  }
  deriving stock (Eq, Ord, Show, Read, Generic)
  deriving anyclass (Default)

-- | Specialized to select string output
type RofiPromptConfig' = forall a. Default a => RofiPromptConfig a SelectS String

-- ** Prompt history

withHistory :: forall a o r. (HistoryInput a)
            => String
            -> RofiPromptConfig a o r -> RofiPromptConfig a o r
withHistory key pc = pc { history = HistoryUsing { historyKey = key, historyDict = Proxy @a } }

defaultReadHistory :: (LazyText -> a) -> LazyByteString -> [a]
defaultReadHistory f = map f . reverse . L.nub . TL.lines . TLE.decodeUtf8

data PromptHistory a
  = NoHistory
  | HistoryInput a => HistoryUsing { historyKey :: String, historyDict :: Proxy a }

deriving instance Eq (PromptHistory a)
deriving instance Ord (PromptHistory a)
deriving instance Show (PromptHistory a)
deriving instance HistoryInput a => Read (PromptHistory a)

instance Default (PromptHistory a) where
  def = NoHistory

class HistoryInput a where

  historyParse :: Proxy a -> LazyText -> InputRow (RowData a)
  default historyParse :: ParseRow (RowData a) => Proxy a -> LazyText -> InputRow (RowData a)
  historyParse _ = rowFromText . TL.toStrict

  historyMerge :: (row ~ InputRow (RowData a)) => Proxy a -> [row] -> [row] -> [row]
  default historyMerge :: (row ~ InputRow (RowData a), Eq row) => Proxy a -> [row] -> [row] -> [row]
  historyMerge _ i h = i <> (L.nub h L.\\ i)

instance HistoryInput [String] where
--instance HistoryInput [LazyByteString] where
--instance HistoryInput [ByteString] where
--instance HistoryInput [Text] where
--instance HistoryInput [P.Markup] where

class ParseRow a where
  rowFromText :: StrictText -> InputRow a

instance ParseRow StrictText where rowFromText = fromContent
instance ParseRow StrictByteString where rowFromText = fromContent . TE.encodeUtf8
instance ParseRow LazyByteString where rowFromText = fromContent . LB.fromStrict . TE.encodeUtf8
instance ParseRow String where rowFromText = fromContent . T.unpack
instance ParseRow P.Markup where rowFromText = fromContent . P.Raw

-- ** Output format

-- output is one of:
-- - selected index/indices - [Int]
-- - selected string/strings - [String]
-- - filter string - String


type OutputFormat = Char
type SelectS = 's'
type SelectI = 'i'
type FilterS = 'f'

type family FormatOutput (f :: OutputFormat) where
  FormatOutput 's' = String -- ^ s: selected string
  FormatOutput 'i' = Int -- ^ i: selected index (0 - (N-1))
  FormatOutput 'd' = Int -- ^ i: selected index (1 - N)
  FormatOutput 'q' = String -- ^ q: selected string quoted
  FormatOutput 'p' = String -- ^ p: selected string stripped of pango markup
  FormatOutput 'f' = String -- ^ f: filter string (user input)
  FormatOutput 'F' = String -- ^ F: quoted filter string (user input)

-- | Parse output format @a@ into result type @result@
class KnownChar o => ParseOutput (o :: OutputFormat) result where

  -- | Parse the stdout of @rofi@.
  parseOutput :: Proxy o -> LazyByteString -> result

  -- | Yield history file entry for given output item.
  outputHistEntry :: Proxy o -> result -> Maybe String

-- | Select index
instance (KnownChar format, FormatOutput format ~ Int) => ParseOutput format Int where
  parseOutput       _ = fromMaybe (-1) . readMaybe . L.init . C8.unpack . LB.toStrict
  outputHistEntry _ _ = Nothing

-- | Select row/filter string
instance (KnownChar format, FormatOutput format ~ String) => ParseOutput format String where
  parseOutput     _ = L.init . C8.unpack . LB.toStrict
  outputHistEntry _ = Just

-- | multi-select
instance {-# OVERLAPS #-} (KnownChar format, FormatOutput format ~ a, ParseOutput format a) => ParseOutput format [a] where
  parseOutput     _ = map (parseOutput (Proxy @format)) . LC8.lines
  outputHistEntry _ = Just . unlines . mapMaybe (outputHistEntry (Proxy @format))

-- ** RowSelector

-- |
-- • A single row: `5'
-- • A range of (last 3) rows: `-3:'
-- • 4 rows starting from row 7: `7:11' (or in legacy notation: `7-10')
-- • A set of rows: `2,0,-9'
-- • Or any combination: `5,-3:,7:11,2,0,-9'
data RowSelector
  = String :|| RowSelector
  | Int    :|- RowSelector
  | SelectNone
  deriving (Eq, Ord, Read, Generic, Data)

instance Default RowSelector where def = SelectNone
instance Monoid RowSelector where mempty = SelectNone
instance Semigroup RowSelector where
  (s :|| x)  <> y = s :|| (x <> y)
  (s :|- x)  <> y = s :|- (x <> y)
  SelectNone <> x = x

instance Show RowSelector where
  showsPrec p =
    let go (n :|- xs) = ("," <>) . showsPrec p n . go xs
        go (s :|| xs) = ("," <>) . (s <>) . go xs
        go SelectNone = id
     in \case
          n :|- xs   -> showsPrec p n . go xs
          s :|| xs   -> (s <>) . go xs
          SelectNone -> id

instance IsString RowSelector where
  fromString "" = mempty
  fromString ss = ss :|| mempty

instance GHC.IsList.IsList RowSelector where
  type Item RowSelector = RowSelector
  fromList = mconcat
  toList = go where
    go (s :|| xs) = (s :|| SelectNone) : go xs
    go (n :|- xs) = (n :|- SelectNone) : go xs
    go SelectNone = []

-- ** Mode selectors

data Mode = Mode String
          | ModeCustom String FilePath
  deriving stock (Eq, Ord, Show, Read, Generic, Data)

instance IsString Mode where
  fromString str
    | (ti, ':' : sc) <- L.break (==':') str = ModeCustom ti sc
    | otherwise = Mode str

-- * Input

-- ** InputRow

data InputRow a = InputRow
  { content       :: !a
  , icon          :: ![Text] -- ^ icon to display for the row
  , display       :: !P.Markup -- ^ replace displayed string
  , meta          :: ![Text] -- ^ meta strings for filtering
  , nonselectable :: !Bool
  , permanent     :: !Bool -- ^ Whether to always show this row
  , urgent        :: !Bool -- ^ Mark row as urgent
  , active        :: !Bool -- ^ Mark row as active
  } deriving (Eq, Default, Generic, Functor, Data)

fromContent :: a -> InputRow a
fromContent x = (def @(InputRow ())) { content = x }

renderInputRow :: (a -> LazyByteString) -> InputRow a -> LazyByteString
renderInputRow f InputRow{..} = f content <> TLE.encodeUtf8 extra
  where
    extra = TLB.toLazyText . mconcat $ zipWith (<>) (TLB.singleton '\0': L.repeat (TLB.singleton '\x1f')) $ catMaybes
      [ opt "icon"          icon          (/= mempty) (TLB.fromLazyText . TL.intercalate "," . map TL.fromStrict)
      , opt "display"       display       (/= mempty) (TLB.fromText . P.render)
      , opt "meta"          meta          (/= mempty) (TLB.fromLazyText . TL.unwords . map TL.fromStrict)
      , opt "nonselectable" nonselectable id          (const "true")
      , opt "permanent"     permanent     id          (const "true")
      , opt "urgent"        urgent        id          (const "true")
      , opt "active"        active        id          (const "true")
      ]
    opt field v check render = guard (check v) $> (field <> TLB.singleton '\x1f' <> render v)

-- ** Columns Input

class HasRows a where
  type RowData a

  getRows :: a -> [InputRow (RowData a)]
  default getRows :: (Foldable t, a ~ t e, RowData (t e) ~ e) => a -> [InputRow (RowData a)]
  getRows = map fromContent . toList

  renderRow :: Proxy a -> RowData a -> LazyByteString

  rofiInputSettings :: a -> RofiPromptConfig a out r -> RofiPromptConfig a out r
  rofiInputSettings _ = id

instance HasRows [String] where
  type RowData [String] = String
  renderRow _ = LC8.pack

instance HasRows [StrictText] where
  type RowData [StrictText] = StrictText
  renderRow _ = LB.fromStrict . TE.encodeUtf8

instance HasRows [StrictByteString] where
  type RowData [StrictByteString] = StrictByteString
  renderRow _ = LB.fromStrict

instance HasRows [LazyByteString] where
  type RowData [LazyByteString] = LazyByteString
  renderRow _ = id

instance HasRows [P.Markup] where
  type RowData [P.Markup] = P.Markup
  renderRow _ = LB.fromStrict . TE.encodeUtf8 . P.render

instance (HasRows [a], RowData [a] ~ a) => HasRows [InputRow a] where
  type RowData [InputRow a] = a
  getRows = id
  renderRow _ = renderRow @[a] Proxy

class HasColumns a where

  type ColumnsCount a :: Nat

  getColumns :: a -> [LazyByteString]

instance P.ToMarkup a => HasColumns (Const [a] (n :: Nat))  where
  type ColumnsCount (Const [a] n) = n
  getColumns (Const xs) = map (LB.fromStrict . TE.encodeUtf8 . P.render . P.toMarkup) xs

instance P.ToMarkup a => HasColumns (a, a, a, a)  where
  type ColumnsCount (a, a, a, a) = 4
  getColumns (a,b,c,d) = map (LB.fromStrict . TE.encodeUtf8 . P.render . P.toMarkup) [a,b,c,d]

-- * Launch

-- | Launch a prompt (async) without reading the output.
launchRofi :: forall m env i o (a :: Type). (MonadRofi env m, KnownChar o) => RofiPromptConfig i o a -> m (Async ())
launchRofi rp = do
  pc <- setStdin nullStream . setStdout nullStream <$> rofiToProc rp
  logProcessConfig "rofi-mode" pc
  async $ do
    res <- try @_ @SomeException $ runProcess pc
    logInfo $ "rofi: launch finished" :# [ "result" .= show res ]

launchRofi_ :: forall m env i o a. (MonadRofi env m, KnownChar o) => RofiPromptConfig i o a -> m ()
launchRofi_ = void . launchRofi

-- | Launch a prompt (synchronous) with input and read the output.
runRofi
  :: forall i o a m env. (MonadRofi env m, HasRows i, ParseOutput o a)
  => RofiPromptConfig i o a -> i -> m (Maybe a)
runRofi pcfg input0 = do
  logInfo $ "rofi: launch initiated" :# [ "prompt" .= pcfg.prompt, "msg" .= pcfg.promptMessage ]
  allInput <- rofiHistoryInput pcfg input0
  let inputBS = LC8.unlines $ map (renderInputRow (renderRow (Proxy @i))) allInput
  pc <- setStdin (byteStringInput inputBS) <$> rofiToProc (rofiInputSettings input0 pcfg)
  logProcessConfig "rofi" pc
  res <- try @_ @SomeException $ withProcessWait pc $ \p -> do
    atomically $ (,) <$> waitExitCodeSTM p <*> getStdout p
  case res of
    Right (ExitSuccess, "") -> do
      logInfo $ "rofi: success but no output" :# [ "prompt" .= pcfg.prompt ]
      return Nothing
    Right (ExitSuccess, out) -> do
      logInfo $ "rofi: success (exited)" :# [ "prompt" .= pcfg.prompt, "output" .= C8.unpack (LB.toStrict out) ]
      let result = parseOutput (Proxy @o) out
      rofiHistorySave pcfg.history $ outputHistEntry @o Proxy result
      return $ Just result
    Right (ExitFailure ec, _out) -> do
      logError $ "rofi: error exit code" :# [ "code" .= show ec ]
      return Nothing
    Left emsg -> do
      logError $ "rofi: exception occurred" :# [ "message" .= tshow emsg ]
      return Nothing

-- | Build rofi process config
rofiToProc :: forall i o a m. (MonadLoggerIO m, KnownChar o)
           => RofiPromptConfig i o a
           -> m (ProcessConfig () (STM LazyByteString) (Async ()))
rofiToProc pcfg = do
  logger <- askLoggerIO
  return $
    setStderr (logOutput logger "rofi" [ "stream" .= ("stderr" :: String) ]) $
    setStdout byteStringOutput $
    setCloseFds True $
    setNewSession True $
    proc "rofi" (toRofiArgs pcfg)
  where
    toRofiArgs pc = join $
        [["-modes", L.intercalate "," $ map fromMode pc.modes] | pc.modes /= []]
          ++ [["-show", modeName x] | Just x <- [pc.showMode]]
          ++ [["-show-icons"] | pc.showIcons]
          ++ [["-dmenu"] | pc.dmenuMode]
          ++ [["-no-custom"] | pc.noCustomInput]
          ++ [["-markup-rows"] | pc.markupInput]
          ++ [["-multi-select"] | pc.multiSelect]
          ++ [["-smart-case"] | pc.smartCase]
          ++ [["-dpi", show pc.dpi] | pc.dpi > 0]
          ++ [["-l", show pc.maxLines] | pc.maxLines > 0]
          ++ [["-eh", show pc.rowHeight] | pc.rowHeight > 1]
          ++ [["-p", pc.prompt] | pc.prompt /= mempty]
          ++ [["-mesg", pc.promptMessage] | pc.promptMessage /= mempty]
          ++ [["-filter", pc.filterString] | pc.filterString /= mempty]
          ++ [["-matching", pc.matching] | pc.matching /= mempty]
          ++ [["-a", show pc.activeRow] | pc.activeRow /= mempty]
          ++ [["-u", show pc.urgentRow] | pc.urgentRow /= mempty]
          ++ [["-selected-row", show pc.selectedRow] | pc.selectedRow /= 0]
          ++ [["-format", x] | let x = getFormat (Proxy @o), x /= "s"]
          ++ [["-display-columns", L.intercalate "," $ map show pc.displayColumns] | pc.displayColumns /= mempty]
          -- note: display-column-separator is a regex
          ++ [["-display-column-separator", pc.columnSeparator] | pc.columnSeparator /= mempty]
          ++ [pc.extraArgs]

    modeName (Mode s)           = s
    modeName (ModeCustom ti _)  = ti
    fromMode (Mode s)           = s
    fromMode (ModeCustom ti sc) = ti ++ ":" ++ sc
    getFormat p = [charVal p]

-- * And-then

(++>) :: Monad m => m (Maybe a) -> (a -> m ()) -> m ()
ma ++> f = ma >>= flip whenJust f

-- * History handling

-- | Get input with history (if configured).
rofiHistoryInput :: (MonadRofi env m, HasRows i) => RofiPromptConfig i o r -> i -> m [InputRow (RowData i)]
rofiHistoryInput pc input0 = do
  let input = getRows input0
  case pc.history of
    HistoryUsing{historyDict=Proxy :: Proxy i} -> do
      withHistoryFile pc.history input $ \histFile ->
        io (doesFileExist histFile) >>= \case
          True -> do
            contents <- io (LB.readFile histFile)
            let hInputRows = defaultReadHistory (historyParse @i Proxy) contents
                result = historyMerge @i Proxy input hInputRows
            L.last hInputRows `seq` return result
          False -> return input
    NoHistory -> return input

-- | Save a history entry.
rofiHistorySave :: forall env m i. (MonadRofi env m) => PromptHistory i -> Maybe String -> m ()
rofiHistorySave hist mres =
  io $ forM_ mres $ \e -> withHistoryFile hist () $ \histFile -> do
    createDirectoryIfMissing True (takeDirectory histFile)
    linesCur <- lines <$> readFile histFile
    let linesNew = L.nub $ linesCur ++ [e]
    L.last linesCur `seq` writeFile histFile (unlines linesNew)

withHistoryFile :: MonadIO m => PromptHistory i -> a -> (FilePath -> m a) -> m a
withHistoryFile pch d f = case pch of
  HistoryUsing{historyKey} -> do
    dir <- io $ getXdgDirectory XdgCache "hswm/rofi"
    f $! dir ++ "/" ++ historyKey ++ ".history"
  NoHistory -> return d

-- ** Lenses

makeLenses' [ ''RofiPromptConfig, ''InputRow ]

-- * Columns input

withColumns :: (HasColumns cols, Traversable t) => t cols -> ColumnsInput '\x1' [InputRow cols]
withColumns input = ColumnsInput
  { columnsInput = map fromContent (toList input)
  , columnsHeader = True
  }

columnsWithHeader :: (HasColumns cols, Foldable t) => cols -> t cols -> ColumnsInput '\x1' [InputRow cols]
columnsWithHeader hdr input = ColumnsInput
  { columnsInput = (fromContent hdr) { nonselectable = True, permanent = True } : map fromContent (toList input)
  , columnsHeader = True
  }

--  |
--  @
--  ColumnsInput [["row1", "row1b"], ["row2", "row3"]]
--     :: ColumnsInput '\x1' 2 [[Markup]]
--  @
data ColumnsInput (colsep :: Char) input = ColumnsInput
  { columnsInput  :: input
  , columnsHeader :: Bool
  } deriving (Eq)

instance (KnownChar colsep, KnownNat (ColumnsCount a), input ~ [InputRow a], HasColumns a) => HasRows (ColumnsInput colsep input) where
  type RowData (ColumnsInput colsep input) = RowData input
  getRows ColumnsInput{..} = columnsInput
  renderRow _ = LC8.intercalate (LC8.pack [charVal (Proxy @colsep)]) . getColumns
  rofiInputSettings x = displayColumns .~ [1 .. fromIntegral $ natVal (Proxy @(ColumnsCount a))]
                        &+ columnSeparator .~ [charVal (Proxy @colsep)]
                        &+ (if x.columnsHeader then selectedRow %~ max 1 else id)

-- * Prompts

modePromptWith :: RofiPromptConfig i o a -> Mode -> RofiPromptConfig () 's' ()
modePromptWith pc mo = pc & clearTypeParams
                          & showMode ?~ mo
                          & modes <>~ [mo]
                          & dmenuMode .~ False

modePrompt :: Mode -> RofiPromptConfig () 's' ()
modePrompt mo = def & showMode ?~ mo & modes <>~ [mo]

-- | For dmenu usage
dmenuPrompt :: Default a => RofiPromptConfig a SelectS String
dmenuPrompt = def & dmenuMode .~ True

confirmPrompt :: RofiPromptConfig i o a -> String -> H () -> H ()
confirmPrompt pc text act = selectPrompt pc' values ++> flip when act
  where
    pc' = pc & prompt .~ "Confirm [y/n]"
             & promptMessage .~ text
    values = [(True, "yes"), (False, "no")]

confirmPrompt' :: RofiPromptConfig [T.Text] SelectS String -> String -> H () -> H ()
confirmPrompt' cfg text act = runRofi cfg' input ++> apply
  where
    input = ["yes", "no"] :: [T.Text]
    cfg'  = cfg
      & dmenuMode .~ True
      & prompt .~ "Confirm [y/n]? "
      & promptMessage .~ text
    apply "yes" = act
    apply     _ = return ()

clearInputSettings :: RofiPromptConfig i o a -> RofiPromptConfig i' o a
clearInputSettings pc = pc { history = def }

clearTypeParams :: forall i' o' a' i o a. RofiPromptConfig i o a -> RofiPromptConfig i' o' a'
clearTypeParams pc = pc { history = def }

-- | Select one of the options.
selectPrompt :: (MonadRofi env m, Typeable a) => RofiPromptConfig i' o' a' -> [(a, P.Markup)] -> m (Maybe a)
selectPrompt pc vals = runRofi pc' (map snd vals) <&> (>>= (map fst vals L.!?))
  where
    pc' = pc & noCustomInput .~ True
             & promptMessage . filtered (=="") .~ "Select " ++ show (typeRep vals)
             & clearTypeParams @_ @'i'
