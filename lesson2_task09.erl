-module(lesson2_task09).
-export([pack/1]).

pack([]) -> [];
pack([H|T]) -> pack(T, H, [H], []).

pack([], _, CurrGroup, Acc) -> lists:reverse([lists:reverse(CurrGroup) | Acc]);
pack([H|T], H, CurrGroup, Acc) -> pack(T, H, [H | CurrGroup], Acc); 
pack([H|T], _, CurrGroup, Acc) -> pack(T, H, [H], [lists:reverse(CurrGroup) | Acc]).