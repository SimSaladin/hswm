# File: Makefile

WAYLAND_SCANNER := wayland-scanner --include-core-only --strict

PROTODIR := ./protocol
HEADERDIR := ./cbits
CDIR := ./cbits

PROTOS := river-window-management-v1.xml river-xkb-bindings-v1.xml river-xkb-config-v1.xml river-input-management-v1.xml

CLIENT_HEADERS := $(PROTOS:.xml=-client-protocol.h)
PRIVATE_CODE   := $(PROTOS:.xml=-protocol.c)

.PHONY: all
all: $(PRIVATE_CODE:%=$(CDIR)/%) $(CLIENT_HEADERS:%=$(HEADERDIR)/%)

$(CLIENT_HEADERS:%=$(HEADERDIR)/%): $(HEADERDIR)/%-client-protocol.h: $(PROTODIR)/%.xml
	$(WAYLAND_SCANNER) client-header $< $@

$(PRIVATE_CODE:%=$(CDIR)/%): $(CDIR)/%-protocol.c: $(PROTODIR)/%.xml
	$(WAYLAND_SCANNER) private-code $< $@
