-module(map_multiple_1).
-export([run/1]).

run(Map) ->
    case Map of
        #{#{a => 1} := Val, #{b => 2} := Val2} -> {ok, "Map", "Multiple", "Single", {Val, Val2}};
        #{} -> error
    end.
