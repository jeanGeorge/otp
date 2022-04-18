CC=gcc

ERL_SRC=-I/usr/local/lib/erlang/erts-12.3/include

BIN_SRC=priv/elixir_nif.so

NIF_SRC=c_src/elixir_nif.c

POSITION_INDEPENDENT=-shared -fpic

nif:
	$(CC) -o $(BIN_SRC) $(POSITION_INDEPENDENT) $(ERL_SRC) $(NIF_SRC)
nif.clean:
	rm ./priv/*
