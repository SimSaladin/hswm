{ src
, depsHash ? ""
, lib
, stdenv
, libGL
, libx11
, libevdev
, libinput
, libxkbcommon
, pixman
, pkg-config
, scdoc
, udev
, versionCheckHook
, wayland
, wayland-protocols
, wayland-scanner
, wlroots_0_20
, xwayland
, zig_0_16
, mkZon2nixPkgs
, withManpages ? true
, xwaylandSupport ? true
, withDebug ? false
, useLLVM ? stdenv.hostPlatform.isLinux || (stdenv.hostPlatform.isDarwin && stdenv.hostPlatform.isx86_64)
, runCommand
}:
let

  # read version string from build.zig.zon
  zonVersion = lib.fileContents (runCommand "get-version" { } ''
    sed -nE '/\.version =/s/^.*?"(.+-dev|.+)".*$/\1/p' ${src}/build.zig.zon >$out
  '');

  versionSuffix = lib.concatStrings (
    (lib.optional (src ? sourceInfo && src.sourceInfo ? lastModifiedDate) "+${lib.substring 0 8 src.sourceInfo.lastModifiedDate}")
    ++ (lib.optional (src ? sourceInfo && src.sourceInfo ? shortRev) "-g${src.sourceInfo.shortRev}")
  );
in

stdenv.mkDerivation (finalAttrs: {
  pname = "river";
  version = zonVersion + versionSuffix;

  outputs = [ "out" ] ++ lib.optionals withManpages [ "man" ];

  src = builtins.toPath src;

  postPatch = ''
    sed -i '/\.version =/s/".*"/"${finalAttrs.version}"/' build.zig.zon
  '';

  strictDeps = true;

  deps = mkZon2nixPkgs {
    inherit (finalAttrs) src pname;
    outputHash = depsHash;
  };

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
    finalAttrs.deps
  ]
  ++ lib.optional withDebug "-Doptimize=Debug"
  ++ lib.optional (!withDebug) "-Doptimize=ReleaseFast"
  ++ lib.optional (!withDebug) "-Dstrip"
  ++ lib.optional useLLVM "-Dllvm"
  ++ lib.optional withManpages "-Dman-pages"
  ++ lib.optional xwaylandSupport "-Dxwayland";

  dontStrip = withDebug;
  separateDebugInfo = withDebug;

  doInstallCheck = true;
  nativeInstallCheckInputs = [ versionCheckHook ];
  versionCheckProgramArg = "-version";

  passthru = {
    providedSessions = [ "river" ];
  };

  meta = {
    description = "Non-monolithic Wayland compositor";
    homepage = "https://codeberg.org/river/river";
    mainProgram = "river";
    platforms = lib.platforms.linux;
  };
})
