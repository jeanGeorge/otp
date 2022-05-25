-module(integer_multiple).
-export([run/1]).

run(Map) ->
    case Map of
        #{1 := Val, 2:= Val2} -> {ok, "Integer", "Multiple", {Val, Val2}};
        #{} -> error
    end.
