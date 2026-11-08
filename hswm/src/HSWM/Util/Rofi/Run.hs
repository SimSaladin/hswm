{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE NoFieldSelectors #-}

-- |
-- Module      : HSWM.Util.Rofi.Run
-- Description : (No description)
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Util.Rofi.Run where

import Data.ByteString.Char8 qualified as C8
import Data.ByteString.Lazy qualified as LB
import Data.Enum (toEnum)
import Data.Kind
import Data.List qualified as L
import Data.Text.Lazy qualified as TL
import Data.Text.Lazy.Builder qualified as TLB
import Data.Text.Lazy.Encoding qualified as TLE
import GHC.TypeLits
import HSWM hiding (render)
import HSWM.Util.PangoMarkup qualified as P
import System.FilePath (takeDirectory)

type MonadRofi m = (MonadUnliftIO m, MonadLogger m, MonadLoggerIO m, MonadMask m)

-- * Output format

class (KnownChar (OutputSpec outputSpec)) => InterpretOutput (outputSpec :: k) a where
  -- | which option to use for the -format switch?
  type OutputSpec outputSpec :: Char

  type OutputParams outputSpec :: Type

  interpretOutput :: OutputParams outputSpec -> LazyByteString -> Either String a

-- | Selected string(s) - e.g. @-format [sqp]@ (rofi default is @s@).
--
--  @s@: selected string (rofi default)
--
--  @q@: selected string quoted
--
--  @p@: selected string stripped of pango markup
data SelectValues = SelectValues

-- | filter string(s) - e.g. @-format [fF]@, the user input/filter.
--
--   @f@: filter string (user input)
--
--   @F@: quoted filter string (user input)
data UserStrings = UserStrings

-- | Selected index/indices - e.g. @-format i@
--
--   @i@: selected index (0 - (N-1))
--
--   @i@: selected index (1 - N)
data SelectIndices = SelectIndices

data DummyOutput = DummyOutput

instance InterpretOutput DummyOutput a where
  type OutputSpec DummyOutput = '_'
  type OutputParams DummyOutput = ()
  interpretOutput _ _ = Left "Output not considered"

-- | Splits on every newline. Result is a list of rows.
instance InterpretOutput SelectValues [LazyByteString] where
  type OutputSpec SelectValues = 's'
  type OutputParams SelectValues = ()
  interpretOutput _ = Right . LB.splitWith (== toEnum (fromEnum '\n'))

-- | Splits on every newline. Result is a list of rows.
instance InterpretOutput SelectValues [LazyText] where
  type OutputSpec SelectValues = 's'
  type OutputParams SelectValues = ()
  interpretOutput _ = Right . TL.lines . TLE.decodeUtf8

-- | Select a single value.
--
-- Does not split the output into multiple lines even when returning multiple results.
-- One trailing newline is trimmed from the output if it exists
instance InterpretOutput SelectValues LazyText where
  type OutputSpec SelectValues = 's'
  type OutputParams SelectValues = ()
  interpretOutput _ = Right . trimEnd . TLE.decodeUtf8
    where
      trimEnd txt = fromMaybe txt (TL.stripSuffix "\n" txt)

-- | See the instance for @"LazyText"@
instance InterpretOutput SelectValues String where
  type OutputSpec SelectValues = 's'
  type OutputParams SelectValues = ()
  interpretOutput _ = Right . TL.unpack . trimEnd . TLE.decodeUtf8
    where
      trimEnd txt = fromMaybe txt (TL.stripSuffix "\n" txt)

-- | See the instance for @"LazyText"@
instance InterpretOutput UserStrings String where
  type OutputSpec UserStrings = 'f'
  type OutputParams UserStrings = ()
  interpretOutput _ = Right . TL.unpack . trimEnd . TLE.decodeUtf8
    where
      trimEnd txt = fromMaybe txt (TL.stripSuffix "\n" txt)

-- | Selected indices
instance InterpretOutput SelectIndices [Int] where
  type OutputSpec SelectIndices = 'i'
  type OutputParams SelectIndices = ()
  interpretOutput _ = Right . mapMaybe (readMaybe . TL.unpack) . TL.lines . TLE.decodeUtf8

-- | Selects the first readable index value if there were multiple selections.
instance InterpretOutput SelectIndices Int where
  type OutputSpec SelectIndices = 'i'
  type OutputParams SelectIndices = ()
  interpretOutput _ =
    maybe (Left "No index response") Right
      . listToMaybe
      . mapMaybe (readMaybe . TL.unpack)
      . TL.lines
      . TLE.decodeUtf8

-- * InputFeed

-- | @LC8.unlines $ map (renderInputRow (renderRow input0)) allInput@
type InputFeed a = a -> LazyByteString

-- * RofiPromptConfig

-- | Specialized to select string output
type RofiPromptConfig' = forall a. RofiPromptConfig [a] SelectValues

data RofiPromptConfig (input :: Type) (outputSpec :: k) = RofiPromptConfig
  { modes :: [Mode]
  -- ^ Modes to enable.e.g. @"clipboard:cliphist-rofi-img"@ @-modes@
  , showMode :: Maybe Mode
  -- ^ Which mode to open with. @-show@
  , showIcons :: Bool
  -- ^ Enable showing icons? __flag__: @-show-icons@
  , dpi :: Int
  -- ^ Override DPI. __Int__: @ -dpi @
  , history :: Maybe (PromptHistory input)
  -- ^ __str__: If 'Just', history is saved under this key
  -- , toPromptInput :: Maybe (InputFeed input)
  , dmenuMode :: Bool
  -- ^ Use rofi-dmenu mode. @-dmenu@
  , markupInput :: Bool
  -- ^ (dmenu) Input is Pango Markup encoded. @-markup-rows@
  , noCustomInput :: Bool
  -- ^ (dmenu) Do not allow custom input. @-no-custom@
  , maxLines :: Int
  -- ^ (dmenu) Number of lines to show. @-l@
  , rowHeight :: Int
  -- ^ Row height in characters (default: 1)
  , multiSelect :: Bool
  -- ^ (dmenu) possible to select multiple lines?
  , prompt :: String
  -- ^ (dmenu) Prompt text. @-p Prompt:@
  , promptMessage :: String
  -- ^ (dmenu) Message line below the filter entry box. Supports Pango markup. @ -mesg @.
  , activeRow :: [Int]
  -- ^ (dmenu) Active row(s). @-a@
  , urgentRow :: [Int]
  -- ^ (dmenu) Urgent row(s). @-u@
  , selectedRow :: Int
  -- ^ Which row to select at the beginning
  , displayColumns :: [Int]
  -- ^ (dmenu) Columns to display. @-display-columns@
  , columnSeparator :: String
  -- ^ (dmenu) Display column separator. (Regex)
  , extraArgs :: [String]
  -- ^ Additional arguments to rofi
  , smartCase :: Bool
  -- ^ --smart-case
  , filterString :: String
  -- ^ Sets the initial filter string input
  , matching :: String
  -- ^ Matching style: normal,regex,glob,fuzzy,prefix
  }
  deriving stock (Generic)
  deriving anyclass (Default)

clearTypeParams :: forall i1 o1 i o. RofiPromptConfig i o -> RofiPromptConfig i1 o1
clearTypeParams pc = pc{history = Nothing}

-- * PromptHistory

data PromptHistory i = HistoryUsing
  { historyKey :: String
  , historyRestore :: [LazyText] -> i
  , historyMerge :: i -> i -> i
  , historyEncode :: LazyText -> Maybe LazyText
  }

type HistoryRestore a = [LazyText] -> a

-- * InputRowAttrs

data InputRowAttrs = InputRowAttrs
  { icon :: ![Text]
  -- ^ icon to display for the row
  , display :: !P.Markup
  -- ^ replace displayed string
  , meta :: ![Text]
  -- ^ meta strings for filtering
  , nonselectable :: !Bool
  -- ^ Makes the row non-selectable
  , permanent :: !Bool
  -- ^ Whether to always show this row
  , urgent :: !Bool
  -- ^ Mark row as urgent
  , active :: !Bool
  -- ^ Mark row as active
  }
  deriving (Eq, Default, Generic)

-- * Mode selectors

data Mode
  = Mode String
  | ModeCustom String FilePath
  deriving stock (Eq, Ord, Show, Read, Generic, Data)

instance IsString Mode where
  fromString str
    | (ti, ':' : sc) <- L.break (== ':') str = ModeCustom ti sc
    | otherwise = Mode str

--  |
--  @
--  RofiColumns [["row1", "row1b"], ["row2", "row3"]]
--     :: ColumnsInput '\x1' 2 [[Markup]]
--  @
data RofiColumns input = RofiColumns
  { columnsInput :: input
  , columnsSep :: Char
  , columnsHeader :: Bool
  }
  deriving (Eq)

-- * HasColumns

class (KnownNat (ColumnsCount a)) => HasColumns a where
  type ColumnsCount a :: Nat

  -- Columns of a single item as a list of bytestrings
  getColumns :: a -> [LazyByteString]
  default getColumns :: forall a0. (P.ToMarkup a0, Each a a a0 a0) => a -> [LazyByteString]
  getColumns xs =
    map
      (TLE.encodeUtf8 . TL.fromStrict . P.render . P.toMarkup)
      (xs ^.. each :: [a0])

instance (P.ToMarkup a) => HasColumns (a, a) where type ColumnsCount (a, a) = 2
instance (P.ToMarkup a) => HasColumns (a, a, a) where type ColumnsCount (a, a, a) = 3
instance (P.ToMarkup a) => HasColumns (a, a, a, a) where type ColumnsCount (a, a, a, a) = 4
instance (P.ToMarkup a) => HasColumns (a, a, a, a, a) where type ColumnsCount (a, a, a, a, a) = 5

-- * Lenses

makeLenses' [''RofiPromptConfig, ''PromptHistory, ''InputRowAttrs, ''RofiColumns]

-- * Launch

-- | Launch a prompt (async) without reading the output.
launchRofi :: forall m. (MonadRofi m) => RofiPromptConfig () DummyOutput -> m (Async ())
launchRofi rp = do
  pc <- setStdin nullStream . setStdout nullStream <$> rofiToProc rp
  logProcessConfig "rofi-mode" pc
  async $ do
    res <- try @_ @SomeException $ runProcess pc
    logInfo $ "rofi: launch finished" :# ["result" .= show res]

-- | Like "launchRofi" but discards output
launchRofi_ :: forall m. (MonadRofi m) => RofiPromptConfig () DummyOutput -> m ()
launchRofi_ = void . launchRofi

-- | Launch a prompt (synchronous) with input and read the output.
runRofi ::
  forall i outputSpec m a.
  (MonadRofi m, InterpretOutput outputSpec a, RofiRunnable m i outputSpec a, Default (OutputParams outputSpec)) =>
  RofiPromptConfig i outputSpec
  -> i
  -> m (Maybe (Either String a))
runRofi pcfg in0 = runRofiWith pcfg (flip (rofiRunnableInput @_ @m @i @outputSpec @a) pcfg) in0 def

runRofiWith ::
  forall i outputSpec m a.
  (MonadRofi m, InterpretOutput outputSpec a) =>
  RofiPromptConfig i outputSpec
  -> InputFeed i
  -> i
  -> OutputParams outputSpec
  -> m (Maybe (Either String a))
runRofiWith pcfg toInput input0 out0 = do
  logInfo $
    "rofi: launch initiated"
      :# [ "prompt" .= pcfg.prompt
         , "message" .= pcfg.promptMessage
         , "history" .= maybe "-" (.historyKey) pcfg.history
         , "format" .= [charVal (Proxy @(OutputSpec outputSpec))]
         ]
  inputBS <- toInput <$> rofiHistoryInput toInput pcfg input0
  pc <- setStdin (byteStringInput inputBS) <$> rofiToProc @i @outputSpec @m @a pcfg
  logProcessConfig "rofi" pc
  res <- try @_ @SomeException $ withProcessWait pc $ \p -> do
    atomically $ (,) <$> waitExitCodeSTM p <*> getStdout p
  case res of
    Right (ExitSuccess, "") -> do
      logInfo $ "rofi: success but no output" :# ["prompt" .= pcfg.prompt]
      return Nothing
    Right (ExitSuccess, out) -> do
      logInfo $ "rofi: success (exited)" :# ["prompt" .= pcfg.prompt, "output" .= C8.unpack (LB.toStrict out)]
      rofiHistorySave pcfg out
      return $ Just $ interpretOutput @_ @outputSpec out0 out
    Right (ExitFailure ec, _out) -> do
      logError $ "rofi: error exit code" :# ["code" .= show ec]
      return Nothing
    Left emsg -> do
      logError $ "rofi: exception occurred" :# ["message" .= tshow emsg]
      return Nothing

