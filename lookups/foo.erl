-module(foo).
-export([bar/1]).

bar(Map) ->
  case Map of
    #{foo := Val} -> {ok, Val};
    #{"baz" := Val} -> {ok, Val};
    #{} -> error
  end.


% c(foo).
% foo:bar(#{foo => 1}).
