-module(lesson2_task13).
-export([decode/1]).

decode(List) -> decode(List, []).

decode([], Acc) -> lists:reverse(Acc);
decode([{N, H} | T], Acc) -> decode(T, expand(N, H, Acc)). 

expand(0, _, Acc) -> Acc;
expand(N, H, Acc) -> expand(N - 1, H, [H | Acc]). 