-- | Build rofi process config
rofiToProc ::
  forall i outputSpec m a.
  (MonadLoggerIO m, InterpretOutput outputSpec a) =>
  RofiPromptConfig i outputSpec
  -> m (ProcessConfig () (STM LazyByteString) (Async ()))
rofiToProc pcfg = do
  logger <- askLoggerIO
  return $
    setStderr (logOutput logger "rofi" LevelWarn ["stream" .= ("stderr" :: String)]) $
      setStdout byteStringOutput $
        setCloseFds True $
          setNewSession True $
            proc "rofi" (toRofiArgs pcfg)
  where
    toRofiArgs pc =
      join $
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
          ++ [["-a", L.intercalate "," $ map show pc.activeRow] | pc.activeRow /= mempty]
          ++ [["-u", L.intercalate "," $ map show pc.urgentRow] | pc.urgentRow /= mempty]
          ++ [["-selected-row", show pc.selectedRow] | pc.selectedRow /= 0]
          ++ [["-format", x] | let x = getFormat (Proxy @outputSpec), x /= "s" && x /= "_"]
          ++ [["-display-columns", L.intercalate "," $ map show pc.displayColumns] | pc.displayColumns /= mempty]
          -- note: display-column-separator is a regex
          ++ [["-display-column-separator", pc.columnSeparator] | pc.columnSeparator /= mempty]
          ++ [pc.extraArgs]

    modeName (Mode s) = s
    modeName (ModeCustom ti _) = ti
    fromMode (Mode s) = s
    fromMode (ModeCustom ti sc) = ti ++ ":" ++ sc

    getFormat _ = [charVal (Proxy @(OutputSpec outputSpec))]

