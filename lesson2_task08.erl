-module(lesson2_task08).
-export([compress/1]).

compress(List) ->
    compress(List, []).

compress([], Acc) ->
    lists:reverse(Acc); 
compress([H | T], []) ->
    compress(T, [H]); 
compress([H | T], [H | _Rest] = Acc) ->
    compress(T, Acc); 
compress([H | T], Acc) ->
    compress(T, [H | Acc]). 