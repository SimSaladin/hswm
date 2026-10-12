{ lib
, stdenv
, callPackage
, runCommand

, src
, depsHash ? ""
, zigEnv
, my-lib
, updateRiverDeps

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
, zig # tested with 0.16...
, withManpages ? true
, xwaylandSupport ? true
, withDebug ? false
, useLLVM ? stdenv.hostPlatform.isLinux || (stdenv.hostPlatform.isDarwin && stdenv.hostPlatform.isx86_64)
}:

let
  readZigZonVersion = file: lib.fileContents (runCommand "get-version" { } ''
    sed -nE '/\.version =/s/^.*?"(.+-dev|.+)".*$/\1/p' ${file} >$out
  '');


  # Unpack all deps in case they are tarballs for use with zig build "--system"
  prepareZigDB = src: runCommand "zig-packages" {
    passthru = { inherit src; };
  }
    ''
      mkdir -p $out
      for pkg in ${src}/*; do
        if [[ -d $(readlink -f "$pkg") ]]; then
          echo "error: is directory:  (cp -rv --no-preserve=all '$pkg/ $out/$name)"
          exit 1
        else
          tar -xf "$pkg" -C $out
        fi
      done
    '';

  build-zig-zon-nix = my-lib.mkFOD {
    inherit src;
    name = "zig-packages";
    hash = depsHash;
    nativeBuildInputs = [ updateRiverDeps ];
    buildPhase = ''
      export ZIG_GLOBAL_CACHE_DIR=$(mktemp -d)
      make-zig-dependencies
    '';
  };

  calculatedDeps = callPackage (import "${build-zig-zon-nix}") { inherit zig; };
in

stdenv.mkDerivation (finalAttrs: {
  pname = "river";

  version =
    readZigZonVersion (toString src + "/build.zig.zon")
    # in case src is a flake input, add extra info to version
    + lib.optionalString (lib.isAttrs src && src ? sourceInfo)
      (lib.optionalString (src.sourceInfo ? lastModifiedDate) "+${lib.substring 0 8 src.sourceInfo.lastModifiedDate}" +
      lib.optionalString (src.sourceInfo ? shortRev) "-g${src.sourceInfo.shortRev}");

  outputs = [ "out" ] ++ lib.optionals withManpages [ "man" ];

  src = src;

  deps = prepareZigDB calculatedDeps;

  strictDeps = true;

  nativeBuildInputs = [
    pkg-config
    wayland-scanner
    xwayland
    zig
  ]
  ++ lib.optional withManpages scdoc;

  buildInputs = [
    libGL
    libinput
    libevdev
    libxkbcommon
    pixman
    udev
    wayland
    wayland-scanner
    wayland-protocols
    wlroots_0_20
  ]
  ++ lib.optionals xwaylandSupport [
    libx11
  ];

  zigBuildFlags = [
    "--system" finalAttrs.deps
    "-Dversion-string=${finalAttrs.version}"
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
    pkgConfigModules = [ "river-protocols" ];
  };
})
