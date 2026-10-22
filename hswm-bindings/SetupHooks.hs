{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DisambiguateRecordFields #-}
{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wall #-}
{-# OPTIONS_GHC -Wno-ambiguous-fields #-}
{-# OPTIONS_GHC -Wunused-packages #-}

module SetupHooks (setupHooks) where

import Distribution.HsBindgen.Hooks
import Distribution.Wayland.Hooks

import Distribution.Simple.SetupHooks (
  SetupHooks,
 )
import Distribution.Types.LocalBuildConfig
import Distribution.Utils.Path
import Distribution.Verbosity

import Control.Monad
import qualified Data.List as L
import Data.Maybe (fromMaybe)

setupHooks :: SetupHooks
setupHooks = waylandProtocolHooks config

-- Selected standard protocols
isEnabled :: ProtocolId -> Bool
isEnabled pro =
  pro.name
    `elem` ( [ "viewporter"
             , "xdg-shell"
             , "ext-idle-notify"
             , "ext-session-lock"
             , "input-method"
             , "xdg-output"
             , "text-input"
             , "ext-foreign-toplevel-list"
             , "fractional-scale"
             , "linux-dmabuf"
             , "presentation-time"
             ] ::
               [String]
           )

config :: DynamicSetup ()
config = do
  modifyOptions $
    optionCustom
      <>~ Endo (bindGens . ix ServerBindings . bcBindGen . defineMacros . at "WL_HIDE_DEPRECATED" ?~ "1")
        <> Endo (qualifiedImports <>~ [("WL.Util", "WL.Util")]) -- Hide deprecated declarations in wayland server bindings
        <> Endo (dependsOn <>~ ["wl_display"]) -- Configure dependency on wayland-util.h
        -- So that the core bindings are loaded first always...

  -- Inject known interface info as needed include dirs from cabal dependencies
  getDependencies ["haskell-wayland-core"] >>= mapM_ importPackageProtocols

  let v = verbosityFromFlags verbose

  -- Discovered wayland-protocols via pkg-config
  Just (AbsolutePath dir) <- withLBC $ \lbc -> liftIO $ getPkgConfDataDir v lbc.withPrograms "wayland-protocols"
  registerProtocolsFileGlob True dir "**/*.xml" $ \key val -> do
    guard $ isEnabled key
    return $
      val & case key.name of
        -- Settings for specific protocols
        "linux-dmabuf" -> coreOnly .~ False
        "single-pixel-buffer" -> coreOnly .~ False
        "input-method" -> coreOnly .~ False
        _ -> id

  -- Local files
  registerProtocolsFileGlob False (makeSymbolicPath "protocol") "*.xml" $ \_key val -> Just $ case () of
    _ | "river-" `L.isPrefixOf` val.fullName -> val & category .~ "river" & baseName %~ fromMaybe val.baseName . L.stripPrefix "river-" & stability .~ Stable
    _ | "wlr-" `L.isPrefixOf` val.fullName -> val & category .~ "wlr" & baseName %~ fromMaybe val.baseName . L.stripPrefix "wlr-"
    _ -> val
