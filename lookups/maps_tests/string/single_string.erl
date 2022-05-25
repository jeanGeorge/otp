-module(single_string).
-export([run/1]).

run(Map) ->
    case Map of
        #{"a" := Val1} -> {ok, "String", "Single", Val1};
        #{} -> error
    end.
