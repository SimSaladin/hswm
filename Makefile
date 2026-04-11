# File: Makefile

WAYLAND_SCANNER	:= wayland-scanner --include-core-only --strict

PROTODIR	:= ./protocol
HEADERDIR := ./hswm-bindings/include
CDIR	:= ./hswm-bindings/cbits

CLIENT_PROTOS := river-window-management-v1.xml river-xkb-bindings-v1.xml river-xkb-config-v1.xml \
		   river-input-management-v1.xml river-layer-shell-v1.xml river-libinput-config-v1.xml \
		   input-method-unstable-v2.xml ext-session-lock-v1.xml \
		   xdg-output-unstable-v1.xml \
		   fractional-scale-v1.xml \
		   viewporter.xml \
		   wlr-output-management-unstable-v1.xml \
		   wlr-layer-shell-unstable-v1.xml

SERVER_PROTOS := river-status-unstable-v1.xml

WAYLAND_PROTO_PREFIX	:= $(shell pkg-config wayland-protocols --variable=pkgdatadir)
WAYLAND_PROTOS		:= $(wildcard $(WAYLAND_PROTO_PREFIX)/*/*/*.xml)
WaYLAND_CLIENT_HEADERS	:= $(subst $(WAYLAND_PROTO_PREFIX), , $(WAYLAND_PROTOS))

CLIENT_HEADERS := $(CLIENT_PROTOS:.xml=-client-protocol.h)
SERVER_HEADERS := $(SERVER_PROTOS:.xml=-server-protocol.h)
PRIVATE_CODE   := $(CLIENT_PROTOS:.xml=-protocol.c) $(SERVER_PROTOS:.xml=-protocol.c)

.PHONY: all bindgen bindgen-wayland-client bindgen-river-protocols bindgen-pixman-1

all: $(PRIVATE_CODE:%=$(CDIR)/%) $(CLIENT_HEADERS:%=$(HEADERDIR)/%) bindgen wayland-protos

wayland-protos: $(HEADERDIR)/wayland-protocols

$(HEADERDIR)/wayland-protocols: $(WAYLAND_PROTOS)
	mkdir -p $@
	for name in $^; do \
	  $(WAYLAND_SCANNER) client-header $$name $@/$$(basename -s .xml $$name)-client-protocol.h; \
	  $(WAYLAND_SCANNER) private-code  $$name $@/$$(basename -s .xml $$name)-protocol.c; \
	done

#########
# rules
#########

$(CLIENT_HEADERS:%=$(HEADERDIR)/%): $(HEADERDIR)/%-client-protocol.h: $(PROTODIR)/%.xml
	$(WAYLAND_SCANNER) client-header $< $@

$(PRIVATE_CODE:%=$(CDIR)/%): $(CDIR)/%-protocol.c: $(PROTODIR)/%.xml
	$(WAYLAND_SCANNER) private-code $< $@

###################
# hs-bindgen-cli
###################
bindingSpecs	:= hswm-bindings/binding-specs
bindGenOutDir	:= hswm-bindings/src
bindGenSpecDir	:= hswm-bindings/generated
HS_BIND_GEN	:= hs-bindgen-cli preprocess \
			   --hs-output-dir $(bindGenOutDir) --create-output-dirs --overwrite-files \
			   --omit-field-prefixes --enable-program-slicing --clang-option '-std=gnu23' \
			   -I /nix/store/j8irrc0mpx029dw0rmadsjylg7h31ync-glibc-2.42-51-dev/include \
			   -I $(HEADERDIR)

.PHONY: bindgen-wayland

bindgen: bindgen-wayland bindgen-river bindgen-pixman-1

bindgen-wayland:	\
	$(bindGenSpecDir)/Generated.Wayland.Util.yaml \
	$(bindGenSpecDir)/Generated.Wayland.Client.yaml
#	$(bindGenSpecDir)/Generated.Wayland.Server.yaml

bindgen-pixman-1:	$(bindGenSpecDir)/Generated.Pixman.yaml

bindgen-river:	\
	$(bindGenSpecDir)/Generated.River.InputManagementV1.yaml \
	$(bindGenSpecDir)/Generated.River.WindowManagementV1.yaml \
	$(bindGenSpecDir)/Generated.River.XkbConfigV1.yaml \
	$(bindGenSpecDir)/Generated.River.XkbBindingsV1.yaml \
	$(bindGenSpecDir)/Generated.River.LibinputConfigV1.yaml \
	$(bindGenSpecDir)/Generated.River.LayerShellV1.yaml \
	$(bindGenSpecDir)/Generated.Wlr.InputMethodV2.yaml \
	$(bindGenSpecDir)/Bindings.Wayland.ExtSessionLockV1.Generated.yaml \
	$(bindGenSpecDir)/Bindings.Wayland.FractionalScaleV1.Generated.yaml \
	$(bindGenSpecDir)/Bindings.Wayland.XdgOutputUnstableV1.Generated.yaml \
	$(bindGenSpecDir)/Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.yaml \
	$(bindGenSpecDir)/Bindings.Wayland.Viewporter.Generated.yaml \
	$(bindGenSpecDir)/Bindings.Wayland.WlrLayerShellUnstableV1.Generated.yaml

