% Personajes
personaje(eric).
personaje(timmy).
personaje(kelvin).
personaje(virginia).

protagonista(eric).
edad(eric, 30).

% Aliados y estados
aliado(kelvin).
capturado(kelvin).
no_habla(kelvin).

mutante(virginia).
puede_ser_aliado(virginia).

% Inventario y herramientas
tiene(eric, hacha).
tiene(eric, encendedor).

% Habilidades
puede(kelvin, cargar_troncos).
puede(kelvin, construir).

% Zonas de la isla
zona(superficie).
zona(cuevas).
zona(bunkeres).

% Peligros por zona y horario
peligro(cuevas, alto).
peligro(superficie, dia, medio).
peligro(superficie, noche, alto).

% Características de búnkeres
requiere_llave(bunkeres).

% Enemigos y apariciones
enemigo(canibales).
enemigo(mutantes).

aparece_en(canibales, superficie).
aparece_en(mutantes, superficie).
aparece_en(mutantes, cuevas).

% Supervivencia y recursos
necesita(eric, refugio).
necesita(eric, comida).
necesita(eric, agua).

material(troncos).
material(piedras).

se_encuentra_en(troncos, superficie).
se_encuentra_en(piedras, superficie).