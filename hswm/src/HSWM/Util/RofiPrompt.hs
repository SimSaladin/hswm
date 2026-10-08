{-# LANGUAGE NoFieldSelectors #-}
{-# LANGUAGE TemplateHaskell  #-}

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
import           HSWM
import qualified HSWM.Util.PangoMarkup as P
import           System.FilePath (takeDirectory)
import           System.IO (readFile, writeFile)

type MonadRofi env m = (MonadUnliftIO m, MonadReader env m, MonadLogger m)

-- * Configuration

data RofiPromptConfig (output :: OutputFormat) = RofiPromptConfig
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
  , prompt          :: String       -- ^ (dmenu) Prompt text. @-p Prompt:@
  , promptMessage   :: String       -- ^ (dmenu) Message line below the filter entry box. Supports Pango markup. @ -mesg @.
  , activeRow       :: RowSelector  -- ^ (dmenu) Active row(s). @-a@
  , urgentRow       :: RowSelector  -- ^ (dmenu) Urgent row(s). @-u@
  -- , outputFormat  :: OutputFormat -- ^ (dmenu) Output format. @-format@
  , displayColumns  :: [Int]        -- ^ (dmenu) Columns to display. @-display-columns@
  , columnSeparator :: String       -- ^ (dmenu) Display column separator.
  , extraArgs       :: [String]     -- ^ Additional arguments to rofi
  }
  deriving stock (Eq, Ord, Show, Read, Generic, Data)
  deriving anyclass (Default)

type RowSelector = String

data Mode = Mode String
          | ModeCustom String FilePath
  deriving stock (Eq, Ord, Show, Read, Generic, Data)

instance IsString Mode where
  fromString str
    | (ti, ':' : sc) <- L.break (==':') str = ModeCustom ti sc
    | otherwise = Mode str

data OutputFormat
  = SelectS   -- ^ s (default): selected string
  | SelectI   -- ^ i: selected index (0 - (N-1))
  | SelectQ   -- ^ q: selected string quoted
  | SelectP   -- ^ p: selected string stripped of pango markup
  | FilterS   -- ^ f: filter string (user input)
  | FilterQ   -- ^ F: quoted filter string (user input)
  deriving (Eq, Ord, Show, Read, Generic, Data)

instance Default OutputFormat where
  def = SelectS

class ParseOutput (a :: OutputFormat) where

  -- | Type of the output when using this format.
  type family RofiOutput a

  -- | The @-format@ argument for @rofi@.
  getFormat :: Proxy a -> String

  -- | Parse the stdout of @rofi@.
  parseOutput :: Proxy a -> LB.ByteString -> RofiOutput a

  -- | Yield history file entry for given output item.
  outputHistEntry :: Proxy a -> RofiOutput a -> Maybe String

-- getFormat SelectQ = "q"
-- getFormat SelectP = "p"
-- getFormat FilterQ = "F"

instance ParseOutput SelectS where
  type instance RofiOutput SelectS = String
  parseOutput _ = L.init . C8.unpack . LB.toStrict
  outputHistEntry _ = Just
  getFormat _ = "s"

instance ParseOutput SelectI where
  type instance RofiOutput SelectI = Int
  parseOutput _ bs = case readMaybe . L.init . C8.unpack $ LB.toStrict bs of
                       Just i -> i
                       Nothing -> -1
  outputHistEntry _ _ = Nothing
  getFormat _ = "i"

instance ParseOutput FilterS where
  type instance RofiOutput FilterS = String
  parseOutput _ = L.init . C8.unpack . LB.toStrict
  outputHistEntry _ = Just
  getFormat _ = "f"

-- ** Lenses

makeLenses' [ ''RofiPromptConfig ]

-- * Input

-- | Input is anything which is convertible to 'ByteString'
class Eq a => IsRofiInput a where

  -- | Convert to input line.
  toRofiInput :: a -> LB.ByteString

  -- | Parse a history item.
  fromInputHistory :: String -> a

instance IsRofiInput LB.ByteString where
  toRofiInput = id
  fromInputHistory = LC8.pack

instance IsRofiInput C8.ByteString where
  toRofiInput = LB.fromStrict
  fromInputHistory = C8.pack

instance IsRofiInput String where
  toRofiInput = LB.fromStrict . C8.pack
  fromInputHistory = id

instance IsRofiInput T.Text where
  toRofiInput = LB.fromStrict . TE.encodeUtf8
  fromInputHistory = T.pack

instance IsRofiInput P.Markup where
  toRofiInput = LB.fromStrict . TE.encodeUtf8 . P.render
  fromInputHistory = P.text

-- * Launch

-- | Launch a prompt (async) without reading the output.
rofiLaunch :: forall m env. (MonadRofi env m) => RofiPromptConfig SelectS -> m ()
rofiLaunch rp = void $ async $ do
  res <- try @_ @SomeException $ readProcess $
    setStdin nullStream $
    setStdout nullStream $
    rofiToProc rp
  logInfo $ "rofi: launch finished" :# [ "result" .= show res ]

-- | Launch a prompt (synchronous) with input and read the output.
rofiRun
  :: forall m env input. (MonadRofi env m, IsRofiInput input)
  => RofiPromptConfig SelectS -> [input] -> m (Maybe String)
rofiRun = rofiRun'

-- | Launch a prompt (synchronous) with input and read the output.
rofiRun'
  :: forall m env input (output :: OutputFormat). (MonadRofi env m, IsRofiInput input, ParseOutput output)
  => RofiPromptConfig output -> [input] -> m (Maybe (RofiOutput output))
rofiRun' pcfg input = do
  input' <- rofiHistoryInput pcfg input
  let inputBS = LB.intercalate "\n" $ map toRofiInput input'
  logInfo $ "rofi: launch initiated" :# [ "prompt" .= pcfg.prompt, "msg" .= pcfg.promptMessage ]
  withProcessTerm (
    setStdin (byteStringInput inputBS) $
    setStdout byteStringOutput $
    setStderr byteStringOutput $
    rofiToProc pcfg) $ \p -> do
      out <- atomically (getStdout p)
      err <- atomically (getStderr p)
      exitCode <- waitExitCode p
      when (err /= "") $
        logWarn $ "rofi: output to stderr" :# [ "output" .= C8.unpack (LB.toStrict err) ]
      case exitCode of
        ExitSuccess -> do
          logInfo $ "rofi: success (exited)" :# [ "prompt" .= pcfg.prompt  ]
          case out of
            "" -> return Nothing
            _  -> do
              let out' = parseOutput (Proxy :: Proxy output) out
              rofiHistorySave pcfg out'
              return $ Just out'
        ExitFailure{} -> do
          logError $ "rofi: error exit code" :# [ "code" .= show exitCode ]
          return Nothing

promptRofi :: MonadRofi env m => String -> [String] -> m (Maybe String)
promptRofi str = rofiRun def { prompt = str, dmenuMode = True }

-- | Get input with history (if configured).
rofiHistoryInput
  :: (MonadRofi env m, IsRofiInput input)
  => RofiPromptConfig o
  -> [input]
  -> m [input]
rofiHistoryInput s input = do
  mHist <- getHistoryFile s
  hinput <- fmap mconcat $ forM (maybeToList mHist) $ \histFile -> do
    io (doesFileExist histFile) >>= \case
      False -> return []
      True -> do
        contents <- io (readFile histFile)
        let results = map fromInputHistory $ lines contents
        return $! L.last results `seq` results
  return $ reverse (L.nub hinput) <> (input L.\\ hinput)

-- | Save a history entry.
rofiHistorySave :: forall env m ofmt. (MonadRofi env m, ParseOutput ofmt) => RofiPromptConfig ofmt -> RofiOutput ofmt -> m ()
rofiHistorySave s ln = do
  mHist <- getHistoryFile s
  forM_ mHist $ \histFile -> do
    forM_ (outputHistEntry (Proxy :: Proxy ofmt) ln) $ \e -> do
      io $ createDirectoryIfMissing True (takeDirectory histFile)
      linesCur <- lines <$> io (readFile histFile)
      let linesNew = L.nub $ linesCur ++ [e]
      L.last linesCur `seq` io (writeFile histFile $ unlines linesNew)

getHistoryFile :: MonadIO m => RofiPromptConfig o -> m (Maybe FilePath)
getHistoryFile pc =
  case pc.history of
    Just historyId -> do
      dir <- io $ getXdgDirectory XdgCache "hswm/rofi"
      return $! Just $! dir ++ "/" ++ historyId ++ ".history"
    Nothing -> return Nothing

rofiToProc :: forall o. ParseOutput o => RofiPromptConfig o -> ProcessConfig () () ()
rofiToProc pcfg =
   setNewSession True $
   setCloseFds True $
   proc "rofi" (toRofiArgs pcfg)
  where
    outFmt = Proxy :: Proxy o
    toRofiArgs pc = join $
        [["-modes", L.intercalate "," $ map fromMode pc.modes] | pc.modes /= []]
          ++ [["-show", modeName x] | Just x <- [pc.showMode]]
          ++ [["-show-icons"] | pc.showIcons]
          ++ [["-dmenu"] | pc.dmenuMode]
          ++ [["-no-custom"] | pc.noCustomInput]
          ++ [["-markup-rows"] | pc.markupInput]
          ++ [["-dpi", show pc.dpi] | pc.dpi > 0]
          ++ [["-l", show pc.maxLines] | pc.maxLines > 0]
          ++ [["-eh", show pc.rowHeight] | pc.rowHeight > 1]
          ++ [["-p", pc.prompt] | pc.prompt /= mempty]
          ++ [["-mesg", pc.promptMessage] | pc.promptMessage /= mempty]
          ++ [["-a", pc.activeRow] | pc.activeRow /= mempty]
          ++ [["-u", pc.urgentRow] | pc.urgentRow /= mempty]
          ++ [["-format", getFormat outFmt] | getFormat outFmt /= "s"]
          ++ [["-display-columns", L.intercalate "," $ map show pc.displayColumns] | pc.displayColumns /= mempty]
          ++ [["-display-column-separator", pc.columnSeparator] | pc.columnSeparator /= mempty]
          ++ [pc.extraArgs]

    modeName (Mode s) = s
    modeName (ModeCustom ti _) = ti
    fromMode (Mode s) = s
    fromMode (ModeCustom ti sc) = ti ++ ":" ++ sc


runWithSystemD :: (HasCallStack, MonadRofi env m) => String -> m ()
runWithSystemD cmd = void $ readProcess $ proc "systemd-run"
  [ "--user", "--no-block", "--collect", "--", "bash", "-c", cmd ]

(++>) :: Monad m => m (Maybe String) -> (String -> m ()) -> m ()
ma ++> f = ma >>= flip whenJust f

-- * Prompts

confirmPrompt :: RofiPromptConfig SelectS -> String -> H () -> H ()
confirmPrompt cfg text act = rofiRun cfg' ["yes" :: T.Text, "no"] ++> apply
  where
    cfg' = cfg
      & dmenuMode .~ True
      & prompt .~ "Confirm [y/n]? "
      & promptMessage .~ text
    apply "yes" = act
    apply _ = return ()

oneMode :: Mode -> RofiPromptConfig o -> RofiPromptConfig o
oneMode m pc = pc & showMode ?~ m & modes <>~ [m]
