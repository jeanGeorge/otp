-module(list_multiple_x).
-export([run/1]).

run(Map) ->
    case Map of
        #{[1, 2] := Val, [3, 4] := Val2} -> {ok, "List", "Multiple", "Multiple Elements", {Val, Val2}};
        #{} -> error
    end.