$(bindGenSpecDir)/Generated.Pixman.yaml: FORCE
	$(HS_BIND_GEN) \
	  --unique-id hswm_pixman pixman.h \
	  --gen-binding-spec $@ \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  $(shell pkg-config --cflags pixman-1) \
	  --prescriptive-binding-spec $(bindingSpecs)/pixman.yaml \
	  --select-from-main-header-dirs

$(bindGenSpecDir)/Generated.Wayland.Util.yaml: FORCE
	$(HS_BIND_GEN) \
	  --unique-id hswm_wl_util wayland-util.h \
	  --gen-binding-spec $@ \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  $(shell pkg-config --cflags wayland-client) \
	  --select-from-main-header-dirs \
	  --select-except-by-decl-name wl_log_func_t

$(bindGenSpecDir)/Generated.Wayland.Client.yaml: FORCE $(bindGenSpecDir)/Generated.Wayland.Util.yaml
	$(HS_BIND_GEN) \
	  --unique-id hswm_wl_client wayland-client{,-core,-protocol}.h \
	  --gen-binding-spec $@ \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  $(shell pkg-config --cflags wayland-client) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml \
	  --select-except-by-decl-name wl_log_func_t \
	  --select-except-by-decl-name wl_log_set_handler_client

# --select-except-by-decl-name wl_proxy_marshal_flags \
#	  --select-except-by-decl-name wl_proxy_marshal \
#	  --select-except-by-decl-name wl_proxy_marshal_constructor \
#	  --select-except-by-decl-name wl_proxy_marshal_constructor_versioned

$(bindGenSpecDir)/Generated.River.WindowManagementV1.yaml: $(HEADERDIR)/river-window-management-v1-client-protocol.h FORCE
	$(HS_BIND_GEN) $(<F) \
	  --gen-binding-spec $@ \
	  --unique-id $(patsubst Generated.%,%,$(patsubst %.yaml,%,$(@F))) \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Client.yaml \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml \
	  --external-binding-spec $(bindingSpecs)/wayland-client.yaml

$(bindGenSpecDir)/Generated.River.InputManagementV1.yaml: $(HEADERDIR)/river-input-management-v1-client-protocol.h FORCE
	$(HS_BIND_GEN) $(<F) \
	  --gen-binding-spec $@ \
	  --unique-id $(patsubst Generated.%,%,$(patsubst %.yaml,%,$(@F))) \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Client.yaml \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml \
	  --external-binding-spec $(bindingSpecs)/wayland-client.yaml

$(bindGenSpecDir)/Generated.River.XkbConfigV1.yaml: $(HEADERDIR)/river-xkb-config-v1-client-protocol.h FORCE
	$(HS_BIND_GEN) $(<F) \
	  --gen-binding-spec $@ \
	  --unique-id $(patsubst Generated.%,%,$(patsubst %.yaml,%,$(@F))) \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Client.yaml \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml \
	  --external-binding-spec $(bindingSpecs)/river-input-management.yaml

$(bindGenSpecDir)/Generated.River.XkbBindingsV1.yaml: $(HEADERDIR)/river-xkb-bindings-v1-client-protocol.h FORCE
	$(HS_BIND_GEN) $(<F) \
	  --gen-binding-spec $@ \
	  --unique-id $(patsubst Generated.%,%,$(patsubst %.yaml,%,$(@F))) \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Client.yaml \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml \
	  --external-binding-spec $(bindingSpecs)/river-window-management.yaml

$(bindGenSpecDir)/Generated.River.LayerShellV1.yaml: $(HEADERDIR)/river-layer-shell-v1-client-protocol.h FORCE
	$(HS_BIND_GEN) $(<F) \
	  --gen-binding-spec $@ \
	  --unique-id $(patsubst Generated.%,%,$(patsubst %.yaml,%,$(@F))) \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Client.yaml \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml \
	  --external-binding-spec $(bindingSpecs)/wayland-client.yaml \
	  --external-binding-spec $(bindingSpecs)/river-window-management.yaml

