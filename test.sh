#!/usr/bin/env bash

set -euo pipefail
set -x

HSWM_EXECUTABLE=$(cabal list-bin hswm:exe:hswm)
RIVER=${river:-river}

# error, warning, info, or debug.
#riverLogLevel=
# ALT: conflicts
# CTRL: conflicts
# M4: (obv.) conflicts
# none: conflicts
# mod3: no clue how to get this to fire...
# mod5: appears to be emitted from alt+gr

hswmCmd="$HSWM_EXECUTABLE -o - -l debug --state-file=none --state-save=0 --log-format=plain --color=yes --override-default-mod-mask=mod5"

riverCmd=( "$RIVER" -log-level "${riverLogLevel:-warning}" -c "$hswmCmd" )

"${riverCmd[@]}"
#
## --no-xwm-decorations
#westonArgs=(
#    --backend=wayland
#    --width=500
#    --height=500
#)
#
#weston "${westonArgs[@]}" -- "${riverCmd[@]}"
