% Base de conocimientos sobre personas y sus mascotas
% Hechos: Persona tiene una mascota
tiene_mascota(juan, perro).
tiene_mascota(maria, gato).
tiene_mascota(carlos, pez).
tiene_mascota(luis, tortuga).

% Hechos: Tipo de animal
es_mamifero(perro).
es_mamifero(gato).
es_reptil(tortuga).
es_pez(pez).

% Reglas
es_dueño(Persona, Mascota) :- tiene_mascota(Persona, Mascota).

mascota_mamifera(Persona) :-
    tiene_mascota(Persona, Mascota),
    es_mamifero(Mascota).