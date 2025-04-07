% Genera el siguiente ejemplo t3nacionalidades
% Define la nacionalidad de 5 personas: español, mexicano, estadounidense, inglés, colombiano.
% Las personas son: Manolo, Juan, John, Piter, Anselmo.

% Hechos: Nacionalidades de las personas
es_espanol(manolo).
es_mexicano(juan).
es_estadounidense(john).
es_ingles(piter).
es_colombiano(anselmo).

% Reglas: Nacionalidad de las personas
es_nacionalidad(Persona, Nacionalidad) :-
    (es_espanol(Persona) -> Nacionalidad = 'español' ; 
    es_mexicano(Persona) -> Nacionalidad = 'mexicano' ; 
    es_estadounidense(Persona) -> Nacionalidad = 'estadounidense' ; 
    es_ingles(Persona) -> Nacionalidad = 'inglés' ; 
    es_colombiano(Persona) -> Nacionalidad = 'colombiano' ; 
    Nacionalidad = 'desconocida').

% Reglas: ¿Es europeo?
es_europeo(Persona) :-
    es_espanol(Persona);
    es_ingles(Persona).

% Reglas: ¿Es americano?
es_americano(Persona) :-
    es_mexicano(Persona);
    es_estadounidense(Persona);
    es_colombiano(Persona).

% Reglas: ¿Son del mismo continente?
son_del_mismo_continente(Persona1, Persona2) :-
    (es_europeo(Persona1), es_europeo(Persona2));
    (es_americano(Persona1), es_americano(Persona2)).