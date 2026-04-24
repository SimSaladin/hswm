# File: Makefile

HEADERDIR		:= ./include
CDIR		:= ./cbits
bindingSpecs	:= ./binding-specs
bindGenOutDir	:= ./src
bindGenSpecDir	:= ./generated

WAYLAND_SCANNER	:= wayland-scanner --include-core-only --strict
BINDGEN := hs-bindgen-cli preprocess \
	--create-output-dirs \
	--overwrite-files \
	--omit-field-prefixes \
	--enable-program-slicing \
	--clang-option '-std=gnu23' \
	--hs-output-dir $(bindGenOutDir) \
	-I $(HEADERDIR) \
	-I $(HEADERDIR)/wayland-protocols

CLIENT_PROTOS := \
	river-input-management-v1.xml \
	river-layer-shell-v1.xml river-libinput-config-v1.xml \
	river-window-management-v1.xml \
	river-xkb-bindings-v1.xml \
	river-xkb-config-v1.xml \
	wlr-layer-shell-unstable-v1.xml \
	wlr-output-management-unstable-v1.xml \
	wlr-output-power-management-unstable-v1.xml \
	input-method-unstable-v2.xml

PROTODIR		:= ./protocol
CLIENT_HEADERS := $(CLIENT_PROTOS:.xml=-client-protocol.h)
SERVER_HEADERS := $(SERVER_PROTOS:.xml=-server-protocol.h)
PRIVATE_CODE   := $(CLIENT_PROTOS:.xml=-protocol.c)

WAYLAND_PROTO_PREFIX	:= $(shell pkg-config wayland-protocols --variable=pkgdatadir)
WAYLAND_PROTOS		:= $(wildcard $(WAYLAND_PROTO_PREFIX)/*/*/*.xml)
WaYLAND_CLIENT_HEADERS	:= $(subst $(WAYLAND_PROTO_PREFIX), , $(WAYLAND_PROTOS))
WAYLAND_PROTO_CLIENT_HEADERS := $(addprefix $(HEADERDIR)/wayland-protocols/, $(notdir $(WAYLAND_PROTOS:%.xml=%-client-protocol.h)))
WAYLAND_PROTO_PRIVATE_CODE   := $(addprefix $(CDIR)/wayland-protocols/, $(notdir $(WAYLAND_PROTOS:%.xml=%-protocol.c)))

bindgen-all =

bindgen-targets           = $(bindGenSpecDir)/$(1) $(addprefix $(addprefix $(bindGenOutDir)/,$(subst .,/,$(patsubst %.yaml,%,$(1)))), .hs /Global.hs /Safe.hs /FunPtr.hs /Unsafe.hs)
bindgen-targets-no-global = $(bindGenSpecDir)/$(1) $(addprefix $(addprefix $(bindGenOutDir)/,$(subst .,/,$(patsubst %.yaml,%,$(1)))), .hs /Safe.hs /FunPtr.hs /Unsafe.hs)

# $(call bindgen-run,HEADERS,SPEC_YAML,EXTERNAL_BINDING_SPECS)
bindgen-run = $(BINDGEN) $(1) \
	--gen-binding-spec $(bindGenSpecDir)/$(2) \
	--unique-id $(patsubst Generated.%,%,$(patsubst %.yaml,%,$(2))) \
	--module $(patsubst %.yaml,%,$(2)) \
	$(addprefix --external-binding-spec , $(3))

# bindgen_template,1:SPEC_YAML,2:HEADERS_PREREQ,3:HEADERS_NOT_PREREQ,4:EXTERNAL_BINDING_SPECS,5:EXTRA_ARGS
define bindgen_template =
$$(call bindgen-targets,$(1)) &: $(2) $(4)
	$$(call bindgen-run,$$(notdir $(2)) $(3),$(1),$(4)) $(5)
bindgen-all += $$(call bindgen-targets,$(1))
bindgen-headers += $(2)
endef

define bindgen_template_no_global =
$$(call bindgen-targets-no-global,$(1)) &: $(2) $(4)
	$$(call bindgen-run,$$(notdir $(2)) $(3),$(1),$(4)) $(5)
bindgen-all += $$(call bindgen-targets-no-global,$(1))
bindgen-headers += $(2)
endef

