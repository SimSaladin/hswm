{ lib
, stdenv
, callPackage
, runCommand
, my-lib
, make-zig-dependencies
, pkg-config
, versionCheckHook

, zig
, libGL
, libx11
, libevdev
, libinput
, libxkbcommon
, pixman
, scdoc
, udev
, wayland
, wayland-protocols
, wayland-scanner
, wlroots_0_20
, xwayland

, src
, depsHash ? ""
, withManpages ? true
, xwaylandSupport ? true
, withDebug ? false
, useLLVM ? stdenv.hostPlatform.isLinux || (stdenv.hostPlatform.isDarwin && stdenv.hostPlatform.isx86_64)
,
}:

let
  get-build-zig-zon-version = { src, filename ? "build.zig.zon" }:
    lib.fileContents (
      runCommand "get-version" { } ''
        sed -nE '/\.version =/s/^.*?"(.+-dev|.+)".*$/\1/p' ${toString src}/${filename} >$out
      ''
    );

  # Unpack all deps in case they are tarballs for use with zig build "--system"
  prepareZigDB =
    {src, pname, depsHash, ...}:
    let
      zig-packages-nix = my-lib.mkFOD {
        name = "${pname}-zig-packages.nix";
        inherit src;
        hash = depsHash;
        nativeBuildInputs = [ make-zig-dependencies ];
        buildPhase = ''
          export ZIG_GLOBAL_CACHE_DIR=$(mktemp -d)
          make-zig-dependencies
        '';
        passthru = make-zig-dependencies.passthru // {
          inherit make-zig-dependencies;
        };
      };
      zig-packages = callPackage (import (toString zig-packages-nix)) {
        inherit (zig-packages-nix.passthru.zig-env) zig;
      };
    in
    runCommand "zig-packages"
      {
        passthru = zig-packages-nix.passthru // {
          inherit zig-packages-nix zig-packages;
        };
      }
      ''
        mkdir -p $out
        for pkg in ${zig-packages}/*; do
          if [[ -d $(readlink -f "$pkg") ]]; then
            echo "error: is directory:  (cp -rv --no-preserve=all '$pkg/ $out/$name)"
            exit 1
          else
            tar -xf "$pkg" -C $out
          fi
        done
      '';
in

stdenv.mkDerivation (finalAttrs: {
  pname = "river";

  version =
    get-build-zig-zon-version { inherit src; }
    # in case src is a flake input, add extra info to version
    + lib.optionalString (lib.isAttrs src && src ? sourceInfo) (
      lib.optionalString (src.sourceInfo ? lastModifiedDate)
        "+${lib.substring 0 8 src.sourceInfo.lastModifiedDate}"
      + lib.optionalString (src.sourceInfo ? shortRev) "-g${src.sourceInfo.shortRev}"
    );

  inherit src depsHash;

  outputs = [ "out" ] ++ lib.optionals withManpages [ "man" ];

  deps = prepareZigDB {
    inherit (finalAttrs) pname src depsHash;
  };

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
    "--system"
    finalAttrs.deps
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
    inherit zig make-zig-dependencies;
  };

  meta = {
    description = "Non-monolithic Wayland compositor";
    homepage = "https://codeberg.org/river/river";
    mainProgram = "river";
    platforms = lib.platforms.linux;
    pkgConfigModules = [ "river-protocols" ];
  };
})
