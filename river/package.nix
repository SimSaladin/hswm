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
  runCommand,
}:
let
  version = lib.fileContents (runCommand "get-version" { } ''
    sed -n '/version =/s/^[^"]*"\(.*\)".*$/\1/p' <${src}/build.zig.zon >$out
  '');

  suffix = "-g${src.sourceInfo.shortRev}+${lib.substring 0 8 src.sourceInfo.lastModifiedDate}";

  callZon2Nix = callPackage ./callZon2nix.nix { };

  zon2nix = callZon2Nix {
    pname = "river";
    inherit src;
    outputHash = "sha256-tXU9LWcxEQbI24ua4OAJjqhtsJrLlGHBukyFXEUcV/Q=";
  };
in

stdenv.mkDerivation (finalAttrs: {
  pname = "river";
  version = version + suffix;

  outputs = [ "out" ] ++ lib.optionals withManpages [ "man" ];

  inherit src;

  postPatch = ''
    sed -i '/version =/s/".*"/"${finalAttrs.version}"/' build.zig.zon
  '';

  strictDeps = true;

  deps = callPackage zon2nix { };

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
    depsZon2nix = zon2nix;
  };

  meta = {
    description = "Non-monolithic Wayland compositor";
    homepage = "https://codeberg.org/river/river";
    mainProgram = "river";
    platforms = lib.platforms.linux;
  };
})
