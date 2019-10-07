% Taller 1.
% Williams Alvarez Gajardo
% Vicente Brevis Martinez
% Nicolas Gutierrez Pereira
% Michael Castillo Peñaloza
% ----------------------------------------------------------------------
%
% ----------------------------------------------------------------------
% Hechos para los defectos
% defecto(a, b).

defecto("Pedunculo", "Leve").
defecto("Pedunculo", "Moderado").
defecto("Pedunculo", "Severo").
defecto("Pedunculo", "Muy severo").
defecto("Piel", "Quemadura solar").
defecto("Piel", "Pitting").

dañoPredunculo(1, "Leve").
dañoPredunculo(2, "Moderado").
dañoPredunculo(3, "Severo").
dañoPredunculo(4, "Muy severo").

dañoPiel("Quemadura solar").
dañoPiel("Pitting").
dañoPiel("Machucon").
dañoPiel("Magulladura").
dañoPiel("Cicatriz").
dañoPiel("Arrugado").

partidura("Medialuna").
partidura("Sutura").
partidura("Apice").
partidura("Lateral").

anomalia("Fruto gemelo").
anomalia("Fruto doble").


% ----------------------------------------------------------------------
%
% ----------------------------------------------------------------------
% Hechos para caracterasticas del fruto
color(1, "rosa").
color(2, "rojo claro").
color(3, "rojo oscuro").
color(4, "rojo").
color(5, "caoba").
color(6, "caoba oscuro").
color(7, "negro").

firmeza(1, "No exportable").
firmeza(2, "Exportable con riesgo").
firmeza(3, "Exportable").

calibre("M", "Mediano").
calibre("L", "Largo").
calibre("XL", "Extra largo").
calibre("J", "Jumbo").
calibre("G", "Gigante").
calibre("SG", "Super gigante").

brillo("Opaco").
brillo("Brillante").


caracteristicas(a, b, c).
% ----------------------------------------------------------------------
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

metricaDañoPedunculo(Porcentaje, Tipo):-
  Porcentaje =< 25,
   N = 1,
   dañoPredunculo(N, Tipo).

metricaDañoPedunculo(Porcentaje, Tipo):-
   Porcentaje > 25,
   Porcentaje =< 50,
   N = 2,
   dañoPredunculo(N, Tipo).

metricaDañoPedunculo(Porcentaje, Tipo):-
   Porcentaje > 50,
   Porcentaje =< 75,
   N = 3,
   dañoPredunculo(N, Tipo).

metricaDañoPedunculo(Porcentaje, Tipo):-
   Porcentaje > 75,
   N = 4,
   dañoPredunculo(N, Tipo).

guinda(S, C1, C2):-defecto(_, C1), defecto(_,C2), S="No".






