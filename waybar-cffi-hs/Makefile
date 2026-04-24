# File: waybar-cffi-hs/Makefile

CFLAGS	:= # $(shell pkg-config gtk+-3.0 --cflags)
#GHC	:= cabal v2-exec --ghc-options=-fPIC -- ghc -fPIC $(CFLAGS) -package waybar-cffi-hs
GHC	:= ghc -fPIC $(CFLAGS) -package waybar-cffi-hs -XRecordWildCards

hs_SRC	= plugin/Waybar/CFFI/Plugin.hs
c_SRC	= cbits/module-init.c
objects	= $(hs_SRC:.hs=.o) $(c_SRC:.c=.o) waybar-cffi.so

waybar-cffi.so: $(hs_SRC) $(c_SRC)
	$(GHC) -O2 -c -dynamic $(hs_SRC)
	$(GHC) -O2 -c -optc-idirafter$$PWD/plugin -optc-DWCFFI_VERSION=2 $(c_SRC)
	$(GHC) -O2 -c -dynamic -shared -flink-rts -o $@ $(hs_SRC:.hs=.o) $(c_SRC:.c=.o)

.PHONY: clean
clean:
	rm -f $(objects) $(hs_SRC:.hs=.hi) $(hs_SRC:.hs=_stub.h)
