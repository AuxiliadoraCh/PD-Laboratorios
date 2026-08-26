:- [hechos].

ayudante_construccion(Personaje) :-
    personaje(Personaje),
    (aliado(Personaje) ; puede_ser_aliado(Personaje)),
    (puede(Personaje, cargar_troncos) ; puede(Personaje, construir)).

preparado_para_explorar(Personaje, Zona) :-
    protagonista(Personaje),
    edad(Personaje, Edad),
    Edad >= 18,
    tiene(Personaje, hacha),
    tiene(Personaje, encendedor),
    zona(Zona).

zona_segura_sin_enemigos(Zona) :-
    zona(Zona),
    \+ aparece_en(_, Zona).