-- * InputRow render

inputRowWithAttrs :: (row -> LazyByteString) -> row -> InputRowAttrs -> LazyByteString
inputRowWithAttrs toContent input attr = toContent input <> TLE.encodeUtf8 extra
  where
    extra =
      TLB.toLazyText . mconcat $
        zipWith (<>) (TLB.singleton '\0' : L.repeat (TLB.singleton '\x1f')) $
          catMaybes
            [ opt "icon" attr.icon (/= mempty) (TLB.fromLazyText . TL.intercalate "," . map TL.fromStrict)
            , opt "display" attr.display (/= mempty) (TLB.fromText . P.render)
            , opt "meta" attr.meta (/= mempty) (TLB.fromLazyText . TL.unwords . map TL.fromStrict)
            , opt "nonselectable" attr.nonselectable id (const "true")
            , opt "permanent" attr.permanent id (const "true")
            , opt "urgent" attr.urgent id (const "true")
            , opt "active" attr.active id (const "true")
            ]
    opt field v check render = guard (check v) $> (field <> TLB.singleton '\x1f' <> render v)

-- * History Input

-- | Get input with history (if configured).
rofiHistoryInput :: (MonadRofi m) => InputFeed i -> RofiPromptConfig i o -> i -> m i
rofiHistoryInput toInput pc input0
  | Just hi <- pc.history = do
      withHistoryFile pc.history input0 $ \histFile ->
        io (doesFileExist histFile) >>= \case
          True -> do
            contents <- TL.lines . TLE.decodeUtf8 <$> io (LB.readFile histFile)
            let input = hi.historyRestore contents
                final = hi.historyMerge input input0
            logDebug $ "rofi:  read history from file" :# ["file" .= histFile, "final" .= tshow (toInput final)]
            L.last contents `seq` return final
          False -> return input0
  | otherwise = return input0

