% Relaciones de paternidad
padre(mario_leon_ceron, mario_leon_hernandez).
padre(mario_leon_ceron, margarita_leon_hernandez).
padre(juan_luis, pascual_leon_gomez).
padre(juan_luis, juan_leon_gomez).
padre(juan_luis, marisela_leon_gomez).
padre(juan_luis, geovita_leon_gomez).
padre(pascual_leon_gomez, iran_pascual_leon_hernandez).
padre(pascual_leon_gomez, laura_antonia_leon_hernandez).
padre(pascual_leon_gomez, juan_leon_hernandez).
padre(miguel, maria_luisa_ceron_hernandez).
padre(miguel, alejandro_ceron_hernandez).
padre(jose_luis_cruz_hernandez, juan_jose_cruz_hernandez).
padre(jose_luis_cruz_hernandez, jaciel_cruz_hernandez).
padre(michael_cruz_leon, michael_antonella_cruz_leon).
padre(juan_leon_hernandez, jesus_santiago_leon_jordan).

% Relaciones de maternidad
madre(maria_jobin_leon_hernandez, mario_leon_hernandez).
madre(maria_jobin_leon_hernandez, margarita_leon_hernandez).
madre(maria_isabel_leon_gomez, pascual_leon_gomez).
madre(maria_isabel_leon_gomez, juan_leon_gomez).
madre(maria_isabel_leon_gomez, marisela_leon_gomez).
madre(maria_isabel_leon_gomez, geovita_leon_gomez).
madre(margarita_leon_hernandez, iran_pascual_leon_hernandez).
madre(margarita_leon_hernandez, laura_antonia_leon_hernandez).
madre(margarita_leon_hernandez, juan_leon_hernandez).
madre(margarita_leon_hernandez, maria_luisa_ceron_hernandez).
madre(margarita_leon_hernandez, alejandro_ceron_hernandez).
madre(maria_luisa_ceron_hernandez, juan_jose_cruz_hernandez).
madre(maria_luisa_ceron_hernandez, jaciel_cruz_hernandez).
madre(laura_antonia_leon_hernandez, michael_antonella_cruz_leon).
madre(magaly_jordan_leon, jesus_santiago_leon_jordan).

% Reglas para relaciones familiares
abuelo(X, Y) :- padre(X, Z), (padre(Z, Y); madre(Z, Y)).
abuela(X, Y) :- madre(X, Z), (padre(Z, Y); madre(Z, Y)).

bisabuelo(X, Y) :- abuelo(X, Z), (padre(Z, Y); madre(Z, Y)).
bisabuela(X, Y) :- abuela(X, Z), (padre(Z, Y); madre(Z, Y)).

hermano(X, Y) :- padre(Z, X), padre(Z, Y), X \= Y.
hermano(X, Y) :- madre(Z, X), madre(Z, Y), X \= Y.
hermana(X, Y) :- madre(Z, X), madre(Z, Y), X \= Y.

nieto(X, Y) :- abuelo(Y, X); abuela(Y, X).
nieta(X, Y) :- abuelo(Y, X); abuela(Y, X).

sobrino(X, Y) :- hermano(Z, Y), padre(Z, X).
sobrino(X, Y) :- hermana(Z, Y), madre(Z, X).
sobrina(X, Y) :- hermana(Z, Y), madre(Z, X).

% Reglas adicionales
esposo(X, Y) :- padre(X, Z), madre(Y, Z).
esposo(X, Y) :- madre(X, Z), padre(Y, Z).