-module(lesson2_task10).
-export([encode/1]).

encode([]) -> [];
encode([H|T]) -> encode(T, H, 1, []).

encode([], Curr, Count, Acc) -> lists:reverse([{Count, Curr} | Acc]);
encode([H|T], H, Count, Acc) -> encode(T, H, Count + 1, Acc); 
encode([H|T], Prev, Count, Acc) -> encode(T, H, 1, [{Count, Prev} | Acc]).