-- | Save a history entry.
rofiHistorySave :: forall m i o. (MonadRofi m) => RofiPromptConfig i o -> LazyByteString -> m ()
rofiHistorySave pc val =
  io $ withHistoryFile pc.history () $ \histFile -> do
    case pc.history of
      Just hi -> do
        createDirectoryIfMissing True (takeDirectory histFile)
        lines0 <- TL.lines . TLE.decodeUtf8 <$> LB.readFile histFile
        let it = hi.historyEncode $ TLE.decodeUtf8 val
        case it of
          Just x -> do
            let lines1 = L.nub $ lines0 ++ [x]
            L.last lines0 `seq` LB.writeFile histFile (TLE.encodeUtf8 $ TL.unlines lines1)
          Nothing -> return ()
      Nothing -> return ()

withHistoryFile :: (MonadIO m) => Maybe (PromptHistory i) -> a -> (FilePath -> m a) -> m a
withHistoryFile pch d f = case pch of
  Just hi -> do
    dir <- io $ getXdgDirectory XdgCache "hswm/rofi"
    f $! dir ++ "/" ++ hi.historyKey ++ ".history"
  Nothing -> return d

-- * RofiRunnable class

class (MonadRofi m, InterpretOutput outputSpec a) => RofiRunnable (m :: Type -> Type) i (outputSpec :: k) a where
  rofiRunnableInput :: i -> RofiPromptConfig i outputSpec -> LazyByteString

  rofiRunnablePromptGet :: i -> RofiPromptConfig i outputSpec -> RofiPromptConfig i outputSpec
  rofiRunnablePromptGet _ pc = pc

  rofiRunnablePrompt :: i -> Maybe (PromptHistory i) -> RofiPromptConfig any outputSpec -> RofiPromptConfig i outputSpec
  default rofiRunnablePrompt :: (Default (OutputParams outputSpec)) => i -> Maybe (PromptHistory i) -> RofiPromptConfig any outputSpec -> RofiPromptConfig i outputSpec
  rofiRunnablePrompt _ hi pc = let pc' = pc{history = hi} in pc'

  rofiRunMaybe :: (Default (OutputParams outputSpec)) => RofiPromptConfig i outputSpec -> i -> m (Maybe a)
  rofiRunMaybe pconf input = rofiRunWith @_ @m @i @outputSpec @a toInput pconf.history pconf input (def @(OutputParams outputSpec))
    where
      toInput = flip (rofiRunnableInput @_ @m @i @outputSpec @a) pconf

  rofiRunWith :: InputFeed i -> Maybe (PromptHistory i) -> RofiPromptConfig i outputSpec -> i -> OutputParams outputSpec -> m (Maybe a)
  default rofiRunWith :: (Default (OutputParams outputSpec)) => InputFeed i -> Maybe (PromptHistory i) -> RofiPromptConfig i outputSpec -> i -> OutputParams outputSpec -> m (Maybe a)
  rofiRunWith toInput hist pconf input output = runRofiWith @i @outputSpec @m @a pconf' toInput input output <&> (>>= interp)
    where
      interp = either (const Nothing) Just
      pconf' =
        rofiRunnablePromptGet @_ @m @i @outputSpec @a input pconf
          & history .~ hist

