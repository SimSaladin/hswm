#!/usr/bin/env bash

set -euo pipefail

wayland-scanner client-header river-window-management-v1.xml river-window-management-v1.h
c2hs river-window-management-v1.h RiverWMv1.chs
