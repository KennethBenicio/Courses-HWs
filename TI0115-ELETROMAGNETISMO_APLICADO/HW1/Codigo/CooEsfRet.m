%   Fun��o que transforma as coordenadas esf�ricas (r,f,t) para coordenadas retangulares (x,y,z)
%   Fun��o desenvolvida pelo prof. S�rgio Antenor de Carvalho 
%
%   Inicio  24/02/2010 - vers�o Scilab
%   Revis�o 28/08/2017 - vers�o Matlab
%
%   Dados de entrada: coordenadas esf�ricas
%   r -> coordenada r; f -> coordenada fi em radianos est� entre 0 e 2pi; t -> coordenada teta em radianos est� entre 0 e pi
%
%   Dados de sa�da: coordenadas retangulares
%   x -> coordenada x; y -> coordenada y; z -> coordenada z

function [x,y,z] = CooEsfRet(r,t,f)
   x = r .* sin(t) .* cos(f); 
   y = r .* sin(t) .* sin(f);
   z = r .* cos(t);
end % fun��o CooEsfRet