/* From: http://weblog.haskell.cz/pivnik/building-a-shared-library-in-haskell/ */

#define CAT(a,b) XCAT(a,b)
#define XCAT(a,b) a ## b
#define STR(a) XSTR(a)
#define XSTR(a) #a

#include <stdio.h>
#include <HsFFI.h>

extern void CAT(__stginit_, MODULE)(void);

// FFI would export this as a function but waybar expects a const value...
extern const size_t wbcffi_version;
const size_t wbcffi_version = WCFFI_VERSION;

static HsBool library_init(void) __attribute__((constructor));
static HsBool library_init(void)
{
    static char *argv[] = { STR(MODULE) ".so", 0 }, **argp = argv;
    static int argc = 0;

    hs_init(&argc, &argp);

   return HS_BOOL_TRUE;
}

static void library_exit(void) __attribute__((destructor));
static void library_exit(void)
{
    hs_exit();
}
