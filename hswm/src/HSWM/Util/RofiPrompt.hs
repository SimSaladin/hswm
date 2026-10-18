{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE NoFieldSelectors  #-}
{-# LANGUAGE TemplateHaskell   #-}

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
import qualified Data.List as L
import qualified Data.Text as T
import qualified Data.Text.Encoding as TE
import           GHC.Show
import           GHC.TypeLits
import           HSWM
import qualified HSWM.Util.PangoMarkup as P
import           System.FilePath (takeDirectory)
import           System.IO (readFile, writeFile)
import GHC.IsList
import Data.Kind

type MonadRofi env m = (MonadUnliftIO m, MonadReader env m, MonadLogger m, MonadLoggerIO m)

-- * Configuration

data RofiPromptConfig (input :: Type) (output :: OutputFormat) result = RofiPromptConfig
  { modes           :: [Mode]       -- ^ Modes to enable.e.g. @"clipboard:cliphist-rofi-img"@ @-modes@
  , showMode        :: Maybe Mode   -- ^ Which mode to open with. @-show@
  , showIcons       :: Bool         -- ^ Enable showing icons? __flag__: @-show-icons@
  , dpi             :: Int          -- ^ Override DPI. __Int__: @ -dpi @
  , history         :: Maybe String -- ^ __str__: If 'Just', history is saved under this key
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
  -- , outputFormat  :: OutputFormat -- ^ (dmenu) Output format. @-format@
  , displayColumns  :: [Int]        -- ^ (dmenu) Columns to display. @-display-columns@
  , columnSeparator :: String       -- ^ (dmenu) Display column separator. (Regex)
  , extraArgs       :: [String]     -- ^ Additional arguments to rofi
  , inputSource     :: input
  }
  deriving stock (Eq, Ord, Show, Read, Generic, Data)
  deriving anyclass (Default)

-- | Specialized to select string output
type RofiPromptConfig' = RofiPromptConfig () SelectS String

-- ** Output format

type OutputFormat = Char
type SelectS = 's'
type SelectI = 'i'
type FilterS = 'f'

type family FormatOutput (f :: Char) where
  FormatOutput 's' = String -- ^ s: selected string
  FormatOutput 'i' = Int -- ^ i: selected index (0 - (N-1))
  FormatOutput 'd' = Int -- ^ i: selected index (1 - N)
  FormatOutput 'q' = String -- ^ q: selected string quoted
  FormatOutput 'p' = String -- ^ p: selected string stripped of pango markup
  FormatOutput 'f' = String -- ^ f: filter string (user input)
  FormatOutput 'F' = String -- ^ F: quoted filter string (user input)

getFormat :: forall (o :: OutputFormat). KnownChar o => Proxy (o :: OutputFormat) -> String
getFormat p = [charVal p]

-- | Parse output format @a@ into result type @result@
class KnownChar o => ParseOutput (o :: OutputFormat) result where

  -- | Parse the stdout of @rofi@.
  parseOutput :: Proxy o -> LB.ByteString -> result

  -- | Yield history file entry for given output item.
  outputHistEntry :: Proxy o -> result -> Maybe String

-- | Select index
instance (KnownChar format, FormatOutput format ~ Int) => ParseOutput format Int where
  parseOutput       _ = fromMaybe (-1) . readMaybe . L.init . C8.unpack . LB.toStrict
  outputHistEntry _ _ = Nothing

instance (KnownChar format, FormatOutput format ~ String) => ParseOutput format String where
  parseOutput     _ = L.init . C8.unpack . LB.toStrict
  outputHistEntry _ = Just

-- | multi-select
instance {-# OVERLAPS #-} (KnownChar format, FormatOutput format ~ a, ParseOutput format a) => ParseOutput format [a] where
  parseOutput     _ = map (parseOutput (Proxy @format)) . LC8.lines
  outputHistEntry _ = Just . unlines . mapMaybe (outputHistEntry (Proxy @format))

-- ** Row selectors

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

instance Monoid RowSelector where mempty = SelectNone
instance Semigroup RowSelector where
  (s :|| x)  <> y = s :|| (x <> y)
  (s :|- x)  <> y = s :|- (x <> y)
  SelectNone <> x = x

instance Default RowSelector where def = SelectNone

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

instance IsList RowSelector where
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

-- ** Lenses

makeLenses' [ ''RofiPromptConfig ]

-- * Config

oneMode :: Mode -> RofiPromptConfig i o r -> RofiPromptConfig i o r
oneMode m pc = pc & showMode ?~ m & modes <>~ [m]

basicRofiConfig :: RofiPromptConfig [String] SelectS String
basicRofiConfig = def & dmenuMode .~ True

-- * Input

-- | Input is anything which is convertible to 'ByteString'
class Eq a => IsRofiInput a where

  -- | Convert to input line.
  toRofiInput :: a -> LB.ByteString

  -- | Parse history items.
  fromInputHistory :: [String] -> a

  rofiInputMerge :: a -> a -> a
  default rofiInputMerge :: (Eq b, Semigroup a, a ~ [b]) => a -> a -> a
  rofiInputMerge a b = b <> (a L.\\ b)

  rofiInputSettings :: a -> RofiPromptConfig a out r -> RofiPromptConfig a out r
  rofiInputSettings _ = id

instance IsRofiInput [LB.ByteString] where
  toRofiInput        = LC8.unlines
  fromInputHistory   = reverse . L.nub . map LC8.pack

instance IsRofiInput [C8.ByteString] where
  toRofiInput        = LC8.unlines . map LB.fromStrict
  fromInputHistory   = reverse . L.nub .  map C8.pack

instance IsRofiInput [String] where
  toRofiInput        = LC8.unlines . map (LB.fromStrict . C8.pack)
  fromInputHistory   = reverse . L.nub

instance IsRofiInput [T.Text] where
  toRofiInput        = LC8.unlines . map (LB.fromStrict . TE.encodeUtf8)
  fromInputHistory   = reverse . L.nub .  map T.pack

instance IsRofiInput [P.Markup] where
  toRofiInput        = LC8.unlines . map (LB.fromStrict . TE.encodeUtf8 . P.render)
  fromInputHistory   = reverse . L.nub .  map P.text

-- ** Columns Input

--  | @<separator> :||: [items]...@ e.g.
--  @
--  [["row1", "row1b"], ["row2", "row3"]] :||: '\x1' :: 2 :||: Markup
--  @
data ColumnsInput (rows :: Nat) input = [[input]] :||: String
  deriving (Eq)

instance (KnownNat rows, input ~ P.Markup) => IsRofiInput (ColumnsInput rows input) where
  rofiInputSettings (_ :||: sep) rp = rp & displayColumns  .~ [1 .. fromIntegral $ natVal (Proxy @rows)]
                                         & columnSeparator .~ sep
  toRofiInput      (xs :||: sep)    = LC8.unlines $ map (LC8.intercalate (LC8.pack sep) . map (LB.fromStrict . TE.encodeUtf8 . P.render)) xs
  fromInputHistory                _ = mempty :||: "\x1"  -- TODO fromInputHistory xs
  rofiInputMerge   (as :||: sep)
                   (bs :||:   _)    = (as <> bs) :||: sep

-- * Launch

-- | Launch a prompt (async) without reading the output.
rofiLaunch :: forall m env. (MonadRofi env m) => RofiPromptConfig () SelectS String -> m ()
rofiLaunch rp = do
  let pc = setStdin nullStream $ setStdout nullStream $ rofiToProc rp
  logProcessConfig "rofi-launch" pc
  void $ async $ do
    res <- try @_ @SomeException $ readProcess pc
    logInfo $ "rofi: launch finished" :# [ "result" .= show res ]

-- | Launch a prompt (synchronous) with input and read the output.
rofiRun :: forall m env input output any result. (MonadRofi env m, IsRofiInput input, ParseOutput output result)
        => RofiPromptConfig any output result
        -> input
        -> m (Maybe result)
rofiRun pc input =
  let pc' :: RofiPromptConfig input output result
      pc' = pc { inputSource = input }
  in rofiRun' pc'

-- | Launch a prompt (synchronous) with input and read the output.
rofiRun'
  :: forall m env input (output :: OutputFormat) result. (MonadRofi env m, IsRofiInput input, ParseOutput output result)
  => RofiPromptConfig input output result
  -> m (Maybe result)
rofiRun' pcfg = do
  logInfo $ "rofi: launch initiated" :# [ "prompt" .= pcfg.prompt, "msg" .= pcfg.promptMessage ]
  allInput <- rofiHistoryInput pcfg
  let inputBS = toRofiInput allInput

  logFn <- askLoggerIO
  let pc =
        setStdin (byteStringInput inputBS) $
        setStdout byteStringOutput $
        setStderr (logOutput logFn "rofi" [ "stream" .= ("stderr" :: String) ]) $
        rofiToProc $
        rofiInputSettings allInput pcfg
  logProcessConfig "rofi-run" pc

  res <- try @_ @SomeException $ withProcessWait pc $ \p -> do
    out <- atomically (getStdout p)
    exitCode <- waitExitCode p
    case exitCode of
      ExitSuccess -> do
        logInfo $ "rofi: success (exited)" :# [ "prompt" .= pcfg.prompt, "output" .= C8.unpack (LB.toStrict out) ]
        return $ do
          guard (out /= "")
          return $ parseOutput (Proxy :: Proxy output) out
      ExitFailure{} -> do
        logError $ "rofi: error exit code" :# [ "code" .= show exitCode ]
        return Nothing
  case res of
    Right (Just out) -> rofiHistorySave pcfg out $> Just out
    Left err -> do
      logError $ "error occurred while running rofi" :# [ "exception" .= tshow err ]
      return Nothing
    _ -> return Nothing

-- | Build rofi process config
rofiToProc :: forall input output result. ParseOutput output result => RofiPromptConfig input output result -> ProcessConfig () () ()
rofiToProc pcfg =
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
          ++ [["-dpi", show pc.dpi] | pc.dpi > 0]
          ++ [["-l", show pc.maxLines] | pc.maxLines > 0]
          ++ [["-eh", show pc.rowHeight] | pc.rowHeight > 1]
          ++ [["-p", pc.prompt] | pc.prompt /= mempty]
          ++ [["-mesg", pc.promptMessage] | pc.promptMessage /= mempty]
          ++ [["-a", show pc.activeRow] | pc.activeRow /= mempty]
          ++ [["-u", show pc.urgentRow] | pc.urgentRow /= mempty]
          ++ [["-format", x] | let x = getFormat (Proxy @output), x /= "s"]
          ++ [["-display-columns", L.intercalate "," $ map show pc.displayColumns] | pc.displayColumns /= mempty]
          -- note: display-column-separator is a regex
          ++ [["-display-column-separator", pc.columnSeparator] | pc.columnSeparator /= mempty]
          ++ [pc.extraArgs]

    modeName (Mode s)           = s
    modeName (ModeCustom ti _)  = ti
    fromMode (Mode s)           = s
    fromMode (ModeCustom ti sc) = ti ++ ":" ++ sc

-- * And-then

(++>) :: Monad m => m (Maybe String) -> (String -> m ()) -> m ()
ma ++> f = ma >>= flip whenJust f

-- * Prompts

confirmPrompt :: RofiPromptConfig i SelectS String -> String -> H () -> H ()
confirmPrompt cfg text act = rofiRun cfg' input ++> apply
  where
    input = ["yes", "no"] :: [T.Text]
    cfg'  = cfg
      & dmenuMode .~ True
      & prompt .~ "Confirm [y/n]? "
      & promptMessage .~ text
    apply "yes" = act
    apply     _ = return ()

-- * History handling

-- | Get input with history (if configured).
rofiHistoryInput :: (MonadRofi env m, IsRofiInput input) => RofiPromptConfig input o r -> m input
rofiHistoryInput pc = do
  let input = pc.inputSource
  mHist <- getHistoryFile pc
  case mHist of
    Nothing -> return input
    Just histFile ->
      io (doesFileExist histFile) >>= \case
        False -> return input
        True -> do
          contents <- io (readFile histFile)
          let lns = lines contents
          let results = fromInputHistory lns
          hinput <- return $! L.last lns `seq` results
          return $ rofiInputMerge input hinput

-- | Save a history entry.
rofiHistorySave
  :: forall env m i o result. (MonadRofi env m, ParseOutput o result)
  => RofiPromptConfig i o result
  -> result
  -> m ()
rofiHistorySave pc ln = io $ do
  mHist <- getHistoryFile pc
  forM_ mHist $ \histFile -> do
    forM_ (outputHistEntry (Proxy @o) ln) $ \e -> do
      createDirectoryIfMissing True (takeDirectory histFile)
      linesCur <- lines <$> readFile histFile
      let linesNew = L.nub $ linesCur ++ [e]
      L.last linesCur `seq` writeFile histFile (unlines linesNew)

getHistoryFile :: MonadIO m => RofiPromptConfig i o result -> m (Maybe FilePath)
getHistoryFile pc = case pc.history of
  Just historyId -> do
    dir <- io $ getXdgDirectory XdgCache "hswm/rofi"
    return $! Just $! dir ++ "/" ++ historyId ++ ".history"
  Nothing -> return Nothing