$(bindGenSpecDir)/Generated.River.LibinputConfigV1.yaml: $(HEADERDIR)/river-libinput-config-v1-client-protocol.h FORCE
	$(HS_BIND_GEN) $(<F) \
	  --gen-binding-spec $@ \
	  --unique-id $(patsubst Generated.%,%,$(patsubst %.yaml,%,$(@F))) \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Client.yaml \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml \
	  --external-binding-spec $(bindingSpecs)/river-input-management.yaml

$(bindGenSpecDir)/Generated.Wayland.Protocol.ForeignTopLevelListV1.yaml: $(HEADERDIR)/wayland-protocols/ext-foreign-toplevel-list-v1-client-protocol.h FORCE
	$(HS_BIND_GEN) $(<F) -I $(HEADERDIR)/wayland-protocols \
	  --gen-binding-spec $@ \
	  --unique-id $(patsubst Generated.%,%,$(patsubst %.yaml,%,$(@F))) \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml \
	  --external-binding-spec $(bindingSpecs)/wayland-client.yaml

# input-method-unstable-v2-client-protocol.h
$(bindGenSpecDir)/Generated.Wlr.InputMethodV2.yaml: $(HEADERDIR)/input-method-unstable-v2-client-protocol.h FORCE
	$(HS_BIND_GEN) $(<F) \
	  --gen-binding-spec $@ \
	  --unique-id $(patsubst Generated.%,%,$(patsubst %.yaml,%,$(@F))) \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml \
	  --external-binding-spec $(bindingSpecs)/wayland-client.yaml

# ext-session-lock-client-protocol.h
$(bindGenSpecDir)/Bindings.Wayland.ExtSessionLockV1.Generated.yaml: $(HEADERDIR)/ext-session-lock-v1-client-protocol.h FORCE
	$(HS_BIND_GEN) $(<F) \
	  --gen-binding-spec $@ \
	  --unique-id $(patsubst Generated.%,%,$(patsubst %.yaml,%,$(@F))) \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml \
	  --external-binding-spec $(bindingSpecs)/wayland-client.yaml

# xdg-output-unstable-v1.xml
$(bindGenSpecDir)/Bindings.Wayland.XdgOutputUnstableV1.Generated.yaml: $(HEADERDIR)/xdg-output-unstable-v1-client-protocol.h FORCE
	$(HS_BIND_GEN) $(<F) \
	  --gen-binding-spec $@ \
	  --unique-id $(patsubst Generated.%,%,$(patsubst %.yaml,%,$(@F))) \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml \
	  --external-binding-spec $(bindingSpecs)/wayland-client.yaml

#   fractional-scale-v1.xml
$(bindGenSpecDir)/Bindings.Wayland.FractionalScaleV1.Generated.yaml: $(HEADERDIR)/fractional-scale-v1-client-protocol.h FORCE
	$(HS_BIND_GEN) $(<F) \
	  --gen-binding-spec $@ \
	  --unique-id $(patsubst Generated.%,%,$(patsubst %.yaml,%,$(@F))) \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml \
	  --external-binding-spec $(bindingSpecs)/wayland-client.yaml

# wlr-output-management-unstable-v1.xml
$(bindGenSpecDir)/Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.yaml: $(HEADERDIR)/wlr-output-management-unstable-v1-client-protocol.h FORCE
	$(HS_BIND_GEN) $(<F) \
	  --gen-binding-spec $@ \
	  --unique-id $(patsubst Generated.%,%,$(patsubst %.yaml,%,$(@F))) \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml \
	  --external-binding-spec $(bindingSpecs)/wayland-client.yaml

# wlr-layer-shell-unstable-v1.xml
$(bindGenSpecDir)/Bindings.Wayland.WlrLayerShellUnstableV1.Generated.yaml: $(HEADERDIR)/wlr-layer-shell-unstable-v1-client-protocol.h FORCE
	$(HS_BIND_GEN) $(<F) \
	  --gen-binding-spec $@ \
	  --unique-id $(patsubst Generated.%,%,$(patsubst %.yaml,%,$(@F))) \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml \
	  --external-binding-spec $(bindingSpecs)/wayland-client.yaml

# viewporter.xml
$(bindGenSpecDir)/Bindings.Wayland.Viewporter.Generated.yaml: $(HEADERDIR)/viewporter-client-protocol.h FORCE
	$(HS_BIND_GEN) $(<F) \
	  --gen-binding-spec $@ \
	  --unique-id $(patsubst Generated.%,%,$(patsubst %.yaml,%,$(@F))) \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml \
	  --external-binding-spec $(bindingSpecs)/wayland-client.yaml

FORCE:
