{ ghc }:

let
  system = builtins.currentSystem;
  flake = builtins.getFlake "path:${toString ./.}";
  pkgs = flake.legacyPackages.${system}.project.pkgs;
in

pkgs.haskell.lib.buildStackProject {
  inherit ghc;
  name = "stack-nix";
  buildInputs = with pkgs; [
    atk
    cairo
    fribidi
    gcc-unwrapped
    gdk-pixbuf
    glib
    gobject-introspection
    gtk3
    harfbuzzFull
    libdatrie
    libepoxy
    libgcc
    libselinux
    libsepol
    libsysprof-capture
    libthai
    libuuid
    libxdmcp
    libxkbcommon
    libxml2
    libxtst
    llvmPackages_23.libc-full
    llvmPackages_23.libclang
    llvmPackages_23.llvm
    pango
    pcre2
    pixman
    systemdLibs
    wayland
    wayland-protocols
    zlib
  ];

  nativeBuildInputs = [
    pkgs.doxygen
    # This setup hook should adjust BINDGEN_EXTRA_CLANG_ARGS
    # so that hs-bindgen-cli is passed include paths for our
    # Nix dependencies.
    pkgs.hsBindgenHook
    pkgs.llvmPackages_23.bintools
    pkgs.wayland-scanner
  ];

  extraArgs = "";
}
