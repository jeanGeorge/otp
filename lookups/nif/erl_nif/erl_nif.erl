-module(erl_nif).
-export([my_custom_nif/0]).

-on_load(init/0).

init() -> ok = erlang:load_nif("./erl_nif", 0).

my_custom_nif() -> erlang:nif_error("NIF not loaded").
