-module(map_multiple_x).
-export([run/1]).

run(Map) ->
    case Map of
        #{#{a => 1, b => 2} := Val, #{c => 3, d => 4} := Val2} -> {ok, "Map", "Multiple", "Multiple Elements", {Val, Val2}};
        #{} -> error
    end.
