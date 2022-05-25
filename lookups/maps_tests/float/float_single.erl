-module(float_single).
-export([run/1]).

run(Map) ->
    case Map of
        #{1.0 := Val} -> {ok, "Float", "Single", Val};
        #{} -> error
    end.
