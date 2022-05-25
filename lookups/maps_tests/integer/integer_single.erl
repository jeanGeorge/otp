-module(integer_single).
-export([run/1]).

run(Map) ->
    case Map of
        #{1 := Val} -> {ok, "Integer", "Single", Val};
        #{} -> error
    end.
