{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE NoFieldSelectors #-}
{-# OPTIONS_GHC -Wno-orphans #-}

-- |
-- Module      : HSWM.Wallpaper
-- Description : Wallpaper management using JuicyPixels and pixman.
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Wallpaper (
  -- * Configuration
  WallpaperConfig (..),
  ImageSelect (..),
  usingWallpaper,

  -- * Hooks
  wpStartupHook,
  wpExitHook,
  wpHandleEventHookDyn,

  -- * Internal
  WallpaperContext (..),
  searchLocal,
)
where

import HSWM.BufferPool qualified as BP
import HSWM.Core hiding (height, scale, size, width)
import HSWM.Types.Simple
import HSWM.Utils (getPixmanFormatBE)
import Pixman qualified as P
import River qualified as R
import WL.Client qualified as WL
import WL.FractionalScale.Staging.V1.Client qualified as FS
import WL.Viewporter qualified as VP
import WL.Wlr.LayerShell.Unstable.V1.Client qualified as Wlr

import Codec.Picture qualified as JP
import Data.List qualified as L
import Data.Map qualified as M
import Data.Vector.Storable qualified as V
import System.FilePath ((</>))
import Text.Printf

-- import GHC.Generics

-- * Usage

data WallpaperConfig = WallpaperConfig
  { imageSelect :: ImageSelect
  , layerShellLayerName :: String
  }
  deriving stock (Eq, Ord, Show, Read)

instance Default WallpaperConfig where
  def =
    WallpaperConfig
      { imageSelect = SearchLocalSystem
      , layerShellLayerName = "wallpaper"
      }

data ImageSelect
  = -- | Use a single statically defined image for all.
    OneStaticImage {filepath :: FilePath}
  | -- | Lookup wallpaper files under XDG data directories.
    SearchLocalSystem
  deriving stock (Eq, Ord, Show, Read)

-- * Implementation

-- ** Types

type LoadedImage = JP.Image JP.PixelRGBA8

data WallpaperContext = WallpaperContext
  { bufferPool :: !(Maybe BP.ImageBufferPool)
  , outputsState :: !(Map RiverOutput OutputState)
  , loadedImages :: !(Map FilePath LoadedImage)
  , imageInfos :: ![([String], FilePath)]
  }
  deriving stock (Generic)
  deriving anyclass (Default)

instance Inspect WallpaperContext
instance Inspect OutputState
instance Inspect Surfaces
instance Inspect (JP.Image JP.PixelRGBA8) where
  inspectPrec _ _ = "<Image>"

data OutputState = OutputState
  { x :: {-# UNPACK #-} !Int32
  , y :: {-# UNPACK #-} !Int32
  , width :: {-# UNPACK #-} !Int32
  , height :: {-# UNPACK #-} !Int32
  , scale :: {-# UNPACK #-} !Int32
  , pref_fract_scale :: {-# UNPACK #-} !Word32
  , needsRender :: {-# UNPACK #-} !Bool
  , configured :: {-# UNPACK #-} !Bool
  , osWlOutput :: {-# UNPACK #-} !WL.Output
  , surfaces :: !(Maybe Surfaces)
  , name :: !String
  }
  deriving stock (Generic)

instance Default OutputState where
  def = OutputState 0 0 0 0 1 0 False False def def ""

data Surfaces = Surfaces
  { wl_surface :: {-# UNPACK #-} !WL.Surface
  , layerSurface :: {-# UNPACK #-} !Wlr.LayerSurface
  , outViewport :: !(Maybe VP.Viewport)
  , surfacesCleanup :: !(IO ())
  }
  deriving (Generic)

makeLensesWith' classPerField [''WallpaperContext, ''OutputState]

usingWallpaper :: WallpaperConfig -> HSWMConfig H l -> HSWMConfig H l
usingWallpaper cfg userConf =
  userConf
    { startupHook = userConf.startupHook <> wpStartupHook cfg
    , exitHook = userConf.exitHook <> wpExitHook
    , renderHook = userConf.renderHook <> render
    , handleEventHookDynamic = userConf.handleEventHookDynamic <> wpHandleEventHookDyn cfg
    }

-- ** Hooks

wpStartupHook :: WallpaperConfig -> H ()
wpStartupHook conf = do
  logInfoNS "wallpaper" $ "Starting up..." :# ["config" .= show conf]
  ctx <- getObjectDef @WallpaperContext
  -- create bufferpool if missing
  when (isNothing ctx.bufferPool) $ do
    bp <- BP.newImageBufferPool
    modifyCtx $ bufferPool ?~ bp
  -- load source image
  case conf.imageSelect of
    OneStaticImage fp -> tryLoadImage fp []
    SearchLocalSystem -> do
      images <- io searchLocal
      logInfo $ "Found wallpapers on system" :# ["count" .= length images]
      forM_ (take 12 $ M.toList images) $ \(fp, attrs) -> do
        tryLoadImage fp attrs

-- | Finds @wallpapers/*/contents/images/*.*@ under xdg_data_dirs
searchLocal :: IO (Map FilePath [String])
searchLocal = do
  roots <- getXdgDirectoryList XdgDataDirs
  fmap (M.fromListWith (++) . mconcat) $ forM roots $ \r -> do
    exists <- doesDirectoryExist (r </> "wallpapers")
    collections <- if exists then listDirectory (r </> "wallpapers") else return []
    fmap mconcat $ forM collections $ \c -> do
      let cdir = r </> "wallpapers" </> c
      exists' <- doesDirectoryExist (cdir </> "contents/images")
      dirs <- if exists' then listDirectory (cdir </> "contents/images") else return []
      fmap mconcat $ forM dirs $ \n -> do
        let file = cdir </> "contents/images" </> n
        rpath <- resolveRealPath file
        return [(rpath, [n])]

resolveRealPath :: (MonadIO m) => FilePath -> m FilePath
resolveRealPath fp = do
  lnk <- pathIsSymbolicLink fp
  if lnk
    then resolveRealPath =<< getSymbolicLinkTarget fp
    else return fp

wpExitHook :: (HasCallStack) => H ()
wpExitHook = do
  logInfoNS "wallpaper" "exit hook; cleaning up..."
  deinit

wpHandleEventHookDyn :: _ -> Dynamic -> H All
wpHandleEventHookDyn cfg ev
  | Just R.RiverWindowManagerOutput{} <- fromDynamic ev = do
      modifyCtx $ bufferPool . _Just %~ BP.incSurfaceCount 1
      mempty
  | Just (oev :: R.RiverOutputEvent) <- fromDynamic ev = do
      case oev of
        (R.RiverOutputDimensions _ ro w h) -> do
          updateOutputState ro $ \a -> a{needsRender = True, width = fi w, height = fi h}
          mempty
        (R.RiverOutputPosition _ ro x y) -> do
          updateOutputState ro $ \a -> a{needsRender = True, x = fi x, y = fi y}
          mempty
        (R.RiverOutputRemoved _ ro) -> do
          withOutputState ro deinitOutput
          modifyCtx $
            bufferPool . _Just %~ BP.incSurfaceCount (-1)
              &+ outputsState %~ M.delete ro
          mempty
        _ -> mempty
  | Just (oev :: WL.OutputEvent) <- fromDynamic ev = do
      case oev of
        WL.OutputScale ro _ sc -> do
          let ro' = R.RiverOutput $ castPtr ro
          updateOutputState ro' $ needsRender .~ True &+ scale .~ sc
        WL.OutputName ro wl_output name -> do
          let ro' = R.RiverOutput $ castPtr ro
          updateOutputState ro' $ \x -> x{name, osWlOutput = wl_output}
        WL.OutputDone ro _ -> do
          let ro' = R.RiverOutput $ castPtr ro
          initOutput cfg ro'
        _ -> return ()
      mempty
  | otherwise = mempty

-- ** Loading image files

tryLoadImage :: FilePath -> [String] -> H ()
tryLoadImage fp attrs =
  doesFileExist fp >>= \case
    True ->
      io (JP.readImageWithMetadata fp) >>= \case
        Right (dynimg, _metadata) ->
          modifyCtx $
            loadedImages . at fp ?~ JP.convertRGBA8 dynimg
              &+ imageInfos <>~ [(attrs, fp)]
        Left _ -> return ()
    False -> return ()

-- ** Manage and Render

calculateScale :: (Integral i) => i -> Int32 -> Int32 -> Double
calculateScale src out scale' = fi src / (fi out * fi scale')

calculateTransform :: (Integral i) => i -> Int32 -> Double -> Double
calculateTransform src out scale' = (fi src / scale' - fi out) / 2 / scale'

lookupImage :: WallpaperContext -> OutputState -> Maybe LoadedImage
lookupImage ctx os =
  case [fp | (attrs, fp) <- ctx.imageInfos, any check attrs] of
    x : _ -> fromMaybe fallback $ ctx ^? loadedImages . at x
    _ -> fallback
  where
    check x
      | dimensions `L.isPrefixOf` x = True
      | otherwise = False
    dimensions = show os.width ++ "x" ++ show os.height
    fallback =
      case ctx.loadedImages & M.elems of
        x : _ -> Just x
        _ -> Nothing

render :: H ()
render = do
  ctx <- getObjectDef @WallpaperContext
  forM_ (M.toList ctx.outputsState) $ \(ro, os) -> do
    case (ctx.bufferPool, os.surfaces, lookupImage ctx os) of
      (Just bp, Just surfs, Just img) -> when (os.needsRender && os.configured && os.width > 0 && os.height > 0) $ do
        drawImage bp os img surfs
        updateOutputState ro $ \x -> x{needsRender = False}
      _ -> return ()

drawImage :: BP.ImageBufferPool -> OutputState -> JP.Image JP.PixelRGBA8 -> Surfaces -> H ()
drawImage bp os img Surfaces{..} = do
  let w = os.width
      h = os.height
      src_w = JP.imageWidth img
      src_h = JP.imageHeight img
      src_stride = src_w * 4
      shmFormat = WL.ShmFormatABGR8888
      pixmanFormat = getPixmanFormatBE shmFormat

      -- Calculate the buffer size
      buf_size@(buf_w, buf_h)
        | os.pref_fract_scale > 0 =
            let buffer_width = ceiling $ (fi w * fi os.pref_fract_scale + fract_denom / 2 :: Double) / fract_denom
                buffer_height = ceiling $ (fi h * fi os.pref_fract_scale + fract_denom / 2 :: Double) / fract_denom
                fract_denom = 120
             in (buffer_width, buffer_height)
        | otherwise = (w * os.scale, h * os.scale)

      -- calculate scale
      sx' = calculateScale src_w buf_w 1 -- scale
      sy' = calculateScale src_h buf_h 1 -- scale
      (sx, sy) = if sx' > sy' then (sy', sy') else (sx', sx')

      tx = calculateTransform src_w buf_w sx
      ty = calculateTransform src_h buf_h sy

  -- Set opaque region
  compositor <- getObject
  WL.withNewRegion compositor $ \opaqueRegion -> do
    WL.regionAdd opaqueRegion 0 0 w h
    WL.surfaceSetOpaqueRegion wl_surface opaqueRegion

  buf <- BP.nextBuffer bp shmFormat (fi buf_w) (fi buf_h)

  logDebugNS "wallpaper" $
    "rendering wallpaper"
      :# [ "out" .= os.name
         , "out-size" .= (w, h)
         , "out-scale" .= (os ^. scale)
         , "out-fscale" .= (os ^. prefFractScale)
         , "src-size" .= (src_w, src_h)
         , "buf-size" .= buf_size
         , "calc-scale" .= (printf "%.2f,%.2f;%.2f,%.2f" sx' sy' sx sy :: String)
         , "calc-trans" .= (printf "%.2f,%.2f" tx ty :: String)
         ]

  _ <- io $ V.unsafeWith (JP.imageData img) $ \bits -> do
    let trans =
          P.transformScale sx sy False $
            P.transformTranslate tx ty False P.transformIdentity
    let pix =
          P.imageSetFilter P.FilterBest [] $
            P.imageSetTransform (P.fromFTransform trans) $
              P.imageWithBits pixmanFormat (fi src_w, fi src_h) True (castPtr bits) (fi src_stride)
    let dest =
          P.imageSetComposite32 (P.setComposite32 pix){P.op = P.OpSrc, P.size = (buf_w, buf_h)} $
            P.imageWithBits pixmanFormat (buf.width, buf.height) False (castPtr buf.ptr) buf.stride
    P.createImage dest

  WL.surfaceAttach wl_surface buf.buf 0 0
  WL.surfaceDamageBuffer wl_surface 0 0 buf_w buf_h
  case outViewport of
    Just vp -> VP.viewportSetDestination vp w h
    Nothing -> return () -- io $ WL.surfaceSetBufferScale wl_surface os.scale -- XXX
  WL.surfaceCommit wl_surface

-- | Destroy ctx
deinit :: H ()
deinit = do
  ctx <- getObjectDef @WallpaperContext
  forM_ ctx.outputsState $ deinitOutput
  forM_ ctx.bufferPool $ io . BP.destroyImageBufferPool
  modifyCtx $ outputsState .~ mempty &+ bufferPool .~ def

deinitOutput :: OutputState -> H ()
deinitOutput os = forM_ os.surfaces $ \ss -> io ss.surfacesCleanup

-- | Create surface etc.
initOutput :: WallpaperConfig -> RiverOutput -> H ()
initOutput cfg ro = withOutputState ro $ \os -> do
  compositor <- getObject
  let w = os.width
      h = os.height
  logDebugNS "wallpaper" $ "initOutput: start" :# ["output" .= os.name, "river_output" .= ro]
  ss <- case os ^. surfaces of
    Just ss -> return ss
    Nothing -> do
      runInIO <- askRunInIO

      -- 1: wl_surface
      wl_surface <- WL.compositorCreateSurface compositor
      -- surface: set no input region
      WL.withNewRegion compositor $ WL.surfaceSetInputRegion wl_surface

      -- 2: fractional scale
      fractSurface <- withObject $ flip FS.fractionalScaleManagerGetFractionalScale wl_surface
      -- fractional scale listener
      fsl <- WL.createListener $ \case
        FS.FractionalScalePreferredScale _ _ fscale -> runInIO $ do
          logInfoNS "wallpaper" $ "fractional scale updated" :# ["output" .= os.name, "river_output" .= ro, "fractional-scale" .= fscale]
          updateOutputState ro $ \x -> x{pref_fract_scale = fscale, needsRender = True}
      WL.listenerAdd_ fractSurface fsl

      -- 3: viewport
      viewport <- withObject $ flip VP.viewporterGetViewport wl_surface

      -- 4: layer_surface
      layerSurface <- withObject $ \ls ->
        Wlr.layerShellGetLayerSurface ls wl_surface (os ^. osWlOutput) Wlr.ZWLR_LAYER_SHELL_V1_LAYER_BACKGROUND (Just cfg.layerShellLayerName)
      Wlr.layerSurfaceSetSize layerSurface 0 0
      Wlr.layerSurfaceSetAnchor layerSurface (R.toCEnum $ 1 + 2 + 4 + 8)
      Wlr.layerSurfaceSetExclusiveZone layerSurface (-1)
      -- layersurface listener
      lsListener <- WL.createListener $ \case
        Wlr.LayerSurfaceConfigure _ ls serial cw ch -> runInIO $ do
          Wlr.layerSurfaceAckConfigure ls serial
          updateOutputState ro $ \x ->
            x
              { width = fi cw
              , height = fi ch
              , configured = True
              , needsRender = x.needsRender || not (x ^. configured) || (x.width, x.height) /= (fi cw, fi ch)
              }
        Wlr.LayerSurfaceClosed{} -> runInIO $ logErrorNS "wallpaper" $ "Layer surface closed!" :# ["output" .= os.name, "river_output" .= ro]
      WL.listenerAdd_ layerSurface lsListener

      -- finally:
      WL.surfaceCommit wl_surface

      let surfacesCleanup = do
            WL.objectDestroy layerSurface
            WL.objectDestroy viewport
            WL.objectDestroy fractSurface
            WL.objectDestroy wl_surface
            WL.freeListener fsl
            WL.freeListener lsListener

      return $ Surfaces{outViewport = Just viewport, ..}

  -- set opaque region
  WL.withNewRegion compositor $ \opaqueRegion -> do
    WL.regionAdd opaqueRegion 0 0 w h
    WL.surfaceSetOpaqueRegion ss.wl_surface opaqueRegion

  -- Update ctx
  updateOutputState ro $ \x -> x{surfaces = Just ss}
  logDebugNS "wallpaper" $ "initOutput: done" :# ["output" .= os.name, "river_output" .= ro]

------------------------------------------
-- Internal boilerplate

updateOutputState :: RiverOutput -> (OutputState -> OutputState) -> H ()
updateOutputState ro f = modifyObjectDef $ \x -> x{outputsState = M.alter (Just . f . fromMaybe def) ro x.outputsState}

withOutputState :: RiverOutput -> (OutputState -> H ()) -> H ()
withOutputState ro f = getObjectDef >>= mapM_ (\(k, v) -> when (k == ro) (f v)) . M.toList . ((.outputsState) @WallpaperContext)

modifyCtx :: _ -> H ()
modifyCtx = modifyObjectDef @WallpaperContext