vpath %.xml $(wildcard $(WAYLAND_PROTO_PREFIX)/*/*)

.PHONY: all clean bindgen

all: $(WAYLAND_PROTO_PRIVATE_CODE) \
	$(WAYLAND_PROTO_CLIENT_HEADERS) \
	$(PRIVATE_CODE:%=$(CDIR)/%) \
	$(CLIENT_HEADERS:%=$(HEADERDIR)/%) \
  copy-wayland-protos \
	bindgen

clean:
	rm -f $(bindgen-all)
	rm -f $(WAYLAND_PROTO_PRIVATE_CODE) $(WAYLAND_PROTO_CLIENT_HEADERS) $(PRIVATE_CODE:%=$(CDIR)/%) $(CLIENT_HEADERS:%=$(HEADERDIR)/%)

copy-wayland-protos: $(WAYLAND_PROTOS)
	mkdir -p $(PROTODIR)/wayland-protocols
	for f in $^; do ln -nsf $$f $(PROTODIR)/wayland-protocols/$$(basename $$f); done

#########
# wayland scanner: client-header.h, protocol.c
#########

$(WAYLAND_PROTO_CLIENT_HEADERS): $(HEADERDIR)/wayland-protocols/%-client-protocol.h: %.xml
	$(WAYLAND_SCANNER) client-header $< $@

$(WAYLAND_PROTO_PRIVATE_CODE): $(CDIR)/wayland-protocols/%-protocol.c: %.xml
	$(WAYLAND_SCANNER) private-code $< $@

$(CLIENT_HEADERS:%=$(HEADERDIR)/%): $(HEADERDIR)/%-client-protocol.h: $(PROTODIR)/%.xml
	$(WAYLAND_SCANNER) client-header $< $@

$(PRIVATE_CODE:%=$(CDIR)/%): $(CDIR)/%-protocol.c: $(PROTODIR)/%.xml
	$(WAYLAND_SCANNER) private-code $< $@

###################
# hs-bindgen-cli
###################

# pixman.h
$(eval $(call bindgen_template_no_global,Bindings.Pixman.Generated.yaml,,pixman.h,, $(shell pkg-config --cflags pixman-1) --select-from-main-header-dirs))

# wayland-util.h
$(eval $(call bindgen_template_no_global,Bindings.Wayland.Util.Generated.yaml,,wayland-util.h,, --select-from-main-header-dirs --select-except-by-decl-name wl_log_func_t))

# wayland-client
$(eval $(call bindgen_template,Bindings.Wayland.Client.Generated.yaml,,wayland-client.h wayland-client-core.h wayland-client-protocol.h,\
	$(bindGenSpecDir)/Bindings.Wayland.Util.Generated.yaml,\
	$(shell pkg-config --cflags wayland-client) \
	--select-except-by-decl-name wl_log_func_t \
	--select-except-by-decl-name wl_log_set_handler_client))

# river-window-management
$(eval $(call bindgen_template,Bindings.River.WindowManagementV1.Generated.yaml,\
	$(HEADERDIR)/river-window-management-v1-client-protocol.h,,\
	  $(bindGenSpecDir)/Bindings.Wayland.Client.Generated.yaml \
	  $(bindGenSpecDir)/Bindings.Wayland.Util.Generated.yaml \
	  $(bindingSpecs)/wayland-client.yaml))

$(eval $(call bindgen_template,Bindings.River.InputManagementV1.Generated.yaml,\
	$(HEADERDIR)/river-input-management-v1-client-protocol.h,,\
	  $(bindGenSpecDir)/Bindings.Wayland.Client.Generated.yaml \
	  $(bindGenSpecDir)/Bindings.Wayland.Util.Generated.yaml \
	  $(bindingSpecs)/wayland-client.yaml))

$(eval $(call bindgen_template,Bindings.River.XkbConfigV1.Generated.yaml,\
	$(HEADERDIR)/river-xkb-config-v1-client-protocol.h,,\
	  $(bindGenSpecDir)/Bindings.Wayland.Client.Generated.yaml \
	  $(bindGenSpecDir)/Bindings.Wayland.Util.Generated.yaml \
	  $(bindingSpecs)/wayland-client.yaml \
	  $(bindingSpecs)/river-input-management.yaml))

$(eval $(call bindgen_template,Bindings.River.XkbBindingsV1.Generated.yaml,\
	$(HEADERDIR)/river-xkb-bindings-v1-client-protocol.h,,\
	  $(bindGenSpecDir)/Bindings.Wayland.Client.Generated.yaml \
	  $(bindGenSpecDir)/Bindings.Wayland.Util.Generated.yaml \
	  $(bindingSpecs)/wayland-client.yaml \
	  $(bindingSpecs)/river-window-management.yaml))

$(eval $(call bindgen_template,Bindings.River.LayerShellV1.Generated.yaml,\
	$(HEADERDIR)/river-layer-shell-v1-client-protocol.h,,\
	  $(bindGenSpecDir)/Bindings.Wayland.Client.Generated.yaml \
	  $(bindGenSpecDir)/Bindings.Wayland.Util.Generated.yaml \
	  $(bindingSpecs)/wayland-client.yaml \
	  $(bindingSpecs)/river-window-management.yaml))

$(eval $(call bindgen_template,Bindings.River.LibinputConfigV1.Generated.yaml,\
	$(HEADERDIR)/river-libinput-config-v1-client-protocol.h,,\
	  $(bindGenSpecDir)/Bindings.Wayland.Client.Generated.yaml \
	  $(bindGenSpecDir)/Bindings.Wayland.Util.Generated.yaml \
	  $(bindingSpecs)/river-input-management.yaml))

$(eval $(call bindgen_template,Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.yaml,$(HEADERDIR)/wayland-protocols/ext-foreign-toplevel-list-v1-client-protocol.h,,\
	$(bindGenSpecDir)/Bindings.Wayland.Util.Generated.yaml \
	$(bindingSpecs)/wayland-client.yaml))

# input-method-unstable-v2-client-protocol.h
$(eval $(call bindgen_template,Bindings.Wayland.WlrInputMethodUnstableV2.Generated.yaml,$(HEADERDIR)/input-method-unstable-v2-client-protocol.h,,\
	  $(bindGenSpecDir)/Bindings.Wayland.Util.Generated.yaml \
	  $(bindingSpecs)/wayland-client.yaml))

# ext-session-lock-client-protocol.h
$(eval $(call bindgen_template,Bindings.Wayland.ExtSessionLockV1.Generated.yaml,$(HEADERDIR)/wayland-protocols/ext-session-lock-v1-client-protocol.h,,\
	  $(bindGenSpecDir)/Bindings.Wayland.Util.Generated.yaml \
	  $(bindingSpecs)/wayland-client.yaml))

# ext-idle-notify-client-protocol.h
$(eval $(call bindgen_template,Bindings.Wayland.ExtIdleNotifyV1.Generated.yaml,$(HEADERDIR)/wayland-protocols/ext-idle-notify-v1-client-protocol.h,,\
	  $(bindGenSpecDir)/Bindings.Wayland.Util.Generated.yaml \
	  $(bindingSpecs)/wayland-client.yaml))

# xdg-output-unstable-v1.xml
$(eval $(call bindgen_template,Bindings.Wayland.XdgOutputUnstableV1.Generated.yaml,$(HEADERDIR)/wayland-protocols/xdg-output-unstable-v1-client-protocol.h,,\
	  $(bindGenSpecDir)/Bindings.Wayland.Util.Generated.yaml \
	  $(bindingSpecs)/wayland-client.yaml))

#   fractional-scale-v1.xml
$(eval $(call bindgen_template,Bindings.Wayland.FractionalScaleV1.Generated.yaml,$(HEADERDIR)/wayland-protocols/fractional-scale-v1-client-protocol.h,,\
	  $(bindGenSpecDir)/Bindings.Wayland.Util.Generated.yaml \
	  $(bindingSpecs)/wayland-client.yaml))

# wlr-output-management-unstable-v1.xml
$(eval $(call bindgen_template,Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.yaml,$(HEADERDIR)/wlr-output-management-unstable-v1-client-protocol.h,,\
	  $(bindGenSpecDir)/Bindings.Wayland.Util.Generated.yaml \
	  $(bindingSpecs)/wayland-client.yaml))

# wlr-output-power-management-unstable-v1.xml
$(eval $(call bindgen_template,Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.yaml,$(HEADERDIR)/wlr-output-power-management-unstable-v1-client-protocol.h,,\
	  $(bindGenSpecDir)/Bindings.Wayland.Util.Generated.yaml \
	  $(bindingSpecs)/wayland-client.yaml))

# wlr-layer-shell-unstable-v1.xml
$(eval $(call bindgen_template,Bindings.Wayland.WlrLayerShellUnstableV1.Generated.yaml,$(HEADERDIR)/wlr-layer-shell-unstable-v1-client-protocol.h,,\
	  $(bindGenSpecDir)/Bindings.Wayland.Util.Generated.yaml \
	  $(bindingSpecs)/wayland-client.yaml))

# viewporter.xml
$(eval $(call bindgen_template,Bindings.Wayland.Viewporter.Generated.yaml,$(HEADERDIR)/wayland-protocols/viewporter-client-protocol.h,,\
	$(bindGenSpecDir)/Bindings.Wayland.Util.Generated.yaml \
	$(bindingSpecs)/wayland-client.yaml))

bindgen: $(bindgen-all)

.PHONY: proto-code
proto-code:
	@echo $(patsubst $(HEADERDIR)/%-client-protocol.h,$(CDIR)/%-protocol.c,$(bindgen-headers))

#########################
