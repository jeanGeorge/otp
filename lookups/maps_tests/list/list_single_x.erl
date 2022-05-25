-module(list_single_x).
-export([run/1]).

run(Map) ->
    case Map of
        #{[1, 2] := Val} -> {ok, "List", "Single", "X", Val};
        #{} -> error
    end.
