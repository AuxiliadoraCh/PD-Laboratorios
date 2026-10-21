member(E, List).

% Base Case
list_length([],0).
% recursive Case
list_length([_|TAIL],N) :- list_length(TAIL,TailLength), N is TailLength + 1.

list_length([a,b,c], N).

append(List1, List2, X).

delete(List, E, Nuevalista).
list_delete(X, [X], []).
list_delete(X,[X|L1], L1).
list_delete(X, [Y|L2], [Y|L1]) :- list_delete(X,L2,L1).

insert_head(X, L, [X|L]).

insert_tail(X, L, R) :- append(L, [X], R).

list_delete(X, [X], []).
list_delete(X,[X|L1], L1).
list_delete(X, [Y|L2], [Y|L1]) :- list_delete(X,L2,L1).
list_insert(X,L,R) :- list_delete(X,R,L).


permutation(L, X).

combination(+K, +List, -CombinationResult).

reverse(List, ReverseList).

list_order_asc([X, Y | Tail]) :- X =< Y, list_order_asc([Y|Tail]).
list_order_asc([X]).

list_order_desc([]).
list_order_desc([_]).
list_order_desc([X, Y|Tail]) :-
    X @>= Y,
    list_order_desc([Y|Tail]).

mergesort([],[]).
mergesort([A],[A]).
mergesort([A,B|R],S) :-   split([A,B|R],L1,L2),   mergesort(L1,S1),   mergesort(L2,S2),   merge(S1,S2,S).
split([],[],[]).
split([A],[A],[]).
split([A,B|R],[A|Ra],[B|Rb]) :-   split(R,Ra,Rb).
merge(A,[],A).
merge([],B,B).
merge([A|Ra],[B|Rb],[A|M]) :-   A =< B, merge(Ra,[B|Rb],M).
merge([A|Ra],[B|Rb],[B|M]) :-   A > B, merge([A|Ra],Rb,M).
