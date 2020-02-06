%   Fun��o que transforma as coordenadas retangulares (x,y,z) para coordenadas esf�ricas (r,f,t)
%   dados de entrada: coordenadas retangulares
%   Fun��o desenvolvida pelo prof. S�rgio Antenor de Carvalho 
%
%   Inicio  24/02/2010 - vers�o Scilab
%   Revis�o 28/08/2017 - vers�o Matlab
%
%   Dados de entrada
%   x -> coordenada x; y -> coordenada y; z -> coordenada z
%
%   Dados de sa�da: coordenadas esf�ricas
%   r -> coordenada r; f -> coordenada fi em radianos est� entre 0 e 2pi; t -> coordenada teta em radianos est� entre 0 e pi

function [r,t,f] = CooRetEsf(x,y,z)
   r = sqrt(x.^2 + y.^2 + z.^2); 
   t = acos(z./r);
   f = FI(x,y);
end% fun��o CooRetEsf