% Taller 1.
% Williams Alvarez Gajardo
% Vicente Brevis Martinez
% Nicolas Gutierrez Pereira
% Michael Castillo Peñaloza
% ----------------------------------------------------------------------


% ----------------------------------------------------------------------
% Hechos para los defectos

defecto("Mancha", "Quemadura solar").
defecto("Mancha", "Cicatriz").
defecto("Patidura", "Medialuna").
defecto("Partidura", "Sutura").
defecto("Partidura", "Apice").
defecto("Partidura", "Lateral").
defecto("Anomalia", "Fruto gemelo").
defecto("Anomalia", "Fruto doble").
defecto("Anomalia", "Pitting").
defecto("Anomalia", "Machucon").
defecto("Anomalia", "Magulladura").
defecto("Anomalia", "Arrugado").


% ----------------------------------------------------------------------



% ----------------------------------------------------------------------
% Hechos para caracterasticas del fruto

caracteristica("Color", "Rosa").
caracteristica("Color", "Rojo claro").
caracteristica("Color", "Rojo").
caracteristica("Color", "Rojo oscuro").
caracteristica("Color", "Caoba").
caracteristica("Color", "Caoba oscuro").
caracteristica("Color", "Negro").
caracteristica("Firmeza", "Extra blando").
caracteristica("Firmeza", "Blando").
caracteristica("Firmeza", "Rigido").
caracteristica("Firmeza", "Muy rigido").
caracteristica("Calibre", "Mediano").
caracteristica("Calibre", "Largo").
caracteristica("Calibre", "Extra largo").
caracteristica("Calibre", "Jumbo").
caracteristica("Calibre", "Gigante").
caracteristica("Calibre", "Super gigante").
caracteristica("Brillo", "Opaco").
caracteristica("Brillo", "Brillante").



%
% ----------------------------------------------------------------------
% Hechos para la eleccion.
eleccion(a, b, c).
% ----------------------------------------------------------------------

% ----------------------------------------------------------------------
% Hechos para los aceptables.
aceptable(a, b, c).
% ----------------------------------------------------------------------

% ----------------------------------------------------------------------
% Hechos defectos perceptibles
perceptibles(a, b, c).
% ----------------------------------------------------------------------
%
% ----------------------------------------------------------------------
% Hechos salidas segun calibre
salida(a, b, c).
% ----------------------------------------------------------------------




% ----------------------------------------------------------------------
%                                Funciones/Predicados
% ----------------------------------------------------------------------




% ----------------------------------------------------------------------
% Funcion que indica la salida en la linea de embalaje
%
% Entrada:
% Salida:
%
salida(a, b, c):-
   lineaEmbalaje(a, b, c).
% ----------------------------------------------------------------------


% ----------------------------------------------------------------------
% Predicado que consulta dado un fruto entrege un conjunto de defectos si es que este posee
% defectos establecidos...
%
% Entrada:
% Salida:
conjuntoDefectos(a, b, c):-
   defecto(a, b, c).
% ----------------------------------------------------------------------


% consulta([caract_1, caract_2, ...], Lista_defectos).

consulta([], []).
consulta([G|Gs], [G|Ss]):-
   defecto(_, G), !,
   consulta(Gs, Ss).
consulta([G|Gs], [S|Ss]):-
   G == "Negro",
   S = "Madurez excesiva",
   caracteristica("Color", G), !,
   consulta(Gs, Ss).
consulta([G|Gs], [S|Ss]):-
   G == "Rosa",
   S = "Sin color",
   caracteristica("Color", G), !,
   consulta(Gs, Ss).
consulta([_|Gs],S):-
   consulta(Gs, S).






