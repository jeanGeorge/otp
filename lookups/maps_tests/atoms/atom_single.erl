-module(atom_single).
-export([run/1]).

run(Map) ->
    case Map of
        #{a := Val} -> {ok, "Atom", "Single", Val};
        #{} -> error
    end.

% emit_i_get_map_element_hash
% void BeamModuleAssembler::emit_i_get_map_element_hash
% https://github.com/erlang/otp/blob/master/erts/emulator/beam/jit/x86/instr_map.cpp#L493
