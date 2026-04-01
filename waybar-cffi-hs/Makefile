# File: waybar-cffi-hs/Makefile

CFLAGS	:= $(shell pkg-config gtk+-3.0 --cflags)
GHC	:= cabal v2-exec --ghc-options=-fPIC -- ghc -fPIC $(CFLAGS) -package hswm

hs_SRC	= Foo.hs
c_SRC	= module-init.c
objects	= $(hs_SRC:.hs=.o) $(c_SRC:.c=.o) waybar-cffi.so

waybar-cffi.so: $(hs_SRC) $(c_SRC)
	$(GHC) -O2 -c -dynamic -fPIC $(hs_SRC)
	$(GHC) -O2 -c $(c_SRC)
	$(GHC) -O2 -c -dynamic -shared -flink-rts -o $@ $(hs_SRC:.hs=.o) $(c_SRC:.c=.o)

.PHONY: clean
clean:
	rm -f $(objects) $(hs_SRC:.hs=.hi) $(hs_SRC:.hs=_stub.h)
