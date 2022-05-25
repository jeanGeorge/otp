-module(float_multiple).
-export([run/1]).

run(Map) ->
    case Map of
        #{1.0 := Val, 2.0 := Val2} -> {ok, "Float", "Multiple", {Val, Val2}};
        #{} -> error
    end.
