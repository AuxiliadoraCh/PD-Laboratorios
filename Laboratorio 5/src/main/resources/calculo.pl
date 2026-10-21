% Suma de dos números enteros
suma(A, B, Resultado) :-
    integer(A), integer(B),
    Resultado is A + B.

% Resta de dos números enteros
resta(A, B, Resultado) :-
    integer(A), integer(B),
    Resultado is A - B.

