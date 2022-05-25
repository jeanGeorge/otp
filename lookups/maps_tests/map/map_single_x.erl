-module(map_single_x).
-export([run/1]).

run(Map) ->
    case Map of
        #{#{a => 1, b => 2} := Val} -> {ok, "Map", "Single", "X", Val};
        #{} -> error
    end.
