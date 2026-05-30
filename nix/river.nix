{
  src,
  depsHash ? "",
  lib,
  stdenv,
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
  useLLVM ? true,
  runCommand,
  callZon2Nix,
}:
let

  version = lib.fileContents (runCommand "get-version" { } ''
    sed -n '/\.version =/s/^[^"]*"\(.*\)".*$/\1/p' ${src}/build.zig.zon >$out
  '');

  suffix = "-g${src.sourceInfo.shortRev}+${lib.substring 0 8 src.sourceInfo.lastModifiedDate}";
in

stdenv.mkDerivation (finalAttrs: {
  pname = "river";
  version = version + suffix;

  outputs = [ "out" ] ++ lib.optionals withManpages [ "man" ];

  inherit src;

  postPatch = ''
    sed -i '/\.version =/s/".*"/"${finalAttrs.version}"/' build.zig.zon
  '';

  strictDeps = true;

  deps = callZon2Nix {
    name = finalAttrs.pname;
    inherit (finalAttrs) src;
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

  preBuild = ''
    mkdir -p .zig-pkgs
    pushd .zig-pkgs
    for pkg in ${finalAttrs.deps}/*; do
      name=$(basename "$pkg")
      pkg=$(readlink -f $pkg)
      if [[ -d $pkg ]]; then
        cp -r --no-preserve=all "$pkg" ./"$name"
      else
        tar xf "$pkg"
      fi
    done
    ls -la . */
    popd
  '';

  zigBuildFlags = [
    "--system"
    ".zig-pkgs"
  ]
  ++ lib.optional (!withDebug) "-Dstrip"
  ++ lib.optional useLLVM "-Dllvm"
  ++ lib.optional withDebug "-Doptimize=Debug"
  ++ lib.optional (!withDebug) "-Doptimize=ReleaseFast"
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
