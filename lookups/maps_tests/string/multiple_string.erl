-module(multiple_string).
-export([run/1]).

run(Map) ->
    case Map of
        #{"a" := Val, "b":= Val2} -> {ok, "Multiple", "String", {Val, Val2}};
        #{} -> error
    end.
