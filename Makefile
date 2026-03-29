# File: Makefile

WAYLAND_SCANNER	:= wayland-scanner --include-core-only --strict
PROTODIR	:= ./protocol
HEADERDIR := ./cbits
CDIR	:= ./cbits
PROTOS	:= river-window-management-v1.xml river-xkb-bindings-v1.xml river-xkb-config-v1.xml \
		   river-input-management-v1.xml river-layer-shell-v1.xml river-libinput-config-v1.xml

CLIENT_HEADERS := $(PROTOS:.xml=-client-protocol.h)
PRIVATE_CODE   := $(PROTOS:.xml=-protocol.c)

.PHONY: all bindgen bindgen-wayland-client bindgen-river-protocols bindgen-pixman-1

all: $(PRIVATE_CODE:%=$(CDIR)/%) $(CLIENT_HEADERS:%=$(HEADERDIR)/%) bindgen

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
			   -I ./cbits

.PHONY: bindgen-wayland

bindgen: bindgen-wayland bindgen-river bindgen-pixman-1

bindgen-wayland:	$(bindGenSpecDir)/Generated.Wayland.Util.yaml $(bindGenSpecDir)/Generated.Wayland.Client.yaml
bindgen-river:	\
	$(bindGenSpecDir)/Generated.River.InputManagementV1.yaml \
	$(bindGenSpecDir)/Generated.River.WindowManagementV1.yaml \
	$(bindGenSpecDir)/Generated.River.XkbConfigV1.yaml \
	$(bindGenSpecDir)/Generated.River.XkbBindingsV1.yaml \
	$(bindGenSpecDir)/Generated.River.LibinputConfigV1.yaml \
	$(bindGenSpecDir)/Generated.River.LayoutShellV1.yaml

$(bindGenSpecDir)/Generated.Wayland.Util.yaml: FORCE
	$(HS_BIND_GEN) --unique-id hswm_wl_util wayland-util.h \
	  --gen-binding-spec $@ \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  $(shell pkg-config --cflags wayland-client) \
	  --select-from-main-header-dirs \
	  --select-except-by-decl-name wl_log_func_t

$(bindGenSpecDir)/Generated.Wayland.Client.yaml: FORCE $(bindGenSpecDir)/Generated.Wayland.Util.yaml
	$(HS_BIND_GEN) --unique-id hswm_wl_client wayland-client{,-core,-protocol}.h \
	  --gen-binding-spec $@ \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  $(shell pkg-config --cflags wayland-client) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml \
	  --prescriptive-binding-spec $(bindingSpecs)/wayland-client.yaml \
	  --select-except-by-decl-name \'wl_log_func_t$$\' \
	  --select-except-by-decl-name \'wl_log_set_handler_client$$\' \
	  --select-except-by-decl-name \'wl_proxy_marshal_flags$$\' \
	  --select-except-by-decl-name \'wl_proxy_marshal$$\' \
	  --select-except-by-decl-name \'wl_proxy_marshal_constructor$$\' \
	  --select-except-by-decl-name \'wl_proxy_marshal_constructor_versioned$$\'

$(bindGenSpecDir)/Generated.River.InputManagementV1.yaml: $(HEADERDIR)/river-input-management-v1-client-protocol.h FORCE
	$(HS_BIND_GEN) $(<F) \
	  --gen-binding-spec $@ \
	  --unique-id $(patsubst Generated.%,%,$(patsubst %.yaml,%,$(@F))) \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Client.yaml \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml

$(bindGenSpecDir)/Generated.River.WindowManagementV1.yaml: $(HEADERDIR)/river-window-management-v1-client-protocol.h FORCE
	$(HS_BIND_GEN) $(<F) \
	  --gen-binding-spec $@ \
	  --unique-id $(patsubst Generated.%,%,$(patsubst %.yaml,%,$(@F))) \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Client.yaml \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml

$(bindGenSpecDir)/Generated.River.XkbConfigV1.yaml: $(HEADERDIR)/river-xkb-config-v1-client-protocol.h FORCE
	$(HS_BIND_GEN) $(<F) \
	  --gen-binding-spec $@ \
	  --unique-id $(patsubst Generated.%,%,$(patsubst %.yaml,%,$(@F))) \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Client.yaml \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml

$(bindGenSpecDir)/Generated.River.XkbBindingsV1.yaml: $(HEADERDIR)/river-xkb-bindings-v1-client-protocol.h FORCE
	$(HS_BIND_GEN) $(<F) \
	  --gen-binding-spec $@ \
	  --unique-id $(patsubst Generated.%,%,$(patsubst %.yaml,%,$(@F))) \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Client.yaml \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml

$(bindGenSpecDir)/Generated.River.LayoutShellV1.yaml: $(HEADERDIR)/river-layer-shell-v1-client-protocol.h FORCE
	$(HS_BIND_GEN) $(<F) \
	  --gen-binding-spec $@ \
	  --unique-id $(patsubst Generated.%,%,$(patsubst %.yaml,%,$(@F))) \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Client.yaml \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml

$(bindGenSpecDir)/Generated.River.LibinputConfigV1.yaml: $(HEADERDIR)/river-libinput-config-v1-client-protocol.h FORCE
	$(HS_BIND_GEN) $(<F) \
	  --gen-binding-spec $@ \
	  --unique-id $(patsubst Generated.%,%,$(patsubst %.yaml,%,$(@F))) \
	  --module $(patsubst %.yaml,%,$(@F)) \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Client.yaml \
	  --external-binding-spec $(bindGenSpecDir)/Generated.Wayland.Util.yaml

FORCE:

# $(shell pkg-config --cflags xkbcommon)
