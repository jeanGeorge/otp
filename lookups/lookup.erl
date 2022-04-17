-module(lookup).
-export([run/1]).

run(Map) ->
    erlang:display(start),
    case Map of
        #{a := Val} -> {ok, "Atom", "Single", Val};
        #{a := Val1, b := Val2} -> {ok, "Atom", "Multiple", Val1, Val2};
        #{"a" := Val1} -> {ok, "String", "Single", Val1};
        #{"a" := Val1, "b" := Val2} -> {ok, "String", "Multiple", Val1, Val2};
        #{1 := Val} -> {ok, "Integer", "Single", Val};
        #{1 := Val1, 2 := Val2} -> {ok, "Integer", "Multiple", Val1, Val2};
        #{1.0 := Val} -> {ok, "Float", "Single", Val};
        #{1.0 := Val1, 2.0 := Val2} -> {ok, "Float", "Multiple", Val1, Val2};
        #{[a] := Val} -> {ok, "List", "Single", Val};
        #{[a, b] := Val} -> {ok, "List", "Multiple", Val};
        #{} -> error
    end,
    erlang:display(stop).
