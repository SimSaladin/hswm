> [!IMPORTANT]
> This project/repo is currently just a playground for the River window manager
> protocol with Haskell, don't expect to find anything useful here!

# HsWM

**XMonad-inspired window manager for Wayland, powered by the River compositor
and window manager protocol.**

## Notes

The Nix shell provides more or less all tools needed for testing and
development (`nix develop`).

River with the binary from this project:

```bash
river -c path/to/hswm
```

Inside X11/Wayland the session is contained nested in its own window.

Figure out the Wl display ID to start programs inside the new session:

```bash
WAYLAND_DISPLAY=wayland-2 kitty
```

To restart on the fly, specify the file path to execute in `HSWM_EXECUTABLE`
environment variable:

```bash
HSWM_EXECUTABLE="/path/to/hswm"
```

### Generated C sources (`.c`, `.h`)

The Wl protocol bindings (checked into the repo) are generated with
`wayland-scanner`. They can be regenerated via:

```bash
make
```

### Compiling with `cabal` (directly)

The Nix shell sets up the Haskell dev environment with dependencies declared in
the package. You can simply do so:

```bsah
nix develop

cabal clean
cabal build
```

# River build

```bash
nix run '.#zig2nix-0_16_0' zon2lock river/build.zig.zon
nix run '.#zon2nix-0_16_0' zon2nix  river/build.zig.zon
# copy --> river/build.zig.zon.nix
```

# Running nested inside weston

```bash
weston --backend=wayland -- river -c $HSWM_EXECUTABLE -o -
```

# git-hooks

The git-hooks.nix install script won't install hooks if core.hooksPath is set;

```bash
git config set --local core.hooksPath ""
pre-commit install
git config unset --local core.hooksPath
```

Useful if the other hooksPath contains hooks that will discover and run
repo-local hooks!

```bash
pre-commit run # run checks
pre-commit run -a # run checks
```

--------

- [c2hs
  reference](https://github.com/haskell/c2hs/wiki/Implementation-of-Haskell-Binding-Modules#call-hooks)
- [tinyrwm](https://codeberg.org/river/tinyrwm) - Tiny river window manager examples
- [list of river window
  managers](https://codeberg.org/river/wiki/src/branch/main/pages/wm-list.md)

- <https://gitlab.freedesktop.org/wlroots/wlr-clients>
- <https://well-typed.com/blog/2026/02/hs-bindgen-alpha/>
