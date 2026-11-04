{ ghc }:

let
  system = builtins.currentSystem;
  flake = builtins.getFlake "path:${toString ./.}";
  pkgs = flake.legacyPackages.${system}.project.pkgs;
in

pkgs.haskell.lib.buildStackProject {
  inherit ghc;
  name = "myEnv";
  buildInputs = with pkgs; [
    gobject-introspection
    glib
    libsysprof-capture
    cairo
    pcre2
    #llvm_23
    llvmPackages_23.llvm
    llvmPackages_23.libclang
    libxkbcommon
    zlib
    libxdmcp
    libuuid
    libselinux
    libsepol
    harfbuzzFull
    gdk-pixbuf
    pango
    fribidi
    atk
    libthai
    libdatrie
    gtk3
    libepoxy
    libxml2
    systemdLibs
    libxtst
    pixman
    wayland
    wayland-protocols
  ];

  nativeBuildInputs = [
    pkgs.pkg-config
    pkgs.wayland-scanner
    # This setup hook should adjust BINDGEN_EXTRA_CLANG_ARGS
    # so that hs-bindgen-cli is passed include paths for our
    # Nix dependencies.
    pkgs.hsBindgenHook
    pkgs.doxygen
  ];

  extraArgs = "";
}
