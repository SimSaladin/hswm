{
  src,
  lib,
  stdenv,
  callPackage,
  #fetchFromCodeberg,
  libGL,
  libx11,
  libevdev,
  libinput,
  libxkbcommon,
  pixman,
  pkg-config,
  scdoc,
  udev,
  versionCheckHook,
  wayland,
  wayland-protocols,
  wayland-scanner,
  wlroots_0_20,
  xwayland,
  zig_0_16,
  withManpages ? true,
  xwaylandSupport ? true,
  withDebug ? false,
}:
let
  callZon2Nix = callPackage ./callZon2nix.nix { };
in

stdenv.mkDerivation (finalAttrs: {
  pname = "river";
  version = "0.5.0-dev";

  outputs = [ "out" ] ++ lib.optionals withManpages [ "man" ];

  inherit src;
  #src = fetchFromCodeberg {
  #  owner = "river";
  #  repo = "river";
  #  rev = "170d7836c178bef3bf042ec561ec5fd5771d91de";
  #  hash = "sha256-ase1mCqZl9xpYdHZAilj8amvKZ0AMlQlIIFTgrlC1u4=";
  #};

  strictDeps = true;

  deps = callPackage (callZon2Nix {
    pname = "river";
    inherit src;
    outputHash = "sha256-tXU9LWcxEQbI24ua4OAJjqhtsJrLlGHBukyFXEUcV/Q=";
  }) { };

  nativeBuildInputs = [
    pkg-config
    wayland-scanner
    xwayland
    zig_0_16
  ]
  ++ lib.optional withManpages scdoc;

  buildInputs = [
    libGL
    libevdev
    libinput
    libxkbcommon
    pixman
    udev
    wayland
    wayland-protocols
    wayland-scanner
    wlroots_0_20
  ]
  ++ lib.optionals xwaylandSupport [
    libx11
  ];

  zigBuildFlags = [
    "--system"
    "${finalAttrs.deps}"
  ]
  ++ lib.optional withDebug "-Doptimize=Debug"
  ++ lib.optional withManpages "-Dman-pages"
  ++ lib.optional xwaylandSupport "-Dxwayland";

  dontStrip = withDebug;
  separateDebugInfo = withDebug;

  doInstallCheck = true;
  nativeInstallCheckInputs = [ versionCheckHook ];
  versionCheckProgramArg = "-version";

  passthru = {
    providedSessions = [ "river" ];
    #updateScript = ./update.sh;
  };

  meta = {
    description = "Non-monolithic Wayland compositor";
    homepage = "https://codeberg.org/river/river";
    mainProgram = "river";
    platforms = lib.platforms.linux;
  };
})
