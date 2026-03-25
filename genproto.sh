#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
WAYLAND_SCANNER="wayland-scanner --include-core-only --strict"

protoDir=$SCRIPT_DIR/protocol
headerDir=$SCRIPT_DIR/cbits

$WAYLAND_SCANNER client-header "$protoDir/river-window-management-v1.xml" "$headerDir/river-window-management-v1-client-protocol.h"
$WAYLAND_SCANNER private-code  "$protoDir/river-window-management-v1.xml" "$headerDir/river-window-management-v1-protocol.c"

$WAYLAND_SCANNER client-header "$protoDir/river-xkb-bindings-v1.xml"      "$headerDir/river-xkb-bindings-v1-client-protocol.h"
$WAYLAND_SCANNER private-code  "$protoDir/river-xkb-bindings-v1.xml"      "$headerDir/river-xkb-bindings-v1-protocol.c"
