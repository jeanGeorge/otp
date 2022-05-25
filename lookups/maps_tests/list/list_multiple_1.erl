-module(list_multiple_1).
-export([run/1]).

run(Map) ->
    case Map of
        #{[1] := Val, [2] := Val2} -> {ok, "List", "Multiple", "Single", {Val, Val2}};
        #{} -> error
    end.
