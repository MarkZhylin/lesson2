-module(lesson2_task15).
-export([replicate/2]).

replicate(List, N) -> replicate(List, N, []).

replicate([], _, Acc) -> lists:reverse(Acc);
replicate([H|T], N, Acc) -> replicate(T, N, expand(N, H, Acc)).

expand(0, _, Acc) -> Acc; 
expand(N, H, Acc) -> expand(N - 1, H, [H | Acc]).
