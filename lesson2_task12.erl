-module(lesson2_task12).
-export([decode_modified/1]).

decode_modified(List) -> decode_modified(List, []).

decode_modified([], Acc) -> lists:reverse(Acc);
decode_modified([{N, H} | T], Acc) -> decode_modified(T, expand(N, H, Acc));
decode_modified([H | T], Acc) -> decode_modified(T, [H | Acc]).

expand(0, _, Acc) -> Acc;
expand(N, H, Acc) -> expand(N - 1, H, [H | Acc]).
