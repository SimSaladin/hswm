#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <xkbcommon/xkbcommon.h>
#include <xkbcommon/xkbregistry.h>

void my_log_fn(void (*cb)(enum rxkb_log_level, char*), enum rxkb_log_level level, const char *fmt, va_list ap)
{
    if (cb == NULL)
        return;

    int n = 0;
    size_t size = 0;
    char *p = NULL;
    va_list ap1;
    va_copy(ap1, ap);
    n = vsnprintf(p, size, fmt, ap1);
    va_end(ap1);

    if (n < 0)
        return;

    size = (size_t) n + 1;
    p = malloc(size);
    if (p == NULL)
        return;

    n = vsnprintf(p, size, fmt, ap);

    if (n < 0) {
        free(p);
        return;
    }

    cb(level, p);
    free(p);
}

void my_registry_log_fn(struct rxkb_context *ctx, enum rxkb_log_level level, const char *fmt, va_list ap) {
    void (*cb)(enum rxkb_log_level, char*) = rxkb_context_get_user_data(ctx);
    my_log_fn(cb, level, fmt, ap);
}

void my_context_log_fn(struct xkb_context *ctx, enum xkb_log_level level, const char *fmt, va_list ap) {
    void (*cb)(enum rxkb_log_level, char*) = xkb_context_get_user_data(ctx);
    my_log_fn(cb, (enum rxkb_log_level)level, fmt, ap);
}

void (*freeFunPtrFn)(void *) = NULL;

void set_registry_log_fn(struct rxkb_context *ctx, void *freeFunPtr, void (*cb)(enum rxkb_log_level, char*)) {
    freeFunPtrFn = freeFunPtr;
    rxkb_context_set_user_data(ctx, cb);
    rxkb_context_set_log_fn(ctx, my_registry_log_fn);
}

void set_context_log_fn(struct xkb_context *ctx, void *freeFunPtr, void (*cb)(enum xkb_log_level, char*)) {
    freeFunPtrFn = freeFunPtr;
    xkb_context_set_user_data(ctx, cb);
    xkb_context_set_log_fn(ctx, my_context_log_fn);
}

void finalize_context(void *env, struct xkb_context *ctx) {
    xkb_context_set_user_data(ctx, NULL);
    xkb_context_unref(ctx);
    if (env != NULL)
        freeFunPtrFn(env);
}

void finalize_registry(void *env, struct rxkb_context *ctx) {
    rxkb_context_set_user_data(ctx, NULL);
    rxkb_context_unref(ctx);
    if (env != NULL)
        freeFunPtrFn(env);
}
