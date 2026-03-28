# File: Makefile

WAYLAND_SCANNER	:= wayland-scanner --include-core-only --strict
HS_BIND_GEN	:= ./hs-bindgen-test.sh
PROTODIR	:= ./protocol
HEADERDIR := ./cbits
CDIR	:= ./cbits
PROTOS	:= river-window-management-v1.xml river-xkb-bindings-v1.xml river-xkb-config-v1.xml \
		   river-input-management-v1.xml river-layer-shell-v1.xml

CLIENT_HEADERS := $(PROTOS:.xml=-client-protocol.h)
PRIVATE_CODE   := $(PROTOS:.xml=-protocol.c)

.PHONY: all bindgen bindgen-wayland-client bindgen-river-protocols bindgen-pixman-1

all: $(PRIVATE_CODE:%=$(CDIR)/%) $(CLIENT_HEADERS:%=$(HEADERDIR)/%) bindgen

bindgen: bindgen-wayland-client bindgen-river-protocols bindgen-pixman-1

$(CLIENT_HEADERS:%=$(HEADERDIR)/%): $(HEADERDIR)/%-client-protocol.h: $(PROTODIR)/%.xml
	$(WAYLAND_SCANNER) client-header $< $@

$(PRIVATE_CODE:%=$(CDIR)/%): $(CDIR)/%-protocol.c: $(PROTODIR)/%.xml
	$(WAYLAND_SCANNER) private-code $< $@

bindgen-wayland-client: $(CLIENT_HEADERS:%=$(HEADERDIR)/%)
	$(HS_BIND_GEN) Wayland.Util             wayland-util.h                     --unique-id hswm.wl.util --select-from-main-header-dirs --select-except-by-decl-name wl_log_func_t
	$(HS_BIND_GEN) Wayland.Client           wayland-client{,-core,-protocol}.h --unique-id hswm.wl.client

bindgen-river-protocols: $(CLIENT_HEADERS:%=$(HEADERDIR)/%)
	$(HS_BIND_GEN) River.InputManagementV1  river-input-management-v1-client-protocol.h  --unique-id hswm.river.input-management
	$(HS_BIND_GEN) River.WindowManagementV1 river-window-management-v1-client-protocol.h --unique-id hswm.river.window-manage
	$(HS_BIND_GEN) River.XkbConfigV1        river-xkb-config-v1-client-protocol.h        --unique-id hswm.river.xkb-config
	$(HS_BIND_GEN) River.XkbBindingsV1      river-xkb-bindings-v1-client-protocol.h      --unique-id hswm.river.xkb-bindings
	$(HS_BIND_GEN) River.LayoutShellV1      river-layer-shell-v1-client-protocol.h       --unique-id hswm.river.layer-shell

bindgen-pixman-1:
	$(HS_BIND_GEN) Pixman                   pixman.h           --unique-id hswm.pixman \
	  $(shell pkg-config --cflags pixman-1) --select-from-main-header-dirs
