#include <xkbcommon/xkbcommon.h>
#include <xkbcommon/xkbregistry.h>

void set_context_log_fn(struct xkb_context *, void *, void *);
void set_registry_log_fn(struct rxkb_context *, void *, void *);

void finalize_registry(void *, struct rxkb_context *);
void finalize_context(void *, struct xkb_context *);
