{ src
, input

, zigEnv

, lib
, stdenv
, callPackage
, runCommand

, libGL
, libx11
, libevdev
, libinput
, libxkbcommon
, pixman
, pkg-config
, scdoc
, udev
, systemdLibs
, versionCheckHook
, wayland
, wayland-protocols
, wayland-scanner
, wlroots_0_20
, xwayland
, zig_0_16
, zig_0_17

, withManpages ? true
, xwaylandSupport ? true
, withDebug ? false
, useLLVM ? stdenv.hostPlatform.isLinux || (stdenv.hostPlatform.isDarwin && stdenv.hostPlatform.isx86_64)
}:

let
  zig = zig_0_16;

  # read version string from build.zig.zon
  zonVersion = lib.fileContents (runCommand "get-version" { } ''
    sed -nE '/\.version =/s/^.*?"(.+-dev|.+)".*$/\1/p' ${src}/build.zig.zon >$out
  '');
  versionSuffix = lib.concatStrings (
       (lib.optional (input ? sourceInfo && input.sourceInfo ? lastModifiedDate) "+${lib.substring 0 8 input.sourceInfo.lastModifiedDate}")
    ++ (lib.optional (input ? sourceInfo && input.sourceInfo ? shortRev) "-g${input.sourceInfo.shortRev}")
  );

  # Unpack all deps in case they are tarballs for use with zig build "--system"
  prepareZigDB = deps: runCommand "zig-packages" { } # { passthru = { inherit zon-nix input zig-packages; }; }
    ''
      mkdir -p $out
      for pkg in ${deps}/*; do
        if [[ -d $(readlink -f "$pkg") ]]; then
          echo "error: is directory:  (cp -rv --no-preserve=all '$pkg/ $out/$name)"
          exit 1
        else
          tar -xf "$pkg" -C $out
        fi
      done
    '';

  calculatedDeps = callPackage ./build.zig.zon.nix { inherit zig; };
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

  deps = prepareZigDB calculatedDeps;

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

  zigBuildFlags = [ "--system" finalAttrs.deps ]
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
    inherit input calculatedDeps;
  };

  meta = {
    description = "Non-monolithic Wayland compositor";
    homepage = "https://codeberg.org/river/river";
    mainProgram = "river";
    platforms = lib.platforms.linux;
  };
})
