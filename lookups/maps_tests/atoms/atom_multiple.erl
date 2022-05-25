-module(atom_multiple).
-export([run/1]).

run(Map) ->
    case Map of
        #{a := Val, b := Val2} -> {ok, "Atom", "Multiple", {Val, Val2}};
        #{} -> error
    end.


% https://github.com/erlang/otp/blob/master/erts/emulator/beam/jit/x86/instr_map.cpp#L392-L440
