-module(map_single_1).
-export([run/1]).

run(Map) ->
    case Map of
        #{#{a => 1} := Val} -> {ok, "Map", "Single", "1" , Val};
        #{} -> error
    end.
