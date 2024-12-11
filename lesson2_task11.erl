-module(lesson2_task11).
-export([encode_modified/1]).

encode_modified([]) -> [];
encode_modified([H|T]) -> encode_modified(T, H, 1, []).

encode_modified([], Curr, 1, Acc) -> lists:reverse([Curr | Acc]);
encode_modified([], Curr, Count, Acc) -> lists:reverse([{Count, Curr} | Acc]);
encode_modified([H|T], H, Count, Acc) -> encode_modified(T, H, Count + 1, Acc);
encode_modified([H|T], Prev, 1, Acc) -> encode_modified(T, H, 1, [Prev | Acc]);
encode_modified([H|T], Prev, Count, Acc) -> encode_modified(T, H, 1, [{Count, Prev} | Acc]).