instance (MonadRofi m, InterpretOutput spec a, Default (OutputParams spec)) => RofiRunnable m LazyByteString spec a where
  rofiRunnableInput inp _ = inp

instance (MonadRofi m, P.ToMarkup i, InterpretOutput spec a, Default (OutputParams spec)) => RofiRunnable m [(i, InputRowAttrs)] spec a where
  rofiRunnableInput inp _ = LB.intercalate "\n" . map (uncurry $ inputRowWithAttrs $ TLE.encodeUtf8 . TL.fromStrict . P.render . P.toMarkup) $ inp

instance {-# OVERLAPS #-} (MonadRofi m, P.ToMarkup i, InterpretOutput spec a, Default (OutputParams spec)) => RofiRunnable m [i] spec a where
  rofiRunnableInput inp _ = LB.intercalate "\n" . map (TLE.encodeUtf8 . TL.fromStrict . P.render . P.toMarkup) $ inp

-- * Infix operators

-- | runRofi + interpret output
--
-- @
-- INPUT -->> CONFIG :-->> HANDLER
-- @
data (:-->>) m i o a r = RofiPromptConfig i o :-->> (a -> m r)

(-->>) :: forall m i o a r. (Default (OutputParams o)) => (RofiRunnable m i o a) => i -> (:-->>) m i o a r -> m (Maybe r)
inp -->> (pc :-->> f) = rofiRunMaybe pc inp >>= traverse f

(--?>>) :: forall m i o a r. (Default (OutputParams o)) => (RofiRunnable m i o a) => i -> (:-->>) m i o a (Maybe r) -> m (Maybe r)
inp --?>> (pc :-->> f) = rofiRunMaybe pc inp >>= fmap join . traverse f

(++>) :: (Monad m) => m (Maybe a) -> (a -> m ()) -> m ()
ma ++> f = ma >>= flip whenJust f

infixr 0 --?>>
infixr 0 :-->>
infixr 0 -->>
infixr 0 ++>

-- * Columns

instance
  (MonadRofi m, HasColumns a, InterpretOutput SelectIndices Int) =>
  RofiRunnable m (RofiColumns [(a, InputRowAttrs)]) SelectIndices Int
  where
  rofiRunnableInput ci _ =
    LB.intercalate "\n" $
      map (uncurry $ inputRowWithAttrs (LB.intercalate (fromString [ci.columnsSep]) . getColumns)) ci.columnsInput

  rofiRunnablePromptGet ci =
    (displayColumns .~ [1 .. fromIntegral $ natVal (Proxy @(ColumnsCount a))])
      . (columnSeparator .~ [ci.columnsSep])
      . (if ci.columnsHeader then selectedRow %~ max 1 else id)

-- | Create a new columns containing the specified list of items.
withColumns :: (Foldable t) => t a -> RofiColumns [(a, InputRowAttrs)]
withColumns input =
  RofiColumns
    { columnsInput = map (,def) (toList input)
    , columnsSep = '\x1'
    , columnsHeader = True
    }

columnsFreezeRow :: Int -> RofiColumns [(a, InputRowAttrs)] -> RofiColumns [(a, InputRowAttrs)]
columnsFreezeRow n = columnsInput . ix n . _2 %~ ((nonselectable .~ True) . (permanent .~ True))

columnsWithHeader :: (Foldable t) => a -> t a -> RofiColumns [(a, InputRowAttrs)]
columnsWithHeader hdr input = columnsFreezeRow 0 $ withColumns $ hdr : toList input
