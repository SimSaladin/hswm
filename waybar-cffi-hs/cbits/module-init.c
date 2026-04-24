/* From: http://weblog.haskell.cz/pivnik/building-a-shared-library-in-haskell/ */

#define STR(a) XSTR(a)
#define XSTR(a) #a

#include <stdio.h>
#include "HsFFI.h"
#include "Rts.h"
#include "Waybar/CFFI/Plugin_stub.h"

// FFI would export this as a function but waybar expects a const value...
extern const size_t wbcffi_version;
const size_t wbcffi_version = WCFFI_VERSION;

static HsBool library_init(void) __attribute__((constructor));
static HsBool library_init(void)
{
    static char *argv[] = { STR(MODULE) ".so", 0 }, **argp = argv;
    static int argc = 0;

    RtsConfig conf = defaultRtsConfig;
    conf.rts_opts_enabled = RtsOptsAll;
    hs_init_ghc(&argc, &argp, conf);

    plugin_runtime_init();

    return HS_BOOL_TRUE;
}

static void library_exit(void) __attribute__((destructor));
static void library_exit(void)
{
    plugin_runtime_destroy();
    hs_exit();
}
