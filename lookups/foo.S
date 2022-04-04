{module, foo}.  %% version = 0

{exports, [{bar,1},{module_info,0},{module_info,1}]}.

{attributes, []}.

{labels, 9}.


{function, bar, 1, 2}.
  {label,1}.
    {line,[{location,"foo.erl",4}]}.
    {func_info,{atom,foo},{atom,bar},1}.
  {label,2}.
    {test,is_map,{f,4},[{x,0}]}.
    {get_map_elements,{f,3},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,foo},{x,0}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.
  {label,3}.
    {move,{atom,error},{x,0}}.
    return.
  {label,4}.
    {line,[{location,"foo.erl",5}]}.
    {case_end,{x,0}}.


{function, module_info, 0, 6}.
  {label,5}.
    {line,[]}.
    {func_info,{atom,foo},{atom,module_info},0}.
  {label,6}.
    {move,{atom,foo},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 8}.
  {label,7}.
    {line,[]}.
    {func_info,{atom,foo},{atom,module_info},1}.
  {label,8}.
    {move,{x,0},{x,1}}.
    {move,{atom,foo},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
