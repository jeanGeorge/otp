-module(list_single_1).
-export([run/1]).

run(Map) ->
    case Map of
        #{[1] := Val} -> {ok, "List", "Single", "1" , Val};
        #{} -> error
    end.
