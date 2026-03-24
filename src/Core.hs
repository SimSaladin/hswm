{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE OverloadedRecordDot #-}

{-# LANGUAGE DuplicateRecordFields #-}
{-# OPTIONS_GHC -Wno-ambiguous-fields -Wno-unused-record-wildcards -Wno-name-shadowing #-}


module Core
  ( module Core
  , module Wayland.Bindings
  , module RiverWM.Bindings
  , module RiverWM.XKB
  ) where

import Wayland.Bindings
import RiverWM.Bindings
import RiverWM.XKB

import Control.Monad.State
import Control.Monad.Reader
import Data.Default
import Control.Concurrent
import Control.Concurrent.STM
import Foreign hiding (new, void)
import Foreign.C
import Control.Monad
import Data.Maybe
import Control.Exception
import System.Exit

data WaylandDisplayException = WaylandDisplayConnectFailed deriving Show
instance Exception WaylandDisplayException

openDisplay :: String -> IO WlDisplay
openDisplay s = do
  display@(WlDisplay p) <- if s == "" then wl_display_connect nullPtr
                        else withCString s wl_display_connect
  when (p == nullPtr) $ throwIO WaylandDisplayConnectFailed
  return display

data SeatOp = SEAT_OP_NONE
            | SEAT_OP_MOVE
            | SEAT_OP_RESIZE

data Action = ACTION_NONE

data Seat = Seat
  { object :: RiverSeat
  , new :: Bool
  , removed :: Bool

  , focused, hovered, interacted :: RiverWindow

  , op_window :: RiverWindow
  , op :: SeatOp
  , op_release :: Bool
  , op_start_x, op_start_y, op_dx, op_dy :: Int
  , op_start_width, op_start_height :: Int
  , op_edges :: Int
  , xkb_bindings :: [XkbBinding]
  , pointer_bindings :: [()]
  , pending_action :: Action
  }

data Output = Output
  { object :: RiverOutput
  , new :: Bool
  , removed :: Bool
  }

data Window = Window
  { object :: RiverWindow
  , new :: Bool
  , node :: RiverNode
  , closed :: Bool
  , x, y, width, height :: Int
  , pointer_move_requested :: RiverSeat
  , pointer_resize_requested :: RiverSeat
  , pointer_resize_requested_edges :: Int
  }

data Event = EOutput OutputEvent
           | EWindow WindowEvent
           | EManage WindowManagerEvent
           | ESeat SeatEvent

data HConfig = HConfig
  { handleEventHook :: Event -> H ()
  }

instance Default HConfig where
  def = HConfig
    { handleEventHook = \_ -> return () }

data HState = HState
  { _seats :: [Seat]
  , _outputs :: [Output]
  , _windows :: [Window]
  , _riverWM :: MVar RiverWindowManager
  , _xkbBinds :: MVar RiverXkbBindings
  }

newtype H a = H (ReaderT HConfig (StateT HState IO) a)
  deriving (Functor, Applicative, Monad, MonadFail, MonadIO, MonadState HState, MonadReader HConfig)

runH :: HConfig -> HState -> H a -> IO (a, HState)
runH c st (H a) = runStateT (runReaderT a c) st

newState :: HConfig -> IO HState
newState _ = HState mempty mempty mempty
  <$> newEmptyMVar
  <*> newEmptyMVar

startHSWM :: WlDisplay -> HConfig -> IO ()
startHSWM display conf = do
  st <- newState conf

  stTMVar <- newTMVarIO st

  let runInH :: H a -> IO a
      runInH a = do
        st' <- atomically $ takeTMVar stTMVar
        (r, st'') <- runH conf st' a
        atomically $ putTMVar stTMVar st''
        return r

  regListenerPtr <- mkRegistryListener $ WlRegistryListener
      (\_data registry name ifacePtr _version -> do
        iface <- peekCString ifacePtr
        case iface of
          "river_window_manager_v1" -> do
            bound <- wl_registry_bind registry name river_window_manager_v1_interface 4
            putStrLn $ "river_window_manager_v1 bound"
            putMVar (_riverWM st) bound
          "xkb_bindings_v1" -> do
            bound <- wl_registry_bind registry name river_xkb_bindings_v1_interface 1
            putStrLn $ "river_xkb_bindings_v1 bound"
            putMVar (_xkbBinds st) bound
          _ -> return () -- putStrLn $ "register-global: unhandled iface: " ++ iface ++ " (version: " ++ show version ++ ", name: " ++ show name ++ ")"
      )
      (\_data _reg _name -> return ())

  registry <- wl_display_get_registry display
  wl_registry_add_listener registry regListenerPtr nullPtr

  roundtrip <- wl_display_roundtrip display
  putStrLn $ "Roundtrip: " ++ show roundtrip

  -- check windowManagerMVar exists

  windowManager <- readMVar (_riverWM st)

  window_listener <- mkWindowListener $ \e -> runInH $ processWindowEvent e
  seat_listener <- mkSeatListener $ \e -> runInH $ processSeatEvent e
  output_listener <- newOutputListener $ \e -> runInH $ processOutputEvent e

  let processManagerEvent :: WindowManagerEvent -> H ()
      processManagerEvent e = do
       liftIO $ putStrLn $ "[event][m] " ++ _debugManagerEvent e
       case e of
        WindowManagerUnavailable{} -> liftIO $ do
          putStrLn "error: another window manager already running"
          exitFailure
        WindowManagerFinished{} -> liftIO exitSuccess

        WindowManagerManageStart _dt wm -> do
          manageCleanup
          manageWindows
          manageSeats
          liftIO $ wmManageFinish wm

        WindowManagerRenderStart _ wm -> do
          mapSeats seatRender
          liftIO $ wmRenderFinish wm

        WindowManagerWindow _ _wm w -> do
          nd <- liftIO $ river_window_v1_get_node w
          let win = Window { object = w, new = True, node = nd, closed = False, x = 0, y = 0, width = 0, height = 0, pointer_move_requested = invalidSeat,
              pointer_resize_requested = invalidSeat
                           , pointer_resize_requested_edges = 0
                           }
          liftIO $ river_window_v1_add_listener w window_listener nullPtr
          modify $ \s -> s { _windows = _windows s ++ [win] }

        WindowManagerOutput _ _ river_output -> do
          let output = Output { object = river_output, new = True, removed = False }
          liftIO $ river_output_v1_add_listener river_output output_listener nullPtr
          modify $ \s -> s { _outputs = _outputs s ++ [output] }

        WindowManagerSeat _ _ river_seat -> do
          let seat = Seat { object = river_seat, new = True, removed = False, hovered = invalidWindow, interacted = invalidWindow, focused = invalidWindow, op_window = invalidWindow, op = SEAT_OP_NONE, op_release = False, xkb_bindings = [], pointer_bindings = []
                          , op_start_x = 0, op_start_y = 0, op_dx = 0, op_dy = 0
                          , op_start_width = 0, op_start_height = 0
                          , op_edges = 0
                          , pending_action = ACTION_NONE
                          }
          liftIO $ river_seat_v1_add_listener river_seat seat_listener nullPtr
          modify $ \s -> s { _seats = _seats s ++ [seat] }

        _ -> return ()

  wmListener <- mkWindowManagerListener $ \e -> runInH $ processManagerEvent e

  _ <- river_window_manager_v1_add_listener windowManager wmListener nullPtr

  let loop = do res <- wl_display_dispatch display
                when (res < 0) $ do
                  putStrLn $ "error: dispatch failed"
                  exitFailure
                loop
  loop

create_seat_bindings :: Seat -> H Seat
create_seat_bindings s = do
  -- xkb bindings
  --xkb_binding_create s super k action
  -- pointer bindings
  -- pointer_binding_create s super k action
  return s

window_set_position :: Window -> Int -> Int -> H ()
window_set_position w x y = do
  liftIO $ river_node_v1_set_position (node w) x y
  -- XXX track x,y in w ?

withSeat :: RiverSeat -> (Seat -> H ()) -> H ()
withSeat sid f = gets _seats >>= mapM_ (\s -> if s.object == sid then f s else return ())

withWindow :: RiverWindow -> (Window -> H ()) -> H ()
withWindow wid f = gets _windows >>= mapM_ (\w -> if w.object == wid then f w else return ())

modifyWindow :: RiverWindow -> (Window -> Window) -> H ()
modifyWindow w f = modify $ \s -> s { _windows = map g s._windows }
  where g x | x.object == w = f x
            | otherwise = x
modifyOutput :: RiverOutput -> (Output -> Output) -> H ()
modifyOutput ro f = modify $ \s -> s { _outputs = map g (_outputs s) }
  where g x@Output{..} | object == ro = f x
                       | otherwise = x
modifySeat :: RiverSeat -> (Seat -> Seat) -> H ()
modifySeat ro f = modify $ \s -> s { _seats = map g (_seats s) }
  where g x@Seat{..} | object == ro = f x
                     | otherwise = x

mapSeats :: (Seat -> H Seat) -> H ()
mapSeats f = gets _seats >>= mapM f >>= \xs -> modify (\s -> s { _seats = xs })

processOutputEvent :: OutputEvent -> H ()
processOutputEvent e = do
  liftIO $ putStrLn $ "[event][o] " ++ show e
  case e of
    OutputHandlerRemoved _ o -> modifyOutput o $ \x -> x { removed = True }
    _ -> return ()

processWindowEvent :: WindowEvent -> H ()
processWindowEvent e = do
  liftIO $ putStrLn $ "[event][w] " ++ show e
  case e of
    WindowClosed _ w -> modifyWindow w $ \s -> s { closed = True }
    WindowDimensions{..} -> modifyWindow we_window $ \s -> s { width = fromIntegral we_width, height = fromIntegral we_height }
    WindowPointerMoveRequested{..} -> modifyWindow we_window $ \s -> s { pointer_move_requested = we_seat }
    WindowPointerResizeRequested{..} -> modifyWindow we_window $ \s -> s { pointer_resize_requested = we_seat, pointer_resize_requested_edges = fromIntegral we_edges }
    _ -> return ()
  evHook <- asks handleEventHook
  evHook (EWindow e)

processSeatEvent :: SeatEvent -> H ()
processSeatEvent e = do
  liftIO $ putStrLn $ "[event][s] " ++ show e
  case e of
    SeatRemoved _ seat -> modifySeat seat $ \x -> x { removed = True }
    SeatEventPointerEnter{..} -> modifySeat seat_event_seat $ \s -> s { hovered = seat_event_window }
    SeatEventPointerLeave{..} -> modifySeat seat_event_seat $ \s -> s { hovered = invalidWindow }
    SeatEventWindowInteraction{..} -> modifySeat seat_event_seat $ \s -> s { interacted = seat_event_window }
    SeatEventOpDelta{..} -> modifySeat seat_event_seat $ \s -> s { op_dx = fromIntegral seat_event_dx, op_dy = fromIntegral seat_event_dy }
    SeatEventOpRelease{..} -> modifySeat seat_event_seat $ \s -> s { op_release = True }
    _ -> return ()

-- | Destroy closed windows and removed outputs/seats
manageCleanup :: H ()
manageCleanup = do
  gets _outputs >>= \xs -> do
    xs' <- forM xs $ \out@Output{..} -> if removed then doRemoveOutput object else return (Just out)
    modify $ \s -> s { _outputs = catMaybes xs' }
  gets _seats >>= \xs -> do
    xs' <- forM xs $ \seat@Seat{..} -> if removed then doRemoveSeat seat else return (Just seat)
    modify $ \s -> s { _seats = catMaybes xs' }
  gets _windows >>= \xs -> do
    xs' <- forM xs $ \w@Window{..} -> if closed then doRemoveWindow w else return (Just w)
    modify $ \s -> s { _windows = catMaybes xs' }
 where
   doRemoveWindow w@Window{} = do
     gets _seats >>= \xs -> do
       xs' <- forM xs $ \seat' -> do
         let seat = seat' { focused = if focused seat' == w.object then invalidWindow else focused seat' }
         if (op_window seat == w.object)
            then do
                liftIO $ river_seat_v1_op_end (seat.object)
                return $ seat { op_window = invalidWindow, op = SEAT_OP_NONE }
            else return $ seat
       modify $ \s -> s { _seats = xs' }
     liftIO $ river_window_v1_destroy (w.object)
     return Nothing
   doRemoveOutput out = do
     liftIO $ river_output_v1_destroy out
     return Nothing
   doRemoveSeat Seat{..} = do
     forM_ xkb_bindings $ xkb_binding_destroy
     forM_ pointer_bindings $ pointer_binding_destroy
     liftIO $ river_seat_v1_destroy object
     return Nothing

manageWindows :: H ()
manageWindows = do
  newWindows <- gets _windows >>= \xs -> forM xs $ \w -> do
      when w.new $ do
        window_set_position w  0  0
        liftIO $ river_window_v1_propose_dimensions w.object 0 0
      when (w.pointer_move_requested /= invalidSeat) $ do
        seat_pointer_move w.pointer_move_requested w
      when (w.pointer_resize_requested /= invalidSeat) $ do
        seat_pointer_resize w.pointer_resize_requested w w.pointer_resize_requested_edges
      return (w :: Window) { new = False, pointer_move_requested = invalidSeat, pointer_resize_requested = invalidSeat  }
  modify $ \s -> s { _windows = newWindows }

manageSeats :: H ()
manageSeats = do
    newSeats <- gets _seats >>= \xs -> forM xs $ \s@Seat{..} ->
        if new then create_seat_bindings (s :: Seat) { new = False }
               else return s
    modify $ \s -> s { _seats = newSeats }

    gets _seats >>= \xs -> forM_ xs $ \s -> do

      withWindow s.interacted $ \w -> seat_focus s w
      seat_action s s.pending_action
      modifySeat s.object $ \s -> s { interacted = invalidWindow, pending_action = ACTION_NONE }

      case s.op of
        SEAT_OP_NONE -> return ()
        SEAT_OP_MOVE -> do
          when s.op_release $ do
            liftIO $ river_seat_v1_op_end s.object
            modifySeat s.object $ \s -> s { op = SEAT_OP_NONE, op_window = invalidWindow }
        SEAT_OP_RESIZE -> do
          when s.op_release $ do
            liftIO $ river_window_v1_inform_resize_end s.op_window
            liftIO $ river_seat_v1_op_end s.object
            modifySeat s.object $ \s -> s { op = SEAT_OP_NONE, op_window = invalidWindow }
          withWindow s.op_window $ \w -> do
            let width = s.op_start_width
                  - (if ((s.op_edges .&. (fromIntegral $ fromEnum RiverWindowV1EdgesLeft)) /= 0)  then s.op_dx else 0)
                  + (if ((s.op_edges .&. (fromIntegral $ fromEnum RiverWindowV1EdgesRight)) /= 0) then s.op_dx else 0)
            let height = s.op_start_height
                  - (if ((s.op_edges .&. (fromIntegral $ fromEnum RiverWindowV1EdgesTop)) /= 0)    then s.op_dy else 0)
                  + (if ((s.op_edges .&. (fromIntegral $ fromEnum RiverWindowV1EdgesBottom)) /= 0) then s.op_dy else 0)
            liftIO $ river_window_v1_propose_dimensions w.object (if width > 1 then width else 1) (if height > 1 then height else 1)

      when s.op_release $ modifySeat s.object $ \s -> s { op_release = False }


xkb_binding_destroy :: XkbBinding -> H ()
xkb_binding_destroy = undefined

pointer_binding_destroy = undefined

seatRender :: Seat -> H Seat
seatRender s = do
  case s.op of
    SEAT_OP_NONE -> return ()
    SEAT_OP_MOVE -> do
      withWindow s.op_window $ \w -> window_set_position w (s.op_start_x + s.op_dx) (s.op_start_y + s.op_dy)
    SEAT_OP_RESIZE -> withWindow s.op_window $ \w -> do
      let x = s.op_start_x + (if (s.op_edges .&. fromEnum RiverWindowV1EdgesLeft) /= 0 then s.op_start_width - w.width else 0)
      let y = s.op_start_y + (if (s.op_edges .&. fromEnum RiverWindowV1EdgesTop) /= 0 then s.op_start_height - w.height else 0)
      window_set_position w x y
  return s

seat_focus :: Seat -> Window -> H ()
seat_focus s w = do
  toFocus <- if w.object == invalidWindow then
                                          gets _windows >>= \xs -> case xs of
                                                                     x : _ -> return x
                                                                     _ -> return w
                                          else return w

  if toFocus.object /= s.focused then
                                 do
                                      let w = toFocus.object
                                      when (w /= invalidWindow) $ do
                                        liftIO $ river_seat_v1_focus_window s.object w
                                        liftIO $ river_node_v1_place_top toFocus.node
      else
        liftIO $ river_seat_v1_clear_focus s.object

  modifySeat s.object $ \s -> s { focused = toFocus.object }

seat_pointer_move :: RiverSeat -> Window -> H ()
seat_pointer_move sid w = withSeat sid $ \s -> do
  seat_focus s w
  liftIO $ river_seat_v1_op_start_pointer s.object
  modifySeat s.object $ \s -> s
    { op = SEAT_OP_MOVE
    , op_window = w.object
    , op_start_x = w.x
    , op_start_y = w.y
    , op_dx= 0
    , op_dy= 0
    }

seat_pointer_resize :: RiverSeat -> Window -> Int -> H ()
seat_pointer_resize sid w edges = withSeat sid $ \s -> do
  seat_focus s w
  liftIO $ river_window_v1_inform_resize_start w.object
  liftIO $ river_seat_v1_op_start_pointer s.object
  modifySeat s.object $ \s -> s
    { op = SEAT_OP_RESIZE
    , op_window = w.object
    , op_edges = edges
    , op_start_x = w.x
    , op_start_y = w.y
    , op_start_width = w.width
    , op_start_height = w.height
    , op_dx = 0
    , op_dy = 0
    }

seat_action :: Seat -> Action -> H ()
seat_action _ action = do
  case action of
    ACTION_NONE -> return ()

xkb_binding_create :: Seat -> Modifiers -> KeySym -> Action -> H ()
xkb_binding_create seat mods keysym action = do
  undefined -- , XKB_KEY_space, ACTION_SPAWN_FOOT);
