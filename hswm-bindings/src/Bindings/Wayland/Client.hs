{-# LANGUAGE RecordWildCards       #-}
{-# LANGUAGE TypeFamilies          #-}
{-# LANGUAGE OverloadedRecordDot   #-}

-- |
-- Module      : Bindings.Wayland.Client
-- Description : Wayland Client bindings
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Bindings.Wayland.Client
  ( module Bindings.Wayland.Client
  , module Safe

  , module Bindings.Wayland.Util
  , module Wayland.Types

  -- *  Outputs
  , Wl_output_subpixel(..)
  , pattern WL_OUTPUT_SUBPIXEL_UNKNOWN
  , pattern WL_OUTPUT_SUBPIXEL_NONE
  , pattern WL_OUTPUT_SUBPIXEL_HORIZONTAL_RGB
  , pattern WL_OUTPUT_SUBPIXEL_HORIZONTAL_BGR
  , pattern WL_OUTPUT_SUBPIXEL_VERTICAL_RGB
  , pattern WL_OUTPUT_SUBPIXEL_VERTICAL_BGR
  , Wl_output_transform(..)
  , pattern WL_OUTPUT_TRANSFORM_NORMAL
  , pattern WL_OUTPUT_TRANSFORM_90
  , pattern WL_OUTPUT_TRANSFORM_180
  , pattern WL_OUTPUT_TRANSFORM_270
  , pattern WL_OUTPUT_TRANSFORM_FLIPPED
  , pattern WL_OUTPUT_TRANSFORM_FLIPPED_90
  , pattern WL_OUTPUT_TRANSFORM_FLIPPED_180
  , pattern WL_OUTPUT_TRANSFORM_FLIPPED_270
  , Wl_output_mode(..)
  , pattern WL_OUTPUT_MODE_CURRENT
  , pattern WL_OUTPUT_MODE_PREFERRED

  , Wl_keyboard_key_state(..)
  , Wl_keyboard_keymap_format(..)
  ) where


import           Bindings.Wayland.Client.Generated
import           Bindings.Wayland.Client.Generated.Global as G
import qualified Bindings.Wayland.Client.Generated.Safe as Safe
import           Bindings.Wayland.Client.Generated.Safe hiding (wl_display_dispatch, wl_display_flush)
import           Bindings.Wayland.Client.Generated.Unsafe (wl_display_dispatch, wl_display_flush)

import           Bindings.Wayland.Util

import           Wayland.Types
import           Wayland.Internal.TH

import           Control.Monad
import           Control.Exception
import           Control.Monad.IO.Class
import           Data.Maybe
import           Foreign
import           Foreign.C
import           Foreign.C.ConstPtr
import           System.Posix

clientFromProtocolXML commonSettings
  { prEnumModule = \_ -> case () of
      _ | otherwise -> ""

  , prProtocolModifier = \proto ->
    let modifyInterface x@Interface{..}
          | interfaceName == "wl_display" = x
            { interfaceRequests = interfaceRequests ++
              [ IRequest "disconnect" ("","") Nothing [] ] }
          | otherwise = x
    in proto { protocolInterfaces = map modifyInterface $ protocolInterfaces proto }

  , prRequestOptions =
    [ ("wl_registry", "bind", def { reqDisable = True }) ]

  } "wayland.xml"

instance Default Output where def = Output nullPtr
instance Default Seat where def = Seat nullPtr

renderNewType "EventQueue" ''Wl_event_queue ""

-- | wl_display object used to create the queue should not be
-- destroyed until all event queues created with it are destroyed.
instance HasDestructor EventQueue where
  objectDestroy (EventQueue evq) = wl_event_queue_destroy evq

data WaylandProtocolError = WaylandProtocolError
  { errCode                :: !Word32
  , errObjectId            :: !Word32
  , errInterface           :: !(ConstPtr Wl_interface)
  , errObjectInterfaceName :: !(Maybe String)
  } deriving (Eq, Show)

instance Exception WaylandProtocolError

data WaylandDisplayError
  = DisplayConnectFailed String
  | DisplayRoundtripFailed Display (Maybe EventQueue)
  | DisplayErrorNum Display Int
  deriving (Eq, Ord, Show)

instance Exception WaylandDisplayError

-- | Connect to a Wayland display.
displayConnect :: MonadIO m => Maybe String -> m Display
{-# INLINE displayConnect #-}
displayConnect marg = liftIO $
  maybe ($ nullPtr) withCString marg $ \c_arg ->
    fmap Display $ throwExIfNull (DisplayConnectFailed "displayConnect") $ wl_display_connect $ ConstPtr c_arg

throwExIfNull ex m = do
  r <- m
  when (r == nullPtr) $ throwIO ex
  return r

throwExIfMinus1 ex m = do
  r <- m
  when (r == -1) $ throwIO ex
  return r

-- | Connect to a Wayland display on an already open fd.
--
-- The display takes ownership of the fd.
displayConnectToFd :: MonadIO m => Fd -> m Display
{-# INLINE displayConnectToFd #-}
displayConnectToFd fd = liftIO $
  fmap Display $ throwExIfNull (DisplayConnectFailed "displayConnectToFd") $ wl_display_connect_to_fd (fromIntegral fd)

-- | Retrieve the Wayland socket FD for polling.
displayGetFd :: MonadIO m => Display -> m Fd
{-# INLINE displayGetFd #-}
displayGetFd (Display disp) = liftIO $ fromIntegral <$> wl_display_get_fd disp

-- | Block until all pending request are processed by the server.
--
-- Returns the number of dispatched events.
--
-- This function uses wl_display_dispatch_queue() internally. It is not allowed
-- to call this function while the thread is being prepared for reading events,
-- and doing so will cause a dead lock.
displayRoundtrip :: MonadIO m => Display -> m Int
{-# INLINE displayRoundtrip #-}
displayRoundtrip disp@(Display d) = liftIO $
  fmap fromIntegral $ throwExIfMinus1 (DisplayRoundtripFailed disp Nothing) $ wl_display_roundtrip d

-- | Block until all pending request are processed by the server.
--
-- Returns the number of dispatched events.
--
-- This function uses wl_display_dispatch_queue() internally. It is not allowed
-- to call this function while the thread is being prepared for reading events,
-- and doing so will cause a dead lock.
displayRoundtripQueue :: MonadIO m => Display -> EventQueue -> m Int
{-# INLINE displayRoundtripQueue #-}
displayRoundtripQueue disp@(Display d) eq@(EventQueue evq) = liftIO $
  fmap fromIntegral $ throwExIfMinus1 (DisplayRoundtripFailed disp (Just eq)) $ wl_display_roundtrip_queue d evq

-- | Set maximum buffer size for connection.
displaySetMaxBufferSize :: MonadIO m => Display -> Maybe Int -> m ()
{-# INLINE displaySetMaxBufferSize #-}
displaySetMaxBufferSize (Display d) msize = liftIO $ wl_display_set_max_buffer_size d $ fromIntegral $ fromMaybe 0 msize

-- | Flush all pending outgoing requests to the server
--
-- This needs to be done regularly to ensure the server receives all your requests.
--
-- This never blocks.  It will write as much data as possible, but if all data could
-- not be written, errno will be set to EAGAIN.  In that case, use poll on the display
-- file descriptor to wait for it to become writable again.
displayFlush :: MonadIO m => Display -> m ()
{-# INLINE displayFlush #-}
displayFlush (Display d) = liftIO $ throwErrnoIfMinus1_ "displayFlush" $ wl_display_flush d

-- | Read events from display file descriptor.
--
-- Calling this function will result in data available on the display file
-- descriptor being read and read events will be queued on their corresponding
-- event queues.
--
-- Before calling this function, depending on what thread it is to be called
-- from, 'displayPrepareReadQueue' or 'displayPrepareRead' needs to
-- be called. See 'displayPrepareReadQueue' for more details.
--
-- When being called at a point where other threads have been prepared to read
-- (using 'displayPrepareReadQueue' or 'displayPrepareRead') this
-- function will sleep until all other prepared threads have either been
-- cancelled (using 'displayCancelRead') or them self entered this
-- function. The last thread that calls this function will then read and queue
-- events on their corresponding event queues, and finally wake up all other
-- 'displayReadEvents' calls causing them to return.
--
-- If a thread cancels a read preparation when all other threads that have
-- prepared to read has either called 'displayCancelRead' or
-- 'displayReadEvents', all reader threads will return without having read
-- any data.
--
-- To dispatch events that may have been queued, call
-- 'displayDispatchPending' or 'displayDispatchQueuePending'.
displayReadEvents :: MonadIO m => Display -> m ()
{-# INLINE displayReadEvents #-}
displayReadEvents (Display d) = liftIO $
  throwErrnoIfMinus1_ "displayReadEvents" $ wl_display_read_events d

-- |  Prepare to read events from the display's file descriptor to a queue.
--
-- This function (or wl_display_prepare_read()) must be called before reading
-- from the file descriptor using wl_display_read_events(). Calling
-- wl_display_prepare_read_queue() announces the calling thread's intention to
-- read and ensures that until the thread is ready to read and calls
-- wl_display_read_events(), no other thread will read from the file descriptor.
-- This only succeeds if the event queue is empty, and if not -1 is returned and
-- errno set to EAGAIN.
--
-- If a thread successfully calls wl_display_prepare_read_queue(), it must
-- either call wl_display_read_events() when it's ready or cancel the read
-- intention by calling 'displayCancelRead'.
--
-- Use this function before polling on the display fd or integrate the fd into a
-- toolkit event loop in a race-free way. A correct usage would be (with most
-- error checking left out):
--
-- @
-- while (displayPrepareReadQueue display queue != 0)
--         displayDispatchQueuePending display queue
-- displayFlush display
--
-- ret = poll(fds, nfds, -1);
-- if (has_error(ret))
--         displayCancelRead display
-- else
--         displayReadEvents display
--
-- displayDispatchQueuePending display queue
-- @
--
-- Here we call wl_display_prepare_read_queue(), which ensures that between
-- returning from that call and eventually calling wl_display_read_events(), no
-- other thread will read from the fd and queue events in our queue. If the call
-- to wl_display_prepare_read_queue() fails, we dispatch the pending events and
-- try again until we're successful.
--
-- The wl_display_prepare_read_queue() function doesn't acquire exclusive access
-- to the display's fd. It only registers that the thread calling this function
-- has intention to read from fd. When all registered readers call
-- wl_display_read_events(), only one (at random) eventually reads and queues
-- the events and the others are sleeping meanwhile. This way we avoid races and
-- still can read from more threads.
displayPrepareReadQueue :: MonadIO m => Display -> EventQueue -> m ()
{-# INLINE displayPrepareReadQueue #-}
displayPrepareReadQueue (Display d) (EventQueue evq) = liftIO $
  throwErrnoIfMinus1_ "displayPrepareReadQueue" $ wl_display_prepare_read_queue d evq

-- | This function does the same thing as 'displayPrepareReadQueue'
-- with the default queue passed as the queue.
displayPrepareRead :: MonadIO m => Display -> m ()
{-# INLINE displayPrepareRead #-}
displayPrepareRead (Display d) = liftIO $ throwErrnoIfMinus1_ "displayPrepareRead" $ wl_display_prepare_read d

-- | Dispatch events on the default event queue.
displayDispatch :: MonadIO m => Display -> m Int
{-# INLINE displayDispatch #-}
displayDispatch (Display d) =
  fmap fromIntegral . liftIO $ throwErrnoIfMinus1 "displayDispatch" $ wl_display_dispatch d

-- | Dispatch events in an event queue.
--
-- If the given event queue is empty, this function blocks until there are
-- events to be read from the display fd. Events are read and queued on
-- the appropriate event queues. Finally, events on given event queue are
-- dispatched. On failure -1 is returned and errno set appropriately.
--
-- In a multi threaded environment, do not manually wait using poll() (or
-- equivalent) before calling this function, as doing so might cause a dead
-- lock. If external reliance on poll() (or equivalent) is required, see
-- wl_display_prepare_read_queue() of how to do so.
--
-- This function is thread safe as long as it dispatches the right queue on the
-- right thread. It is also compatible with the multi thread event reading
-- preparation API (see wl_display_prepare_read_queue()), and uses the
-- equivalent functionality internally. It is not allowed to call this function
-- while the thread is being prepared for reading events, and doing so will
-- cause a dead lock.
--
-- It can be used as a helper function to ease the procedure of reading and
-- dispatching events.
displayDispatchQueue :: MonadIO m => Display -> EventQueue -> m Int
{-# INLINE displayDispatchQueue #-}
displayDispatchQueue (Display d) (EventQueue evq) =
  fmap fromIntegral . liftIO $ throwErrnoIfMinus1 "displayDispatchQueue" $ wl_display_dispatch_queue d evq

displayDispatchTimeout :: MonadIO m => Display -> ConstPtr Timespec -> m Int
{-# INLINE displayDispatchTimeout #-}
displayDispatchTimeout (Display d) tspec =
  fmap fromIntegral . liftIO $ throwErrnoIfMinus1 "displayDispatchTimeout" $ wl_display_dispatch_timeout d tspec

-- | Dispatch events in an event queue with a timeout
--
-- This function behaves identical to wl_display_dispatch_queue() except
-- that it also takes a timeout and returns 0 if the timeout elapsed.
--
-- Passing NULL as a timeout means an infinite timeout. An empty timespec
-- causes wl_display_dispatch_queue_timeout() to return immediately even if no
-- events have been dispatched.
--
-- Returns the number of dispatched events on success.
displayDispatchQueueTimeout :: MonadIO m => Display -> EventQueue -> ConstPtr Timespec -> m Int
{-# INLINE displayDispatchQueueTimeout #-}
displayDispatchQueueTimeout (Display d) (EventQueue evq) tspec =
  fmap fromIntegral . liftIO $ throwErrnoIfMinus1 "displayDispatchQueueTimeout" $ wl_display_dispatch_queue_timeout d evq tspec

-- | Dispatch pending events in an event queue
--
-- Returns immediately if there are no events queued.
displayDispatchQueuePending :: MonadIO m => Display -> EventQueue -> m Int
{-# INLINE displayDispatchQueuePending #-}
displayDispatchQueuePending (Display d) (EventQueue evq) =
  fmap fromIntegral . liftIO $ throwErrnoIfMinus1 "displayDispatchQueuePending" $ wl_display_dispatch_queue_pending d evq

-- | Dispatch default queue events without reading from the display fd.
--
-- It does not attempt to read the display fd and simply returns zero if the main
-- queue is empty, i.e., it doesn't block.
displayDispatchPending :: MonadIO m => Display -> m Int
{-# INLINE displayDispatchPending #-}
displayDispatchPending (Display d) =
  fmap fromIntegral . liftIO $ throwErrnoIfMinus1 "displayDispatchPending" $ wl_display_dispatch_pending d

-- | Cancel read intention on display's fd
--
-- After a thread successfully called wl_display_prepare_read() it must
-- either call wl_display_read_events() or wl_display_cancel_read().
-- If the threads do not follow this rule it will lead to deadlock.
displayCancelRead :: MonadIO m => Display -> m ()
{-# INLINE displayCancelRead #-}
displayCancelRead (Display d) = liftIO $ wl_display_cancel_read d

-- | Retrieve the last error that occurred on a display.
--
-- Return the last error that occurred on the display. This may be an error sent
-- by the server or caused by the local client.
--
-- _Errors are fatal._ If this function returns non-zero the display can no longer be used.
displayGetError :: MonadIO m => Display -> m Int
{-# INLINE displayGetError #-}
displayGetError (Display d) = liftIO $ fromIntegral <$> wl_display_get_error d

-- | Checks if Display has error, and throws either the protocol error or other DisplayError when true.
displayThrowIfError :: MonadIO m => Display -> m ()
displayThrowIfError disp = liftIO $ do
  err <- displayGetError disp
  case err of
    0 -> return ()
    _ | Errno (fromIntegral err) == ePROTO -> displayGetProtocolError disp >>= throwIO
    _ -> throwIO $ DisplayErrorNum disp err

-- | Retrieves the information about a protocol error
--
-- @
-- int err = wl_display_get_error(display);
-- if (err == EPROTO) {
--        code = wl_display_get_protocol_error(display, &interface, &id);
--        handle_error(code, interface, id);
-- }
-- @
--
-- Returns the error code as defined in the interface specification.
displayGetProtocolError :: MonadIO m => Display -> m WaylandProtocolError
{-# INLINE displayGetProtocolError #-}
displayGetProtocolError (Display d) = liftIO $
  alloca $ \ifacePtr ->
  alloca $ \objectIdPtr -> do
    code <- wl_display_get_protocol_error d ifacePtr objectIdPtr
    objectId <- peek objectIdPtr
    iface <- peek ifacePtr
    name <- peekIfName iface
    return $ WaylandProtocolError code objectId iface name
  where
    peekIfName :: PtrConst Wl_interface -> IO (Maybe String)
    peekIfName (ConstPtr ptr)
      | ptr == nullPtr = return Nothing
      | otherwise = do
          wlif <- peek ptr
          peekStr wlif.name
    peekStr (ConstPtr ptr)
      | ptr == nullPtr = return Nothing
      | otherwise = Just <$> peekCString ptr

eventQueueGetName :: MonadIO m => EventQueue -> m (Maybe String)
{-# INLINE eventQueueGetName #-}
eventQueueGetName (EventQueue evq) = liftIO $ do
  ConstPtr p <- wl_event_queue_get_name (ConstPtr evq)
  if p == nullPtr then return Nothing
                  else Just <$> peekCString p

-- |  Create a new event queue for this display.
displayCreateQueue :: MonadIO m => Display -> m EventQueue
{-# INLINE displayCreateQueue #-}
displayCreateQueue (Display d) = fmap EventQueue . liftIO $
  throwErrnoIfNull "displayCreateQueue" $ wl_display_create_queue d

-- |  Create a new event queue for this display.
displayCreateQueueWithName :: MonadIO m => Display -> String -> m EventQueue
{-# INLINE displayCreateQueueWithName #-}
displayCreateQueueWithName (Display d) name = fmap EventQueue . liftIO $ withCString name $ \c_name ->
  throwErrnoIfNull "displayCreateQueueWithName" $ wl_display_create_queue_with_name d (ConstPtr c_name)

-- | Binds a new, client-created object to the server using the specified name as the identifier.
registryBind :: (MonadIO m) => Registry -> ObjectName -> PtrConst Wl_interface -> Version -> m (Ptr a)
{-# INLINE registryBind #-}
registryBind reg name iface ver = fmap castPtr . liftIO $ wl_registry_bind reg.unwrap name iface ver
