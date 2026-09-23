suma(1, 1) :- !.

suma(N, R) :-
    N > 1,
    N1 is N - 1,
    suma(N1, R1),
    R is N + R1.