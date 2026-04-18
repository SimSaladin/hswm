{
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
  zig_0_15,
  withManpages ? true,
  xwaylandSupport ? true,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "river";
  version = "0.5.0-dev";

  outputs = [ "out" ] ++ lib.optionals withManpages [ "man" ];

  src = fetchFromCodeberg {
    owner = "river";
    repo = "river";
    rev = "170d7836c178bef3bf042ec561ec5fd5771d91de";
    hash = "sha256-ase1mCqZl9xpYdHZAilj8amvKZ0AMlQlIIFTgrlC1u4=";
  };

  strictDeps = true;

  # zon2nix build.zig.zon > /home/sim/hswm/river.zig.zon.nix
  deps = callPackage ./river.zig.zon.nix { };

  nativeBuildInputs = [
    pkg-config
    wayland-scanner
    xwayland
    zig_0_15
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
  ++ lib.optional withManpages "-Dman-pages"
  ++ lib.optional xwaylandSupport "-Dxwayland";

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
