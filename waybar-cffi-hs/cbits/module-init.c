
static HsBool library_init(void) __attribute__((constructor));
static HsBool library_init(void)
{
    static int argc = 3;
    static char *argv[] = { CURRENT_COMPONENT_ID ".so", "+RTS", "-N", NULL };
    static char **pargv = argv;

    RtsConfig conf = defaultRtsConfig;
    conf.rts_opts_enabled = RtsOptsAll;
    hs_init_ghc(&argc, &pargv, conf);

    plugin_runtime_init();

    return HS_BOOL_TRUE;
}

static void library_exit(void) __attribute__((destructor));
static void library_exit(void)
{
    plugin_runtime_destroy();
    hs_exit_nowait();
}
