# File: Makefile

WAYLAND_SCANNER	:= wayland-scanner --include-core-only --strict
generateBinds	:= ./hs-bindgen-test.sh

PROTODIR	:= ./protocol
HEADERDIR := ./cbits
CDIR	:= ./cbits
PROTOS	:= river-window-management-v1.xml river-xkb-bindings-v1.xml \
	river-xkb-config-v1.xml river-input-management-v1.xml \
	river-layer-shell-v1.xml

CLIENT_HEADERS := $(PROTOS:.xml=-client-protocol.h)
PRIVATE_CODE   := $(PROTOS:.xml=-protocol.c)

.PHONY: all bindgen
all: $(PRIVATE_CODE:%=$(CDIR)/%) $(CLIENT_HEADERS:%=$(HEADERDIR)/%) bindgen

$(CLIENT_HEADERS:%=$(HEADERDIR)/%): $(HEADERDIR)/%-client-protocol.h: $(PROTODIR)/%.xml
	$(WAYLAND_SCANNER) client-header $< $@

$(PRIVATE_CODE:%=$(CDIR)/%): $(CDIR)/%-protocol.c: $(PROTODIR)/%.xml
	$(WAYLAND_SCANNER) private-code $< $@

bindgen: $(CLIENT_HEADERS:%=$(HEADERDIR)/%)
	$(generateBinds) Wayland.Util wayland-util.h \
	    --unique-id hswm.wl.util \
	    --select-from-main-header-dirs \
	    --select-except-by-decl-name wl_log_func_t
	$(generateBinds) Wayland.Client wayland-client{,-core,-protocol}.h \
	    --unique-id hswm.wl.client
	$(generateBinds) River.InputManagementV1 river-input-management-v1-client-protocol.h \
	    --unique-id hswm.river.input-management
	$(generateBinds) River.WindowManagementV1 river-window-management-v1-client-protocol.h \
	    --unique-id hswm.river.window-manage
	$(generateBinds) River.XkbConfigV1 river-xkb-config-v1-client-protocol.h \
	    --unique-id hswm.river.xkb-config
	$(generateBinds) River.XkbBindingsV1 river-xkb-bindings-v1-client-protocol.h \
	    --unique-id hswm.river.xkb-bindings
	$(generateBinds) River.LayoutShellV1 river-layer-shell-v1-client-protocol.h \
	    --unique-id hswm.river.layer-shell
