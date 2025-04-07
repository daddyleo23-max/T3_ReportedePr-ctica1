
humano(juan).       % Juan es un humano
humano(maria).      % María es un humana
humano(pedro).      % Pedro es un humano
humano(eva).        % Eva es una humana
humano(luis).      % Luis es un humano
humano(ana).       % Ana es una humana
humano(jorge).      % Jorge es un humano
humano(laura).      % Laura es una humana

% Seres mitológicos (no humanos)
divino(zeus).
divino(atenea).

% Regla de mortalidad básica
mortal(X) :- humano(X).

% Parentesco básico
padre(jose, juan).  % José es padre de Juan
padre(jose, maria). % José es padre de María
madre(ana, juan). % Ana es madre de Juan
madre(ana, maria). % Ana es madre de María
padre(pedro, luis). % Pedro es padre de Luis

% Regla de herencia de mortalidad
mortal_por_herencia(X) :-
    (padre(P, X); madre(P, X)), % X tiene padre o madre
    mortal(P).                  % y ese padre/madre es mortal

