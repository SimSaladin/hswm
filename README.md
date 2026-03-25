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

### Generated C sources (`.c`, `.h`)

The Wl protocol bindings (checked into the repo) are generated with
`wayland-scanner`. They can be regenerated via:

```bash
./genproto.sh
```

### Compiling with `cabal` (directly)

The Nix shell sets up the Haskell dev environment with dependencies declared in
the package. You can simply do so:

```bsah
nix develop

cabal clean
cabal build
```

--------

- [c2hs
  reference](https://github.com/haskell/c2hs/wiki/Implementation-of-Haskell-Binding-Modules#call-hooks)
- [tinyrwm](https://codeberg.org/river/tinyrwm) - Tiny river window manager examples
- [list of river window
  managers](https://codeberg.org/river/wiki/src/branch/main/pages/wm-list.md)
