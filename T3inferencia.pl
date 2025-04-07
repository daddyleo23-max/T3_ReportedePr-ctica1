

% Base de conocimientos (hechos)
sabe(ana, python).
sabe(ana, java).
sabe(juan, prolog).
sabe(carlos, python).
sabe(carlos, cplusplus).

% Regla 1: Persona es programadora si sabe al menos un lenguaje
programadora(Persona) :- 
    sabe(Persona, _).  % El guión bajo _ es una variable anónima

% Regla 2: Persona es desarrollador full-stack si sabe Python y Java
desarrollador_fullstack(Persona) :- 
    sabe(Persona, python),
    sabe(Persona, java).