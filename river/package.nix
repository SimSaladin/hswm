{
  src,
  lib,
  stdenv,
  callPackage,
  fetchFromCodeberg,
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
  pkgs,
}:
let
  mkZon2Nix = { name, zonfile, outputHash ? "" }: pkgs.runCommand "zon2nix-${name}" {
    buildInputs = [
      pkgs.cacert
      pkgs.zon2nix
      pkgs.nix-prefetch-git
      pkgs.nix
      pkgs.zig
      pkgs.strace
      pkgs.git
    ];
    outputHashMode = "recursive";
    outputHashAlgo = "sha256";
    inherit outputHash;
  }
  ''
    export HOME=$PWD
    export TMPDIR=$PWD
    zon2nix ${zonfile} > $out
  '';

  deps0 = mkZon2Nix {
    name = "river";
    zonfile = "${src}/build.zig.zon";
    outputHash = "sha256-RomlAd47G7Op1Y9ql5pIUUibw+RO06izo2MPzpDtPg8=";
  };

  extra = mkZon2Nix {
    name = "translate_c";
    zonfile = "${callPackage deps0 {}}/translate_c-0.0.0-Q_BUWlX1BgCD1wo6uo97prlp9VJ4gxAjwN_vZ7nsSjGN/build.zig.zon";
    outputHash = "sha256-MJc+N/T2B8yW2sz1Ys8rGkhjgmmm+nXxNXnubCm0e6U=";
  };

  deps' = callPackage deps0 { linkFarm = name: ps: ps; };

  extra' = callPackage extra { linkFarm = name: ps: ps; };

  depsFinal = pkgs.linkFarm "zig-packages" (deps' ++ extra');
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

  # zon2nix build.zig.zon > /home/sim/hswm/river.zig.zon.nix
  deps = depsFinal;

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
